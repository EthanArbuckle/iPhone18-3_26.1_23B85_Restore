uint64_t sub_1D2413A48()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1D2413B68, v3, v2);
}

uint64_t sub_1D2413B68()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[5];

  (*(v2 + 56))(v3, 0, 1, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2413C64()
{
  v1 = v0[25];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[31] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[25] + 16), *(v0[25] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[32] = v4;
    *v4 = v0;
    v4[1] = sub_1D2413DB8;
    v5 = v0[5];

    return sub_1D23E4308(v5, v3);
  }

  else
  {

    sub_1D233F184();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v0[34] = v7;
    v9 = v0[21];
    v10 = v0[22];

    return MEMORY[0x1EEE6DFA0](sub_1D24140D4, v9, v10);
  }
}

uint64_t sub_1D2413DB8()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_1D2414060;
  }

  else
  {
    v5 = sub_1D2413EF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2413EF4()
{
  v1 = v0[31];

  v2 = v0[21];
  v3 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1D2413F60, v2, v3);
}

uint64_t sub_1D2413F60()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 40);
  sub_1D2415B40(*(v0 + 200), *(v0 + 208), *(v0 + 280));

  (*(v2 + 56))(v3, 0, 1, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D2414060()
{
  v1 = v0[31];

  v0[34] = v0[33];
  v2 = v0[21];
  v3 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1D24140D4, v2, v3);
}

uint64_t sub_1D24140D4()
{
  v1 = *(v0 + 272);

  sub_1D28726D8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);
  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1D226E000, v3, v4, "Couldn't build recipe from asset: %@", v10, 0xCu);
    sub_1D22BD238(v11, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v11, -1, -1);
    MEMORY[0x1D38A3520](v10, -1, -1);

    sub_1D2415B40(v9, v8, v7);
  }

  else
  {
    sub_1D2415B40(*(v0 + 200), *(v0 + 208), *(v0 + 280));
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 136);
  v16 = *(v0 + 40);
  (*(v0 + 216))(*(v0 + 88), *(v0 + 56));
  (*(v15 + 56))(v16, 1, 1, v14);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D2414308(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v1 == sub_1D28722B8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D2879618();
  }

  return v5 & 1;
}

uint64_t sub_1D2414380()
{
  v0 = sub_1D2871F98();
  v2 = v1;
  if (v0 == sub_1D2872418() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D2879618();
  }

  return v4 & 1;
}

uint64_t sub_1D241441C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = sub_1D2872CC8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v67 - v10;
  v76 = sub_1D2872BE8();
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA438);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v74 = &v67 - v13;
  v77 = sub_1D2872CD8();
  v73 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v85 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v67 - v16;
  v17 = sub_1D28731F8();
  v79 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v67 - v20;
  v84 = sub_1D2872988();
  v80 = *(v84 - 1);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D2872C98();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a3 >> 4;
  v82 = v17;
  v69 = v7;
  if (v26 > 5)
  {
    if (v26 - 7 >= 3 && v26 == 6)
    {
      sub_1D234AC28();
      v38 = swift_allocError();
      v67 = v6;
      v39 = v38;
      *v40 = a1;
      *(v40 + 8) = a2;
      *(v40 + 16) = a3 & 0xF;
      sub_1D233E7B4(a1, a2, a3 & 0xF);
      v29 = sub_1D28714A8();
      v30 = v39;
      v6 = v67;
      goto LABEL_4;
    }

LABEL_3:
    sub_1D22BCE64();
    v27 = swift_allocError();
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    sub_1D233E72C(a1, a2, a3);
    v29 = sub_1D28714A8();
    v30 = v27;
LABEL_4:

    goto LABEL_7;
  }

  if (v26 >= 5)
  {
    goto LABEL_3;
  }

  sub_1D233E72C(a1, a2, a3);
  v29 = sub_1D28714A8();
  sub_1D22BCDC4(a1, a2, a3);
LABEL_7:
  *&v87[0] = v29;
  sub_1D2415CFC();
  v31 = v29;
  if (swift_dynamicCast())
  {

    sub_1D22BCDC4(v88[0], v88[1], v89);
    if (v26 == 10 && a1 == 5 && !a2 && a3 == 160)
    {
      v32 = 2;
    }

    else
    {
      v32 = 0;
    }

    return v32;
  }

  v88[0] = v31;
  v33 = v31;
  if (swift_dynamicCast())
  {

    (*(v23 + 8))(v25, v22);
LABEL_19:

    return 1;
  }

  v88[0] = v33;
  v34 = v33;
  v36 = v83;
  v35 = v84;
  if (swift_dynamicCast())
  {

    (*(v80 + 8))(v36, v35);
    goto LABEL_19;
  }

  v90 = v34;
  v41 = v34;
  v43 = v81;
  v42 = v82;
  if (swift_dynamicCast())
  {

    (*(v79 + 32))(v78, v43, v42);
    result = sub_1D28731E8();
    v44 = result;
    v45 = *(result + 16);
    v46 = v77;
    if (v45)
    {
      v47 = 0;
      v48 = result + 32;
      while (1)
      {
        if (v47 >= *(v44 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1D22D7044(v48, v87);
        sub_1D22D7044(v87, v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478);
        if (swift_dynamicCast())
        {
          break;
        }

        ++v47;
        result = __swift_destroy_boxed_opaque_existential_0(v87);
        v48 += 40;
        if (v45 == v47)
        {
          goto LABEL_29;
        }
      }

      v53 = v73;
      v54 = *(v73 + 8);
      v54(v85, v46);
      sub_1D22D79FC(v87, v88);
      v49 = v74;
      v55 = swift_dynamicCast();
      (*(v53 + 56))(v49, v55 ^ 1u, 1, v46);
      if ((*(v53 + 48))(v49, 1, v46) == 1)
      {
        (*(v79 + 8))(v78, v82);
        goto LABEL_30;
      }

      (*(v53 + 32))(v70, v49, v46);
      v85 = sub_1D2872CA8();
      sub_1D2872CB8();
      v56 = *MEMORY[0x1E69DFDE0];
      v57 = v69;
      v58 = v68;
      v84 = *(v69 + 104);
      (v84)(v68, v56, v6);
      sub_1D2415D48(&qword_1EC6D8BB0, MEMORY[0x1E69DFDF0]);
      v59 = sub_1D2877F98();
      v60 = *(v57 + 8);
      v60(v58, v6);
      if (v59)
      {

        v60(v71, v6);
        v54(v70, v77);
        (*(v79 + 8))(v78, v82);
        goto LABEL_31;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1A8);
      v61 = *(v57 + 80);
      v62 = v54;
      v63 = (v61 + 32) & ~v61;
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1D287F500;
      (v84)(v64 + v63, v56, v6);
      v65 = sub_1D2402904(v64);
      swift_setDeallocating();
      v60((v64 + v63), v6);
      swift_deallocClassInstance();
      sub_1D25A6AA4(v85, v65);
      LOBYTE(v64) = v66;

      v60(v71, v6);
      v62(v70, v77);
      (*(v79 + 8))(v78, v82);
      if (v64)
      {

        return 4;
      }
    }

    else
    {
LABEL_29:
      (*(v79 + 8))(v78, v82);

      v49 = v74;
      (*(v73 + 56))(v74, 1, 1, v46);
LABEL_30:
      sub_1D22BD238(v49, &qword_1EC6DA438);
    }

LABEL_31:
    v50 = v90;
  }

  else
  {

    v88[0] = v41;
    v51 = v75;
    v52 = v76;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return 5;
    }

    (*(v72 + 8))(v51, v52);
    v50 = v88[0];
  }

  return 3;
}

uint64_t sub_1D2415184@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v42 = a4;
  v6 = sub_1D2872008();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D60);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  if ((sub_1D27D8E2C() & 1) == 0 && (sub_1D27D8EFC() & 1) == 0 && (sub_1D27D8FCC() & 1) == 0)
  {
    if (*a1 == 1)
    {
      v22 = MEMORY[0x1E699C320];
      goto LABEL_5;
    }

    sub_1D22BD1D0(a2, v21, &qword_1EC6D9A30);
    sub_1D2871F48();
    (*(v7 + 56))(v18, 0, 1, v6);
    v29 = *(v10 + 48);
    sub_1D22BD1D0(v21, v12, &qword_1EC6D9A30);
    v40 = v29;
    sub_1D22BD1D0(v18, &v12[v29], &qword_1EC6D9A30);
    v30 = *(v7 + 48);
    if (v30(v12, 1, v6) == 1)
    {
      sub_1D22BD238(v18, &qword_1EC6D9A30);
      sub_1D22BD238(v21, &qword_1EC6D9A30);
      if (v30(&v12[v40], 1, v6) == 1)
      {
        sub_1D22BD238(v12, &qword_1EC6D9A30);
LABEL_18:
        v38 = *MEMORY[0x1E699C2E8];
        v39 = sub_1D2871CD8();
        return (*(*(v39 - 8) + 104))(v42, v38, v39);
      }
    }

    else
    {
      sub_1D22BD1D0(v12, v15, &qword_1EC6D9A30);
      v31 = v40;
      if (v30(&v12[v40], 1, v6) != 1)
      {
        v35 = v7;
        (*(v7 + 32))(v9, &v12[v31], v6);
        sub_1D2415D48(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
        v36 = sub_1D2877F98();
        v37 = *(v35 + 8);
        v37(v9, v6);
        sub_1D22BD238(v18, &qword_1EC6D9A30);
        sub_1D22BD238(v21, &qword_1EC6D9A30);
        v37(v15, v6);
        sub_1D22BD238(v12, &qword_1EC6D9A30);
        if (v36)
        {
          goto LABEL_18;
        }

LABEL_16:
        v32 = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_featureDomain;
        v33 = v41;
        swift_beginAccess();
        v34 = sub_1D2871CD8();
        return (*(*(v34 - 8) + 16))(v42, v33 + v32, v34);
      }

      sub_1D22BD238(v18, &qword_1EC6D9A30);
      sub_1D22BD238(v21, &qword_1EC6D9A30);
      (*(v7 + 8))(v15, v6);
    }

    sub_1D22BD238(v12, &unk_1EC6E1D60);
    goto LABEL_16;
  }

  v22 = MEMORY[0x1E699C2C0];
LABEL_5:
  v23 = *v22;
  v24 = sub_1D2871CD8();
  v25 = *(*(v24 - 8) + 104);
  v26 = v24;
  v27 = v42;

  return v25(v27, v23, v26);
}

uint64_t sub_1D2415718()
{

  sub_1D2415B40(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_id, &qword_1EC6D8F70);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_recipe, &unk_1EC6DDE30);

  sub_1D2415B64(*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error + 8), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error + 16));
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_featureDomain;
  v2 = sub_1D2871CD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider, &qword_1EC6DA1F0);
  return v0;
}

uint64_t sub_1D2415834()
{
  sub_1D2415718();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeedbackInput()
{
  result = qword_1ED8A4850;
  if (!qword_1ED8A4850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D24158E0()
{
  sub_1D2415A68(319, &qword_1ED8A6C80, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    sub_1D2415A68(319, &qword_1ED8A6BD8, MEMORY[0x1E696E4A0]);
    if (v1 <= 0x3F)
    {
      sub_1D2871CD8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D2415A68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
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

uint64_t sub_1D2415B1C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1D22D6CE4(a1, a2);
  }

  else
  {
    return sub_1D2870F78();
  }
}

uint64_t sub_1D2415B28(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D2415B1C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D2415B40(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D2415B58(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D2415B58(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1D22D6D4C(a1, a2);
  }

  else
  {
  }
}

void sub_1D2415B64(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFBu)
  {
    sub_1D22BCDC4(a1, a2, a3);
  }
}

id sub_1D2415B78(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_1D233E72C(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D2415B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2415C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2415C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2415CFC()
{
  result = qword_1EC6D74E8;
  if (!qword_1EC6D74E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6D74E8);
  }

  return result;
}

uint64_t sub_1D2415D48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2415D90()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1 + 1);
  return sub_1D2879828();
}

uint64_t sub_1D2415DD8()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1 + 1);
  return sub_1D2879828();
}

unint64_t sub_1D2415E1C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D241608C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D2415E54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2886B90;
  *(inited + 32) = 0x6F705F7972746E65;
  *(inited + 40) = 0xEB00000000746E69;
  *(inited + 48) = sub_1D2878808();
  *(inited + 56) = 0xD000000000000022;
  *(inited + 64) = 0x80000001D28B5D80;
  *(inited + 72) = sub_1D2878808();
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000001D28B5DB0;
  *(inited + 96) = sub_1D2878808();
  *(inited + 104) = 0xD000000000000017;
  *(inited + 112) = 0x80000001D28B5DD0;
  *(inited + 120) = sub_1D2878808();
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x80000001D28B5DF0;
  *(inited + 144) = sub_1D2878808();
  *(inited + 152) = 0xD000000000000018;
  *(inited + 160) = 0x80000001D28B5E10;
  *(inited + 168) = sub_1D2878808();
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x80000001D28B5E30;
  *(inited + 192) = sub_1D2878808();
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x80000001D28B5E50;
  *(inited + 216) = sub_1D2878808();
  *(inited + 224) = 0x706170636967616DLL;
  *(inited + 232) = 0xEF65646F6D5F7265;
  *(inited + 240) = sub_1D2878808();
  *(inited + 248) = 0xD000000000000017;
  *(inited + 256) = 0x80000001D28B5E70;
  *(inited + 264) = sub_1D28784E8();
  v1 = sub_1D25D9804(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1B8);
  swift_arrayDestroy();
  sub_1D2416FC8(v1);
  v3 = v2;

  return v3;
}

unint64_t sub_1D241608C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

id sub_1D241609C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 respondsToSelector_])
  {
    v4 = [a1 isPencilPaired];
  }

  else
  {
    v4 = 0;
  }

  if ([a1 respondsToSelector_])
  {
    v15 = [a1 wordsCount];
  }

  else
  {
    v15 = 0;
  }

  if ([a1 respondsToSelector_])
  {
    v5 = [a1 respondsToSelector_];
  }

  else
  {
    v5 = [a1 respondsToSelector_];
  }

  if (v5)
  {
    v6 = [a1 imagesCount];
  }

  else
  {
    v6 = 0;
  }

  if ([a1 respondsToSelector_])
  {
    v7 = [a1 shapesCount];
  }

  else
  {
    v7 = 0;
  }

  if ([a1 respondsToSelector_])
  {
    v8 = [a1 signaturesCount];
  }

  else
  {
    v8 = 0;
  }

  if ([a1 respondsToSelector_])
  {
    v9 = [a1 strokesCount];
  }

  else
  {
    v9 = 0;
  }

  if ([a1 respondsToSelector_])
  {
    v10 = [a1 invocation];
    v11 = v10 - 1;
    if ((v10 - 1) <= 2)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v11 = 0;
LABEL_26:
  if (([a1 respondsToSelector_] & 1) == 0)
  {
    v13 = 0;
    goto LABEL_30;
  }

  result = [a1 mode];
  if (result <= 4)
  {
    v13 = result;
LABEL_30:
    result = swift_unknownObjectRelease();
    *a2 = v11;
    *(a2 + 1) = v13;
    *(a2 + 8) = v15;
    *(a2 + 16) = v14;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = v8;
    *(a2 + 48) = v9;
    *(a2 + 56) = v4;
    return result;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D24162EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D2416340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s22MagicPaperEventPayloadV4ModeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s22MagicPaperEventPayloadV4ModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2416508()
{
  result = qword_1EC6DB1C0;
  if (!qword_1EC6DB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB1C0);
  }

  return result;
}

unint64_t sub_1D2416560()
{
  result = qword_1EC6DB1C8;
  if (!qword_1EC6DB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB1C8);
  }

  return result;
}

void sub_1D24165B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v10 = sub_1D2878068();
  v48 = sub_1D2878068();
  v11 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (!a5)
  {
LABEL_22:
    if (*(v7 + 48) && (a6 & 1) != 0)
    {
      sub_1D2870F68();
      v37 = sub_1D2878068();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D24E8054(v37, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    }

    v39 = sub_1D2878068();
    v40 = sub_1D2418030(v11);

    if (v40)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22BCFD0(0, &qword_1ED89CC48);
      sub_1D24182E0();
      v41 = sub_1D2877E78();
    }

    else
    {
      v41 = 0;
    }

    [objc_opt_self() asyncSendSignal:v48 toChannel:v10 withNullableUniqueStringID:v39 withPayload:v41];

    return;
  }

  sub_1D2870F68();

  v11 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  v12 = 0;
  v13 = 1 << *(a5 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a5 + 64);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
LABEL_5:
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v12 << 6);
    v19 = *(*(a5 + 56) + 8 * v18);
    if (v19)
    {
      v21 = (*(a5 + 48) + 16 * v18);
      v22 = v21[1];
      v46 = *v21;
      v44 = v19;
      sub_1D2870F68();
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v22;
      v23 = sub_1D25D0A20(v46, v22);
      v25 = v11[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_32;
      }

      v29 = v24;
      if (v11[3] >= v28)
      {
        if (v42)
        {
          goto LABEL_16;
        }

        v43 = v24;
        v33 = v23;
        sub_1D24EC608();
        v23 = v33;
        if ((v43 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_17:
        v31 = v23;

        v32 = v11[7];
        v47 = *(v32 + 8 * v31);
        *(v32 + 8 * v31) = v44;
      }

      else
      {
        sub_1D24E04D8(v28, v42);
        v23 = sub_1D25D0A20(v46, v45);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_34;
        }

LABEL_16:
        if (v29)
        {
          goto LABEL_17;
        }

LABEL_19:
        v11[(v23 >> 6) + 8] |= 1 << v23;
        v34 = (v11[6] + 16 * v23);
        *v34 = v46;
        v34[1] = v45;
        *(v11[7] + 8 * v23) = v44;

        v35 = v11[2];
        v27 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v27)
        {
          goto LABEL_33;
        }

        v11[2] = v36;
      }
    }
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      goto LABEL_22;
    }

    v15 = *(a5 + 64 + 8 * v20);
    ++v12;
    if (v15)
    {
      v12 = v20;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_1D28796E8();
  __break(1u);
}

uint64_t sub_1D2416968(uint64_t a1)
{
  v2 = v1;
  v21 = sub_1D2871818();
  v4 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D2872438();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerationRecipeFactory();
  sub_1D2461838(a1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1F0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x65727574616546;
  *(inited + 16) = xmmword_1D28838F0;
  *(inited + 40) = 0xE700000000000000;
  v11 = sub_1D2878068();

  *(inited + 48) = v11;
  *(inited + 56) = 0x6569646572676E49;
  *(inited + 64) = 0xEB0000000073746ELL;
  sub_1D2524D50(a1);
  sub_1D22BCFD0(0, &qword_1ED89CC48);
  v12 = sub_1D28783C8();

  *(inited + 72) = v12;
  *(inited + 80) = 0x4449657069636552;
  *(inited + 88) = 0xE800000000000000;
  sub_1D2872348();
  v13 = sub_1D2878068();

  *(inited + 96) = v13;
  v14 = sub_1D25D7060(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1F8);
  swift_arrayDestroy();
  sub_1D2871808();
  v15 = sub_1D28717B8();
  v17 = v16;
  (*(v4 + 8))(v6, v21);
  *(v2 + 40) = v15;
  *(v2 + 48) = v17;

  v18 = sub_1D2416D44(v14);

  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0x6E6F697461657243, 0xEF64657472617453, v18, 1);

  return (*(v7 + 8))(v9, v22);
}

uint64_t sub_1D2416D44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1E0);
    v1 = sub_1D28793F8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;
  sub_1D2870F78();
  result = sub_1D2870F68();
  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = __clz(__rbit64(v4)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D2870F68();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC6DA930);
    swift_dynamicCast();
    sub_1D28797D8();
    sub_1D2877F38();
    result = sub_1D2879828();
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v6 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v6 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = (*(v1 + 48) + 16 * v9);
    *v10 = v14;
    v10[1] = v15;
    *(*(v1 + 56) + 8 * v9) = v26;
    ++*(v1 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1D2416FC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB208);
    v2 = sub_1D28793F8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1D2870F78();
  sub_1D2870F68();
  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_1D2870F68();
        v19 = v18;
        v20 = sub_1D25D0410(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
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

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1D24171A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1E8);
    v2 = sub_1D28793F8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  sub_1D2870F78();
  result = sub_1D2870F68();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 2 * v13);
    v15 = *v14;
    v16 = v14[1];
    v25 = *(*(a1 + 56) + 4 * v13);
    swift_dynamicCast();
    sub_1D23C3FAC((v26 + 8), v24);
    sub_1D23C3FAC(v24, v26);
    sub_1D28797D8();
    sub_1D2877F38();

    sub_1D27513EC(v16);
    sub_1D2877F38();

    result = sub_1D2879828();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = (*(v2 + 48) + 2 * v10);
    *v11 = v15;
    v11[1] = v16;
    result = sub_1D23C3FAC(v26, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_1D241748C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB200);
    v2 = sub_1D28793F8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  sub_1D2870F78();
  result = sub_1D2870F68();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D23C3EE4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;
    sub_1D2870F68();
    swift_dynamicCast();
    sub_1D23C3FAC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1D23C3FAC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D23C3FAC(v31, v32);
    result = sub_1D28790B8();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1D23C3FAC(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_1D2417790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D2870F78();
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, a3, a4, 0, 0);
}

id sub_1D2417810(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (a1)
  {
    swift_getErrorValue();
    v6 = sub_1D24D2EF4(v35);
    result = [v6 domain];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v8, 0x6D6F44726F727245, 0xEB000000006E6961, isUniquelyReferenced_nonNull_native);
    v10 = v5;
    [v6 code];
    v11 = sub_1D2878808();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *&v32 = v10;
    sub_1D24E8054(v11, 0x646F43726F727245, 0xE900000000000065, v12);
    sub_1D22BCFD0(0, &qword_1EC6D74E8);
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1D0);
    if (swift_dynamicCast())
    {
      v14 = *(&v33 + 1);
      v15 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      v16 = (*(v15 + 16))(v14, v15);

      __swift_destroy_boxed_opaque_existential_0(&v32);
      v17 = v16 >> 5;
      if (((1 << v17) & 0x6F) != 0)
      {
LABEL_12:
        sub_1D27FC630(v16);
        v21 = sub_1D2878068();

        v22 = swift_isUniquelyReferenced_nonNull_native();
        *&v32 = v10;
        sub_1D24E8054(v21, 0xD000000000000013, 0x80000001D28B5F10, v22);
        v23 = v32;
        v24 = sub_1D2878068();

        v25 = swift_isUniquelyReferenced_nonNull_native();
        *&v32 = v23;
        sub_1D24E8054(v24, 0xD000000000000010, 0x80000001D28B5F30, v25);
        v26 = v32;
        v27 = sub_1D2878068();

        v28 = swift_isUniquelyReferenced_nonNull_native();
        *&v32 = v26;
        sub_1D24E8054(v27, 0xD00000000000001BLL, 0x80000001D28B5F50, v28);
        v5 = v32;
        goto LABEL_15;
      }

      if (v17 != 4)
      {
        if ((v16 + 32) < 3u)
        {
          goto LABEL_12;
        }

LABEL_10:
        v18 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
        if (swift_dynamicCast())
        {
          v19 = v32;
          v20 = v33;
          v16 = sub_1D25045B8();
          sub_1D22BCDC4(v19, *(&v19 + 1), v20);
        }

        goto LABEL_12;
      }

      if (v16 != 128)
      {
        goto LABEL_12;
      }
    }

    else
    {

      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_1D2418278(&v32);
    }

    v16 = 0x80;
    goto LABEL_10;
  }

LABEL_15:
  if (a3)
  {
    v29 = sub_1D2878068();
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *&v32 = v5;
    sub_1D24E8054(v29, 0x65727574616546, 0xE700000000000000, v30);
    v5 = v32;
  }

  v31 = sub_1D2416D44(v5);

  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000013, 0x80000001D28B5EF0, v31, 1);
}

uint64_t sub_1D2417DFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2417E60@<X0>(uint64_t *a1@<X8>)
{
  swift_allocObject();
  v2 = sub_1D2417EB4();

  *a1 = v2;
  return result;
}

uint64_t sub_1D2417EB4()
{
  v1 = v0;
  v2 = sub_1D2871818();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  sub_1D2871808();
  v6 = sub_1D28717B8();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *(v1 + 24) = v6;
  *(v1 + 32) = v8;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  [v10 addObserver:v1 selector:sel_didEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  v11 = [v9 defaultCenter];
  [v11 addObserver:v1 selector:sel_didEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];

  return v1;
}

uint64_t sub_1D2418030(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1D25D7178(MEMORY[0x1E69E7CC0]);
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 64);
    v6 = (v3 + 63) >> 6;
    sub_1D2870F68();
    v7 = 0;
    if (v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_8:
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v10 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v10);
      ++v7;
    }

    while (!v5);
    while (1)
    {
      v11 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v10 << 6)));
      sub_1D2870F68();
      v12 = v11;
      v13 = sub_1D2878068();
      if (!v2)
      {
        break;
      }

      v14 = v13;

      v15 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_1D25DB1C0(v14);
      v19 = v2[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_26;
      }

      v23 = v18;
      if (v2[3] >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = v17;
          sub_1D24EC4A8();
          v17 = v27;
        }
      }

      else
      {
        sub_1D24E0214(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_1D25DB1C0(v14);
        if ((v23 & 1) != (v24 & 1))
        {
          goto LABEL_29;
        }
      }

      v5 &= v5 - 1;
      if (v23)
      {
        v8 = v2[7];
        v9 = *(v8 + 8 * v17);
        *(v8 + 8 * v17) = v15;

        v7 = v10;
        if (!v5)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v2[(v17 >> 6) + 8] |= 1 << v17;
        *(v2[6] + 8 * v17) = v14;
        *(v2[7] + 8 * v17) = v15;

        v25 = v2[2];
        v21 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v21)
        {
          goto LABEL_27;
        }

        v2[2] = v26;
        v7 = v10;
        if (!v5)
        {
          goto LABEL_8;
        }
      }

LABEL_7:
      v10 = v7;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    type metadata accessor for IAPayloadKey(0);
    result = sub_1D28796E8();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D2418278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D24182E0()
{
  result = qword_1ED89CDD0;
  if (!qword_1ED89CDD0)
  {
    type metadata accessor for IAPayloadKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CDD0);
  }

  return result;
}

id sub_1D2418338()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA428);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v5 = sub_1D28729E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2886B90;
  *(inited + 32) = 0x6F705F7972746E65;
  *(inited + 40) = 0xEB00000000746E69;
  *(inited + 48) = sub_1D2878808();
  *(inited + 56) = 0xD000000000000016;
  *(inited + 64) = 0x80000001D28B5B90;
  *(inited + 72) = sub_1D28784E8();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001D28B5B10;
  *(inited + 96) = sub_1D28784E8();
  *(inited + 104) = 0xD000000000000017;
  *(inited + 112) = 0x80000001D28B5B30;
  *(inited + 120) = sub_1D28784E8();
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001D28B5FA0;
  *(inited + 144) = sub_1D2878808();
  *(inited + 152) = 0xD000000000000018;
  *(inited + 160) = 0x80000001D28B5FC0;
  *(inited + 168) = sub_1D2878808();
  *(inited + 176) = 0xD00000000000001ALL;
  *(inited + 184) = 0x80000001D28B5B50;
  *(inited + 192) = sub_1D2878808();
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x80000001D28B5B70;
  *(inited + 216) = sub_1D2878808();
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000001D28B5FE0;
  *(inited + 240) = sub_1D2878808();
  *(inited + 248) = 0x5F6E6F6973736573;
  *(inited + 256) = 0xEA00000000006469;
  type metadata accessor for Analytics.ImageGenerationEventPayload();
  sub_1D28717B8();
  v9 = sub_1D2878068();

  *(inited + 264) = v9;
  v10 = sub_1D25D73B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB240);
  swift_arrayDestroy();
  if (v0[1] != 6)
  {
    v11 = sub_1D2878808();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    sub_1D24E81CC(v11, 0xD000000000000011, 0x80000001D28B6110, isUniquelyReferenced_nonNull_native);
    v10 = v50;
  }

  if (v0[2] != 3)
  {
    v13 = sub_1D2878808();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    sub_1D24E81CC(v13, 0x69746172656E6567, 0xEF706574735F6E6FLL, v14);
    v10 = v50;
  }

  if (v0[144] != 5)
  {
    v15 = sub_1D2878808();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    sub_1D24E81CC(v15, 0xD000000000000016, 0x80000001D28B60F0, v16);
    v10 = v50;
  }

  if (v0[145] == 6)
  {
    if (v0[32])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v23 = sub_1D2878808();
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    sub_1D24E81CC(v23, 0x656C797473, 0xE500000000000000, v24);
    v10 = v50;
    if (v0[32])
    {
LABEL_9:
      if (v0[48])
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  v25 = sub_1D2878788();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v10;
  sub_1D24E81CC(v25, 0xD000000000000023, 0x80000001D28B60C0, v26);
  v10 = v50;
  if (v0[48])
  {
LABEL_10:
    if (v0[64])
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v27 = sub_1D2878788();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v10;
  sub_1D24E81CC(v27, 0xD00000000000001DLL, 0x80000001D28B60A0, v28);
  v10 = v50;
  if (v0[64])
  {
LABEL_11:
    if (v0[80])
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v29 = sub_1D2878788();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v10;
  sub_1D24E81CC(v29, 0xD000000000000020, 0x80000001D28B6070, v30);
  v10 = v50;
  if (v0[80])
  {
LABEL_12:
    if (v0[160])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_24:
  v31 = sub_1D2878788();
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v10;
  sub_1D24E81CC(v31, 0xD00000000000001ELL, 0x80000001D28B6050, v32);
  v10 = v50;
  if ((v0[160] & 1) == 0)
  {
LABEL_13:
    v17 = sub_1D2878808();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    sub_1D24E81CC(v17, 0xD000000000000015, 0x80000001D28B6030, v18);
    v10 = v50;
  }

LABEL_14:
  if (v0[19] != 2)
  {
    v19 = sub_1D28784E8();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    sub_1D24E81CC(v19, 0xD000000000000026, 0x80000001D28B6000, v20);
    v10 = v50;
  }

  if (qword_1ED8A3548 != -1)
  {
    swift_once();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA430);
  v22 = __swift_project_value_buffer(v21, qword_1ED8A3550);
  os_unfair_lock_lock(v22);
  sub_1D22BD1D0(v22 + *(v21 + 28), v4, &qword_1EC6DA428);
  os_unfair_lock_unlock(v22);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D22BD238(v4, &qword_1EC6DA428);
  }

  else
  {
    v33 = v49;
    (*(v6 + 32))(v49, v4, v5);
    sub_1D28729C8();
    v35 = v34;
    (*(v6 + 8))(v33, v5);
    if (v35)
    {
      v36 = sub_1D2878068();

      v37 = swift_isUniquelyReferenced_nonNull_native();
      v50 = v10;
      sub_1D24E81CC(v36, 0x695F746E65696C63, 0xE900000000000064, v37);
      v10 = v50;
    }
  }

  v38 = *(v1 + 1);
  if (!v38)
  {
    return v10;
  }

  swift_getErrorValue();
  v39 = v51;
  v40 = v38;
  v41 = sub_1D24D2EF4(v39);
  [v41 code];
  v42 = sub_1D2878808();
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v10;
  sub_1D24E81CC(v42, 0x6F635F726F727265, 0xEA00000000006564, v43);
  v44 = v50;
  result = [v41 domain];
  if (result)
  {
    v46 = result;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v44;
    sub_1D24E81CC(v46, 0x6F645F726F727265, 0xEC0000006E69616DLL, v47);

    return v50;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D2418BCC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F550;
  *(inited + 32) = 0x6F705F7972746E65;
  *(inited + 40) = 0xEB00000000746E69;
  *(inited + 48) = sub_1D2878808();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001D28B6130;
  *(inited + 72) = sub_1D2878068();
  v6 = sub_1D25D73B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB240);
  swift_arrayDestroy();
  if (v4 != 6)
  {
    v7 = sub_1D2878808();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E81CC(v7, 0xD000000000000011, 0x80000001D28B6110, isUniquelyReferenced_nonNull_native);
  }

  return v6;
}

uint64_t sub_1D2418D48@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D241A104(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1D2418D74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v12 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2886DF0;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_1D2878808();
  *(inited + 56) = 0x6E6F697461636F6CLL;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_1D2878808();
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000001D28B6150;
  *(inited + 96) = sub_1D28784E8();
  *(inited + 104) = 0xD000000000000013;
  *(inited + 112) = 0x80000001D28B5B10;
  *(inited + 120) = sub_1D28784E8();
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = 0x80000001D28B5B30;
  *(inited + 144) = sub_1D28784E8();
  *(inited + 152) = 0xD00000000000001ALL;
  *(inited + 160) = 0x80000001D28B5B50;
  *(inited + 168) = sub_1D2878808();
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x80000001D28B5B70;
  *(inited + 192) = sub_1D2878808();
  v6 = sub_1D25D73B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB240);
  swift_arrayDestroy();
  if (v12 != 6)
  {
    v7 = sub_1D2878808();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E81CC(v7, 0x656C797473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  }

  if ((a1 & 0xFF0000000000) != 0x20000000000)
  {
    v9 = sub_1D28784E8();
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E81CC(v9, 0xD000000000000026, 0x80000001D28B6000, v10);
  }

  return v6;
}

unint64_t sub_1D2418FEC()
{
  v1 = 0x10000;
  if ((v0[1] & 1) == 0)
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if ((*(v0 + 3) & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x100000000;
  if ((v0[2] & 1) == 0)
  {
    v3 = 0;
  }

  return sub_1D2418D74(*v0 | (*(v0 + 5) << 40) | v1 | v2 | v3, *(v0 + 1), *(v0 + 2), *(v0 + 24));
}

unint64_t sub_1D2419040(unsigned int a1)
{
  v1 = HIBYTE(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D28838F0;
  *(inited + 32) = 0x6F705F7972746E65;
  *(inited + 40) = 0xEB00000000746E69;
  *(inited + 48) = sub_1D2878808();
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000001D28B6170;
  *(inited + 72) = sub_1D28784E8();
  *(inited + 80) = 0xD000000000000032;
  *(inited + 88) = 0x80000001D28B6190;
  *(inited + 96) = sub_1D28784E8();
  v3 = sub_1D25D73B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB240);
  swift_arrayDestroy();
  if (v1 != 6)
  {
    v4 = sub_1D2878808();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E81CC(v4, 0x656C797473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v3;
}

unint64_t sub_1D24191B4()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | (v0[3] << 24);
  if (v0[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D2419040(v2 | v3 | *v0);
}

uint64_t sub_1D24191EC(uint64_t a1)
{
  v1 = 5;
  if (a1 < 500)
  {
    v1 = 0;
  }

  if ((a1 - 200) >= 0x12C)
  {
    v2 = v1;
  }

  else
  {
    v2 = 4;
  }

  if ((a1 - 50) >= 0x96)
  {
    v3 = v2;
  }

  else
  {
    v3 = 3;
  }

  if ((a1 - 10) >= 0x28)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if ((a1 - 1) >= 9)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1D241923C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x537972617262696CLL;
  *(inited + 40) = 0xEB00000000657A69;
  sub_1D24191EC(v1);
  *(inited + 48) = sub_1D2878808();
  v3 = sub_1D25D73B4(inited);
  swift_setDeallocating();
  sub_1D22BD238(inited + 32, &qword_1EC6DB240);
  return v3;
}

uint64_t sub_1D2419300(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t type metadata accessor for Analytics.ImageGenerationEventPayload()
{
  result = qword_1ED89E1E8;
  if (!qword_1ED89E1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D24193F8()
{
  sub_1D22F3EA0(319, &qword_1ED89E100);
  if (v0 <= 0x3F)
  {
    sub_1D22F3EA0(319, qword_1ED89E108);
    if (v1 <= 0x3F)
    {
      sub_1D2419618();
      if (v2 <= 0x3F)
      {
        sub_1D22F3EA0(319, &qword_1ED89CE68);
        if (v3 <= 0x3F)
        {
          sub_1D22F3EA0(319, &qword_1ED89CE20);
          if (v4 <= 0x3F)
          {
            sub_1D22F3EA0(319, qword_1ED8A6D28);
            if (v5 <= 0x3F)
            {
              sub_1D241967C();
              if (v6 <= 0x3F)
              {
                sub_1D22F3EA0(319, qword_1ED89E1F8);
                if (v7 <= 0x3F)
                {
                  sub_1D22F3EA0(319, &qword_1ED89E0F8);
                  if (v8 <= 0x3F)
                  {
                    sub_1D22F3EA0(319, &qword_1ED8A6D20);
                    if (v9 <= 0x3F)
                    {
                      sub_1D2871818();
                      if (v10 <= 0x3F)
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
      }
    }
  }
}

void sub_1D2419618()
{
  if (!qword_1ED89CBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D94B0);
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CBE0);
    }
  }
}

void sub_1D241967C()
{
  if (!qword_1ED89CF20)
  {
    type metadata accessor for CuratedPrompt();
    v0 = sub_1D28784C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CF20);
    }
  }
}

unint64_t sub_1D2419728()
{
  result = qword_1EC6DB210;
  if (!qword_1EC6DB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB210);
  }

  return result;
}

unint64_t sub_1D2419780()
{
  result = qword_1EC6DB218;
  if (!qword_1EC6DB218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB218);
  }

  return result;
}

unint64_t sub_1D24197D8()
{
  result = qword_1EC6DB220;
  if (!qword_1EC6DB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB220);
  }

  return result;
}

unint64_t sub_1D2419830()
{
  result = qword_1EC6DB228;
  if (!qword_1EC6DB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB228);
  }

  return result;
}

unint64_t sub_1D2419888()
{
  result = qword_1EC6DB230;
  if (!qword_1EC6DB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB230);
  }

  return result;
}

uint64_t sub_1D24198DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_1D2872008();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  sub_1D22BD1D0(a1, v4, &qword_1EC6D9A30);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D22BD238(a1, &qword_1EC6D9A30);
    sub_1D22BD238(v4, &qword_1EC6D9A30);
    return 6;
  }

  (*(v6 + 32))(v14, v4, v5);
  v16 = (*(v6 + 16))(v11, v14, v5);
  MEMORY[0x1D389AA70](v16);
  sub_1D2419DC0();
  v17 = sub_1D2877F98();
  v18 = *(v6 + 8);
  v18(v8, v5);
  if (v17)
  {
    sub_1D22BD238(a1, &qword_1EC6D9A30);
    v18(v11, v5);
    v18(v14, v5);
    return 0;
  }

  else
  {
    sub_1D2871FD8();
    v19 = sub_1D2877F98();
    v18(v8, v5);
    if (v19)
    {
      sub_1D22BD238(a1, &qword_1EC6D9A30);
      v18(v11, v5);
      v18(v14, v5);
      return 1;
    }

    else
    {
      sub_1D2871EB8();
      v20 = sub_1D2877F98();
      v18(v8, v5);
      if (v20)
      {
        sub_1D22BD238(a1, &qword_1EC6D9A30);
        v18(v11, v5);
        v18(v14, v5);
        return 2;
      }

      else
      {
        sub_1D2871FC8();
        v21 = sub_1D2877F98();
        v18(v8, v5);
        if (v21)
        {
          sub_1D22BD238(a1, &qword_1EC6D9A30);
          v18(v11, v5);
          v18(v14, v5);
          return 3;
        }

        else
        {
          sub_1D2871F48();
          v22 = sub_1D2877F98();
          v18(v8, v5);
          v18(v11, v5);
          if (v22)
          {
            sub_1D22BD238(a1, &qword_1EC6D9A30);
            v18(v14, v5);
            return 4;
          }

          else
          {
            v23 = sub_1D2871F78();
            sub_1D22BD238(a1, &qword_1EC6D9A30);
            v18(v14, v5);
            if ((v23 & 1) == 0)
            {
              return 6;
            }

            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1D2419DC0()
{
  result = qword_1ED8A6C08;
  if (!qword_1ED8A6C08)
  {
    sub_1D2872008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6C08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Analytics.CarouselPayload(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Analytics.CarouselPayload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
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

uint64_t sub_1D2419EEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D2419F40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D2419F98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D2419FE0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1D241A058()
{
  result = qword_1EC6DB248;
  if (!qword_1EC6DB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB248);
  }

  return result;
}

unint64_t sub_1D241A0B0()
{
  result = qword_1EC6DB250;
  if (!qword_1EC6DB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB250);
  }

  return result;
}

uint64_t sub_1D241A104(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_1EC6DB260;
  if (!qword_1EC6DB260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D241A1D0()
{
  sub_1D241A60C(319, &qword_1EC6DB270, &qword_1EC6D8F48, &unk_1D287CC90, sub_1D241A528);
  if (v0 <= 0x3F)
  {
    sub_1D241A5BC();
    if (v1 <= 0x3F)
    {
      sub_1D241A60C(319, &qword_1EC6DB288, &qword_1EC6DB290, &unk_1D2887528, sub_1D241A67C);
      if (v2 <= 0x3F)
      {
        sub_1D241A60C(319, &qword_1EC6DB2A0, &qword_1EC6DB2A8, &unk_1D2887530, sub_1D241A6F8);
        if (v3 <= 0x3F)
        {
          sub_1D241A60C(319, &qword_1EC6DB2B8, &qword_1EC6DB2C0, &unk_1D2889130, sub_1D241A774);
          if (v4 <= 0x3F)
          {
            sub_1D241A60C(319, &qword_1EC6DB2D0, &unk_1EC6DAE40, &unk_1D287EC70, sub_1D241A7F0);
            if (v5 <= 0x3F)
            {
              sub_1D241A60C(319, &qword_1EC6DB2E0, &qword_1EC6DB2E8, &unk_1D2887538, sub_1D241A86C);
              if (v6 <= 0x3F)
              {
                sub_1D241A60C(319, &qword_1EC6DB2F8, &qword_1EC6DA358, &unk_1D2883920, sub_1D241A8E8);
                if (v7 <= 0x3F)
                {
                  sub_1D241A9E0(319, &qword_1EC6DB308);
                  if (v8 <= 0x3F)
                  {
                    sub_1D241A60C(319, &qword_1EC6DB310, &qword_1EC6DB318, &unk_1D2887548, sub_1D241A964);
                    if (v9 <= 0x3F)
                    {
                      sub_1D241A9E0(319, &qword_1EC6DB328);
                      if (v10 <= 0x3F)
                      {
                        sub_1D241A9E0(319, qword_1EC6DB330);
                        if (v11 <= 0x3F)
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
        }
      }
    }
  }
}

unint64_t sub_1D241A528()
{
  result = qword_1EC6DB278;
  if (!qword_1EC6DB278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB278);
  }

  return result;
}

void sub_1D241A5BC()
{
  if (!qword_1EC6DB280)
  {
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6DB280);
    }
  }
}

void sub_1D241A60C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D241A67C()
{
  result = qword_1EC6DB298;
  if (!qword_1EC6DB298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB298);
  }

  return result;
}

unint64_t sub_1D241A6F8()
{
  result = qword_1EC6DB2B0;
  if (!qword_1EC6DB2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB2B0);
  }

  return result;
}

unint64_t sub_1D241A774()
{
  result = qword_1EC6DB2C8;
  if (!qword_1EC6DB2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB2C8);
  }

  return result;
}

unint64_t sub_1D241A7F0()
{
  result = qword_1EC6DB2D8;
  if (!qword_1EC6DB2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DAE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB2D8);
  }

  return result;
}

unint64_t sub_1D241A86C()
{
  result = qword_1EC6DB2F0;
  if (!qword_1EC6DB2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB2F0);
  }

  return result;
}

unint64_t sub_1D241A8E8()
{
  result = qword_1EC6DB300;
  if (!qword_1EC6DB300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB300);
  }

  return result;
}

unint64_t sub_1D241A964()
{
  result = qword_1EC6DB320;
  if (!qword_1EC6DB320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB320);
  }

  return result;
}

void sub_1D241A9E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CreationViewStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CreationViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D241AD00()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D241AD80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_1D241AF04(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_1D241B154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D241B19C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D241B1F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x5A494C41434F4C5FLL;
    }

    else
    {
      v5 = 25705;
    }

    if (v2)
    {
      v6 = 0xED00005F454C4241;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v3 = 0x656C69466E6F6369;
    v4 = 0xEC000000656D616ELL;
    if (a1 != 3)
    {
      v3 = 0xD00000000000001DLL;
      v4 = 0x80000001D28AEE30;
    }

    if (a1 == 2)
    {
      v5 = 0x7470697263736564;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xEB000000006E6F69;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x5A494C41434F4C5FLL;
    }

    else
    {
      v11 = 25705;
    }

    if (a2)
    {
      v10 = 0xED00005F454C4241;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x656C69466E6F6369;
    v8 = 0x80000001D28AEE30;
    if (a2 == 3)
    {
      v8 = 0xEC000000656D616ELL;
    }

    else
    {
      v7 = 0xD00000000000001DLL;
    }

    if (a2 == 2)
    {
      v9 = 0x7470697263736564;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEB000000006E6F69;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1D2879618();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1D241B3B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0x5A494C41434F4C5FLL;
    v10 = 0xED00005F454C4241;
    if (a1 != 1)
    {
      v9 = 0x4E79616C70736964;
      v10 = 0xEB00000000656D61;
    }

    if (a1)
    {
      v7 = v9;
    }

    else
    {
      v7 = 25705;
    }

    if (v2)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0xE200000000000000;
    }
  }

  else
  {
    v3 = 0x80000001D28AEEC0;
    v4 = 0xD000000000000017;
    if (a1 != 5)
    {
      v4 = 0xD000000000000023;
      v3 = 0x80000001D28AEEE0;
    }

    v5 = 0x80000001D28AEE80;
    v6 = 0xD000000000000016;
    if (a1 == 3)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x80000001D28AEEA0;
    }

    if (a1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 4)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xED00005F454C4241;
        if (v7 != 0x5A494C41434F4C5FLL)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v11 = 0xEB00000000656D61;
        if (v7 != 0x4E79616C70736964)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      if (v7 != 25705)
      {
        goto LABEL_42;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0x80000001D28AEEC0;
      if (v7 != 0xD000000000000017)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v11 = 0x80000001D28AEEE0;
      if (v7 != 0xD000000000000023)
      {
LABEL_42:
        v12 = sub_1D2879618();
        goto LABEL_43;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0x80000001D28AEE80;
    if (v7 != 0xD000000000000014)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v11 = 0x80000001D28AEEA0;
    if (v7 != 0xD000000000000016)
    {
      goto LABEL_42;
    }
  }

  if (v8 != v11)
  {
    goto LABEL_42;
  }

  v12 = 1;
LABEL_43:

  return v12 & 1;
}

uint64_t sub_1D241B600(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0x6669636570736E55;
    }

    if (v2)
    {
      v3 = 0x80000001D28AEF30;
    }

    else
    {
      v3 = 0xEB00000000646569;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6A65526567616D49;
    v3 = 0xEE006E6F69746365;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000001D28AEF60;
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x6572617774666F53;
    v3 = 0xED0000726F727245;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x6669636570736E55;
    }

    if (a2)
    {
      v5 = 0x80000001D28AEF30;
    }

    else
    {
      v5 = 0xEB00000000646569;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEE006E6F69746365;
    if (v4 != 0x6A65526567616D49)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001D28AEF60;
    if (v4 != 0xD000000000000015)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED0000726F727245;
    if (v4 != 0x6572617774666F53)
    {
LABEL_31:
      v7 = sub_1D2879618();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1D241B7E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_1D2879618();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1D241B9EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x80000001D28AED70;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x80000001D28AED90;
    }

    v5 = 0x80000001D28AED30;
    if (a1 != 3)
    {
      v5 = 0x80000001D28AED50;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_1D2879618();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x80000001D28AED70;
    }

    else
    {
      v10 = 0x80000001D28AED90;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x80000001D28AED30;
    }

    else
    {
      v10 = 0x80000001D28AED50;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_1D241BBC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_1D2879618();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_1D241BDBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xD000000000000013;
  v6 = 0x80000001D28AF120;
  if (a1 != 5)
  {
    v5 = 0xD000000000000015;
    v6 = 0x80000001D28AF140;
  }

  v7 = 0x696C61636F6C6E75;
  v8 = 0xEF656D614E64657ALL;
  if (a1 != 3)
  {
    v7 = 0x656C69466E6F6369;
    v8 = 0xEC000000656D616ELL;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x5A494C41434F4C5FLL;
  v10 = 0xED00005F454C4241;
  if (a1 != 1)
  {
    v9 = 0x79726F6765746163;
    v10 = 0xEA00000000004449;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xED00005F454C4241;
        if (v11 != 0x5A494C41434F4C5FLL)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v13 = 0xEA00000000004449;
        if (v11 != 0x79726F6765746163)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_38;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0x80000001D28AF120;
      if (v11 != 0xD000000000000013)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v13 = 0x80000001D28AF140;
      if (v11 != 0xD000000000000015)
      {
LABEL_38:
        v14 = sub_1D2879618();
        goto LABEL_39;
      }
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xEF656D614E64657ALL;
    if (v11 != 0x696C61636F6C6E75)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v13 = 0xEC000000656D616ELL;
    if (v11 != 0x656C69466E6F6369)
    {
      goto LABEL_38;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_38;
  }

  v14 = 1;
LABEL_39:

  return v14 & 1;
}

uint64_t sub_1D241C024(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6369766544206E4FLL;
  v4 = a1;
  v5 = 0x70756B636F4DLL;
  v6 = 0xE600000000000000;
  v7 = 0x646574746556;
  if (a1 != 4)
  {
    v7 = 1869440324;
    v6 = 0xE400000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000011;
  v9 = 0x80000001D28AE710;
  if (a1 != 1)
  {
    v8 = 0x726576726553;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v8 = 0x6369766544206E4FLL;
    v9 = 0xE900000000000065;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v10 != 0x70756B636F4DLL)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE600000000000000;
      if (v10 != 0x646574746556)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (v10 != 1869440324)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001D28AE710;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v2 = 0xE600000000000000;
      v3 = 0x726576726553;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_1D2879618();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_1D241C1D0()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D241C2CC()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D241C3E0()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D241C518()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D241C628()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D241C738()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D241C840()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D241C980()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D241CA78@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1D2871238();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871228();
  sub_1D2871218();
  MEMORY[0x1D3899C80](7824750, 0xE300000000000000);
  sub_1D241CCC8();
  sub_1D28711E8();
  sub_1D28711F8();
  v9 = sub_1D28716B8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1D22BD238(v4, &qword_1EC6DA1B8);
    sub_1D24223B4();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

char *sub_1D241CCC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB410);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v332 = &v296 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v331 = &v296 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v330 = &v296 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v327 = &v296 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v324 = &v296 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v321 = &v296 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v320 = &v296 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v296 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v296 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v296 - v23;
  v25 = sub_1D28711D8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v299 = &v296 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v298 = &v296 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v315 = &v296 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v314 = &v296 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v351 = &v296 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v313 = &v296 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v350 = &v296 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v349 = &v296 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v312 = &v296 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v348 = &v296 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v329 = &v296 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v328 = &v296 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v347 = &v296 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v311 = &v296 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v346 = &v296 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v345 = &v296 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v310 = &v296 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v344 = &v296 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v343 = &v296 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v309 = &v296 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v342 = &v296 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v341 = &v296 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v308 = &v296 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v340 = &v296 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v326 = &v296 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v325 = &v296 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v352 = &v296 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v307 = &v296 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v339 = &v296 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v338 = &v296 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v306 = &v296 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v337 = &v296 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v336 = &v296 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v305 = &v296 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v335 = &v296 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v323 = &v296 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v322 = &v296 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v334 = &v296 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v304 = &v296 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v333 = &v296 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v303 = &v296 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v302 = &v296 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v301 = &v296 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v300 = &v296 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v319 = &v296 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v318 = &v296 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v317 = &v296 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v316 = &v296 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v124 = &v296 - v123;
  v126 = MEMORY[0x1EEE9AC00](v125);
  v128 = &v296 - v127;
  v356 = v26;
  v357 = MEMORY[0x1E69E7CC0];
  v129 = *(v1 + 24);
  v353 = v1;
  if (!v129)
  {
    v354 = *(v26 + 56);
    v354(v24, 1, 1, v25, v126);
LABEL_5:
    sub_1D22BD238(v24, &qword_1EC6DB410);
    v130 = *(v1 + 48);
    if (!v130)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_1D2870F68();
  sub_1D2870F68();
  v26 = v356;
  sub_1D28711C8();
  v354 = *(v26 + 56);
  (v354)(v24, 0, 1, v25);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v1 = v353;
    goto LABEL_5;
  }

  v355 = *(v26 + 32);
  v355(v128, v24, v25);
  (*(v26 + 16))(v124, v128, v25);
  v153 = sub_1D27CCEEC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v155 = *(v153 + 2);
  v154 = *(v153 + 3);
  v297 = v18;
  if (v155 >= v154 >> 1)
  {
    v153 = sub_1D27CCEEC(v154 > 1, v155 + 1, 1, v153);
  }

  v156 = v356;
  v157 = v356 + 8;
  (*(v356 + 8))(v128, v25);
  *(v153 + 2) = v155 + 1;
  v158 = &v153[((*(v157 + 72) + 32) & ~*(v157 + 72)) + *(v157 + 64) * v155];
  v26 = v156;
  v355(v158, v124, v25);
  v357 = v153;
  v1 = v353;
  v18 = v297;
  v130 = *(v353 + 48);
  if (v130)
  {
LABEL_6:
    v132 = *(v1 + 56);
    v131 = *(v1 + 64);
    v358 = *(v1 + 32);
    v359 = v130;
    v360 = v132;
    v361 = v131;
    v133 = sub_1D241FBFC();
    sub_1D274E444(v133);
  }

LABEL_7:
  v134 = *(v1 + 88);
  sub_1D2870F68();
  sub_1D2421598(v134, v21);

  v355 = *(v26 + 48);
  if (v355(v21, 1, v25) == 1)
  {
    sub_1D22BD238(v21, &qword_1EC6DB410);
  }

  else
  {
    v135 = *(v26 + 32);
    v136 = v316;
    v135(v316, v21, v25);
    (*(v26 + 16))(v317, v136, v25);
    v137 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v137 = sub_1D27CCEEC(0, *(v137 + 2) + 1, 1, v137);
    }

    v139 = *(v137 + 2);
    v138 = *(v137 + 3);
    if (v139 >= v138 >> 1)
    {
      v137 = sub_1D27CCEEC(v138 > 1, v139 + 1, 1, v137);
    }

    (*(v26 + 8))(v316, v25);
    *(v137 + 2) = v139 + 1;
    v135(&v137[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v139], v317, v25);
    v357 = v137;
    v1 = v353;
  }

  v140 = *(v1 + 112);
  sub_1D2870F68();
  sub_1D242178C(v140, v18);

  if (v355(v18, 1, v25) == 1)
  {
    sub_1D22BD238(v18, &qword_1EC6DB410);
    if (*(v1 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v141 = v320;
    (v354)(v320, 1, 1, v25);
    goto LABEL_29;
  }

  v148 = *(v26 + 32);
  v149 = v318;
  v148(v318, v18, v25);
  (*(v26 + 16))(v319, v149, v25);
  v150 = v357;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v150 = sub_1D27CCEEC(0, *(v150 + 2) + 1, 1, v150);
  }

  v152 = *(v150 + 2);
  v151 = *(v150 + 3);
  if (v152 >= v151 >> 1)
  {
    v150 = sub_1D27CCEEC(v151 > 1, v152 + 1, 1, v150);
  }

  (*(v26 + 8))(v318, v25);
  *(v150 + 2) = v152 + 1;
  v148(&v150[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v152], v319, v25);
  v357 = v150;
  if (!*(v1 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:
  sub_1D2870F68();
  sub_1D2870F68();
  v141 = v320;
  sub_1D28711C8();
  (v354)(v141, 0, 1, v25);

  if (v355(v141, 1, v25) != 1)
  {
    v142 = *(v26 + 32);
    v143 = v300;
    v142(v300, v141, v25);
    (*(v26 + 16))(v301, v143, v25);
    v144 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v144 = sub_1D27CCEEC(0, *(v144 + 2) + 1, 1, v144);
    }

    v146 = *(v144 + 2);
    v145 = *(v144 + 3);
    if (v146 >= v145 >> 1)
    {
      v144 = sub_1D27CCEEC(v145 > 1, v146 + 1, 1, v144);
    }

    (*(v26 + 8))(v300, v25);
    *(v144 + 2) = v146 + 1;
    v142(&v144[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v146], v301, v25);
    v357 = v144;
    if (!*(v1 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_1D22BD238(v141, &qword_1EC6DB410);
  if (!*(v1 + 176))
  {
LABEL_22:
    v147 = v321;
    (v354)(v321, 1, 1, v25);
LABEL_31:
    sub_1D22BD238(v147, &qword_1EC6DB410);
    goto LABEL_41;
  }

LABEL_30:
  sub_1D2870F68();
  sub_1D2870F68();
  v147 = v321;
  sub_1D28711C8();
  (v354)(v147, 0, 1, v25);

  if (v355(v147, 1, v25) == 1)
  {
    goto LABEL_31;
  }

  v159 = *(v26 + 32);
  v160 = v302;
  v159(v302, v147, v25);
  (*(v26 + 16))(v303, v160, v25);
  v161 = v357;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v161 = sub_1D27CCEEC(0, *(v161 + 2) + 1, 1, v161);
  }

  v163 = *(v161 + 2);
  v162 = *(v161 + 3);
  if (v163 >= v162 >> 1)
  {
    v161 = sub_1D27CCEEC(v162 > 1, v163 + 1, 1, v161);
  }

  (*(v26 + 8))(v302, v25);
  *(v161 + 2) = v163 + 1;
  v159(&v161[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v163], v303, v25);
  v357 = v161;
LABEL_41:
  sub_1D2870F68();
  v164 = sub_1D2870F68();
  sub_1D24220BC(v164);
  if (v165)
  {
    v166 = v304;
    sub_1D28711C8();

    v167 = *(v26 + 32);
    v168 = v333;
    v167(v333, v166, v25);
    (*(v26 + 16))(v334, v168, v25);
    v169 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v169 = sub_1D27CCEEC(0, *(v169 + 2) + 1, 1, v169);
    }

    v171 = *(v169 + 2);
    v170 = *(v169 + 3);
    if (v171 >= v170 >> 1)
    {
      v169 = sub_1D27CCEEC(v170 > 1, v171 + 1, 1, v169);
    }

    (*(v26 + 8))(v333, v25);
    *(v169 + 2) = v171 + 1;
    v167(&v169[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v171], v334, v25);
    v357 = v169;
  }

  else
  {
  }

  v172 = type metadata accessor for TapToRadarDraft();
  v173 = v324;
  sub_1D24218E4(v324);
  if (v355(v173, 1, v25) == 1)
  {
    sub_1D22BD238(v173, &qword_1EC6DB410);
  }

  else
  {
    v174 = *(v26 + 32);
    v175 = v322;
    v174(v322, v173, v25);
    (*(v26 + 16))(v323, v175, v25);
    v176 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v176 = sub_1D27CCEEC(0, *(v176 + 2) + 1, 1, v176);
    }

    v178 = *(v176 + 2);
    v177 = *(v176 + 3);
    if (v178 >= v177 >> 1)
    {
      v176 = sub_1D27CCEEC(v177 > 1, v178 + 1, 1, v176);
    }

    (*(v26 + 8))(v322, v25);
    *(v176 + 2) = v178 + 1;
    v174(&v176[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v178], v323, v25);
    v357 = v176;
    v1 = v353;
  }

  sub_1D2870F68();
  v179 = sub_1D2870F68();
  sub_1D2421EA8(v179);
  if (v180)
  {
    v181 = v305;
    sub_1D28711C8();

    v182 = *(v26 + 32);
    v183 = v335;
    v182(v335, v181, v25);
    (*(v26 + 16))(v336, v183, v25);
    v184 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v184 = sub_1D27CCEEC(0, *(v184 + 2) + 1, 1, v184);
    }

    v186 = *(v184 + 2);
    v185 = *(v184 + 3);
    if (v186 >= v185 >> 1)
    {
      v184 = sub_1D27CCEEC(v185 > 1, v186 + 1, 1, v184);
    }

    (*(v26 + 8))(v335, v25);
    *(v184 + 2) = v186 + 1;
    v182(&v184[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v186], v336, v25);
    v357 = v184;
    v1 = v353;
  }

  else
  {
  }

  sub_1D2870F68();
  v187 = sub_1D2870F68();
  sub_1D2421EA8(v187);
  if (v188)
  {
    v189 = v306;
    sub_1D28711C8();

    v190 = *(v26 + 32);
    v191 = v337;
    v190(v337, v189, v25);
    (*(v26 + 16))(v338, v191, v25);
    v192 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v192 = sub_1D27CCEEC(0, *(v192 + 2) + 1, 1, v192);
    }

    v194 = *(v192 + 2);
    v193 = *(v192 + 3);
    if (v194 >= v193 >> 1)
    {
      v192 = sub_1D27CCEEC(v193 > 1, v194 + 1, 1, v192);
    }

    (*(v26 + 8))(v337, v25);
    *(v192 + 2) = v194 + 1;
    v190(&v192[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v194], v338, v25);
    v357 = v192;
    v1 = v353;
  }

  else
  {
  }

  sub_1D2870F68();
  v195 = sub_1D2870F68();
  sub_1D2421D78(v195);
  if (v196)
  {
    v197 = v307;
    sub_1D28711C8();

    v198 = *(v26 + 32);
    v199 = v339;
    v198(v339, v197, v25);
    (*(v26 + 16))(v352, v199, v25);
    v200 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v200 = sub_1D27CCEEC(0, *(v200 + 2) + 1, 1, v200);
    }

    v202 = *(v200 + 2);
    v201 = *(v200 + 3);
    if (v202 >= v201 >> 1)
    {
      v200 = sub_1D27CCEEC(v201 > 1, v202 + 1, 1, v200);
    }

    (*(v26 + 8))(v339, v25);
    *(v200 + 2) = v202 + 1;
    v198(&v200[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v202], v352, v25);
    v357 = v200;
    v1 = v353;
  }

  else
  {
  }

  sub_1D2870F68();
  v203 = v327;
  sub_1D28711C8();

  v352 = (v26 + 56);
  (v354)(v203, 0, 1, v25);

  if (v355(v203, 1, v25) == 1)
  {
    sub_1D22BD238(v203, &qword_1EC6DB410);
  }

  else
  {
    v204 = *(v26 + 32);
    v205 = v325;
    v204(v325, v203, v25);
    (*(v26 + 16))(v326, v205, v25);
    v206 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v206 = sub_1D27CCEEC(0, *(v206 + 2) + 1, 1, v206);
    }

    v208 = *(v206 + 2);
    v207 = *(v206 + 3);
    if (v208 >= v207 >> 1)
    {
      v206 = sub_1D27CCEEC(v207 > 1, v208 + 1, 1, v206);
    }

    v209 = v356 + 8;
    (*(v356 + 8))(v325, v25);
    *(v206 + 2) = v208 + 1;
    v204(&v206[((*(v209 + 72) + 32) & ~*(v209 + 72)) + *(v209 + 64) * v208], v326, v25);
    v357 = v206;
  }

  sub_1D2870F68();
  v210 = sub_1D2870F68();
  sub_1D2421D78(v210);
  if (v211)
  {
    v212 = v308;
    sub_1D28711C8();

    v213 = v356;
    v214 = *(v356 + 32);
    v215 = v340;
    v214(v340, v212, v25);
    (*(v213 + 16))(v341, v215, v25);
    v216 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v216 = sub_1D27CCEEC(0, *(v216 + 2) + 1, 1, v216);
    }

    v218 = *(v216 + 2);
    v217 = *(v216 + 3);
    if (v218 >= v217 >> 1)
    {
      v216 = sub_1D27CCEEC(v217 > 1, v218 + 1, 1, v216);
    }

    v219 = v356 + 8;
    (*(v356 + 8))(v340, v25);
    *(v216 + 2) = v218 + 1;
    v214(&v216[((*(v219 + 72) + 32) & ~*(v219 + 72)) + *(v219 + 64) * v218], v341, v25);
    v357 = v216;
  }

  else
  {
  }

  sub_1D2870F68();
  v220 = sub_1D2870F68();
  sub_1D2421BA0(v220);
  if (v221)
  {
    v222 = v309;
    sub_1D28711C8();

    v223 = v356;
    v224 = *(v356 + 32);
    v225 = v342;
    v224(v342, v222, v25);
    (*(v223 + 16))(v343, v225, v25);
    v226 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v226 = sub_1D27CCEEC(0, *(v226 + 2) + 1, 1, v226);
    }

    v228 = *(v226 + 2);
    v227 = *(v226 + 3);
    if (v228 >= v227 >> 1)
    {
      v226 = sub_1D27CCEEC(v227 > 1, v228 + 1, 1, v226);
    }

    v229 = v356 + 8;
    (*(v356 + 8))(v342, v25);
    *(v226 + 2) = v228 + 1;
    v224(&v226[((*(v229 + 72) + 32) & ~*(v229 + 72)) + *(v229 + 64) * v228], v343, v25);
    v357 = v226;
  }

  else
  {
  }

  sub_1D2870F68();
  v230 = sub_1D2870F68();
  sub_1D2421D78(v230);
  if (v231)
  {
    v232 = v310;
    sub_1D28711C8();

    v233 = v356;
    v234 = *(v356 + 32);
    v235 = v344;
    v234(v344, v232, v25);
    (*(v233 + 16))(v345, v235, v25);
    v236 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v236 = sub_1D27CCEEC(0, *(v236 + 2) + 1, 1, v236);
    }

    v238 = *(v236 + 2);
    v237 = *(v236 + 3);
    if (v238 >= v237 >> 1)
    {
      v236 = sub_1D27CCEEC(v237 > 1, v238 + 1, 1, v236);
    }

    v239 = v356 + 8;
    (*(v356 + 8))(v344, v25);
    *(v236 + 2) = v238 + 1;
    v234(&v236[((*(v239 + 72) + 32) & ~*(v239 + 72)) + *(v239 + 64) * v238], v345, v25);
    v357 = v236;
  }

  else
  {
  }

  v240 = *(v1 + v172[19] + 16);
  sub_1D2870F68();
  sub_1D2420874(v240);
  if (v241)
  {
    v242 = v311;
    sub_1D28711C8();

    v243 = v356;
    v244 = *(v356 + 32);
    v245 = v346;
    v244(v346, v242, v25);
    (*(v243 + 16))(v347, v245, v25);
    v246 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v246 = sub_1D27CCEEC(0, *(v246 + 2) + 1, 1, v246);
    }

    v248 = *(v246 + 2);
    v247 = *(v246 + 3);
    if (v248 >= v247 >> 1)
    {
      v246 = sub_1D27CCEEC(v247 > 1, v248 + 1, 1, v246);
    }

    v249 = v356 + 8;
    (*(v356 + 8))(v346, v25);
    *(v246 + 2) = v248 + 1;
    v244(&v246[((*(v249 + 72) + 32) & ~*(v249 + 72)) + *(v249 + 64) * v248], v347, v25);
    v357 = v246;
  }

  else
  {
  }

  sub_1D2870F68();
  v250 = v330;
  sub_1D28711C8();

  (v354)(v250, 0, 1, v25);
  v251 = v250;

  if (v355(v250, 1, v25) == 1)
  {
    sub_1D22BD238(v250, &qword_1EC6DB410);
  }

  else
  {
    v252 = v356;
    v253 = *(v356 + 32);
    v254 = v328;
    v253(v328, v251, v25);
    (*(v252 + 16))(v329, v254, v25);
    v255 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v255 = sub_1D27CCEEC(0, *(v255 + 2) + 1, 1, v255);
    }

    v257 = *(v255 + 2);
    v256 = *(v255 + 3);
    if (v257 >= v256 >> 1)
    {
      v255 = sub_1D27CCEEC(v256 > 1, v257 + 1, 1, v255);
    }

    v258 = v356 + 8;
    (*(v356 + 8))(v328, v25);
    *(v255 + 2) = v257 + 1;
    v253(&v255[((*(v258 + 72) + 32) & ~*(v258 + 72)) + *(v258 + 64) * v257], v329, v25);
    v357 = v255;
  }

  v259 = *(v1 + v172[21] + 16);
  sub_1D2870F68();
  sub_1D2421110(v259);
  if (v260)
  {
    v261 = v312;
    sub_1D28711C8();

    v262 = v356;
    v263 = *(v356 + 32);
    v264 = v348;
    v263(v348, v261, v25);
    (*(v262 + 16))(v349, v264, v25);
    v265 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v265 = sub_1D27CCEEC(0, *(v265 + 2) + 1, 1, v265);
    }

    v267 = *(v265 + 2);
    v266 = *(v265 + 3);
    if (v267 >= v266 >> 1)
    {
      v265 = sub_1D27CCEEC(v266 > 1, v267 + 1, 1, v265);
    }

    v268 = v356 + 8;
    (*(v356 + 8))(v348, v25);
    *(v265 + 2) = v267 + 1;
    v263(&v265[((*(v268 + 72) + 32) & ~*(v268 + 72)) + *(v268 + 64) * v267], v349, v25);
    v357 = v265;
  }

  else
  {
  }

  sub_1D2870F68();
  v269 = sub_1D2870F68();
  sub_1D2421D78(v269);
  if (v270)
  {
    v271 = v313;
    sub_1D28711C8();

    v272 = v356;
    v273 = *(v356 + 32);
    v274 = v350;
    v273(v350, v271, v25);
    (*(v272 + 16))(v351, v274, v25);
    v275 = v357;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v275 = sub_1D27CCEEC(0, *(v275 + 2) + 1, 1, v275);
    }

    v277 = *(v275 + 2);
    v276 = *(v275 + 3);
    if (v277 >= v276 >> 1)
    {
      v275 = sub_1D27CCEEC(v276 > 1, v277 + 1, 1, v275);
    }

    v278 = v356 + 8;
    (*(v356 + 8))(v350, v25);
    *(v275 + 2) = v277 + 1;
    v273(&v275[((*(v278 + 72) + 32) & ~*(v278 + 72)) + *(v278 + 64) * v277], v351, v25);
    v357 = v275;
  }

  else
  {
  }

  if (!*(v1 + v172[23] + 24))
  {
    v279 = v331;
    (v354)(v331, 1, 1, v25);
    v281 = v356;
    goto LABEL_140;
  }

  sub_1D2870F68();
  sub_1D2870F68();
  v279 = v331;
  sub_1D28711C8();
  (v354)(v279, 0, 1, v25);

  v280 = v355(v279, 1, v25);
  v281 = v356;
  if (v280 == 1)
  {
LABEL_140:
    sub_1D22BD238(v279, &qword_1EC6DB410);
    goto LABEL_141;
  }

  v282 = *(v356 + 32);
  v283 = v314;
  v282(v314, v279, v25);
  (*(v281 + 16))(v315, v283, v25);
  v284 = v357;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v284 = sub_1D27CCEEC(0, *(v284 + 2) + 1, 1, v284);
  }

  v286 = *(v284 + 2);
  v285 = *(v284 + 3);
  if (v286 >= v285 >> 1)
  {
    v284 = sub_1D27CCEEC(v285 > 1, v286 + 1, 1, v284);
  }

  v281 = v356;
  v287 = v356 + 8;
  (*(v356 + 8))(v314, v25);
  *(v284 + 2) = v286 + 1;
  v282(&v284[((*(v287 + 72) + 32) & ~*(v287 + 72)) + *(v287 + 64) * v286], v315, v25);
  v357 = v284;
LABEL_141:
  if (!*(v353 + v172[24] + 24))
  {
    v288 = v332;
    (v354)(v332, 1, 1, v25);
    goto LABEL_149;
  }

  sub_1D2870F68();
  sub_1D2870F68();
  v288 = v332;
  sub_1D28711C8();
  (v354)(v288, 0, 1, v25);

  if (v355(v288, 1, v25) == 1)
  {
LABEL_149:
    sub_1D22BD238(v288, &qword_1EC6DB410);
    return v357;
  }

  v289 = *(v281 + 32);
  v290 = v298;
  v289(v298, v288, v25);
  v291 = v299;
  (*(v281 + 16))(v299, v290, v25);
  v292 = v357;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v292 = sub_1D27CCEEC(0, *(v292 + 2) + 1, 1, v292);
  }

  v294 = *(v292 + 2);
  v293 = *(v292 + 3);
  if (v294 >= v293 >> 1)
  {
    v292 = sub_1D27CCEEC(v293 > 1, v294 + 1, 1, v292);
  }

  (*(v281 + 8))(v290, v25);
  *(v292 + 2) = v294 + 1;
  v289(&v292[((*(v281 + 80) + 32) & ~*(v281 + 80)) + *(v281 + 72) * v294], v291, v25);
  return v292;
}

uint64_t sub_1D241F6E4()
{
  v1[18] = v0;
  v2 = sub_1D28716B8();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_1D2878568();
  v1[22] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v1[23] = v4;
  v1[24] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D241F7D8, v4, v3);
}

uint64_t sub_1D241F7D8()
{
  sub_1D241CA78(v0[21]);
  v1 = [objc_opt_self() sharedApplication];
  v0[25] = v1;
  v2 = sub_1D28715B8();
  v0[26] = v2;
  sub_1D25D9914(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1D2422344();
  v3 = sub_1D2877E78();
  v0[27] = v3;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1D241F9EC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB400);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D241FBA0;
  v0[13] = &block_descriptor_9;
  v0[14] = v4;
  [v1 openURL:v2 options:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D241F9EC()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D241FAF4, v2, v1);
}

uint64_t sub_1D241FAF4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[20];

  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D241FBA0(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8]();
}

uint64_t sub_1D241FBFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB418);
  sub_1D28711D8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D28838F0;
  sub_1D28795C8();
  sub_1D28711C8();

  sub_1D28711C8();
  sub_1D28711C8();
  return v0;
}

uint64_t sub_1D241FD78()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1);
  sub_1D2877F38();
  sub_1D2877F38();
  return sub_1D2879828();
}

uint64_t sub_1D241FDF8()
{
  MEMORY[0x1D38A2260](*v0);
  sub_1D2877F38();

  return sub_1D2877F38();
}

uint64_t sub_1D241FE68()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1);
  sub_1D2877F38();
  sub_1D2877F38();
  return sub_1D2879828();
}

uint64_t sub_1D241FEE4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1D2879618();
}

unint64_t sub_1D241FF9C()
{
  result = qword_1EC6DB3B8;
  if (!qword_1EC6DB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB3B8);
  }

  return result;
}

unint64_t sub_1D241FFF0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
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
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
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

uint64_t sub_1D2420154(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D241FFF0(*a1);
  v5 = v4;
  if (v3 == sub_1D241FFF0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2879618();
  }

  return v8 & 1;
}

uint64_t sub_1D24201DC()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D241FFF0(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D2420240()
{
  sub_1D241FFF0(*v0);
  sub_1D2877F38();
}

uint64_t sub_1D2420294()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D241FFF0(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D24202F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D2422214();
  *a1 = result;
  return result;
}

unint64_t sub_1D2420324@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D241FFF0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D2420354()
{
  result = qword_1EC6DB3C0;
  if (!qword_1EC6DB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB3C0);
  }

  return result;
}

uint64_t sub_1D24203BC()
{
  sub_1D2877F38();
}

uint64_t sub_1D24204C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D2422260();
  *a1 = result;
  return result;
}

void sub_1D24204F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
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

unint64_t sub_1D24205C0()
{
  result = qword_1EC6DB3C8;
  if (!qword_1EC6DB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB3C8);
  }

  return result;
}

uint64_t sub_1D242062C()
{
  sub_1D2877F38();
}

uint64_t sub_1D2420728@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D24222AC();
  *a1 = result;
  return result;
}

void sub_1D2420758(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
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
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1D2420820()
{
  result = qword_1EC6DB3D0;
  if (!qword_1EC6DB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB3D0);
  }

  return result;
}

uint64_t sub_1D2420874(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_1D27CC674(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_1D27CC674((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1D27CC674(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_1D27CC674((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1D27CC674(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_1D27CC674((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1D27CC674(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_1D27CC674((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1D27CC674(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_1D27CC674((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
            sub_1D238D968();
            v1 = sub_1D2877F68();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1D27CC674(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_1D27CC674((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x80000001D28B61F0;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1D27CC674(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_1D27CC674((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D27CC674(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1D27CC674((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_1D2420D44()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1);
  return sub_1D2879828();
}

uint64_t sub_1D2420DB8()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1);
  return sub_1D2879828();
}

BOOL sub_1D2420E40(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D2420E70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D2420E9C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1D2420F74@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D2745650();

  *a1 = v2;
  return result;
}

unint64_t sub_1D2420FB4()
{
  result = qword_1EC6DB3D8;
  if (!qword_1EC6DB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB3D8);
  }

  return result;
}

unint64_t sub_1D242100C()
{
  result = qword_1EC6DB3E0;
  if (!qword_1EC6DB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB3E0);
  }

  return result;
}

unint64_t sub_1D2421064()
{
  result = qword_1EC6DB3E8;
  if (!qword_1EC6DB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB3E8);
  }

  return result;
}

unint64_t sub_1D24210BC()
{
  result = qword_1EC6DB3F0;
  if (!qword_1EC6DB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB3F0);
  }

  return result;
}

uint64_t sub_1D2421110(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_1D2879618();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D24212E0()
{
  sub_1D2877F38();
}

uint64_t sub_1D24213E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D24222F8();
  *a1 = result;
  return result;
}

void sub_1D2421414(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001D28AED70;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x80000001D28AED90;
    }

    v5 = 0x80000001D28AED30;
    if (v2 != 3)
    {
      v5 = 0x80000001D28AED50;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t sub_1D24214E8()
{
  result = qword_1EC6DB3F8;
  if (!qword_1EC6DB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB3F8);
  }

  return result;
}

unint64_t sub_1D242153C()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0x100000000000002FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_1D2421598@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_1D28711C8();

    v3 = 0;
  }

  v4 = sub_1D28711D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1D242178C@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_1D28711C8();

    v3 = 0;
  }

  v4 = sub_1D28711D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1D24218E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1D2871798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB258);
  sub_1D2422408(v2 + *(v11 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D22BD238(v6, &unk_1EC6DAE40);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v14 = sub_1D2878068();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_1D2871728();
    v16 = [v13 stringFromDate_];

    sub_1D28780A8();
    (*(v8 + 8))(v10, v7);
    sub_1D28711C8();

    v12 = 0;
  }

  v17 = sub_1D28711D8();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_1D2421BA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D27CC674(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_1D27CC674((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
  sub_1D238D968();
  v17 = sub_1D2877F68();

  return v17;
}

uint64_t sub_1D2421D78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;
    sub_1D2870F68();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D27CC674(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1D27CC674((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
  sub_1D238D968();
  v9 = sub_1D2877F68();

  return v9;
}

uint64_t sub_1D2421EA8(uint64_t a1)
{
  v24 = sub_1D28716B8();
  v3 = MEMORY[0x1EEE9AC00](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v2 + 16);
  v7 = v2 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v22 = *(v7 + 56);
  v23 = v8;
  v10 = (v7 - 8);
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = v24;
    v13 = v7;
    v23(v5, v9, v24, v3);
    v14 = sub_1D2871658();
    v16 = v15;
    (*v10)(v5, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D27CC674(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_1D27CC674((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v9 += v22;
    --v6;
    v7 = v13;
  }

  while (v6);
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
  sub_1D238D968();
  v20 = sub_1D2877F68();

  return v20;
}

uint64_t sub_1D24220BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 += 8;
    v4 = sub_1D28795C8();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D27CC674(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_1D27CC674((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
  sub_1D238D968();
  v10 = sub_1D2877F68();

  return v10;
}

uint64_t sub_1D2422214()
{
  v0 = sub_1D2879488();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D2422260()
{
  v0 = sub_1D2879488();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D24222AC()
{
  v0 = sub_1D2879488();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D24222F8()
{
  v0 = sub_1D2879488();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D2422344()
{
  result = qword_1EC6D96A0;
  if (!qword_1EC6D96A0)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D96A0);
  }

  return result;
}

unint64_t sub_1D24223B4()
{
  result = qword_1EC6DB408;
  if (!qword_1EC6DB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB408);
  }

  return result;
}

uint64_t sub_1D2422408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2422490()
{
  result = qword_1EC6DB420;
  if (!qword_1EC6DB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB420);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D242250C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1D2422568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D24225E8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1D23415B4(a2, a3);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED8B0058;
  sub_1D28718C8();
  v11 = sub_1D28780E8();
  v13 = v12;
  v14 = sub_1D2874F98();
  result = sub_1D2876358();
  *a4 = a1 & 1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = v11;
  *(a4 + 48) = v13;
  *(a4 + 56) = v14;
  *(a4 + 64) = result;
  return result;
}

void *sub_1D2422780()
{
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v2 - 8);
  LOBYTE(v3) = *v0;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v22 = *(v0 + 40);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v6 = qword_1ED8B0058;
    sub_1D28718C8();
    sub_1D28780E8();
    v24 = *(v0 + 8);
    v7 = sub_1D2878068();

    v8 = *(&v24 + 1) ? sub_1D2878068() : 0;
    v9 = [objc_allocWithZone(MEMORY[0x1E69B7D70]) initWithTitle:v7 detailText:v8 icon:0];

    v20 = v9;
    v10 = [v9 navigationItem];
    sub_1D22BCFD0(0, &qword_1EC6DB440);
    sub_1D22BCFD0(0, &unk_1ED89CC30);
    v23 = v22;
    v11 = swift_allocObject();
    v12 = *(v0 + 16);
    *(v11 + 16) = *v0;
    *(v11 + 32) = v12;
    *(v11 + 48) = *(v0 + 32);
    *(v11 + 64) = *(v0 + 48);
    sub_1D2422DF4(&v24, v21);
    sub_1D23415B4(v4, v5);
    sub_1D23967C8(&v23, v21);
    sub_1D2878DF8();
    v13 = sub_1D2878A68();
    [v10 setRightBarButtonItem_];

    v14 = sub_1D2422E64(v3 & 1);
    v0 = v14;
    v3 = *(v14 + 16);
    if (!v3)
    {
      break;
    }

    v15 = 0;
    v16 = (v14 + 72);
    while (v15 < *(v0 + 16))
    {
      ++v15;
      v4 = *v16;
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      v17 = sub_1D2878068();
      v18 = sub_1D2878068();
      v5 = sub_1D2878068();
      [v20 addBulletedListItemWithTitle:v17 description:v18 symbolName:v5];

      v16 += 6;
      if (v3 == v15)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_9:

  return v20;
}

id sub_1D2422B70()
{
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  v7 = *(v0 + 6);
  v1 = sub_1D2422780();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  return v2;
}

uint64_t sub_1D2422BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D24232E8();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D2422C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D24232E8();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D2422CA8()
{
  sub_1D24232E8();
  sub_1D2876218();
  __break(1u);
}

unint64_t sub_1D2422CE0()
{
  result = qword_1EC6DB428;
  if (!qword_1EC6DB428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB430);
    sub_1D2422D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB428);
  }

  return result;
}

unint64_t sub_1D2422D6C()
{
  result = qword_1EC6DB438;
  if (!qword_1EC6DB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB438);
  }

  return result;
}

uint64_t sub_1D2422DC4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1D2422DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2422E64(char a1)
{
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37[8] = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37[7] = v37 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v37[2] = v37 - v8;
  MEMORY[0x1EEE9AC00](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB448);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D28838F0;
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v11 = 0x1000000000000048;
  if (a1)
  {
    v11 = 0x1000000000000049;
  }

  v37[6] = v11;
  v12 = "ils in your description.";
  v13 = 0xD000000000000042;
  if (a1)
  {
    v13 = 0xD000000000000044;
  }

  else
  {
    v12 = "Add or Replace Details";
  }

  v37[4] = v13;
  v37[5] = v12;
  v14 = "ails in your description.";
  v15 = 0xD000000000000013;
  if ((a1 & 1) == 0)
  {
    v15 = 0xD00000000000001ALL;
  }

  v37[1] = v15;
  if ((a1 & 1) == 0)
  {
    v14 = "Try Different Combinations";
  }

  v37[3] = v14;
  v16 = qword_1ED8B0058;
  sub_1D28718C8();
  v17 = v16;
  v18 = sub_1D28780E8();
  v20 = v19;
  sub_1D2877FE8();
  sub_1D28718C8();
  v21 = sub_1D28780E8();
  *(v10 + 32) = v18;
  *(v10 + 40) = v20;
  *(v10 + 48) = v21;
  *(v10 + 56) = v22;
  *(v10 + 64) = 0xD000000000000017;
  *(v10 + 72) = 0x80000001D28B6360;
  sub_1D2877FE8();
  sub_1D28718C8();
  v23 = v17;
  v24 = sub_1D28780E8();
  v26 = v25;
  sub_1D2877FE8();
  sub_1D28718C8();
  v27 = v23;
  v28 = sub_1D28780E8();
  *(v10 + 80) = v24;
  *(v10 + 88) = v26;
  *(v10 + 96) = v28;
  *(v10 + 104) = v29;
  *(v10 + 112) = 0xD000000000000011;
  *(v10 + 120) = 0x80000001D28B63F0;
  sub_1D2877FE8();
  sub_1D28718C8();
  v30 = v27;
  v31 = sub_1D28780E8();
  v33 = v32;
  sub_1D2877FE8();
  sub_1D28718C8();
  v34 = sub_1D28780E8();
  *(v10 + 128) = v31;
  *(v10 + 136) = v33;
  *(v10 + 144) = v34;
  *(v10 + 152) = v35;
  *(v10 + 160) = 0x6C69636E6570;
  *(v10 + 168) = 0xE600000000000000;
  return v10;
}

unint64_t sub_1D24232E8()
{
  result = qword_1EC6DB450;
  if (!qword_1EC6DB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB450);
  }

  return result;
}

uint64_t sub_1D242333C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D2423384(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D24233E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2423428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D24234B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1D2423500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2423588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB460);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB468);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB470);
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v32 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB478);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v32 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB480);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = *(a1 + 104);
  if (v18)
  {
    v19 = *(a1 + 112);
    sub_1D2870F78();
    *v14 = sub_1D2875918();
    *(v14 + 1) = 0x4018000000000000;
    v14[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB488);
    sub_1D2423B04(a1, &v14[*(v20 + 44)]);
    sub_1D2877848();
    sub_1D2875208();
    sub_1D22EC9BC(v14, v5, &qword_1EC6DB480);
    v21 = &v5[*(v3 + 36)];
    v22 = v44;
    *(v21 + 4) = v43;
    *(v21 + 5) = v22;
    *(v21 + 6) = v45;
    v23 = v40;
    *v21 = v39;
    *(v21 + 1) = v23;
    v24 = v42;
    *(v21 + 2) = v41;
    *(v21 + 3) = v24;
    sub_1D22EC9BC(v5, v8, &qword_1EC6DB460);
    v8[*(v6 + 36)] = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = v18;
    *(v25 + 24) = v19;
    v26 = sub_1D2424D10();
    sub_1D2870F78();
    sub_1D2876908();

    sub_1D22BD238(v8, &qword_1EC6DB468);
    v27 = v32;
    v28 = v35;
    (*(v32 + 16))(v12, v10, v35);
    swift_storeEnumTagMultiPayload();
    v37 = v6;
    v38 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D0C0, &qword_1EC6DB480);
    sub_1D2875AF8();
    sub_1D22D7900(v18, v19);
    return (*(v27 + 8))(v10, v28);
  }

  else
  {
    *v17 = sub_1D2875918();
    *(v17 + 1) = 0x4018000000000000;
    v17[16] = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB488);
    sub_1D2423B04(a1, &v17[*(v30 + 44)]);
    sub_1D22BD1D0(v17, v12, &qword_1EC6DB480);
    swift_storeEnumTagMultiPayload();
    v31 = sub_1D2424D10();
    *&v39 = v6;
    *(&v39 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D0C0, &qword_1EC6DB480);
    sub_1D2875AF8();
    return sub_1D22BD238(v17, &qword_1EC6DB480);
  }
}

uint64_t sub_1D2423B04@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v148 = a2;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  v132 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v130 = v122 - v3;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB490);
  v133 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v131 = v122 - v4;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB498);
  v144 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v129 = v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v128 = v122 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB4A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v147 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v146 = v122 - v11;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB4A8);
  MEMORY[0x1EEE9AC00](v126);
  v127 = v122 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB4B0);
  v141 = *(v13 - 8);
  v142 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v125 = v122 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB4B8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v145 = v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v152 = v122 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB4C0);
  MEMORY[0x1EEE9AC00](v19);
  v140 = v122 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB4C8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v143 = v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v153 = v122 - v24;
  v25 = sub_1D28771B8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 72))
  {
    sub_1D2870F68();
    sub_1D28771F8();
    (*(v26 + 104))(v28, *MEMORY[0x1E6981630], v25);
    v29 = sub_1D2877228();

    (*(v26 + 8))(v28, v25);
    sub_1D2877848();
    sub_1D28748C8();
    LOBYTE(v171) = 1;
    *&v154[6] = v168;
    *&v154[22] = v169;
    *&v154[38] = v170;
    sub_1D2739754(1, 1, &v160);
    *&v157[2] = *v154;
    *&v157[18] = *&v154[16];
    *&v157[34] = *&v154[32];
    *&v157[56] = v160;
    *&v157[72] = v161;
    *&v157[88] = v162;
    *(v159 + 2) = *v154;
    *(&v159[1] + 2) = *&v154[16];
    *(&v159[2] + 2) = *&v154[32];
    *(&v159[3] + 8) = v160;
    *(&v159[5] + 8) = v162;
    v156 = v29;
    *v157 = 1;
    *&v157[48] = *&v154[46];
    *&v157[104] = v163;
    v158 = v29;
    LOWORD(v159[0]) = 1;
    *&v159[3] = *&v154[46];
    *(&v159[6] + 1) = v163;
    *(&v159[4] + 8) = v161;
    sub_1D22BD1D0(&v156, &v173, &qword_1EC6DB500);
    sub_1D22BD238(&v158, &qword_1EC6DB500);
    v164 = *&v157[48];
    v165 = *&v157[64];
    v166 = *&v157[80];
    v167 = *&v157[96];
    v160 = v156;
    v161 = *v157;
    v162 = *&v157[16];
    v163 = *&v157[32];
    CGRectMake(*&v157[16], *&v157[32]);
    v177 = v164;
    v178 = v165;
    v179 = v166;
    v180 = v167;
    v173 = v160;
    v174 = v161;
    v175 = v162;
    v176 = v163;
  }

  else
  {
    sub_1D2424E80(&v173);
  }

  v30 = *a1;
  v31 = *(a1 + 8);
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  v34 = qword_1ED89E0E8;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v150 = a1;
  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_1ED8B0058;
  v149 = qword_1ED8B0058;
  v121 = 256;
  v120 = 0;
  v122[1] = v35;
  v36 = sub_1D2876668();
  LODWORD(v139) = v32;
  v37 = v36;
  v137 = v33;
  v138 = v31;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  KeyPath = swift_getKeyPath();
  v136 = v30;
  v45 = KeyPath;
  v46 = v140;
  v47 = &v140[*(v19 + 36)];
  *v47 = swift_getKeyPath();
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  swift_storeEnumTagMultiPayload();
  v123 = type metadata accessor for OnboardingTextViewModifier();
  *(v47 + *(v123 + 20)) = 0x3FE6666666666666;
  *v46 = v37;
  *(v46 + 8) = v39;
  *(v46 + 16) = v41 & 1;
  *(v46 + 24) = v43;
  *(v46 + 32) = v45;
  *(v46 + 40) = 2;
  *(v46 + 48) = 0;
  v121 = 256;
  v120 = 0;
  v48 = sub_1D2876668();
  v50 = v49;
  LOBYTE(v39) = v51;
  sub_1D2424E98();
  sub_1D2876A98();
  sub_1D22ED6E0(v48, v50, v39 & 1);

  sub_1D22BD238(v46, &qword_1EC6DB4C0);
  v52 = v150;
  v53 = *(v150 + 48);
  v171 = *(v150 + 32);
  v172 = v53;
  if (*(&v171 + 1))
  {
    v139 = v171;
    v140 = *(&v172 + 1);
    LODWORD(v138) = v172;
    v54 = v149;
    sub_1D22BD1D0(&v171, &v160, &qword_1EC6DB4E0);
    sub_1D2870F68();
    sub_1D2870F68();
    v121 = 256;
    v120 = 0;
    v55 = sub_1D2876668();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = swift_getKeyPath();
    v63 = sub_1D28764C8();
    v64 = swift_getKeyPath();
    LOBYTE(v156) = v59 & 1;
    v155 = 0;
    *&v158 = v55;
    *(&v158 + 1) = v57;
    LOBYTE(v159[0]) = v59 & 1;
    *(&v159[0] + 1) = v61;
    *&v159[1] = v62;
    *(&v159[1] + 1) = 2;
    LOBYTE(v159[2]) = 0;
    *(&v159[2] + 1) = v64;
    *&v159[3] = v63;
    sub_1D2876428();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB4E8);
    sub_1D2425018();
    v65 = v127;
    sub_1D2876758();
    v162 = v159[1];
    v163 = v159[2];
    *&v164 = *&v159[3];
    v160 = v158;
    v161 = v159[0];
    sub_1D22BD238(&v160, &qword_1EC6DB4E8);
    v66 = (v65 + *(v126 + 36));
    *v66 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v66 + *(v123 + 20)) = 0x3FE6666666666666;
    v121 = 256;
    v120 = 0;
    v67 = sub_1D2876668();
    v69 = v68;
    v71 = v70;
    sub_1D24250D0();
    v72 = v125;
    v52 = v150;
    sub_1D2876A98();
    sub_1D22ED6E0(v67, v69, v71 & 1);

    sub_1D22BD238(v65, &qword_1EC6DB4A8);
    v73 = v152;
    sub_1D22EC9BC(v72, v152, &qword_1EC6DB4B0);
    (*(v141 + 56))(v73, 0, 1, v142);
  }

  else
  {
    (*(v141 + 56))(v152, 1, 1, v142);
  }

  v74 = v151;
  v75 = *(v52 + 88);
  if (v75)
  {
    v76 = *(v52 + 80);
    v150 = sub_1D2870F78();
    v77 = sub_1D2875798();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v84 = swift_allocObject();
    *(v84 + 16) = v76;
    v142 = v76;
    v85 = v150;
    *(v84 + 24) = v75;
    *(v84 + 32) = v85;
    MEMORY[0x1EEE9AC00](v84);
    v141 = v75;
    v122[-6] = v77;
    v122[-5] = v79;
    LOBYTE(v122[-4]) = v81 & 1;
    v86 = v149;
    v122[-3] = v83;
    v120 = v86;
    sub_1D2424FA4(v76, v75);
    sub_1D2870F78();
    v87 = v130;
    sub_1D2877368();

    sub_1D28770A8();
    v88 = sub_1D28770C8();

    *&v160 = v88;
    *&v160 = sub_1D28748D8();
    sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
    sub_1D2424FB4();
    v89 = v131;
    v90 = v134;
    sub_1D28767B8();

    (*(v132 + 8))(v87, v90);
    LOBYTE(v79) = sub_1D2876348();
    sub_1D2874298();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    sub_1D2425008(v142, v141);
    v99 = v129;
    (*(v133 + 32))(v129, v89, v135);
    v74 = v151;
    v100 = &v99[*(v151 + 36)];
    *v100 = v79;
    *(v100 + 1) = v92;
    *(v100 + 2) = v94;
    *(v100 + 3) = v96;
    *(v100 + 4) = v98;
    v100[40] = 0;
    v101 = v99;
    v102 = v128;
    sub_1D22EC9BC(v101, v128, &qword_1EC6DB498);
    v103 = v102;
    v104 = v146;
    sub_1D22EC9BC(v103, v146, &qword_1EC6DB498);
    v105 = 0;
  }

  else
  {
    v105 = 1;
    v104 = v146;
  }

  (*(v144 + 56))(v104, v105, 1, v74);
  *&v157[48] = v177;
  *&v157[64] = v178;
  *&v157[80] = v179;
  *&v157[96] = v180;
  v156 = v173;
  *v157 = v174;
  *&v157[16] = v175;
  *&v157[32] = v176;
  v106 = v143;
  sub_1D22BD1D0(v153, v143, &qword_1EC6DB4C8);
  v107 = v152;
  v108 = v145;
  sub_1D22BD1D0(v152, v145, &qword_1EC6DB4B8);
  v109 = v147;
  sub_1D22BD1D0(v104, v147, &qword_1EC6DB4A0);
  v110 = *&v157[48];
  v111 = *&v157[64];
  v159[3] = *&v157[48];
  v159[4] = *&v157[64];
  v112 = *&v157[96];
  v159[5] = *&v157[80];
  v159[6] = *&v157[96];
  v113 = v156;
  v114 = *v157;
  v158 = v156;
  v159[0] = *v157;
  v115 = *&v157[16];
  v116 = *&v157[32];
  v159[1] = *&v157[16];
  v159[2] = *&v157[32];
  v117 = v148;
  v148[6] = *&v157[80];
  v117[7] = v112;
  v117[4] = v110;
  v117[5] = v111;
  v117[2] = v115;
  v117[3] = v116;
  *v117 = v113;
  v117[1] = v114;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB4D0);
  sub_1D22BD1D0(v106, v117 + v118[12], &qword_1EC6DB4C8);
  sub_1D22BD1D0(v108, v117 + v118[16], &qword_1EC6DB4B8);
  sub_1D22BD1D0(v109, v117 + v118[20], &qword_1EC6DB4A0);
  sub_1D22BD1D0(&v158, &v160, &qword_1EC6DB4D8);
  sub_1D22BD238(v104, &qword_1EC6DB4A0);
  sub_1D22BD238(v107, &qword_1EC6DB4B8);
  sub_1D22BD238(v153, &qword_1EC6DB4C8);
  sub_1D22BD238(v109, &qword_1EC6DB4A0);
  sub_1D22BD238(v108, &qword_1EC6DB4B8);
  sub_1D22BD238(v106, &qword_1EC6DB4C8);
  v164 = *&v157[48];
  v165 = *&v157[64];
  v166 = *&v157[80];
  v167 = *&v157[96];
  v160 = v156;
  v161 = *v157;
  v162 = *&v157[16];
  v163 = *&v157[32];
  return sub_1D22BD238(&v160, &qword_1EC6DB4D8);
}

double sub_1D2424C60@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v11[4] = *(v1 + 64);
  v11[5] = v3;
  v11[6] = *(v1 + 96);
  v12 = *(v1 + 112);
  v4 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v4;
  v5 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v5;
  sub_1D2423588(v11, a1);
  sub_1D2877848();
  sub_1D28748C8();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB458) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

unint64_t sub_1D2424D10()
{
  result = qword_1ED89D990;
  if (!qword_1ED89D990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB468);
    sub_1D2424DC8();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D990);
  }

  return result;
}

unint64_t sub_1D2424DC8()
{
  result = qword_1ED89DB70;
  if (!qword_1ED89DB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB460);
    sub_1D22BB9D8(&qword_1ED89D0C0, &qword_1EC6DB480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB70);
  }

  return result;
}

double sub_1D2424E80(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_1D2424E98()
{
  result = qword_1ED89DA78;
  if (!qword_1ED89DA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB4C0);
    sub_1D234251C();
    sub_1D2424F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA78);
  }

  return result;
}

unint64_t sub_1D2424F24()
{
  result = qword_1ED89F850;
  if (!qword_1ED89F850)
  {
    type metadata accessor for OnboardingTextViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F850);
  }

  return result;
}

uint64_t sub_1D2424FA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return sub_1D2870F78();
  }

  return result;
}

unint64_t sub_1D2424FB4()
{
  result = qword_1EC6D8468;
  if (!qword_1EC6D8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8468);
  }

  return result;
}

uint64_t sub_1D2425008(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1D2425018()
{
  result = qword_1EC6DB4F0;
  if (!qword_1EC6DB4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB4E8);
    sub_1D234251C();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB4F0);
  }

  return result;
}

unint64_t sub_1D24250D0()
{
  result = qword_1EC6DB4F8;
  if (!qword_1EC6DB4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB4A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB4E8);
    sub_1D2425018();
    swift_getOpaqueTypeConformance2();
    sub_1D2424F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB4F8);
  }

  return result;
}

uint64_t sub_1D2425198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D24251E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1D2425230()
{
  result = qword_1ED89DC08;
  if (!qword_1ED89DC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB458);
    sub_1D24252BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC08);
  }

  return result;
}

unint64_t sub_1D24252BC()
{
  result = qword_1ED89D230;
  if (!qword_1ED89D230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB508);
    sub_1D2425340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D230);
  }

  return result;
}

unint64_t sub_1D2425340()
{
  result = qword_1ED89D590;
  if (!qword_1ED89D590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB468);
    sub_1D2424D10();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D0C0, &qword_1EC6DB480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D590);
  }

  return result;
}

unint64_t sub_1D2425448()
{
  result = qword_1EC6DB518;
  if (!qword_1EC6DB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB518);
  }

  return result;
}

void sub_1D24254A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v9 = sub_1D2878A58();
  v10 = sub_1D2878068();
  v11 = [v9 BOOLForKey_];

  if (v11)
  {
    sub_1D2878578();
    v12 = sub_1D28785F8();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v3;
    v13[5] = a1;
    v13[6] = a2;
    sub_1D2870F68();
    sub_1D2870F68();
    sub_1D26D0050(0, 0, v8, &unk_1D28883D0, v13);

    sub_1D22BD238(v8, &qword_1EC6D8E60);
  }
}

uint64_t TapToRadarManager.__allocating_init(servicesFetcher:)()
{

  return swift_allocObject();
}

uint64_t sub_1D24256D0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2425710@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
  return sub_1D2870F68();
}

uint64_t sub_1D2425720()
{
}

uint64_t sub_1D242576C()
{

  sub_1D2870F78();

  return swift_deallocClassInstance();
}

double sub_1D24257F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D2885990;
  type metadata accessor for TapToRadarManager.LogReason();
  v1 = swift_allocObject();
  *(v1 + 48) = 0xD000000000000019;
  *(v1 + 56) = 0x80000001D28B6A30;
  *(v1 + 64) = 7105633;
  *(v1 + 72) = 0xE300000000000000;
  *(v1 + 80) = 0xD00000000000003FLL;
  *(v1 + 88) = 0x80000001D28B6A50;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 16) = 0xD00000000000002DLL;
  *(v1 + 24) = 0x80000001D28B6A00;
  *(v1 + 32) = xmmword_1D2888210;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 48) = 0xD000000000000010;
  *(v2 + 56) = 0x80000001D28AFBF0;
  *(v2 + 64) = 5459817;
  *(v2 + 72) = 0xE300000000000000;
  *(v2 + 80) = xmmword_1D2888220;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 16) = 0xD000000000000018;
  *(v2 + 24) = 0x80000001D28B6950;
  result = 0.0;
  *(v2 + 32) = xmmword_1D2888230;
  *(v0 + 40) = v2;
  qword_1EC6E3CB0 = v0;
  return result;
}

double sub_1D2425954()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D2888240;
  type metadata accessor for TapToRadarManager.LogReason();
  v1 = swift_allocObject();
  *(v1 + 48) = 0xD00000000000001BLL;
  *(v1 + 56) = 0x80000001D28B67A0;
  *(v1 + 64) = 7105633;
  *(v1 + 72) = 0xE300000000000000;
  *(v1 + 80) = 0xD000000000000012;
  *(v1 + 88) = 0x80000001D28B6880;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 16) = 0xD000000000000019;
  *(v1 + 24) = 0x80000001D28B6860;
  *(v1 + 32) = xmmword_1D2888250;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 48) = 0xD000000000000018;
  *(v2 + 56) = 0x80000001D28B68C0;
  *(v2 + 64) = 7105601;
  *(v2 + 72) = 0xE300000000000000;
  *(v2 + 80) = 0xD000000000000022;
  *(v2 + 88) = 0x80000001D28B68E0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 16) = 0xD00000000000001CLL;
  *(v2 + 24) = 0x80000001D28B68A0;
  *(v2 + 32) = xmmword_1D2888260;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0xD000000000000010;
  *(v3 + 56) = 0x80000001D28AFBF0;
  *(v3 + 64) = 5459817;
  *(v3 + 72) = 0xE300000000000000;
  *(v3 + 80) = 0xD00000000000001ELL;
  *(v3 + 88) = 0x80000001D28B6930;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 16) = 0xD00000000000001CLL;
  *(v3 + 24) = 0x80000001D28B6910;
  *(v3 + 32) = xmmword_1D2888230;
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 48) = 0xD000000000000010;
  *(v4 + 56) = 0x80000001D28AFBF0;
  *(v4 + 64) = 5459817;
  *(v4 + 72) = 0xE300000000000000;
  *(v4 + 80) = xmmword_1D2888220;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 16) = 0xD000000000000018;
  *(v4 + 24) = 0x80000001D28B6950;
  *(v4 + 32) = xmmword_1D2888230;
  *(v0 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 1280133459;
  *(v5 + 56) = 0xE400000000000000;
  *(v5 + 64) = 0x4120797465666153;
  *(v5 + 72) = 0xE900000000000049;
  *(v5 + 80) = 0xD00000000000002FLL;
  *(v5 + 88) = 0x80000001D28B69A0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 16) = 0xD000000000000026;
  *(v5 + 24) = 0x80000001D28B6970;
  result = 0.0;
  *(v5 + 32) = xmmword_1D2888270;
  *(v0 + 64) = v5;
  qword_1EC6E3CB8 = v0;
  return result;
}

double sub_1D2425C10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D2885990;
  type metadata accessor for TapToRadarManager.LogReason();
  v1 = swift_allocObject();
  *(v1 + 48) = 0xD00000000000001BLL;
  *(v1 + 56) = 0x80000001D28B67A0;
  *(v1 + 64) = 7105633;
  *(v1 + 72) = 0xE300000000000000;
  *(v1 + 80) = 0xD000000000000041;
  *(v1 + 88) = 0x80000001D28B67C0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 16) = 0xD000000000000030;
  *(v1 + 24) = 0x80000001D28B6760;
  *(v1 + 32) = xmmword_1D2888250;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 48) = 0xD000000000000010;
  *(v2 + 56) = 0x80000001D28AFBF0;
  *(v2 + 64) = 5459817;
  *(v2 + 72) = 0xE300000000000000;
  *(v2 + 80) = 0xD000000000000028;
  *(v2 + 88) = 0x80000001D28B6830;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 16) = 0xD000000000000017;
  *(v2 + 24) = 0x80000001D28B6810;
  result = 0.0;
  *(v2 + 32) = xmmword_1D2888230;
  *(v0 + 40) = v2;
  qword_1EC6E3CC0 = v0;
  return result;
}

double sub_1D2425D7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D2888280;
  type metadata accessor for TapToRadarManager.LogReason();
  v1 = swift_allocObject();
  *(v1 + 48) = 0xD000000000000020;
  *(v1 + 56) = 0x80000001D28B6AB0;
  *(v1 + 64) = 0xD000000000000019;
  *(v1 + 72) = 0x80000001D28B6AE0;
  *(v1 + 80) = 0xD00000000000002ELL;
  *(v1 + 88) = 0x80000001D28B6B00;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 16) = 0xD00000000000001CLL;
  *(v1 + 24) = 0x80000001D28B6A90;
  *(v1 + 32) = xmmword_1D2888290;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 48) = 0xD000000000000020;
  *(v2 + 56) = 0x80000001D28B6AB0;
  *(v2 + 64) = 0xD00000000000001ELL;
  *(v2 + 72) = 0x80000001D28B6B50;
  *(v2 + 80) = 0xD000000000000023;
  *(v2 + 88) = 0x80000001D28B6B70;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 16) = 0xD00000000000001ELL;
  *(v2 + 24) = 0x80000001D28B6B30;
  *(v2 + 32) = xmmword_1D28882A0;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0xD000000000000020;
  *(v3 + 56) = 0x80000001D28B6AB0;
  *(v3 + 64) = 0xD00000000000001ALL;
  *(v3 + 72) = 0x80000001D28B6BD0;
  *(v3 + 80) = 0xD000000000000018;
  *(v3 + 88) = 0x80000001D28B6BF0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 16) = 0xD000000000000021;
  *(v3 + 24) = 0x80000001D28B6BA0;
  *(v3 + 32) = xmmword_1D28882B0;
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 48) = 0xD000000000000020;
  *(v4 + 56) = 0x80000001D28B6AB0;
  *(v4 + 64) = 0x7567656C62627542;
  *(v4 + 72) = 0xEF656C797453206DLL;
  *(v4 + 80) = xmmword_1D28882C0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 16) = 0x736920656C797453;
  *(v4 + 24) = 0xEB00000000657573;
  *(v4 + 32) = xmmword_1D28882D0;
  *(v0 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0xD000000000000020;
  *(v5 + 56) = 0x80000001D28B6AB0;
  *(v5 + 64) = 0xD000000000000018;
  *(v5 + 72) = 0x80000001D28B6C30;
  *(v5 + 80) = 0xD000000000000028;
  *(v5 + 88) = 0x80000001D28B6C50;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 16) = 0xD000000000000017;
  *(v5 + 24) = 0x80000001D28B6C10;
  *(v5 + 32) = xmmword_1D28882E0;
  *(v0 + 64) = v5;
  v6 = swift_allocObject();
  *(v6 + 48) = 1280133459;
  *(v6 + 56) = 0xE400000000000000;
  *(v6 + 64) = 0x4120797465666153;
  *(v6 + 72) = 0xE900000000000049;
  *(v6 + 80) = 0xD00000000000002FLL;
  *(v6 + 88) = 0x80000001D28B69A0;
  *(v6 + 96) = 0;
  *(v6 + 104) = 0;
  *(v6 + 16) = 0xD000000000000026;
  *(v6 + 24) = 0x80000001D28B6970;
  result = 0.0;
  *(v6 + 32) = xmmword_1D2888270;
  *(v0 + 72) = v6;
  qword_1EC6E3CC8 = v0;
  return result;
}

uint64_t sub_1D24260B4()
{
  v0 = sub_1D28716B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_1EC6DB520);
  __swift_project_value_buffer(v0, qword_1EC6DB520);
  v5 = NSTemporaryDirectory();
  sub_1D28780A8();

  sub_1D2871578();

  sub_1D28715E8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D2426200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2872278();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2872428();
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_1D2872438();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v18 = v17;
  v20 = v19;
  sub_1D22BD1D0(v16, v12, &unk_1EC6DDE30);
  if ((*(v18 + 48))(v12, 1, v20) == 1)
  {
    sub_1D22BD238(v12, &unk_1EC6DDE30);
    v21 = 1;
LABEL_10:
    v30 = sub_1D2872008();
    return (*(*(v30 - 8) + 56))(a2, v21, 1, v30);
  }

  v32 = v8;
  v35 = v20;
  v36 = a2;
  v34 = v18;
  (*(v18 + 32))(v15, v12, v20);
  v33 = v15;
  result = sub_1D28722E8();
  v23 = result;
  v24 = *(result + 16);
  if (!v24)
  {
LABEL_8:

    (*(v34 + 8))(v33, v35);
    v21 = 1;
    a2 = v36;
    goto LABEL_10;
  }

  v25 = 0;
  v26 = *MEMORY[0x1E696E458];
  while (v25 < *(v23 + 16))
  {
    (*(v5 + 16))(v7, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, v4);
    if ((*(v5 + 88))(v7, v4) == v26)
    {

      (*(v5 + 96))(v7, v4);
      v27 = v37;
      v28 = v38;
      v29 = v32;
      (*(v38 + 32))(v37, v7, v32);
      sub_1D2872418();
      a2 = v36;
      sub_1D2871EA8();
      (*(v28 + 8))(v27, v29);
      (*(v34 + 8))(v33, v35);
      v21 = 0;
      goto LABEL_10;
    }

    ++v25;
    result = (*(v5 + 8))(v7, v4);
    if (v24 == v25)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

id sub_1D242664C(uint64_t a1, uint64_t a2)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D28716B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  v11 = sub_1D2873CB8();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v14 = sub_1D28715B8();
  v15 = sub_1D28715B8();
  v49[0] = 0;
  v16 = [v13 copyItemAtURL:v14 toURL:v15 error:v49];

  v17 = v49[0];
  if (v16)
  {

    return v17;
  }

  else
  {
    v45 = v49[0];
    v19 = v49[0];
    v20 = sub_1D28714B8();

    swift_willThrow();
    sub_1D28726D8();
    v21 = *(v5 + 16);
    v21(v10, a1, v4);
    v21(v7, a2, v4);
    v22 = v20;
    v23 = sub_1D2873CA8();
    v24 = sub_1D2878A18();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49[0] = v45;
      *v25 = 136315650;
      sub_1D242F8E0(&qword_1EC6DA1D8, MEMORY[0x1E6968FB0]);
      v43 = v23;
      v42 = v24;
      v26 = sub_1D28795C8();
      v28 = v27;
      v29 = *(v5 + 8);
      v29(v10, v4);
      v30 = sub_1D23D7C84(v26, v28, v49);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = sub_1D28795C8();
      v33 = v32;
      v29(v7, v4);
      v34 = sub_1D23D7C84(v31, v33, v49);

      *(v25 + 14) = v34;
      *(v25 + 22) = 2112;
      v35 = v20;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v36;
      v38 = v43;
      v37 = v44;
      *v44 = v36;
      _os_log_impl(&dword_1D226E000, v38, v42, "Could not copy %s to %s: %@", v25, 0x20u);
      sub_1D22BD238(v37, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v37, -1, -1);
      v39 = v45;
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v39, -1, -1);
      MEMORY[0x1D38A3520](v25, -1, -1);
    }

    else
    {

      v40 = *(v5 + 8);
      v40(v7, v4);
      v40(v10, v4);
    }

    return (*(v46 + 8))(v48, v47);
  }
}

uint64_t sub_1D2426B58(uint64_t a1)
{
  v2 = sub_1D28716B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1D2871638();
  v6(v5);
  return (*(v3 + 8))(v5, v2);
}

id sub_1D2426C3C(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D28715B8();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1D28716B8();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1D28714B8();

    swift_willThrow();
    v9 = sub_1D28716B8();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

id sub_1D2426D94(void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [a1 closeAndReturnError_];
  v2 = v5[0];
  if (v1)
  {

    return v2;
  }

  else
  {
    v4 = v5[0];
    sub_1D28714B8();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2426E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v7 = sub_1D2873AA8();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for PlaygroundImage();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0) - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB548);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_1D28710C8();
  v6[24] = swift_task_alloc();
  v9 = sub_1D2873CB8();
  v6[25] = v9;
  v6[26] = *(v9 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v10 = sub_1D2871538();
  v6[31] = v10;
  v6[32] = *(v10 - 8);
  v6[33] = swift_task_alloc();
  v11 = sub_1D28716B8();
  v6[34] = v11;
  v6[35] = *(v11 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2427208, 0, 0);
}

uint64_t sub_1D2427208()
{
  v107 = v0;
  v106 = *MEMORY[0x1E69E9840];
  v85 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  if (qword_1EC6D8C58 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    __swift_project_value_buffer(v0[34], qword_1EC6DB520);
    sub_1D2871708();
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    if (v1 <= -9.22337204e18)
    {
      goto LABEL_39;
    }

    if (v1 >= 9.22337204e18)
    {
      goto LABEL_40;
    }

    v3 = v0[32];
    v2 = v0[33];
    v4 = v0[31];
    v0[8] = v1;
    v0[2] = sub_1D28795C8();
    v0[3] = v5;
    v91 = *MEMORY[0x1E6968F70];
    v90 = *(v3 + 104);
    v90(v2);
    sub_1D22BD06C();
    sub_1D28716A8();
    v6 = v4;
    v7 = v0;
    v89 = *(v3 + 8);
    v89(v2, v6);

    sub_1D2871668();
    v8 = sub_1D2878068();

    v9 = [v85 fileExistsAtPath_];

    v103 = v0;
    if ((v9 & 1) == 0)
    {
      sub_1D2871668();
      v10 = sub_1D2878068();

      v0[9] = 0;
      v11 = [v85 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:v0 + 9];

      v12 = v0[9];
      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v14 = v0[42];
        v15 = v0[37];
        v16 = v0[34];
        v17 = v0[35];
        v18 = v12;
        v19 = sub_1D28714B8();

        swift_willThrow();
        sub_1D28726D8();
        (*(v17 + 16))(v15, v14, v16);
        v20 = v19;
        v7 = v0;
        v21 = sub_1D2873CA8();
        v22 = sub_1D2878A18();

        v23 = os_log_type_enabled(v21, v22);
        v24 = v0[37];
        v25 = v0[34];
        v26 = v0[35];
        v27 = v0[28];
        v29 = v103[25];
        v28 = v103[26];
        if (v23)
        {
          v101 = v103[25];
          v30 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v104 = v97;
          *v30 = 136315394;
          sub_1D242F8E0(&qword_1EC6DA1D8, MEMORY[0x1E6968FB0]);
          v31 = sub_1D28795C8();
          v99 = v27;
          v32 = v22;
          v34 = v33;
          (*(v26 + 8))(v24, v25);
          v35 = sub_1D23D7C84(v31, v34, &v104);

          *(v30 + 4) = v35;
          *(v30 + 12) = 2112;
          v36 = v19;
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 14) = v37;
          *v95 = v37;
          _os_log_impl(&dword_1D226E000, v21, v32, "Could not create directory %s: %@", v30, 0x16u);
          sub_1D22BD238(v95, qword_1EC6DA930);
          MEMORY[0x1D38A3520](v95, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v97);
          MEMORY[0x1D38A3520](v97, -1, -1);
          v7 = v103;
          MEMORY[0x1D38A3520](v30, -1, -1);

          (*(v28 + 8))(v99, v101);
        }

        else
        {

          (*(v26 + 8))(v24, v25);
          (*(v28 + 8))(v27, v29);
        }
      }
    }

    sub_1D242FA50(v7[42]);
    v38 = v7[11];
    if (*(v38 + 16))
    {
      v39 = v7;
      v40 = v7[33];
      v41 = v39[31];
      sub_1D2871108();
      swift_allocObject();
      sub_1D28710F8();
      sub_1D28710B8();
      sub_1D28710D8();
      strcpy(v103 + 32, "metadata.json");
      *(v103 + 23) = -4864;
      (v90)(v40, v91, v41);
      sub_1D28716A8();
      v42 = v40;
      v7 = v103;
      v89(v42, v41);
      v103[10] = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
      sub_1D242F7B4();
      v43 = sub_1D28710E8();
      v45 = v44;
      sub_1D28716F8();
      (*(v7[35] + 8))(v7[40], v7[34]);
      sub_1D22D6D60(v43, v45);
    }

    v100 = v7[23];
    v96 = v7[22];
    v94 = v7[19];
    v46 = v7[12];
    v87 = v46 + 64;
    v47 = -1;
    v48 = -1 << *(v46 + 32);
    if (-v48 < 64)
    {
      v47 = ~(-1 << -v48);
    }

    v49 = v47 & *(v46 + 64);
    v86 = (63 - v48) >> 6;
    v98 = (v7[17] + 48);
    v88 = (v7[14] + 8);
    v92 = (v7[35] + 8);
    v93 = v7[12];
    sub_1D2870F68();
    v50 = 0;
    v0 = v7;
    if (v49)
    {
      break;
    }

LABEL_19:
    if (v86 <= v50 + 1)
    {
      v53 = v50 + 1;
    }

    else
    {
      v53 = v86;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v52 >= v86)
      {
        v64 = v0;
        v79 = v0[22];
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB550);
        (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
        v49 = 0;
        goto LABEL_27;
      }

      v49 = *(v87 + 8 * v52);
      ++v50;
      if (v49)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  while (1)
  {
    v52 = v50;
LABEL_26:
    v55 = v0[21];
    v56 = v0[22];
    v57 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v58 = v57 | (v52 << 6);
    v59 = (*(v93 + 48) + 16 * v58);
    v61 = *v59;
    v60 = v59[1];
    sub_1D22BD1D0(*(v93 + 56) + *(v94 + 72) * v58, v55, &unk_1EC6DE5A0);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB550);
    v63 = *(v62 + 48);
    *v56 = v61;
    *(v96 + 8) = v60;
    sub_1D22EC9BC(v55, v56 + v63, &unk_1EC6DE5A0);
    (*(*(v62 - 8) + 56))(v56, 0, 1, v62);
    sub_1D2870F68();
    v54 = v52;
    v64 = v0;
LABEL_27:
    v65 = v64[23];
    sub_1D22EC9BC(v64[22], v65, &qword_1EC6DB548);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB550);
    if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
    {
      break;
    }

    v102 = v54;
    v67 = v64[23];
    v68 = v64[20];
    v69 = v64[16];
    v70 = *v67;
    v71 = *(v100 + 8);
    sub_1D22EC9BC(v67 + *(v66 + 48), v68, &unk_1EC6DE5A0);
    if ((*v98)(v68, 1, v69) == 1)
    {
      v51 = v64[20];

      sub_1D22BD238(v51, &unk_1EC6DE5A0);
      v50 = v102;
      v0 = v64;
      if (!v49)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v72 = v64[39];
      v73 = v64[33];
      v74 = v64;
      v75 = v64[31];
      v76 = v103[15];
      sub_1D23EEBD4(v74[20], v74[18]);
      v104 = v70;
      v105 = v71;
      MEMORY[0x1D38A0C50](1735420462, 0xE400000000000000);
      v77 = v105;
      v103[6] = v104;
      v103[7] = v77;
      (v90)(v73, v91, v75);
      sub_1D28716A8();
      v89(v73, v75);

      sub_1D2873A38();
      sub_1D262ECCC(v72, v76);
      v78 = v103[39];
      v81 = v103[34];
      v82 = v103[18];
      (*v88)(v103[15], v103[13]);
      (*v92)(v78, v81);
      sub_1D242F928(v82, type metadata accessor for PlaygroundImage);
      v50 = v102;
      v0 = v103;
      if (!v49)
      {
        goto LABEL_19;
      }
    }
  }

  (*v92)(v64[42], v103[34]);

  v83 = v103[1];

  return v83();
}
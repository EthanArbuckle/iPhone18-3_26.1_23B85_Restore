uint64_t sub_1D60834C8()
{
  *(*v1 + 776) = v0;

  if (v0)
  {

    v2 = sub_1D6083D48;
  }

  else
  {
    v2 = sub_1D608360C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D608360C()
{
  v1 = v0[57];
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D69987C8(0, v2, 0);
    v3 = v13;
    v4 = *(v13 + 16);
    v5 = 32;
    do
    {
      v6 = *(v1 + v5);
      v7 = *(v13 + 24);

      if (v4 >= v7 >> 1)
      {
        sub_1D69987C8((v7 > 1), v4 + 1, 1);
      }

      *(v13 + 16) = v4 + 1;
      *(v13 + 8 * v4 + 32) = v6;
      v5 += 24;
      ++v4;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[92];
  sub_1D6084B00(0);
  v9 = sub_1D6081500(v8, v3);

  v0[60] = v9;
  v10 = sub_1D725B92C();
  sub_1D60847D0(0, &qword_1EC883118, sub_1D6084B00, MEMORY[0x1E69E62F8]);
  sub_1D6084B94();
  v0[98] = sub_1D725BA3C();

  v11 = swift_task_alloc();
  v0[99] = v11;
  *v11 = v0;
  v11[1] = sub_1D6083824;

  return MEMORY[0x1EEE44EE0](v0 + 56);
}

uint64_t sub_1D6083824()
{
  *(*v1 + 800) = v0;

  if (v0)
  {
    v2 = sub_1D6083F84;
  }

  else
  {

    v2 = sub_1D6083940;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6083940()
{
  v35 = v0;
  result = *(v0 + 448);
  v32 = *(result + 16);
  if (v32)
  {
    v2 = 0;
    v3 = result + 32;
    v30 = (*(v0 + 504) + 8);
    v4 = MEMORY[0x1E69E7CC8];
    v31 = *(v0 + 448);
    while (v2 < *(result + 16))
    {
      v5 = *(v0 + 512);
      v6 = *(v0 + 496);
      v7 = *(v3 + 16);
      *(v0 + 16) = *v3;
      *(v0 + 32) = v7;
      v9 = *(v3 + 48);
      v8 = *(v3 + 64);
      v10 = *(v3 + 32);
      *(v0 + 96) = *(v3 + 80);
      *(v0 + 64) = v9;
      *(v0 + 80) = v8;
      *(v0 + 48) = v10;
      ++v2;
      v33 = 0;
      v34 = 0xE000000000000000;
      if (*(v0 + 16))
      {
        v11 = 0x2D666F2D74736562;
      }

      else
      {
        v11 = 0x756F792D726F66;
      }

      if (*(v0 + 16))
      {
        v12 = 0xEE00656C646E7562;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      sub_1D5BE3FA8(v0 + 16, v0 + 104, sub_1D6084B34);
      MEMORY[0x1DA6F9910](v11, v12);

      MEMORY[0x1DA6F9910](45, 0xE100000000000000);
      sub_1D725894C();
      v13 = sub_1D725893C();
      v15 = v14;
      (*v30)(v5, v6);
      MEMORY[0x1DA6F9910](v13, v15);

      v17 = v33;
      v16 = v34;
      *(v0 + 376) = &type metadata for DebugInspection;
      *(v0 + 384) = sub_1D6084C1C();
      v18 = swift_allocObject();
      *(v0 + 352) = v18;
      v19 = *(v0 + 40);
      v20 = *(v0 + 72);
      v18[3] = *(v0 + 56);
      v18[4] = v20;
      v18[5] = *(v0 + 88);
      v18[1] = *(v0 + 24);
      v18[2] = v19;
      sub_1D5B63F14((v0 + 352), v0 + 392);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v4;
      v22 = *(v0 + 416);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 392, v22);
      v24 = *(v22 - 8);
      v25 = swift_task_alloc();
      (*(v24 + 16))(v25, v23, v22);
      *(v0 + 192) = *v25;
      v26 = v25[4];
      v28 = v25[1];
      v27 = v25[2];
      *(v0 + 240) = v25[3];
      *(v0 + 256) = v26;
      *(v0 + 208) = v28;
      *(v0 + 224) = v27;
      sub_1D6084C70((v0 + 192), v17, v16, isUniquelyReferenced_nonNull_native, &v33);
      __swift_destroy_boxed_opaque_existential_1(v0 + 392);

      result = v31;
      v4 = v33;
      v3 += 88;
      if (v32 == v2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
LABEL_13:

    v29 = *(v0 + 8);

    return v29(v4);
  }

  return result;
}

uint64_t sub_1D6083D48()
{
  v1 = v0[97];
  sub_1D7262EBC();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  v0[54] = 0;
  v0[55] = 0xE000000000000000;
  v0[59] = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v3 = v0[54];
  v4 = v0[55];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D5B7E2C0();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1D725C30C();

  v7 = sub_1D605C2D8(MEMORY[0x1E69E7CC0]);

  v5 = v0[1];

  return v5(v7);
}

uint64_t sub_1D6083F84()
{

  v1 = v0[100];
  sub_1D7262EBC();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  v0[54] = 0;
  v0[55] = 0xE000000000000000;
  v0[59] = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v3 = v0[54];
  v4 = v0[55];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D5B7E2C0();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1D725C30C();

  v7 = sub_1D605C2D8(MEMORY[0x1E69E7CC0]);

  v5 = v0[1];

  return v5(v7);
}

uint64_t sub_1D60841C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1D6084834();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v45 - v22;
  sub_1D5BE3FA8(a2, &v45 - v22, type metadata accessor for DebugGroupLayoutKey);
  v47 = v9;
  v23[*(v9 + 48)] = a3 & 1;
  sub_1D5BE3FA8(v23, v19, sub_1D6084834);
  sub_1D5BDA9D4(v19, a1, type metadata accessor for DebugGroupLayoutKey);
  v24 = *(a4 + 16);
  v25 = *(a4 + 64);
  sub_1D5B68374(a4 + 136, v54);
  sub_1D5B68374(a4 + 176, v53);
  sub_1D5BE3FA8(v23, v15, sub_1D6084834);
  sub_1D5B68374(a4 + 216, v52);
  type metadata accessor for DebugInspector();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = v24;
  *(v26 + 32) = v25;
  sub_1D5B68374(v54, v26 + 40);
  sub_1D5B68374(v53, v26 + 128);
  v27 = *(type metadata accessor for DebugGroupLayoutKey() + 24);
  v45 = v15;
  v28 = &v15[v27];
  v30 = *&v15[v27 + 32];
  v29 = *&v15[v27 + 40];
  __swift_project_boxed_opaque_existential_1(v28 + 1, v30);
  v31 = *(v29 + 16);
  v32 = v24;
  swift_unknownObjectRetain();
  *(v26 + 80) = v31(v30, v29);
  v33 = *(v28 + 4);
  v34 = *(v28 + 5);
  __swift_project_boxed_opaque_existential_1(v28 + 1, v33);
  (*(v34 + 64))(v48, v33, v34);
  sub_1D68160C0(v48, v51);
  v35 = v51[1];
  *(v26 + 96) = v51[0];
  *(v26 + 112) = v35;
  v36 = *(v28 + 4);
  v37 = *(v28 + 5);
  __swift_project_boxed_opaque_existential_1(v28 + 1, v36);
  (*(v37 + 64))(v48, v36, v37);
  v38 = v49;
  if (!v49)
  {
    sub_1D5BFB704(v48, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
LABEL_6:
    v41 = MEMORY[0x1E69E7CD0];
    goto LABEL_7;
  }

  v39 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v40 = (*(v39 + 32))(v38, v39);
  if (!v40)
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
    goto LABEL_6;
  }

  v41 = *(v40 + 32);

  __swift_destroy_boxed_opaque_existential_1(v48);
LABEL_7:
  *(v26 + 88) = v41;
  sub_1D5B68374(v52, v26 + 168);
  sub_1D6C6DDB0();
  v42 = sub_1D725B92C();
  sub_1D725BB2C();

  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_1D6085238(v45, type metadata accessor for DebugGroupLayoutKey);
  v43 = v46;
  sub_1D5BDA9D4(v23, v46, sub_1D6084834);
  sub_1D6085238(v43, type metadata accessor for DebugGroupLayoutKey);
  return v26;
}

uint64_t DebugPersonalizationInspectionGroupProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();

  sub_1D6084EA8(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  return v0;
}

uint64_t DebugPersonalizationInspectionGroupProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();

  sub_1D6084EA8(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);

  return swift_deallocClassInstance();
}

uint64_t sub_1D60846C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D6036AEC;

  return DebugPersonalizationInspectionGroupProvider.inspectionGroups()();
}

void sub_1D6084754()
{
  if (!qword_1EC8830D0)
  {
    type metadata accessor for DebugGroupLayoutKey();
    type metadata accessor for DebugInspector();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC8830D0);
    }
  }
}

void sub_1D60847D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6084834()
{
  if (!qword_1EC8830E0)
  {
    type metadata accessor for DebugGroupLayoutKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8830E0);
    }
  }
}

uint64_t sub_1D608489C(uint64_t a1, uint64_t a2)
{
  sub_1D5F572B0(0, &unk_1EDF27C10, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D608492C(uint64_t a1, uint64_t a2)
{
  sub_1D60847D0(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60849C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D60847D0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6084A40()
{
  if (!qword_1EC8830F8)
  {
    sub_1D5C3978C(255, &qword_1EC8830F0);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8830F8);
    }
  }
}

unint64_t sub_1D6084AA8()
{
  result = qword_1EC883100;
  if (!qword_1EC883100)
  {
    sub_1D6084A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883100);
  }

  return result;
}

void sub_1D6084B34()
{
  if (!qword_1EC883110)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883110);
    }
  }
}

unint64_t sub_1D6084B94()
{
  result = qword_1EC883120;
  if (!qword_1EC883120)
  {
    sub_1D60847D0(255, &qword_1EC883118, sub_1D6084B00, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883120);
  }

  return result;
}

unint64_t sub_1D6084C1C()
{
  result = qword_1EC892190;
  if (!qword_1EC892190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892190);
  }

  return result;
}

uint64_t sub_1D6084C70(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v35 = &type metadata for DebugInspection;
  v36 = sub_1D6084C1C();
  v10 = swift_allocObject();
  *&v34 = v10;
  v11 = a1[3];
  v10[3] = a1[2];
  v10[4] = v11;
  v10[5] = a1[4];
  v12 = a1[1];
  v10[1] = *a1;
  v10[2] = v12;
  v13 = *a5;
  v15 = sub_1D5B69D90(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_1D5B63F14(&v34, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_1D6D81954();
    goto LABEL_7;
  }

  sub_1D6D6C854(v18, a4 & 1);
  v24 = sub_1D5B69D90(a2, a3);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v34, &type metadata for DebugInspection);
  v27 = MEMORY[0x1EEE9AC00](v26, v26);
  v29 = (&v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = v29[3];
  v37[2] = v29[2];
  v37[3] = v31;
  v37[4] = v29[4];
  v32 = v29[1];
  v37[0] = *v29;
  v37[1] = v32;
  sub_1D60850BC(v15, a2, a3, v37, v21);
  __swift_destroy_boxed_opaque_existential_1(&v34);
}

uint64_t dispatch thunk of DebugPersonalizationInspectionGroupProviderType.inspectionGroups()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D6036AEC;

  return v7(a1, a2);
}

unint64_t sub_1D6085068()
{
  result = qword_1EC883128;
  if (!qword_1EC883128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883128);
  }

  return result;
}

uint64_t sub_1D60850BC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  v19 = &type metadata for DebugInspection;
  v20 = sub_1D6084C1C();
  v10 = swift_allocObject();
  *&v18 = v10;
  v11 = a4[3];
  v10[3] = a4[2];
  v10[4] = v11;
  v10[5] = a4[4];
  v12 = a4[1];
  v10[1] = *a4;
  v10[2] = v12;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_1D5B63F14(&v18, a5[7] + 40 * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void sub_1D6085198()
{
  if (!qword_1EC883130)
  {
    sub_1D6084754();
    sub_1D60847D0(255, &qword_1EDF1B4A0, type metadata accessor for FeedItem, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883130);
    }
  }
}

uint64_t sub_1D6085238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6085298(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v115 = a6;
  v123 = a7;
  v121 = a5;
  v114 = a1;
  v13 = type metadata accessor for FormatViewBackground.Mica(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v113 = (&v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FormatViewBackground.SplitBackground(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v112 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60863A8();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v117 = (&v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v116 = (&v111 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v119 = &v111 - v31;
  sub_1D6086400();
  v120 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = (&v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_1D726344C();
  [a3 setUserInteractionEnabled_];
  v36 = *(a2 + 24);
  v37 = &a3[OBJC_IVAR____TtC8NewsFeed10FormatView_identifier];
  *v37 = *(a2 + 16);
  *(v37 + 1) = v36;

  v38 = *(a2 + 96);
  v118 = v28;
  if (v38)
  {
    v39 = *(v38 + 185);
  }

  else
  {
    v39 = 0;
  }

  [a3 setAccessibilityIgnoresInvertColors_];
  v40 = *(a2 + 136);
  v41 = *(a2 + 144);
  [a3 setIsAccessibilityElement_];
  [a3 setAccessibilityElementsHidden_];
  if (v41 > 0xFD)
  {
    goto LABEL_10;
  }

  if ((v41 & 0x80) != 0)
  {
    if (!(v40 | v41 & 0x7F))
    {
      goto LABEL_10;
    }

    v42 = &selRef_setAccessibilityElementsHidden_;
  }

  else
  {
    v42 = &selRef_setIsAccessibilityElement_;
  }

  [a3 *v42];
LABEL_10:
  v124 = v35;
  v43 = a8;
  if (v38)
  {
    v44 = *(v38 + 80);
    v45 = *(v38 + 88);
    v46 = *(v38 + 96);
    sub_1D5ED34B0(v44, v45, v46);
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = -2;
  }

  v47 = [a3 layer];
  [a3 bounds];
  *&v137 = v44;
  *(&v137 + 1) = v45;
  LOBYTE(v138) = v46;
  sub_1D6E549E4(v47, &v137, v48, v49, v50, v51);

  sub_1D5ED348C(v44, v45, v46);
  if (sub_1D7261A3C())
  {
    [a3 setOverrideUserInterfaceStyle_];
    *&v139 = 0;
    v137 = 0u;
    v138 = 0u;
    sub_1D72634CC();
  }

  v122 = a9;
  v52 = a4;
  if (v38)
  {
    v53 = *(v38 + 64);
    sub_1D5D04BD4(v53);
  }

  else
  {
    v53 = 0xF000000000000007;
  }

  v54 = v43;
  v55 = v121;
  v56 = *(v120 + 48);
  v57 = v124;
  *v124 = v53;
  sub_1D608678C(v55, v57 + v56, sub_1D60863A8);
  v58 = *v57;
  if ((~*v57 & 0xF000000000000007) == 0)
  {
    sub_1D726349C();
LABEL_44:
    v69 = sub_1D60863A8;
    v68 = v57 + v56;
    goto LABEL_45;
  }

  v59 = v58 >> 61;
  if ((v58 >> 61) <= 3)
  {
    if (v59 <= 1)
    {
      if (!v59)
      {
        *&v137 = *(v58 + 16);

        v61 = FormatColor.color.getter(v60);
        sub_1D726349C();

        v62 = v58;
LABEL_56:
        sub_1D5C8500C(v62);
        v69 = sub_1D60863A8;
        v68 = v124 + v56;
        goto LABEL_45;
      }

      v82 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v137 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v138 = v82;
      v83 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v139 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v140 = v83;
      v84 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v126 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v127 = v84;
      v85 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v128 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v129 = v85;
      sub_1D6086694(&v137, v125);
      sub_1D71E3D28(a3, &v126, v52);
      sub_1D60866F0(&v137);
LABEL_43:
      sub_1D5C8500C(v58);
      goto LABEL_44;
    }

    if (v59 == 2)
    {
      v70 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v141 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v142 = v70;
      v71 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v143 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v144 = v71;
      v72 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v137 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v138 = v72;
      v73 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v139 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v140 = v73;
      v74 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v130 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v131 = v74;
      v75 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v132 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v133 = v75;
      v76 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v126 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v127 = v76;
      v77 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v128 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v129 = v77;
      sub_1D60865E4(&v137, v125);
      sub_1D69F9B10(a3, &v126, v52);
      sub_1D6086640(&v137);
      goto LABEL_43;
    }

    v91 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if ((*((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) & 7u) <= 1)
    {
      v92 = v58;
      v106 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if ((v91 & 7) == 0)
      {
LABEL_55:
        *&v137 = v106;
        v107 = sub_1D6086744(v91);
        v108 = FormatColor.color.getter(v107);
        sub_1D726349C();
        sub_1D6086768(v91);

        v62 = v92;
        goto LABEL_56;
      }
    }

    else
    {
      v92 = v58;
    }

    v106 = v91 & 0xFFFFFFFFFFFFFFF8;
    goto LABEL_55;
  }

  if (v59 > 5)
  {
    if (v59 != 6)
    {
      v93 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
      v144 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v145 = v93;
      v146 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
      v147 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0xB0);
      v94 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v140 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v141 = v94;
      v95 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v142 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v143 = v95;
      v96 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v137 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v138 = v96;
      v139 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v97 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
      v134 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
      v135 = v97;
      v136 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0xB0);
      v98 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v130 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v131 = v98;
      v99 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v132 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v133 = v99;
      v100 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v126 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v127 = v100;
      v101 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v128 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v129 = v101;
      sub_1D60864C0(&v137, v125);
      sub_1D700C2C4(a3, &v126, v52);
      sub_1D60113F8(&v137);
      goto LABEL_43;
    }

    sub_1D5C8500C(*v57);
    v78 = type metadata accessor for FormatViewBackground(0);
    if ((*(*(v78 - 8) + 48))(v57 + v56, 1, v78) != 1)
    {
      v79 = v117;
      sub_1D608678C(v57 + v56, v117, sub_1D60863A8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v80 = v79;
        v81 = v113;
        sub_1D608651C(v80, v113, type metadata accessor for FormatViewBackground.Mica);
        sub_1D6086028(v114, a3, v52, v81, v115, v123, v54, v122);
        sub_1D6086584(v81, type metadata accessor for FormatViewBackground.Mica);
        goto LABEL_44;
      }

LABEL_37:
      sub_1D6086584(v79, type metadata accessor for FormatViewBackground);
    }
  }

  else
  {
    v63 = *v57;
    if (v59 == 4)
    {
      sub_1D5C8500C(v63);
      v64 = v57 + v56;
      v65 = v119;
      sub_1D608651C(v64, v119, sub_1D60863A8);
      v66 = v118;
      sub_1D608678C(v65, v118, sub_1D60863A8);
      v67 = type metadata accessor for FormatViewBackground(0);
      if ((*(*(v67 - 8) + 48))(v66, 1, v67) == 1)
      {
        sub_1D6086584(v65, sub_1D60863A8);
        v68 = v66;
        v69 = sub_1D60863A8;
      }

      else if (swift_getEnumCaseMultiPayload() == 2)
      {
        v105 = v112;
        sub_1D608651C(v66, v112, type metadata accessor for FormatViewBackground.SplitBackground);
        sub_1D7199CC0(a3, v105, v52, a2);
        sub_1D6086584(v105, type metadata accessor for FormatViewBackground.SplitBackground);
        v69 = sub_1D60863A8;
        v68 = v65;
      }

      else
      {
        sub_1D6086584(v65, sub_1D60863A8);
        v69 = type metadata accessor for FormatViewBackground;
        v68 = v66;
      }

LABEL_45:
      sub_1D6086584(v68, v69);
      if (v38)
      {
        goto LABEL_46;
      }

LABEL_39:
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v90 = -2;
      goto LABEL_47;
    }

    sub_1D5C8500C(v63);
    v86 = type metadata accessor for FormatViewBackground(0);
    if ((*(*(v86 - 8) + 48))(v57 + v56, 1, v86) != 1)
    {
      v79 = v116;
      sub_1D608678C(v57 + v56, v116, sub_1D60863A8);
      if (!swift_getEnumCaseMultiPayload())
      {
        v109 = v57;
        v110 = v79[1];
        *&v137 = *v79;
        *(&v137 + 1) = v110;
        sub_1D6085D84(v114, a3, v52, &v137, v115, v123, v54, v122);

        v69 = sub_1D60863A8;
        v68 = v109 + v56;
        goto LABEL_45;
      }

      goto LABEL_37;
    }
  }

  sub_1D6086584(v57 + v56, sub_1D60863A8);
  sub_1D726349C();
  if (!v38)
  {
    goto LABEL_39;
  }

LABEL_46:
  v89 = *(v38 + 72);
  v87 = *(v38 + 80);
  v88 = *(v38 + 88);
  v90 = *(v38 + 96);

  sub_1D5ED34B0(v87, v88, v90);
LABEL_47:
  v102 = [a3 layer];
  *&v137 = v87;
  *(&v137 + 1) = v88;
  LOBYTE(v138) = v90;
  sub_1D6D111F4(v102, v123, v89, &v137, v54, v122);

  sub_1D5ED348C(v87, v88, v90);
  if (v38)
  {
  }

  else
  {
    v103 = 0;
  }

  *&v137 = v103;
  sub_1D613DC18(a3, &v137, v52);
}

void sub_1D6085D84(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = *a4;
  v34 = a4[1];
  v17 = [objc_opt_self() clearColor];
  sub_1D726349C();

  if (*(a3 + 16))
  {
    v18 = sub_1D6D62820(3u);
    if (v19)
    {
      v20 = *(a3 + 56) + 16 * v18;
      if (*(v20 + 8) == 3)
      {
        v21 = *v20;
        [a2 frame];
        sub_1D726344C();
        [v21 bounds];
        sub_1D726344C();
        v22 = [v21 layer];
        v33 = a7;
        v23 = [a2 layer];
        [v23 cornerRadius];
        v25 = v24;

        [v22 setCornerRadius_];
        v26 = [v21 layer];

        v27 = [a2 layer];
        v32 = a6;
        v28 = [v27 maskedCorners];

        [v26 setMaskedCorners_];
        v29 = [v21 layer];

        v30 = [a2 layer];
        v31 = [v30 cornerCurve];

        [v29 setCornerCurve_];
        sub_1D726348C();
        __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
        v36 = v16;

        sub_1D68B5E88(a1, v21, &v36, v34, a3, a5, v32, v33, a8);
      }
    }
  }
}

void sub_1D6086028(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v39 = a8;
  v40 = a1;
  v41 = a5;
  v15 = type metadata accessor for FormatViewBackground.Mica(0);
  v38 = *(v15 - 8);
  v16 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v18 = [objc_opt_self() clearColor];
  sub_1D726349C();

  if (*(a3 + 16))
  {
    v19 = sub_1D6D62820(4u);
    if (v20)
    {
      v21 = *(a3 + 56) + 16 * v19;
      if (*(v21 + 8) == 4)
      {
        v22 = *v21;
        [a2 frame];
        sub_1D726344C();
        v37 = a7;
        v23 = [v22 layer];
        v24 = [a2 layer];
        [v24 cornerRadius];
        v26 = v25;

        [v23 setCornerRadius_];
        v27 = [v22 layer];

        v28 = [a2 layer];
        v36 = a6;
        v29 = [v28 maskedCorners];

        [v27 setMaskedCorners_];
        v30 = [v22 layer];

        v31 = [a2 layer];
        v32 = [v31 cornerCurve];

        [v30 setCornerCurve_];
        sub_1D726348C();
        __swift_project_boxed_opaque_existential_1((v9 + 56), *(v9 + 80));
        v42 = *a4;
        sub_1D608678C(a4, &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatViewBackground.Mica);
        v33 = (*(v38 + 80) + 16) & ~*(v38 + 80);
        v34 = swift_allocObject();
        sub_1D608651C(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for FormatViewBackground.Mica);

        sub_1D69DEEB8(v40, v22, &v42, v41, v36, sub_1D60867F4, v34, v37, v39);
      }
    }
  }
}

void sub_1D60863A8()
{
  if (!qword_1EDF2A668[0])
  {
    type metadata accessor for FormatViewBackground(255);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF2A668);
    }
  }
}

void sub_1D6086400()
{
  if (!qword_1EDF308F0)
  {
    sub_1D6086470();
    sub_1D60863A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF308F0);
    }
  }
}

void sub_1D6086470()
{
  if (!qword_1EDF308F8)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF308F8);
    }
  }
}

uint64_t sub_1D608651C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6086584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6086744(uint64_t result)
{
  if ((result & 7u) <= 4uLL)
  {
  }

  return result;
}

uint64_t sub_1D6086768(uint64_t result)
{
  if ((result & 7u) <= 4uLL)
  {
  }

  return result;
}

uint64_t sub_1D608678C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

NewsFeed::GeoLocation __swiftcall GeoLocation.init(latitude:longitude:)(Swift::Double latitude, Swift::Double longitude)
{
  *v2 = latitude;
  v2[1] = longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

uint64_t sub_1D60868A4()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_1D60868E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D60869C8(uint64_t a1)
{
  v2 = sub_1D6086BB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6086A04(uint64_t a1)
{
  v2 = sub_1D6086BB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeoLocation.encode(to:)(void *a1)
{
  sub_1D6086F38(0, &qword_1EC883148, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6086BB4();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D726441C();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D726441C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D6086BB4()
{
  result = qword_1EDF126E0;
  if (!qword_1EDF126E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF126E0);
  }

  return result;
}

uint64_t GeoLocation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1DA6FC0E0](*&v3);
}

uint64_t GeoLocation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D7264A0C();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1DA6FC0E0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA6FC0E0](*&v4);
  return sub_1D7264A5C();
}

uint64_t GeoLocation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D6086F38(0, &qword_1EDF03B30, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6086BB4();
  sub_1D7264B0C();
  if (!v2)
  {
    v18 = 0;
    sub_1D72642DC();
    v12 = v11;
    v17 = 1;
    sub_1D72642DC();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6086EC4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D7264A0C();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1DA6FC0E0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA6FC0E0](*&v4);
  return sub_1D7264A5C();
}

void sub_1D6086F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6086BB4();
    v7 = a3(a1, &type metadata for GeoLocation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

NewsFeed::GeoLocation __swiftcall GeoLocation.init(from:)(CLLocation from)
{
  isa = from.super.isa;
  v3 = v1;
  [(objc_class *)from.super.isa coordinate];
  v5 = v4;
  [(objc_class *)isa coordinate];
  v7 = v6;

  *v3 = v5;
  v3[1] = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

uint64_t GeoLocation.identifier.getter()
{
  sub_1D7262ABC();
  MEMORY[0x1DA6F9910](47, 0xE100000000000000);
  sub_1D7262ABC();
  return 0;
}

unint64_t sub_1D6087084()
{
  result = qword_1EC883150;
  if (!qword_1EC883150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883150);
  }

  return result;
}

uint64_t sub_1D60870D8()
{
  sub_1D7262ABC();
  MEMORY[0x1DA6F9910](47, 0xE100000000000000);
  sub_1D7262ABC();
  return 0;
}

unint64_t sub_1D6087184()
{
  result = qword_1EC883158;
  if (!qword_1EC883158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883158);
  }

  return result;
}

unint64_t sub_1D60871DC()
{
  result = qword_1EDF126D0;
  if (!qword_1EDF126D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF126D0);
  }

  return result;
}

unint64_t sub_1D6087234()
{
  result = qword_1EDF126D8;
  if (!qword_1EDF126D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF126D8);
  }

  return result;
}

uint64_t sub_1D6087288()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6087354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + v6[15]);
  v12 = OBJC_IVAR____TtC8NewsFeed17FormatDataManager_pluginData;
  swift_beginAccess();
  sub_1D5F423D0(v11 + v12, v10);
  v13 = (*(v6[11] + 40))(v10, v6[10]);
  sub_1D6088900(v10, type metadata accessor for FormatPluginData);
  v16 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1D6088BCC(0);
  sub_1D5B85E70(&qword_1EDF17208, sub_1D6088BCC);

  sub_1D725D8DC();
}

uint64_t sub_1D6087548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v3 + v6[15]);
  v8 = OBJC_IVAR____TtC8NewsFeed17FormatDataManager_pluginData;
  swift_beginAccess();
  sub_1D6088B10(a1, v7 + v8);
  swift_endAccess();
  v9 = v6[11];
  v10 = v6[10];
  (*(v9 + 48))(a1, a2, v10, v9);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v9;
  v12[4] = v11;
  sub_1D6088BCC(0);
  sub_1D5B85E70(&qword_1EDF17208, sub_1D6088BCC);

  sub_1D725D8DC();
}

uint64_t sub_1D6087718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725D85C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69D7A38], v4, v7);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_1D725D8EC();

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1D6087860()
{
  v1 = v0;
  sub_1D5ECF374(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6088960(0, &qword_1EDF0B838, type metadata accessor for FormatAutoscrollPivotPoint);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for FormatAutoscrollPivotPoint();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + *(*v0 + 120)) + OBJC_IVAR____TtC8NewsFeed17FormatDataManager_pluginData;
  swift_beginAccess();
  result = type metadata accessor for FormatPluginData();
  if ((*(v17 + *(result + 48)) & 1) == 0)
  {
    v22 = v16;
    __swift_project_boxed_opaque_existential_1((v1 + *(*v1 + 136)), *(v1 + *(*v1 + 136) + 24));
    v23 = v3;
    sub_1D725D8BC();
    v24 = v25;
    sub_1D6087E88(0);
    sub_1D5B85E70(&unk_1EDF171E0, sub_1D6087E88);
    sub_1D725E03C();

    sub_1D6A2C2E4(v7, v11);
    (*(v4 + 8))(v7, v23);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      return sub_1D6088A34(v11, &qword_1EDF0B838, type metadata accessor for FormatAutoscrollPivotPoint);
    }

    else
    {
      v19 = v22;
      sub_1D6087F9C(v11, v22);
      if (swift_unknownObjectWeakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_1D6088174(v19, Strong);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      return sub_1D6088900(v19, type metadata accessor for FormatAutoscrollPivotPoint);
    }
  }

  return result;
}

uint64_t *sub_1D6087BC4()
{
  v1 = *v0;
  sub_1D5B87E10((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 136));
  return v0;
}

uint64_t sub_1D6087CA0()
{
  sub_1D6087BC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6087D10(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D6087D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        v12 = swift_allocObject();
        v12[2] = v10;
        v12[3] = a7;
        v12[4] = v11;
        swift_unknownObjectRetain_n();

        sub_1D725BFFC();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1D6087EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for FormatSectionDescriptor();
    v8[1] = type metadata accessor for FormatModel();
    v8[2] = sub_1D5B85E70(&qword_1EDF0D410, type metadata accessor for FormatSectionDescriptor);
    v8[3] = sub_1D5B85E70(&qword_1EDF128E0, type metadata accessor for FormatModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6087F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatAutoscrollPivotPoint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6088000(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  (*(v2 + 56))(a1, v3, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  sub_1D6088BCC(0);
  sub_1D5B85E70(&qword_1EDF17208, sub_1D6088BCC);

  sub_1D725D8DC();
}

id sub_1D6088174(uint64_t a1, void *a2)
{
  v78 = a1;
  sub_1D5ECF374(0);
  v81 = v3;
  v75 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v80 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7258DBC();
  v83 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6088960(0, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v79 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v82 = &v71 - v19;
  v20 = sub_1D725E23C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725E55C();
  swift_getObjectType();
  sub_1D725F1DC();
  swift_unknownObjectRelease();
  sub_1D725E51C();
  v25 = sub_1D725E05C();

  v26 = [v25 collectionViewLayout];

  [v26 collectionViewContentSize];
  v28 = v27;

  result = [a2 view];
  if (result)
  {
    v30 = result;
    [result bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v86.origin.x = v32;
    v86.origin.y = v34;
    v86.size.width = v36;
    v86.size.height = v38;
    Width = CGRectGetWidth(v86);
    sub_1D725E18C();
    sub_1D7262E2C();
    v41 = Width - v40;
    if (Width - v40 >= v28)
    {
      return (*(v21 + 8))(v24, v20);
    }

    else
    {
      v72 = v21;
      v73 = v20;
      v43 = v82;
      v42 = v83;
      (*(v83 + 16))(v82, v78, v6);
      (*(v42 + 56))(v43, 0, 1, v6);
      sub_1D60889B4(v43, v16);
      v77 = *(v42 + 48);
      v78 = v42 + 48;
      if (v77(v16, 1, v6) == 1)
      {
LABEL_8:
        v69 = MEMORY[0x1E6969C28];
        sub_1D6088A34(v82, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
        (*(v72 + 8))(v24, v73);
        return sub_1D6088A34(v16, &qword_1EDF3C370, v69);
      }

      else
      {
        v44 = *(v83 + 32);
        v74 = v75 + 1;
        v83 += 32;
        v75 = (v83 - 24);
        v76 = v44;
        v45 = v79;
        while (1)
        {
          v76(v9, v16, v6);
          sub_1D725E51C();
          v46 = sub_1D725E05C();

          v47 = sub_1D7258D4C();
          v48 = [v46 layoutAttributesForItemAtIndexPath_];

          if (!v48)
          {
            break;
          }

          [v48 frame];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;

          v87.origin.x = v50;
          v87.origin.y = v52;
          v87.size.width = v54;
          v87.size.height = v56;
          MinX = CGRectGetMinX(v87);
          sub_1D725E18C();
          v59 = MinX - v58;
          sub_1D725E16C();
          v61 = v59 - v60;
          sub_1D725E18C();
          if (v41 + v61 + v62 <= v28)
          {
            sub_1D725E51C();
            v70 = sub_1D725E05C();

            [v70 setContentOffset_];

            break;
          }

          sub_1D725E53C();
          v84 = v85;
          sub_1D6087E88(0);
          sub_1D5B85E70(&unk_1EDF171E0, sub_1D6087E88);
          v63 = v6;
          v64 = v80;
          sub_1D725E03C();

          sub_1D725E51C();
          v65 = sub_1D725E05C();

          sub_1D5B85E70(&qword_1EC883160, sub_1D5ECF374);
          v66 = v81;
          sub_1D725EFAC();

          v67 = v64;
          v6 = v63;
          (*v74)(v67, v66);
          (*v75)(v9, v63);
          v68 = v82;
          sub_1D6088A34(v82, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
          sub_1D6088A90(v45, v68);
          sub_1D60889B4(v68, v16);
          if (v77(v16, 1, v63) == 1)
          {
            goto LABEL_8;
          }
        }

        (*v75)(v9, v6);
        sub_1D6088A34(v82, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
        return (*(v72 + 8))(v24, v73);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6088900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6088960(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D60889B4(uint64_t a1, uint64_t a2)
{
  sub_1D6088960(0, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6088A34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D6088960(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6088A90(uint64_t a1, uint64_t a2)
{
  sub_1D6088960(0, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6088B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPluginData();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_12Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1D6088CA4@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = *v2;
  v16 = 10;
  v17 = 0xE100000000000000;
  sub_1D6089234(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 64))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1D60892F0(v13);
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1DA6F9910](v7, v9);

  MEMORY[0x1DA6F9910](10, 0xE100000000000000);
  v10 = v16;
  v11 = v17;
  swift_beginAccess();
  MEMORY[0x1DA6F9910](v10, v11);
  swift_endAccess();

  a2[3] = v4;
  a2[4] = &off_1F512FCE0;
  *a2 = v2;
}

uint64_t sub_1D6088DF0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v10 = *v5;
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || a1 == a3 && a2 == a4 || (sub_1D72646CC() & 1) != 0)
  {
    swift_beginAccess();
    MEMORY[0x1DA6F9910](a3, a4);
    swift_endAccess();
  }

  else
  {

    MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
    MEMORY[0x1DA6F9910](a3, a4);
    swift_beginAccess();
    MEMORY[0x1DA6F9910](a1, a2);
    swift_endAccess();
  }

  a5[3] = v10;
  a5[4] = &off_1F512FCE0;
  *a5 = v6;
}

uint64_t sub_1D6088F54()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6088FB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  result = swift_beginAccess();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  *a1 = v2;
  return result;
}

uint64_t sub_1D6089024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  swift_beginAccess();
  MEMORY[0x1DA6F9910](10, 0xE100000000000000);
  swift_endAccess();
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v7;
}

uint64_t sub_1D60890A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v7 = *v3;
  MEMORY[0x1DA6F9910]();
  MEMORY[0x1DA6F9910](10, 0xE100000000000000);
  swift_beginAccess();
  MEMORY[0x1DA6F9910](10, 0xE100000000000000);
  swift_endAccess();

  a3[3] = a1;
  a3[4] = a2;
  *a3 = v7;
}

uint64_t sub_1D60891A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *v5;
  swift_beginAccess();
  MEMORY[0x1DA6F9910](a1, a2);
  swift_endAccess();
  a5[3] = a3;
  a5[4] = a4;
  *a5 = v11;
}

uint64_t sub_1D6089234(uint64_t a1, uint64_t a2)
{
  sub_1D6089298();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6089298()
{
  if (!qword_1EC884F40)
  {
    sub_1D5EB8714();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884F40);
    }
  }
}

uint64_t sub_1D60892F0(uint64_t a1)
{
  sub_1D6089298();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FeedGroupTopicClusteringRequestTagContent.count.getter()
{
  v1 = *v0;
  if (*(v0 + 8) != 1)
  {
    return *(v1 + 16);
  }

  if (v1 >> 62)
  {
    return sub_1D7263BFC();
  }

  return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t sub_1D60893C0(uint64_t result)
{
  if (!*(v1 + 24))
  {
    v4 = *(v1 + 8);
    v3 = *(v1 + 16);
    v5 = *v1;
    v8[0] = v5;
    v8[1] = v4;
    v8[2] = v3;
    v9 = 6;
    sub_1D5D27950(v5, v4, v3, 0);
    result = sub_1D703E0C8(v8, &v9);
    if (!v2)
    {
      v6 = result;
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      *(v7 + 32) = v6;
      *(v7 + 40) = 0;

      sub_1D6C4D24C(v7 | 0x3000000000000000);
    }
  }

  return result;
}

BOOL _s8NewsFeed16FormatURLBindingO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (v9 == 3)
      {
        sub_1D5D28C84(*a1, v3, v4, 3);
        sub_1D5D28C84(v6, v7, v8, 3);
        return ((v6 ^ v2) & 1) == 0;
      }

      goto LABEL_24;
    }

    if (v5 != 4)
    {
      if (v9 == 5)
      {
        sub_1D5D28C84(*a1, v3, v4, 5);
        v10 = v6;
        v11 = v7;
        v12 = v8;
        v13 = 5;
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    if (v9 != 4)
    {
LABEL_24:
      sub_1D5D27950(v6, v7, v8, v9);
      sub_1D5D28C84(v2, v3, v4, v5);
      v16 = v6;
      v17 = v7;
      v18 = v8;
      v19 = v9;
LABEL_25:
      sub_1D5D28C84(v16, v17, v18, v19);
      return 0;
    }

    v14 = *a2;
    sub_1D5D28C84(*a1, v3, v4, 4);
    sub_1D5D28C84(v6, v7, v8, 4);
    if (v2 >> 6)
    {
      if (v2 >> 6 == 1)
      {
        if ((v14 & 0xC0) == 0x40 && ((v6 ^ v2) & 1) == 0)
        {
          return 1;
        }
      }

      else if ((v14 & 0xC0) == 0x80)
      {
        return 1;
      }
    }

    else if (v14 < 0x40 && (v6 & 0x3F) == v2)
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 24))
    {
      if (v5 == 1)
      {
        if (v9 == 1)
        {
          sub_1D5D28C84(*a1, v3, v4, 1);
          v10 = v6;
          v11 = v7;
          v12 = v8;
          v13 = 1;
LABEL_22:
          sub_1D5D28C84(v10, v11, v12, v13);
          return 1;
        }
      }

      else if (v9 == 2)
      {
        sub_1D5D28C84(*a1, v3, v4, 2);
        sub_1D5D28C84(v6, v7, v8, 2);
        return v6 == v2;
      }

      goto LABEL_24;
    }

    if (*(a2 + 24))
    {

      goto LABEL_24;
    }

    v20 = v2 == v6 && v3 == v7;
    if (!v20 && (sub_1D72646CC() & 1) == 0)
    {
      sub_1D5D27950(v2, v3, v4, 0);
      sub_1D5D27950(v6, v7, v8, 0);
      sub_1D5D28C84(v2, v3, v4, 0);
      v16 = v6;
      v17 = v7;
      v18 = v8;
      v19 = 0;
      goto LABEL_25;
    }

    sub_1D5D27950(v6, v7, v8, 0);
    sub_1D5D27950(v2, v3, v4, 0);
    sub_1D5D27950(v2, v3, v4, 0);
    sub_1D5D27950(v6, v7, v8, 0);
    v21 = sub_1D6341C50(v4, v8);
    sub_1D5D28C84(v2, v3, v4, 0);
    sub_1D5D28C84(v6, v7, v8, 0);
    sub_1D5D28C84(v6, v7, v8, 0);
    sub_1D5D28C84(v2, v3, v4, 0);
    if (v21)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1D6089844(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatOption();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - v16;
  if (!*(v1 + 24))
  {
    v34 = v6;
    v19 = *(v1 + 8);
    v18 = *(v1 + 16);
    v20 = *v1;
    v35[0] = *v1;
    v35[1] = v19;
    v35[2] = v18;
    v36 = 6;

    v21 = sub_1D703E0C8(v35, &v36);
    if (!v3)
    {
      v33 = v21;
      FormatOptionCollection.subscript.getter(v20, v19, v13);
      if ((*(v34 + 48))(v13, 1, v5) == 1)
      {

        sub_1D5D280B8(v13, sub_1D5E04C00);
        if ((*(a1 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          *v26 = v20;
          v26[1] = v19;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        v22 = 1;
      }

      else
      {
        sub_1D5D247E0(v13, v9);
        v35[0] = v9[2];
        v23 = v33;

        FormatOptionValue.type.getter(&v36);
        if ((sub_1D6183C84(v36, v23) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError();
          sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          swift_allocError();
          v28 = v27;
          v30 = *v9;
          v29 = v9[1];
          v35[0] = v9[2];

          FormatOptionValue.type.getter(&v36);
          v31 = v36;
          *v28 = v30;
          *(v28 + 8) = v29;
          *(v28 + 16) = v31;
          *(v28 + 24) = v23;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v24 = type metadata accessor for FormatOption;
          v25 = v9;
          goto LABEL_11;
        }

        swift_bridgeObjectRelease_n();
        sub_1D5D247E0(v9, v17);
        v22 = 0;
      }

      (*(v34 + 56))(v17, v22, 1, v5);
      v24 = sub_1D5E04C00;
      v25 = v17;
LABEL_11:
      sub_1D5D280B8(v25, v24);
    }
  }
}

unint64_t sub_1D6089C10(uint64_t a1)
{
  result = sub_1D6089C38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6089C38()
{
  result = qword_1EC883168;
  if (!qword_1EC883168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883168);
  }

  return result;
}

unint64_t sub_1D6089C8C(void *a1)
{
  a1[1] = sub_1D5CA38E4();
  a1[2] = sub_1D6089CC4();
  result = sub_1D6089D18();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6089CC4()
{
  result = qword_1EDF11090;
  if (!qword_1EDF11090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11090);
  }

  return result;
}

unint64_t sub_1D6089D18()
{
  result = qword_1EC883170;
  if (!qword_1EC883170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883170);
  }

  return result;
}

id sub_1D6089D88(void *a1, double a2, double a3, double a4, double a5)
{
  v8 = a4 - a2;
  if (v8 >= 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 3.14159265;
  }

  v10 = 3.14159265 - (v9 + atan((a5 - a3) / v8));
  v11 = __sincos_stret(v10 + 0.785398163);
  v12 = __sincos_stret(v10 + -0.785398163);
  [a1 moveToPoint_];
  [a1 addLineToPoint_];
  [a1 moveToPoint_];

  return [a1 addLineToPoint_];
}

id sub_1D6089EA4(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v8 moveToPoint_];
  [v8 addLineToPoint_];
  if (a2 == a4)
  {
    sub_1D726351C();
    [v8 moveToPoint_];
    sub_1D726351C();
    [v8 addLineToPoint_];
    sub_1D726351C();
    [v8 moveToPoint_];
    sub_1D726351C();
  }

  else
  {
    sub_1D726350C();
    [v8 moveToPoint_];
    sub_1D726350C();
    [v8 addLineToPoint_];
    sub_1D726350C();
    [v8 moveToPoint_];
    sub_1D726350C();
  }

  [v8 addLineToPoint_];
  return v8;
}

NewsFeed::GroupLayoutPriority_optional __swiftcall GroupLayoutPriority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t GroupLayoutPriority.description.getter()
{
  v1 = 1701736270;
  v2 = 1751607624;
  if (*v0 != 2)
  {
    v2 = 0x756F72636964754CLL;
  }

  if (*v0)
  {
    v1 = 7827276;
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

unint64_t sub_1D608A110()
{
  result = qword_1EDF2B990;
  if (!qword_1EDF2B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B990);
  }

  return result;
}

uint64_t sub_1D608A164()
{
  v1 = 1701736270;
  v2 = 1751607624;
  if (*v0 != 2)
  {
    v2 = 0x756F72636964754CLL;
  }

  if (*v0)
  {
    v1 = 7827276;
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

uint64_t sub_1D608A1E0(void *a1)
{
  v3 = [*(v1 + 56) cachedSubscription];
  if (objc_getAssociatedObject(v3, v3 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    sub_1D5EBD03C(&v20);
    goto LABEL_9;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v4 = v17;
  v5 = [v17 integerValue];
  if (v5 == -1)
  {

    goto LABEL_22;
  }

  v6 = v5;
LABEL_10:
  if (objc_getAssociatedObject(v3, ~v6))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    sub_1D5BAFAD8();
    if (swift_dynamicCast())
    {
      v7 = v17;
      v8 = [v7 integerValue];

      if ((v8 ^ v6))
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_1D5EBD03C(&v20);
  }

  if (v6)
  {
LABEL_22:
    v15 = 1;
    return v15 & 1;
  }

LABEL_19:
  if (![a1 isPaid])
  {
    goto LABEL_22;
  }

  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v9);
  v11 = [a1 identifier];
  v12 = sub_1D726207C();
  v14 = v13;

  v15 = (*(*(v10 + 8) + 8))(v12, v14, v9);

  return v15 & 1;
}

uint64_t sub_1D608A430()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PuzzleAutomation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleAutomation.init(puzzle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  *a2 = v5;
  *(a2 + 8) = v4;
  v6 = *(a1 + 72);

  result = sub_1D5F2DF58(a1);
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1D608A554()
{
  if (*v0)
  {
    return 0x7453737365636361;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D608A59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7453737365636361 && a2 == 0xEB00000000657461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D608A684(uint64_t a1)
{
  v2 = sub_1D608A89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D608A6C0(uint64_t a1)
{
  v2 = sub_1D608A89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAutomation.encode(to:)(void *a1)
{
  sub_1D608AB48(0, &qword_1EC883178, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v15 = *(v1 + 16);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D608A89C();
  sub_1D7264B5C();
  v18 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v17 = v15;
    v16 = 1;
    sub_1D608A8F0();
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v12);
}

unint64_t sub_1D608A89C()
{
  result = qword_1EC883180;
  if (!qword_1EC883180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883180);
  }

  return result;
}

unint64_t sub_1D608A8F0()
{
  result = qword_1EC883188;
  if (!qword_1EC883188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883188);
  }

  return result;
}

uint64_t PuzzleAutomation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D608AB48(0, &qword_1EC883190, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D608A89C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_1D608ABAC();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v15 = v19;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D608AB48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D608A89C();
    v7 = a3(a1, &type metadata for PuzzleAutomation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D608ABAC()
{
  result = qword_1EC883198;
  if (!qword_1EC883198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883198);
  }

  return result;
}

unint64_t sub_1D608AC04()
{
  result = qword_1EC8831A0;
  if (!qword_1EC8831A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831A0);
  }

  return result;
}

unint64_t sub_1D608AC5C()
{
  result = qword_1EC8831A8;
  if (!qword_1EC8831A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831A8);
  }

  return result;
}

unint64_t sub_1D608AD18()
{
  result = qword_1EC8831B0;
  if (!qword_1EC8831B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831B0);
  }

  return result;
}

unint64_t sub_1D608AD70()
{
  result = qword_1EC8831B8;
  if (!qword_1EC8831B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831B8);
  }

  return result;
}

unint64_t sub_1D608ADC8()
{
  result = qword_1EC8831C0;
  if (!qword_1EC8831C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831C0);
  }

  return result;
}

uint64_t FormatPropertyValue.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25[-1] - v9;
  sub_1D5B68374(a1, v25);
  FormatOptionValue.init(from:)(v25, &v26);
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = v2;
    sub_1D5C30408();
    sub_1D7264B0C();
    v24 = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v21 = swift_allocError();
          *v22 = v20;
          *(v22 + 8) = v19;
          *(v22 + 16) = &unk_1F5111478;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          swift_willThrow();

          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    sub_1D608B5B4();
    v25[0] = 0;
    v25[1] = 0;
    sub_1D726431C();
    a2 = v24;
    (*(v7 + 8))(v10, v6);

    v12 = 0xF000000000000007;
  }

  else
  {
    v12 = v26;
  }

  *a2 = v12;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPropertyValue.encode(to:)(void *a1)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v10 - v7;
  if ((~*v1 & 0xF000000000000007) != 0)
  {
    v10[0] = *v1;
    return FormatOptionValue.encode(to:)(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5C30408();
    sub_1D7264B5C();
    sub_1D608B608();
    v10[0] = 0;
    v10[1] = 0;
    sub_1D726443C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1D608B288()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D608B304()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D608B35C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t _s8NewsFeed19FormatPropertyValueO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a2 & 0xF000000000000007;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    if (v4 != 0xF000000000000007)
    {
      v7 = *a2;
      v8 = v2;
      sub_1D5CFCFAC(v3);
      sub_1D5CFCFAC(v2);
      sub_1D5CFCFAC(v2);
      sub_1D5CFCFAC(v3);
      v5 = static FormatOptionValue.== infix(_:_:)(&v8, &v7);
      sub_1D5C84FF4(v2);
      sub_1D5C84FF4(v3);
      sub_1D5C84FF4(v3);
      sub_1D5C84FF4(v2);
      return v5 & 1;
    }

    goto LABEL_5;
  }

  if (v4 != 0xF000000000000007)
  {
LABEL_5:
    sub_1D5CFCFAC(*a1);
    sub_1D5CFCFAC(v3);
    sub_1D5C84FF4(v2);
    sub_1D5C84FF4(v3);
    v5 = 0;
    return v5 & 1;
  }

  sub_1D5C84FF4(*a1);
  sub_1D5C84FF4(v3);
  v5 = 1;
  return v5 & 1;
}

unint64_t sub_1D608B5B4()
{
  result = qword_1EDF2C1C0;
  if (!qword_1EDF2C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C1C0);
  }

  return result;
}

unint64_t sub_1D608B608()
{
  result = qword_1EDF0F9E8;
  if (!qword_1EDF0F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F9E8);
  }

  return result;
}

unint64_t sub_1D608B65C(void *a1)
{
  a1[1] = sub_1D5EECC10();
  a1[2] = sub_1D5EECB58();
  result = sub_1D608B694();
  a1[3] = result;
  return result;
}

unint64_t sub_1D608B694()
{
  result = qword_1EC8831C8;
  if (!qword_1EC8831C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831C8);
  }

  return result;
}

uint64_t sub_1D608B6E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 8))
  {
    return (*a1 + 114);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x72)
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

uint64_t sub_1D608B738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *result = 0;
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = ((8 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 4) | (((8 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 4)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D608B78C(unint64_t *result, unsigned int a2)
{
  if (a2 > 0x72)
  {
    v3 = a2 - 115;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
    v3 = (v2 | (v2 << 57)) & 0xF000000000000007;
  }

  *result = v3;
  return result;
}

unint64_t sub_1D608B7D0()
{
  result = qword_1EC8831D0;
  if (!qword_1EC8831D0)
  {
    sub_1D608B828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831D0);
  }

  return result;
}

void sub_1D608B828()
{
  if (!qword_1EC8831D8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8831D8);
    }
  }
}

unint64_t sub_1D608B87C()
{
  result = qword_1EC8831E0;
  if (!qword_1EC8831E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8831E0);
  }

  return result;
}

unint64_t sub_1D608B8D0()
{
  result = qword_1EDF2C1C8;
  if (!qword_1EDF2C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C1C8);
  }

  return result;
}

uint64_t sub_1D608B924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for FormatArrangementResolver();
  v11 = v10[14];
  type metadata accessor for FormatArrangementData();
  *(a6 + v11) = sub_1D7261CEC();
  sub_1D609C804(a1, a6, type metadata accessor for FormatContent);
  v12 = v10[10];
  v13 = type metadata accessor for FormatArrangementResolverOptions();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a6 + v12, a2, v13);
  sub_1D5B68374(a3, a6 + v10[12]);
  v15 = (a6 + v10[13]);
  *v15 = a4;
  v15[1] = a5;
  type metadata accessor for FormatArrangementTemplate();
  sub_1D72627FC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = sub_1D72623BC();

  *(a6 + v10[9]) = v16;
  type metadata accessor for FormatContent(0);
  sub_1D5B59538(0, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E62F8]);
  sub_1D609C86C(&unk_1EDF1B0C0, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup);
  sub_1D5B5990C(qword_1EDF0E300, type metadata accessor for FormatContentSubgroup);

  v17 = sub_1D72623BC();

  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v14 + 8))(a2, v13);
  sub_1D609C8C4(a1, type metadata accessor for FormatContent);

  *(a6 + v10[11]) = v17;
  return result;
}

uint64_t sub_1D608BC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FormatArrangementResolverOptions();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, v2 + *(a1 + 40), v7);
  v11 = sub_1D725C42C();
  return (*(*(v11 - 8) + 32))(a2, v9, v11);
}

uint64_t FormatArrangementResolver.resolve(arrangement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 864) = v3;
  *(v4 + 856) = a3;
  *(v4 + 848) = a1;
  type metadata accessor for FormatContentPool();
  *(v4 + 872) = swift_task_alloc();
  v7 = sub_1D725891C();
  *(v4 + 880) = v7;
  *(v4 + 888) = *(v7 - 8);
  *(v4 + 896) = swift_task_alloc();
  sub_1D5B59538(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  *(v4 + 904) = swift_task_alloc();
  *(v4 + 912) = swift_task_alloc();
  *(v4 + 920) = swift_task_alloc();
  *(v4 + 928) = swift_task_alloc();
  *(v4 + 936) = type metadata accessor for FormatContent(0);
  *(v4 + 944) = swift_task_alloc();
  *(v4 + 952) = *(a3 + 16);
  *(v4 + 960) = *(a3 + 24);
  v8 = type metadata accessor for FormatArrangementCuration();
  *(v4 + 968) = v8;
  v9 = *(v8 - 8);
  *(v4 + 976) = v9;
  *(v4 + 984) = *(v9 + 64);
  *(v4 + 992) = swift_task_alloc();
  *(v4 + 1000) = swift_task_alloc();
  v10 = type metadata accessor for FormatArrangementTemplateResult();
  *(v4 + 1008) = v10;
  v11 = *(v10 - 8);
  *(v4 + 1016) = v11;
  *(v4 + 1024) = *(v11 + 64);
  *(v4 + 1032) = swift_task_alloc();
  v12 = sub_1D725C42C();
  *(v4 + 1040) = v12;
  *(v4 + 1048) = *(v12 - 8);
  *(v4 + 1056) = swift_task_alloc();
  *(v4 + 1064) = swift_task_alloc();
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = *a2;
  *(v4 + 1088) = *(a2 + 8);
  *(v4 + 1104) = *(a2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D608C05C, 0, 0);
}

uint64_t sub_1D608C05C()
{
  v250 = v0;
  v1 = v0;
  sub_1D608BC28(v1[107], v1[134]);

  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();

  v222 = v0;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1104);
    v5 = *(v0 + 1096);
    v236 = *(v0 + 1080);
    v240 = *(v0 + 1072);
    v6 = *(v0 + 1048);
    v7 = *(v0 + 1040);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v246 = v9;
    *v8 = 136446210;
    v247 = v236;
    v248 = v5;
    v249 = v4;
    type metadata accessor for FormatArrangement();
    v10 = sub_1D5F90834();
    v12 = v11;

    v13 = sub_1D5BC5100(v10, v12, &v246);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D5B42000, v2, v3, "Format arrangement start resolving arrangement %{public}s...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v14 = v9;
    v1 = v222;
    MEMORY[0x1DA6FD500](v14, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);

    v15 = *(v6 + 8);
    v15(v240, v7);
  }

  else
  {
    v16 = *(v0 + 1072);
    v17 = *(v0 + 1048);
    v18 = *(v0 + 1040);

    v15 = *(v17 + 8);
    v15(v16, v18);
  }

  v1[139] = v15;
  v19 = v1[138];
  v20 = v1[137];
  v241 = *(v1 + 135);
  v1[102] = sub_1D7261CFC();
  sub_1D69ABCB4(v1 + 2);
  v247 = v241;
  v248 = v20;
  v249 = v19;
  v1[140] = type metadata accessor for FormatArrangement();
  v1[141] = sub_1D5B8EF70();
  type metadata accessor for FormatArrangementSlot();

  if (sub_1D726279C())
  {
    v21 = sub_1D726277C();
    sub_1D726271C();
    if (v21)
    {
      v22 = v1[141];
      v23 = *(v22 + 32);
      v1[142] = v23;
      v24 = *(v22 + 40);
      v25 = *(v1 + 1);
      v26 = *(v1 + 2);
      v27 = *(v1 + 4);
      *(v1 + 8) = *(v1 + 3);
      *(v1 + 9) = v27;
      v28 = *(v1 + 2);
      v29 = *(v1 + 3);
      v30 = *(v1 + 1);
      *(v1 + 6) = v25;
      *(v1 + 7) = v28;
      *(v1 + 12) = v26;
      *(v1 + 13) = v29;
      v31 = *(v1 + 5);
      *(v1 + 14) = *(v1 + 4);
      *(v1 + 15) = v31;
      *(v1 + 809) = v24;
      v1[143] = 1;
      v1[100] = v23;
      *(v1 + 808) = v24;
      *(v1 + 10) = v31;
      *(v1 + 11) = v30;
      sub_1D5EB6610(v23, v24);
      v32 = type metadata accessor for FormatArrangementResolverContext();
      v1[144] = v32;
      v33 = *(v32 - 8);
      v1[145] = v33;
      (*(v33 + 16))(v1 + 32, v1 + 12, v32);
      v34 = swift_task_alloc();
      v1[146] = v34;
      *v34 = v1;
      v34[1] = sub_1D608D824;
      v35 = v1[107];

      return sub_1D608F6DC((v1 + 100), v1 + 11, v35);
    }

    goto LABEL_158;
  }

  v37 = v1[133];
  v38 = v1[107];
  v39 = *(v1 + 4);
  *(v1 + 43) = *(v1 + 3);
  *(v1 + 44) = v39;
  *(v1 + 45) = *(v1 + 5);
  v40 = *(v1 + 2);
  *(v1 + 41) = *(v1 + 1);
  *(v1 + 42) = v40;
  v41 = type metadata accessor for FormatArrangementResolverContext();
  (*(*(v41 - 8) + 8))(v1 + 82, v41);

  sub_1D608BC28(v38, v37);

  v42 = sub_1D725C3FC();
  v43 = sub_1D7262EDC();

  if (os_log_type_enabled(v42, v43))
  {
    v242 = v1[139];
    v44 = v1[138];
    v45 = v1[137];
    v237 = *(v1 + 135);
    v46 = v1[133];
    v47 = v1[130];
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v246 = v49;
    *v48 = 136446210;
    v247 = v237;
    v248 = v45;
    v249 = v44;
    v50 = sub_1D5F90834();
    v52 = v51;

    v53 = sub_1D5BC5100(v50, v52, &v246);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_1D5B42000, v42, v43, "Format arrangement successfully resolved arrangement %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v54 = v49;
    v1 = v222;
    MEMORY[0x1DA6FD500](v54, -1, -1);
    MEMORY[0x1DA6FD500](v48, -1, -1);

    v242(v46, v47);
  }

  else
  {
    v55 = v1[139];
    v56 = v1[133];
    v57 = v1[130];

    v55(v56, v57);
  }

  v58 = MEMORY[0x1E69E7CC0];
  *&v247 = MEMORY[0x1E69E7CC0];
  v211 = v1[102];
  if (!sub_1D726279C())
  {
    goto LABEL_129;
  }

  v59 = 0;
  v220 = (v1 + 92);
  v60 = (v1 + 96);
  v205 = v1[129];
  v200 = v1[128];
  v202 = v1[123];
  v238 = v1[121];
  v207 = v1[127];
  v203 = *(v1[126] + 36);
  v225 = v1[122];
  v223 = (v225 + 8);
  v61 = MEMORY[0x1E69E7CC0];
  v62 = MEMORY[0x1E69E7CC0];
  v218 = MEMORY[0x1E69E7CC0];
  v221 = MEMORY[0x1E69E7CC0];
  v213 = MEMORY[0x1E69E7CC0];
  v63 = v211;
  v219 = (v1 + 96);
  while (1)
  {
    v58 = v1[126];
    v64 = sub_1D726277C();
    sub_1D726271C();
    if (v64)
    {
      (*(v207 + 16))(v1[129], v63 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v59, v1[126]);
      v65 = __OFADD__(v59, 1);
      v66 = v59 + 1;
      if (v65)
      {
        break;
      }

      goto LABEL_17;
    }

    v146 = v59;
    result = sub_1D7263DBC();
    if (v200 != 8)
    {
      goto LABEL_160;
    }

    v147 = v1[129];
    v148 = v1[126];
    v1[104] = result;
    v58 = result;
    (*(v207 + 16))(v147, v1 + 104, v148);
    swift_unknownObjectRelease();
    v66 = v59 + 1;
    if (__OFADD__(v146, 1))
    {
      break;
    }

LABEL_17:
    v209 = v66;
    v67 = v1[129];
    v68 = v1[126];
    v69 = *(v205 + v203);
    v70 = *(v207 + 8);

    v70(v67, v68);
    type metadata accessor for FormatArrangementComponentResult();
    if (sub_1D726279C())
    {
      v71 = 0;
      v214 = v69 + 32;
      do
      {
        v72 = sub_1D726277C();
        sub_1D726271C();
        if ((v72 & 1) == 0)
        {
          goto LABEL_148;
        }

        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
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
          result = sub_1D7263DBC();
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
          return result;
        }

        v74 = (v214 + 32 * v71);
        v75 = *v74;
        v76 = *(*v74 + 16);
        v77 = v221[2];
        v78 = v77 + v76;
        if (__OFADD__(v77, v76))
        {
          goto LABEL_150;
        }

        v79 = v74[1];
        v80 = *(v74 + 16);
        v216 = v74[3];
        v217 = v73;

        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v221;
        if (!isUniquelyReferenced_nonNull_native || v78 > v221[3] >> 1)
        {
          if (v77 <= v78)
          {
            v83 = v77 + v76;
          }

          else
          {
            v83 = v77;
          }

          v82 = sub_1D6991D38(isUniquelyReferenced_nonNull_native, v83, 1, v221);
        }

        v221 = v82;
        if (*(v75 + 16))
        {
          v84 = (*(v82 + 24) >> 1) - *(v82 + 16);
          type metadata accessor for FormatContentSubgroup();
          if (v84 < v76)
          {
            goto LABEL_152;
          }

          swift_arrayInitWithCopy();

          v85 = v218;
          if (v76)
          {
            v86 = v221[2];
            v65 = __OFADD__(v86, v76);
            v87 = v86 + v76;
            if (v65)
            {
              goto LABEL_155;
            }

            v221[2] = v87;
          }
        }

        else
        {

          v85 = v218;
          if (v76)
          {
            goto LABEL_151;
          }
        }

        if (v80)
        {

          if (sub_1D726279C())
          {
            v88 = 0;
            v228 = v79;
            while (1)
            {
              v90 = sub_1D726277C();
              sub_1D726271C();
              if (v90)
              {
                (*(v225 + 16))(v1[125], v79 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v88, v1[121]);
                v65 = __OFADD__(v88, 1);
                v91 = v88 + 1;
                if (v65)
                {
                  goto LABEL_137;
                }
              }

              else
              {
                result = sub_1D7263DBC();
                if (v202 != 8)
                {
                  goto LABEL_159;
                }

                v132 = v1[125];
                v133 = v1[121];
                v1[105] = result;
                (*(v225 + 16))(v132, v1 + 105, v133);
                swift_unknownObjectRelease();
                v65 = __OFADD__(v88, 1);
                v91 = v88 + 1;
                if (v65)
                {
LABEL_137:
                  __break(1u);
LABEL_138:
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
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
LABEL_146:
                  __break(1u);
LABEL_147:
                  __break(1u);
LABEL_148:
                  sub_1D7263DBC();
                  __break(1u);
                  goto LABEL_149;
                }
              }

              v243 = v61;
              v92 = v1[124];
              (*(v225 + 32))(v92, v1[125], v1[121]);
              v93 = *(v92 + *(v238 + 48));
              v94 = v93 >> 62;
              v95 = v93 >> 62 ? sub_1D7263BFC() : *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v96 = v62 >> 62;
              if (v62 >> 62)
              {
                v134 = sub_1D7263BFC();
                v98 = v134 + v95;
                if (__OFADD__(v134, v95))
                {
                  goto LABEL_138;
                }
              }

              else
              {
                v97 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v98 = v97 + v95;
                if (__OFADD__(v97, v95))
                {
                  goto LABEL_138;
                }
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                break;
              }

              if (v96)
              {
                goto LABEL_53;
              }

LABEL_54:
              v62 = sub_1D7263DDC();
              v99 = v62 & 0xFFFFFFFFFFFFFF8;
              v100 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_55:
              v234 = v62;
              v101 = *(v99 + 16);
              if (v94)
              {
                v102 = sub_1D7263BFC();
                v232 = v91;
                if (v102)
                {
LABEL_57:
                  if (v100 - v101 < v95)
                  {
                    goto LABEL_142;
                  }

                  v103 = v99 + 8 * v101 + 32;
                  v230 = v95;
                  if (v94)
                  {
                    if (v102 < 1)
                    {
                      goto LABEL_146;
                    }

                    sub_1D5B9EE48();
                    sub_1D5B5990C(&qword_1EC8812B0, sub_1D5B9EE48);
                    for (i = 0; i != v102; ++i)
                    {
                      v105 = sub_1D6D87760(v60, i, v93);
                      v107 = *v106;
                      swift_unknownObjectRetain();
                      (v105)(v60, 0);
                      *(v103 + 8 * i) = v107;
                    }
                  }

                  else
                  {
                    sub_1D5B5534C(0, &qword_1EDF3C720);
                    swift_arrayInitWithCopy();
                  }

                  v1 = v222;
                  v61 = v243;
                  if (v230 > 0)
                  {
                    v108 = *(v99 + 16);
                    v65 = __OFADD__(v108, v230);
                    v109 = v108 + v230;
                    if (v65)
                    {
                      goto LABEL_144;
                    }

                    *(v99 + 16) = v109;
                  }

                  goto LABEL_69;
                }
              }

              else
              {
                v102 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v232 = v91;
                if (v102)
                {
                  goto LABEL_57;
                }
              }

              v61 = v243;
              if (v95 > 0)
              {
                goto LABEL_139;
              }

LABEL_69:
              v110 = *(v1[124] + *(v238 + 52));
              v111 = v110 >> 62;
              if (v110 >> 62)
              {
                v112 = sub_1D7263BFC();
              }

              else
              {
                v112 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v113 = v61 >> 62;
              if (v61 >> 62)
              {
                v135 = sub_1D7263BFC();
                v115 = v135 + v112;
                if (__OFADD__(v135, v112))
                {
                  goto LABEL_140;
                }
              }

              else
              {
                v114 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v115 = v114 + v112;
                if (__OFADD__(v114, v112))
                {
                  goto LABEL_140;
                }
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                if (!v113)
                {
                  v116 = v61 & 0xFFFFFFFFFFFFFF8;
                  v117 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
                  if (v117 >= v115)
                  {
                    goto LABEL_80;
                  }

                  goto LABEL_79;
                }

LABEL_78:
                sub_1D7263BFC();
                goto LABEL_79;
              }

              if (v113)
              {
                goto LABEL_78;
              }

LABEL_79:
              v61 = sub_1D7263DDC();
              v116 = v61 & 0xFFFFFFFFFFFFFF8;
              v117 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_80:
              v118 = *(v116 + 16);
              if (v111)
              {
                v119 = sub_1D7263BFC();
                if (v119)
                {
LABEL_84:
                  if (v117 - v118 < v112)
                  {
                    goto LABEL_143;
                  }

                  v120 = v116 + 8 * v118 + 32;
                  if (v111)
                  {
                    if (v119 < 1)
                    {
                      goto LABEL_147;
                    }

                    v244 = v61;
                    sub_1D5E9D658();
                    sub_1D5B5990C(&qword_1EC8812C0, sub_1D5E9D658);
                    for (j = 0; j != v119; ++j)
                    {
                      v124 = sub_1D6D877E0(v220, j, v110);
                      v126 = *v125;
                      (v124)(v220, 0);
                      *(v120 + 8 * j) = v126;
                    }

                    v1 = v222;
                    v127 = v222[124];
                    v128 = v222[121];

                    (*v223)(v127, v128);
                    v61 = v244;
                    v60 = v219;
                  }

                  else
                  {
                    v121 = v1[124];
                    v122 = v1[121];
                    sub_1D5B5A498(0, &qword_1EDF3C6B0);
                    swift_arrayInitWithCopy();
                    (*v223)(v121, v122);
                  }

                  v89 = v112 <= 0;
                  v129 = v112;
                  v88 = v232;
                  v62 = v234;
                  if (!v89)
                  {
                    v130 = *(v116 + 16);
                    v65 = __OFADD__(v130, v129);
                    v131 = v130 + v129;
                    if (v65)
                    {
                      goto LABEL_145;
                    }

                    *(v116 + 16) = v131;
                  }

                  goto LABEL_41;
                }
              }

              else
              {
                v119 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v119)
                {
                  goto LABEL_84;
                }
              }

              (*v223)(v1[124], v1[121]);

              v89 = v112 <= 0;
              v88 = v232;
              v62 = v234;
              if (!v89)
              {
                goto LABEL_141;
              }

LABEL_41:
              v79 = v228;
              if (v88 == sub_1D726279C())
              {
                goto LABEL_118;
              }
            }

            if (!v96)
            {
              v99 = v62 & 0xFFFFFFFFFFFFFF8;
              v100 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
              if (v100 >= v98)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            }

LABEL_53:
            sub_1D7263BFC();
            goto LABEL_54;
          }

LABEL_118:
        }

        else
        {
          v136 = *(v79 + 16);
          v137 = *(v85 + 2);
          v138 = v137 + v136;
          if (__OFADD__(v137, v136))
          {
            goto LABEL_153;
          }

          v139 = swift_isUniquelyReferenced_nonNull_native();
          v140 = v218;
          if (!v139 || v138 > *(v218 + 3) >> 1)
          {
            if (v137 <= v138)
            {
              v141 = v137 + v136;
            }

            else
            {
              v141 = v137;
            }

            v140 = sub_1D6991D24(v139, v141, 1, v218);
          }

          v218 = v140;
          if (*(v79 + 16))
          {
            if ((*(v140 + 3) >> 1) - *(v140 + 2) < v136)
            {
              goto LABEL_156;
            }

            v142 = v140;
            swift_arrayInitWithCopy();

            if (v136)
            {
              v143 = *(v142 + 2);
              v65 = __OFADD__(v143, v136);
              v144 = v143 + v136;
              if (v65)
              {
                goto LABEL_157;
              }

              *(v142 + 2) = v144;
            }
          }

          else
          {

            if (v136)
            {
              goto LABEL_154;
            }
          }
        }

        if (v216)
        {
          v145 = swift_retain_n();
          MEMORY[0x1DA6F9CE0](v145);
          if (*((v247 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v247 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();

          v213 = v247;
        }

        else
        {
        }

        v71 = v217;
      }

      while (v217 != sub_1D726279C());
    }

    v63 = v211;
    v59 = v209;
    if (v209 == sub_1D726279C())
    {
      goto LABEL_130;
    }
  }

  __break(1u);
LABEL_129:
  v61 = v58;
  v62 = v58;
  v218 = v58;
  v221 = v58;
  v213 = v58;
LABEL_130:
  v235 = v62;
  v245 = v61;
  v149 = v1[117];
  v150 = v1[116];
  v224 = v1[114];
  v151 = v1[112];
  v152 = v1;
  v153 = v1[111];
  v154 = v152[110];
  v155 = v152[108];

  v156 = sub_1D72608BC();
  v157 = *(v156 - 8);
  v226 = *(v157 + 56);
  v226(v150, 1, 1, v156);
  v215 = *v155;
  v239 = *(v155 + 1);
  (*(v153 + 16))(v151, &v155[v149[5]], v154);
  v158 = v149[7];
  v159 = &v155[v149[6]];
  v210 = *v159;
  v233 = *(v159 + 1);
  v212 = *&v155[v158];
  v227 = *&v155[v158 + 8];
  v160 = v149[9];
  v161 = &v155[v149[8]];
  v204 = *v161;
  v229 = *(v161 + 1);
  v208 = *&v155[v160];
  v231 = *&v155[v160 + 8];
  v162 = &v155[v149[10]];
  v163 = *v162;
  v164 = *(v162 + 1);
  sub_1D609C5E8(v150, v224, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  v165 = *(v157 + 48);
  v206 = v163;
  v198 = v156;
  v196 = v164;
  if (v165(v224, 1, v156) == 1)
  {
    v166 = v152[114];
    sub_1D606BE74(v152[108] + *(v152[117] + 44), v152[115]);
    LODWORD(v166) = v165(v166, 1, v156);

    v167 = v152;
    if (v166 != 1)
    {
      sub_1D5CF287C(v152[114], &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    }
  }

  else
  {
    v168 = v152[115];
    (*(v157 + 32))(v168, v152[114], v156);
    v226(v168, 0, 1, v156);

    v167 = v152;
  }

  v169 = v167[118];
  v170 = v167[117];
  v171 = v167[115];
  v197 = v167[113];
  v172 = v167[111];
  v173 = v167[108];
  v174 = *(v173 + v170[12]);
  v175 = *(v173 + v170[13]);
  v176 = *(v173 + v170[14]);
  v199 = v167[109];
  v177 = *(v173 + v170[15]);
  v178 = *(v173 + v170[16]);
  v179 = v167;
  v180 = *(v173 + v170[18]);
  v195 = *(v173 + v170[19]);
  v201 = v179[106];
  *v169 = v215;
  *(v169 + 1) = v239;
  (*(v172 + 32))(&v169[v149[5]]);
  v181 = &v169[v149[6]];
  *v181 = v210;
  *(v181 + 1) = v233;
  v182 = &v169[v149[7]];
  *v182 = v212;
  *(v182 + 1) = v227;
  v183 = &v169[v149[8]];
  *v183 = v204;
  *(v183 + 1) = v229;
  v184 = &v169[v149[9]];
  *v184 = v208;
  *(v184 + 1) = v231;
  v185 = &v169[v149[10]];
  *v185 = v206;
  *(v185 + 1) = v196;
  sub_1D609C5E8(v171, &v169[v170[11]], &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  *&v169[v170[12]] = v174;
  *&v169[v170[13]] = v175;
  *&v169[v170[14]] = v176;
  *&v169[v170[15]] = v177;
  *&v169[v170[16]] = v178;
  *&v169[v170[17]] = v221;
  *&v169[v170[18]] = v180;
  *&v169[v170[19]] = v195;
  v226(v197, 1, 1, v198);

  v186 = MEMORY[0x1E69E7CC0];
  v187 = sub_1D605A62C(MEMORY[0x1E69E7CC0]);
  v188 = sub_1D605A62C(v186);
  v189 = sub_1D605A5F8(v186);
  v190 = sub_1D605AD18(v186);
  v191 = sub_1D605B9BC(v186);
  v192 = sub_1D605B9F0(v186);
  v193 = sub_1D605ACB8(v186);
  FormatContentPool.init(headlines:headlineLists:issues:tags:tagFeeds:tagFeedFetches:puzzles:puzzleTypes:puzzleStatistics:recipes:recipeLists:placeholders:slotPlaceholders:webArchivePromises:resourcePromises:sportsDataVisualizations:genericDataVisualizations:sponsoredAdBanner:)(v235, v187, v186, v186, v188, v189, v186, v186, v199, v186, v245, v190, v218, v186, v191, v192, v186, v193, v197);
  sub_1D6DF4574(v169, v199, v213, v201);

  v194 = v222[1];

  return v194();
}

uint64_t sub_1D608D824(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1176) = a1;
  *(v3 + 1184) = v1;

  if (v1)
  {
    v4 = *(v3 + 1160);
    v5 = *(v3 + 1152);

    v6 = *(v3 + 176);
    v7 = *(v3 + 192);
    v8 = *(v3 + 208);
    v9 = *(v3 + 240);
    *(v3 + 464) = *(v3 + 224);
    *(v3 + 480) = v9;
    *(v3 + 432) = v7;
    *(v3 + 448) = v8;
    *(v3 + 416) = v6;
    v10 = *(v4 + 8);
    v10(v3 + 416, v5);
    v11 = *(v3 + 64);
    *(v3 + 368) = *(v3 + 48);
    *(v3 + 384) = v11;
    *(v3 + 400) = *(v3 + 80);
    v12 = *(v3 + 32);
    *(v3 + 336) = *(v3 + 16);
    *(v3 + 352) = v12;
    v10(v3 + 336, v5);

    v13 = sub_1D608F370;
  }

  else
  {
    v14 = *(v3 + 1160);
    v15 = *(v3 + 1152);
    v16 = *(v3 + 176);
    v17 = *(v3 + 192);
    v18 = *(v3 + 240);
    *(v3 + 544) = *(v3 + 224);
    *(v3 + 560) = v18;
    v19 = *(v3 + 208);
    *(v3 + 512) = v17;
    *(v3 + 528) = v19;
    *(v3 + 496) = v16;
    v20 = *(v14 + 8);
    v21 = *(v3 + 1136);
    *(v3 + 1192) = v20;
    *(v3 + 1200) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22 = *(v3 + 809);
    v20(v3 + 496, v15);
    sub_1D5EB6624(v21, v22);
    v13 = sub_1D608DA10;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

uint64_t sub_1D608DA10()
{
  v256 = v0;
  v1 = v0;
  v2 = *(v0 + 1184);
  sub_1D69ABCD4(*(v0 + 1176), *(v0 + 1152));
  v227 = v0;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 1192);
    v5 = *(v0 + 1152);

    v6 = *(v1 + 4);
    *(v1 + 38) = *(v1 + 3);
    *(v1 + 39) = v6;
    *(v1 + 40) = *(v1 + 5);
    v7 = *(v1 + 2);
    *(v1 + 36) = *(v1 + 1);
    *(v1 + 37) = v7;
    v4(v1 + 72, v5);

    sub_1D608BC28(v1[107], v1[132]);

    v8 = v3;
    v9 = sub_1D725C3FC();
    v10 = sub_1D7262EBC();

    v247 = v3;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v1[138];
      v12 = v1[137];
      v237 = *(v1 + 135);
      v240 = v1[132];
      v243 = v1[139];
      v13 = v1[130];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v252 = v16;
      *v14 = 136446466;
      v253 = v237;
      v254 = v12;
      v255 = v11;
      v17 = sub_1D5F90834();
      v19 = v18;

      v20 = sub_1D5BC5100(v17, v19, &v252);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2114;
      v21 = v247;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v22;
      *v15 = v22;
      _os_log_impl(&dword_1D5B42000, v9, v10, "Format arrangement failed resolving arrangement %{public}s, error=%{public}@", v14, 0x16u);
      sub_1D609C8C4(v15, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1DA6FD500](v16, -1, -1);
      v23 = v14;
      v1 = v227;
      MEMORY[0x1DA6FD500](v23, -1, -1);

      v243(v240, v13);
    }

    else
    {
      v43 = v1[139];
      v44 = v1[132];
      v45 = v1[130];

      v43(v44, v45);
    }

    swift_willThrow();

    v46 = v1[1];
    goto LABEL_9;
  }

  v24 = *(v0 + 1144);
  *(v0 + 824) = *(v0 + 1176);
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D72627AC();
  type metadata accessor for FormatArrangementSlot();
  if (v24 != sub_1D726279C())
  {
    v48 = *(v0 + 1144);
    v49 = sub_1D726277C();
    sub_1D726271C();
    if (v49)
    {
      v50 = v1[141] + 16 * v48;
      result = *(v50 + 32);
      v1[142] = result;
      v51 = *(v50 + 40);
      *(v1 + 809) = v51;
      v1[143] = v48 + 1;
      if (!__OFADD__(v48, 1))
      {
        v1[100] = result;
        *(v1 + 808) = v51;
        v52 = *(v1 + 3);
        v53 = *(v1 + 4);
        *(v1 + 8) = v52;
        *(v1 + 9) = v53;
        v54 = *(v1 + 5);
        v56 = *(v1 + 1);
        v55 = *(v1 + 2);
        *(v1 + 6) = v56;
        *(v1 + 7) = v55;
        *(v1 + 14) = v53;
        *(v1 + 15) = v54;
        *(v1 + 12) = v55;
        *(v1 + 13) = v52;
        *(v1 + 10) = v54;
        *(v1 + 11) = v56;
        sub_1D5EB6610(result, v51);
        v57 = type metadata accessor for FormatArrangementResolverContext();
        v1[144] = v57;
        v58 = *(v57 - 8);
        v1[145] = v58;
        (*(v58 + 16))(v1 + 32, v1 + 12, v57);
        v59 = swift_task_alloc();
        v1[146] = v59;
        *v59 = v1;
        v59[1] = sub_1D608D824;
        v60 = v1[107];

        return sub_1D608F6DC((v1 + 100), v1 + 11, v60);
      }

      goto LABEL_163;
    }

LABEL_162:
    result = sub_1D7263DBC();
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
    return result;
  }

  v25 = *(v0 + 1064);
  v26 = *(v0 + 856);
  v27 = *(v0 + 64);
  *(v0 + 688) = *(v0 + 48);
  *(v0 + 704) = v27;
  *(v0 + 720) = *(v0 + 80);
  v28 = *(v0 + 32);
  *(v0 + 656) = *(v0 + 16);
  *(v0 + 672) = v28;
  v29 = type metadata accessor for FormatArrangementResolverContext();
  (*(*(v29 - 8) + 8))(v0 + 656, v29);

  sub_1D608BC28(v26, v25);

  v30 = sub_1D725C3FC();
  v31 = sub_1D7262EDC();

  if (os_log_type_enabled(v30, v31))
  {
    v248 = *(v0 + 1112);
    v32 = *(v0 + 1104);
    v33 = *(v0 + 1096);
    v244 = *(v0 + 1080);
    v34 = *(v0 + 1064);
    v35 = *(v0 + 1040);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v252 = v37;
    *v36 = 136446210;
    v253 = v244;
    v254 = v33;
    v255 = v32;
    v38 = sub_1D5F90834();
    v40 = v39;

    v41 = sub_1D5BC5100(v38, v40, &v252);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_1D5B42000, v30, v31, "Format arrangement successfully resolved arrangement %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v42 = v37;
    v1 = v227;
    MEMORY[0x1DA6FD500](v42, -1, -1);
    MEMORY[0x1DA6FD500](v36, -1, -1);

    v248(v34, v35);
  }

  else
  {
    v61 = *(v0 + 1112);
    v62 = *(v0 + 1064);
    v63 = *(v0 + 1040);

    v61(v62, v63);
  }

  v64 = MEMORY[0x1E69E7CC0];
  *&v253 = MEMORY[0x1E69E7CC0];
  v216 = v1[102];
  if (!sub_1D726279C())
  {
    goto LABEL_135;
  }

  v65 = 0;
  v225 = (v1 + 92);
  v66 = (v1 + 96);
  v210 = v1[129];
  v205 = v1[128];
  v207 = v1[123];
  v245 = v1[121];
  v212 = v1[127];
  v208 = *(v1[126] + 36);
  v230 = v1[122];
  v228 = (v230 + 8);
  v67 = MEMORY[0x1E69E7CC0];
  v68 = MEMORY[0x1E69E7CC0];
  v223 = MEMORY[0x1E69E7CC0];
  v226 = MEMORY[0x1E69E7CC0];
  v218 = MEMORY[0x1E69E7CC0];
  v69 = v216;
  v224 = (v1 + 96);
  while (1)
  {
    v64 = v1[126];
    v70 = sub_1D726277C();
    sub_1D726271C();
    if (v70)
    {
      (*(v212 + 16))(v1[129], v69 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v65, v1[126]);
      v71 = __OFADD__(v65, 1);
      v72 = v65 + 1;
      if (v71)
      {
        break;
      }

      goto LABEL_23;
    }

    v152 = v65;
    result = sub_1D7263DBC();
    if (v205 != 8)
    {
      goto LABEL_165;
    }

    v153 = v1[129];
    v154 = v1[126];
    v1[104] = result;
    v64 = result;
    (*(v212 + 16))(v153, v1 + 104, v154);
    swift_unknownObjectRelease();
    v72 = v65 + 1;
    if (__OFADD__(v152, 1))
    {
      break;
    }

LABEL_23:
    v214 = v72;
    v73 = v1[129];
    v74 = v1[126];
    v75 = *(v210 + v208);
    v76 = *(v212 + 8);

    v76(v73, v74);
    type metadata accessor for FormatArrangementComponentResult();
    if (sub_1D726279C())
    {
      v77 = 0;
      v219 = v75 + 32;
      while (1)
      {
        v78 = sub_1D726277C();
        sub_1D726271C();
        if ((v78 & 1) == 0)
        {
          goto LABEL_152;
        }

        v79 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          break;
        }

        v80 = (v219 + 32 * v77);
        v81 = *v80;
        v82 = *(*v80 + 16);
        v83 = v226[2];
        v84 = v83 + v82;
        if (__OFADD__(v83, v82))
        {
          goto LABEL_154;
        }

        v85 = v80[1];
        v86 = *(v80 + 16);
        v221 = v80[3];
        v222 = v79;

        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v226;
        if (!isUniquelyReferenced_nonNull_native || v84 > v226[3] >> 1)
        {
          if (v83 <= v84)
          {
            v89 = v83 + v82;
          }

          else
          {
            v89 = v83;
          }

          v88 = sub_1D6991D38(isUniquelyReferenced_nonNull_native, v89, 1, v226);
        }

        v226 = v88;
        if (*(v81 + 16))
        {
          v90 = (*(v88 + 24) >> 1) - *(v88 + 16);
          type metadata accessor for FormatContentSubgroup();
          if (v90 < v82)
          {
            goto LABEL_156;
          }

          swift_arrayInitWithCopy();

          v91 = v223;
          if (v82)
          {
            v92 = v226[2];
            v71 = __OFADD__(v92, v82);
            v93 = v92 + v82;
            if (v71)
            {
              goto LABEL_159;
            }

            v226[2] = v93;
          }
        }

        else
        {

          v91 = v223;
          if (v82)
          {
            goto LABEL_155;
          }
        }

        if (v86)
        {

          if (sub_1D726279C())
          {
            v94 = 0;
            v233 = v85;
            while (1)
            {
              v96 = sub_1D726277C();
              sub_1D726271C();
              if (v96)
              {
                (*(v230 + 16))(v1[125], v85 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v94, v1[121]);
                v71 = __OFADD__(v94, 1);
                v97 = v94 + 1;
                if (v71)
                {
                  goto LABEL_141;
                }
              }

              else
              {
                result = sub_1D7263DBC();
                if (v207 != 8)
                {
                  goto LABEL_164;
                }

                v138 = v1[125];
                v139 = v1[121];
                v1[105] = result;
                (*(v230 + 16))(v138, v1 + 105, v139);
                swift_unknownObjectRelease();
                v71 = __OFADD__(v94, 1);
                v97 = v94 + 1;
                if (v71)
                {
LABEL_141:
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
LABEL_146:
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
                  sub_1D7263DBC();
                  __break(1u);
                  goto LABEL_153;
                }
              }

              v249 = v67;
              v98 = v1[124];
              (*(v230 + 32))(v98, v1[125], v1[121]);
              v99 = *(v98 + *(v245 + 48));
              v100 = v99 >> 62;
              v101 = v99 >> 62 ? sub_1D7263BFC() : *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v102 = v68 >> 62;
              if (v68 >> 62)
              {
                v140 = sub_1D7263BFC();
                v104 = v140 + v101;
                if (__OFADD__(v140, v101))
                {
                  goto LABEL_142;
                }
              }

              else
              {
                v103 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v104 = v103 + v101;
                if (__OFADD__(v103, v101))
                {
                  goto LABEL_142;
                }
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                break;
              }

              if (v102)
              {
                goto LABEL_59;
              }

LABEL_60:
              v68 = sub_1D7263DDC();
              v105 = v68 & 0xFFFFFFFFFFFFFF8;
              v106 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_61:
              v241 = v68;
              v107 = *(v105 + 16);
              if (v100)
              {
                v108 = sub_1D7263BFC();
                v238 = v97;
                if (v108)
                {
LABEL_63:
                  if (v106 - v107 < v101)
                  {
                    goto LABEL_146;
                  }

                  v109 = v105 + 8 * v107 + 32;
                  v235 = v101;
                  if (v100)
                  {
                    if (v108 < 1)
                    {
                      goto LABEL_150;
                    }

                    sub_1D5B9EE48();
                    sub_1D5B5990C(&qword_1EC8812B0, sub_1D5B9EE48);
                    for (i = 0; i != v108; ++i)
                    {
                      v111 = sub_1D6D87760(v66, i, v99);
                      v113 = *v112;
                      swift_unknownObjectRetain();
                      (v111)(v66, 0);
                      *(v109 + 8 * i) = v113;
                    }
                  }

                  else
                  {
                    sub_1D5B5534C(0, &qword_1EDF3C720);
                    swift_arrayInitWithCopy();
                  }

                  v1 = v227;
                  v67 = v249;
                  if (v235 > 0)
                  {
                    v114 = *(v105 + 16);
                    v71 = __OFADD__(v114, v235);
                    v115 = v114 + v235;
                    if (v71)
                    {
                      goto LABEL_148;
                    }

                    *(v105 + 16) = v115;
                  }

                  goto LABEL_75;
                }
              }

              else
              {
                v108 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v238 = v97;
                if (v108)
                {
                  goto LABEL_63;
                }
              }

              v67 = v249;
              if (v101 > 0)
              {
                goto LABEL_143;
              }

LABEL_75:
              v116 = *(v1[124] + *(v245 + 52));
              v117 = v116 >> 62;
              if (v116 >> 62)
              {
                v118 = sub_1D7263BFC();
              }

              else
              {
                v118 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v119 = v67 >> 62;
              if (v67 >> 62)
              {
                v141 = sub_1D7263BFC();
                v121 = v141 + v118;
                if (__OFADD__(v141, v118))
                {
                  goto LABEL_144;
                }
              }

              else
              {
                v120 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v121 = v120 + v118;
                if (__OFADD__(v120, v118))
                {
                  goto LABEL_144;
                }
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                if (!v119)
                {
                  v122 = v67 & 0xFFFFFFFFFFFFFF8;
                  v123 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
                  if (v123 >= v121)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_85;
                }

LABEL_84:
                sub_1D7263BFC();
                goto LABEL_85;
              }

              if (v119)
              {
                goto LABEL_84;
              }

LABEL_85:
              v67 = sub_1D7263DDC();
              v122 = v67 & 0xFFFFFFFFFFFFFF8;
              v123 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_86:
              v124 = *(v122 + 16);
              if (v117)
              {
                v125 = sub_1D7263BFC();
                if (v125)
                {
LABEL_90:
                  if (v123 - v124 < v118)
                  {
                    goto LABEL_147;
                  }

                  v126 = v122 + 8 * v124 + 32;
                  if (v117)
                  {
                    if (v125 < 1)
                    {
                      goto LABEL_151;
                    }

                    v250 = v67;
                    sub_1D5E9D658();
                    sub_1D5B5990C(&qword_1EC8812C0, sub_1D5E9D658);
                    for (j = 0; j != v125; ++j)
                    {
                      v130 = sub_1D6D877E0(v225, j, v116);
                      v132 = *v131;
                      (v130)(v225, 0);
                      *(v126 + 8 * j) = v132;
                    }

                    v1 = v227;
                    v133 = v227[124];
                    v134 = v227[121];

                    (*v228)(v133, v134);
                    v67 = v250;
                    v66 = v224;
                  }

                  else
                  {
                    v127 = v1[124];
                    v128 = v1[121];
                    sub_1D5B5A498(0, &qword_1EDF3C6B0);
                    swift_arrayInitWithCopy();
                    (*v228)(v127, v128);
                  }

                  v95 = v118 <= 0;
                  v68 = v241;
                  v135 = v118;
                  v94 = v238;
                  if (!v95)
                  {
                    v136 = *(v122 + 16);
                    v71 = __OFADD__(v136, v135);
                    v137 = v136 + v135;
                    if (v71)
                    {
                      goto LABEL_149;
                    }

                    *(v122 + 16) = v137;
                  }

                  goto LABEL_47;
                }
              }

              else
              {
                v125 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v125)
                {
                  goto LABEL_90;
                }
              }

              (*v228)(v1[124], v1[121]);

              v95 = v118 <= 0;
              v68 = v241;
              v94 = v238;
              if (!v95)
              {
                goto LABEL_145;
              }

LABEL_47:
              v85 = v233;
              if (v94 == sub_1D726279C())
              {
                goto LABEL_124;
              }
            }

            if (!v102)
            {
              v105 = v68 & 0xFFFFFFFFFFFFFF8;
              v106 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
              if (v106 >= v104)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            }

LABEL_59:
            sub_1D7263BFC();
            goto LABEL_60;
          }

LABEL_124:
        }

        else
        {
          v142 = *(v85 + 16);
          v143 = *(v91 + 2);
          v144 = v143 + v142;
          if (__OFADD__(v143, v142))
          {
            goto LABEL_157;
          }

          v145 = swift_isUniquelyReferenced_nonNull_native();
          v146 = v223;
          if (!v145 || v144 > *(v223 + 3) >> 1)
          {
            if (v143 <= v144)
            {
              v147 = v143 + v142;
            }

            else
            {
              v147 = v143;
            }

            v146 = sub_1D6991D24(v145, v147, 1, v223);
          }

          v223 = v146;
          if (*(v85 + 16))
          {
            if ((*(v146 + 3) >> 1) - *(v146 + 2) < v142)
            {
              goto LABEL_160;
            }

            v148 = v146;
            swift_arrayInitWithCopy();

            if (v142)
            {
              v149 = *(v148 + 2);
              v71 = __OFADD__(v149, v142);
              v150 = v149 + v142;
              if (v71)
              {
                goto LABEL_161;
              }

              *(v148 + 2) = v150;
            }
          }

          else
          {

            if (v142)
            {
              goto LABEL_158;
            }
          }
        }

        if (v221)
        {
          v151 = swift_retain_n();
          MEMORY[0x1DA6F9CE0](v151);
          if (*((v253 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v253 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();

          v218 = v253;
        }

        else
        {
        }

        v77 = v222;
        if (v222 == sub_1D726279C())
        {
          goto LABEL_20;
        }
      }

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
      goto LABEL_162;
    }

LABEL_20:

    v69 = v216;
    v65 = v214;
    if (v214 == sub_1D726279C())
    {
      goto LABEL_136;
    }
  }

  __break(1u);
LABEL_135:
  v67 = v64;
  v68 = v64;
  v223 = v64;
  v226 = v64;
  v218 = v64;
LABEL_136:
  v242 = v68;
  v251 = v67;
  v155 = v1[117];
  v156 = v1[116];
  v229 = v1[114];
  v157 = v1[112];
  v158 = v1;
  v159 = v1[111];
  v160 = v158[110];
  v161 = v158[108];

  v162 = sub_1D72608BC();
  v163 = *(v162 - 8);
  v231 = *(v163 + 56);
  v231(v156, 1, 1, v162);
  v220 = *v161;
  v246 = *(v161 + 1);
  (*(v159 + 16))(v157, &v161[v155[5]], v160);
  v164 = v155[7];
  v165 = &v161[v155[6]];
  v215 = *v165;
  v239 = *(v165 + 1);
  v217 = *&v161[v164];
  v232 = *&v161[v164 + 8];
  v166 = v155[9];
  v167 = &v161[v155[8]];
  v209 = *v167;
  v234 = *(v167 + 1);
  v213 = *&v161[v166];
  v236 = *&v161[v166 + 8];
  v168 = &v161[v155[10]];
  v169 = *v168;
  v170 = *(v168 + 1);
  sub_1D609C5E8(v156, v229, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  v171 = *(v163 + 48);
  v211 = v169;
  v203 = v162;
  v201 = v170;
  if (v171(v229, 1, v162) == 1)
  {
    v172 = v158[114];
    sub_1D606BE74(v158[108] + *(v158[117] + 44), v158[115]);
    LODWORD(v172) = v171(v172, 1, v162);

    v173 = v158;
    if (v172 != 1)
    {
      sub_1D5CF287C(v158[114], &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    }
  }

  else
  {
    v174 = v158[115];
    (*(v163 + 32))(v174, v158[114], v162);
    v231(v174, 0, 1, v162);

    v173 = v158;
  }

  v175 = v173[118];
  v176 = v173[117];
  v177 = v173[115];
  v202 = v173[113];
  v178 = v173[111];
  v179 = v173[108];
  v180 = *(v179 + v176[12]);
  v181 = *(v179 + v176[13]);
  v182 = *(v179 + v176[14]);
  v204 = v173[109];
  v183 = *(v179 + v176[15]);
  v184 = *(v179 + v176[16]);
  v185 = v173;
  v186 = *(v179 + v176[18]);
  v200 = *(v179 + v176[19]);
  v206 = v185[106];
  *v175 = v220;
  *(v175 + 1) = v246;
  (*(v178 + 32))(&v175[v155[5]]);
  v187 = &v175[v155[6]];
  *v187 = v215;
  *(v187 + 1) = v239;
  v188 = &v175[v155[7]];
  *v188 = v217;
  *(v188 + 1) = v232;
  v189 = &v175[v155[8]];
  *v189 = v209;
  *(v189 + 1) = v234;
  v190 = &v175[v155[9]];
  *v190 = v213;
  *(v190 + 1) = v236;
  v191 = &v175[v155[10]];
  *v191 = v211;
  *(v191 + 1) = v201;
  sub_1D609C5E8(v177, &v175[v176[11]], &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  *&v175[v176[12]] = v180;
  *&v175[v176[13]] = v181;
  *&v175[v176[14]] = v182;
  *&v175[v176[15]] = v183;
  *&v175[v176[16]] = v184;
  *&v175[v176[17]] = v226;
  *&v175[v176[18]] = v186;
  *&v175[v176[19]] = v200;
  v231(v202, 1, 1, v203);

  v192 = MEMORY[0x1E69E7CC0];
  v193 = sub_1D605A62C(MEMORY[0x1E69E7CC0]);
  v194 = sub_1D605A62C(v192);
  v195 = sub_1D605A5F8(v192);
  v196 = sub_1D605AD18(v192);
  v197 = sub_1D605B9BC(v192);
  v198 = sub_1D605B9F0(v192);
  v199 = sub_1D605ACB8(v192);
  FormatContentPool.init(headlines:headlineLists:issues:tags:tagFeeds:tagFeedFetches:puzzles:puzzleTypes:puzzleStatistics:recipes:recipeLists:placeholders:slotPlaceholders:webArchivePromises:resourcePromises:sportsDataVisualizations:genericDataVisualizations:sponsoredAdBanner:)(v242, v193, v192, v192, v194, v195, v192, v192, v204, v192, v251, v196, v223, v192, v197, v198, v192, v199, v202);
  sub_1D6DF4574(v175, v204, v218, v206);

  v46 = v227[1];
LABEL_9:

  return v46();
}

uint64_t sub_1D608F370()
{
  v29 = v0;
  sub_1D5EB6624(*(v0 + 1136), *(v0 + 809));
  v1 = *(v0 + 1184);
  sub_1D608BC28(*(v0 + 856), *(v0 + 1056));

  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1104);
    v6 = *(v0 + 1096);
    v21 = *(v0 + 1080);
    v23 = *(v0 + 1056);
    v24 = *(v0 + 1112);
    v22 = *(v0 + 1040);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 136446466;
    v26 = v21;
    v27 = v6;
    v28 = v5;
    v10 = sub_1D5F90834();
    v12 = v11;

    v13 = sub_1D5BC5100(v10, v12, &v25);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2114;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_1D5B42000, v3, v4, "Format arrangement failed resolving arrangement %{public}s, error=%{public}@", v7, 0x16u);
    sub_1D609C8C4(v8, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1DA6FD500](v9, -1, -1);
    MEMORY[0x1DA6FD500](v7, -1, -1);

    v24(v23, v22);
  }

  else
  {
    v16 = *(v0 + 1112);
    v17 = *(v0 + 1056);
    v18 = *(v0 + 1040);

    v16(v17, v18);
  }

  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D608F6DC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 1984) = v3;
  *(v4 + 1976) = a3;
  *(v4 + 1968) = a2;
  v8 = sub_1D725C42C();
  *(v4 + 1992) = v8;
  *(v4 + 2000) = *(v8 - 8);
  *(v4 + 2008) = swift_task_alloc();
  *(v4 + 2016) = swift_task_alloc();
  *(v4 + 2024) = swift_task_alloc();
  *(v4 + 2032) = swift_task_alloc();
  *(v4 + 2040) = *(a3 + 16);
  *(v4 + 2048) = *(a3 + 24);
  v9 = type metadata accessor for FormatArrangementTemplateResult();
  *(v4 + 2056) = v9;
  v10 = sub_1D726393C();
  *(v4 + 2064) = v10;
  *(v4 + 2072) = *(v10 - 8);
  *(v4 + 2080) = swift_task_alloc();
  *(v4 + 2088) = swift_task_alloc();
  *(v4 + 2096) = *(v9 - 8);
  *(v4 + 2104) = swift_task_alloc();
  *(v4 + 2112) = swift_task_alloc();
  *(v4 + 2120) = swift_task_alloc();
  *(v4 + 2128) = swift_task_alloc();
  *(v4 + 2136) = swift_task_alloc();
  *(v4 + 2144) = swift_task_alloc();
  *(v4 + 2152) = swift_task_alloc();
  *(v4 + 2160) = swift_task_alloc();
  *(v4 + 2168) = *a1;
  *(v4 + 1865) = *(a1 + 8);
  v11 = a2[3];
  *(v4 + 768) = a2[2];
  *(v4 + 784) = v11;
  *(v4 + 800) = a2[4];
  v12 = a2[1];
  *(v4 + 736) = *a2;
  *(v4 + 752) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D608F934, 0, 0);
}

uint64_t sub_1D608F934()
{
  v1 = *(v0 + 1865) >> 5;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      *(v0 + 1904) = sub_1D7261CFC();
      *(v0 + 2248) = type metadata accessor for FormatArrangementSlotInstruction();
      *(v0 + 2256) = sub_1D5D2F2BC();
      *(v0 + 2264) = type metadata accessor for FormatArrangementTemplateReference();

      if (sub_1D726279C())
      {
        v27 = sub_1D726277C();
        sub_1D726271C();
        if (v27)
        {
          v28 = *(v0 + 2256);
          v29 = *(v28 + 32);
          *(v0 + 2408) = v29;
          v30 = *(v28 + 40);
          *(v0 + 2416) = v30;
          *(v0 + 2424) = 1;
          v31 = *(v0 + 800);
          *(v0 + 864) = *(v0 + 784);
          *(v0 + 880) = v31;
          v32 = *(v0 + 768);
          *(v0 + 832) = *(v0 + 752);
          *(v0 + 848) = v32;
          *(v0 + 816) = *(v0 + 736);
          *(v0 + 1776) = v29;
          *(v0 + 1784) = v30;
          v33 = type metadata accessor for FormatArrangementResolverContext();
          *(v0 + 2432) = v33;
          v34 = *(v33 - 8);
          *(v0 + 2440) = v34;
          (*(v34 + 16))(v0 + 896, v0 + 736, v33);

          v35 = swift_task_alloc();
          *(v0 + 2448) = v35;
          *v35 = v0;
          v35[1] = sub_1D609183C;
          v13 = *(v0 + 2136);
          v14 = *(v0 + 1976);
          v15 = (v0 + 1776);
          v16 = v0 + 816;
          goto LABEL_20;
        }

        sub_1D7263DBC();
        __break(1u);
        goto LABEL_52;
      }

      v57 = FormatArrangementSlotInstruction.personalize.getter();
      v58 = *(v0 + 1904);
      if (v57)
      {
        v59 = sub_1D6095D88(*(v0 + 1904), *(v0 + 1976));

        v58 = v59;
      }

      v60 = *(v0 + 2096);
      v61 = *(v0 + 2088);
      v62 = *(v0 + 2056);
      *(v0 + 1960) = v58;
      sub_1D72627FC();
      swift_getWitnessTable();
      sub_1D7262C9C();
      if ((*(v60 + 48))(v61, 1, v62) == 1)
      {
        (*(*(v0 + 2072) + 8))(*(v0 + 2088), *(v0 + 2064));

        v63 = sub_1D726275C();
LABEL_47:
        v105 = v63;
        goto LABEL_48;
      }

      v97 = *(v0 + 2128);
      v98 = *(v0 + 2096);
      v99 = *(v0 + 2088);
    }

    else
    {
      if (v1 == 3)
      {
        v2 = *(v0 + 1968);
        *(v0 + 496) = *v2;
        v3 = v2[4];
        v5 = v2[1];
        v4 = v2[2];
        *(v0 + 544) = v2[3];
        *(v0 + 560) = v3;
        *(v0 + 512) = v5;
        *(v0 + 528) = v4;
        v6 = type metadata accessor for FormatArrangementResolverContext();
        *(v0 + 2272) = v6;
        v7 = *(v6 - 8);
        *(v0 + 2280) = v7;
        (*(v7 + 16))(v0 + 576, v0 + 736, v6);
        *(v0 + 1888) = sub_1D7261CFC();
        *(v0 + 2288) = type metadata accessor for FormatArrangementSlotInstruction();
        *(v0 + 2296) = sub_1D5D2F2BC();
        *(v0 + 2304) = type metadata accessor for FormatArrangementTemplateReference();

        if (sub_1D726279C())
        {
          v8 = sub_1D726277C();
          sub_1D726271C();
          if (v8)
          {
            v9 = *(v0 + 2296);
            v10 = *(v9 + 32);
            *(v0 + 2464) = v10;
            v11 = *(v9 + 40);
            *(v0 + 2472) = v11;
            *(v0 + 2480) = 1;
            *(v0 + 1808) = v10;
            *(v0 + 1816) = v11;

            v12 = swift_task_alloc();
            *(v0 + 2488) = v12;
            *v12 = v0;
            v12[1] = sub_1D6092260;
            v13 = *(v0 + 2120);
            v14 = *(v0 + 1976);
            v15 = (v0 + 1808);
            v16 = v0 + 496;
LABEL_20:

            return sub_1D609534C(v13, v15, v16, v14);
          }

          goto LABEL_53;
        }

        v64 = *(v0 + 2280);
        v65 = *(v0 + 2272);
        v66 = *(v0 + 544);
        *(v0 + 688) = *(v0 + 528);
        *(v0 + 704) = v66;
        *(v0 + 720) = *(v0 + 560);
        v67 = *(v0 + 512);
        *(v0 + 656) = *(v0 + 496);
        *(v0 + 672) = v67;
        (*(v64 + 8))(v0 + 656, v65);
        v68 = *(v0 + 1888);
        *(v0 + 1928) = v68;
        sub_1D72627FC();
        swift_getWitnessTable();
        if (sub_1D7262CCC())
        {
          v106 = *(v0 + 2040);
          *(v0 + 1912) = sub_1D5D2F2BC();
          v69 = swift_task_alloc();
          *(v69 + 16) = v106;
          v70 = sub_1D72627FC();

          WitnessTable = swift_getWitnessTable();
          v73 = sub_1D5B874E4(sub_1D5CB5238, v69, v70, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v72);

          goto LABEL_33;
        }

        if ((FormatArrangementSlotInstruction.personalize.getter() & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      *(v0 + 1952) = sub_1D7261CFC();
      *(v0 + 2312) = type metadata accessor for FormatArrangementSlotInstruction();
      *(v0 + 2320) = sub_1D5D2F2BC();
      *(v0 + 2328) = type metadata accessor for FormatArrangementTemplateReference();

      if (sub_1D726279C())
      {
        v36 = sub_1D726277C();
        sub_1D726271C();
        if (v36)
        {
          v37 = *(v0 + 2320);
          v38 = *(v37 + 32);
          *(v0 + 2504) = v38;
          v39 = *(v37 + 40);
          *(v0 + 2512) = v39;
          *(v0 + 2520) = 1;
          v40 = *(v0 + 800);
          *(v0 + 144) = *(v0 + 784);
          *(v0 + 160) = v40;
          v41 = *(v0 + 768);
          *(v0 + 112) = *(v0 + 752);
          *(v0 + 128) = v41;
          *(v0 + 96) = *(v0 + 736);
          *(v0 + 1824) = v38;
          *(v0 + 1832) = v39;
          v42 = type metadata accessor for FormatArrangementResolverContext();
          *(v0 + 2528) = v42;
          v43 = *(v42 - 8);
          *(v0 + 2536) = v43;
          (*(v43 + 16))(v0 + 1616, v0 + 736, v42);

          v44 = swift_task_alloc();
          *(v0 + 2544) = v44;
          *v44 = v0;
          v44[1] = sub_1D6092B20;
          v13 = *(v0 + 2112);
          v14 = *(v0 + 1976);
          v15 = (v0 + 1824);
          v16 = v0 + 96;
          goto LABEL_20;
        }

LABEL_52:
        sub_1D7263DBC();
        __break(1u);
LABEL_53:
        sub_1D7263DBC();
        __break(1u);
LABEL_54:
        sub_1D7263DBC();
        __break(1u);
        goto LABEL_55;
      }

      v74 = FormatArrangementSlotInstruction.personalize.getter();
      v75 = *(v0 + 1952);
      if (v74)
      {
        v76 = sub_1D6095D88(*(v0 + 1952), *(v0 + 1976));

        v75 = v76;
      }

      v77 = *(v0 + 2096);
      v78 = *(v0 + 2080);
      v79 = *(v0 + 2056);
      *(v0 + 1944) = v75;
      sub_1D72627FC();
      swift_getWitnessTable();
      sub_1D7262C9C();
      if ((*(v77 + 48))(v78, 1, v79) == 1)
      {
        v107 = *(v0 + 2040);
        (*(*(v0 + 2072) + 8))(*(v0 + 2080), *(v0 + 2064));

        *(v0 + 1936) = sub_1D5D2F2BC();
        v80 = swift_task_alloc();
        *(v80 + 16) = v107;
        v81 = sub_1D72627FC();

        v82 = swift_getWitnessTable();
        v73 = sub_1D5B874E4(sub_1D5CB5250, v80, v81, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v82, MEMORY[0x1E69E7410], v83);

LABEL_33:

        sub_1D609C50C();
        swift_allocError();
        *v84 = v73;
        *(v84 + 8) = 0;
        *(v84 + 16) = 2;
        swift_willThrow();

        v96 = *(v0 + 8);

        return v96();
      }

      v97 = *(v0 + 2104);
      v98 = *(v0 + 2096);
      v99 = *(v0 + 2080);
    }

    v100 = *(v0 + 2056);
    v101 = *(v98 + 32);
    v101(v97, v99, v100);

    sub_1D72644CC();
    swift_allocObject();
    v102 = sub_1D726270C();
    v101(v103, v97, v100);
    v63 = sub_1D5BFCB60(v102);
    goto LABEL_47;
  }

  if (v1)
  {
    v45 = *(v0 + 1968);
    *(v0 + 1056) = *v45;
    v46 = v45[4];
    v48 = v45[1];
    v47 = v45[2];
    *(v0 + 1104) = v45[3];
    *(v0 + 1120) = v46;
    *(v0 + 1072) = v48;
    *(v0 + 1088) = v47;
    v49 = type metadata accessor for FormatArrangementResolverContext();
    *(v0 + 2208) = v49;
    v50 = *(v49 - 8);
    *(v0 + 2216) = v50;
    (*(v50 + 16))(v0 + 1216, v0 + 736, v49);
    *(v0 + 1896) = sub_1D7261CFC();
    *(v0 + 2224) = type metadata accessor for FormatArrangementSlotInstruction();
    *(v0 + 2232) = sub_1D5D2F2BC();
    *(v0 + 2240) = type metadata accessor for FormatArrangementTemplateReference();

    if (sub_1D726279C())
    {
      v51 = sub_1D726277C();
      sub_1D726271C();
      if (v51)
      {
        v52 = *(v0 + 2232);
        v53 = *(v52 + 32);
        *(v0 + 2368) = v53;
        v54 = *(v52 + 40);
        *(v0 + 2376) = v54;
        *(v0 + 2384) = 1;
        *(v0 + 1840) = v53;
        *(v0 + 1848) = v54;

        v55 = swift_task_alloc();
        *(v0 + 2392) = v55;
        *v55 = v0;
        v55[1] = sub_1D60910CC;
        v13 = *(v0 + 2144);
        v14 = *(v0 + 1976);
        v15 = (v0 + 1840);
        v16 = v0 + 1056;
        goto LABEL_20;
      }

LABEL_55:
      result = sub_1D7263DBC();
      __break(1u);
      return result;
    }

    v90 = *(v0 + 2216);
    v91 = *(v0 + 2208);
    v92 = *(v0 + 1104);
    *(v0 + 1568) = *(v0 + 1088);
    *(v0 + 1584) = v92;
    *(v0 + 1600) = *(v0 + 1120);
    v93 = *(v0 + 1072);
    *(v0 + 1536) = *(v0 + 1056);
    *(v0 + 1552) = v93;
    (*(v90 + 8))(v0 + 1536, v91);
    v94 = FormatArrangementSlotInstruction.personalize.getter();
    v68 = *(v0 + 1896);
    if ((v94 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v17 = *(v0 + 1968);
    *(v0 + 176) = *v17;
    v18 = v17[4];
    v20 = v17[1];
    v19 = v17[2];
    *(v0 + 224) = v17[3];
    *(v0 + 240) = v18;
    *(v0 + 192) = v20;
    *(v0 + 208) = v19;
    v21 = type metadata accessor for FormatArrangementResolverContext();
    *(v0 + 2176) = v21;
    v22 = *(v21 - 8);
    *(v0 + 2184) = v22;
    (*(v22 + 16))(v0 + 1696, v0 + 736, v21);
    *(v0 + 1920) = sub_1D7261CFC();
    *(v0 + 2192) = type metadata accessor for FormatArrangementSlotInstruction();
    *(v0 + 2200) = sub_1D5D2F2BC();
    type metadata accessor for FormatArrangementTemplateReference();

    if (sub_1D726279C())
    {
      v23 = sub_1D726277C();
      sub_1D726271C();
      v24 = *(v0 + 2200);
      if (v23)
      {
        v25 = *(v24 + 40);
        *(v0 + 2336) = v25;
        *(v0 + 2344) = 1;
        *(v0 + 1792) = *(v24 + 32);
        *(v0 + 1800) = v25;

        v26 = swift_task_alloc();
        *(v0 + 2352) = v26;
        *v26 = v0;
        v26[1] = sub_1D6090A70;
        v13 = *(v0 + 2160);
        v14 = *(v0 + 1976);
        v15 = (v0 + 1792);
        v16 = v0 + 176;
        goto LABEL_20;
      }

      goto LABEL_54;
    }

    v85 = *(v0 + 2184);
    v86 = *(v0 + 2176);
    v87 = *(v0 + 224);
    *(v0 + 48) = *(v0 + 208);
    *(v0 + 64) = v87;
    *(v0 + 80) = *(v0 + 240);
    v88 = *(v0 + 192);
    *(v0 + 16) = *(v0 + 176);
    *(v0 + 32) = v88;
    (*(v85 + 8))(v0 + 16, v86);

    v89 = FormatArrangementSlotInstruction.personalize.getter();
    v68 = *(v0 + 1920);
    if ((v89 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

LABEL_39:
  v95 = sub_1D6095D88(v68, *(v0 + 1976));

  v68 = v95;
LABEL_43:
  v105 = v68;
LABEL_48:

  v104 = *(v0 + 8);

  return v104(v105);
}

uint64_t sub_1D6090A70()
{
  v2 = *v1;
  *(*v1 + 2360) = v0;

  if (v0)
  {
    v3 = *(v2 + 2184);
    v4 = *(v2 + 2176);

    v5 = *(v2 + 176);
    *(v2 + 1472) = *(v2 + 192);
    v6 = *(v2 + 224);
    *(v2 + 1488) = *(v2 + 208);
    *(v2 + 1504) = v6;
    *(v2 + 1520) = *(v2 + 240);
    *(v2 + 1456) = v5;
    (*(v3 + 8))(v2 + 1456, v4);
    v7 = sub_1D6093634;
  }

  else
  {

    v7 = sub_1D6090BE4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D6090BE4()
{
  v1 = *(v0 + 2360);
  v2 = *(v0 + 2176);
  v3 = *(v0 + 2160);
  (*(*(v0 + 2096) + 16))(*(v0 + 2152), v3, *(v0 + 2056));
  sub_1D72627FC();
  sub_1D72627BC();
  sub_1D69ABEE8(v3, v2);
  if (v1)
  {
    v4 = *(v0 + 2184);
    v5 = *(v0 + 2176);
    v6 = *(v0 + 2160);
    v7 = *(v0 + 2096);
    v8 = *(v0 + 2056);

    (*(v7 + 8))(v6, v8);

    v9 = *(v0 + 176);
    *(v0 + 1392) = *(v0 + 192);
    v10 = *(v0 + 224);
    *(v0 + 1408) = *(v0 + 208);
    *(v0 + 1424) = v10;
    *(v0 + 1440) = *(v0 + 240);
    *(v0 + 1376) = v9;
    (*(v4 + 8))(v0 + 1376, v5);

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 2344);
  (*(*(v0 + 2096) + 8))(*(v0 + 2160), *(v0 + 2056));
  type metadata accessor for FormatArrangementTemplateReference();
  if (v13 == sub_1D726279C())
  {
    v14 = *(v0 + 2184);
    v15 = *(v0 + 2176);
    v16 = *(v0 + 224);
    *(v0 + 48) = *(v0 + 208);
    *(v0 + 64) = v16;
    *(v0 + 80) = *(v0 + 240);
    v17 = *(v0 + 192);
    *(v0 + 16) = *(v0 + 176);
    *(v0 + 32) = v17;
    (*(v14 + 8))(v0 + 16, v15);

    v18 = FormatArrangementSlotInstruction.personalize.getter();
    v19 = *(v0 + 1920);
    if (v18)
    {
      v20 = sub_1D6095D88(*(v0 + 1920), *(v0 + 1976));

      v19 = v20;
    }

    v21 = *(v0 + 8);

    return v21(v19);
  }

  v22 = *(v0 + 2344);
  v23 = sub_1D726277C();
  sub_1D726271C();
  if ((v23 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_17;
  }

  v24 = *(v0 + 2200) + 16 * v22;
  result = *(v24 + 40);
  *(v0 + 2336) = result;
  *(v0 + 2344) = v22 + 1;
  if (__OFADD__(v22, 1))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v0 + 1792) = *(v24 + 32);
  *(v0 + 1800) = result;

  v25 = swift_task_alloc();
  *(v0 + 2352) = v25;
  *v25 = v0;
  v25[1] = sub_1D6090A70;
  v26 = *(v0 + 2160);
  v27 = *(v0 + 1976);

  return sub_1D609534C(v26, (v0 + 1792), v0 + 176, v27);
}

uint64_t sub_1D60910CC()
{
  *(*v1 + 2400) = v0;

  if (v0)
  {
    v2 = sub_1D609376C;
  }

  else
  {
    v2 = sub_1D60911E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D60911E0()
{
  v44 = v0;
  v1 = (v0 + 1056);
  v2 = *(v0 + 2400);
  v3 = *(v0 + 2208);
  v4 = *(v0 + 2144);
  (*(*(v0 + 2096) + 16))(*(v0 + 2152), v4, *(v0 + 2056));
  sub_1D72627FC();
  sub_1D72627BC();
  sub_1D69ABEE8(v4, v3);
  if (v2)
  {
    (*(*(v0 + 2096) + 8))(*(v0 + 2144), *(v0 + 2056));
    sub_1D608BC28(*(v0 + 1976), *(v0 + 2032));

    v5 = v2;
    v6 = sub_1D725C3FC();
    v7 = sub_1D7262EBC();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 2376);
    if (v8)
    {
      v10 = *(v0 + 2368);
      v39 = *(v0 + 2000);
      v40 = *(v0 + 1992);
      v41 = *(v0 + 2032);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v42 = v13;
      *v11 = 136446466;
      v14 = sub_1D5BC5100(v10, v9, &v42);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2114;
      v15 = v2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v16;
      *v12 = v16;
      sub_1D609C8C4(v12, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1DA6FD500](v13, -1, -1);
      MEMORY[0x1DA6FD500](v11, -1, -1);

      (*(v39 + 8))(v41, v40);
    }

    else
    {
      v17 = *(v0 + 2032);
      v18 = *(v0 + 2000);
      v19 = *(v0 + 1992);

      (*(v18 + 8))(v17, v19);
    }
  }

  else
  {
    (*(*(v0 + 2096) + 8))(*(v0 + 2144), *(v0 + 2056));
  }

  v20 = *(v0 + 2384);
  if (v20 == sub_1D726279C())
  {

    v21 = *(v0 + 2216);
    v22 = *(v0 + 2208);
    v23 = *(v0 + 2168);
    v24 = *(v0 + 1865) & 1;
    v25 = *(v0 + 1104);
    *(v0 + 1568) = *(v0 + 1088);
    *(v0 + 1584) = v25;
    *(v0 + 1600) = *(v0 + 1120);
    v26 = *(v0 + 1072);
    *(v0 + 1536) = *v1;
    *(v0 + 1552) = v26;
    (*(v21 + 8))(v0 + 1536, v22);
    v42 = v23;
    v43 = v24;
    v27 = FormatArrangementSlotInstruction.personalize.getter();
    v28 = *(v0 + 1896);
    if (v27)
    {
      v29 = sub_1D6095D88(*(v0 + 1896), *(v0 + 1976));

      v28 = v29;
    }

    v38 = *(v0 + 8);

    return v38(v28);
  }

  v30 = *(v0 + 2384);
  v31 = sub_1D726277C();
  sub_1D726271C();
  if ((v31 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_18;
  }

  v32 = *(v0 + 2232) + 16 * v30;
  v33 = *(v32 + 32);
  *(v0 + 2368) = v33;
  result = *(v32 + 40);
  *(v0 + 2376) = result;
  *(v0 + 2384) = v30 + 1;
  if (__OFADD__(v30, 1))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  *(v0 + 1840) = v33;
  *(v0 + 1848) = result;

  v35 = swift_task_alloc();
  *(v0 + 2392) = v35;
  *v35 = v0;
  v35[1] = sub_1D60910CC;
  v36 = *(v0 + 2144);
  v37 = *(v0 + 1976);

  return sub_1D609534C(v36, (v0 + 1840), v1, v37);
}

uint64_t sub_1D609183C()
{
  v2 = *v1;
  *(*v1 + 2456) = v0;

  if (v0)
  {
    v3 = *(v2 + 2440);
    v4 = *(v2 + 2432);
    v5 = *(v2 + 864);
    *(v2 + 1008) = *(v2 + 848);
    *(v2 + 1024) = v5;
    *(v2 + 1040) = *(v2 + 880);
    v6 = *(v2 + 832);
    *(v2 + 976) = *(v2 + 816);
    *(v2 + 992) = v6;
    (*(v3 + 8))(v2 + 976, v4);
    v7 = sub_1D6093D18;
  }

  else
  {
    v7 = sub_1D6091984;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D6091984()
{
  v71 = v0;
  v1 = *(v0 + 2456);
  v2 = *(v0 + 2440);
  v3 = *(v0 + 2432);
  v4 = *(v0 + 2136);
  (*(*(v0 + 2096) + 16))(*(v0 + 2152), v4, *(v0 + 2056));
  sub_1D72627FC();
  sub_1D72627BC();
  sub_1D69ABEE8(v4, v3);
  v5 = (v2 + 8);
  if (v1)
  {
    v6 = *(v0 + 2432);
    (*(*(v0 + 2096) + 8))(*(v0 + 2136), *(v0 + 2056));
    v7 = *(v0 + 816);
    *(v0 + 1312) = *(v0 + 832);
    v8 = *(v0 + 864);
    *(v0 + 1328) = *(v0 + 848);
    *(v0 + 1344) = v8;
    *(v0 + 1360) = *(v0 + 880);
    *(v0 + 1296) = v7;
    (*v5)(v0 + 1296, v6);
    sub_1D608BC28(*(v0 + 1976), *(v0 + 2024));

    v9 = v1;
    v10 = sub_1D725C3FC();
    v11 = sub_1D7262EBC();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 2416);
    if (v12)
    {
      v14 = *(v0 + 2408);
      v15 = *(v0 + 2000);
      v66 = *(v0 + 1992);
      v67 = *(v0 + 2024);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v69 = v18;
      *v16 = 136446466;
      v19 = sub_1D5BC5100(v14, v13, &v69);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2114;
      v20 = v1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v21;
      *v17 = v21;
      sub_1D609C8C4(v17, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1DA6FD500](v18, -1, -1);
      MEMORY[0x1DA6FD500](v16, -1, -1);

      (*(v15 + 8))(v67, v66);
    }

    else
    {
      v31 = *(v0 + 2024);
      v32 = *(v0 + 2000);
      v33 = *(v0 + 1992);

      (*(v32 + 8))(v31, v33);
    }

    v30 = 1;
  }

  else
  {
    v22 = *(v0 + 2432);
    v23 = *(v0 + 2168);
    v24 = *(v0 + 2136);
    v25 = *(v0 + 2096);
    v26 = *(v0 + 2056);
    v27 = *(v0 + 1865) & 1;

    (*(v25 + 8))(v24, v26);
    v28 = *(v0 + 816);
    *(v0 + 1152) = *(v0 + 832);
    v29 = *(v0 + 864);
    *(v0 + 1168) = *(v0 + 848);
    *(v0 + 1184) = v29;
    *(v0 + 1200) = *(v0 + 880);
    *(v0 + 1136) = v28;
    (*v5)(v0 + 1136, v22);
    *(v0 + 1872) = v23;
    *(v0 + 1880) = v27;
    v30 = FormatArrangementSlotInstruction.personalize.getter();
  }

  v34 = *(v0 + 2424);
  if (v34 == sub_1D726279C())
  {
LABEL_8:

    v35 = *(v0 + 1865) & 1;
    v69 = *(v0 + 2168);
    v70 = v35;
    v36 = FormatArrangementSlotInstruction.personalize.getter();
    v37 = *(v0 + 1904);
    if ((v36 & 1) == 0)
    {
LABEL_22:
      v56 = *(v0 + 2096);
      v57 = *(v0 + 2088);
      v58 = *(v0 + 2056);
      *(v0 + 1960) = v37;
      sub_1D72627FC();
      swift_getWitnessTable();
      sub_1D7262C9C();
      if ((*(v56 + 48))(v57, 1, v58) == 1)
      {
        (*(*(v0 + 2072) + 8))(*(v0 + 2088), *(v0 + 2064));

        v59 = sub_1D726275C();
      }

      else
      {
        v60 = *(v0 + 2128);
        v61 = *(v0 + 2056);
        v62 = *(*(v0 + 2096) + 32);
        v62(v60, *(v0 + 2088), v61);

        sub_1D72644CC();
        swift_allocObject();
        v63 = sub_1D726270C();
        v62(v64, v60, v61);
        v59 = sub_1D5BFCB60(v63);
      }

      v68 = v59;

      v65 = *(v0 + 8);

      return v65(v68);
    }

    v38 = sub_1D6095D88(*(v0 + 1904), *(v0 + 1976));

LABEL_21:
    v37 = v38;
    goto LABEL_22;
  }

  v39 = *(v0 + 2424);
  v40 = sub_1D726277C();
  sub_1D726271C();
  if ((v40 & 1) == 0)
  {
LABEL_28:
    result = sub_1D7263DBC();
    __break(1u);
    return result;
  }

  v41 = *(v0 + 2256) + 16 * v39;
  v42 = *(v41 + 32);
  *(v0 + 2408) = v42;
  v43 = *(v41 + 40);
  *(v0 + 2416) = v43;
  v44 = __OFADD__(v39, 1);
  v38 = (v39 + 1);
  *(v0 + 2424) = v38;
  if (v44)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v30 & 1) == 0)
  {
    while (v38 != sub_1D726279C())
    {
      v53 = *(v0 + 2424);
      v54 = sub_1D726277C();
      sub_1D726271C();
      if ((v54 & 1) == 0)
      {
        goto LABEL_28;
      }

      v55 = *(v0 + 2256) + 16 * v53;
      *(v0 + 2408) = *(v55 + 32);
      *(v0 + 2416) = *(v55 + 40);
      v44 = __OFADD__(v53, 1);
      v38 = (v53 + 1);
      *(v0 + 2424) = v38;
      if (v44)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_8;
  }

  v45 = *(v0 + 784);
  *(v0 + 848) = *(v0 + 768);
  *(v0 + 864) = v45;
  *(v0 + 880) = *(v0 + 800);
  v46 = *(v0 + 752);
  *(v0 + 816) = *(v0 + 736);
  *(v0 + 832) = v46;
  *(v0 + 1776) = v42;
  *(v0 + 1784) = v43;
  v47 = type metadata accessor for FormatArrangementResolverContext();
  *(v0 + 2432) = v47;
  v48 = *(v47 - 8);
  *(v0 + 2440) = v48;
  (*(v48 + 16))(v0 + 896, v0 + 736, v47);

  v49 = swift_task_alloc();
  *(v0 + 2448) = v49;
  *v49 = v0;
  v49[1] = sub_1D609183C;
  v50 = *(v0 + 2136);
  v51 = *(v0 + 1976);

  return sub_1D609534C(v50, (v0 + 1776), v0 + 816, v51);
}

uint64_t sub_1D6092260()
{
  *(*v1 + 2496) = v0;

  if (v0)
  {
    v2 = sub_1D6094430;
  }

  else
  {
    v2 = sub_1D6092374;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6092374()
{
  v50 = v0;
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2272);
  v3 = *(v0 + 2120);
  (*(*(v0 + 2096) + 16))(*(v0 + 2152), v3, *(v0 + 2056));
  sub_1D72627FC();
  sub_1D72627BC();
  sub_1D69ABEE8(v3, v2);
  if (v1)
  {
    (*(*(v0 + 2096) + 8))(*(v0 + 2120), *(v0 + 2056));
    sub_1D608BC28(*(v0 + 1976), *(v0 + 2016));

    v4 = v1;
    v5 = sub_1D725C3FC();
    v6 = sub_1D7262EBC();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 2472);
    if (v7)
    {
      v9 = *(v0 + 2464);
      v10 = *(v0 + 2000);
      v45 = *(v0 + 1992);
      v46 = *(v0 + 2016);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48 = v13;
      *v11 = 136446466;
      v14 = sub_1D5BC5100(v9, v8, &v48);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2114;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v16;
      *v12 = v16;
      sub_1D609C8C4(v12, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1DA6FD500](v13, -1, -1);
      MEMORY[0x1DA6FD500](v11, -1, -1);

      (*(v10 + 8))(v46, v45);
    }

    else
    {
      v17 = *(v0 + 2016);
      v18 = *(v0 + 2000);
      v19 = *(v0 + 1992);

      (*(v18 + 8))(v17, v19);
    }
  }

  else
  {
    (*(*(v0 + 2096) + 8))(*(v0 + 2120), *(v0 + 2056));
  }

  v20 = *(v0 + 2480);
  if (v20 == sub_1D726279C())
  {

    v21 = *(v0 + 2280);
    v22 = *(v0 + 2272);
    v23 = *(v0 + 544);
    *(v0 + 688) = *(v0 + 528);
    *(v0 + 704) = v23;
    *(v0 + 720) = *(v0 + 560);
    v24 = *(v0 + 512);
    *(v0 + 656) = *(v0 + 496);
    *(v0 + 672) = v24;
    (*(v21 + 8))(v0 + 656, v22);
    v25 = *(v0 + 1888);
    *(v0 + 1928) = v25;
    sub_1D72627FC();
    swift_getWitnessTable();
    if (sub_1D7262CCC())
    {
      v26 = *(v0 + 1865) & 1;
      v48 = *(v0 + 2168);
      v49 = v26;
      v47 = *(v0 + 2040);
      *(v0 + 1912) = sub_1D5D2F2BC();
      v27 = swift_task_alloc();
      *(v27 + 16) = v47;
      v28 = sub_1D72627FC();

      WitnessTable = swift_getWitnessTable();
      v31 = sub_1D5B874E4(sub_1D5CB5238, v27, v28, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v30);

      sub_1D609C50C();
      swift_allocError();
      *v32 = v31;
      *(v32 + 8) = 0;
      *(v32 + 16) = 2;
      swift_willThrow();

      v43 = *(v0 + 8);

      return v43();
    }

    else
    {
      v41 = *(v0 + 1865) & 1;
      v48 = *(v0 + 2168);
      v49 = v41;
      if (FormatArrangementSlotInstruction.personalize.getter())
      {
        v42 = sub_1D6095D88(v25, *(v0 + 1976));

        v25 = v42;
      }

      v44 = *(v0 + 8);

      return v44(v25);
    }
  }

  v33 = *(v0 + 2480);
  v34 = sub_1D726277C();
  sub_1D726271C();
  if ((v34 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_23;
  }

  v35 = *(v0 + 2296) + 16 * v33;
  v36 = *(v35 + 32);
  *(v0 + 2464) = v36;
  result = *(v35 + 40);
  *(v0 + 2472) = result;
  *(v0 + 2480) = v33 + 1;
  if (__OFADD__(v33, 1))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  *(v0 + 1808) = v36;
  *(v0 + 1816) = result;

  v38 = swift_task_alloc();
  *(v0 + 2488) = v38;
  *v38 = v0;
  v38[1] = sub_1D6092260;
  v39 = *(v0 + 2120);
  v40 = *(v0 + 1976);

  return sub_1D609534C(v39, (v0 + 1808), v0 + 496, v40);
}

uint64_t sub_1D6092B20()
{
  v2 = *v1;
  *(*v1 + 2552) = v0;

  if (v0)
  {
    v3 = *(v2 + 2536);
    v4 = *(v2 + 2528);
    v5 = *(v2 + 144);
    *(v2 + 288) = *(v2 + 128);
    *(v2 + 304) = v5;
    *(v2 + 320) = *(v2 + 160);
    v6 = *(v2 + 112);
    *(v2 + 256) = *(v2 + 96);
    *(v2 + 272) = v6;
    (*(v3 + 8))(v2 + 256, v4);
    v7 = sub_1D6094B34;
  }

  else
  {
    v7 = sub_1D6092C68;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D6092C68()
{
  v81 = v0;
  v1 = *(v0 + 2552);
  v2 = *(v0 + 2536);
  v3 = *(v0 + 2528);
  v4 = *(v0 + 2112);
  (*(*(v0 + 2096) + 16))(*(v0 + 2152), v4, *(v0 + 2056));
  sub_1D72627FC();
  sub_1D72627BC();
  sub_1D69ABEE8(v4, v3);
  v5 = (v2 + 8);
  if (v1)
  {
    v6 = *(v0 + 2528);
    (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2056));
    v7 = *(v0 + 144);
    *(v0 + 368) = *(v0 + 128);
    *(v0 + 384) = v7;
    *(v0 + 400) = *(v0 + 160);
    v8 = *(v0 + 112);
    *(v0 + 336) = *(v0 + 96);
    *(v0 + 352) = v8;
    (*v5)(v0 + 336, v6);
    sub_1D608BC28(*(v0 + 1976), *(v0 + 2008));

    v9 = v1;
    v10 = sub_1D725C3FC();
    v11 = sub_1D7262EBC();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 2512);
    if (v12)
    {
      v14 = *(v0 + 2504);
      v15 = *(v0 + 2000);
      v75 = *(v0 + 1992);
      v76 = *(v0 + 2008);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v79 = v18;
      *v16 = 136446466;
      v19 = sub_1D5BC5100(v14, v13, &v79);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2114;
      v20 = v1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v21;
      *v17 = v21;
      sub_1D609C8C4(v17, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1DA6FD500](v18, -1, -1);
      MEMORY[0x1DA6FD500](v16, -1, -1);

      (*(v15 + 8))(v76, v75);
    }

    else
    {
      v31 = *(v0 + 2008);
      v32 = *(v0 + 2000);
      v33 = *(v0 + 1992);

      (*(v32 + 8))(v31, v33);
    }

    v30 = 1;
  }

  else
  {
    v22 = *(v0 + 2528);
    v23 = *(v0 + 2168);
    v24 = *(v0 + 2112);
    v25 = *(v0 + 2096);
    v26 = *(v0 + 2056);
    v27 = *(v0 + 1865) & 1;

    (*(v25 + 8))(v24, v26);
    v28 = *(v0 + 144);
    *(v0 + 448) = *(v0 + 128);
    *(v0 + 464) = v28;
    *(v0 + 480) = *(v0 + 160);
    v29 = *(v0 + 112);
    *(v0 + 416) = *(v0 + 96);
    *(v0 + 432) = v29;
    (*v5)(v0 + 416, v22);
    *(v0 + 1856) = v23;
    *(v0 + 1864) = v27;
    v30 = FormatArrangementSlotInstruction.personalize.getter();
  }

  v34 = *(v0 + 2520);
  if (v34 == sub_1D726279C())
  {
    goto LABEL_8;
  }

  v52 = *(v0 + 2520);
  v53 = sub_1D726277C();
  sub_1D726271C();
  if ((v53 & 1) == 0)
  {
LABEL_28:
    result = sub_1D7263DBC();
    __break(1u);
    return result;
  }

  v54 = *(v0 + 2320) + 16 * v52;
  v55 = *(v54 + 32);
  *(v0 + 2504) = v55;
  v56 = *(v54 + 40);
  *(v0 + 2512) = v56;
  v57 = __OFADD__(v52, 1);
  v58 = v52 + 1;
  *(v0 + 2520) = v58;
  if (v57)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    v69 = *(v0 + 2104);
    v70 = *(v0 + 2056);
    v71 = *(*(v0 + 2096) + 32);
    v71(v69, *(v0 + 2080), v70);

    sub_1D72644CC();
    swift_allocObject();
    v72 = sub_1D726270C();
    v71(v73, v69, v70);
    v78 = sub_1D5BFCB60(v72);

    v74 = *(v0 + 8);

    return v74(v78);
  }

  if ((v30 & 1) == 0)
  {
    while (v58 != sub_1D726279C())
    {
      v66 = *(v0 + 2520);
      v67 = sub_1D726277C();
      sub_1D726271C();
      if ((v67 & 1) == 0)
      {
        goto LABEL_28;
      }

      v68 = *(v0 + 2320) + 16 * v66;
      *(v0 + 2504) = *(v68 + 32);
      *(v0 + 2512) = *(v68 + 40);
      v57 = __OFADD__(v66, 1);
      v58 = v66 + 1;
      *(v0 + 2520) = v58;
      if (v57)
      {
        goto LABEL_24;
      }
    }

LABEL_8:

    v35 = *(v0 + 1865) & 1;
    v79 = *(v0 + 2168);
    v80 = v35;
    v36 = FormatArrangementSlotInstruction.personalize.getter();
    v37 = *(v0 + 1952);
    if (v36)
    {
      v38 = sub_1D6095D88(*(v0 + 1952), *(v0 + 1976));

      v37 = v38;
    }

    v39 = *(v0 + 2096);
    v40 = *(v0 + 2080);
    v41 = *(v0 + 2056);
    *(v0 + 1944) = v37;
    sub_1D72627FC();
    swift_getWitnessTable();
    sub_1D7262C9C();
    if ((*(v39 + 48))(v40, 1, v41) == 1)
    {
      v42 = *(v0 + 2168);
      v43 = *(v0 + 1865) & 1;
      v77 = *(v0 + 2040);
      (*(*(v0 + 2072) + 8))(*(v0 + 2080), *(v0 + 2064));

      v79 = v42;
      v80 = v43;
      *(v0 + 1936) = sub_1D5D2F2BC();
      v44 = swift_task_alloc();
      *(v44 + 16) = v77;
      v45 = sub_1D72627FC();

      WitnessTable = swift_getWitnessTable();
      v48 = sub_1D5B874E4(sub_1D5CB5250, v44, v45, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v47);

      sub_1D609C50C();
      swift_allocError();
      *v49 = v48;
      *(v49 + 8) = 0;
      *(v49 + 16) = 2;
      swift_willThrow();

      v50 = *(v0 + 8);

      return v50();
    }

    goto LABEL_25;
  }

  v59 = *(v0 + 784);
  *(v0 + 128) = *(v0 + 768);
  *(v0 + 144) = v59;
  *(v0 + 160) = *(v0 + 800);
  v60 = *(v0 + 752);
  *(v0 + 96) = *(v0 + 736);
  *(v0 + 112) = v60;
  *(v0 + 1824) = v55;
  *(v0 + 1832) = v56;
  v61 = type metadata accessor for FormatArrangementResolverContext();
  *(v0 + 2528) = v61;
  v62 = *(v61 - 8);
  *(v0 + 2536) = v62;
  (*(v62 + 16))(v0 + 1616, v0 + 736, v61);

  v63 = swift_task_alloc();
  *(v0 + 2544) = v63;
  *v63 = v0;
  v63[1] = sub_1D6092B20;
  v64 = *(v0 + 2112);
  v65 = *(v0 + 1976);

  return sub_1D609534C(v64, (v0 + 1824), v0 + 96, v65);
}

uint64_t sub_1D6093634()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D609376C()
{
  v42 = v0;
  v1 = *(v0 + 2400);
  sub_1D608BC28(*(v0 + 1976), *(v0 + 2032));

  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 2376);
  if (v5)
  {
    v7 = *(v0 + 2368);
    v8 = *(v0 + 2000);
    v38 = *(v0 + 1992);
    v39 = *(v0 + 2032);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40 = v11;
    *v9 = 136446466;
    v12 = sub_1D5BC5100(v7, v6, &v40);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    sub_1D609C8C4(v10, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA6FD500](v11, -1, -1);
    MEMORY[0x1DA6FD500](v9, -1, -1);

    (*(v8 + 8))(v39, v38);
  }

  else
  {
    v15 = *(v0 + 2032);
    v16 = *(v0 + 2000);
    v17 = *(v0 + 1992);

    (*(v16 + 8))(v15, v17);
  }

  v18 = (v0 + 1056);
  v19 = *(v0 + 2384);
  if (v19 == sub_1D726279C())
  {

    v20 = *(v0 + 2216);
    v21 = *(v0 + 2208);
    v22 = *(v0 + 2168);
    v23 = *(v0 + 1865) & 1;
    v24 = *(v0 + 1104);
    *(v0 + 1568) = *(v0 + 1088);
    *(v0 + 1584) = v24;
    *(v0 + 1600) = *(v0 + 1120);
    v25 = *(v0 + 1072);
    *(v0 + 1536) = *v18;
    *(v0 + 1552) = v25;
    (*(v20 + 8))(v0 + 1536, v21);
    v40 = v22;
    v41 = v23;
    v26 = FormatArrangementSlotInstruction.personalize.getter();
    v27 = *(v0 + 1896);
    if (v26)
    {
      v28 = sub_1D6095D88(*(v0 + 1896), *(v0 + 1976));

      v27 = v28;
    }

    v37 = *(v0 + 8);

    return v37(v27);
  }

  v29 = *(v0 + 2384);
  v30 = sub_1D726277C();
  sub_1D726271C();
  if ((v30 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_16;
  }

  v31 = *(v0 + 2232) + 16 * v29;
  v32 = *(v31 + 32);
  *(v0 + 2368) = v32;
  result = *(v31 + 40);
  *(v0 + 2376) = result;
  *(v0 + 2384) = v29 + 1;
  if (__OFADD__(v29, 1))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  *(v0 + 1840) = v32;
  *(v0 + 1848) = result;

  v34 = swift_task_alloc();
  *(v0 + 2392) = v34;
  *v34 = v0;
  v34[1] = sub_1D60910CC;
  v35 = *(v0 + 2144);
  v36 = *(v0 + 1976);

  return sub_1D609534C(v35, (v0 + 1840), v18, v36);
}

uint64_t sub_1D6093D18()
{
  v51 = v0;
  v1 = *(v0 + 2456);
  sub_1D608BC28(*(v0 + 1976), *(v0 + 2024));

  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 2416);
  if (v5)
  {
    v7 = *(v0 + 2408);
    v8 = *(v0 + 2000);
    v46 = *(v0 + 1992);
    v47 = *(v0 + 2024);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v49 = v11;
    *v9 = 136446466;
    v12 = sub_1D5BC5100(v7, v6, &v49);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    sub_1D609C8C4(v10, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA6FD500](v11, -1, -1);
    MEMORY[0x1DA6FD500](v9, -1, -1);

    (*(v8 + 8))(v47, v46);
  }

  else
  {
    v15 = *(v0 + 2024);
    v16 = *(v0 + 2000);
    v17 = *(v0 + 1992);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 2424);
  if (v18 == sub_1D726279C())
  {

    v19 = *(v0 + 1865) & 1;
    v49 = *(v0 + 2168);
    v50 = v19;
    v20 = FormatArrangementSlotInstruction.personalize.getter();
    v21 = *(v0 + 1904);
    if (v20)
    {
      v22 = sub_1D6095D88(*(v0 + 1904), *(v0 + 1976));

      v21 = v22;
    }

    v36 = *(v0 + 2096);
    v37 = *(v0 + 2088);
    v38 = *(v0 + 2056);
    *(v0 + 1960) = v21;
    sub_1D72627FC();
    swift_getWitnessTable();
    sub_1D7262C9C();
    if ((*(v36 + 48))(v37, 1, v38) == 1)
    {
      (*(*(v0 + 2072) + 8))(*(v0 + 2088), *(v0 + 2064));

      v39 = sub_1D726275C();
    }

    else
    {
      v40 = *(v0 + 2128);
      v41 = *(v0 + 2056);
      v42 = *(*(v0 + 2096) + 32);
      v42(v40, *(v0 + 2088), v41);

      sub_1D72644CC();
      swift_allocObject();
      v43 = sub_1D726270C();
      v42(v44, v40, v41);
      v39 = sub_1D5BFCB60(v43);
    }

    v48 = v39;

    v45 = *(v0 + 8);

    return v45(v48);
  }

  v23 = *(v0 + 2424);
  v24 = sub_1D726277C();
  result = sub_1D726271C();
  if ((v24 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_19;
  }

  v26 = *(v0 + 2256) + 16 * v23;
  v27 = *(v26 + 32);
  *(v0 + 2408) = v27;
  v28 = *(v26 + 40);
  *(v0 + 2416) = v28;
  *(v0 + 2424) = v23 + 1;
  if (__OFADD__(v23, 1))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v29 = *(v0 + 784);
  *(v0 + 848) = *(v0 + 768);
  *(v0 + 864) = v29;
  *(v0 + 880) = *(v0 + 800);
  v30 = *(v0 + 752);
  *(v0 + 816) = *(v0 + 736);
  *(v0 + 832) = v30;
  *(v0 + 1776) = v27;
  *(v0 + 1784) = v28;
  v31 = type metadata accessor for FormatArrangementResolverContext();
  *(v0 + 2432) = v31;
  v32 = *(v31 - 8);
  *(v0 + 2440) = v32;
  (*(v32 + 16))(v0 + 896, v0 + 736, v31);

  v33 = swift_task_alloc();
  *(v0 + 2448) = v33;
  *v33 = v0;
  v33[1] = sub_1D609183C;
  v34 = *(v0 + 2136);
  v35 = *(v0 + 1976);

  return sub_1D609534C(v34, (v0 + 1776), v0 + 816, v35);
}

uint64_t sub_1D6094430()
{
  v48 = v0;
  v1 = *(v0 + 2496);
  sub_1D608BC28(*(v0 + 1976), *(v0 + 2016));

  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 2472);
  if (v5)
  {
    v7 = *(v0 + 2464);
    v8 = *(v0 + 2000);
    v43 = *(v0 + 1992);
    v44 = *(v0 + 2016);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46 = v11;
    *v9 = 136446466;
    v12 = sub_1D5BC5100(v7, v6, &v46);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    sub_1D609C8C4(v10, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA6FD500](v11, -1, -1);
    MEMORY[0x1DA6FD500](v9, -1, -1);

    (*(v8 + 8))(v44, v43);
  }

  else
  {
    v15 = *(v0 + 2016);
    v16 = *(v0 + 2000);
    v17 = *(v0 + 1992);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 2480);
  if (v18 == sub_1D726279C())
  {

    v19 = *(v0 + 2280);
    v20 = *(v0 + 2272);
    v21 = *(v0 + 544);
    *(v0 + 688) = *(v0 + 528);
    *(v0 + 704) = v21;
    *(v0 + 720) = *(v0 + 560);
    v22 = *(v0 + 512);
    *(v0 + 656) = *(v0 + 496);
    *(v0 + 672) = v22;
    (*(v19 + 8))(v0 + 656, v20);
    v23 = *(v0 + 1888);
    *(v0 + 1928) = v23;
    sub_1D72627FC();
    swift_getWitnessTable();
    if (sub_1D7262CCC())
    {
      v24 = *(v0 + 1865) & 1;
      v46 = *(v0 + 2168);
      v47 = v24;
      v45 = *(v0 + 2040);
      *(v0 + 1912) = sub_1D5D2F2BC();
      v25 = swift_task_alloc();
      *(v25 + 16) = v45;
      v26 = sub_1D72627FC();

      WitnessTable = swift_getWitnessTable();
      v29 = sub_1D5B874E4(sub_1D5CB5238, v25, v26, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v28);

      sub_1D609C50C();
      swift_allocError();
      *v30 = v29;
      *(v30 + 8) = 0;
      *(v30 + 16) = 2;
      swift_willThrow();

      v41 = *(v0 + 8);

      return v41();
    }

    else
    {
      v39 = *(v0 + 1865) & 1;
      v46 = *(v0 + 2168);
      v47 = v39;
      if (FormatArrangementSlotInstruction.personalize.getter())
      {
        v40 = sub_1D6095D88(v23, *(v0 + 1976));

        v23 = v40;
      }

      v42 = *(v0 + 8);

      return v42(v23);
    }
  }

  v31 = *(v0 + 2480);
  v32 = sub_1D726277C();
  sub_1D726271C();
  if ((v32 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_21;
  }

  v33 = *(v0 + 2296) + 16 * v31;
  v34 = *(v33 + 32);
  *(v0 + 2464) = v34;
  result = *(v33 + 40);
  *(v0 + 2472) = result;
  *(v0 + 2480) = v31 + 1;
  if (__OFADD__(v31, 1))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  *(v0 + 1808) = v34;
  *(v0 + 1816) = result;

  v36 = swift_task_alloc();
  *(v0 + 2488) = v36;
  *v36 = v0;
  v36[1] = sub_1D6092260;
  v37 = *(v0 + 2120);
  v38 = *(v0 + 1976);

  return sub_1D609534C(v37, (v0 + 1808), v0 + 496, v38);
}

uint64_t sub_1D6094B34()
{
  v60 = v0;
  v1 = *(v0 + 2552);
  sub_1D608BC28(*(v0 + 1976), *(v0 + 2008));

  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 2512);
  if (v5)
  {
    v7 = *(v0 + 2504);
    v8 = *(v0 + 2000);
    v54 = *(v0 + 1992);
    v55 = *(v0 + 2008);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v58 = v11;
    *v9 = 136446466;
    v12 = sub_1D5BC5100(v7, v6, &v58);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    sub_1D609C8C4(v10, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA6FD500](v11, -1, -1);
    MEMORY[0x1DA6FD500](v9, -1, -1);

    (*(v8 + 8))(v55, v54);
  }

  else
  {
    v15 = *(v0 + 2008);
    v16 = *(v0 + 2000);
    v17 = *(v0 + 1992);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 2520);
  if (v18 == sub_1D726279C())
  {

    v19 = *(v0 + 1865) & 1;
    v58 = *(v0 + 2168);
    v59 = v19;
    v20 = FormatArrangementSlotInstruction.personalize.getter();
    v21 = *(v0 + 1952);
    if (v20)
    {
      v22 = sub_1D6095D88(*(v0 + 1952), *(v0 + 1976));

      v21 = v22;
    }

    v23 = *(v0 + 2096);
    v24 = *(v0 + 2080);
    v25 = *(v0 + 2056);
    *(v0 + 1944) = v21;
    sub_1D72627FC();
    swift_getWitnessTable();
    sub_1D7262C9C();
    if ((*(v23 + 48))(v24, 1, v25) == 1)
    {
      v26 = *(v0 + 2168);
      v27 = *(v0 + 1865) & 1;
      v56 = *(v0 + 2040);
      (*(*(v0 + 2072) + 8))(*(v0 + 2080), *(v0 + 2064));

      v58 = v26;
      v59 = v27;
      *(v0 + 1936) = sub_1D5D2F2BC();
      v28 = swift_task_alloc();
      *(v28 + 16) = v56;
      v29 = sub_1D72627FC();

      WitnessTable = swift_getWitnessTable();
      v32 = sub_1D5B874E4(sub_1D5CB5250, v28, v29, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v31);

      sub_1D609C50C();
      swift_allocError();
      *v33 = v32;
      *(v33 + 8) = 0;
      *(v33 + 16) = 2;
      swift_willThrow();

      v34 = *(v0 + 8);

      return v34();
    }

    else
    {
      v48 = *(v0 + 2104);
      v49 = *(v0 + 2056);
      v50 = *(*(v0 + 2096) + 32);
      v50(v48, *(v0 + 2080), v49);

      sub_1D72644CC();
      swift_allocObject();
      v51 = sub_1D726270C();
      v50(v52, v48, v49);
      v57 = sub_1D5BFCB60(v51);

      v53 = *(v0 + 8);

      return v53(v57);
    }
  }

  v36 = *(v0 + 2520);
  v37 = sub_1D726277C();
  result = sub_1D726271C();
  if ((v37 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_20;
  }

  v38 = *(v0 + 2320) + 16 * v36;
  v39 = *(v38 + 32);
  *(v0 + 2504) = v39;
  v40 = *(v38 + 40);
  *(v0 + 2512) = v40;
  *(v0 + 2520) = v36 + 1;
  if (__OFADD__(v36, 1))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v41 = *(v0 + 784);
  *(v0 + 128) = *(v0 + 768);
  *(v0 + 144) = v41;
  *(v0 + 160) = *(v0 + 800);
  v42 = *(v0 + 752);
  *(v0 + 96) = *(v0 + 736);
  *(v0 + 112) = v42;
  *(v0 + 1824) = v39;
  *(v0 + 1832) = v40;
  v43 = type metadata accessor for FormatArrangementResolverContext();
  *(v0 + 2528) = v43;
  v44 = *(v43 - 8);
  *(v0 + 2536) = v44;
  (*(v44 + 16))(v0 + 1616, v0 + 736, v43);

  v45 = swift_task_alloc();
  *(v0 + 2544) = v45;
  *v45 = v0;
  v45[1] = sub_1D6092B20;
  v46 = *(v0 + 2112);
  v47 = *(v0 + 1976);

  return sub_1D609534C(v46, (v0 + 1824), v0 + 96, v47);
}

uint64_t sub_1D609534C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[61] = a4;
  v5[62] = v4;
  v5[59] = a1;
  v5[60] = a3;
  v8 = sub_1D725895C();
  v5[63] = v8;
  v5[64] = *(v8 - 8);
  v5[65] = swift_task_alloc();
  v5[66] = *(a4 + 16);
  v5[67] = *(a4 + 24);
  v9 = type metadata accessor for FormatArrangementTemplate();
  v5[68] = v9;
  v10 = sub_1D726393C();
  v5[69] = v10;
  v5[70] = *(v10 - 8);
  v5[71] = swift_task_alloc();
  v5[72] = *(v9 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v11 = a2[1];
  v5[75] = *a2;
  v5[76] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D6095508, 0, 0);
}

uint64_t sub_1D6095508()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 544);
  *(v0 + 440) = *(v0 + 600);
  *(v0 + 448) = v1;

  sub_1D7261E3C();

  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    v5 = *(v0 + 608);
    v6 = *(v0 + 600);
    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
    sub_1D609C50C();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = v5;
    *(v7 + 16) = 0;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 592);
    v11 = *(v0 + 576);
    v12 = *(v0 + 568);
    v13 = *(v0 + 544);
    v14 = *(v0 + 520);
    v16 = *(v0 + 504);
    v15 = *(v0 + 512);
    v17 = *(v0 + 480);
    v18 = *(v11 + 32);
    *(v0 + 616) = v18;
    *(v0 + 624) = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v18(v10, v12, v13);
    v33 = *v10;
    v34 = v10[1];

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    sub_1D725894C();
    v19 = sub_1D725893C();
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    MEMORY[0x1DA6F9910](v19, v21);

    *(v0 + 632) = v33;
    *(v0 + 640) = v34;
    v22 = *(v13 + 36);
    *(v0 + 16) = *v17;
    v23 = v17[1];
    v24 = v17[2];
    v25 = v17[4];
    *(v0 + 64) = v17[3];
    *(v0 + 80) = v25;
    *(v0 + 32) = v23;
    *(v0 + 48) = v24;
    v26 = v17[4];
    v28 = v17[1];
    v27 = v17[2];
    *(v0 + 144) = v17[3];
    *(v0 + 160) = v26;
    *(v0 + 112) = v28;
    *(v0 + 128) = v27;
    *(v0 + 96) = *v17;
    v29 = type metadata accessor for FormatArrangementResolverContext();
    *(v0 + 648) = v29;
    v30 = *(v29 - 8);
    *(v0 + 656) = v30;
    (*(v30 + 16))(v0 + 176, v0 + 16, v29);
    v31 = swift_task_alloc();
    *(v0 + 664) = v31;
    *v31 = v0;
    v31[1] = sub_1D6095860;
    v32 = *(v0 + 488);

    return sub_1D6096F14(v0 + 416, v10 + v22, (v0 + 96), v32);
  }
}

uint64_t sub_1D6095860()
{
  v2 = *v1;
  *(v2 + 672) = v0;

  v3 = *(v2 + 656);
  v4 = *(v2 + 648);
  if (v0)
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 144);
    v7 = *(v2 + 160);
    v8 = *(v2 + 112);
    *(v2 + 256) = *(v2 + 96);
    *(v2 + 272) = v8;
    *(v2 + 304) = v6;
    *(v2 + 320) = v7;
    *(v2 + 288) = v5;
    (*(v3 + 8))(v2 + 256, v4);

    v9 = sub_1D6095CDC;
  }

  else
  {
    v10 = *(v2 + 96);
    v11 = *(v2 + 112);
    v12 = *(v2 + 128);
    v13 = *(v2 + 160);
    *(v2 + 384) = *(v2 + 144);
    *(v2 + 400) = v13;
    *(v2 + 352) = v11;
    *(v2 + 368) = v12;
    *(v2 + 336) = v10;
    (*(v3 + 8))(v2 + 336, v4);
    v9 = sub_1D6095A08;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D6095A08()
{
  v27 = v0[80];
  v25 = v0[84];
  v26 = v0[79];
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[54];
  v0[57] = sub_1D6EF8CB8(v0[68]);
  v8 = swift_task_alloc();
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v3;
  v8[5] = v26;
  v8[6] = v27;
  v8[7] = v4;
  v8[8] = v6;
  v8[9] = v5;
  v28 = v7;
  v8[10] = v7;
  type metadata accessor for FormatArrangementComponent();
  v9 = sub_1D72627FC();
  v10 = type metadata accessor for FormatArrangementComponentResult();
  v11 = sub_1D5B49474(0, &qword_1EDF3C5D0);

  WitnessTable = swift_getWitnessTable();
  v13 = sub_1D5B874E4(sub_1D609C560, v8, v9, v10, v11, WitnessTable, MEMORY[0x1E69E7288], (v0 + 58));
  if (v25)
  {
    v14 = v0[74];
    v15 = v0[72];
    v16 = v0[68];

    sub_1D609C5A0(v6, v5, v28);

    (*(v15 + 8))(v14, v16);
  }

  else
  {
    v18 = v13;
    v19 = v0[77];
    v20 = v0[74];
    v21 = v0[73];
    v22 = v0[68];
    v24 = v0[59];

    sub_1D609C5A0(v6, v5, v28);

    v19(v21, v20, v22);
    sub_1D68084C4(v21, v18, v24);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D6095CDC()
{
  (*(v0[72] + 8))(v0[74], v0[68]);

  v1 = v0[1];

  return v1();
}

void *sub_1D6095D88(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v92 = sub_1D725C42C();
  v7 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v89 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v81 - v16;
  v19 = *(a2 + 16);
  v18 = *(a2 + 24);
  v20 = type metadata accessor for FormatArrangementTemplateResult();
  v93 = a1;
  v21 = v20;
  if (sub_1D726279C() < 2)
  {
    v28 = v93;
  }

  else
  {
    v86 = a2;
    v87 = v18;
    v90 = v4;
    v91 = v3;
    sub_1D608BC28(a2, v17);
    v22 = v93;

    v23 = sub_1D725C3FC();
    v24 = sub_1D7262EDC();
    v25 = os_log_type_enabled(v23, v24);
    v83 = v10;
    v88 = v19;
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = v21;
      *(v26 + 4) = sub_1D726279C();

      _os_log_impl(&dword_1D5B42000, v23, v24, "Format arrangement personalization on %ld template results", v26, 0xCu);
      MEMORY[0x1DA6FD500](v26, -1, -1);
    }

    else
    {

      v27 = v21;
    }

    v29 = *(v7 + 8);
    v29(v17, v92);
    v30 = v89;
    sub_1D608BC28(v86, v89);

    v31 = sub_1D725C3FC();
    v32 = sub_1D7262EDC();
    v33 = os_log_type_enabled(v31, v32);
    v84 = v29;
    v85 = v7 + 8;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v81 = &v81;
      v82 = v35;
      v95 = v35;
      *v34 = 136446210;
      v94 = v22;
      MEMORY[0x1EEE9AC00](v35, v36);
      v37 = v87;
      *(&v81 - 2) = v88;
      *(&v81 - 1) = v37;
      v38 = sub_1D72627FC();
      WitnessTable = swift_getWitnessTable();
      v40 = v91;
      sub_1D5B874E4(sub_1D5CB5250, (&v81 - 4), v38, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v41);
      v91 = v40;
      v42 = MEMORY[0x1DA6F9D20]();
      v44 = v43;

      v45 = sub_1D5BC5100(v42, v44, &v95);
      v22 = v93;

      *(v34 + 4) = v45;
      _os_log_impl(&dword_1D5B42000, v31, v32, "Format arrangement personalization templates unsorted order %{public}s", v34, 0xCu);
      v46 = v82;
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x1DA6FD500](v46, -1, -1);
      MEMORY[0x1DA6FD500](v34, -1, -1);

      v47 = v88;
      v48 = v84(v30, v92);
    }

    else
    {

      v48 = (v29)(v30, v92);
      v37 = v87;
      v47 = v88;
    }

    v95 = v22;
    MEMORY[0x1EEE9AC00](v48, v49);
    *(&v81 - 4) = v47;
    *(&v81 - 3) = v37;
    v28 = v90;
    *(&v81 - 2) = v90;
    v50 = sub_1D72627FC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v52 = sub_1D5B49474(0, &qword_1EDF3C5D0);
    v53 = swift_getWitnessTable();
    v54 = v52;
    v55 = v53;
    v56 = v91;
    v57 = sub_1D5B874E4(sub_1D609C74C, (&v81 - 6), v50, TupleTypeMetadata2, v54, v53, MEMORY[0x1E69E7288], &v94);
    if (!v56)
    {
      v89 = v55;
      v93 = &v81;
      v95 = v57;
      MEMORY[0x1EEE9AC00](v57, v58);
      v59 = v87;
      *(&v81 - 2) = v47;
      *(&v81 - 1) = v59;
      v60 = sub_1D72627FC();
      swift_getWitnessTable();
      v61 = sub_1D72624AC();

      v95 = v61;
      MEMORY[0x1EEE9AC00](v62, v63);
      *(&v81 - 2) = v64;
      *(&v81 - 1) = v59;
      v65 = swift_getWitnessTable();
      v67 = sub_1D5B874E4(sub_1D609C7E4, (&v81 - 4), v60, v27, MEMORY[0x1E69E73E0], v65, MEMORY[0x1E69E7410], v66);
      v91 = 0;

      v68 = v83;
      sub_1D608BC28(v86, v83);
      v28 = v67;

      v69 = sub_1D725C3FC();
      v70 = sub_1D7262EDC();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v95 = v72;
        *v71 = 136446210;
        v94 = v67;
        MEMORY[0x1EEE9AC00](v72, v73);
        v74 = v87;
        *(&v81 - 2) = v88;
        *(&v81 - 1) = v74;
        sub_1D5B874E4(sub_1D5CB5238, (&v81 - 4), v50, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v89, MEMORY[0x1E69E7410], v75);
        v76 = MEMORY[0x1DA6F9D20]();
        v78 = v77;

        v79 = sub_1D5BC5100(v76, v78, &v95);

        *(v71 + 4) = v79;
        _os_log_impl(&dword_1D5B42000, v69, v70, "Format arrangement personalization templates sorted order %{public}s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x1DA6FD500](v72, -1, -1);
        MEMORY[0x1DA6FD500](v71, -1, -1);

        v84(v83, v92);
      }

      else
      {

        v84(v68, v92);
      }
    }
  }

  return v28;
}

uint64_t sub_1D60965D8@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __objc2_prot ***a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a5;
  v7 = v6;
  v94 = a6;
  v100 = a3;
  v101 = a4;
  v10 = type metadata accessor for FormatArrangementTemplateResult();
  v102 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v92 = (&v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v91 - v15);
  v17 = sub_1D725C42C();
  v97 = *(v17 - 8);
  v98 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v93 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v96 = &v91 - v22;
  v23 = sub_1D68082F8();
  v24 = v23;
  v99 = v23 >> 62;
  v25 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
LABEL_40:
    v26 = sub_1D7263BFC();
  }

  else
  {
    v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = a2;
  v104 = a1;
  v95 = v16;
  v105 = v10;
  v107 = v7;
  if (v26)
  {
    a1 = 0;
    v10 = v24 & 0xC000000000000001;
    v27 = MEMORY[0x1E69E7CC0];
    v7 = &off_1E84D3000;
    do
    {
      v106 = v27;
      v28 = a1;
      while (1)
      {
        if (v10)
        {
          v16 = MEMORY[0x1DA6FB460](v28, v24);
          a1 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v28 >= *(v25 + 16))
          {
            goto LABEL_39;
          }

          v16 = *(v24 + 8 * v28 + 32);
          swift_unknownObjectRetain();
          a1 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

        v29 = [v16 scoreProfile];
        if (v29)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v28;
        if (a1 == v26)
        {
          v27 = v106;
          goto LABEL_23;
        }
      }

      a2 = v29;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = v106;
      }

      else
      {
        v27 = sub_1D698BF70(0, *(v106 + 2) + 1, 1, v106);
      }

      v31 = *(v27 + 2);
      v30 = *(v27 + 3);
      v32 = (v31 + 1);
      if (v31 >= v30 >> 1)
      {
        v106 = (v31 + 1);
        v34 = sub_1D698BF70((v30 > 1), v31 + 1, 1, v27);
        v32 = v106;
        v27 = v34;
      }

      *(v27 + 2) = v32;
      v33 = &v27[24 * v31];
      *(v33 + 4) = v16;
      *(v33 + 5) = a2;
      *(v33 + 6) = 0;
    }

    while (a1 != v26);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

LABEL_23:
  v35 = *(v27 + 2);
  v36 = v107;
  if (v99)
  {
    v38 = v27;
    v37 = sub_1D7263BFC();
    v27 = v38;
  }

  else
  {
    v37 = *(v25 + 16);
  }

  v39 = v103;
  if (v35 >= v37)
  {
    v65 = v27;

    v40 = type metadata accessor for FormatArrangementResolver();
    v66 = v102;
  }

  else
  {

    v40 = type metadata accessor for FormatArrangementResolver();
    v41 = &v39[*(v40 + 48)];
    v42 = *(v41 + 3);
    v43 = *(v41 + 4);
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v45 = v104;
    v44 = v105;
    sub_1D68083D4(v105, &v108);
    v46 = (*(v43 + 8))(v24, &v108, v42, v43);
    if (v36)
    {

      v47 = v93;
      sub_1D608BC28(v40, v93);
      v48 = v102;
      v49 = v92;
      (*(v102 + 16))(v92, v45, v44);
      v50 = v36;
      v51 = sub_1D725C3FC();
      v52 = sub_1D7262EBC();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v44;
        v107 = v36;
        v108 = v54;
        v56 = v48;
        v57 = v54;
        *v53 = 136446466;
        v58 = *v49;
        v59 = v49[1];
        v60 = *(v56 + 8);

        v60(v49, v55);
        v61 = sub_1D5BC5100(v58, v59, &v108);

        *(v53 + 4) = v61;
        v36 = v107;
        *(v53 + 12) = 2114;
        v62 = v36;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v53 + 14) = v63;
        v64 = v106;
        *v106 = v63;
        _os_log_impl(&dword_1D5B42000, v51, v52, "Format arrangement personalization failed to score items in template '%{public}s', error: %{public}@", v53, 0x16u);
        sub_1D609C8C4(v64, sub_1D5F156F4);
        MEMORY[0x1DA6FD500](v64, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x1DA6FD500](v57, -1, -1);
        MEMORY[0x1DA6FD500](v53, -1, -1);

        (*(v97 + 8))(v93, v98);
      }

      else
      {

        (*(v48 + 8))(v49, v44);
        (*(v97 + 8))(v47, v98);
      }

      v90 = v91;
      result = swift_willThrow();
      *v90 = v36;
      return result;
    }

    v65 = v46;
    v107 = 0;

    v66 = v102;
    v39 = v103;
  }

  v67 = v96;
  v68 = &v39[*(v40 + 48)];
  v69 = *(v68 + 3);
  v70 = *(v68 + 4);
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v71 = (*(v70 + 48))(v65, v69, v70);

  sub_1D608BC28(v40, v67);
  v72 = v67;
  v73 = *(v66 + 16);
  v74 = v95;
  v75 = v66;
  v76 = v105;
  (v73)(v95, v104, v105);
  v77 = sub_1D725C3FC();
  v78 = sub_1D7262EDC();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    LODWORD(v103) = v78;
    v80 = v79;
    v81 = swift_slowAlloc();
    v108 = v81;
    *v80 = 136446466;
    v106 = v73;
    v82 = *v74;
    v83 = v74[1];
    v84 = *(v75 + 8);

    v84(v74, v105);
    v85 = sub_1D5BC5100(v82, v83, &v108);

    *(v80 + 4) = v85;
    v73 = v106;
    *(v80 + 12) = 2048;
    *(v80 + 14) = v71;
    _os_log_impl(&dword_1D5B42000, v77, v103, "Format arrangement personalization template '%{public}s' score %f", v80, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v81);
    v86 = v81;
    v76 = v105;
    MEMORY[0x1DA6FD500](v86, -1, -1);
    MEMORY[0x1DA6FD500](v80, -1, -1);
  }

  else
  {

    (*(v75 + 8))(v74, v76);
  }

  (*(v97 + 8))(v72, v98);
  v87 = v94;
  v88 = *(swift_getTupleTypeMetadata2() + 48);
  result = (v73)(v87, v104, v76);
  *(v87 + v88) = v71;
  return result;
}

uint64_t sub_1D6096DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FormatArrangementTemplateResult();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v6);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, v7);
  return (*(*(v4 - 8) + 32))(a2, v9, v4);
}

uint64_t sub_1D6096F14(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  *(v5 + 264) = a4;
  *(v5 + 272) = v4;
  *(v5 + 248) = a1;
  *(v5 + 256) = a2;
  v8 = sub_1D725C42C();
  *(v5 + 280) = v8;
  *(v5 + 288) = *(v8 - 8);
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  v9 = *(a4 + 16);
  *(v5 + 336) = v9;
  v10 = sub_1D726393C();
  *(v5 + 344) = v10;
  *(v5 + 352) = *(v10 - 8);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = *(v9 - 8);
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  v11 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v11;
  *(v5 + 80) = a3[4];
  v12 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D6097124, 0, 0);
}

uint64_t sub_1D6097124()
{
  v107 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 336);
  (*(*(v0 + 352) + 16))(v1, *(v0 + 256), *(v0 + 344));
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 248);
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
    *v4 = 0;
    v4[1] = 0;
    v5 = 1;
LABEL_3:
    *(*(v0 + 248) + 16) = v5;

    v6 = *(v0 + 8);

    return v6();
  }

  v8 = *(v0 + 264);
  (*(*(v0 + 368) + 32))(*(v0 + 416), *(v0 + 360), *(v0 + 336));
  *(v0 + 496) = *(v8 + 56);
  v9 = *(v8 + 24);
  *(v0 + 424) = v9;
  *(v0 + 432) = type metadata accessor for FormatArrangementData();
  *(v0 + 440) = *(v9 + 32);
  sub_1D7261E3C();
  v10 = *(v0 + 192);
  if (v10 != 1)
  {
    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    v13 = *(v0 + 368);
    v14 = *(v0 + 328);
    v16 = *(v0 + 280);
    v15 = *(v0 + 288);
    v17 = *(v0 + 264);
    v18 = *(v0 + 64);
    v103[2] = *(v0 + 48);
    v103[3] = v18;
    v103[4] = *(v0 + 80);
    v19 = *(v0 + 32);
    v103[0] = *(v0 + 16);
    v103[1] = v19;
    v98 = v11;
    v100 = v10;
    v104 = v11;
    v105 = v12;
    v106 = v10;
    sub_1D608BC28(v17, v14);
    v20 = type metadata accessor for FormatArrangementResolverContext();
    v21 = sub_1D69ACCC4(&v104, v14, v20);
    v96 = *(v15 + 8);
    v96(v14, v16);
    v22 = (v13 + 16);
    v23 = *(v0 + 416);
    v24 = *(v0 + 336);
    v25 = *(v0 + 264);
    if ((v21 & 1) == 0)
    {
      v43 = *(v0 + 408);
      sub_1D608BC28(v25, *(v0 + 320));
      (*v22)(v43, v23, v24);
      v44 = sub_1D725C3FC();
      v90 = sub_1D7262EDC();
      v45 = os_log_type_enabled(v44, v90);
      v46 = *(v0 + 408);
      v47 = *(v0 + 416);
      v48 = *(v0 + 368);
      v49 = *(v0 + 336);
      v50 = *(v0 + 320);
      v92 = *(v0 + 280);
      if (v45)
      {
        loga = *(v0 + 416);
        v51 = swift_slowAlloc();
        v86 = v50;
        v52 = swift_slowAlloc();
        *&v103[0] = v52;
        *v51 = 136446210;
        v53 = sub_1D72644BC();
        v94 = v12;
        v12 = v54;
        v55 = *(v48 + 8);
        v55(v46, v49);
        v56 = sub_1D5BC5100(v53, v12, v103);
        LOWORD(v12) = v94;

        *(v51 + 4) = v56;
        _os_log_impl(&dword_1D5B42000, v44, v90, "Format arrangement reusing cached data source %{public}s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        MEMORY[0x1DA6FD500](v52, -1, -1);
        MEMORY[0x1DA6FD500](v51, -1, -1);

        v96(v86, v92);
        v55(loga, v49);
      }

      else
      {

        v83 = *(v48 + 8);
        v83(v46, v49);
        v96(v50, v92);
        v83(v47, v49);
      }

      v84 = *(v0 + 248);
      *v84 = v98;
      v84[1] = v12;
      v5 = v100;
      goto LABEL_3;
    }

    v93 = v12;
    v26 = *(v0 + 400);
    sub_1D608BC28(v25, *(v0 + 312));
    (*v22)(v26, v23, v24);
    v27 = sub_1D725C3FC();
    v28 = sub_1D7262EDC();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 400);
    v31 = *(v0 + 368);
    v32 = *(v0 + 336);
    v33 = *(v0 + 312);
    v34 = *(v0 + 280);
    if (v29)
    {
      log = v27;
      v35 = swift_slowAlloc();
      v91 = v34;
      v36 = swift_slowAlloc();
      *&v103[0] = v36;
      *v35 = 136446210;
      v85 = v28;
      v37 = sub_1D72644BC();
      v89 = v33;
      v39 = v38;
      (*(v31 + 8))(v30, v32);
      v40 = sub_1D5BC5100(v37, v39, v103);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1D5B42000, log, v85, "Format arrangement invalidated cached data source %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1DA6FD500](v36, -1, -1);
      MEMORY[0x1DA6FD500](v35, -1, -1);
      sub_1D609C5A0(v98, v93, v100);

      v41 = v89;
      v42 = v91;
    }

    else
    {
      sub_1D609C5A0(v98, v93, v100);

      (*(v31 + 8))(v30, v32);
      v41 = v33;
      v42 = v34;
    }

    v96(v41, v42);
  }

  v57 = *(v0 + 416);
  v58 = *(v0 + 392);
  v59 = *(v0 + 368);
  v60 = *(v0 + 336);
  sub_1D608BC28(*(v0 + 264), *(v0 + 304));
  v61 = *(v59 + 16);
  *(v0 + 448) = v61;
  *(v0 + 456) = (v59 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v61(v58, v57, v60);
  v62 = sub_1D725C3FC();
  v63 = sub_1D7262EDC();
  v64 = os_log_type_enabled(v62, v63);
  v65 = *(v0 + 392);
  v66 = *(v0 + 368);
  v67 = *(v0 + 336);
  v68 = *(v0 + 304);
  v70 = *(v0 + 280);
  v69 = *(v0 + 288);
  if (v64)
  {
    v101 = *(v0 + 280);
    v71 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v103[0] = v97;
    *v71 = 136446210;
    v72 = sub_1D72644BC();
    v99 = v68;
    v74 = v73;
    v95 = v63;
    v75 = *(v66 + 8);
    v75(v65, v67);
    v76 = sub_1D5BC5100(v72, v74, v103);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_1D5B42000, v62, v95, "Format arrangement resolving data source %{public}s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v97);
    MEMORY[0x1DA6FD500](v97, -1, -1);
    MEMORY[0x1DA6FD500](v71, -1, -1);

    v77 = *(v69 + 8);
    v77(v99, v101);
  }

  else
  {

    v75 = *(v66 + 8);
    v75(v65, v67);
    v77 = *(v69 + 8);
    v77(v68, v70);
  }

  *(v0 + 464) = v77;
  *(v0 + 472) = v75;
  v78 = *(*(v0 + 272) + *(*(v0 + 264) + 52));
  v79 = *(v0 + 80);
  *(v0 + 144) = *(v0 + 64);
  *(v0 + 160) = v79;
  v80 = *(v0 + 48);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 128) = v80;
  *(v0 + 96) = *(v0 + 16);
  v102 = (v78 + *v78);
  v81 = swift_task_alloc();
  *(v0 + 480) = v81;
  *v81 = v0;
  v81[1] = sub_1D60979CC;
  v82 = *(v0 + 416);

  return v102(v0 + 200, v82, v0 + 96);
}

uint64_t sub_1D60979CC()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_1D6097E7C;
  }

  else
  {
    v2 = sub_1D6097AE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6097AE0()
{
  v34 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 416);
  v3 = *(v0 + 384);
  v4 = *(v0 + 336);
  v30 = *(v0 + 200);
  v31 = *(v0 + 208);
  v32 = *(v0 + 216);
  sub_1D608BC28(*(v0 + 264), *(v0 + 296));
  v1(v3, v2, v4);
  v5 = sub_1D725C3FC();
  v6 = sub_1D7262EDC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 464);
  v28 = *(v0 + 472);
  v9 = *(v0 + 384);
  if (v7)
  {
    v10 = *(v0 + 336);
    v25 = *(v0 + 280);
    v26 = *(v0 + 296);
    v24 = *(v0 + 464);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136446210;
    v13 = sub_1D72644BC();
    v15 = v14;
    v28(v9, v10);
    v16 = sub_1D5BC5100(v13, v15, &v33);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1D5B42000, v5, v6, "Format arrangement did resolve data source %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1DA6FD500](v12, -1, -1);
    MEMORY[0x1DA6FD500](v11, -1, -1);

    v24(v26, v25);
  }

  else
  {
    v17 = *(v0 + 336);
    v18 = *(v0 + 296);
    v19 = *(v0 + 280);

    v28(v9, v17);
    v8(v18, v19);
  }

  v20 = *(v0 + 416);
  v21 = *(v0 + 336);
  v27 = *(v0 + 248);
  v29 = *(v0 + 472);
  (*(v0 + 448))(*(v0 + 376), v20, v21);
  *(v0 + 224) = v30;
  *(v0 + 232) = v31;
  *(v0 + 240) = v32;
  j__swift_bridgeObjectRetain();
  sub_1D7261E1C();

  sub_1D7261E4C();
  v29(v20, v21);
  *v27 = v30;
  v27[1] = v31;
  *(*(v0 + 248) + 16) = v32;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D6097E7C()
{
  (*(v0 + 472))(*(v0 + 416), *(v0 + 336));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6097F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12)
{
  v35 = a8;
  v36 = a9;
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v16 = type metadata accessor for FormatArrangementResolver();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v33 - v23;
  v26 = *a1;
  if (*(a1 + 40))
  {
    (*(v17 + 16))(v20, a2, v16, v24);
    v40[0] = v26;
    v41 = a6;
    *&v42 = a7;
    *(&v42 + 1) = v35;
    v27 = v44;
    sub_1D60994A8(v40, v37, v38, v39, &v41, v16, v36);
    v28 = v27;
    if (v27)
    {
      result = (*(v17 + 8))(v20, v16);
LABEL_6:
      *a12 = v28;
      return result;
    }

    return (*(v17 + 8))(v20, v16);
  }

  else
  {
    v30 = *(v17 + 16);
    v31 = *(a1 + 8);
    v33 = *(a1 + 24);
    v34 = v31;
    v30(&v33 - v23, a2, v16);
    v42 = v34;
    v43 = v33;
    v40[0] = a6;
    v40[1] = a7;
    v40[2] = v35;
    v41 = v26;
    v32 = v44;
    sub_1D60981C0(&v41, v37, v38, v40, v16, v36);
    v28 = v32;
    if (v32)
    {
      result = (*(v17 + 8))(v25, v16);
      goto LABEL_6;
    }

    return (*(v17 + 8))(v25, v16);
  }
}

uint64_t sub_1D60981C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = v6;
  *&v216 = a2;
  *(&v216 + 1) = a3;
  sub_1D5C2BD20();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v182 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for FormatMetadata();
  v187 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209, v15);
  v188 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5971C();
  v191 = *(v17 - 8);
  v192 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v193 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E6720];
  sub_1D5B59538(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v186 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v190 = &v173 - v26;
  sub_1D5B59538(0, &qword_1EDF07090, sub_1D5B5971C, v20);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v184 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v189 = &v173 - v32;
  v220 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v220, v33);
  v218 = (&v173 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = type metadata accessor for FormatContentSlotItem();
  v200 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214, v35);
  v217 = &v173 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v232 = &v173 - v39;
  v208 = type metadata accessor for FormatContentSubgroup();
  v196 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208, v40);
  v185 = (&v173 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v173 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v198 = (&v173 - v48);
  v49 = *a1;
  v50 = a1[1];
  v51 = a1[2];
  v194 = a1[3];
  v195 = v51;
  v197 = a1[4];
  v52 = v49;
  v53 = a4[1];
  v199 = *a4;
  v183 = v53;
  v54 = a4[2];
  v55 = *(v219 + *(a5 + 44));
  v56 = *(v55 + 16);

  if (!v56 || (v57 = sub_1D5B69D90(v52, v50), (v58 & 1) == 0))
  {
    sub_1D609C50C();
    swift_allocError();
    *v109 = v52;
    *(v109 + 8) = v50;
    *(v109 + 16) = 1;
    return swift_willThrow();
  }

  v181 = v54;
  v178 = a6;
  v212 = v7;
  v59 = *(v55 + 56);
  v175 = *(v196 + 72);
  sub_1D609C804(v59 + v175 * v57, v45, type metadata accessor for FormatContentSubgroup);

  v60 = v198;
  sub_1D609C668(v45, v198, type metadata accessor for FormatContentSubgroup);
  v180 = v52;
  *&v222[0] = v52;
  *(&v222[0] + 1) = v50;
  v174 = v50;
  *&v222[1] = v195;
  *(&v222[1] + 1) = v194;
  *&v222[2] = v197;
  v61 = *(a5 + 16);
  v62 = *(a5 + 24);
  v179 = type metadata accessor for FormatArrangementComponentSubgroup();
  *&v227 = sub_1D674AAE4();
  v176 = v62;
  v177 = v61;
  v63 = type metadata accessor for FormatArrangementComponentSubgroupSlot();
  sub_1D72627FC();
  swift_getWitnessTable();
  v204 = v63;
  swift_getWitnessTable();
  result = sub_1D72623BC();
  v205 = result;
  v231[0] = MEMORY[0x1E69E7CD0];
  v65 = v208;
  v66 = *(v60 + *(v208 + 32));
  v67 = MEMORY[0x1E69E7CC0];
  v203 = *(v66 + 16);
  if (v203)
  {
    v68 = 0;
    v201 = v66 + 32;
    v202 = v66;
    v213 = MEMORY[0x1E69E7CC0];
    v69 = v218;
    do
    {
      if (v68 >= *(v66 + 16))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        return result;
      }

      v70 = (v201 + 48 * v68);
      v71 = v70[1];
      v72 = v70[2];
      v73 = v70[3];
      v75 = v70[4];
      v74 = v70[5];
      v210 = *v70;
      v211 = v68;
      *&v222[0] = v210;
      *(&v222[0] + 1) = v71;
      *&v222[1] = v72;
      *(&v222[1] + 1) = v73;
      *&v222[2] = v75;
      *(&v222[2] + 1) = v74;
      v76 = *(v75 + 16);
      if (v76)
      {
        *&v221[0] = v67;
        v207 = v71;
        swift_bridgeObjectRetain_n();
        v206 = v72;

        sub_1D69988E8(0, v76, 0);
        v67 = *&v221[0];
        v77 = (*(v200 + 80) + 32) & ~*(v200 + 80);
        v78 = v75 + v77;
        *&v219 = *(v200 + 72);
        *&v215 = v77;
        do
        {
          v79 = v217;
          sub_1D609C804(v78, v217, type metadata accessor for FormatContentSlotItem);
          sub_1D609C804(v79, v69, type metadata accessor for FormatContentSlotItemObject);
          if (swift_getEnumCaseMultiPayload() == 11)
          {
            v80 = *v69;
            v81 = v69[1];

            sub_1D5B860D0(&v227, v80, v81);

            v227 = v216;

            MEMORY[0x1DA6F9910](45, 0xE100000000000000);
            MEMORY[0x1DA6F9910](v80, v81);

            v82 = *(&v227 + 1);
            v83 = v232;
            *v232 = v227;
            *(v83 + 1) = v82;
            v83[16] = 0;
            swift_storeEnumTagMultiPayload();
            v84 = v214;
            v85 = (v79 + *(v214 + 20));
            v86 = *v85;
            v87 = v85[1];
            sub_1D5D615EC(*v85);
            sub_1D609C8C4(v79, type metadata accessor for FormatContentSlotItem);
            v88 = &v83[*(v84 + 20)];
            v77 = v215;
            *v88 = v86;
            v88[1] = v87;
          }

          else
          {
            sub_1D609C8C4(v69, type metadata accessor for FormatContentSlotItemObject);
            sub_1D609C668(v79, v232, type metadata accessor for FormatContentSlotItem);
          }

          *&v221[0] = v67;
          v90 = *(v67 + 16);
          v89 = *(v67 + 24);
          if (v90 >= v89 >> 1)
          {
            sub_1D69988E8(v89 > 1, v90 + 1, 1);
            v67 = *&v221[0];
          }

          *(v67 + 16) = v90 + 1;
          v91 = v219;
          sub_1D609C668(v232, v67 + v77 + v90 * v219, type metadata accessor for FormatContentSlotItem);
          v78 += v91;
          --v76;
          v69 = v218;
        }

        while (v76);
        v92 = v212;
        v94 = v206;
        v93 = v207;
      }

      else
      {
        v94 = v72;
        v93 = v71;
        swift_bridgeObjectRetain_n();

        v92 = v212;
      }

      *&v222[2] = v67;
      v95 = *(&v216 + 1);

      v96 = sub_1D609BF58(v94, v231, v216, v95);
      v212 = v92;

      *&v222[1] = v96;
      *&v221[0] = v210;
      *(&v221[0] + 1) = v93;
      sub_1D7261E3C();

      v97 = *(&v227 + 1);
      if (*(&v227 + 1))
      {
        v98 = v228;
        v99 = v227;
        sub_1D5B8EF68();

        sub_1D6985530(v100);
        *&v227 = v99;
        *(&v227 + 1) = v97;
        v228 = v98;
        v101 = sub_1D5B8EF70();

        sub_1D609C6D0(v99, v97);
        sub_1D5B886D0(v101);
      }

      v65 = v208;
      v102 = *&v222[0];
      v219 = *(v222 + 8);
      v215 = *(&v222[1] + 8);
      v103 = *(&v222[2] + 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D6991D6C(0, *(v213 + 2) + 1, 1, v213);
        v213 = result;
      }

      v105 = *(v213 + 2);
      v104 = *(v213 + 3);
      if (v105 >= v104 >> 1)
      {
        result = sub_1D6991D6C((v104 > 1), v105 + 1, 1, v213);
        v213 = result;
      }

      v106 = v213;
      *(v213 + 2) = v105 + 1;
      v107 = &v106[48 * v105];
      *(v107 + 4) = v102;
      v68 = v211 + 1;
      *(v107 + 40) = v219;
      *(v107 + 56) = v215;
      *(v107 + 9) = v103;
      v66 = v202;
      v108 = v209;
      v67 = MEMORY[0x1E69E7CC0];
    }

    while (v68 != v203);
  }

  else
  {
    v213 = MEMORY[0x1E69E7CC0];
    v108 = v209;
  }

  if (v181 == 1 || (v183 & 0x1000) != 0 || (v220 = *(v199 + 16)) == 0)
  {
    v232 = MEMORY[0x1E69E7CC0];
    LODWORD(v218) = 64704;
    goto LABEL_53;
  }

  v110 = 0;
  LODWORD(v217) = v183;
  v111 = v231[0];
  *&v219 = v199 + 32;
  v112 = v231[0] + 56;
  v232 = MEMORY[0x1E69E7CC0];
  LODWORD(v218) = 64704;
  while (1)
  {
    v113 = (v219 + (v110 << 6));
    v114 = *v113;
    v115 = v113[1];
    v116 = v113[3];
    v229 = v113[2];
    v230 = v116;
    v227 = v114;
    v228 = v115;
    v117 = v114;
    v118 = v113[2];
    v224 = v113[1];
    v225 = v118;
    v226 = v113[3];
    if (!*(v111 + 16))
    {
      sub_1D5E2A788(&v227, v222);
      goto LABEL_41;
    }

    sub_1D7264A0C();
    sub_1D5E2A788(&v227, v221);

    sub_1D72621EC();
    v119 = sub_1D7264A5C();
    v120 = -1 << *(v111 + 32);
    v121 = v119 & ~v120;
    if (((*(v112 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
    {
LABEL_39:

      v108 = v209;
LABEL_41:
      v222[0] = v117;
      v222[1] = v224;
      v222[2] = v225;
      v223 = v226;
      result = sub_1D5ECF270(v222);
      goto LABEL_49;
    }

    v122 = ~v120;
    while (1)
    {
      v123 = (*(v111 + 48) + 16 * v121);
      v124 = *v123 == v117 && v123[1] == *(&v117 + 1);
      if (v124 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v121 = (v121 + 1) & v122;
      if (((*(v112 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v221[0] = v216;

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    MEMORY[0x1DA6F9910](v117, *(&v117 + 1));

    v125 = v221[0];
    v222[0] = v221[0];
    v222[1] = v224;
    v222[2] = v225;
    v223 = v226;
    sub_1D5E2A788(v222, v221);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v232 = sub_1D6991D24(0, *(v232 + 2) + 1, 1, v232);
    }

    v127 = *(v232 + 2);
    v126 = *(v232 + 3);
    if (v127 >= v126 >> 1)
    {
      v232 = sub_1D6991D24((v126 > 1), v127 + 1, 1, v232);
    }

    v128 = v232;
    *(v232 + 2) = v127 + 1;
    v129 = &v128[64 * v127];
    v130 = v222[0];
    v131 = v222[1];
    v132 = v223;
    *(v129 + 4) = v222[2];
    *(v129 + 5) = v132;
    *(v129 + 2) = v130;
    *(v129 + 3) = v131;
    v133 = v218;
    if ((~v218 & 0xFCC0) == 0)
    {
      v133 = v217;
    }

    LODWORD(v218) = v133;
    v221[0] = v125;
    v221[1] = v224;
    v221[2] = v225;
    v221[3] = v226;
    result = sub_1D5ECF270(v221);
    v108 = v209;
LABEL_49:
    if (++v110 == v220)
    {
      break;
    }

    if (v110 >= *(v199 + 16))
    {
      goto LABEL_66;
    }
  }

  v65 = v208;
LABEL_53:
  v222[0] = v216;

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v134 = v198;
  MEMORY[0x1DA6F9910](*v198, v198[1]);
  *&v219 = *(&v222[0] + 1);
  v220 = *&v222[0];
  (*(v191 + 56))(v189, 1, 1, v192);
  v135 = *(v134 + v65[6]);
  v136 = v174;
  *&v222[0] = v180;
  *(&v222[0] + 1) = v174;
  v138 = v194;
  v137 = v195;
  *&v222[1] = v195;
  *(&v222[1] + 1) = v194;
  *&v222[2] = v197;
  v139 = sub_1D5B8EF68();
  *&v227 = v135;

  sub_1D6985530(v139);
  v140 = *(v134 + v65[7]);
  v217 = v227;
  *&v222[0] = v180;
  *(&v222[0] + 1) = v136;
  *&v222[1] = v137;
  *(&v222[1] + 1) = v138;
  *&v222[2] = v197;
  v141 = sub_1D5B8EF70();
  v142 = v192;
  v143 = v141;

  *(&v216 + 1) = sub_1D5D6021C(v143, v140);
  v144 = v187;
  v145 = v191;
  (*(v187 + 56))(v190, 1, 1, v108);
  v146 = v184;
  sub_1D609C5E8(v189, v184, &qword_1EDF07090, sub_1D5B5971C);
  v147 = *(v145 + 48);
  if (v147(v146, 1, v142) == 1)
  {
    v148 = v198;
    sub_1D609C804(v198 + v65[5], v193, sub_1D5B5971C);
    v124 = v147(v146, 1, v142) == 1;
    v149 = v146;
    v150 = v148;
    if (!v124)
    {
      sub_1D5CF287C(v149, &qword_1EDF07090, sub_1D5B5971C);
    }
  }

  else
  {
    sub_1D609C668(v146, v193, sub_1D5B5971C);
    v150 = v198;
  }

  v151 = *(v150 + v65[12]);
  v152 = *(v150 + v65[9]);
  v153 = v186;
  sub_1D609C5E8(v190, v186, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  v154 = v150;
  v155 = *(v144 + 48);
  v156 = v65;
  v157 = v209;
  v158 = v155(v153, 1, v209);
  v159 = v188;
  if (v158 == 1)
  {
    v160 = v154 + v156[10];
    v161 = v152;
    v162 = v182;
    sub_1D609C804(v160, v182, sub_1D5C2BD20);
    sub_1D609C668(v162, v159, type metadata accessor for FormatMetadata);
    v163 = v155(v153, 1, v157);

    if (v163 != 1)
    {
      sub_1D5CF287C(v153, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
    }
  }

  else
  {
    sub_1D609C668(v153, v188, type metadata accessor for FormatMetadata);

    v161 = v152;
  }

  v164 = v208;
  v165 = v198;
  v166 = *(v198 + *(v208 + 44));
  v167 = v185;
  v168 = v219;
  *v185 = v220;
  *(v167 + 8) = v168;
  sub_1D609C668(v193, v167 + v164[5], sub_1D5B5971C);
  v169 = *(&v216 + 1);
  *(v167 + v164[6]) = v217;
  *(v167 + v164[7]) = v169;
  *(v167 + v164[9]) = v161;
  *(v167 + v164[8]) = v213;
  *(v167 + v164[12]) = v151;
  sub_1D609C668(v159, v167 + v164[10], type metadata accessor for FormatMetadata);
  *(v167 + v164[11]) = v166;
  sub_1D5B59538(0, &unk_1EDF3C5F0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E6F90]);
  v170 = (*(v196 + 80) + 32) & ~*(v196 + 80);
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_1D7273AE0;
  sub_1D609C668(v167, v171 + v170, type metadata accessor for FormatContentSubgroup);

  sub_1D609C8C4(v165, type metadata accessor for FormatContentSubgroup);
  v172 = 0;
  LOWORD(v222[0]) = v218;
  if (v181 != 1)
  {
  }

  sub_1D5F7A820(v171, v232, 0, v222, v172, v178);
}

uint64_t sub_1D60994A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a4;
  v66 = a3;
  v65 = a2;
  v11 = *(a6 + 16);
  v77 = *(a6 + 24);
  v12 = type metadata accessor for FormatArrangementCuration();
  v76 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v57 - v22;
  v24 = *(a5 + 16);
  if (v24 == 1 || (*(a5 + 8) & 0x1000) == 0)
  {
    sub_1D609C50C();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
LABEL_4:
    *(v25 + 16) = 4;
    return swift_willThrow();
  }

  v60 = *(a5 + 8);
  v58 = v21;
  v59 = v24;
  v68 = *a1;
  v27 = *a5;
  v78 = *a5;
  v28 = sub_1D72627FC();

  swift_getWitnessTable();
  v61 = v28;
  if (sub_1D7262CCC())
  {
    j__swift_bridgeObjectRelease(v27, v60);
    sub_1D609C50C();
    swift_allocError();
    v29 = xmmword_1D728CF30;
LABEL_35:
    *v25 = v29;
    goto LABEL_4;
  }

  v57 = a7;
  v67 = v7;
  v80 = sub_1D7261CFC();
  v79 = MEMORY[0x1E69E7CC0];
  if (!sub_1D726279C())
  {
LABEL_31:
    v62 = 64704;
LABEL_32:
    j__swift_bridgeObjectRelease(v27, v60);
    if (*(v79 + 16))
    {
      LOWORD(v78) = v62;
      sub_1D5F7A820(v79, v80, 1, &v78, v59, v57);
    }

    sub_1D609C50C();
    swift_allocError();
    v29 = xmmword_1D7297410;
    goto LABEL_35;
  }

  v30 = 0;
  v75 = (v76 + 16);
  v71 = (v76 + 8);
  v72 = (v76 + 32);
  v62 = 64704;
  v31 = v73;
  v63 = v11;
  v69 = v27;
  v70 = v23;
  while (1)
  {
    v42 = sub_1D726277C();
    sub_1D726271C();
    if (v42)
    {
      v43 = *(v76 + 16);
      v43(v23, (v27 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v30), v12);
      v44 = __OFADD__(v30++, 1);
      if (v44)
      {
        goto LABEL_30;
      }

      goto LABEL_13;
    }

    result = sub_1D7263DBC();
    if (v58 != 8)
    {
      break;
    }

    v78 = result;
    v43 = *v75;
    (*v75)(v23, &v78, v12);
    swift_unknownObjectRelease();
    v44 = __OFADD__(v30++, 1);
    if (v44)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_13:
    v74 = v43;
    (*v72)(v18, v23, v12);
    v45 = *(v31 + 72);
    v46 = sub_1D5F90834();
    if (*(v45 + 16))
    {
      v48 = v46;
      v49 = v47;
      sub_1D7264A0C();

      sub_1D72621EC();
      v50 = sub_1D7264A5C();
      v51 = -1 << *(v45 + 32);
      v52 = v50 & ~v51;
      if ((*(v45 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
      {
        v53 = ~v51;
        while (1)
        {
          v54 = (*(v45 + 48) + 16 * v52);
          v55 = *v54 == v48 && v54[1] == v49;
          if (v55 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v52 = (v52 + 1) & v53;
          if (((*(v45 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v11 = v63;
        v31 = v73;
        v27 = v69;
        v23 = v70;
        goto LABEL_10;
      }

LABEL_22:

      v11 = v63;
      v31 = v73;
    }

    v78 = v68;
    type metadata accessor for FormatArrangementComponentCuration();
    v56 = sub_1D6A6D8FC(v18);
    v27 = v69;
    v23 = v70;
    if (v56)
    {
      v74(v64, v18, v12);
      sub_1D72627BC();
      if ((~v62 & 0xFCC0) == 0)
      {
        v62 = *&v18[*(v12 + 44)];
      }

      v32 = type metadata accessor for FormatContent(0);
      MEMORY[0x1EEE9AC00](v32, v33);
      v34 = v77;
      *(&v57 - 6) = v11;
      *(&v57 - 5) = v34;
      v35 = v66;
      *(&v57 - 4) = v65;
      *(&v57 - 3) = v35;
      *(&v57 - 2) = v18;
      v36 = v67;
      v38 = sub_1D5EC9900(sub_1D609C720, (&v57 - 8), v37);
      v67 = v36;
      sub_1D6986D9C(v38);
      v39 = sub_1D5F90834();
      v41 = v40;

      sub_1D5B860D0(&v78, v39, v41);
    }

LABEL_10:
    (*v71)(v18, v12);
    if (v30 == sub_1D726279C())
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6099B50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v71 = a5;
  v72 = a6;
  v73 = a4;
  v68 = a7;
  sub_1D5C2BD20();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v67 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatMetadata();
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v74 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5971C();
  v70 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v80 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E6720];
  sub_1D5B59538(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v75 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v67 - v26;
  sub_1D5B59538(0, &qword_1EDF07090, sub_1D5B5971C, v20);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v67 - v34;
  v78 = a2;
  v79 = a3;

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  type metadata accessor for FormatArrangementCuration();
  v36 = sub_1D5F90834();
  v38 = v37;

  MEMORY[0x1DA6F9910](v36, v38);
  v39 = v27;

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  MEMORY[0x1DA6F9910](*a1, a1[1]);
  v72 = v79;
  v73 = v78;
  v40 = v70;
  (*(v17 + 56))(v35, 1, 1, v70);
  (*(v76 + 56))(v27, 1, 1, v77);
  v41 = v35;
  v42 = v40;
  sub_1D609C5E8(v41, v31, &qword_1EDF07090, sub_1D5B5971C);
  v43 = *(v17 + 48);
  if (v43(v31, 1, v42) == 1)
  {
    v44 = type metadata accessor for FormatContentSubgroup();
    sub_1D609C804(a1 + *(v44 + 20), v80, sub_1D5B5971C);
    if (v43(v31, 1, v42) != 1)
    {
      sub_1D5CF287C(v31, &qword_1EDF07090, sub_1D5B5971C);
    }
  }

  else
  {
    sub_1D609C668(v31, v80, sub_1D5B5971C);
  }

  v45 = type metadata accessor for FormatContentSubgroup();
  v46 = *(a1 + v45[6]);
  v47 = *(a1 + v45[7]);
  v48 = v45[9];
  v49 = *(a1 + v45[8]);
  v70 = *(a1 + v45[12]);
  v71 = v49;
  v50 = *(a1 + v48);
  v51 = v39;
  v52 = v75;
  sub_1D609C5E8(v51, v75, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  v53 = v77;
  v54 = *(v76 + 48);
  v55 = v54(v52, 1, v77);
  v69 = a1;
  if (v55 == 1)
  {
    v56 = v67;
    sub_1D609C804(a1 + v45[10], v67, sub_1D5C2BD20);
    v57 = v56;
    v58 = v74;
    sub_1D609C668(v57, v74, type metadata accessor for FormatMetadata);
    v59 = v54(v52, 1, v53);

    v60 = v71;

    v61 = v70;

    v62 = v50;
    if (v59 != 1)
    {
      sub_1D5CF287C(v75, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
    }
  }

  else
  {
    v58 = v74;
    sub_1D609C668(v52, v74, type metadata accessor for FormatMetadata);

    v60 = v71;

    v61 = v70;

    v62 = v50;
  }

  v63 = v68;
  v64 = *(v69 + v45[11]);
  v65 = v72;
  *v68 = v73;
  v63[1] = v65;
  sub_1D609C668(v80, v63 + v45[5], sub_1D5B5971C);
  *(v63 + v45[6]) = v46;
  *(v63 + v45[7]) = v47;
  *(v63 + v45[9]) = v62;
  *(v63 + v45[8]) = v60;
  *(v63 + v45[12]) = v61;
  sub_1D609C668(v58, v63 + v45[10], type metadata accessor for FormatMetadata);
  *(v63 + v45[11]) = v64;
}

uint64_t sub_1D609A1F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5B9EE48();
          sub_1D5B5990C(&qword_1EC8812B0, sub_1D5B9EE48);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D87760(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5534C(0, &qword_1EDF3C720);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609A39C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5B90088();
          sub_1D5B5990C(&qword_1EC88F470, sub_1D5B90088);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D877E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5A498(0, &qword_1EDF3C6C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609A548(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5C44878();
          sub_1D5B5990C(&qword_1EC88E4D0, sub_1D5C44878);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D87860(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5534C(0, &qword_1EDF3C770);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609A6F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D609C304();
          sub_1D5B5990C(&qword_1EC883200, sub_1D609C304);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D87760(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5534C(0, &qword_1EDF3C750);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}
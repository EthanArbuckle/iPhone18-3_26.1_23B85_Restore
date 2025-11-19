void sub_1D5CE8314()
{
  if (!qword_1EDF24EE0)
  {
    sub_1D5CE8398();
    sub_1D5CE83EC();
    sub_1D5CE84F0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24EE0);
    }
  }
}

unint64_t sub_1D5CE8398()
{
  result = qword_1EDF218E0;
  if (!qword_1EDF218E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF218E0);
  }

  return result;
}

unint64_t sub_1D5CE83EC()
{
  result = qword_1EDF218E8;
  if (!qword_1EDF218E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF218E8);
  }

  return result;
}

unint64_t sub_1D5CE8444()
{
  result = qword_1EDF218D0;
  if (!qword_1EDF218D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF218D0);
  }

  return result;
}

unint64_t sub_1D5CE849C()
{
  result = qword_1EDF218D8;
  if (!qword_1EDF218D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF218D8);
  }

  return result;
}

unint64_t sub_1D5CE84F0()
{
  result = qword_1EDF218F0[0];
  if (!qword_1EDF218F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF218F0);
  }

  return result;
}

uint64_t sub_1D5CE854C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x72656C69706D6F63;
    v7 = 0xD000000000000010;
    if (a1 != 10)
    {
      v7 = 1885433183;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x746C7561666564;
    v9 = 0x7365736163;
    if (a1 != 7)
    {
      v9 = 0x7461636572706564;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1701869940;
    v2 = 0x656D614E6D756E65;
    v3 = 0x7470697263736564;
    if (a1 != 4)
    {
      v3 = 0x6465726975716572;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x696669746E656469;
    if (a1 != 1)
    {
      v4 = 1701667182;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D5CE86E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 48);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5CE87B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D5B4C02C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

uint64_t FormatCompilerEnumProperty.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = &v51[-v5];
  sub_1D5C4F6F8();
  v7 = v6;
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5CE92B0();
  v12 = v11;
  v67 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CE922C();
  sub_1D5B58B84(&qword_1EDF25028, sub_1D5CE922C);
  v16 = v75;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v75 = v10;
  v18 = v67;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_1D7264AFC();
  v20 = Dictionary<>.errorOnUnknownKeys.getter(v19);

  v21 = v68;
  if (v20)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while (*v24 != 1)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v29 = sub_1D6619C68();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v17 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v18 + 8))(v15, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v73 = 0uLL;
  v74 = 0;
  v25 = sub_1D72642BC();
  v64 = v26;
  v73 = xmmword_1D728CF30;
  v74 = 0;
  v62 = sub_1D72642BC();
  v63 = v32;
  v73 = xmmword_1D7297410;
  v74 = 0;
  v58 = sub_1D72642BC();
  v59 = v25;
  v35 = v34;
  v61 = xmmword_1D72BAA60;
  v73 = xmmword_1D72BAA60;
  v74 = 0;
  v36 = sub_1D726434C();
  if (v36)
  {
    v71 = v61;
    v72 = 0;
    sub_1D726431C();
    *&v61 = v35;
    v37 = v70;
    v56 = v69;
  }

  else
  {
    *&v61 = v35;
    v56 = 0;
    v37 = 0xE000000000000000;
  }

  v60 = v37;
  v57 = xmmword_1D72BAA70;
  v73 = xmmword_1D72BAA70;
  v74 = 0;
  if (sub_1D726434C())
  {
    v71 = v57;
    v72 = 0;
    sub_1D726431C();
    v38 = v69;
  }

  else
  {
    v38 = 1;
  }

  LODWORD(v57) = v38;
  v73 = xmmword_1D72BAA80;
  v74 = 0;
  v39 = sub_1D726422C();
  v41 = v40;
  v54 = v39;
  v55 = xmmword_1D72BAA90;
  v73 = xmmword_1D72BAA90;
  v74 = 0;
  if (sub_1D726434C())
  {
    v71 = v55;
    v72 = 0;
    sub_1D726431C();
    v42 = v69;
  }

  else
  {
    v42 = 0;
  }

  v52 = v42;
  *&v55 = v41;
  v53 = xmmword_1D72BAAA0;
  v73 = xmmword_1D72BAAA0;
  v74 = 0;
  if (sub_1D726434C())
  {
    v71 = v53;
    v72 = 0;
    sub_1D5B58B84(&qword_1EDF3BE60, sub_1D5C4F6F8);
    v43 = v75;
    sub_1D726431C();
    *&v53 = sub_1D725A74C();
    (*(v65 + 8))(v43, v7);
  }

  else
  {
    *&v53 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v73 = xmmword_1D72BAAB0;
  v74 = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  v44 = v66;
  sub_1D726427C();
  (*(v18 + 8))(v15, v12);
  v45 = type metadata accessor for FormatCompilerEnumProperty(0);
  sub_1D5C4E944(v44, v21 + *(v45 + 48), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v46 = v64;
  *v21 = v59;
  *(v21 + 8) = v46;
  v47 = v63;
  *(v21 + 16) = v62;
  *(v21 + 24) = v47;
  v48 = v61;
  *(v21 + 32) = v58;
  *(v21 + 40) = v48;
  v49 = v60;
  *(v21 + 48) = v56;
  *(v21 + 56) = v49;
  *(v21 + 64) = v57;
  v50 = v55;
  *(v21 + 72) = v54;
  *(v21 + 80) = v50;
  *(v21 + 88) = v52;
  *(v21 + 96) = v53;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CE922C()
{
  if (!qword_1EDF25020)
  {
    sub_1D5CE9344();
    sub_1D5CE9398();
    sub_1D5CE949C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25020);
    }
  }
}

void sub_1D5CE92B0()
{
  if (!qword_1EDF19F20)
  {
    sub_1D5CE922C();
    sub_1D5B58B84(&qword_1EDF25028, sub_1D5CE922C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19F20);
    }
  }
}

unint64_t sub_1D5CE9344()
{
  result = qword_1EDF235E0;
  if (!qword_1EDF235E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF235E0);
  }

  return result;
}

unint64_t sub_1D5CE9398()
{
  result = qword_1EDF235E8;
  if (!qword_1EDF235E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF235E8);
  }

  return result;
}

unint64_t sub_1D5CE93F0()
{
  result = qword_1EDF235D0;
  if (!qword_1EDF235D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF235D0);
  }

  return result;
}

unint64_t sub_1D5CE9448()
{
  result = qword_1EDF235D8;
  if (!qword_1EDF235D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF235D8);
  }

  return result;
}

unint64_t sub_1D5CE949C()
{
  result = qword_1EDF235F0[0];
  if (!qword_1EDF235F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF235F0);
  }

  return result;
}

uint64_t sub_1D5CE94F8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x72656C69706D6F63;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 1885433183;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746C7561666564;
    if (a1 != 5)
    {
      v7 = 0x7461636572706564;
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
    v1 = 0x696669746E656469;
    v2 = 1701667182;
    v3 = 0x7470697263736564;
    if (a1 != 3)
    {
      v3 = 0x6465726975716572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701869940;
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

uint64_t static FormatContentSubgroupNeighborsResolver.resolve(subgroups:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = a2;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D5CE97C8(0, v2, 0);
    v3 = v21;
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v17[0] = *v5;
      v17[1] = v6;
      v7 = v5[3];
      v18 = v5[2];
      v19 = v7;
      v20 = v5[4];
      v8 = *(&v17[0] + 1);
      v14 = v18;
      v15 = *&v17[0];

      sub_1D5CE9930(v17, v16);

      v21 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D5CE97C8((v9 > 1), v10 + 1, 1);
        v3 = v21;
      }

      *(v3 + 16) = v10 + 1;
      v11 = (v3 + 24 * v10);
      v11[4] = v15;
      v11[5] = v8;
      v11[6] = v14 & 0x7FFFFFFFFFFFFFFFLL;
      v5 += 5;
      --v2;
    }

    while (v2);
    a2 = v13;
  }

  sub_1D5CE998C(v3, a2);
}

char *sub_1D5CE97C8(char *a1, int64_t a2, char a3)
{
  result = sub_1D5CE97F8(a1, a2, a3, *v3, &qword_1EDF195D8, &type metadata for FormatContentSubgroupNeighborsRequest);
  *v3 = result;
  return result;
}

char *sub_1D5CE97F8(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1D5CE998C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v99 = a2;
  v135 = type metadata accessor for FormatVersionRequirement(0);
  v3 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v4);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for FormatOption();
  v106 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v116 = &v99 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v115 = &v99 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v114 = &v99 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v113 = &v99 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v99 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v99 - v26;
  v29 = *(a1 + 16);
  if (v29)
  {
    v30 = 0;
    v128 = 0;
    v119 = 0;
    v31 = 0;
    v100 = "subgroup-current-trait-";
    v102 = "subgroup-next-trait-";
    v101 = "subgroup-reverse-index";
    v133 = (v3 + 56);
    v103 = 0x80000001D74012B0;
    v32 = (a1 + 72);
    v33 = 0;
    v34 = MEMORY[0x1E69E7CC8];
    v123 = -1;
    v105 = v27;
    v124 = v29;
    v107 = v23;
    v104 = &v99 - v26;
    while (1)
    {
      v35 = *(v32 - 5);
      v122 = *(v32 - 4);
      v36 = *(v32 - 3);
      v108 = v30 + 1;
      v111 = v32;
      v121 = v30;
      if (v30 + 1 >= v29)
      {
        v118 = 0;
        v127 = 0;
        v120 = 0;
      }

      else
      {
        v37 = *(v32 - 1);
        v118 = *(v32 - 2);
        v120 = *v32;

        v127 = v37;
      }

      v137 = MEMORY[0x1E69E7CD0];
      v117 = v36;
      v125 = v33;
      if (v128)
      {
        if (v33)
        {
          swift_beginAccess();

          sub_1D5CEAA24(v119, v128);

          v39 = sub_1D71C80DC(v38, 0xD000000000000018, v100 | 0x8000000000000000);

          sub_1D5B87D50(v39);

          v36 = v117;
        }

        else
        {

          sub_1D5CEAA24(v119, v128);
        }

        if (!v36)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (!v36)
        {
          goto LABEL_14;
        }
      }

      swift_beginAccess();

      v41 = sub_1D71C80DC(v40, 0xD000000000000017, v102 | 0x8000000000000000);

      sub_1D5B87D50(v41);

LABEL_14:
      if (v127)
      {
        if (v120)
        {
          swift_beginAccess();
          sub_1D5CEAA24(v118, v127);

          v43 = sub_1D71C80DC(v42, 0xD000000000000014, v101 | 0x8000000000000000);

          sub_1D5B87D50(v43);
        }

        v23 = v107;
      }

      v109 = v35;
      v110 = v34;
      v112 = v31;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v44 = v128 == 0;
      v45 = sub_1D725BD1C();
      v46 = __swift_project_value_buffer(v45, qword_1EDFFCE38);
      v47 = *(v45 - 8);
      v48 = *(v47 + 16);
      v131 = v47 + 16;
      v132 = v48;
      v48(v6, v46, v45);
      v129 = type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v49 = swift_allocObject();
      *(v49 + 16) = v44;
      v50 = MEMORY[0x1E69E7CC0];
      *(v49 + 24) = MEMORY[0x1E69E7CC0];
      strcpy(v28, "subgroup-first");
      v28[15] = -18;
      *(v28 + 2) = v49;
      *(v28 + 3) = 1;
      v51 = *(v134 + 28);
      sub_1D5CEAB38(v6, &v28[v51], type metadata accessor for FormatVersionRequirement);
      v130 = *v133;
      v130(&v28[v51], 0, 1, v135);
      v52 = sub_1D5CEABA0(0, 1, 1, v50);
      v54 = v52[2];
      v53 = v52[3];
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v52 = sub_1D5CEABA0(v53 > 1, v54 + 1, 1, v52);
      }

      v52[2] = v55;
      v56 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v57 = *(v106 + 72);
      sub_1D5CEAB38(v28, v52 + v56 + v57 * v54, type metadata accessor for FormatOption);
      v132(v6, v46, v45);
      swift_storeEnumTagMultiPayload();
      v58 = swift_allocObject();
      *(v58 + 16) = v121;
      *(v58 + 24) = MEMORY[0x1E69E7CC0];
      strcpy(v23, "subgroup-index");
      v23[15] = -18;
      *(v23 + 2) = v58 | 0x4000000000000000;
      *(v23 + 3) = 1;
      v59 = *(v134 + 28);
      sub_1D5CEAB38(v6, &v23[v59], type metadata accessor for FormatVersionRequirement);
      v130(&v23[v59], 0, 1, v135);
      v60 = v52[3];
      v61 = v54 + 2;
      if ((v54 + 2) > (v60 >> 1))
      {
        v52 = sub_1D5CEABA0(v60 > 1, v54 + 2, 1, v52);
      }

      v52[2] = v61;
      sub_1D5CEAB38(v23, v52 + v56 + v57 * v55, type metadata accessor for FormatOption);
      v126 = v46;
      v132(v6, v46, v45);
      swift_storeEnumTagMultiPayload();
      v62 = v124 + v123;
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v63 + 24) = MEMORY[0x1E69E7CC0];
      v64 = v113;
      v65 = v103;
      *v113 = 0xD000000000000016;
      *(v64 + 1) = v65;
      *(v64 + 2) = v63 | 0x4000000000000000;
      *(v64 + 3) = 1;
      v66 = *(v134 + 28);
      sub_1D5CEAB38(v6, &v64[v66], type metadata accessor for FormatVersionRequirement);
      v130(&v64[v66], 0, 1, v135);
      v67 = v52[3];
      v68 = v54 + 3;
      if ((v54 + 3) > (v67 >> 1))
      {
        v52 = sub_1D5CEABA0(v67 > 1, v54 + 3, 1, v52);
      }

      v52[2] = v68;
      sub_1D5CEAB38(v113, v52 + v56 + v57 * v61, type metadata accessor for FormatOption);
      v132(v6, v126, v45);
      swift_storeEnumTagMultiPayload();
      v69 = swift_allocObject();
      *(v69 + 16) = v124;
      *(v69 + 24) = MEMORY[0x1E69E7CC0];
      v70 = v114;
      *v114 = 0x70756F7267627573;
      *(v70 + 1) = 0xEE00746E756F632DLL;
      *(v70 + 2) = v69 | 0x4000000000000000;
      *(v70 + 3) = 1;
      v71 = *(v134 + 28);
      sub_1D5CEAB38(v6, &v70[v71], type metadata accessor for FormatVersionRequirement);
      v130(&v70[v71], 0, 1, v135);
      v72 = v52[3];
      v73 = v54 + 4;
      if ((v54 + 4) > (v72 >> 1))
      {
        v52 = sub_1D5CEABA0(v72 > 1, v54 + 4, 1, v52);
      }

      v52[2] = v73;
      sub_1D5CEAB38(v114, v52 + v56 + v57 * v68, type metadata accessor for FormatOption);
      v132(v6, v126, v45);
      swift_storeEnumTagMultiPayload();
      v74 = swift_allocObject();
      v75 = v121 & 1;
      *(v74 + 16) = !(v121 & 1);
      *(v74 + 24) = MEMORY[0x1E69E7CC0];
      v76 = v115;
      *v115 = 0x70756F7267627573;
      *(v76 + 1) = 0xED00006E6576652DLL;
      *(v76 + 2) = v74;
      *(v76 + 3) = 1;
      v77 = *(v134 + 28);
      sub_1D5CEAB38(v6, &v76[v77], type metadata accessor for FormatVersionRequirement);
      v130(&v76[v77], 0, 1, v135);
      v78 = v52[3];
      v79 = v54 + 5;
      if ((v54 + 5) > (v78 >> 1))
      {
        v52 = sub_1D5CEABA0(v78 > 1, v54 + 5, 1, v52);
      }

      v52[2] = v79;
      sub_1D5CEAB38(v115, v52 + v56 + v57 * v73, type metadata accessor for FormatOption);
      v80 = v126;
      v132(v6, v126, v45);
      swift_storeEnumTagMultiPayload();
      v81 = swift_allocObject();
      *(v81 + 16) = v75;
      *(v81 + 24) = MEMORY[0x1E69E7CC0];
      v82 = v116;
      *v116 = 0x70756F7267627573;
      *(v82 + 1) = 0xEC00000064646F2DLL;
      *(v82 + 2) = v81;
      *(v82 + 3) = 1;
      v83 = *(v134 + 28);
      sub_1D5CEAB38(v6, &v82[v83], type metadata accessor for FormatVersionRequirement);
      v130(&v82[v83], 0, 1, v135);
      v84 = v52[3];
      v85 = v54 + 6;
      if ((v54 + 6) > (v84 >> 1))
      {
        v52 = sub_1D5CEABA0(v84 > 1, v54 + 6, 1, v52);
      }

      v86 = v127 == 0;
      v52[2] = v85;
      sub_1D5CEAB38(v116, v52 + v56 + v57 * v79, type metadata accessor for FormatOption);
      v132(v6, v80, v45);
      swift_storeEnumTagMultiPayload();
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *(v87 + 24) = MEMORY[0x1E69E7CC0];
      v88 = v105;
      *v105 = 0x70756F7267627573;
      *(v88 + 1) = 0xED00007473616C2DLL;
      *(v88 + 2) = v87;
      *(v88 + 3) = 1;
      v89 = *(v134 + 28);
      sub_1D5CEAB38(v6, &v88[v89], type metadata accessor for FormatVersionRequirement);
      v130(&v88[v89], 0, 1, v135);
      v90 = v52[3];
      v91 = v54 + 7;
      if ((v54 + 7) > (v90 >> 1))
      {
        v52 = sub_1D5CEABA0(v90 > 1, v54 + 7, 1, v52);
      }

      v23 = v107;
      v28 = v104;
      v92 = v109;
      sub_1D5CEABD4(v119, v128);
      v52[2] = v91;
      sub_1D5CEAB38(v88, v52 + v56 + v57 * v85, type metadata accessor for FormatOption);
      v93 = v137;
      v94 = v117;

      v95 = v122;

      v96 = v110;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v136 = v96;
      sub_1D5CEAC18(v93, v52, v92, v95, isUniquelyReferenced_nonNull_native);

      sub_1D5CEABD4(v118, v127);
      v32 = v111 + 3;
      --v123;
      v34 = v136;
      v30 = v108;
      v33 = v94;
      v128 = v95;
      v119 = v92;
      v29 = v124;
      v31 = v112;
      if (v124 == v108)
      {
        goto LABEL_37;
      }
    }
  }

  v92 = 0;
  v95 = 0;
  v34 = MEMORY[0x1E69E7CC8];
LABEL_37:
  result = sub_1D5CEABD4(v92, v95);
  *v99 = v34;
  return result;
}

uint64_t sub_1D5CEA9E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5CEAA24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D5CEAA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEAAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEAB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEABD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D5CEAC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D5B69D90(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D5CEADBC(v18, a5 & 1, sub_1D5CEB078);
      v13 = sub_1D5B69D90(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D6D7DB60();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_1D5CEADBC(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v34 = a2;
  result = sub_1D726410C();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v6 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v35 = *(*(v6 + 56) + v22);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v35;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero((v6 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

void sub_1D5CEB078()
{
  if (!qword_1EDF1A3D8)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A3D8);
    }
  }
}

void sub_1D5CEB0D8()
{
  if (!qword_1EDF177B0)
  {
    sub_1D5B5534C(255, &qword_1EDF3C770);
    v0 = sub_1D725BFAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF177B0);
    }
  }
}

uint64_t sub_1D5CEB140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CEB1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CEB200(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CEB274(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for FormatWebEmbed();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_1D5B4D72C(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_1D5B5D160(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D5CEB3E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEB448(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B5AB88(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CEB4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D5CEB528()
{
  result = qword_1EDF138A8;
  if (!qword_1EDF138A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF138A8);
  }

  return result;
}

uint64_t sub_1D5CEB57C(uint64_t a1, uint64_t a2)
{
  sub_1D5B49800(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CEB5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D5CEB648()
{
  result = qword_1EDF42B10[0];
  if (!qword_1EDF42B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF42B10);
  }

  return result;
}

unint64_t sub_1D5CEB6FC()
{
  result = qword_1EDF366E0;
  if (!qword_1EDF366E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF366E0);
  }

  return result;
}

NewsFeed::FeedGroupPaidVisibility_optional __swiftcall FeedGroupPaidVisibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D5CEB7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEB820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEB888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEB8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEB958(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v26 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = (v26 + 80 * v1);
    v5 = v4[1];
    v32[0] = *v4;
    v32[1] = v5;
    v6 = v4[4];
    *&v33[16] = v4[3];
    *&v33[32] = v6;
    *v33 = v4[2];
    v30[1] = v5;
    *&v31[8] = *&v33[8];
    *&v31[24] = *&v33[24];
    *v31 = *v33 & 0x7FFFFFFFFFFFFFFFLL;
    *&v31[40] = *(&v6 + 1);
    v29[2] = *v31;
    v29[3] = *&v31[16];
    v29[4] = *&v31[32];
    v30[0] = v32[0];
    v29[0] = v32[0];
    v29[1] = v5;
    sub_1D5CE9930(v32, v28);
    sub_1D5CE9930(v32, v28);
    sub_1D5CE9930(v32, v28);
    sub_1D5CEBCF0();
    v8 = sub_1D5CEBF90(v7);
    sub_1D5CB71DC(v30);

    sub_1D5CEC67C(v32);
    sub_1D5CEC67C(v32);
    v9 = v8 >> 62;
    if (v8 >> 62)
    {
      v10 = sub_1D7263BFC();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_1D7263BFC();
      v13 = v25 + v10;
      if (__OFADD__(v25, v10))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v10;
    if (result)
    {
      if (!v11)
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v11)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v2 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v16 >> 1) - v15) < v34)
    {
      goto LABEL_36;
    }

    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_38;
      }

      sub_1D5B9F048(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, sub_1D5B5534C);
      sub_1D5F396FC();
      for (i = 0; i != v17; ++i)
      {
        v19 = sub_1D6D87760(v29, i, v8);
        v21 = *v20;
        swift_unknownObjectRetain();
        (v19)(v29, 0);
        *(v14 + 8 * v15 + 32 + 8 * i) = v21;
      }
    }

    else
    {
      sub_1D5B5534C(0, &qword_1EDF3C720);
      swift_arrayInitWithCopy();
    }

    if (v34 >= 1)
    {
      v22 = *(v14 + 16);
      v23 = __OFADD__(v22, v34);
      v24 = v22 + v34;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v14 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v27)
    {
      return v2;
    }
  }

  result = sub_1D7263BFC();
  v17 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
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

void sub_1D5CEBCF0()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_20:

    sub_1D5D1E934(v5);
    return;
  }

  v3 = 0;
  v4 = (v1 + 48);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1D698BCE4(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v5 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_25;
          }

          *(v5 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

char *sub_1D5CEBE6C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 + 31;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 6);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[64 * v10])
    {
      memmove(v15, v16, v10 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1D5CEBF90(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v27 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = (v27 + (v1 << 6));
    v5 = v4[1];
    v29[0] = *v4;
    v29[1] = v5;
    v6 = v4[3];
    v29[2] = v4[2];
    v29[3] = v6;
    v7 = FormatContentSlot.Resolved.headlines.getter();
    v8 = v7;
    v9 = v7 >> 62;
    if (v7 >> 62)
    {
      v10 = sub_1D7263BFC();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_1D7263BFC();
      v13 = v26 + v10;
      if (__OFADD__(v26, v10))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v11)
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v11)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v2 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v16 >> 1) - v15) < v10)
    {
      goto LABEL_36;
    }

    v30 = v10;
    v18 = v14 + 8 * v15 + 32;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_38;
      }

      sub_1D6D5BC7C(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, sub_1D5B5534C);
      sub_1D5F396FC();
      for (i = 0; i != v17; ++i)
      {
        v20 = sub_1D6D87760(v29, i, v8);
        v22 = *v21;
        swift_unknownObjectRetain();
        (v20)(v29, 0);
        *(v18 + 8 * i) = v22;
      }
    }

    else
    {
      sub_1D5B5534C(0, &qword_1EDF3C720);
      swift_arrayInitWithCopy();
    }

    if (v30 >= 1)
    {
      v23 = *(v14 + 16);
      v24 = __OFADD__(v23, v30);
      v25 = v23 + v30;
      if (v24)
      {
        goto LABEL_37;
      }

      *(v14 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  result = sub_1D7263BFC();
  v17 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v10 <= 0)
  {
    goto LABEL_4;
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

uint64_t FormatContentSlot.Resolved.headlines.getter()
{
  sub_1D5B5D160(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v31, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v29 - v15;
  v17 = *(v0 + 32);
  v33 = MEMORY[0x1E69E7CC0];
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    v32 = MEMORY[0x1E69E7CC0];
    v30 = v7;
    while (1)
    {
      sub_1D5CEC8D8(v19, v16, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEC8D8(v16, v11, type metadata accessor for FormatContentSlotItemObject.Resolved);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (((1 << EnumCaseMultiPayload) & 0x3F6) != 0)
      {
        sub_1D5CECA00(v11, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          goto LABEL_11;
        }

        sub_1D5D53BB8(v11, v7, type metadata accessor for FormatWebEmbed.Resolved);
        sub_1D5CEC8D8(&v7[*(v31 + 36)], v4, sub_1D5B5D160);
        sub_1D5B5D194();
        v22 = v4;
        v24 = v23;
        v25 = v7;
        v26 = *(v23 - 8);
        if ((*(v26 + 48))(v22, 1, v23) != 1)
        {
          sub_1D725BF7C();
          sub_1D5CECA00(v25, type metadata accessor for FormatWebEmbed.Resolved);
          (*(v26 + 8))(v22, v24);
          v4 = v22;
          v7 = v30;
LABEL_11:
          v27 = sub_1D5CECA00(v16, type metadata accessor for FormatContentSlotItemObject.Resolved);
          MEMORY[0x1DA6F9CE0](v27);
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
            v7 = v30;
          }

          sub_1D726278C();
          v32 = v33;
          goto LABEL_5;
        }

        sub_1D5CECA00(v25, type metadata accessor for FormatWebEmbed.Resolved);
        sub_1D5CECA00(v22, sub_1D5B5D160);
        v4 = v22;
        v7 = v25;
      }

      sub_1D5CECA00(v16, type metadata accessor for FormatContentSlotItemObject.Resolved);
LABEL_5:
      v19 += v20;
      if (!--v18)
      {
        return v32;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D5CEC6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEC738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEC7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEC808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEC870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEC8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEC940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CEC9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CECA00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CECA60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CECAC0(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v29 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = (v29 + 80 * v1);
    v5 = v4[1];
    v37[0] = *v4;
    v37[1] = v5;
    v6 = v4[4];
    *&v38[16] = v4[3];
    *&v38[32] = v6;
    *v38 = v4[2];
    v35[1] = v5;
    *&v36[8] = *&v38[8];
    *&v36[24] = *&v38[24];
    *v36 = *v38 & 0x7FFFFFFFFFFFFFFFLL;
    *&v36[40] = *(&v6 + 1);
    v34[2] = *v36;
    v34[3] = *&v36[16];
    v34[4] = *&v36[32];
    v35[0] = v37[0];
    v34[0] = v37[0];
    v34[1] = v5;
    sub_1D5CE9930(v37, v33);
    sub_1D5CE9930(v37, v33);
    sub_1D5CE9930(v37, v33);
    sub_1D5CEBCF0();
    v8 = sub_1D5CECE68(v7);
    sub_1D5CB71DC(v35);

    sub_1D5CEC67C(v37);
    sub_1D5CEC67C(v37);
    v9 = v8 >> 62;
    if (v8 >> 62)
    {
      v10 = sub_1D7263BFC();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_1D7263BFC();
      v13 = v27 + v10;
      if (__OFADD__(v27, v10))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v39 = v10;
    if (result)
    {
      if (!v11)
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v11)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v2 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v16 >> 1) - v15) < v39)
    {
      goto LABEL_36;
    }

    v31 = v1;
    v32 = v2;
    v19 = v14 + 8 * v15 + 32;
    v28 = v14;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_38;
      }

      sub_1D5B9F048(0, &qword_1EDF1AE20, &qword_1EDF3C6B0, 0x1E69B5578, sub_1D5B5A498);
      sub_1D5F39780();
      for (i = 0; i != v17; ++i)
      {
        v21 = sub_1D6D877E0(v34, i, v8);
        v23 = *v22;
        (v21)(v34, 0);
        *(v19 + 8 * i) = v23;
      }
    }

    else
    {
      sub_1D5B5A498(0, &qword_1EDF3C6B0);
      swift_arrayInitWithCopy();
    }

    v2 = v32;
    v1 = v31;
    if (v39 >= 1)
    {
      v24 = *(v28 + 16);
      v25 = __OFADD__(v24, v39);
      v26 = v24 + v39;
      if (v25)
      {
        goto LABEL_37;
      }

      *(v28 + 16) = v26;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v18 = v14;
  result = sub_1D7263BFC();
  v14 = v18;
  v17 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v39 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_1D5CECE68(uint64_t a1)
{
  v2 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  v43 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v42 - v8;
  v10 = MEMORY[0x1E69E7CC0];
  v46 = *(a1 + 16);
  if (!v46)
  {
    return v10;
  }

  v11 = 0;
  v45 = a1 + 32;
  result = MEMORY[0x1E69E7CC0];
  v42[2] = v2;
  while (1)
  {
    v49 = result;
    v50[0] = v10;
    v47 = v11;
    v14 = *(v45 + (v11 << 6) + 32);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v17 = *(v43 + 72);
      v18 = v10;
      do
      {
        sub_1D5CED2F0(v16, v9);
        sub_1D5CED2F0(v9, v5);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v19 = sub_1D5CED354(v9);
          MEMORY[0x1DA6F9CE0](v19);
          if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
            v10 = MEMORY[0x1E69E7CC0];
          }

          sub_1D726278C();
          v18 = v50[0];
        }

        else
        {
          sub_1D5CED354(v5);
          sub_1D5CED354(v9);
        }

        v16 += v17;
        --v15;
      }

      while (v15);
    }

    else
    {
      v18 = v10;
    }

    v20 = v18 >> 62;
    v21 = v49;
    if (v18 >> 62)
    {
      v22 = sub_1D7263BFC();
    }

    else
    {
      v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v21 >> 62;
    v51 = v18;
    if (v21 >> 62)
    {
      v41 = sub_1D7263BFC();
      v25 = v41 + v22;
      if (__OFADD__(v41, v22))
      {
LABEL_41:
        __break(1u);
        return v10;
      }
    }

    else
    {
      v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v23)
      {
        v26 = v21 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_1D7263BFC();
      goto LABEL_24;
    }

    if (v23)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = sub_1D7263DDC();
    v21 = result;
    v26 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v48 = v22;
    v49 = v21;
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v20)
    {
      break;
    }

    v29 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (((v28 >> 1) - v27) < v48)
    {
      goto LABEL_45;
    }

    v31 = v26 + 8 * v27 + 32;
    v44 = v26;
    if (v20)
    {
      v32 = v51;
      if (v29 < 1)
      {
        goto LABEL_47;
      }

      sub_1D6D5BC7C(0, &qword_1EDF1AE20, &qword_1EDF3C6B0, 0x1E69B5578, sub_1D5B5A498);
      sub_1D5F39780();
      v33 = v32;
      for (i = 0; i != v29; ++i)
      {
        v35 = sub_1D6D877E0(v50, i, v33);
        v37 = *v36;
        (v35)(v50, 0);
        *(v31 + 8 * i) = v37;
        v33 = v51;
      }
    }

    else
    {
      sub_1D5B5A498(0, &qword_1EDF3C6B0);
      swift_arrayInitWithCopy();
    }

    v13 = v47;
    v10 = MEMORY[0x1E69E7CC0];
    result = v49;
    if (v48 >= 1)
    {
      v38 = *(v44 + 16);
      v39 = __OFADD__(v38, v48);
      v40 = v38 + v48;
      if (v39)
      {
        goto LABEL_46;
      }

      *(v44 + 16) = v40;
    }

LABEL_4:
    v11 = v13 + 1;
    if (v11 == v46)
    {
      return result;
    }
  }

  v30 = v26;
  result = sub_1D7263BFC();
  v26 = v30;
  v29 = result;
  if (result)
  {
    goto LABEL_29;
  }

LABEL_3:

  v13 = v47;
  result = v49;
  if (v48 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D5CED2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CED354(uint64_t a1)
{
  v2 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5CED3DC(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1D7263BFC();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1D7263BFC();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D5CED4E4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D7263BFC();
LABEL_9:
  result = sub_1D7263DDC();
  *v1 = result;
  return result;
}

uint64_t sub_1D5CED584(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1D609C43C();
          sub_1D5B5990C(&qword_1EC8832C0, sub_1D609C43C);
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
        sub_1D5B5534C(0, &qword_1EDF1A860);
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

uint64_t sub_1D5CED730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CED790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CED7F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CED850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CED8B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CED910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CED978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D5CEDA50()
{
  result = qword_1EDF13CD0;
  if (!qword_1EDF13CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13CD0);
  }

  return result;
}

uint64_t sub_1D5CEDAA4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D5CEDB04()
{
  sub_1D5CEDC80(319, &qword_1EDF210B0, sub_1D5CEDCD4);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FCFeedFilterOptions(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FCTagFilterOptions(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for FormatTransformData();
        if (v3 <= 0x3F)
        {
          sub_1D5B81B04();
          if (v4 <= 0x3F)
          {
            type metadata accessor for FCOperationPurpose(319);
            if (v5 <= 0x3F)
            {
              sub_1D5B5F6D0();
              if (v6 <= 0x3F)
              {
                sub_1D5CEDC80(319, qword_1EDF24518, type metadata accessor for FormatServiceMergeContext);
                if (v7 <= 0x3F)
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

void sub_1D5CEDC80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1D5CEDCD4()
{
  result = qword_1EDF210B8;
  if (!qword_1EDF210B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF210B8);
  }

  return result;
}

uint64_t type metadata accessor for FormatTransformData()
{
  result = qword_1EDF2BBA8;
  if (!qword_1EDF2BBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5CEDDD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5CEDE38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D5CEDE8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D5CEDEE0()
{
  sub_1D5CEDE8C(319, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
  if (v0 <= 0x3F)
  {
    sub_1D5CEE124();
    if (v1 <= 0x3F)
    {
      sub_1D5B81B04();
      if (v2 <= 0x3F)
      {
        sub_1D5CEDE8C(319, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for FormatTransformKnobs()
{
  result = qword_1EDF2A980;
  if (!qword_1EDF2A980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5CEE03C()
{
  result = type metadata accessor for FeedContext();
  if (v1 <= 0x3F)
  {
    result = sub_1D5CEE0C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D5CEE0C0()
{
  result = qword_1EDF20FD8;
  if (!qword_1EDF20FD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF20FD8);
  }

  return result;
}

void sub_1D5CEE124()
{
  if (!qword_1EDF1AD28)
  {
    sub_1D5CEE180();
    v0 = sub_1D7262BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AD28);
    }
  }
}

unint64_t sub_1D5CEE180()
{
  result = qword_1EDF24468;
  if (!qword_1EDF24468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24468);
  }

  return result;
}

unint64_t sub_1D5CEE1D8()
{
  result = qword_1EDF24460;
  if (!qword_1EDF24460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24460);
  }

  return result;
}

uint64_t type metadata accessor for FeedPersonalizationClusteringRules()
{
  result = qword_1EDF35278;
  if (!qword_1EDF35278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5CEE278()
{
  sub_1D5B49CBC(319, &qword_1EDF3C7C0);
  if (v0 <= 0x3F)
  {
    sub_1D5CEE38C(319, qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas);
    if (v1 <= 0x3F)
    {
      sub_1D5CEE38C(319, &qword_1EDF1B808, sub_1D5CEE608);
      if (v2 <= 0x3F)
      {
        sub_1D5B49CBC(319, qword_1EDF351C8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D5CEE38C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for FeedGroupBundleArticleQuotas()
{
  result = qword_1EDF35A88;
  if (!qword_1EDF35A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5CEE42C()
{
  sub_1D5CEE4F4();
  if (v0 <= 0x3F)
  {
    sub_1D72593CC();
    if (v1 <= 0x3F)
    {
      sub_1D5CEE5A8(319, &qword_1EDF1B5E8, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5CEE4F4()
{
  if (!qword_1EDF1AF00)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AF00);
    }
  }
}

void sub_1D5CEE544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5CEE5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D72593CC();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D5CEE608()
{
  if (!qword_1EDF1B810)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B810);
    }
  }
}

double sub_1D5CEE6B4@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for FormatTransformData();
  MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF2BBB8 != -1)
  {
    v22 = v14;
    swift_once();
    v14 = v22;
  }

  v17 = __swift_project_value_buffer(v14, qword_1EDFFCAD0);
  sub_1D5CEF028(v17, v16, type metadata accessor for FormatTransformData);
  *(a6 + 40) = a3;
  *(a6 + 48) = a4 & 1;
  v18 = type metadata accessor for FormatServiceOptions();
  *(a6 + v18[12]) = a1;
  *(a6 + v18[13]) = a2;
  *(a6 + 56) = xmmword_1D7282F10;
  *(a6 + 72) = 0x40F5180000000000;
  *(a6 + 80) = 30;
  sub_1D5CEF028(v16, a6 + v18[10], type metadata accessor for FormatTransformData);
  v19 = a1;
  v20 = a2;
  sub_1D5CEF0DC(v16);
  *(a6 + v18[11]) = MEMORY[0x1E69E7CD0];
  *(a6 + v18[16]) = 0;
  *(a6 + 32) = 0;
  result = 0.0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + v18[15]) = a5;
  *(a6 + v18[14]) = 0;
  return result;
}

uint64_t sub_1D5CEE864()
{
  v0 = type metadata accessor for FormatTransformData();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEDE8C(0, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  sub_1D5CEDE8C(0, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v17 - v10;
  __swift_allocate_value_buffer(v0, qword_1EDFFCAD0);
  v12 = __swift_project_value_buffer(v0, qword_1EDFFCAD0);
  v13 = type metadata accessor for FormatTransformKnobs();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = type metadata accessor for FeedPersonalizationClusteringRules();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_1D5CEEC58(v11, v3);
  v15 = MEMORY[0x1E69E7CD0];
  *&v3[v0[5]] = MEMORY[0x1E69E7CD0];
  *&v3[v0[6]] = v15;
  sub_1D5CEEE64(v11);
  *&v3[v0[7]] = v15;
  v3[v0[8]] = 0;
  v3[v0[9]] = 0;
  sub_1D5CEEEDC(v7, &v3[v0[11]]);
  return sub_1D5CEEF5C(v3, v12);
}

uint64_t sub_1D5CEEAB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeedContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1D5CEEB80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D5CEE38C(0, qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2;
  }
}

uint64_t sub_1D5CEEC58(uint64_t a1, uint64_t a2)
{
  sub_1D5CEDE38(0, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CEECEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72593CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5CEEDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5CEEE64(uint64_t a1)
{
  sub_1D5CEDE8C(0, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5CEEEDC(uint64_t a1, uint64_t a2)
{
  sub_1D5CEDE8C(0, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CEEF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatTransformData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CEEFC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEF028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for FormatServiceOptions()
{
  result = qword_1EDF2AC08;
  if (!qword_1EDF2AC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5CEF0DC(uint64_t a1)
{
  v2 = type metadata accessor for FormatTransformData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatServiceType.prefetch(content:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v32 = a4;
  v6 = type metadata accessor for FormatServiceOptions();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatContent.Resolved();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEFE04(0, &qword_1EDF17A58, type metadata accessor for FormatContent.Resolved, MEMORY[0x1E69D6B18]);
  v28 = v18;
  (*(v13 + 16))(v17, v29, a3);
  sub_1D5CEFE68(v30, v12, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFE68(a2, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatServiceOptions);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = (v14 + *(v27 + 80) + v19) & ~*(v27 + 80);
  v21 = (v10 + *(v31 + 80) + v20) & ~*(v31 + 80);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = a3;
  *(v22 + 24) = v23;
  (*(v13 + 32))(v22 + v19, v17, a3);
  sub_1D5CEFF38(v12, v22 + v20, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFF38(v26, v22 + v21, type metadata accessor for FormatServiceOptions);
  return sub_1D725BA6C();
}

uint64_t sub_1D5CEF458()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for FormatContent.Resolved();
  v52 = *(*(v6 - 1) + 80);
  v7 = (v4 + v5 + v52) & ~v52;
  v8 = *(*(v6 - 1) + 64);
  v53 = type metadata accessor for FormatServiceOptions();
  v9 = *(*(v53 - 8) + 80);
  v51 = v7 + v8 + v9;
  (*(v3 + 8))(v1 + v4, v2);
  v10 = v1 + v7;

  v11 = v6[5];
  v12 = sub_1D725891C();
  v50 = *(*(v12 - 8) + 8);
  v50(v1 + v7 + v11, v12);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v13 = v1 + v7 + v6[16];
  v14 = type metadata accessor for FormatWebEmbed.Resolved();
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v48 = v12;
    v49 = v1;

    v15 = v13 + v14[5];

    v16 = type metadata accessor for FormatWebEmbed();
    v17 = *(v16 + 20);
    v18 = sub_1D72585BC();
    v19 = *(v18 - 8);
    v47 = *(v19 + 8);
    v47(v15 + v17, v18);
    v20 = *(v16 + 24);
    if (!(*(v19 + 48))(v15 + v20, 1, v18))
    {
      v47(v15 + v20, v18);
    }

    v21 = v13 + v14[8];
    v22 = type metadata accessor for WebEmbedDataVisualization();
    v12 = v48;
    if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v23 = type metadata accessor for GenericDataVisualization();
        v47(v21 + *(v23 + 20), v18);
      }

      else
      {
      }
    }

    v24 = v14[9];
    sub_1D5B5D194();
    v26 = v25;
    v27 = *(v25 - 8);
    v1 = v49;
    if (!(*(v27 + 48))(v13 + v24, 1, v25))
    {
      (*(v27 + 8))(v13 + v24, v26);
    }
  }

  v28 = v51 & ~v9;

  v29 = v6[21];
  v30 = sub_1D72608BC();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(v10 + v29, 1, v30))
  {
    (*(v31 + 8))(v10 + v29, v30);
  }

  v32 = v1 + v28;
  if (*(v1 + v28 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + v28);
  }

  v33 = v53;
  v34 = (v32 + *(v53 + 40));
  v35 = type metadata accessor for FormatTransformKnobs();
  if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
  {

    v36 = type metadata accessor for FeedContext();
    v37 = v34 + v36[5];
    v38 = type metadata accessor for BundleSession();
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {
      v50(&v37[*(v38 + 20)], v12);
    }

    if (*(v34 + v36[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v34 + *(v35 + 20));
    v33 = v53;
  }

  v39 = type metadata accessor for FormatTransformData();

  v40 = v34 + *(v39 + 44);
  v41 = type metadata accessor for FeedPersonalizationClusteringRules();
  if (!(*(*(v41 - 8) + 48))(v40, 1, v41))
  {
    v42 = &v40[*(v41 + 24)];
    v43 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
    {

      v44 = *(v43 + 24);
      v45 = sub_1D72593CC();
      (*(*(v45 - 8) + 8))(&v42[v44], v45);
    }

    if (*&v40[*(v41 + 44) + 32] != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5CEFD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5CEE38C(0, qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
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

void sub_1D5CEFE04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5CEFE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEFED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEFF38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CEFFA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CF0008(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(*(v5 - 8) + 64);
  v8 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v9 = *(type metadata accessor for FormatContent.Resolved() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for FormatServiceOptions() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D5CF01B4(a1, v1 + v8, v1 + v10, v1 + v13, v5, v6);
}

uint64_t sub_1D5CF01B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = (*(a6 + 24) + **(a6 + 24));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1D5B64680;

  return v14(a1, a3, a4, a5, a6);
}

uint64_t sub_1D5CF0300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64680;

  return FormatService.prefetch(content:options:)(a1, a2, a3);
}

uint64_t FormatService.prefetch(content:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[357] = v3;
  v4[351] = a3;
  v4[345] = a2;
  v4[339] = a1;
  v5 = *(type metadata accessor for FormatServiceOptions() - 8);
  v4[363] = v5;
  v4[369] = *(v5 + 64);
  v4[375] = swift_task_alloc();
  v4[381] = swift_task_alloc();
  v6 = type metadata accessor for FormatContent.Resolved();
  v4[387] = v6;
  v7 = *(v6 - 8);
  v4[393] = v7;
  v4[399] = *(v7 + 64);
  v4[405] = swift_task_alloc();
  v4[411] = swift_task_alloc();
  v4[417] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5CF050C, 0, 0);
}

uint64_t sub_1D5CF050C()
{
  v1 = v0[417];
  v2 = v0[399];
  v23 = v0[405];
  v3 = v0[393];
  v4 = v0[381];
  v20 = v0[411];
  v21 = v0[375];
  v5 = v0[363];
  v6 = v0[357];
  v7 = v0[351];
  v18 = v7;
  v19 = v0[345];
  sub_1D5CEFE68(v19, v1, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFE68(v7, v4, type metadata accessor for FormatServiceOptions);
  v22 = *(v3 + 80);
  v8 = v2 + ((v22 + 16) & ~v22);
  v9 = (v22 + 16) & ~v22;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (*(v5 + 80) + v10 + 8) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[418] = v12;
  sub_1D5CEFF38(v1, v12 + v9, type metadata accessor for FormatContent.Resolved);
  *(v12 + v10) = v6;
  sub_1D5CEFF38(v4, v12 + v11, type metadata accessor for FormatServiceOptions);

  sub_1D5CEFE04(0, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  sub_1D5CEFE68(v19, v20, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFE68(v18, v21, type metadata accessor for FormatServiceOptions);
  v13 = swift_allocObject();
  v0[419] = v13;
  sub_1D5CEFF38(v20, v13 + v9, type metadata accessor for FormatContent.Resolved);
  *(v13 + v10) = v6;
  sub_1D5CEFF38(v21, v13 + v11, type metadata accessor for FormatServiceOptions);

  sub_1D5B5A7A0(0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  v14 = sub_1D5CF0E04(v19);
  v15 = swift_allocObject();
  v0[420] = v15;
  *(v15 + 16) = v6;
  *(v15 + 24) = v14;

  swift_asyncLet_begin();
  sub_1D5CEFE68(v19, v23, type metadata accessor for FormatContent.Resolved);
  v16 = swift_allocObject();
  v0[421] = v16;
  *(v16 + 16) = v6;
  sub_1D5CEFF38(v23, v16 + ((v22 + 24) & ~v22), type metadata accessor for FormatContent.Resolved);

  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 327, sub_1D5D0BB7C, v0 + 322);
}

uint64_t sub_1D5CF08E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5CF0920()
{
  v1 = type metadata accessor for FormatContent.Resolved();
  v2 = *(*(v1 - 1) + 80);

  v3 = v0 + ((v2 + 24) & ~v2);

  v4 = v1[5];
  v5 = sub_1D725891C();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v6 = v3 + v1[16];
  v7 = type metadata accessor for FormatWebEmbed.Resolved();
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {

    v8 = v6 + v7[5];

    v9 = type metadata accessor for FormatWebEmbed();
    v10 = *(v9 + 20);
    v11 = sub_1D72585BC();
    v12 = *(v11 - 8);
    v25 = *(v12 + 8);
    v25(v8 + v10, v11);
    v13 = *(v9 + 24);
    if (!(*(v12 + 48))(v8 + v13, 1, v11))
    {
      v25(v8 + v13, v11);
    }

    v14 = v6 + v7[8];
    v15 = type metadata accessor for WebEmbedDataVisualization();
    if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v16 = type metadata accessor for GenericDataVisualization();
        v25(v14 + *(v16 + 20), v11);
      }

      else
      {
      }
    }

    v17 = v7[9];
    sub_1D5B5D194();
    v19 = v18;
    v20 = *(v18 - 8);
    if (!(*(v20 + 48))(v6 + v17, 1, v18))
    {
      (*(v20 + 8))(v6 + v17, v19);
    }
  }

  v21 = v1[21];
  v22 = sub_1D72608BC();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v3 + v21, 1, v22))
  {
    (*(v23 + 8))(v3 + v21, v22);
  }

  return swift_deallocObject();
}

void *sub_1D5CF0E04(uint64_t a1)
{
  v2 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatContentSlotItemResolution();
  v98 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1D5CEFE04(0, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v99 = (v94 - v13);
  sub_1D5CEFE04(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, v10);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v108 = (v94 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v100 = v94 - v23;
  v24 = type metadata accessor for WebEmbedDataVisualization();
  v106 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v111 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v96 = v94 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v104 = v94 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v95 = (v94 - v35);
  v36 = type metadata accessor for FormatWebEmbed.Resolved();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v38);
  v110 = v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = v94 - v42;
  v101 = a1;
  v44 = FormatContent.Resolved.webEmbeds.getter();
  v45 = *(v44 + 16);
  v105 = v2;
  v107 = v24;
  v46 = v106;
  v112 = v36;
  v97 = v37;
  if (v45)
  {
    v47 = *(v36 + 32);
    v48 = *(v37 + 80);
    v94[1] = v44;
    v49 = v44 + ((v48 + 32) & ~v48);
    v102 = *(v37 + 72);
    v103 = v47;
    v50 = (v106 + 48);
    v109 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D5CEFE68(v49, v43, type metadata accessor for FormatWebEmbed.Resolved);
      v51 = v108;
      sub_1D5CF23F8(v103 + v43, v108, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5EA08F4(v43, type metadata accessor for FormatWebEmbed.Resolved);
      if ((*v50)(v51, 1, v107) == 1)
      {
        sub_1D5CF274C(v51, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720], sub_1D5CEFE04);
      }

      else
      {
        sub_1D5CEFF38(v51, v104, type metadata accessor for WebEmbedDataVisualization);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v52 = v109;
        }

        else
        {
          v52 = sub_1D698C498(0, v109[2] + 1, 1, v109);
        }

        v54 = v52[2];
        v53 = v52[3];
        if (v54 >= v53 >> 1)
        {
          v52 = sub_1D698C498(v53 > 1, v54 + 1, 1, v52);
        }

        v52[2] = v54 + 1;
        v55 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v109 = v52;
        sub_1D5CEFF38(v104, v52 + v55 + *(v106 + 72) * v54, type metadata accessor for WebEmbedDataVisualization);
        v2 = v105;
      }

      v49 += v102;
      --v45;
    }

    while (v45);

    v56 = v106;
    v57 = v109;
  }

  else
  {

    v57 = MEMORY[0x1E69E7CC0];
    v56 = v46;
  }

  v58 = v57;
  v113 = v57;
  v59 = type metadata accessor for FormatContent.Resolved();
  v60 = v99;
  sub_1D5CF23F8(v101 + *(v59 + 64), v99, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved);
  v61 = v112;
  if ((*(v97 + 48))(v60, 1, v112) == 1)
  {
    sub_1D5CF274C(v60, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720], sub_1D5CEFE04);
    v62 = v100;
    (*(v56 + 56))(v100, 1, 1, v107);
  }

  else
  {
    v63 = v60 + *(v61 + 32);
    v62 = v100;
    sub_1D5CF23F8(v63, v100, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    sub_1D5EA08F4(v60, type metadata accessor for FormatWebEmbed.Resolved);
    if ((*(v56 + 48))(v62, 1, v107) != 1)
    {
      v60 = v95;
      sub_1D5CEFF38(v62, v95, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5CEFE68(v60, v96, type metadata accessor for WebEmbedDataVisualization);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_19;
      }

      goto LABEL_60;
    }
  }

  sub_1D5CF274C(v62, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720], sub_1D5CEFE04);
  while (1)
  {
    v66 = FormatContent.Resolved.itemAuxiliaries.getter();
    v67 = v66;
    v100 = *(v66 + 16);
    if (!v100)
    {
      break;
    }

    v68 = 0;
    v99 = (v66 + 32);
    v108 = (v56 + 48);
    v109 = (v56 + 56);
    v69 = MEMORY[0x1E69E7CC0];
    v97 = v66;
    while (v68 < *(v67 + 16))
    {
      v104 = v68;
      v71 = &v99[2 * v68];
      v72 = *v71;
      v73 = *(*v71 + 16);
      if (v73)
      {
        v102 = *v71;
        v103 = v69;
        v74 = v71[1];
        v75 = v98;
        v76 = v72 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
        swift_bridgeObjectRetain_n();
        v101 = v74;

        v77 = *(v75 + 72);
        v78 = v107;
        v58 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          sub_1D5CEFE68(v76, v9, type metadata accessor for FormatContentSlotItemResolution);
          sub_1D5CEFE68(v9, v5, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D5EA08F4(v9, type metadata accessor for FormatContentSlotItemResolution);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v60 = v2;
            v79 = v110;
            sub_1D5CEFF38(v5, v110, type metadata accessor for FormatWebEmbed.Resolved);
            sub_1D5CF23F8(v79 + *(v112 + 32), v17, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
            v80 = v79;
            v2 = v60;
            sub_1D5EA08F4(v80, type metadata accessor for FormatWebEmbed.Resolved);
            if ((*v108)(v17, 1, v78) != 1)
            {
              sub_1D5CEFF38(v17, v111, type metadata accessor for WebEmbedDataVisualization);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v58 = sub_1D698C498(0, v58[2] + 1, 1, v58);
              }

              v82 = v58[2];
              v81 = v58[3];
              if (v82 >= v81 >> 1)
              {
                v58 = sub_1D698C498(v81 > 1, v82 + 1, 1, v58);
              }

              v58[2] = v82 + 1;
              sub_1D5CEFF38(v111, v58 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v82, type metadata accessor for WebEmbedDataVisualization);
              v2 = v105;
              v78 = v107;
              goto LABEL_31;
            }
          }

          else
          {
            sub_1D5EA08F4(v5, type metadata accessor for FormatContentSlotItemObject.Resolved);
            (*v109)(v17, 1, 1, v78);
          }

          sub_1D5CF274C(v17, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720], sub_1D5CEFE04);
LABEL_31:
          v76 += v77;
          if (!--v73)
          {

            swift_bridgeObjectRelease_n();
            v67 = v97;
            v69 = v103;
            goto LABEL_41;
          }
        }
      }

      v58 = MEMORY[0x1E69E7CC0];
LABEL_41:
      v56 = v58[2];
      v83 = v69[2];
      v84 = v83 + v56;
      if (__OFADD__(v83, v56))
      {
        goto LABEL_56;
      }

      v60 = v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v60;
      if (!isUniquelyReferenced_nonNull_native || v84 > v60[3] >> 1)
      {
        if (v83 <= v84)
        {
          v87 = v83 + v56;
        }

        else
        {
          v87 = v83;
        }

        v86 = sub_1D698C498(isUniquelyReferenced_nonNull_native, v87, 1, v60);
      }

      if (v58[2])
      {
        if ((*(v86 + 24) >> 1) - *(v86 + 16) < v56)
        {
          goto LABEL_58;
        }

        v88 = v86;
        swift_arrayInitWithCopy();

        v69 = v88;
        if (v56)
        {
          v89 = *(v88 + 16);
          v90 = __OFADD__(v89, v56);
          v91 = v89 + v56;
          if (v90)
          {
            goto LABEL_59;
          }

          *(v88 + 16) = v91;
        }
      }

      else
      {
        v70 = v86;

        v69 = v70;
        if (v56)
        {
          goto LABEL_57;
        }
      }

      v68 = v104 + 1;
      if (v104 + 1 == v100)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v58 = sub_1D698C498(0, v58[2] + 1, 1, v58);
LABEL_19:
    v65 = v58[2];
    v64 = v58[3];
    if (v65 >= v64 >> 1)
    {
      v58 = sub_1D698C498(v64 > 1, v65 + 1, 1, v58);
    }

    sub_1D5EA08F4(v60, type metadata accessor for WebEmbedDataVisualization);
    v58[2] = v65 + 1;
    sub_1D5CEFF38(v96, v58 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v65, type metadata accessor for WebEmbedDataVisualization);
    v113 = v58;
  }

  v69 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v92 = v69;

  sub_1D5CFED40(v92);
  return v113;
}

uint64_t type metadata accessor for FormatContentSlotItemResolution()
{
  result = qword_1EDF1FC38;
  if (!qword_1EDF1FC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5CF1B20()
{
  type metadata accessor for FormatContentSlotItemObject.Resolved();
  if (v0 <= 0x3F)
  {
    sub_1D5CF1BD4();
    if (v1 <= 0x3F)
    {
      sub_1D5B81B04();
      if (v2 <= 0x3F)
      {
        sub_1D5B5AD98();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D5CF1BD4()
{
  if (!qword_1EDF20858)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF20858);
    }
  }
}

uint64_t sub_1D5CF1C50(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + *(type metadata accessor for FormatContent.Resolved() + 36));
  result = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v5 + 32);
    while (v8 < *(v5 + 16))
    {
      v18 = *v9;
      v10 = v9[3];
      v11 = v9[4];
      v12 = v9[2];
      v19 = v9[1];
      *v20 = v12;
      *&v20[16] = v10;
      *&v20[32] = v11;
      ++v8;
      v16[1] = v19;
      *&v17[8] = *&v20[8];
      *&v17[24] = *&v20[24];
      *v17 = v12 & 0x7FFFFFFFFFFFFFFFLL;
      *&v17[40] = *(&v11 + 1);
      v15[7] = *v17;
      v15[8] = *&v17[16];
      v15[9] = *&v17[32];
      v16[0] = v18;
      v15[5] = v18;
      v15[6] = v19;
      sub_1D5CE9930(&v18, v15);
      sub_1D5CE9930(&v18, v15);
      v13 = sub_1D5CE9930(&v18, v15);
      v14 = a1(v13);
      sub_1D5CB71DC(v16);
      sub_1D5CEC67C(&v18);
      sub_1D5CEC67C(&v18);
      result = a2(v14);
      v9 += 5;
      if (v7 == v8)
      {
        return v21;
      }
    }

    __break(1u);
  }

  return result;
}

void FormatContentSubgroup.Resolved.webEmbeds.getter()
{
  sub_1D5B5AB88(0, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v43 - v7;
  v56 = type metadata accessor for FormatWebEmbed.Resolved();
  v9 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v10);
  v54 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  v44 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - v17;
  v19 = v0[3];
  v59 = v0[2];
  v60 = v19;
  v61 = v0[4];
  v20 = v0[1];
  v57 = *v0;
  v58 = v20;
  sub_1D5CEBCF0();
  v47 = *(v21 + 16);
  if (v47)
  {
    v22 = 0;
    v46 = v21 + 32;
    v52 = (v9 + 56);
    v50 = v9;
    v23 = (v9 + 48);
    v49 = MEMORY[0x1E69E7CC0];
    v51 = v4;
    v45 = v21;
    while (v22 < *(v21 + 16))
    {
      v48 = v22;
      v24 = *(v46 + (v22 << 6) + 32);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v24 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v55 = *(v44 + 72);
        v27 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1D5CEC7A0(v26, v18, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D5CEC7A0(v18, v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            sub_1D6B678B8(v14, v4, type metadata accessor for FormatWebEmbed.Resolved);
            v28 = 0;
          }

          else
          {
            sub_1D5D1EB58(v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
            v28 = 1;
          }

          v29 = v56;
          (*v52)(v4, v28, 1, v56);
          sub_1D5CEB448(v4, v8, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved);
          sub_1D5D1EB58(v18, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if ((*v23)(v8, 1, v29) == 1)
          {
            sub_1D5D1ECD8(v8, qword_1EDF41540, type metadata accessor for FormatWebEmbed.Resolved);
          }

          else
          {
            sub_1D6B678B8(v8, v54, type metadata accessor for FormatWebEmbed.Resolved);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_1D5CF237C(0, v27[2] + 1, 1, v27);
            }

            v31 = v27[2];
            v30 = v27[3];
            if (v31 >= v30 >> 1)
            {
              v27 = sub_1D5CF237C(v30 > 1, v31 + 1, 1, v27);
            }

            v27[2] = v31 + 1;
            sub_1D6B678B8(v54, v27 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v31, type metadata accessor for FormatWebEmbed.Resolved);
            v4 = v51;
          }

          v26 += v55;
          --v25;
        }

        while (v25);
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      v32 = v27[2];
      v33 = v49;
      v34 = v49[2];
      v35 = v34 + v32;
      if (__OFADD__(v34, v32))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v35 <= v33[3] >> 1)
      {
        v4 = v51;
        v37 = v33;
      }

      else
      {
        if (v34 <= v35)
        {
          v38 = v34 + v32;
        }

        else
        {
          v38 = v34;
        }

        v37 = sub_1D5CF237C(isUniquelyReferenced_nonNull_native, v38, 1, v33);
        v4 = v51;
      }

      v39 = v27[2];
      v49 = v37;
      if (v39)
      {
        if ((*(v37 + 24) >> 1) - *(v37 + 16) < v32)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v40 = v49[2];
          v41 = __OFADD__(v40, v32);
          v42 = v40 + v32;
          if (v41)
          {
            goto LABEL_39;
          }

          v49[2] = v42;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_37;
        }
      }

      v22 = v48 + 1;
      v21 = v45;
      if (v48 + 1 == v47)
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
LABEL_39:
    __break(1u);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
LABEL_34:
  }
}

uint64_t sub_1D5CF23F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5CEFE04(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CF2478(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C0ECB0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CF24F8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5CEDC80(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CF2564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CF25E0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for FormatWebEmbed();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_1D5B4D72C(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  sub_1D5B5D160(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_1D5CF274C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5CF27AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CF280C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C0ECB0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5CF287C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B59538(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5CF28EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5CEDC80(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5CF2948(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B5959C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5CF29A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CF2A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatContentSubgroup.Resolved.itemAuxiliaries.getter()
{
  v1 = v0[3];
  v25 = v0[2];
  v26 = v1;
  v27 = v0[4];
  v2 = v0[1];
  v23 = *v0;
  v24 = v2;
  sub_1D5CEBCF0();
  v4 = v3;
  result = swift_getKeyPath();
  v6 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v4 + 32);
    while (v8 < *(v4 + 16))
    {
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      v19 = v9[2];
      v20 = v12;
      v18[0] = v10;
      v18[1] = v11;
      ++v8;
      v13 = v10;
      v14 = v11;
      v15 = v19;
      v16 = v12;
      sub_1D5CB6F58(v18, v21);
      sub_1D5CB6F58(v18, v21);
      swift_getAtKeyPath();
      sub_1D5CB6FB4(v18);
      v21[0] = v13;
      v21[1] = v14;
      v21[2] = v15;
      v21[3] = v16;
      sub_1D5CB6FB4(v21);
      result = sub_1D5CFE2B8(v17);
      v9 += 4;
      if (v7 == v8)
      {
        v6 = v22;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return v6;
  }

  return result;
}

uint64_t sub_1D5CF2BD8(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5CF2C1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContent.Resolved() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D5B64680;

  return sub_1D5CF2D74(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1D5CF2D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(type metadata accessor for FormatServiceOptions() - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for FormatContent.Resolved();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v4[12] = *(v7 + 64);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5CF2FF8, 0, 0);
}

uint64_t sub_1D5CF2EA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatContent.Resolved() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for FormatServiceOptions() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D5B64680;

  return sub_1D5CF323C(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1D5CF2FF8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = *(v7 + *(v0[10] + 32));
  v0[14] = v9;
  v0[2] = v9;
  sub_1D5CEFE68(v7, v1, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFE68(v5, v4, type metadata accessor for FormatServiceOptions);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = (v2 + *(v6 + 80) + v10) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v8;
  sub_1D5CEFF38(v1, v12 + v10, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFF38(v4, v12 + v11, type metadata accessor for FormatServiceOptions);

  v13 = swift_task_alloc();
  v0[16] = v13;
  sub_1D5CEFE04(0, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory, MEMORY[0x1E69E62F8]);
  v15 = v14;
  v16 = type metadata accessor for FormatPackageInventory();
  v17 = sub_1D5CF35F8(&qword_1EDF1B088, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory);
  *v13 = v0;
  v13[1] = sub_1D5D0A0D0;

  return MEMORY[0x1EEE45320](&unk_1D7279C00, v12, v15, v16, v17);
}

uint64_t sub_1D5CF323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(type metadata accessor for FormatServiceOptions() - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for FormatContent.Resolved();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v4[12] = *(v7 + 64);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5CF3368, 0, 0);
}

uint64_t sub_1D5CF3368()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = *(v7 + *(v0[10] + 36));
  v0[14] = v9;
  v0[2] = v9;
  sub_1D5CEFE68(v7, v1, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFE68(v5, v4, type metadata accessor for FormatServiceOptions);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = (v2 + *(v6 + 80) + v10) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v8;
  sub_1D5CEFF38(v1, v12 + v10, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEFF38(v4, v12 + v11, type metadata accessor for FormatServiceOptions);

  v13 = swift_task_alloc();
  v0[16] = v13;
  sub_1D5B5A7A0(0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
  v15 = v14;
  v16 = sub_1D5CF35A0(&qword_1EDF1B0D0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer);
  *v13 = v0;
  v13[1] = sub_1D5D0BA10;

  return MEMORY[0x1EEE45320](&unk_1D7279BE8, v12, v15, &type metadata for FormatContentSubgroup.ResolvedContainer, v16);
}

uint64_t sub_1D5CF35A0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5A7A0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CF35F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5CEFE04(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CF365C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 80))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 32) >> 57) >> 6) | (2 * ((*(a1 + 32) >> 57) & 0x38 | *(a1 + 32) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5CF36B8(uint64_t a1, _OWORD *a2)
{
  v5 = v3;
  v7 = *(type metadata accessor for FormatContent.Resolved() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5CF380C(a1, a2, v12, v2 + v8, v2 + v11);
}

uint64_t sub_1D5CF380C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 272) = a4;
  *(v5 + 280) = a5;
  *(v5 + 256) = a1;
  *(v5 + 264) = a3;
  v6 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v6;
  *(v5 + 80) = a2[4];
  v7 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1D5CF3BD4, 0, 0);
}

uint64_t sub_1D5CF3848(uint64_t a1, uint64_t a2)
{
  v28 = v2;
  if (qword_1EDF43B30 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 472);
  v4 = *(v2 + 456);
  sub_1D5C2AF10(qword_1EDF33048, a2, type metadata accessor for FormatService);
  sub_1D725964C();
  *(v2 + 248) = 0u;
  *(v2 + 240) = 0;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  v5 = *(v2 + 288);
  v23 = *(v2 + 272);
  v24 = v5;
  v25 = *(v2 + 304);
  *&v26 = *(v2 + 320);
  v6 = *(v2 + 256);
  v21 = *(v2 + 240);
  v22 = v6;
  sub_1D5CEFE04(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
  swift_retain_n();
  sub_1D5CF6A5C(v2 + 240, v2 + 328);
  swift_unknownObjectRetain();
  v7 = sub_1D725A80C();
  *(v2 + 16) = v4;
  v8 = v24;
  *(v2 + 56) = v23;
  *(v2 + 72) = v8;
  *(v2 + 88) = v25;
  v9 = v26;
  v10 = v22;
  *(v2 + 24) = v21;
  *(v2 + 40) = v10;
  *(v2 + 104) = v9;
  *(v2 + 112) = v3;
  *(v2 + 120) = v7;
  v11 = *(v2 + 96);
  v25 = *(v2 + 80);
  v26 = v11;
  v27 = *(v2 + 112);
  v12 = *(v2 + 32);
  v21 = *(v2 + 16);
  v22 = v12;
  v13 = *(v2 + 64);
  v23 = *(v2 + 48);
  v24 = v13;
  FormatPackageInventory.resources(context:)(&v21, (v2 + 416));
  sub_1D5CF6244((v2 + 416), (v2 + 16), *(v2 + 464));
  v14 = *(v2 + 416);

  sub_1D5D056DC(v2 + 16, v2 + 128);
  v15 = sub_1D5D05DC8(v14, (v2 + 16));
  v16 = *(v2 + 480);
  v17 = v15;
  sub_1D5D05738(v2 + 16);

  v18 = sub_1D5D06170(v17);

  *(v2 + 504) = *(v16 + 40);
  *(v2 + 536) = *(v16 + 48);
  *(v2 + 512) = FeedFontManager.load(fonts:downloadIfNeeded:)(v18);

  v19 = swift_task_alloc();
  *(v2 + 520) = v19;
  *v19 = v2;
  v19[1] = sub_1D5D09964;

  return MEMORY[0x1EEE44EE0](v2 + 440);
}

uint64_t sub_1D5CF3BD4()
{
  v1 = *(v0 + 272);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 288) = v2;
  v4 = v2 & 0x7FFFFFFFFFFFFFFFLL;
  v5 = *(v0 + 32);
  v6 = *(v0 + 88);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v5;
  *(v0 + 120) = v3;
  *(v0 + 128) = v4;
  v7 = *(v0 + 56);
  *(v0 + 296) = v7;
  *(v0 + 136) = v7;
  v8 = v7;
  *(v0 + 152) = *(v0 + 72);
  *(v0 + 168) = v6;

  sub_1D5CE9930(v0 + 16, v0 + 176);

  sub_1D5CB71DC(v0 + 96);
  v9 = *(v1 + *(type metadata accessor for FormatContent.Resolved() + 52));
  v10 = swift_task_alloc();
  *(v0 + 304) = v10;
  *v10 = v0;
  v10[1] = sub_1D5D0B6C4;
  v11 = *(v0 + 280);

  return sub_1D5CF3D04(v4, v8, v9, v11);
}

uint64_t sub_1D5CF3D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[60] = a4;
  v5[61] = v4;
  v5[58] = a2;
  v5[59] = a3;
  v5[57] = a1;
  v5[62] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1D5CF3848, 0, 0);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B9AppConfigVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D5CF3D6C(char **a1, __int128 *a2, uint64_t a3)
{
  sub_1D5C2B0C4(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = (&v21 - v10);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v22 = *(v9 + 72);
    v23 = (&v21 - v10);
    while (1)
    {
      sub_1D5CF8338(v13, v11, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v14 = a1;
      v15 = a2;
      v17 = v11[10];
      v16 = v11[11];
      v18 = v11[14];
      v19 = v11[15];

      sub_1D5CF4060(v14, v15, v16);
      if (v3)
      {
        break;
      }

      sub_1D5CF6244(v14, v15, v18);
      a2 = v15;

      sub_1D5CFD3E0(v14, v15, v19);
      a1 = v14;

      sub_1D5CF6090(v14, a2, v17);

      v11 = v23;
      sub_1D5CF9D88(v23, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v13 += v22;
      if (!--v12)
      {
        return;
      }
    }

    v20 = v23;

    sub_1D5CF9D88(v20, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  }
}

uint64_t sub_1D5CF4060(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 32); ; i += 4)
    {
      v8 = i[1];
      v25[0] = *i;
      v25[1] = v8;
      v9 = i[3];
      v11 = *i;
      v10 = i[1];
      v25[2] = i[2];
      v25[3] = v9;
      v21 = v11;
      v22 = v10;
      v12 = i[3];
      v23 = i[2];
      v24 = v12;
      v13 = a2[5];
      v20[4] = a2[4];
      v20[5] = v13;
      v20[6] = a2[6];
      v14 = a2[1];
      v20[0] = *a2;
      v20[1] = v14;
      v15 = a2[3];
      v20[2] = a2[2];
      v20[3] = v15;
      sub_1D5C8C900(v25, &v16);
      sub_1D5CFC8D8(v6, v20);
      if (v3)
      {
        break;
      }

      v16 = v21;
      v17 = v22;
      v18 = v23;
      v19 = v24;
      result = sub_1D5C8C974(&v16);
      if (!--v4)
      {
        return result;
      }
    }

    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    return sub_1D5C8C974(&v16);
  }

  return result;
}

void sub_1D5CF4160()
{
  if (!qword_1EDF3A6D8)
  {
    sub_1D5CF4A48(255, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3A6D8);
    }
  }
}

void sub_1D5CF41D4(char **a1, __int128 *a2)
{
  v3 = v2;
  v75 = a1;
  sub_1D5CF4160();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CF4A48(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v74 - v12;
  sub_1D5B54684(0, &qword_1EDF3A6C8, sub_1D5CF4AE4);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v74 - v16;
  sub_1D5C8E028();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2[5];
  v88[4] = a2[4];
  v88[5] = v23;
  v88[6] = a2[6];
  v24 = a2[1];
  v88[0] = *a2;
  v88[1] = v24;
  v25 = a2[3];
  v26 = *v3;
  v27 = *v3 >> 60;
  v88[2] = a2[2];
  v88[3] = v25;
  if (v27 > 6)
  {
    if (v27 <= 9)
    {
      v39 = v26 & 0xFFFFFFFFFFFFFFFLL;
      if (v27 == 7)
      {
        *&v81 = *(v39 + 16);
        sub_1D5CF9A24(v75, a2);
      }

      else if (v27 == 8)
      {
        v40 = *(v39 + 16);
        v41 = *(v39 + 24);

        sub_1D5D0AD60(v75, v88, v40, v41, sub_1D5CF41D4);
      }

      else
      {
        *&v81 = *(v39 + 16);
        sub_1D5CF94EC(v75, a2);
      }
    }

    else
    {
      v38 = v91;
      if (v27 > 11)
      {
        v42 = v26 & 0xFFFFFFFFFFFFFFFLL;
        if (v27 == 12)
        {
          v43 = *(v42 + 16);
          v44 = v43 >> 61;
          if ((v43 >> 61) > 2)
          {
            v67 = v43 & 0x1FFFFFFFFFFFFFFFLL;
            if (v44 == 3)
            {
              v68 = *(v67 + 32);
              v69 = *(v67 + 40);
              v76 = *(v67 + 16);
              v77 = v68;
              LOBYTE(v78) = v69;
              v70 = a2[5];
              v85 = a2[4];
              v86 = v70;
              v87 = a2[6];
              v71 = a2[1];
              v81 = *a2;
              v82 = v71;
              v72 = a2[3];
              v83 = a2[2];
              v84 = v72;
              sub_1D607AC1C(v75);
            }

            else
            {
              v73 = *(v67 + 32);
              v89[0] = *(v67 + 16);
              v89[1] = v73;
              v90 = *(v67 + 48);
              sub_1D62B50EC(v89, &v81, sub_1D62B5154);
              sub_1D62A7020(v75, v88);
              sub_1D62B51D0(v89, sub_1D62B5154);
            }
          }

          else if ((v43 >> 61) >= 2)
          {
            v45 = v43 & 0x1FFFFFFFFFFFFFFFLL;
            v46 = *(v45 + 16);
            v47 = *(v45 + 32);
            v48 = *(v45 + 40);
            v49 = *(v45 + 48);
            LOWORD(v45) = *(v45 + 56);
            v76 = v46;
            v77 = v47;
            v78 = v48;
            v79 = v49;
            v80 = v45;
            v50 = a2[5];
            v85 = a2[4];
            v86 = v50;
            v87 = a2[6];
            v51 = a2[1];
            v81 = *a2;
            v82 = v51;
            v52 = a2[3];
            v83 = a2[2];
            v84 = v52;
            sub_1D5FD7C7C(v75);
          }
        }

        else
        {
          v63 = *(v42 + 16);
          if ((v63 & 0x8000000000000000) == 0)
          {
            v64 = *(v63 + 16);
            v65 = *(v63 + 24);

            v66 = v75;
            sub_1D6E60F24(v75, v88, v64);
            if (!v38)
            {
              sub_1D62B28C0(v66, v88, v65);
            }
          }
        }
      }

      else if (v27 == 10)
      {
        *&v81 = *((v26 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D62AF89C(v75, a2);
      }
    }
  }

  else if (v27 <= 2)
  {
    if (v27 >= 2)
    {
      v53 = swift_projectBox();
      sub_1D62B50EC(v53, v22, sub_1D5C8E028);
      v54 = *&v22[*(v19 + 36)];
      v55 = *(v54 + 16);
      if (v55)
      {
        sub_1D5CF4AE4();
        v57 = v56;
        v58 = *(v56 - 8);
        v59 = v54 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
        v60 = *(v58 + 72);
        v61 = (v58 + 56);
        do
        {
          sub_1D62B50EC(v59, v17, sub_1D5CF4AE4);
          (*v61)(v17, 0, 1, v57);
          sub_1D5B6EF64(v17, &qword_1EDF3A6C8, sub_1D5CF4AE4);
          v59 += v60;
          --v55;
        }

        while (v55);
      }

      sub_1D5CF4AE4();
      (*(*(v62 - 8) + 56))(v17, 1, 1, v62);
      sub_1D62B51D0(v22, sub_1D5C8E028);
    }
  }

  else if ((v27 - 3) >= 3)
  {
    v28 = swift_projectBox();
    sub_1D62B7198(v28, v13, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
    v29 = *&v13[*(v10 + 36)];
    v30 = *(v29 + 16);
    if (v30)
    {
      sub_1D5CF4A48(0, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
      v32 = v31;
      v33 = *(v31 - 8);
      v34 = v29 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v35 = *(v33 + 72);
      v36 = (v33 + 56);
      do
      {
        sub_1D62B7198(v34, v8, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
        (*v36)(v8, 0, 1, v32);
        sub_1D62B51D0(v8, sub_1D5CF4160);
        v34 += v35;
        --v30;
      }

      while (v30);
    }

    sub_1D5CF4A48(0, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
    (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
    sub_1D62B7204(v13, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  }
}

void sub_1D5CF49AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D72585BC();
    v7 = sub_1D5FBA0C0(&qword_1EDF45B80, MEMORY[0x1E6968FB0]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5CF4A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D72585BC();
    v7 = sub_1D5B57348(&qword_1EDF45B80, MEMORY[0x1E6968FB0]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5CF4AE4()
{
  if (!qword_1EDF3A6D0)
  {
    sub_1D725891C();
    sub_1D5B57348(&qword_1EDF45B20, MEMORY[0x1E6969530]);
    v0 = type metadata accessor for FormatSelectorValueSelector();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3A6D0);
    }
  }
}

uint64_t sub_1D5CF4B78(uint64_t a1, void *a2)
{
  v5 = v3;
  v7 = *(type metadata accessor for FormatContent.Resolved() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for FormatServiceOptions() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v2 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D5B64680;

  return sub_1D5CF4CCC(a1, a2, v12, v2 + v8, v2 + v11);
}

uint64_t sub_1D5CF4CCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5CF4CF8, 0, 0);
}

uint64_t sub_1D5CF4CF8()
{
  v1 = v0[4];
  v2 = type metadata accessor for FormatContent.Resolved();
  v3 = *(v1 + *(v2 + 44));
  v4 = *(v1 + *(v2 + 52));
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1D5D09C9C;
  v6 = v0[5];
  v7 = v0[6];

  return sub_1D5CF3D04(v7, v3, v4, v6);
}

uint64_t sub_1D5CF4DBC(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v16[4] = a2[4];
  v16[5] = v5;
  v16[6] = a2[6];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  v7 = a2[3];
  v16[2] = a2[2];
  v16[3] = v7;
  swift_beginAccess();
  v8 = v2[4];

  sub_1D5CF5C18(a1, v16, v8);

  if (!v3)
  {
    v10 = v2[6];
    if (v10)
    {
      v11 = v2[10];
      v13 = v2[8];
      v12 = v2[9];
      v14 = v2[7];
      sub_1D62A42E0(a1);
      sub_1D5EB1D80(v10, v14, v13, v12, v11);

      sub_1D5CBF568(v11);
    }

    swift_beginAccess();
    v15 = v2[5];

    sub_1D5CF6090(a1, v16, v15);
  }

  return result;
}

uint64_t sub_1D5CF4F50(uint64_t result, __int128 *a2)
{
  v4 = a2[5];
  v45[4] = a2[4];
  v45[5] = v4;
  v45[6] = a2[6];
  v5 = a2[1];
  v45[0] = *a2;
  v45[1] = v5;
  v6 = a2[3];
  v45[2] = a2[2];
  v45[3] = v6;
  v7 = *v2;
  v8 = a2;
  v9 = result;
  switch((*v2 >> 58) & 0x3C | (*v2 >> 1) & 3)
  {
    case 2uLL:
    case 3uLL:

      sub_1D5D08784(v9, v8);

    case 4uLL:

      sub_1D5D08EAC(v9, v8);

    case 5uLL:

      sub_1D5CFC4E4(v9, v8);

    case 6uLL:

      sub_1D5D07854(v9, v8);

    case 7uLL:
      goto LABEL_46;
    case 8uLL:

      sub_1D5CFDB80(v9, v8);

    case 9uLL:
      v22 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v23 = *(v22 + 88);

      sub_1D5CF6244(v9, v45, v23);
      if (v3)
      {
        goto LABEL_73;
      }

      swift_beginAccess();
      v8 = *(v22 + 96);
      if (v8 >> 62)
      {
        goto LABEL_75;
      }

      v24 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (2)
      {

        if (!v24)
        {
          goto LABEL_72;
        }

        v25 = 0;
        v46 = v8 & 0xC000000000000001;
LABEL_38:
        if (v46)
        {
          v26 = MEMORY[0x1DA6FB460](v25, v8);
          v27 = v25 + 1;
          if (!__OFADD__(v25, 1))
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v25 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_75:
            v24 = sub_1D7263BFC();
            continue;
          }

          v26 = *(v8 + v25 + 4);

          v27 = v25 + 1;
          if (!__OFADD__(v25, 1))
          {
LABEL_41:
            swift_beginAccess();
            v28 = *(v26 + 40);

            sub_1D5CF6244(v9, v45, v28);

            swift_beginAccess();
            v29 = *(v26 + 32);

            sub_1D5CF6090(v9, v45, v29);

            ++v25;
            if (v27 == v24)
            {
LABEL_72:
            }

            goto LABEL_38;
          }
        }

        break;
      }

      __break(1u);
LABEL_46:

      sub_1D5D0A704(v9, v8);

    case 0xAuLL:

      sub_1D5CF66F0(v9, v8);

    case 0xBuLL:

      sub_1D5CFDDFC(v9, v8);

    case 0xCuLL:
      v20 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v21 = *(v20 + 56);

      sub_1D5CF6244(v9, v45, v21);
      if (v3)
      {
        goto LABEL_73;
      }

      swift_beginAccess();
      v16 = *(v20 + 40);
      goto LABEL_65;
    case 0xDuLL:

      sub_1D5CF7734(v9, v8);

    case 0xEuLL:

      sub_1D5D06868(v9, v8);

    case 0xFuLL:

      sub_1D5D095B4(v9, v8);

    case 0x10uLL:

      sub_1D5D0A2B4(v9, v8);

    case 0x11uLL:

      sub_1D5D08B44(v9, v8);

    case 0x12uLL:

      sub_1D5D0AB34(v9, v8);

    case 0x13uLL:

      sub_1D5CF4DBC(v9, v8);

    case 0x14uLL:

      sub_1D62ADBBC(v9, v8);

    case 0x15uLL:

      sub_1D62A8450(v9, v8);

    case 0x16uLL:
      return result;
    case 0x17uLL:

      sub_1D5D08CB8(v9, v8);

    case 0x18uLL:

      sub_1D62AD138(v9, v8);

    case 0x19uLL:

      sub_1D62ABE28(v9, v8);

    case 0x1AuLL:

      sub_1D62ADE80(v9, v8);

    case 0x1BuLL:

      sub_1D62AB09C(v9, v8);

    case 0x1CuLL:
      return sub_1D62AE178(result, a2);
    case 0x1DuLL:
      v37 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v38 = *(v37 + 56);

      sub_1D5CF6244(v9, v45, v38);
      goto LABEL_70;
    case 0x1EuLL:
      v30 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v31 = v30[8];
      if (v31)
      {
        v32 = v30[9];
        v33 = v30[10];
        v35 = v30[11];
        v34 = v30[12];
        sub_1D62A42E0(result);
        v36 = v3;
        if (v3)
        {
          sub_1D5EB1D80(v31, v32, v33, v35, v34);

          sub_1D5CBF568(v34);
        }

        sub_1D5EB1D80(v31, v32, v33, v35, v34);

        sub_1D5CBF568(v34);
      }

      else
      {
        v36 = v3;
      }

      swift_beginAccess();
      v44 = v30[7];

      sub_1D5CF6090(v9, v45, v44);
      if (!v36)
      {
        goto LABEL_70;
      }

    case 0x1FuLL:

      sub_1D62AE39C(v9, v8);

    case 0x20uLL:

      sub_1D62AE81C(v9, v8);

    case 0x21uLL:
      v17 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v18 = v17[7];

      sub_1D5CF6244(v9, v45, v18);
      if (v3)
      {
        goto LABEL_73;
      }

      swift_beginAccess();
      v19 = v17[8];

      sub_1D5CF4060(v9, v45, v19);

      swift_beginAccess();
      v16 = v17[9];
      goto LABEL_65;
    case 0x22uLL:
      v14 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v15 = *(v14 + 48);

      sub_1D5CF6244(v9, v45, v15);
      if (v3)
      {
LABEL_73:
      }

      swift_beginAccess();
      v16 = *(v14 + 32);
LABEL_65:

      sub_1D5CF6090(v9, v45, v16);
LABEL_70:

    case 0x23uLL:
      v10 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v11 = *(v10 + 48);

      sub_1D5CF6090(v9, v45, v11);
      goto LABEL_70;
    case 0x24uLL:
      v12 = *((v7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v13 = v12[4];

      sub_1D5CF5C18(v9, v45, v13);
      if (v3)
      {
      }

      v39 = v12[5];
      if (!v39)
      {
      }

      v40 = v12[6];
      v41 = v12[7];
      v42 = v12[8];
      v43 = v12[9];
      v46 = v12[10];
      sub_1D62A42E0(v9);
      sub_1D5EB1D80(v39, v40, v41, v42, v43);

      sub_1D5CBF568(v43);

    case 0x25uLL:

      sub_1D5CF4F50(v9, v8);

    case 0x26uLL:

      sub_1D62AEC78(v9, v8);

    case 0x27uLL:

      sub_1D62AEEDC(v9, v8);

    case 0x28uLL:

      sub_1D62A9004(v9, v8);

    default:

      sub_1D5CFE0E8(v9, v8);
  }
}

uint64_t sub_1D5CF5C18(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 48); ; i += 5)
    {
      v8 = *i;
      v9 = i[2];
      v23 = i[1];
      v24 = v9;
      v25 = i[3];
      v10 = *i;
      v21 = *(i - 1);
      v22 = v10;
      v18 = v8;
      v19 = v23;
      v20[0] = i[2];
      *(v20 + 15) = *(i + 47);
      v11 = a2[5];
      v17[4] = a2[4];
      v17[5] = v11;
      v17[6] = a2[6];
      v12 = a2[1];
      v17[0] = *a2;
      v17[1] = v12;
      v13 = a2[3];
      v17[2] = a2[2];
      v17[3] = v13;
      sub_1D5CF5D60(&v21, &v14);
      sub_1D5CF5DBC(&v22, &v14);
      sub_1D5CF5E6C(v6, v17);
      if (v3)
      {
        break;
      }

      sub_1D5CF5E18(&v21);
      v14 = v18;
      v15 = v19;
      v16[0] = v20[0];
      *(v16 + 15) = *(v20 + 15);
      result = sub_1D5CF603C(&v14);
      if (!--v4)
      {
        return result;
      }
    }

    sub_1D5CF5E18(&v21);
    v14 = v18;
    v15 = v19;
    v16[0] = v20[0];
    *(v16 + 15) = *(v20 + 15);
    return sub_1D5CF603C(&v14);
  }

  return result;
}

uint64_t sub_1D5CF5E6C(uint64_t result, __int128 *a2)
{
  v4 = a2[5];
  v24[4] = a2[4];
  v24[5] = v4;
  v24[6] = a2[6];
  v5 = a2[1];
  v24[0] = *a2;
  v24[1] = v5;
  v6 = a2[3];
  v24[2] = a2[2];
  v24[3] = v6;
  v7 = ((4 * *(v2 + 50)) | (*(v2 + 48) >> 11) & 3);
  if (v7 >= 6)
  {
    v8 = *v2;
    if (v7 == 6)
    {
      if (v8 >> 62 == 1)
      {
        v12 = v8 & 0x3FFFFFFFFFFFFFFFLL;
        v14 = *(v12 + 16);
        v13 = *(v12 + 24);
        *v23 = v14;
        *&v23[8] = v13;
        return sub_1D62A8874(result, a2);
      }
    }

    else if (v7 == 7)
    {
      if (v8 >> 62 == 3)
      {
        v9 = v8 & 0x3FFFFFFFFFFFFFFFLL;
        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        *v23 = v11;
        *&v23[8] = v10;
        return sub_1D62B3700(result, a2);
      }
    }

    else
    {
      v15 = *(v8 + 32);
      *v23 = *(v8 + 16);
      *&v23[16] = v15;
      *&v23[32] = *(v8 + 48);
      *&v23[43] = *(v8 + 59);
      v16 = *v23;
      v17 = result;
      sub_1D62B6438(v23, &v20, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
      sub_1D6E5F890(v17, v24, v16);
      if (!v3)
      {
        v20 = *&v23[8];
        v21 = *&v23[24];
        v22[0] = *&v23[40];
        *(v22 + 15) = *&v23[55];
        sub_1D62B6438(&v23[8], v18, qword_1EDF2EEF8, type metadata accessor for FormatSwitchValue.DefaultValue);
        sub_1D5CF5E6C(v17, v24);
        v18[0] = v20;
        v18[1] = v21;
        v19[0] = v22[0];
        *(v19 + 15) = *(v22 + 15);
        sub_1D5CF603C(v18);
      }

      return sub_1D62B6514(v23);
    }
  }

  return result;
}

uint64_t sub_1D5CF6090(uint64_t result, __int128 *a2, uint64_t a3)
{
  v13 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = (a3 + 72);
    while (1)
    {
      v14 = v3;
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v15 = v5[3];
      v17 = v5[5];
      v18 = v5[4];
      v9 = v5[6];
      v20 = *(v5 - 5);
      v10 = a2[5];
      v19[4] = a2[4];
      v19[5] = v10;
      v19[6] = a2[6];
      v11 = a2[1];
      v19[0] = *a2;
      v19[1] = v11;
      v12 = a2[3];
      v19[2] = a2[2];
      v19[3] = v12;

      sub_1D5CFDAE4(v6, v7, v8, v15, v18, v17, v9);

      sub_1D5CF4F50(v13, v19);
      if (v16)
      {
        break;
      }

      v5 += 13;

      result = sub_1D5CFDD14(v6, v7, v8, v15, v18, v17, v9);
      v3 = v14 - 1;
      if (v14 == 1)
      {
        return result;
      }
    }

    return sub_1D5CFDD14(v6, v7, v8, v15, v18, v17, v9);
  }

  return result;
}

void sub_1D5CF6244(char **a1, __int128 *a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatOption() - 8;
  MEMORY[0x1EEE9AC00](v7, v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    do
    {
      sub_1D5D054F0(v13, v11, type metadata accessor for FormatOption);
      v19 = *(v11 + 2);
      v15 = a2[5];
      v18[4] = a2[4];
      v18[5] = v15;
      v18[6] = a2[6];
      v16 = a2[1];
      v18[0] = *a2;
      v18[1] = v16;
      v17 = a2[3];
      v18[2] = a2[2];
      v18[3] = v17;

      sub_1D5CF41D4(a1, v18);

      sub_1D5CF6420(v11, type metadata accessor for FormatOption);
      if (v3)
      {
        break;
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1D5CF63C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CF6420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5CF6480(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{

  a3(a1, a2);

  if (!v3)
  {

    a3(a1, a2);
  }

  return result;
}

void sub_1D5CF6528(char **a1, __int128 *a2)
{
  v3 = *v2;
  v4 = *v2 >> 60;
  if (v4 <= 6)
  {
    if (v4 > 3)
    {
      if ((v4 - 5) >= 2)
      {
        sub_1D5D089A8(a1, a2);
      }
    }

    else if ((v4 - 2) >= 2 && v4 != 0)
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if ((v6 & 0x80000000) == 0 && (v6 & 1) == 0)
      {
        sub_1D5CF41D4(a1);
      }
    }

    return;
  }

  if (v4 > 0xE)
  {
    goto LABEL_20;
  }

  if (((1 << v4) & 0x6C00) != 0)
  {
    return;
  }

  if (v4 == 9)
  {
LABEL_22:
    sub_1D5CF6480(a1, a2, sub_1D5CF6528);
    return;
  }

  if (v4 != 12)
  {
LABEL_20:
    if (v4 == 7)
    {

      sub_1D5CF6528(a1, a2);

      return;
    }

    goto LABEL_22;
  }

  v9 = v3 & 0xFFFFFFFFFFFFFFFLL;
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  v12 = *(v9 + 48);
  v13 = *(v9 + 56);
  sub_1D6057D14(v10, v11, v12, *(v9 + 56));
  if (v13 < 0)
  {
    sub_1D5CFCC3C(a1, a2);
  }

  sub_1D6057D74(v10, v11, v12, v13);
}

unint64_t sub_1D5CF66F0(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v27[4] = a2[4];
  v27[5] = v7;
  v27[6] = a2[6];
  v8 = a2[1];
  v27[0] = *a2;
  v27[1] = v8;
  v9 = a2[3];
  v27[2] = a2[2];
  v27[3] = v9;
  v22 = v2[6];
  sub_1D5C82CD8(v22);
  sub_1D5CF9048(a1, a2);
  if (v3)
  {
    return sub_1D5C92A8C(v22);
  }

  sub_1D5C92A8C(v22);
  swift_beginAccess();
  v11 = v2[8];

  sub_1D5CF9258(a1, v27, v11);

  swift_beginAccess();
  v12 = v4[9];

  sub_1D5CF4060(a1, v27, v12);

  swift_beginAccess();
  v13 = v4[11];

  sub_1D5CF6244(a1, v27, v13);

  swift_beginAccess();
  v14 = v4[12];
  if (v14 >> 62)
  {
LABEL_20:
    v15 = sub_1D7263BFC();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    v16 = 0;
    v28 = v14 & 0xC000000000000001;
    do
    {
      if (v28)
      {
        v17 = MEMORY[0x1DA6FB460](v16, v14);
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v17 = *(v14 + 8 * v16 + 32);

        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_16;
        }
      }

      swift_beginAccess();
      v19 = *(v17 + 40);

      sub_1D5CF6244(a1, v27, v19);

      swift_beginAccess();
      v20 = *(v17 + 32);

      sub_1D5CF6090(a1, v27, v20);

      ++v16;
    }

    while (v18 != v15);
  }

  v21 = v4[15];
  if (v21)
  {
    v23 = v4[16];
    v24 = v4[17];
    v25 = v4[18];
    v26 = v4[19];
    sub_1D62A42E0(a1);
    sub_1D5EB1D80(v21, v23, v24, v25, v26);

    sub_1D5CBF568(v26);
  }

  return result;
}

uint64_t sub_1D5CF6AB8(uint64_t result, __int128 *a2)
{
  v3 = a2[5];
  v20[4] = a2[4];
  v20[5] = v3;
  v20[6] = a2[6];
  v4 = a2[1];
  v20[0] = *a2;
  v20[1] = v4;
  v5 = a2[3];
  v20[2] = a2[2];
  v20[3] = v5;
  v6 = *v2;
  if (*(v2 + 8))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*v2 >> 60) & 3 | v7;
  if (v8 <= 2)
  {
    if (!v8)
    {
      if (v6 >> 62 != 1)
      {
        return result;
      }

      v10 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
      goto LABEL_21;
    }

LABEL_10:
    if (v6 >> 62 != 1)
    {
      return result;
    }

    v10 = (v6 & 0xFFFFFFFFFFFFFFFLL);
LABEL_21:
    v16 = v10[2];
    v17 = v10[3];
    v18 = v10[4];
    v19 = result;

    sub_1D5CF6C3C(v19, v20, v16, v17, v18);
    goto LABEL_22;
  }

  if (v8 <= 4)
  {
    if (v8 != 3)
    {
      if (v6 >> 62 != 1)
      {
        return result;
      }

      v9 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if (v8 == 5 && v6 >> 62 == 1)
  {
    v9 = (v6 & 0xFFFFFFFFFFFFFFFLL);
LABEL_18:
    v12 = v9[2];
    v13 = v9[3];
    v14 = v9[4];
    v15 = result;

    sub_1D5CF6C3C(v15, v20, v12, v13, v14);
LABEL_22:
  }

  return result;
}

uint64_t sub_1D5CF6C3C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D5CF6D20(a1, a2);
  if (!v5)
  {
    result = sub_1D5CF6E18(a1, a2, a4);
    if (a5 >> 62 == 1)
    {
      v11 = a5 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = *(v11 + 32);

      sub_1D5CF6C3C(a1, a2, v12, v13, v14);
    }
  }

  return result;
}

uint64_t sub_1D5CF6D20(uint64_t result, __int128 *a2)
{
  if (*(v2 + 50))
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFFF8 | (*(v2 + 48) >> 11) & 7;
  if (v4 > 9)
  {
    return sub_1D5D06CC8(result, a2);
  }

  if (((1 << v4) & 0x3B6) != 0)
  {
    return result;
  }

  if (v4 != 3)
  {
    if (v4 == 6)
    {
      return sub_1D62A7F6C(result, a2);
    }

    return sub_1D5D06CC8(result, a2);
  }

  if (*(v2 + 16) == 1 && (*v2 & 0xF000000000000007) != 0xF000000000000007)
  {
    v6 = result;

    sub_1D5CFEE30(v6, a2);
  }

  return result;
}

uint64_t sub_1D5CF6E18(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return result;
  }

  v69 = result;
  for (i = (a3 + 56); ; i += 4)
  {
    v7 = *i;
    if (*i >> 62 != 1)
    {
      goto LABEL_5;
    }

    v8 = *(i - 3);
    v9 = *(i - 2);
    v10 = *(i - 8);
    v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v82 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 40);
    if (*(v11 + 66))
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 & 0xFFFFFFF8 | (*(v11 + 64) >> 11) & 7;
    v71 = v8;
    v72 = v9;
    if (v17 > 4)
    {
      if (v17 <= 6)
      {
        if (v17 == 5)
        {
          goto LABEL_39;
        }

        if (!(v15 >> 6) || v15 >> 6 == 1)
        {
          goto LABEL_28;
        }

        v21 = v15 & 0x3F;
        if (v21 <= 1)
        {
          goto LABEL_69;
        }

LABEL_24:
        v18 = v82;
LABEL_71:
        sub_1D5D03180(v8, v9, v10);
      }

      else
      {
        if (v17 != 7)
        {
          v18 = v82;
          v19 = v69;
          sub_1D5D03180(v8, v9, v10);

LABEL_32:

          goto LABEL_41;
        }

LABEL_39:
        sub_1D5D03180(v8, v9, v10);

        v18 = v82;
      }

      v19 = v69;
      goto LABEL_41;
    }

    if (v17 > 1)
    {
      if (v17 != 3)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v17)
    {
      goto LABEL_39;
    }

    v20 = (v15 >> 3) & 7;
    if (v20 > 1)
    {
      break;
    }

    if (v20 || *(v11 + 32) > 1u)
    {
      goto LABEL_39;
    }

    v19 = v69;
    if (!*(v11 + 32) || (~v13 & 0xF000000000000007) == 0)
    {
LABEL_31:
      sub_1D5D03180(v8, v9, v10);

      v18 = v82;
      goto LABEL_32;
    }

    *&v80 = *(v11 + 16);
    v22 = a2[5];
    v77 = a2[4];
    v78 = v22;
    v79 = a2[6];
    v23 = a2[1];
    v73 = *a2;
    v74 = v23;
    v24 = a2[3];
    v75 = a2[2];
    v76 = v24;
    sub_1D5D03180(v8, v9, v10);

    sub_1D5CFCFAC(v13);
    sub_1D5CFEE30(v69, &v73);
    if (v4)
    {
      goto LABEL_92;
    }

LABEL_77:

    v18 = v82;
LABEL_41:
    sub_1D5CF6E18(v19, a2, v18);
    if (v4)
    {

      goto LABEL_90;
    }

    if (v12 >> 62 == 1)
    {
      v68 = v10;
      v25 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      v26 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v28 = *(v25 + 32);
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);
      v31 = *(v26 + 32);
      v32 = *(v26 + 40);
      v33 = *(v26 + 64);
      if (*(v26 + 66))
      {
        v34 = 8;
      }

      else
      {
        v34 = 0;
      }

      v35 = v34 & 0xFFFFFFF8 | (v33 >> 11) & 7;
      if (v35 <= 3)
      {
        if ((v35 - 1) < 2)
        {
          goto LABEL_86;
        }

        if (v35)
        {
          goto LABEL_61;
        }

        v41 = (v32 >> 3) & 7;
        if (v41 > 1)
        {
          if (v41 != 2 && v41 != 3)
          {
            if (v32 >> 6 && v32 >> 6 != 1)
            {
              sub_1D62A5570(v19, a2, v29, v30, v31, v32 & 7);
            }

            else
            {
              *&v80 = v29;
              *(&v80 + 1) = v30;
              v81[0] = v31;
              v54 = a2[5];
              v77 = a2[4];
              v78 = v54;
              v79 = a2[6];
              v55 = a2[1];
              v73 = *a2;
              v74 = v55;
              v56 = a2[3];
              v75 = a2[2];
              v76 = v56;
              sub_1D62A7EF0(v19, &v73);
            }

            goto LABEL_86;
          }

          goto LABEL_61;
        }

        v37 = v41 == 0;
        v42 = v29 & 0xF000000000000007;
        v43 = v37 && v31 == 1;
      }

      else
      {
        v36 = *(v26 + 56);
        if (((1 << v35) & 0x330) != 0)
        {
          goto LABEL_86;
        }

        if (v35 != 6)
        {
          if ((v33 & 0x80000000) != 0 && ((v33 >> 7) & 0xE | (v33 >> 3) & 1) == 2)
          {
            *&v80 = v29;
            *(&v80 + 1) = v30;
            *&v81[8] = v32;
            *v81 = v31;
            *&v81[24] = v36;
            v81[32] = v33 & 0xF7;
            v48 = a2[5];
            v77 = a2[4];
            v78 = v48;
            v79 = a2[6];
            v49 = a2[1];
            v73 = *a2;
            v74 = v49;
            v50 = a2[3];
            v75 = a2[2];
            v76 = v50;
            nullsub_1(v19);
          }

          goto LABEL_86;
        }

        if (v32 >> 6 && v32 >> 6 != 1)
        {
          v37 = (v32 & 0x3F) != 1 || (v30 & 0xF000000000000007) == 0xF000000000000007;
          if (!v37)
          {
            *&v80 = v30;
            v38 = a2[5];
            v77 = a2[4];
            v78 = v38;
            v79 = a2[6];
            v39 = a2[1];
            v73 = *a2;
            v74 = v39;
            v40 = a2[3];
            v75 = a2[2];
            v76 = v40;
            goto LABEL_67;
          }

          goto LABEL_86;
        }

LABEL_61:
        v42 = v29 & 0xF000000000000007;
        v43 = v31 == 1;
      }

      if (v43 && v42 != 0xF000000000000007)
      {
        *&v80 = v29;
        v45 = a2[5];
        v77 = a2[4];
        v78 = v45;
        v79 = a2[6];
        v46 = a2[1];
        v73 = *a2;
        v74 = v46;
        v47 = a2[3];
        v75 = a2[2];
        v76 = v47;
LABEL_67:

        sub_1D5CFEE30(v19, &v73);
      }

LABEL_86:
      sub_1D5CF6E18(v19, a2, v27);
      if (v28 >> 62 == 1)
      {
        v60 = v28 & 0x3FFFFFFFFFFFFFFFLL;
        v61 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v62 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v63 = *(v60 + 32);
        v64 = *(v61 + 32);
        v80 = *(v61 + 16);
        *v81 = v64;
        *&v81[16] = *(v61 + 48);
        *&v81[31] = *(v61 + 63);
        v65 = a2[5];
        v77 = a2[4];
        v78 = v65;
        v79 = a2[6];
        v66 = a2[1];
        v73 = *a2;
        v74 = v66;
        v67 = a2[3];
        v75 = a2[2];
        v76 = v67;
        sub_1D5CF6D20(v19, &v73);
        sub_1D5CF6E18(v19, a2, v62);
        sub_1D62A8028(v19, a2, v63);
        v10 = v68;

        v4 = 0;
      }

      else
      {

        v10 = v68;
      }

      goto LABEL_4;
    }

LABEL_4:
    sub_1D5D07BA8(v71, v72, v10);

LABEL_5:
    if (!--v5)
    {
      return result;
    }
  }

  if (v20 == 2 || v20 == 3 || !(v15 >> 6) || v15 >> 6 == 1)
  {
LABEL_28:
    if (*(v11 + 32) > 1u)
    {
      goto LABEL_39;
    }

    v19 = v69;
    if (!*(v11 + 32) || (~v13 & 0xF000000000000007) == 0)
    {
      goto LABEL_31;
    }

    *&v80 = *(v11 + 16);
    v51 = a2[5];
    v77 = a2[4];
    v78 = v51;
    v79 = a2[6];
    v52 = a2[1];
    v73 = *a2;
    v74 = v52;
    v53 = a2[3];
    v75 = a2[2];
    v76 = v53;
    sub_1D5D03180(v8, v9, v10);

    sub_1D5CFCFAC(v13);
    goto LABEL_76;
  }

  v21 = v15 & 7;
  if (v21 > 1)
  {
    goto LABEL_24;
  }

LABEL_69:
  v18 = v82;
  if (!v21 || (~v14 & 0xF000000000000007) == 0)
  {
    goto LABEL_71;
  }

  *&v80 = *(v11 + 24);
  v57 = a2[5];
  v77 = a2[4];
  v78 = v57;
  v79 = a2[6];
  v58 = a2[1];
  v73 = *a2;
  v74 = v58;
  v59 = a2[3];
  v75 = a2[2];
  v76 = v59;
  sub_1D5D03180(v8, v9, v10);

  sub_1D5CFCFAC(v14);
  v19 = v69;
LABEL_76:
  sub_1D5CFEE30(v19, &v73);
  if (!v4)
  {
    goto LABEL_77;
  }

LABEL_92:

LABEL_90:

  sub_1D5D07BA8(v71, v72, v10);
}

unint64_t sub_1D5CF7734(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  v9 = *(v2 + 32);
  v11 = *(v2 + 40);
  sub_1D5D07778(v9, v11);
  sub_1D5CF6AB8(a1, a2);
  if (v3)
  {
    return sub_1D5D06D9C(v9, v11);
  }

  sub_1D5D06D9C(v9, v11);
  result = swift_beginAccess();
  if ((*(v2 + 98) >> 1) <= 0x7Eu)
  {
    v7 = *(v2 + 96) | (*(v2 + 98) << 16);
    v10 = *(v2 + 48);
    v12 = *(v2 + 56);
    v14 = *(v2 + 64);
    v16 = *(v2 + 72);
    v18 = *(v2 + 80);
    v20 = *(v2 + 88);
    sub_1D5D0A5BC(v10, v12, v14, v16, v18, v20, v7);
    sub_1D5D0A61C(a1, a2);
    result = sub_1D5D0A678(v10, v12, v14, v16, v18, v20, v7);
  }

  v8 = *(v2 + 104);
  if (v8)
  {
    v13 = *(v2 + 112);
    v15 = *(v2 + 120);
    v17 = *(v2 + 128);
    v19 = *(v2 + 136);
    sub_1D62A42E0(a1);
    sub_1D5EB1D80(v8, v13, v15, v17, v19);

    sub_1D5CBF568(v19);
  }

  return result;
}

uint64_t FormatPackageInventory.resources(context:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5C2C40C(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = (v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[5];
  v45[4] = a1[4];
  v45[5] = v11;
  v45[6] = a1[6];
  v12 = a1[1];
  v45[0] = *a1;
  v45[1] = v12;
  v13 = a1[3];
  v45[2] = a1[2];
  v45[3] = v13;
  *&v43 = MEMORY[0x1E69E7CC0];
  *(&v43 + 1) = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CD0];
  v14 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
  swift_beginAccess();
  v15 = *(v2 + v14);

  sub_1D5CF7F4C(&v43, v45, v15);
  if (v3)
  {
  }

  else
  {
    v46 = a2;

    v16 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
    swift_beginAccess();
    v17 = *v16;

    sub_1D5CF3D6C(&v43, v45, v17);

    v18 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items);
    swift_beginAccess();
    v19 = *v18;

    sub_1D5CFBB04(&v43, v45, v19);

    v21 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets);
    swift_beginAccess();
    v23 = *v21;
    v22 = v21[1];
    v24 = *(*v21 + 16);

    v41[1] = v22;

    v42 = v24;
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = v23;
        sub_1D5D054F0(v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v10, sub_1D5C2C40C);
        v27 = *v10;
        swift_beginAccess();
        v28 = v27[9];

        sub_1D5CF6244(&v43, v45, v28);

        swift_beginAccess();
        v29 = v27[11];

        sub_1D5CFD3E0(&v43, v45, v29);

        swift_beginAccess();
        v30 = v27[8];

        sub_1D5CF6090(&v43, v45, v30);
        ++v25;

        result = sub_1D5CF6420(v10, sub_1D5C2C40C);
        v23 = v26;
        if (v42 == v25)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      v31 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries);
      swift_beginAccess();
      v32 = *v31;

      sub_1D5CFBE18(&v43, v45, v32);

      v33 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
      swift_beginAccess();
      v34 = *v33;

      sub_1D5CFC228(&v43, v45, v34);

      v35 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
      swift_beginAccess();
      v36 = *v35;

      sub_1D5D04DD4(&v43, v45, v36);

      v37 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
      swift_beginAccess();
      v38 = *(v2 + v37);

      sub_1D5CF6244(&v43, v45, v38);

      v39 = v44;
      v40 = v46;
      *v46 = v43;
      *(v40 + 2) = v39;
    }
  }

  return result;
}

void sub_1D5CF7F4C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  sub_1D5C2B0C4(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v27 - v10;
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v28 = *(v9 + 72);
    v29 = a1;
    while (1)
    {
      v41 = v12;
      v30 = v13;
      sub_1D5CF8338(v13, v11, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
      v14 = *(v11 + 10);
      v15 = *(v11 + 12);
      v16 = v11[106];
      v17 = v11;
      v18 = *(v11 + 52);
      v31 = *(v11 + 6);
      v19 = a2[5];
      v38 = a2[4];
      v39 = v19;
      v40 = a2[6];
      v20 = a2[1];
      v34 = *a2;
      v35 = v20;
      v21 = a2[3];
      v36 = a2[2];
      v37 = v21;

      v22 = v29;
      sub_1D5CF8944(v29, &v34);

      if (v3)
      {
        break;
      }

      sub_1D5CF6244(v22, a2, v14);

      v23 = v18 | (v16 << 16);
      v11 = v17;
      if (BYTE2(v23) != 255)
      {
        v31 = v15;
        v32 = v18;
        v33 = (v18 | (v16 << 16)) >> 16;
        v24 = a2[5];
        v38 = a2[4];
        v39 = v24;
        v40 = a2[6];
        v25 = a2[1];
        v34 = *a2;
        v35 = v25;
        v26 = a2[3];
        v36 = a2[2];
        v37 = v26;
        sub_1D6E78C48(v15, v23, SBYTE2(v23), sub_1D610CA28, sub_1D610CA5C);
        sub_1D62A8A9C();
        sub_1D6E78C48(v31, v32, v33, sub_1D60CF6A8, sub_1D60CF6DC);
      }

      sub_1D5CF9D88(v17, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
      v13 = v30 + v28;
      v12 = v41 - 1;
      if (v41 == 1)
      {
        return;
      }
    }

    sub_1D5CF9D88(v17, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  }
}

uint64_t sub_1D5CF82C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C4BC40(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D5CF8338(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C2B0C4(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D5CF83AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D7199850(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_1D5CF8420(unint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v21[4] = a2[4];
  v21[5] = v5;
  v21[6] = a2[6];
  v6 = a2[1];
  v21[0] = *a2;
  v21[1] = v6;
  v7 = a2[3];
  v21[2] = a2[2];
  v21[3] = v7;
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D5CF8784(a1, v21, v8);
  if (v3)
  {
  }

  swift_beginAccess();
  v10 = *(v2 + 64);
  if (v10)
  {

    sub_1D6E66D84(a1, v21, v10);
  }

  if ((~*(v2 + 72) & 0xF000000000000007) != 0)
  {
    *&v19[0] = *(v2 + 72);

    sub_1D5D0491C(a1, v21);
  }

  v11 = *(v2 + 80);
  if (v11)
  {
    sub_1D5D0AE64(a1, v21, v11);
  }

  result = *(v2 + 120);
  if (result >= 3)
  {
    if (result != 3)
    {
      v12 = *(result + 16);
      v13 = *(result + 24);
      v14 = *(v2 + 120);
      sub_1D5D0AF9C(result);
      sub_1D5D0AFBC(v12);
      sub_1D5D0AFBC(v13);
      sub_1D5D0AFDC(a1, v21, v12, v13);
      sub_1D5D0AFCC(v12);
      sub_1D5D0AFCC(v13);
      result = sub_1D5D0AFAC(v14);
    }
  }

  else
  {
    result = sub_1D5D0AFAC(result);
  }

  v20 = *(v2 + 224);
  v15 = *(v2 + 192);
  v19[2] = *(v2 + 176);
  v19[3] = v15;
  v19[4] = *(v2 + 208);
  v16 = *(v2 + 160);
  v19[0] = *(v2 + 144);
  v19[1] = v16;
  if (v20 != 254)
  {
    swift_retain_n();
    sub_1D5CF9A24(a1, v21);

    result = sub_1D5D0ABCC(v19, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  if ((~*(v2 + 232) & 0xF000000000000007) != 0)
  {

    sub_1D5CF9A24(a1, v21);
  }

  v18 = *(v2 + 248);
  v17 = *(v2 + 256);
  if (v18)
  {
    if (v18 == 1)
    {
      return result;
    }

    sub_1D62B5D88(v18);

    sub_1D6E5FB2C(a1, v21, v18);
  }

  else
  {
  }

  if (v17)
  {

    sub_1D6E5FB2C(a1, v21, v17);
  }

  return sub_1D62B5D44(v18);
}

uint64_t sub_1D5CF8784(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = a3 + 32; ; i += 216)
    {
      v8 = *(i + 176);
      v9 = *(i + 144);
      v61 = *(i + 160);
      v62 = v8;
      v10 = *(i + 176);
      v63 = *(i + 192);
      v11 = *(i + 112);
      v12 = *(i + 80);
      v57 = *(i + 96);
      v58 = v11;
      v13 = *(i + 112);
      v14 = *(i + 144);
      v59 = *(i + 128);
      v60 = v14;
      v15 = *(i + 48);
      v16 = *(i + 16);
      v53 = *(i + 32);
      v54 = v15;
      v17 = *(i + 48);
      v18 = *(i + 80);
      v55 = *(i + 64);
      v56 = v18;
      v19 = *(i + 16);
      v52[0] = *i;
      v52[1] = v19;
      v48 = v61;
      v49 = v10;
      v50 = *(i + 192);
      v44 = v57;
      v45 = v13;
      v46 = v59;
      v47 = v9;
      v40 = v53;
      v41 = v17;
      v42 = v55;
      v43 = v12;
      v64 = *(i + 208);
      v51 = *(i + 208);
      v38 = v52[0];
      v39 = v16;
      v20 = a2[5];
      v37[4] = a2[4];
      v37[5] = v20;
      v37[6] = a2[6];
      v21 = a2[1];
      v37[0] = *a2;
      v37[1] = v21;
      v22 = a2[3];
      v37[2] = a2[2];
      v37[3] = v22;
      sub_1D5D0B0E4(v52, &v23);
      sub_1D5CF8D1C(v6, v37);
      if (v3)
      {
        break;
      }

      v33 = v48;
      v34 = v49;
      v35 = v50;
      v36 = v51;
      v29 = v44;
      v30 = v45;
      v31 = v46;
      v32 = v47;
      v25 = v40;
      v26 = v41;
      v27 = v42;
      v28 = v43;
      v23 = v38;
      v24 = v39;
      result = sub_1D5D0B1AC(&v23);
      if (!--v4)
      {
        return result;
      }
    }

    v33 = v48;
    v34 = v49;
    v35 = v50;
    v36 = v51;
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v32 = v47;
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v28 = v43;
    v23 = v38;
    v24 = v39;
    return sub_1D5D0B1AC(&v23);
  }

  return result;
}

uint64_t sub_1D5CF8944(uint64_t result, __int128 *a2)
{
  v4 = a2[5];
  v47[4] = a2[4];
  v47[5] = v4;
  v47[6] = a2[6];
  v5 = a2[1];
  v47[0] = *a2;
  v47[1] = v5;
  v6 = a2[3];
  v7 = *v2;
  v8 = *v2 >> 60;
  v47[2] = a2[2];
  v47[3] = v6;
  if (v8 <= 3)
  {
    if (v8 > 1)
    {
      v14 = result;
      v15 = v7 & 0xFFFFFFFFFFFFFFFLL;
      if (v8 == 2)
      {
        v16 = *(v15 + 96);
        v17 = *(v15 + 112);
        v18 = *(v15 + 128);
        v41 = *(v15 + 80);
        v42 = v16;
        v43 = v17;
        v44 = v18;
        v19 = *(v15 + 32);
        v37 = *(v15 + 16);
        v38 = v19;
        v20 = *(v15 + 64);
        v39 = *(v15 + 48);
        v40 = v20;
        v21 = v18;
        sub_1D60865E4(&v37, &v36);
        sub_1D5CF8C68(v14, v47, v21);
        return sub_1D6086640(&v37);
      }

      else
      {
        *&v37 = *(v15 + 24);

        sub_1D62AFC20(v14, a2);
      }
    }

    else if (v8)
    {
      v31 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v32 = a2[5];
      v41 = a2[4];
      v42 = v32;
      v43 = a2[6];
      v33 = a2[1];
      v37 = *a2;
      v38 = v33;
      v34 = a2[3];
      v39 = a2[2];
      v40 = v34;
      return sub_1D5CF8C68(result, &v37, v31);
    }

    else
    {
      *&v37 = *(v7 + 16);
      return sub_1D5CF9A24(result, a2);
    }
  }

  else if (v8 <= 5)
  {
    v22 = v7 & 0xFFFFFFFFFFFFFFFLL;
    if (v8 == 4)
    {
      v23 = *(v22 + 128);
      v43 = *(v22 + 112);
      v44 = v23;
      v45 = *(v22 + 144);
      v46 = *(v22 + 160);
      v24 = *(v22 + 64);
      v39 = *(v22 + 48);
      v40 = v24;
      v25 = *(v22 + 96);
      v41 = *(v22 + 80);
      v42 = v25;
      v26 = *(v22 + 32);
      v37 = *(v22 + 16);
      v38 = v26;
      return sub_1D62A66D4(result, a2);
    }

    else
    {
      *&v37 = *(v22 + 16);
      return sub_1D5D03C64(result, a2);
    }
  }

  else
  {
    if (v8 == 6)
    {
      v27 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v28 = *(v27 + 24);
      *&v37 = *(v27 + 16);
      v29 = result;
      swift_retain_n();

      sub_1D5CF8944(v29, a2);
      if (v3)
      {
        goto LABEL_15;
      }

      sub_1D6E705A0(v29, v47, v28);
    }

    else
    {
      if (v8 != 7)
      {
        return result;
      }

      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL);
      v10 = v9[3];
      v11 = v9[4];
      *&v37 = v9[2];
      v12 = result;

      swift_retain_n();

      sub_1D5CF8944(v12, a2);
      if (v3)
      {

LABEL_15:
      }

      sub_1D6E705A0(v12, v47, v10);
      *&v37 = v11;

      sub_1D5CF8944(v12, v47);
    }
  }
}

uint64_t sub_1D5CF8C68(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = (a3 + 32);
    v8 = v4 - 1;
    do
    {
      v9 = *v7++;
      v10 = v8;
      v15 = v9;
      v11 = a2[5];
      v14[4] = a2[4];
      v14[5] = v11;
      v14[6] = a2[6];
      v12 = a2[1];
      v14[0] = *a2;
      v14[1] = v12;
      v13 = a2[3];
      v14[2] = a2[2];
      v14[3] = v13;

      sub_1D5CF9A24(v6, v14);

      if (v3)
      {
        break;
      }

      v8 = v10 - 1;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1D5CF8D1C(uint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v29[4] = a2[4];
  v29[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v29[0] = *a2;
  v29[1] = v7;
  v8 = a2[3];
  v29[2] = a2[2];
  v29[3] = v8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 56);
  v12 = *(v2 + 72);
  v29[6] = v6;
  v30[0] = v11;
  v13 = *(v2 + 88);
  v14 = *(v2 + 104);
  v15 = *(v2 + 120);
  v31 = *(v2 + 136);
  v30[3] = v14;
  v30[4] = v15;
  v30[1] = v12;
  v30[2] = v13;
  v16 = *(v2 + 144);
  v17 = *(v2 + 176);
  v19 = *(v2 + 192);
  v18 = *(v2 + 200);
  v20 = *(v2 + 208);
  if ((~v9 & 0xF000000000000007) != 0)
  {
    v32 = *(v2 + 144);
    v21 = v17;
    v22 = v19;
    v23 = v18;
    v24 = v20;

    sub_1D5D0491C(v4, a2);
    if (v3)
    {
    }

    v20 = v24;
    v18 = v23;
    v19 = v22;
    v17 = v21;
    v16 = v32;
  }

  if (!v10 || (result = sub_1D5D0AE64(v4, v29, v10), !v3))
  {
    if (v31 != 254)
    {
      swift_retain_n();
      sub_1D5CF9A24(v4, v29);
      if (v3)
      {

        return sub_1D5D0ABCC(v30, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      result = sub_1D5D0ABCC(v30, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if ((~v16 & 0xF000000000000007) == 0 || (, sub_1D5CF9A24(v4, v29), result = , !v3))
    {
      if (v17 >= 3)
      {
        if (v17 != 3)
        {
          v26 = *(v17 + 16);
          v27 = *(v17 + 24);
          sub_1D5D0AF9C(v17);
          sub_1D5D0AFBC(v26);
          sub_1D5D0AFBC(v27);
          sub_1D5D0AFDC(v4, v29, v26, v27);
          sub_1D5D0AFCC(v26);
          sub_1D5D0AFCC(v27);
          result = sub_1D5D0AFAC(v17);
          if (v3)
          {
            return result;
          }
        }
      }

      else
      {
        result = sub_1D5D0AFAC(v17);
      }

      if (!v19 || (result = sub_1D6E66D84(v4, v29, v19), !v3))
      {
        if (!v18)
        {

          goto LABEL_25;
        }

        if (v18 != 1)
        {
          sub_1D62B5D88(v18);

          sub_1D6E5FB2C(v4, v29, v18);

          if (v3)
          {
            v28 = v18;
            return sub_1D62B5D44(v28);
          }

LABEL_25:
          if (v20)
          {

            sub_1D6E5FB2C(v4, v29, v20);
          }

          v28 = v18;
          return sub_1D62B5D44(v28);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5CF9048(uint64_t result, __int128 *a2)
{
  v4 = a2[5];
  v15[4] = a2[4];
  v15[5] = v4;
  v15[6] = a2[6];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  v6 = a2[3];
  v15[2] = a2[2];
  v15[3] = v6;
  v7 = *v2;
  v8 = (*v2 >> 59) & 0x1E | (*v2 >> 2) & 1;
  if (v8 <= 10)
  {
    if (v8 <= 2)
    {
      if (v8 >= 2)
      {
        return sub_1D5D09F0C();
      }
    }

    else if ((v8 - 3) >= 6 && v8 == 9)
    {
      if (*((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        v9 = result;

        sub_1D5CFCC3C(v9, a2);
      }

      else
      {
      }
    }
  }

  else if (v8 > 14 && (v8 - 17) >= 6)
  {
    v11 = v7 & 0xFFFFFFFFFFFFFFBLL;
    if (v8 == 15)
    {
      return sub_1D62B17B0(result, a2);
    }

    else
    {
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v14 = result;

      sub_1D5C82CD8(v12);
      sub_1D5D07C10(v14, v15, v13);
      if (!v3)
      {
        sub_1D5C82CD8(v12);
        sub_1D5CF9048(v14, v15);
        sub_1D5C92A8C(v12);
      }

      return sub_1D5C92A8C(v12);
    }
  }

  return result;
}

unint64_t sub_1D5CF9258(unint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = (a3 + 32);
    v8 = v4 - 1;
    do
    {
      v9 = *v7++;
      v10 = v8;
      v15 = v9;
      v11 = a2[5];
      v14[4] = a2[4];
      v14[5] = v11;
      v14[6] = a2[6];
      v12 = a2[1];
      v14[0] = *a2;
      v14[1] = v12;
      v13 = a2[3];
      v14[2] = a2[2];
      v14[3] = v13;
      sub_1D5CFEC98(v9);
      sub_1D5CFEABC(v6, v14);
      result = sub_1D5CFED88(v15);
      if (v3)
      {
        break;
      }

      v8 = v10 - 1;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1D5CF9308(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, __int128 *, uint64_t), void (*a7)(uint64_t, __int128 *))
{
  result = sub_1D5CF6D20(a1, a2);
  if (!v7)
  {
    a6(a1, a2, a4);

    a7(a1, a2);
  }

  return result;
}

uint64_t sub_1D5CF93C8(uint64_t result, _OWORD *a2, uint64_t a3, void (*a4)(uint64_t, _OWORD *))
{
  v14 = result;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 56);
    while (1)
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 8);
      v17 = *v7;
      v11 = a2[5];
      v16[4] = a2[4];
      v16[5] = v11;
      v16[6] = a2[6];
      v12 = a2[1];
      v16[0] = *a2;
      v16[1] = v12;
      v13 = a2[3];
      v16[2] = a2[2];
      v16[3] = v13;
      sub_1D5D03180(v8, v9, v10);
      swift_retain_n();
      a4(v14, v16);
      if (v4)
      {
        break;
      }

      v7 += 4;
      sub_1D5D07BA8(v8, v9, v10);

      if (!--v5)
      {
        return result;
      }
    }

    sub_1D5D07BA8(v8, v9, v10);
  }

  return result;
}

void sub_1D5CF94EC(unint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v69[4] = a2[4];
  v69[5] = v5;
  v69[6] = a2[6];
  v6 = a2[1];
  v69[0] = *a2;
  v69[1] = v6;
  v7 = a2[3];
  v8 = *v2;
  v9 = *v2 >> 60;
  v69[2] = a2[2];
  v69[3] = v7;
  if (v9 > 4)
  {
    if (v9 <= 6)
    {
      v25 = v8 & 0xFFFFFFFFFFFFFFFLL;
      if (v9 != 5)
      {
        v49 = *(v25 + 16);
        v50 = *(v25 + 24);

        sub_1D5D0AD60(a1, v69, v49, v50, sub_1D5CF94EC);

        goto LABEL_39;
      }

      v26 = *(v25 + 16);

      sub_1D6E73DA4(a1, v69, v26);
      if (v3)
      {
      }

      else
      {

        sub_1D5CF94EC(a1, v69);
      }
    }

    else
    {
      if (v9 != 7)
      {
        if (v9 != 8)
        {
          return;
        }

        v14 = v8 & 0xFFFFFFFFFFFFFFFLL;
        v15 = *(v14 + 24);
        *&v54 = *(v14 + 16);
        swift_retain_n();

        sub_1D5CF94EC(a1, a2);
        if (v3)
        {

          return;
        }

        sub_1D6E73D78(a1, v69, v15);

        goto LABEL_39;
      }

      *&v54 = *((v8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      sub_1D5CF94EC(a1, a2);

      if (!v3)
      {
        sub_1D5CF8420(a1, a2);
      }
    }
  }

  else if (v9 <= 1)
  {
    if (v9)
    {
      v46 = v8 & 0xFFFFFFFFFFFFFFFLL;
      v47 = *(v46 + 80);
      v57 = *(v46 + 64);
      v58 = v47;
      v59 = *(v46 + 96);
      *v60 = *(v46 + 112);
      v48 = *(v46 + 32);
      v54 = *(v46 + 16);
      v55 = v48;
      v56 = *(v46 + 48);
      sub_1D5D07EBC(a1, a2);
    }

    else
    {
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      v20 = *(v8 + 32);
      v19 = *(v8 + 40);
      v21 = *(v8 + 48);
      v22 = *(v8 + 56);
      v23 = (v22 >> 1) & 0xF;
      if (v23 <= 3)
      {
        if (v23 >= 2)
        {
          if (v23 == 2)
          {
            *&v54 = v18;
            *(&v54 + 1) = v17;
            *&v55 = v20;
            *(&v55 + 1) = v19;
            *&v56 = v21;
            BYTE8(v56) = v22 & 0xE1;
            sub_1D62A98C8(a1, a2);
          }

          else
          {
            *&v61 = v18;
            *(&v61 + 1) = v17;
            *&v62 = v20;
            *(&v62 + 1) = v19;
            v51 = a2[5];
            v58 = a2[4];
            v59 = v51;
            *v60 = a2[6];
            v52 = a2[1];
            v54 = *a2;
            v55 = v52;
            v53 = a2[3];
            v56 = a2[2];
            v57 = v53;
            sub_1D6AC6E60(a1, &v54);
          }
        }
      }

      else if (v23 - 4 >= 4 && v23 == 8)
      {
        *&v54 = v18;
        *(&v54 + 1) = v17;
        *&v55 = v20;
        *(&v55 + 1) = v19;
        *&v56 = v21;
        BYTE8(v56) = v22 & 1;
        sub_1D62A99A4(a1, a2);
      }
    }
  }

  else if (v9 == 2)
  {
    v27 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v28 = *(v27 + 64);
    if (v28 != 255)
    {
      v30 = *(v27 + 48);
      v29 = *(v27 + 56);
      sub_1D5E433CC(v30, v29, *(v27 + 64));
      sub_1D5E43440(v30, v29, v28);
    }
  }

  else
  {
    if (v9 == 3)
    {
      v10 = (v8 & 0xFFFFFFFFFFFFFFFLL);
      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];

      sub_1D5CF9308(a1, v69, v11, v12, v13, sub_1D5D0A6D8, sub_1D5CF94EC);

LABEL_39:

      return;
    }

    v32 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v33 = *(v32 + 96);
    v65 = *(v32 + 80);
    v66 = v33;
    v67 = *(v32 + 112);
    v68 = *(v32 + 128);
    v34 = *(v32 + 32);
    v61 = *(v32 + 16);
    v62 = v34;
    v35 = *(v32 + 64);
    v63 = *(v32 + 48);
    v64 = v35;
    v36 = *(a1 + 8);
    sub_1D5D093E8(&v61, &v54);
    sub_1D5D093E8(&v61, &v54);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1D5D095A0(0, *(v36 + 2) + 1, 1, v36);
    }

    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_1D5D095A0((v37 > 1), v38 + 1, 1, v36);
    }

    sub_1D5D09904(&v61);
    v58 = v65;
    v59 = v66;
    *v60 = v67;
    *&v60[16] = v68;
    v54 = v61;
    v55 = v62;
    v56 = v63;
    v57 = v64;
    sub_1D5D09958(&v54);
    *(v36 + 2) = v38 + 1;
    v39 = &v36[128 * v38];
    v40 = v54;
    v41 = v55;
    v42 = v57;
    *(v39 + 4) = v56;
    *(v39 + 5) = v42;
    *(v39 + 2) = v40;
    *(v39 + 3) = v41;
    v43 = v58;
    v44 = v59;
    v45 = *v60;
    *(v39 + 137) = *&v60[9];
    *(v39 + 7) = v44;
    *(v39 + 8) = v45;
    *(v39 + 6) = v43;
    *(a1 + 8) = v36;
  }
}

uint64_t sub_1D5CF9A24(uint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v28[4] = a2[4];
  v28[5] = v5;
  v28[6] = a2[6];
  v6 = a2[1];
  v28[0] = *a2;
  v28[1] = v6;
  v7 = a2[3];
  v8 = *v2;
  v9 = *v2 >> 60;
  v28[2] = a2[2];
  v28[3] = v7;
  if (v9 <= 4)
  {
    if (v9 < 3)
    {
      return result;
    }

    v13 = v8 & 0xFFFFFFFFFFFFFFFLL;
    if (v9 != 3)
    {
      v26 = *(v13 + 24);
      v29 = *(v13 + 16);
      swift_retain_n();

      sub_1D5CF9A24(v4, a2);
      if (v3)
      {
        goto LABEL_17;
      }

      sub_1D6E6415C(v4, v28, v26);
LABEL_21:
    }

    v14 = *(v13 + 16);
    v15 = *(v13 + 24);

    sub_1D5D0AD60(v4, v28, v14, v15, sub_1D5CF9A24);
  }

  else
  {
    if (v9 < 8)
    {
      return result;
    }

    if (v9 > 9)
    {
      v16 = (v8 & 0xFFFFFFFFFFFFFFFLL);
      if (v9 != 10)
      {
        v23 = v16[3];
        v24 = v16[4];
        v29 = v16[2];

        swift_retain_n();

        sub_1D5CF9A24(v4, a2);
        if (v3)
        {

LABEL_17:
        }

        sub_1D6E73FCC(v4, v28, v23);
        v29 = v24;

        sub_1D5CF9A24(v4, v28);

        goto LABEL_21;
      }

      v17 = v16[2];
      v18 = v16[3];

      sub_1D62A7114(v4, v28, v17, v18);
    }

    else
    {
      v11 = v8 & 0xFFFFFFFFFFFFFFFLL;
      if (v9 == 8)
      {
        v12 = *(v11 + 24);
        v29 = *(v11 + 16);
        swift_retain_n();

        sub_1D5CF9A24(v4, a2);
        if (v3)
        {
          goto LABEL_17;
        }

        sub_1D6E73FCC(v4, v28, v12);
        goto LABEL_21;
      }

      v19 = *(v11 + 16);
      v20 = *(v11 + 24);
      v21 = *(v11 + 32);
      v22 = *(v11 + 40);
      v29 = *(v11 + 48);
      sub_1D5F58038(v19, v20, v21, v22);
      swift_retain_n();
      sub_1D5CF9A24(v4, a2);

      sub_1D5F57FEC(v19, v20, v21, v22);
    }
  }
}

uint64_t sub_1D5CF9D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C2B0C4(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5CF9DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D7199850(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5CF9E40(uint64_t result, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return result;
  }

  v7 = result;
  for (i = (a3 + 32); ; i += 4)
  {
    v9 = i[1];
    v246 = *i;
    v247 = v9;
    v10 = i[3];
    v248 = i[2];
    v249 = v10;
    v11 = v246;
    v12 = *(&v247 + 1);
    if ((BYTE8(v247) & 4) != 0)
    {
      *&v239 = v246;
      v16 = a2[5];
      v235 = a2[4];
      v236 = v16;
      v237[0] = a2[6];
      v17 = a2[1];
      v231 = *a2;
      v232 = v17;
      v18 = a2[3];
      v233 = a2[2];
      v234 = v18;
      sub_1D5CFBAA8(&v246, &v225);
      v15 = v4;
      sub_1D5CFEE30(v7, &v231);
      if (v4)
      {
        return sub_1D5D08954(&v246);
      }
    }

    else
    {
      v13 = *(&v246 + 1);
      v14 = v247;
      sub_1D5CFBAA8(&v246, &v231);
      v15 = v4;
      sub_1D5CFE5E0(v7, a2, v11);
      if (v4)
      {
        return sub_1D5D08954(&v246);
      }

      sub_1D5CFF624(v7, a2, v13, v14, v12);
    }

    v19 = v249;
    if ((v249 & 0x2000000000000000) == 0)
    {
      v20 = *(&v248 + 1);
      v21 = *(v248 + 32);
      v225 = *(v248 + 16);
      v226 = v21;
      *v227 = *(v248 + 48);
      *&v227[15] = *(v248 + 63);
      v22 = a2[5];
      v235 = a2[4];
      v236 = v22;
      v237[0] = a2[6];
      v23 = a2[1];
      v231 = *a2;
      v232 = v23;
      v24 = a2[3];
      v233 = a2[2];
      v234 = v24;
      sub_1D5CF6D20(v7, &v231);
      if (v15)
      {
        return sub_1D5D08954(&v246);
      }

      sub_1D5CFF904(v7, a2, v20);
      *&v225 = v19;
      v25 = a2[5];
      v235 = a2[4];
      v236 = v25;
      v237[0] = a2[6];
      v26 = a2[1];
      v231 = *a2;
      v232 = v26;
      v27 = a2[3];
      v233 = a2[2];
      v234 = v27;

      sub_1D5D07D58(v7, &v231);
      v4 = 0;
      goto LABEL_76;
    }

    if (v248 >> 62)
    {
      v4 = v15;
      if (v248 >> 62 == 1)
      {
        goto LABEL_122;
      }

      v29 = *((v248 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((v248 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (!(v29 >> 62))
      {
        v48 = *(v29 + 80);
        *&v227[16] = *(v29 + 64);
        v228 = v48;
        v229 = *(v29 + 96);
        *&v230 = *(v29 + 112);
        v49 = *(v29 + 32);
        v225 = *(v29 + 16);
        v226 = v49;
        v50 = *(v29 + 64);
        *v227 = *(v29 + 48);
        v51 = *(v29 + 80);
        v52 = *(v29 + 96);
        v242 = v50;
        v243 = v51;
        v244 = v52;
        v245 = *(v29 + 112);
        v53 = *(v29 + 32);
        v239 = *(v29 + 16);
        v240 = v53;
        v241 = *(v29 + 48);
        v54 = a2[5];
        v235 = a2[4];
        v236 = v54;
        v237[0] = a2[6];
        v55 = a2[1];
        v231 = *a2;
        v232 = v55;
        v56 = a2[3];
        v233 = a2[2];
        v234 = v56;
        swift_retain_n();

        sub_1D5D0322C(&v225, v238);
        sub_1D5D07EBC(v7, &v231);
        if (v15)
        {

          sub_1D5D07BBC(&v225);
          goto LABEL_174;
        }

        sub_1D5D07BBC(&v225);
        goto LABEL_73;
      }

      if (v29 >> 62 == 1)
      {

LABEL_74:
        sub_1D6E6B7BC(v7, a2, v28);
        if (!v4)
        {

LABEL_76:

          goto LABEL_122;
        }

LABEL_174:

        return sub_1D5D08954(&v246);
      }

      v58 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v57 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v250 = v29 & 0x3FFFFFFFFFFFFFFFLL;
      if (!(v58 >> 62))
      {
        v83 = *(v58 + 80);
        *&v227[16] = *(v58 + 64);
        v228 = v83;
        v229 = *(v58 + 96);
        *&v230 = *(v58 + 112);
        v84 = *(v58 + 32);
        v225 = *(v58 + 16);
        v226 = v84;
        v85 = *(v58 + 64);
        *v227 = *(v58 + 48);
        v86 = *(v58 + 80);
        v87 = *(v58 + 96);
        v242 = v85;
        v243 = v86;
        v244 = v87;
        v245 = *(v58 + 112);
        v88 = *(v58 + 32);
        v239 = *(v58 + 16);
        v240 = v88;
        v241 = *(v58 + 48);
        v89 = a2[5];
        v235 = a2[4];
        v236 = v89;
        v237[0] = a2[6];
        v90 = a2[1];
        v231 = *a2;
        v232 = v90;
        v91 = a2[3];
        v233 = a2[2];
        v234 = v91;
        swift_retain_n();
        v223 = v57;

        swift_retain_n();

        sub_1D5D0322C(&v225, v238);
        sub_1D5D07EBC(v7, &v231);
        if (v4)
        {

          sub_1D5D07BBC(&v225);

          return sub_1D5D08954(&v246);
        }

        sub_1D5D07BBC(&v225);
LABEL_70:

        v59 = v223;
        goto LABEL_71;
      }

      if (v58 >> 62 == 1)
      {
        swift_retain_n();

        v59 = v57;
LABEL_71:
        sub_1D6E6B7BC(v7, a2, v59);
        if (v4)
        {

          return sub_1D5D08954(&v246);
        }

LABEL_73:

        goto LABEL_74;
      }

      v223 = v57;
      v92 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v211 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v93 = v4;
      if (v92 >> 62)
      {
        if (v92 >> 62 == 1)
        {
          swift_retain_n();

          swift_retain_n();

          v94 = v211;

LABEL_68:
          sub_1D6E6B7BC(v7, a2, v94);
          v4 = v93;
          if (v93)
          {

            goto LABEL_174;
          }

          goto LABEL_70;
        }

        v108 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v109 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v225 = v108;
        v110 = a2[5];
        v235 = a2[4];
        v236 = v110;
        v237[0] = a2[6];
        v111 = a2[1];
        v231 = *a2;
        v232 = v111;
        v112 = a2[3];
        v233 = a2[2];
        v234 = v112;
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5D07D58(v7, &v231);
        if (v4)
        {

          return sub_1D5D08954(&v246);
        }

        sub_1D6E6B7BC(v7, a2, v109);
      }

      else
      {
        v99 = *(v92 + 80);
        *&v227[16] = *(v92 + 64);
        v228 = v99;
        v229 = *(v92 + 96);
        *&v230 = *(v92 + 112);
        v100 = *(v92 + 32);
        v225 = *(v92 + 16);
        v226 = v100;
        v101 = *(v92 + 64);
        *v227 = *(v92 + 48);
        v102 = *(v92 + 80);
        v103 = *(v92 + 96);
        v242 = v101;
        v243 = v102;
        v244 = v103;
        v245 = *(v92 + 112);
        v104 = *(v92 + 32);
        v239 = *(v92 + 16);
        v240 = v104;
        v241 = *(v92 + 48);
        v105 = a2[5];
        v235 = a2[4];
        v236 = v105;
        v237[0] = a2[6];
        v106 = a2[1];
        v231 = *a2;
        v232 = v106;
        v107 = a2[3];
        v233 = a2[2];
        v234 = v107;
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v225, v238);
        sub_1D5D07EBC(v7, &v231);
        if (v4)
        {

          sub_1D5D07BBC(&v225);

          return sub_1D5D08954(&v246);
        }

        sub_1D5D07BBC(&v225);
      }

      v93 = 0;
      v94 = v211;
      goto LABEL_68;
    }

    v31 = *(v248 + 16);
    v30 = *(v248 + 32);
    v32 = *(v248 + 64);
    v241 = *(v248 + 48);
    v242 = v32;
    v33 = *(v248 + 96);
    v243 = *(v248 + 80);
    v244 = v33;
    v245 = *(v248 + 112);
    v239 = v31;
    v240 = v30;
    v34 = v242;
    v35 = BYTE1(v242);
    if (v35 > 0xFE)
    {
      goto LABEL_18;
    }

    if (BYTE1(v242) > 1u)
    {
      if (v35 == 2)
      {
LABEL_18:
        v4 = v15;
      }

      else
      {
        v4 = v15;
      }

      sub_1D5D0322C(&v239, &v231);
      goto LABEL_23;
    }

    v64 = *(&v241 + 1);
    if (v35)
    {
      goto LABEL_18;
    }

    v65 = v241;
    v66 = v241 >> 61;
    if ((v241 >> 61) <= 1)
    {
      goto LABEL_18;
    }

    v222 = *(&v241 + 1);
    v250 = v241;
    v4 = v15;
    if (v66 == 2)
    {
      v116 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v219 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v117 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v202 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v207 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v198 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v194 = *v7;

      sub_1D5D0322C(&v239, &v231);
      v212 = v116;

      v118 = v117;

      v119 = v194;
      sub_1D5FB999C(v250, v64, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = sub_1D5D095A0(0, *(v194 + 2) + 1, 1, v194);
      }

      v121 = *(v119 + 2);
      v120 = *(v119 + 3);
      v191 = v121 + 1;
      v195 = v121;
      if (v121 >= v120 >> 1)
      {
        v119 = sub_1D5D095A0((v120 > 1), v121 + 1, 1, v119);
      }

      *&v231 = v219;
      *(&v231 + 1) = v212;
      *&v232 = v118;
      *(&v232 + 1) = v207;
      *&v233 = v202;
      WORD4(v233) = v198;
      BYTE10(v233) = 0;
      sub_1D5FD8134(&v231);
      *(v119 + 2) = v191;
      v122 = &v119[128 * v195];
      v123 = v231;
      v124 = v232;
      v125 = v234;
      *(v122 + 4) = v233;
      *(v122 + 5) = v125;
      *(v122 + 2) = v123;
      *(v122 + 3) = v124;
      v126 = v235;
      v127 = v236;
      v128 = v237[0];
      *(v122 + 137) = *(v237 + 9);
      *(v122 + 7) = v127;
      *(v122 + 8) = v128;
      *(v122 + 6) = v126;
      sub_1D5FBACE0(v250, v222, v34);
      *v7 = v119;
    }

    else if (v66 == 3)
    {
      v67 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v206 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v210 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v201 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v216 = *v7;
      sub_1D5F58038(v67, v210, v206, v201);
      sub_1D5D0322C(&v239, &v231);
      sub_1D5FB999C(v65, v64, v34);
      v197 = v67;
      v68 = v67;
      v69 = v216;
      sub_1D5F58038(v68, v210, v206, v201);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_1D5D095A0(0, *(v216 + 2) + 1, 1, v216);
      }

      v71 = *(v69 + 2);
      v70 = *(v69 + 3);
      v190 = v71 + 1;
      v193 = v71;
      v217 = v71 >= v70 >> 1 ? sub_1D5D095A0((v70 > 1), v71 + 1, 1, v69) : v69;
      sub_1D5F57FEC(v197, v210, v206, v201);
      *&v231 = v197;
      *(&v231 + 1) = v210;
      *&v232 = v206;
      *(&v232 + 1) = v201;
      *&v233 = 0;
      WORD4(v233) = 0;
      BYTE10(v233) = 1;
      sub_1D5FD8134(&v231);
      *(v217 + 2) = v190;
      v72 = &v217[128 * v193];
      v73 = v231;
      v74 = v232;
      v75 = v234;
      *(v72 + 4) = v233;
      *(v72 + 5) = v75;
      *(v72 + 2) = v73;
      *(v72 + 3) = v74;
      v76 = v235;
      v77 = v236;
      v78 = v237[0];
      *(v72 + 137) = *(v237 + 9);
      *(v72 + 7) = v77;
      *(v72 + 8) = v78;
      *(v72 + 6) = v76;
      sub_1D5FBACE0(v250, v222, v34);
      *v7 = v217;
    }

    else
    {
      v129 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v203 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v208 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v196 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v199 = v129;
      v213 = *v7;
      v220 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5FB999C(v241, *(&v241 + 1), v242);
      sub_1D5F58038(v220, v208, v129, v203);
      sub_1D5D0322C(&v239, &v231);
      sub_1D5FB999C(v65, v64, v34);
      v130 = v213;
      sub_1D5F58038(v220, v208, v199, v203);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v130 = sub_1D5D095A0(0, *(v213 + 2) + 1, 1, v213);
      }

      v132 = *(v130 + 2);
      v131 = *(v130 + 3);
      v189 = v132 + 1;
      v192 = v132;
      if (v132 >= v131 >> 1)
      {
        v214 = sub_1D5D095A0((v131 > 1), v132 + 1, 1, v130);
      }

      else
      {
        v214 = v130;
      }

      sub_1D5F57FEC(v220, v208, v199, v203);
      *&v231 = v220;
      *(&v231 + 1) = v208;
      *&v232 = v199;
      *(&v232 + 1) = v203;
      *&v233 = 0;
      WORD4(v233) = 0;
      BYTE10(v233) = 1;
      sub_1D5FD8134(&v231);
      *(v214 + 2) = v189;
      v133 = &v214[128 * v192];
      v134 = v231;
      v135 = v232;
      v136 = v234;
      *(v133 + 4) = v233;
      *(v133 + 5) = v136;
      *(v133 + 2) = v134;
      *(v133 + 3) = v135;
      v137 = v235;
      v138 = v236;
      v139 = v237[0];
      *(v133 + 137) = *(v237 + 9);
      *(v133 + 7) = v138;
      *(v133 + 8) = v139;
      *(v133 + 6) = v137;
      *v7 = v214;
      v238[0] = v196;
      v140 = a2[5];
      v228 = a2[4];
      v229 = v140;
      v230 = a2[6];
      v141 = a2[1];
      v225 = *a2;
      v226 = v141;
      v142 = a2[3];
      *v227 = a2[2];
      *&v227[16] = v142;

      sub_1D5D0350C(v7, &v225);
      if (v15)
      {
        v182 = v250;
        sub_1D5FBACE0(v250, v222, v34);

        sub_1D5FBACE0(v182, v222, v34);
        goto LABEL_197;
      }

      v143 = v250;
      sub_1D5FBACE0(v250, v222, v34);

      sub_1D5FBACE0(v143, v222, v34);
    }

LABEL_23:
    v36 = *(&v242 + 1);
    if ((~*(&v242 + 1) & 0xF000000000000007) != 0)
    {
      v37 = v243;
      *&v225 = *(&v242 + 1);
      v38 = a2[5];
      v235 = a2[4];
      v236 = v38;
      v237[0] = a2[6];
      v39 = a2[1];
      v231 = *a2;
      v232 = v39;
      v40 = a2[3];
      v233 = a2[2];
      v234 = v40;
      sub_1D5FB99B0(*(&v242 + 1));

      sub_1D5CF9A24(v7, &v231);
      if (v4)
      {

        sub_1D5FBACF4(v36);
        goto LABEL_197;
      }

      *&v225 = v37;
      v41 = a2[5];
      v235 = a2[4];
      v236 = v41;
      v237[0] = a2[6];
      v42 = a2[1];
      v231 = *a2;
      v232 = v42;
      v43 = a2[3];
      v233 = a2[2];
      v234 = v43;

      sub_1D5CF9A24(v7, &v231);

      sub_1D5FBACF4(v36);
    }

    v44 = v245;
    if ((~v245 & 0xF000000000000007) == 0)
    {
      goto LABEL_121;
    }

    v45 = v245 >> 62;
    if ((v245 >> 62) <= 1)
    {
      if (v45)
      {
        *&v225 = *((v245 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v79 = a2[5];
        v235 = a2[4];
        v236 = v79;
        v237[0] = a2[6];
        v80 = a2[1];
        v231 = *a2;
        v232 = v80;
        v81 = a2[3];
        v233 = a2[2];
        v234 = v81;
        sub_1D5F33D5C(v245);
        v47 = v4;
        sub_1D5CF9A24(v7, &v231);
      }

      else
      {
        v46 = *(v245 + 16);
        sub_1D5F33D5C(v245);
        v47 = v4;
        sub_1D5CF8C68(v7, a2, v46);
      }

      goto LABEL_118;
    }

    if (v45 == 2)
    {
      break;
    }

    if (v245 == 0xC000000000000000)
    {
      v82 = 0xC000000000000000;
    }

    else
    {
      v82 = 0xC000000000000008;
    }

LABEL_120:
    sub_1D5FBA158(v82);
LABEL_121:
    sub_1D5D07BBC(&v239);
LABEL_122:
    v164 = *(&v249 + 1) >> 62;
    if ((*(&v249 + 1) >> 62) > 1)
    {
      if (v164 == 2)
      {
        v171 = *((*(&v249 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v172 = *((*(&v249 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D5D07FF0(v7, a2, v171);
        if (v4)
        {

          return sub_1D5D08954(&v246);
        }

        sub_1D5D0868C(v7, a2, v172);
      }

      goto LABEL_4;
    }

    if (!v164)
    {
      goto LABEL_4;
    }

    v165 = *((*(&v249 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v166 = *(v165 + 32);
    v225 = *(v165 + 16);
    v226 = v166;
    v167 = *(v165 + 48);
    *&v227[15] = *(v165 + 63);
    *v227 = v167;
    v168 = v225;
    if (v227[18])
    {
      v169 = 8;
    }

    else
    {
      v169 = 0;
    }

    v170 = v169 & 0xFFFFFFF8 | (*&v227[16] >> 11) & 7;
    if (v170 <= 4)
    {
      if (v170 > 1)
      {
        if (v170 != 3)
        {
          goto LABEL_4;
        }

        goto LABEL_158;
      }

      if (v170)
      {
        goto LABEL_4;
      }

      v173 = (DWORD2(v166) >> 3) & 7;
      if (v173 > 1)
      {
        if (v173 == 2 || v173 == 3 || !(BYTE8(v166) >> 6) || BYTE8(v166) >> 6 == 1)
        {
          goto LABEL_158;
        }

        v174 = BYTE8(v166) & 7;
        if (v174 > 1)
        {
          goto LABEL_144;
        }

        goto LABEL_150;
      }

      if (v173)
      {
        goto LABEL_3;
      }

LABEL_158:
      if (v166 > 1u)
      {
        if (v166 == 2)
        {
          goto LABEL_4;
        }

LABEL_3:
        sub_1D5D085FC(&v225);
        goto LABEL_4;
      }

      if (!v166)
      {
        goto LABEL_3;
      }

      if ((~v225 & 0xF000000000000007) == 0)
      {
        goto LABEL_4;
      }

      v238[0] = v225;
      v179 = a2[5];
      v235 = a2[4];
      v236 = v179;
      v237[0] = a2[6];
      v180 = a2[1];
      v231 = *a2;
      v232 = v180;
      v181 = a2[3];
      v233 = a2[2];
      v234 = v181;

      sub_1D62B5248(&v225, &v239);
      v178 = v168;
LABEL_162:
      sub_1D5CFCFAC(v178);
      sub_1D5CFEE30(v7, &v231);
      if (v4)
      {
        sub_1D5D085FC(&v225);

        return sub_1D5D08954(&v246);
      }

      sub_1D5D085FC(&v225);

      goto LABEL_4;
    }

    if (v170 > 6)
    {
      if (v170 == 7 && *&v227[16] >> 14 >= 2u)
      {
        switch((*&v227[16] >> 7) & 0xE | (*&v227[16] >> 3) & 1)
        {
          case 1:
          case 5:
          case 6:
          case 7:
          case 9:
          case 0xA:
          case 0xB:
          case 0xD:
            goto LABEL_3;
          case 2:
            switch(v227[16] >> 4)
            {
              case 1:
              case 2:
              case 4:
              case 5:
              case 6:
              case 7:
              case 10:
              case 11:
                goto LABEL_3;
              case 8:
                goto LABEL_156;
              default:
                goto LABEL_4;
            }

          case 0xC:
LABEL_156:

            sub_1D5D085FC(&v225);

            break;
          default:
            goto LABEL_4;
        }
      }

      goto LABEL_4;
    }

    if (v170 != 5)
    {
      if (!(BYTE8(v166) >> 6) || BYTE8(v166) >> 6 == 1)
      {
        goto LABEL_158;
      }

      v174 = BYTE8(v166) & 0x3F;
      if (v174 > 1)
      {
LABEL_144:
        if (v174 == 2)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }

LABEL_150:
      if (!v174)
      {
        goto LABEL_3;
      }

      if ((~*(&v225 + 1) & 0xF000000000000007) == 0)
      {
        goto LABEL_4;
      }

      v238[0] = *(&v225 + 1);
      v175 = a2[5];
      v235 = a2[4];
      v236 = v175;
      v237[0] = a2[6];
      v176 = a2[1];
      v231 = *a2;
      v232 = v176;
      v177 = a2[3];
      v233 = a2[2];
      v234 = v177;

      sub_1D62B5248(&v225, &v239);
      v178 = *(&v168 + 1);
      goto LABEL_162;
    }

LABEL_4:
    result = sub_1D5D08954(&v246);
    if (!--v5)
    {
      return result;
    }
  }

  v60 = *((v245 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v61 = *((v245 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v62 = v60 >> 62;
  if ((v60 >> 62) <= 1)
  {
    if (!v62)
    {
      v63 = *(v60 + 16);
      sub_1D5FB99FC(v245);
      sub_1D5F33D5C(v60);

      sub_1D5CF8C68(v7, a2, v63);
      if (v4)
      {
        goto LABEL_183;
      }

      sub_1D5F33D8C(v60);
      goto LABEL_117;
    }

    v224 = *((v245 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    *&v225 = *((v60 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v113 = a2[5];
    v235 = a2[4];
    v236 = v113;
    v237[0] = a2[6];
    v114 = a2[1];
    v231 = *a2;
    v232 = v114;
    v115 = a2[3];
    v233 = a2[2];
    v234 = v115;
    sub_1D5FB99FC(v245);
    sub_1D5F33D5C(v60);

    sub_1D5CF9A24(v7, &v231);
    if (v4)
    {

      goto LABEL_194;
    }

LABEL_116:
    sub_1D5F33D8C(v60);
    v61 = v224;
LABEL_117:
    v47 = v4;
    sub_1D6E6EB3C(v7, a2, v61);
LABEL_118:
    v4 = v47;
    if (v47)
    {
      goto LABEL_196;
    }

    v82 = v44;
    goto LABEL_120;
  }

  if (v62 != 2)
  {
    sub_1D5F33D5C(v245);
    goto LABEL_117;
  }

  v224 = *((v245 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v95 = *((v60 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v250 = *((v60 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v96 = v250 >> 62;
  if ((v250 >> 62) > 1)
  {
    if (v96 != 2)
    {
      sub_1D5FB99FC(v245);
      sub_1D5F33D5C(v60);
      if (v250 == 0xC000000000000000)
      {
        v152 = 0xC000000000000000;
      }

      else
      {
        v152 = 0xC000000000000008;
      }

      sub_1D5F33D5C(v152);

      goto LABEL_114;
    }

    v144 = *((v250 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v145 = v144 >> 62;
    v209 = *((v250 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v215 = v144;
    if ((v144 >> 62) > 1)
    {
      if (v145 != 2)
      {
        sub_1D5FB99FC(v245);
        sub_1D5F33D5C(v60);
        v162 = v250;
        sub_1D5F33D5C(v250);

        sub_1D5F33D5C(v162);
        if (v215 == 0xC000000000000000)
        {
          v163 = 0xC000000000000000;
        }

        else
        {
          v163 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v163);
        v161 = v209;

        goto LABEL_112;
      }

      v205 = *((v144 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v225 = *((v144 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v200 = v225;
      v153 = a2[5];
      v235 = a2[4];
      v236 = v153;
      v237[0] = a2[6];
      v154 = a2[1];
      v231 = *a2;
      v232 = v154;
      v155 = a2[3];
      v233 = a2[2];
      v234 = v155;
      sub_1D5FB99FC(v245);
      sub_1D5F33D5C(v60);
      v156 = v250;
      sub_1D5F33D5C(v250);
      v221 = v95;

      sub_1D5F33D5C(v156);
      sub_1D5F33D5C(v215);

      sub_1D5F33D5C(v215);
      sub_1D5F33D5C(v200);

      sub_1D5F33D5C(v200);
      sub_1D62B2DE8(v7, &v231);
      if (!v4)
      {
        sub_1D5F33D8C(v225);
        sub_1D6E6EB3C(v7, a2, v205);
        sub_1D5F33D8C(v200);

        v147 = v215;
        goto LABEL_107;
      }

      sub_1D5F33D8C(v200);

      v146 = v215;
      sub_1D5F33D8C(v215);

      v187 = v250;
      sub_1D5F33D8C(v250);

      sub_1D5F33D8C(v225);
    }

    else
    {
      v221 = v95;
      if (v145)
      {
        *&v225 = *((v144 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v157 = a2[5];
        v235 = a2[4];
        v236 = v157;
        v237[0] = a2[6];
        v158 = a2[1];
        v231 = *a2;
        v232 = v158;
        v159 = a2[3];
        v233 = a2[2];
        v234 = v159;
        sub_1D5FB99FC(v245);
        sub_1D5F33D5C(v60);
        v160 = v250;
        sub_1D5F33D5C(v250);

        sub_1D5F33D5C(v160);
        sub_1D5F33D5C(v215);

        sub_1D5F33D5C(v215);

        sub_1D5CF9A24(v7, &v231);
        if (v4)
        {
          sub_1D5F33D8C(v215);

          v188 = v250;
          sub_1D5F33D8C(v250);

          sub_1D5F33D8C(v215);
          v186 = v188;
          goto LABEL_193;
        }

        v147 = v215;
        goto LABEL_107;
      }

      v204 = *(v144 + 16);
      v146 = *((v250 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5FB99FC(v245);
      sub_1D5F33D5C(v60);
      sub_1D5F33D5C(v250);

      sub_1D5F33D5C(v250);
      sub_1D5F33D5C(v146);

      sub_1D5F33D5C(v146);

      sub_1D5CF8C68(v7, a2, v204);
      if (!v4)
      {

        v147 = v146;
LABEL_107:
        sub_1D5F33D8C(v147);
        v95 = v221;
        v161 = v209;
LABEL_112:
        sub_1D6E6EB3C(v7, a2, v161);
        if (!v4)
        {
          sub_1D5F33D8C(v215);

          sub_1D5F33D8C(v250);
          goto LABEL_114;
        }

        sub_1D5F33D8C(v215);

        v187 = v250;
        sub_1D5F33D8C(v250);

        goto LABEL_192;
      }

      sub_1D5F33D8C(v146);

      v187 = v250;
      sub_1D5F33D8C(v250);
    }

    sub_1D5F33D8C(v146);
LABEL_192:
    v186 = v187;
    goto LABEL_193;
  }

  v218 = v95;
  if (v96)
  {
    v148 = v250;
    *&v225 = *((v250 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v149 = a2[5];
    v235 = a2[4];
    v236 = v149;
    v237[0] = a2[6];
    v150 = a2[1];
    v231 = *a2;
    v232 = v150;
    v151 = a2[3];
    v233 = a2[2];
    v234 = v151;
    sub_1D5FB99FC(v245);
    sub_1D5F33D5C(v60);
    sub_1D5F33D5C(v148);

    sub_1D5F33D5C(v148);

    sub_1D5CF9A24(v7, &v231);
    if (!v4)
    {

      sub_1D5F33D8C(v250);
      goto LABEL_114;
    }

    v185 = v250;
    sub_1D5F33D8C(v250);

    v186 = v185;
LABEL_193:
    sub_1D5F33D8C(v186);
    goto LABEL_194;
  }

  v97 = v250;
  v98 = *(v250 + 16);
  sub_1D5FB99FC(v245);
  sub_1D5F33D5C(v60);
  sub_1D5F33D5C(v97);

  sub_1D5F33D5C(v97);

  sub_1D5CF8C68(v7, a2, v98);
  if (v4)
  {
    v183 = v250;
    sub_1D5F33D8C(v250);

    sub_1D5F33D8C(v183);
    v184 = v60;
    goto LABEL_195;
  }

  sub_1D5F33D8C(v250);
  v95 = v218;
LABEL_114:
  sub_1D6E6EB3C(v7, a2, v95);
  if (!v4)
  {
    sub_1D5F33D8C(v250);

    goto LABEL_116;
  }

  sub_1D5F33D8C(v250);
LABEL_183:

LABEL_194:
  v184 = v60;
LABEL_195:
  sub_1D5F33D8C(v184);
LABEL_196:
  sub_1D5FBA158(v44);
LABEL_197:
  sub_1D5D07BBC(&v239);
  return sub_1D5D08954(&v246);
}

uint64_t sub_1D5CFB918(uint64_t result, __int128 *a2)
{
  v4 = a2[5];
  v14[4] = a2[4];
  v14[5] = v4;
  v14[6] = a2[6];
  v5 = a2[1];
  v14[0] = *a2;
  v14[1] = v5;
  v6 = a2[3];
  v7 = *v2;
  v8 = *v2 >> 60;
  v14[2] = a2[2];
  v14[3] = v6;
  if (v8 <= 0xB)
  {
    if (((1 << v8) & 0xFAC) != 0)
    {
      return result;
    }

    if (v8 == 4)
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v10 = result;

      sub_1D5D06C9C(v10, v14, v9);
      if (v3)
      {
      }

      else
      {

        sub_1D5CFB918(v10, v14);
      }
    }

    if (v8 == 6)
    {
      return sub_1D62A6DE8(result, a2);
    }
  }

  if (v8)
  {
    return sub_1D5CF6D20(result, a2);
  }

  v11 = *(v7 + 16);
  v12 = *(v7 + 24);
  if (v11)
  {
    v13 = result;
    result = sub_1D6E73EF0(result, v14, v11);
    if (v3)
    {
      return result;
    }

    result = v13;
  }

  if (v12)
  {
    return sub_1D5CF9E40(result, v14, v12);
  }

  return result;
}

void sub_1D5CFBB04(char **a1, __int128 *a2, uint64_t a3)
{
  sub_1D5C2B0C4(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = (&v22 - v9);
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v22 = *(v8 + 72);
    while (1)
    {
      sub_1D5CF8338(v12, v10, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
      v13 = v10[10];
      v23 = v10[9];
      v14 = v10[11];
      v16 = v10[13];
      v15 = v10[14];
      if (v13)
      {
        v17 = a2[5];
        v24[4] = a2[4];
        v24[5] = v17;
        v24[6] = a2[6];
        v18 = a2[1];
        v24[0] = *a2;
        v24[1] = v18;
        v19 = a2[3];
        v24[2] = a2[2];
        v24[3] = v19;
        v20 = v25;
        sub_1D5D0578C(a1, v24);
        if (v20)
        {
          v25 = v20;
          goto LABEL_11;
        }
      }

      else
      {
        v20 = v25;
      }

      sub_1D5CF4060(a1, a2, v14);

      if (v20)
      {
        break;
      }

      sub_1D5CF6244(a1, a2, v16);

      sub_1D5CFD3E0(a1, a2, v15);

      v21 = v23;

      sub_1D5CF6090(a1, a2, v21);

      v25 = 0;
      sub_1D5CF9D88(v10, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
      v12 += v22;
      if (!--v11)
      {
        return;
      }
    }

    v25 = v20;
LABEL_11:
    sub_1D5CF9D88(v10, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  }
}

void sub_1D5CFBE18(char **a1, __int128 *a2, uint64_t a3)
{
  sub_1D5C2B0C4(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = (&v26 - v10);
  if (*(a3 + 16))
  {
    v12 = *(a3 + 16);
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27 = *(v9 + 72);
    v14 = v12;
    while (1)
    {
      v15 = a2;
      sub_1D5CF8338(v13, v11, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
      v16 = v11[7];
      v29 = v11[6];
      v17 = v11[8];
      v18 = v11[11];
      v40 = v11[12];
      if (v16)
      {
        v28 = v14;
        swift_beginAccess();
        v19 = *(v16 + 56);

        sub_1D6E782FC(a1, v19);

        if (v3)
        {
          break;
        }

        if (*(v16 + 74) == 255)
        {
          a2 = v15;
        }

        else
        {
          v20 = *(v16 + 72) | (*(v16 + 74) << 16);
          v37 = *(v16 + 64);
          v38 = v20;
          v39 = BYTE2(v20);
          a2 = v15;
          v21 = v15[5];
          v34 = v15[4];
          v35 = v21;
          v36 = v15[6];
          v22 = v15[1];
          v30 = *v15;
          v31 = v22;
          v23 = v15[3];
          v32 = v15[2];
          v33 = v23;
          sub_1D6E78C48(v37, v20, SBYTE2(v20), sub_1D610CA28, sub_1D610CA5C);
          sub_1D62A8A9C();
          sub_1D6E78C48(v37, v38, v39, sub_1D60CF6A8, sub_1D60CF6DC);
        }

        v14 = v28;
      }

      else
      {
        a2 = v15;
      }

      sub_1D5CF4060(a1, a2, v17);

      if (v3)
      {
        break;
      }

      sub_1D5CF6244(a1, a2, v18);

      v24 = v40;

      sub_1D5CFD3E0(a1, a2, v24);

      v25 = v29;

      sub_1D5CF6090(a1, a2, v25);

      sub_1D5CF9D88(v11, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
      v13 += v27;
      if (!--v14)
      {
        return;
      }
    }

    sub_1D5CF9D88(v11, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  }
}
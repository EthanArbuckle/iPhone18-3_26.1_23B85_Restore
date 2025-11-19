uint64_t sub_1D5F1BA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5F1BAD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D5F1BB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5F1BBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5F1BC24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F1B990();
  *a1 = result;
  return result;
}

uint64_t sub_1D5F1BC60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5D70384(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D5F1BCCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F1B990();
  *a1 = result;
  return result;
}

uint64_t sub_1D5F1BD00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5F1BD54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupKnobsRuleValue.description.getter()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000018, 0x80000001D73C23C0);
  swift_getMetatypeMetadata();
  v0 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0x65756C6176203A3ELL, 0xE90000000000003DLL);
  sub_1D726465C();
  MEMORY[0x1DA6F9910](0x7463656C6573202CLL, 0xEC0000003D73726FLL);
  type metadata accessor for FeedGroupKnobsRuleValue.Selector();
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D726466C();
  return 0;
}

uint64_t FeedGroupKnobsRuleValue.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  return v0;
}

uint64_t sub_1D5F1C024(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F1C080@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FeedGroupKnobsRuleValue.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_1D5F1C100(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = sub_1D726393C();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v79 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v80 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v81 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v82 = &v75 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v83 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v84 = &v75 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v88 = &v75 - v29;
  v95 = v1;
  v30 = *(v3 + 88);
  v92 = v4;
  v31 = *(v4 + 96);
  *&v96 = v5;
  *(&v96 + 1) = v30;
  v77 = v31;
  v97 = v31;
  type metadata accessor for LegacyFeedGroupKnobsRuleValue.CodingKeys();
  swift_getWitnessTable();
  v91 = sub_1D726435C();
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v32);
  v93 = &v75 - v33;
  v85 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v75 - v36;
  v38 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v39 = v94;
  sub_1D7264AEC();
  v90 = v30;
  if (v39)
  {
    v94 = v39;
    __swift_project_boxed_opaque_existential_1(v98, v98[3]);
    sub_1D7264B0C();
    LOBYTE(v96) = 0;
    v40 = v88;
    sub_1D726427C();
    v51 = v40;
    v52 = v95;
    v53 = v5;
    v54 = *(v86 + 32);
    v76 = *(*v95 + 112);
    v54(v95 + v76, v51, v87);
    LOBYTE(v96) = 1;
    v55 = v84;
    v88 = v53;
    sub_1D726427C();
    v75 = *(*v52 + 120);
    v54(v52 + v75, v55, v87);
    LOBYTE(v96) = 2;
    v56 = v83;
    sub_1D726427C();
    v84 = *(*v52 + 128);
    v54(&v84[v52], v56, v87);
    LOBYTE(v96) = 3;
    v57 = v82;
    sub_1D726427C();
    v83 = *(*v52 + 136);
    v59 = v57;
    v60 = v87;
    v54(&v83[v52], v59, v87);
    v61 = v86;
    v62 = *(v86 + 16);
    v63 = v81;
    v62(v81, v52 + v76, v60);
    v64 = v85 + 48;
    v65 = *(v85 + 48);
    if (v65(v63, 1, v88) == 1)
    {
      v66 = v87;
      v92 = *(v61 + 8);
      v92(v63, v87);
      v67 = v80;
      v62(v80, v52 + v75, v66);
      if (v65(v67, 1, v88) == 1 && (v68 = v87, v92(v67, v87), v67 = v79, v62(v79, &v84[v52], v68), v85 = v64, v65(v67, 1, v88) == 1))
      {
        v69 = v67;
        v70 = v87;
        v71 = v92;
        v92(v69, v87);
        v72 = v78;
        v62(v78, &v83[v52], v70);
        v73 = v88;
        if (v65(v72, 1, v88) == 1)
        {
          v71(v72, v87);
          *&v74 = v73;
          *(&v74 + 1) = v90;
          v96 = v74;
          v97 = v77;
          type metadata accessor for LegacyFeedGroupKnobsRuleValue.Errors();
          swift_getWitnessTable();
          swift_allocError();
          swift_willThrow();

          (*(v89 + 8))(v93, v91);

          v50 = v52;
          goto LABEL_4;
        }

        v71(v72, v87);
      }

      else
      {

        v92(v67, v87);
      }
    }

    else
    {

      (*(v61 + 8))(v63, v87);
    }

    (*(v89 + 8))(v93, v91);
    v50 = v95;
    goto LABEL_4;
  }

  __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
  sub_1D726472C();
  v41 = v95;
  v42 = *(*v95 + 112);
  v43 = v85;
  v93 = *(v85 + 16);
  (v93)(v95 + v42, v37, v5);
  v44 = *(v43 + 56);
  v44(&v41[v42], 0, 1, v5);
  v45 = *(*v41 + 120);
  v94 = 0;
  v46 = v93;
  (v93)(&v41[v45], v37, v5);
  v44(&v41[v45], 0, 1, v5);
  v47 = *(*v41 + 128);
  (v46)(&v41[v47], v37, v5);
  v44(&v41[v47], 0, 1, v5);
  v48 = *(*v41 + 136);
  (*(v43 + 32))(&v41[v48], v37, v5);
  v49 = v5;
  v50 = v41;
  v44(&v41[v48], 0, 1, v49);
  __swift_destroy_boxed_opaque_existential_1(&v96);
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v98);
  return v50;
}

uint64_t sub_1D5F1CC70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v102 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v96 = &v85[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D726393C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v90 = &v85[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v91 = &v85[-v13];
  MEMORY[0x1EEE9AC00](v14, v15);
  v93 = &v85[-v16];
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v85[-v19];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v100 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v22);
  v89 = &v85[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24, v25);
  v92 = &v85[-v26];
  MEMORY[0x1EEE9AC00](v27, v28);
  v95 = &v85[-v29];
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v34 = &v85[-v33];
  v35 = *(*a1 + 112);
  v36 = *(*a2 + 112);
  v101 = v37;
  v38 = *(v37 + 48);
  v99 = v8;
  v39 = *(v8 + 16);
  v97 = a1;
  v39(&v85[-v33], a1 + v35, v7, v32);
  v98 = a2;
  (v39)(&v34[v38], a2 + v36, v7);
  v40 = *(v102 + 48);
  if (v40(v34, 1, v5) == 1)
  {
    if (v40(&v34[v38], 1, v5) == 1)
    {
      v94 = v40;
      v41 = *(v99 + 8);
      v41(v34, v7);
      goto LABEL_8;
    }

LABEL_6:
    (*(v100 + 8))(v34, v101);
    goto LABEL_20;
  }

  (v39)(v20, v34, v7);
  if (v40(&v34[v38], 1, v5) == 1)
  {
    (*(v102 + 8))(v20, v5);
    goto LABEL_6;
  }

  v94 = v40;
  v42 = v102;
  v43 = v96;
  (*(v102 + 32))(v96, &v34[v38], v5);
  LODWORD(v88) = sub_1D7261FBC();
  v44 = *(v42 + 8);
  v44(v43, v5);
  v44(v20, v5);
  v41 = *(v99 + 8);
  v41(v34, v7);
  if ((v88 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  v88 = v41;
  v45 = v98;
  v46 = *(*v98 + 120);
  v47 = *(v101 + 48);
  v48 = v95;
  (v39)(v95, v97 + *(*v97 + 120), v7);
  (v39)(&v48[v47], v45 + v46, v7);
  v49 = v94;
  if (v94(v48, 1, v5) == 1)
  {
    if (v49(&v48[v47], 1, v5) != 1)
    {
      goto LABEL_19;
    }

    v94 = v49;
    v88(v48, v7);
  }

  else
  {
    v50 = v93;
    (v39)(v93, v48, v7);
    if (v49(&v48[v47], 1, v5) == 1)
    {
      (*(v102 + 8))(v50, v5);
      goto LABEL_19;
    }

    v94 = v49;
    v51 = v102;
    v52 = &v48[v47];
    v53 = v96;
    (*(v102 + 32))(v96, v52, v5);
    v86 = sub_1D7261FBC();
    v54 = *(v51 + 8);
    v54(v53, v5);
    v54(v50, v5);
    v88(v48, v7);
    if ((v86 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v55 = v98;
  v56 = *(*v98 + 128);
  v57 = v7;
  v58 = v39;
  v59 = *(v101 + 48);
  v48 = v92;
  v58(v92, v97 + *(*v97 + 128), v57);
  v58(&v48[v59], v55 + v56, v57);
  v60 = v94;
  v61 = v94(v48, 1, v5);
  v87 = v58;
  if (v61 != 1)
  {
    v65 = v91;
    v58(v91, v48, v57);
    if (v60(&v48[v59], 1, v5) != 1)
    {
      v68 = v102;
      v69 = v96;
      (*(v102 + 32))(v96, &v48[v59], v5);
      v70 = sub_1D7261FBC();
      v71 = *(v68 + 8);
      v71(v69, v5);
      v71(v65, v5);
      v72 = v48;
      v64 = v88;
      v88(v72, v57);
      v63 = v57;
      if ((v70 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    (*(v102 + 8))(v65, v5);
LABEL_19:
    (*(v100 + 8))(v48, v101);
    goto LABEL_20;
  }

  if (v60(&v48[v59], 1, v5) != 1)
  {
    goto LABEL_19;
  }

  v62 = v48;
  v63 = v57;
  v64 = v88;
  v88(v62, v57);
LABEL_23:
  v73 = v98;
  v74 = *(*v98 + 136);
  v75 = *(v101 + 48);
  v76 = v89;
  v77 = v63;
  v78 = v63;
  v79 = v87;
  v87(v89, v97 + *(*v97 + 136), v77);
  v79(&v76[v75], v73 + v74, v78);
  v80 = v94;
  if (v94(v76, 1, v5) == 1)
  {
    if (v80(&v76[v75], 1, v5) == 1)
    {
      v64(v76, v78);
      v66 = 1;
      return v66 & 1;
    }
  }

  else
  {
    v79(v90, v76, v78);
    if (v80(&v76[v75], 1, v5) != 1)
    {
      v81 = v102;
      v82 = v96;
      (*(v102 + 32))(v96, &v76[v75], v5);
      v83 = v90;
      v66 = sub_1D7261FBC();
      v84 = *(v81 + 8);
      v84(v82, v5);
      v84(v83, v5);
      v64(v76, v78);
      return v66 & 1;
    }

    (*(v102 + 8))(v90, v5);
  }

  (*(v100 + 8))(v76, v101);
LABEL_20:
  v66 = 0;
  return v66 & 1;
}

uint64_t sub_1D5F1D674(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269726373627573 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6373627553746F6ELL && a2 == 0xED00006465626972 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657269707865 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61697274 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D5F1D7E4(unsigned __int8 a1)
{
  v1 = 0x6269726373627573;
  v2 = 0x64657269707865;
  if (a1 != 2)
  {
    v2 = 0x6C61697274;
  }

  if (a1)
  {
    v1 = 0x6373627553746F6ELL;
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

uint64_t sub_1D5F1D8A4()
{
  sub_1D7264A0C();
  sub_1D5DEA28C(v2, *v0);
  return sub_1D7264A5C();
}

uint64_t sub_1D5F1D918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_1D5F1D96C@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F1D9A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D5F1D9FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D5F1DA50()
{
  v1 = *(*v0 + 112);
  v2 = sub_1D726393C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + *(*v0 + 120), v2);
  v3(v0 + *(*v0 + 128), v2);
  v3(v0 + *(*v0 + 136), v2);
  return v0;
}

uint64_t sub_1D5F1DB60()
{
  sub_1D5F1DA50();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F1DBB4(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v12[0] = *(*v2 + 96);
  v12[1] = v4;
  v13 = v4;
  v14 = v12[0];
  type metadata accessor for LegacyFeedGroupKnobsRuleValue.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  LOBYTE(v13) = 0;
  v10 = v15;
  sub_1D72643BC();
  if (!v10)
  {
    LOBYTE(v13) = 1;
    sub_1D72643BC();
    LOBYTE(v13) = 2;
    sub_1D72643BC();
    LOBYTE(v13) = 3;
    sub_1D72643BC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t *sub_1D5F1DE2C@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  result = sub_1D5F194CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5F1DE88(uint64_t a1)
{
  v2 = v1;
  v46[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v4 = v2[3];
    v46[0] = v2[2];
    v46[1] = v4;

    v5 = sub_1D6844380(v46);

    v41 = *(v5 + 16);
    if (!v41)
    {
LABEL_91:

      return 0;
    }

    v37[1] = v2;
    v38 = a1;
    v6 = 0;
    v45 = 0;
    v40 = v5 + 32;
    v42 = v5;
LABEL_7:
    if (v6 < *(v5 + 16))
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
  }

  v43 = v6;
  v8 = (v40 + 56 * v6);
  v9 = v8[1];
  v11 = v8[3];
  v10 = v8[4];
  v13 = v8[5];
  v12 = v8[6];
  LOBYTE(v8) = *(v11 + 32);
  v14 = v8 & 0x3F;
  v15 = ((1 << v8) + 63) >> 6;
  v16 = (8 * v15);
  swift_bridgeObjectRetain_n();

  v44 = v9;

  if (v14 > 0xD)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v16 = swift_slowAlloc();

      v34 = v45;
      v2 = sub_1D5FB8818(v16, v15, v11, a1);

      v45 = v34;
      if (v34)
      {
        goto LABEL_98;
      }

      MEMORY[0x1DA6FD500](v16, -1, -1);
      goto LABEL_11;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe, v18);
  bzero(v37 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v16);
  v19 = v45;
  v20 = sub_1D5FB88DC(v37 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v15, v11, a1);
  v45 = v19;
  if (!v19)
  {
    v2 = v20;

LABEL_11:
    v21 = v12;
    v22 = sub_1D5BFC390(v2, v11);

    if ((v22 & 1) == 0 || (sub_1D670EDB8(a1, v10) & 1) == 0)
    {

LABEL_49:
      v5 = v42;
      v7 = v43;
      goto LABEL_6;
    }

    v23 = *(v13 + 16);
    v39 = v10;
    if (!v23)
    {
      v28 = *(v12 + 16);
      if (!v28)
      {
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    v24 = 0;
    v25 = (v13 + 40);
    while (v24 < *(v13 + 16))
    {
      v2 = *v25;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_42:
            swift_once();
          }

LABEL_44:

          goto LABEL_45;
        default:
          v26 = sub_1D726203C();
          v27 = [objc_opt_self() systemImageNamed_];

          if (!v27)
          {

            swift_bridgeObjectRelease_n();

LABEL_86:
            a1 = v38;
            goto LABEL_49;
          }

LABEL_45:
          ++v24;
          v25 += 2;
          if (v23 == v24)
          {

            v28 = *(v21 + 16);
            if (!v28)
            {
LABEL_92:
            }

LABEL_53:

            v29 = 0;
            v30 = (v21 + 40);
            while (1)
            {
              if (v29 >= *(v21 + 16))
              {
                goto LABEL_95;
              }

              v2 = *v30;
              swift_bridgeObjectRetain_n();
              v31 = sub_1D61E05F4();
              if (v31 != 13)
              {
                break;
              }

              v32 = sub_1D726203C();
              v33 = [objc_opt_self() systemImageNamed_];

              if (v33)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_86;
              }

              ++v29;
              v30 += 2;
              if (v28 == v29)
              {

                goto LABEL_92;
              }
            }

            a1 = v38;
            v5 = v42;
            switch(v31)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_83:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v7 = v43;
LABEL_6:
            v6 = v7 + 1;
            if (v6 == v41)
            {
              goto LABEL_91;
            }

            goto LABEL_7;
          }

          break;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v36 = v45;
  swift_willThrow();

  __break(1u);
LABEL_98:

  result = MEMORY[0x1DA6FD500](v16, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D5F1EA44()
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

uint64_t sub_1D5F1EB38()
{
  result = sub_1D726393C();
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

uint64_t sub_1D5F1ED9C(uint64_t a1)
{
  v2 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v122 = (v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v116 = (v111 - v7);
  v8 = type metadata accessor for WebEmbedDataVisualization();
  v125 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v119 = (v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v118 = (v111 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (v111 - v16);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v111 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v113 = (v111 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v112 = (v111 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v115 = (v111 - v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v114 = v111 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v117 = v111 - v36;
  v37 = *(a1 + 16);
  v132 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v37, 0);
  v38 = v132;
  v39 = a1 + 56;
  v40 = -1;
  v41 = -1 << *(a1 + 32);
  if (-v41 < 64)
  {
    v40 = ~(-1 << -v41);
  }

  v42 = v40 & *(a1 + 56);
  v43 = (63 - v41) >> 6;
  v123 = a1;
  v124 = v43;
  v126 = v8;
  v121 = v37;
  if (!v37)
  {

    v45 = 0;
    v75 = v123;
    if (v42)
    {
      goto LABEL_62;
    }

    do
    {
LABEL_63:
      v76 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_118;
      }

      if (v76 >= v43)
      {

        return v38;
      }

      v42 = *(v39 + 8 * v76);
      ++v45;
    }

    while (!v42);
    v128 = v38;
    v45 = v76;
    while (1)
    {
      v77 = v114;
      sub_1D5F23584(*(v75 + 48) + *(v125 + 72) * (__clz(__rbit64(v42)) | (v45 << 6)), v114, type metadata accessor for WebEmbedDataVisualization);
      v78 = v77;
      v79 = v117;
      sub_1D5F2364C(v78, v117, type metadata accessor for WebEmbedDataVisualization);
      v80 = v115;
      sub_1D5F23584(v79, v115, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1D5F2364C(v80, v116, type metadata accessor for GenericDataVisualization);
      v81 = v113;
      sub_1D5F23584(v79, v113, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D5F235EC(v81, type metadata accessor for WebEmbedDataVisualization);
        v82 = 0xE700000000000000;
        v83 = 0x636972656E6567;
        v84 = v117;
      }

      else
      {
        v94 = *v81 >> 61;

        if (v94 <= 2)
        {
          v84 = v117;
          if (v94)
          {
            if (v94 == 1)
            {
              v82 = 0xE800000000000000;
              v83 = 0x676E69646E617473;
            }

            else
            {
              v82 = 0xE700000000000000;
              v83 = 0x74656B63617262;
            }
          }

          else
          {
            v82 = 0xE500000000000000;
            v83 = 0x65726F6373;
          }
        }

        else
        {
          v84 = v117;
          if (v94 > 4)
          {
            if (v94 == 5)
            {
              v83 = 0x65527972756A6E69;
              v82 = 0xEC00000074726F70;
            }

            else
            {
              v82 = 0xE900000000000072;
              v83 = 0x6579616C5079656BLL;
            }
          }

          else if (v94 == 3)
          {
            v82 = 0xE800000000000000;
            v83 = 0x65726F6353786F62;
          }

          else
          {
            v83 = 0x726F6353656E696CLL;
            v82 = 0xE900000000000065;
          }
        }
      }

      v130 = v83;
      v131 = v82;
      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      v85 = v116;
      MEMORY[0x1DA6F9910](*v116, v116[1]);
      v86 = v130;
      v87 = v131;
      sub_1D5F235EC(v85, type metadata accessor for GenericDataVisualization);
LABEL_88:
      sub_1D5F235EC(v84, type metadata accessor for WebEmbedDataVisualization);
      v38 = v128;
      v132 = v128;
      v102 = *(v128 + 16);
      v101 = *(v128 + 24);
      if (v102 >= v101 >> 1)
      {
        sub_1D5BFC364((v101 > 1), v102 + 1, 1);
        v38 = v132;
      }

      v42 &= v42 - 1;
      *(v38 + 16) = v102 + 1;
      v103 = v38 + 16 * v102;
      *(v103 + 32) = v86;
      *(v103 + 40) = v87;
      v43 = v124;
      if (!v42)
      {
        goto LABEL_63;
      }

LABEL_62:
      v128 = v38;
    }

    v88 = *v80;
    v89 = v79;
    v90 = v112;
    sub_1D5F23584(v89, v112, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D5F235EC(v90, type metadata accessor for WebEmbedDataVisualization);
      v91 = 0xE700000000000000;
      v92 = 0x636972656E6567;
      v84 = v117;
    }

    else
    {
      v95 = *v90 >> 61;

      if (v95 <= 2)
      {
        v84 = v117;
        if (v95)
        {
          if (v95 == 1)
          {
            v91 = 0xE800000000000000;
            v92 = 0x676E69646E617473;
          }

          else
          {
            v91 = 0xE700000000000000;
            v92 = 0x74656B63617262;
          }
        }

        else
        {
          v91 = 0xE500000000000000;
          v92 = 0x65726F6373;
        }
      }

      else
      {
        v84 = v117;
        if (v95 > 4)
        {
          if (v95 == 5)
          {
            v92 = 0x65527972756A6E69;
            v91 = 0xEC00000074726F70;
          }

          else
          {
            v91 = 0xE900000000000072;
            v92 = 0x6579616C5079656BLL;
          }
        }

        else if (v95 == 3)
        {
          v91 = 0xE800000000000000;
          v92 = 0x65726F6353786F62;
        }

        else
        {
          v92 = 0x726F6353656E696CLL;
          v91 = 0xE900000000000065;
        }
      }
    }

    v130 = v92;
    v131 = v91;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v93 = v88 >> 61;
    if ((v88 >> 61) <= 2)
    {
      if (v93)
      {
        v96 = v88 & 0x1FFFFFFFFFFFFFFFLL;
        if (v93 != 1)
        {
          v105 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;
          sub_1D5E4CF90();

          v127 = v105;
          sub_1D725BE8C();
          v106 = v129[8];
          swift_unknownObjectRetain();

          if (v106 && (v107 = [v106 asSports], swift_unknownObjectRelease(), v107) && (v108 = objc_msgSend(v107, sel_UMCCanonicalID), swift_unknownObjectRelease(), v108))
          {
            v99 = sub_1D726207C();
            v100 = v109;
          }

          else
          {
            sub_1D725BE8C();
            v99 = v129[5];
            v100 = v129[6];
          }

          goto LABEL_87;
        }

        v97 = *(v96 + 16);
        v99 = *(v97 + 40);
        v100 = *(v97 + 48);
      }

      else
      {
        v104 = *(v88 + 16);
        v99 = *(v104 + 40);
        v100 = *(v104 + 48);
      }
    }

    else
    {
      v98 = *((v88 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v99 = *(v98 + 32);
      v100 = *(v98 + 40);
    }

LABEL_87:
    MEMORY[0x1DA6F9910](v99, v100);

    v86 = v130;
    v87 = v131;
    v75 = v123;
    goto LABEL_88;
  }

  v44 = 0;
  v45 = 0;
  v120 = v17;
  v127 = v21;
  while (v42)
  {
LABEL_10:
    sub_1D5F23584(*(v123 + 48) + *(v125 + 72) * (__clz(__rbit64(v42)) | (v45 << 6)), v21, type metadata accessor for WebEmbedDataVisualization);
    sub_1D5F23584(v21, v17, type metadata accessor for WebEmbedDataVisualization);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v128 = v38;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5F2364C(v17, v122, type metadata accessor for GenericDataVisualization);
      v48 = v119;
      sub_1D5F23584(v21, v119, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D5F235EC(v48, type metadata accessor for WebEmbedDataVisualization);
        v49 = 0xE700000000000000;
        v50 = 0x636972656E6567;
      }

      else
      {
        v59 = *v48 >> 61;

        if (v59 <= 2)
        {
          if (v59)
          {
            if (v59 == 1)
            {
              v49 = 0xE800000000000000;
              v50 = 0x676E69646E617473;
            }

            else
            {
              v49 = 0xE700000000000000;
              v50 = 0x74656B63617262;
            }
          }

          else
          {
            v49 = 0xE500000000000000;
            v50 = 0x65726F6373;
          }
        }

        else if (v59 > 4)
        {
          if (v59 == 5)
          {
            v50 = 0x65527972756A6E69;
            v49 = 0xEC00000074726F70;
          }

          else
          {
            v49 = 0xE900000000000072;
            v50 = 0x6579616C5079656BLL;
          }
        }

        else if (v59 == 3)
        {
          v49 = 0xE800000000000000;
          v50 = 0x65726F6353786F62;
        }

        else
        {
          v50 = 0x726F6353656E696CLL;
          v49 = 0xE900000000000065;
        }
      }

      v130 = v50;
      v131 = v49;
      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      v51 = v122;
      MEMORY[0x1DA6F9910](*v122, v122[1]);
      v52 = v130;
      v53 = v131;
      sub_1D5F235EC(v51, type metadata accessor for GenericDataVisualization);
      goto LABEL_31;
    }

    v54 = *v17;
    v55 = v118;
    sub_1D5F23584(v21, v118, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D5F235EC(v55, type metadata accessor for WebEmbedDataVisualization);
      v56 = 0xE700000000000000;
      v57 = 0x636972656E6567;
    }

    else
    {
      v60 = *v55 >> 61;

      if (v60 <= 2)
      {
        if (v60)
        {
          if (v60 == 1)
          {
            v56 = 0xE800000000000000;
            v57 = 0x676E69646E617473;
          }

          else
          {
            v56 = 0xE700000000000000;
            v57 = 0x74656B63617262;
          }
        }

        else
        {
          v56 = 0xE500000000000000;
          v57 = 0x65726F6373;
        }
      }

      else if (v60 > 4)
      {
        if (v60 == 5)
        {
          v57 = 0x65527972756A6E69;
          v56 = 0xEC00000074726F70;
        }

        else
        {
          v56 = 0xE900000000000072;
          v57 = 0x6579616C5079656BLL;
        }
      }

      else if (v60 == 3)
      {
        v56 = 0xE800000000000000;
        v57 = 0x65726F6353786F62;
      }

      else
      {
        v57 = 0x726F6353656E696CLL;
        v56 = 0xE900000000000065;
      }
    }

    v130 = v57;
    v131 = v56;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v58 = v54 >> 61;
    if ((v54 >> 61) <= 2)
    {
      if (v58)
      {
        v61 = v54 & 0x1FFFFFFFFFFFFFFFLL;
        if (v58 != 1)
        {
          v70 = *(v61 + 16);
          sub_1D5E4CF90();

          v111[2] = v70;
          sub_1D725BE8C();
          v71 = v129[8];
          swift_unknownObjectRetain();

          if (v71 && (v72 = [v71 asSports], swift_unknownObjectRelease(), v72) && (v73 = objc_msgSend(v72, sel_UMCCanonicalID), swift_unknownObjectRelease(), v73))
          {
            v65 = sub_1D726207C();
            v64 = v74;
          }

          else
          {
            sub_1D725BE8C();
            v65 = v129[5];
            v64 = v129[6];
          }

          goto LABEL_30;
        }

        v62 = *(v61 + 16);
        v65 = *(v62 + 40);
        v64 = *(v62 + 48);
      }

      else
      {
        v69 = *(v54 + 16);
        v65 = *(v69 + 40);
        v64 = *(v69 + 48);
      }
    }

    else
    {
      v63 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *(v63 + 32);
      v64 = *(v63 + 40);
    }

LABEL_30:
    MEMORY[0x1DA6F9910](v65, v64);

    v52 = v130;
    v53 = v131;
LABEL_31:
    sub_1D5F235EC(v127, type metadata accessor for WebEmbedDataVisualization);
    v38 = v128;
    v132 = v128;
    v67 = *(v128 + 16);
    v66 = *(v128 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_1D5BFC364((v66 > 1), v67 + 1, 1);
      v38 = v132;
    }

    ++v44;
    v42 &= v42 - 1;
    *(v38 + 16) = v67 + 1;
    v68 = v38 + 16 * v67;
    *(v68 + 32) = v52;
    *(v68 + 40) = v53;
    v17 = v120;
    v21 = v127;
    v43 = v124;
    if (v44 == v121)
    {
      v75 = v123;
      if (v42)
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }
  }

  while (1)
  {
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v46 >= v43)
    {
      goto LABEL_119;
    }

    v42 = *(v39 + 8 * v46);
    ++v45;
    if (v42)
    {
      v45 = v46;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:

  __break(1u);
  return result;
}

uint64_t sub_1D5F1FC7C(uint64_t a1)
{
  v2 = v1;
  sub_1D725A76C();
  v4 = OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_lastFailedResponses;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (v6 = sub_1D6D62B84(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  sub_1D725A77C();
  return v8;
}

uint64_t sub_1D5F1FD24(uint64_t a1, uint64_t a2)
{
  v2 = &OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_genericTokenManager;
  if (!*(a2 + 16))
  {
    v2 = &OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_sportsTokenManager;
  }

  sub_1D5B68374(a1 + *v2, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v3 = sub_1D725B44C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D5F1FDD4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v62 = a4;
  v63 = a2;
  v67 = a1;
  v64 = sub_1D72577EC();
  v61 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v5);
  v60 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1D5B54408(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v68 = &v53 - v10;
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v59 = &v53 - v17;
  v18 = sub_1D7257B5C();
  v65 = *(v18 - 8);
  v66 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54408(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v7);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v53 - v24;
  v26 = sub_1D7257C7C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) + 24);
  sub_1D7257BCC();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1D5F237E8(v25, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    v32 = type metadata accessor for WebEmbedDataVisualizationDataServiceError();
    sub_1D5F23AEC(&qword_1EDF162E0, type metadata accessor for WebEmbedDataVisualizationDataServiceError);
    swift_allocError();
    (*(v12 + 16))(v33, a3 + v31, v11);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v56 = v11;
    v57 = a3;
    v34 = *(v27 + 32);
    v55 = v26;
    v34(v30, v25, v26);
    sub_1D7257BAC();
    sub_1D7257BBC();
    v35 = sub_1D7257B9C();
    if (*v36)
    {
      v37 = v36;
      v54 = v35;
      sub_1D725BF1C();
      sub_1D7257B2C();

      v38 = *v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_1D698BCB0(0, v38[2] + 1, 1, v38);
        *v37 = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_1D698BCB0(v40 > 1, v41 + 1, 1, v38);
        *v37 = v38;
      }

      v42 = v12;
      v38[2] = v41 + 1;
      (*(v65 + 32))(v38 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v41, v21, v66);
      v54(v69, 0);
    }

    else
    {
      v35(v69, 0);
      v42 = v12;
    }

    v43 = v68;
    sub_1D7257BDC();
    v44 = v56;
    v45 = (*(v42 + 48))(v43, 1, v56);
    v46 = v57;
    if (v45 == 1)
    {
      sub_1D5F237E8(v43, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v47 = v42;
      v32 = type metadata accessor for WebEmbedDataVisualizationDataServiceError();
      sub_1D5F23AEC(&qword_1EDF162E0, type metadata accessor for WebEmbedDataVisualizationDataServiceError);
      swift_allocError();
      (*(v47 + 16))(v48, v46 + v31, v44);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v49 = v59;
      (*(v42 + 32))(v59, v43, v44);
      (*(v42 + 16))(v58, v49, v44);
      v50 = v60;
      sub_1D72577AC();
      sub_1D72577DC();
      v51 = v42;
      v32 = sub_1D5F205A0(v46, v50, v62 & 1);
      (*(v61 + 8))(v50, v64);
      (*(v51 + 8))(v49, v44);
    }

    (*(v27 + 8))(v30, v55);
  }

  return v32;
}

uint64_t sub_1D5F205A0(uint64_t a1, uint64_t a2, int a3)
{
  v83 = a3;
  v86 = a2;
  v88 = *v3;
  v87 = sub_1D72577EC();
  v80 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v5);
  v85 = v6;
  v90 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725891C();
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v78 = v9;
  v79 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v89 = v70 - v12;
  v13 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13, v16);
  v77 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v70 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v70 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (v70 - v27);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725C42C();
  __swift_project_value_buffer(v29, qword_1EDF17598);
  sub_1D5F23584(a1, v28, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  sub_1D5F23584(a1, v24, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v84 = a1;
  sub_1D5F23584(a1, v20, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v30 = sub_1D725C3FC();
  v31 = sub_1D7262E9C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v13;
    v33 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v92[0] = v75;
    *v33 = 136446722;
    v76 = v14;
    v34 = *v28;
    v35 = v28[1];

    LODWORD(v74) = v31;
    sub_1D5F235EC(v28, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    v36 = sub_1D5BC5100(v34, v35, v92);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2082;
    v37 = sub_1D5F215E4(*&v24[*(v32 + 32)]);
    v39 = v38;
    sub_1D5F235EC(v24, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    v40 = sub_1D5BC5100(v37, v39, v92);

    *(v33 + 14) = v40;
    *(v33 + 22) = 2082;
    v14 = v76;
    sub_1D72585BC();
    sub_1D5F23AEC(&qword_1EDF18AC0, MEMORY[0x1E6968FB0]);
    v41 = sub_1D72644BC();
    v43 = v42;
    sub_1D5F235EC(v20, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    v44 = sub_1D5BC5100(v41, v43, v92);

    *(v33 + 24) = v44;
    _os_log_impl(&dword_1D5B42000, v30, v74, "WebEmbedDataVisualizationDataService executing fetch with identifier=%{public}s; visualizations=%{public}s, url=%{public}s", v33, 0x20u);
    v45 = v75;
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v45, -1, -1);
    MEMORY[0x1DA6FD500](v33, -1, -1);
  }

  else
  {

    sub_1D5F235EC(v20, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    sub_1D5F235EC(v28, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    sub_1D5F235EC(v24, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  }

  v46 = sub_1D725890C();
  MEMORY[0x1EEE9AC00](v46, v47);
  v48 = v86;
  v49 = v91;
  v70[-2] = v86;
  v70[-1] = v49;
  v50 = v49;
  sub_1D5F23530(0, &unk_1EDF17B38, MEMORY[0x1E69D68E0]);
  v70[1] = sub_1D725BDCC();
  v75 = *(v50 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_networkQueue);
  v51 = v77;
  sub_1D5F23584(v84, v77, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v52 = v80;
  v76 = *(v80 + 16);
  v53 = v48;
  v54 = v87;
  (v76)(v90, v53, v87);
  v55 = *(v14 + 80);
  v72 = (v55 + 16) & ~v55;
  v73 = v72 + v15;
  v56 = v72;
  v57 = *(v52 + 80);
  v58 = (v72 + v15 + v57) & ~v57;
  v74 = v55 | v57 | 7;
  v59 = swift_allocObject();
  v71 = type metadata accessor for WebEmbedDataVisualizationDataRequest;
  sub_1D5F2364C(v51, v59 + v56, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v80 = *(v52 + 32);
  v60 = v90;
  (v80)(v59 + v58, v90, v54);
  type metadata accessor for WebEmbedDataVisualizationDataResult(0);
  v70[2] = sub_1D725BA9C();

  sub_1D5F23584(v84, v51, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v62 = v81;
  v61 = v82;
  v63 = v79;
  (*(v81 + 16))(v79, v89, v82);
  (v76)(v60, v86, v54);
  v64 = (v73 + *(v62 + 80)) & ~*(v62 + 80);
  v65 = (v78 + v57 + v64) & ~v57;
  v66 = v65 + v85;
  v67 = swift_allocObject();
  sub_1D5F2364C(v51, v67 + v72, v71);
  (*(v62 + 32))(v67 + v64, v63, v61);
  (v80)(v67 + v65, v90, v87);
  *(v67 + v66) = v83 & 1;
  v68 = sub_1D725BB7C();

  (*(v62 + 8))(v89, v61);
  return v68;
}

uint64_t sub_1D5F20DFC(uint64_t a1)
{
  v2 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v59 = (v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for WebEmbedDataVisualization();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v56 = (v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v55 = (v54 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v54 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v54 - v18;
  v64 = 91;
  v65 = 0xE100000000000000;
  v20 = *(a1 + 16);
  v63 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v20, 0);
  v21 = v63;
  if (v20)
  {
    v22 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v57 = *(v6 + 72);
    v58 = v5;
    while (1)
    {
      sub_1D5F23584(v22, v19, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5F23584(v19, v15, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1D5F2364C(v15, v59, type metadata accessor for GenericDataVisualization);
      v23 = v56;
      sub_1D5F23584(v19, v56, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D5F235EC(v23, type metadata accessor for WebEmbedDataVisualization);
        v24 = 0xE700000000000000;
        v25 = 0x636972656E6567;
      }

      else
      {
        v34 = *v23 >> 61;

        if (v34 <= 2)
        {
          if (v34)
          {
            if (v34 == 1)
            {
              v24 = 0xE800000000000000;
              v25 = 0x676E69646E617473;
            }

            else
            {
              v24 = 0xE700000000000000;
              v25 = 0x74656B63617262;
            }
          }

          else
          {
            v24 = 0xE500000000000000;
            v25 = 0x65726F6373;
          }
        }

        else if (v34 > 4)
        {
          if (v34 == 5)
          {
            v25 = 0x65527972756A6E69;
            v24 = 0xEC00000074726F70;
          }

          else
          {
            v24 = 0xE900000000000072;
            v25 = 0x6579616C5079656BLL;
          }
        }

        else if (v34 == 3)
        {
          v24 = 0xE800000000000000;
          v25 = 0x65726F6353786F62;
        }

        else
        {
          v25 = 0x726F6353656E696CLL;
          v24 = 0xE900000000000065;
        }
      }

      v61 = v25;
      v62 = v24;
      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      v26 = v59;
      MEMORY[0x1DA6F9910](*v59, v59[1]);
      v27 = v61;
      v28 = v62;
      sub_1D5F235EC(v26, type metadata accessor for GenericDataVisualization);
LABEL_24:
      sub_1D5F235EC(v19, type metadata accessor for WebEmbedDataVisualization);
      v63 = v21;
      v42 = *(v21 + 16);
      v41 = *(v21 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D5BFC364((v41 > 1), v42 + 1, 1);
        v21 = v63;
      }

      *(v21 + 16) = v42 + 1;
      v43 = v21 + 16 * v42;
      *(v43 + 32) = v27;
      *(v43 + 40) = v28;
      v22 += v57;
      if (!--v20)
      {
        goto LABEL_52;
      }
    }

    v29 = *v15;
    v30 = v55;
    sub_1D5F23584(v19, v55, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D5F235EC(v30, type metadata accessor for WebEmbedDataVisualization);
      v31 = 0xE700000000000000;
      v32 = 0x636972656E6567;
    }

    else
    {
      v35 = *v30 >> 61;

      if (v35 <= 2)
      {
        if (v35)
        {
          if (v35 == 1)
          {
            v31 = 0xE800000000000000;
            v32 = 0x676E69646E617473;
          }

          else
          {
            v31 = 0xE700000000000000;
            v32 = 0x74656B63617262;
          }
        }

        else
        {
          v31 = 0xE500000000000000;
          v32 = 0x65726F6373;
        }
      }

      else if (v35 > 4)
      {
        if (v35 == 5)
        {
          v32 = 0x65527972756A6E69;
          v31 = 0xEC00000074726F70;
        }

        else
        {
          v31 = 0xE900000000000072;
          v32 = 0x6579616C5079656BLL;
        }
      }

      else if (v35 == 3)
      {
        v31 = 0xE800000000000000;
        v32 = 0x65726F6353786F62;
      }

      else
      {
        v32 = 0x726F6353656E696CLL;
        v31 = 0xE900000000000065;
      }
    }

    v61 = v32;
    v62 = v31;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v33 = v29 >> 61;
    if ((v29 >> 61) <= 2)
    {
      if (v33)
      {
        v36 = v29 & 0x1FFFFFFFFFFFFFFFLL;
        if (v33 != 1)
        {
          v45 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;
          sub_1D5E4CF90();

          v54[1] = v45;
          sub_1D725BE8C();
          v46 = v60[8];
          swift_unknownObjectRetain();

          if (v46 && (v47 = [v46 asSports], swift_unknownObjectRelease(), v47) && (v48 = objc_msgSend(v47, sel_UMCCanonicalID), swift_unknownObjectRelease(), v48))
          {
            v40 = sub_1D726207C();
            v39 = v49;
          }

          else
          {
            sub_1D725BE8C();
            v40 = v60[5];
            v39 = v60[6];
          }

          goto LABEL_23;
        }

        v37 = *(v36 + 16);
        v40 = *(v37 + 40);
        v39 = *(v37 + 48);
      }

      else
      {
        v44 = *(v29 + 16);
        v40 = *(v44 + 40);
        v39 = *(v44 + 48);
      }
    }

    else
    {
      v38 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *(v38 + 32);
      v39 = *(v38 + 40);
    }

LABEL_23:
    MEMORY[0x1DA6F9910](v40, v39);

    v27 = v61;
    v28 = v62;
    goto LABEL_24;
  }

LABEL_52:
  v61 = v21;

  sub_1D5F81CCC(&v61);

  sub_1D5F23530(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v50 = sub_1D7261F3C();
  v52 = v51;

  MEMORY[0x1DA6F9910](v50, v52);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  return v64;
}

uint64_t sub_1D5F215E4(uint64_t a1)
{
  v6 = 91;
  v7 = 0xE100000000000000;
  v5 = sub_1D5F1ED9C(a1);

  sub_1D5F81CCC(&v5);

  sub_1D5F23530(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v1 = sub_1D7261F3C();
  v3 = v2;

  MEMORY[0x1DA6F9910](v1, v3);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  return v6;
}

uint64_t sub_1D5F216E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725AA5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D72577EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725AC4C();
  (*(v10 + 16))(v13, a1, v9);
  (*(v5 + 16))(v8, a2 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_networkProxy, v4);
  sub_1D5F23858();
  v15 = objc_allocWithZone(v14);
  v16 = sub_1D725B6CC();
  v17 = sub_1D725AC1C();

  return v17;
}

uint64_t sub_1D5F218A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v66 = a2;
  v74 = a3;
  v67 = type metadata accessor for WebEmbedDataVisualizationDataResult(0);
  MEMORY[0x1EEE9AC00](v67, v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725B2CC();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v68 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B54408(0, &qword_1EDF18B00, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v61 - v13;
  v73 = sub_1D72577EC();
  v15 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v16);
  v72 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D72585BC();
  v18 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v19);
  v75 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54408(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v10);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v61 - v27;
  sub_1D5F23530(0, &unk_1EDF17B38, MEMORY[0x1E69D68E0]);
  v29 = sub_1D725B58C();
  if (!v29)
  {
LABEL_7:
    type metadata accessor for WebEmbedDataVisualizationDataServiceError();
    sub_1D5F23AEC(&qword_1EDF162E0, type metadata accessor for WebEmbedDataVisualizationDataServiceError);
    swift_allocError();
    v38 = v37;
    v39 = sub_1D725B58C();
    if (v39)
    {
      v40 = v39;
      v41 = [v39 URL];

      if (v41)
      {
        sub_1D72584EC();

        v42 = *(v18 + 56);
        v43 = v24;
        v44 = 0;
      }

      else
      {
        v42 = *(v18 + 56);
        v43 = v24;
        v44 = 1;
      }

      v45 = v78;
      v42(v43, v44, 1, v78);
      sub_1D5EB8540(v24, v28);
      if ((*(v18 + 48))(v28, 1, v45) != 1)
      {
        (*(v18 + 32))(v38, v28, v45);
LABEL_21:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return v45;
      }
    }

    else
    {
      v45 = v78;
      (*(v18 + 56))(v28, 1, 1, v78);
    }

    v59 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
    (*(v18 + 16))(v38, v74 + *(v59 + 24), v45);
    if ((*(v18 + 48))(v28, 1, v45) != 1)
    {
      sub_1D5F237E8(v28, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    }

    goto LABEL_21;
  }

  v30 = v29;
  objc_opt_self();
  v71 = swift_dynamicCastObjCClass();
  if (!v71)
  {

    goto LABEL_7;
  }

  v31 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) + 24);
  v63 = v18;
  v32 = *(v18 + 16);
  v33 = v74 + v31;
  v74 = v18 + 16;
  v62 = v32;
  v32(v75, v33, v78);
  sub_1D725B57C();
  v34 = *(v15 + 48);
  v35 = v73;
  v36 = v34(v14, 1, v73);
  v64 = v15;
  if (v36 == 1)
  {
    (*(v15 + 16))(v72, v65, v35);
    if (v34(v14, 1, v35) != 1)
    {
      sub_1D5F237E8(v14, &qword_1EDF18B00, MEMORY[0x1E6967EC8]);
    }
  }

  else
  {
    (*(v15 + 32))(v72, v14, v35);
  }

  sub_1D725B56C();
  v65 = v76;
  v61 = v77;
  sub_1D725A76C();
  swift_beginAccess();
  sub_1D5F22E5C(v75);
  swift_endAccess();

  sub_1D725A77C();
  v46 = v30;
  v47 = v68;
  sub_1D725B2BC();
  sub_1D725B2AC();
  v48 = v63;
  if (v49)
  {
    v50 = 60;
  }

  else
  {
    v50 = sub_1D7264BAC();
  }

  v51 = v64;
  v52 = v67;
  v53 = &v6[*(v67 + 24)];
  v54 = v6;
  v55 = v75;
  v62(v53, v75, v78);
  v57 = v72;
  v56 = v73;
  (*(v51 + 16))(&v54[*(v52 + 28)], v72, v73);
  v58 = v61;
  *v54 = v65;
  *(v54 + 1) = v58;
  *(v54 + 2) = v50;
  *&v54[*(v52 + 32)] = v71;
  sub_1D5B54408(0, &qword_1EDF17A78, type metadata accessor for WebEmbedDataVisualizationDataResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v45 = sub_1D725BB1C();
  (*(v69 + 8))(v47, v70);
  (*(v51 + 8))(v57, v56);
  (*(v48 + 8))(v55, v78);
  return v45;
}

uint64_t sub_1D5F220A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v83 = a6;
  v91 = a4;
  v92 = a5;
  v94 = a3;
  v99 = a2;
  v90 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v80 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v7);
  v81 = v8;
  v82 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54408(0, &qword_1EDF17B00, MEMORY[0x1E69D6950], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v93 = &v79 - v11;
  v101 = sub_1D72577EC();
  v88 = *(v101 - 1);
  MEMORY[0x1EEE9AC00](v101, v12);
  v100 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725891C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D725B2CC();
  v98 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D725B72C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v84 = (&v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v28);
  v85 = &v79 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v79 - v32);
  v102 = a1;
  v89 = a1;
  v34 = a1;
  v87 = sub_1D5BA6EF4();
  v35 = swift_dynamicCast();
  v36 = MEMORY[0x1E69D6948];
  v95 = v24;
  v96 = v23;
  if (v35)
  {
    if ((*(v24 + 88))(v33, v23) == *v36)
    {
      (*(v24 + 96))(v33, v23);
      v37 = *v33;
      sub_1D725B2BC();
      sub_1D725B2AC();
      v39 = v38;
      if (v38)
      {

        v40 = 0;
      }

      else
      {
        v40 = sub_1D7264BAC();
      }

      v97 = v40;
      (*(v98 + 8))(v22, v19);
      LODWORD(v98) = v39;
      goto LABEL_9;
    }

    (*(v24 + 8))(v33, v23);
  }

  v97 = 0;
  LODWORD(v98) = 1;
LABEL_9:

  v41 = v99;
  v86 = *(v99 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_lock);
  sub_1D725A76C();
  v90 = *(v90 + 24);
  v42 = *(v15 + 16);
  v43 = v14;
  v42(v18, v91, v14);
  v44 = v88;
  (*(v88 + 16))(v100, v92, v101);
  type metadata accessor for WebEmbedDataVisualizationDataServiceFailure();
  v45 = swift_allocObject();
  v46 = v89;
  *(v45 + 16) = v89;
  v42((v45 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_fetchDate), v18, v43);
  v47 = v46;
  sub_1D725890C();
  (*(v15 + 8))(v18, v43);
  (*(v44 + 32))(v45 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_request, v100, v101);
  v48 = v45 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_maxAge;
  *v48 = v97;
  *(v48 + 8) = v98 & 1;
  v49 = OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_lastFailedResponses;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v103 = *(v41 + v49);
  *(v41 + v49) = 0x8000000000000000;
  v51 = v94;
  sub_1D6D78410(v45, v94 + v90, isUniquelyReferenced_nonNull_native);
  *(v41 + v49) = v103;
  swift_endAccess();
  sub_1D725A77C();
  v52 = v46;
  v102 = v46;
  v53 = v46;
  v54 = v93;
  v55 = v96;
  v56 = swift_dynamicCast();
  v57 = v95;
  v58 = *(v95 + 56);
  if (v56)
  {
    v58(v54, 0, 1, v55);
    v59 = v85;
    (*(v57 + 32))(v85, v54, v55);
    v60 = *(v57 + 16);
    v61 = v84;
    v60(v84, v59, v55);
    if ((*(v57 + 88))(v61, v55) == *MEMORY[0x1E69D6948])
    {
      (*(v57 + 96))(v61, v55);
      v62 = *v61;
      if ([v62 statusCode] == 403 && (v83 & 1) != 0)
      {
        MEMORY[0x1EEE9AC00](403, v63);
        *(&v79 - 2) = v99;
        *(&v79 - 1) = v51;
        sub_1D72585BC();
        sub_1D725BDCC();
        v64 = v51;
        v65 = v82;
        sub_1D5F23584(v64, v82, type metadata accessor for WebEmbedDataVisualizationDataRequest);
        v66 = (*(v80 + 80) + 16) & ~*(v80 + 80);
        v67 = swift_allocObject();
        sub_1D5F2364C(v65, v67 + v66, type metadata accessor for WebEmbedDataVisualizationDataRequest);
        v68 = v57;
        v69 = sub_1D725B92C();
        type metadata accessor for WebEmbedDataVisualizationDataResult(0);
        type metadata accessor for WebEmbedDataVisualizationDataService(0);
        v51 = sub_1D725BA9C();

        (*(v68 + 8))(v59, v55);
      }

      else
      {
        type metadata accessor for WebEmbedDataVisualizationDataServiceError();
        sub_1D5F23AEC(&qword_1EDF162E0, type metadata accessor for WebEmbedDataVisualizationDataServiceError);
        swift_allocError();
        v51 = v76;
        v77 = [v62 statusCode];
        *v51 = v97;
        *(v51 + 8) = v98 & 1;
        *(v51 + 16) = v77;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v57 + 8))(v59, v55);
      }
    }

    else
    {
      v101 = *(v57 + 8);
      v101(v61, v55);
      type metadata accessor for WebEmbedDataVisualizationDataServiceError();
      sub_1D5F23AEC(&qword_1EDF162E0, type metadata accessor for WebEmbedDataVisualizationDataServiceError);
      swift_allocError();
      v73 = v72;
      sub_1D5F23AEC(&qword_1EC881078, MEMORY[0x1E69D6950]);
      v51 = swift_allocError();
      v74 = v85;
      v60(v75, v85, v55);
      *v73 = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v101(v74, v55);
    }
  }

  else
  {
    v58(v54, 1, 1, v55);
    sub_1D5F237E8(v54, &qword_1EDF17B00, MEMORY[0x1E69D6950]);
    type metadata accessor for WebEmbedDataVisualizationDataServiceError();
    sub_1D5F23AEC(&qword_1EDF162E0, type metadata accessor for WebEmbedDataVisualizationDataServiceError);
    swift_allocError();
    *v70 = v52;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v71 = v52;
  }

  return v51;
}

uint64_t sub_1D5F22BEC(uint64_t a1, uint64_t a2)
{
  v2 = &OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_genericTokenManager;
  if (!*(a2 + 16))
  {
    v2 = &OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_sportsTokenManager;
  }

  sub_1D5B68374(a1 + *v2, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v3 = sub_1D725B43C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D5F22C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v15 = a2;
  v16 = a3;
  sub_1D725BF2C();
  sub_1D725BDCC();
  sub_1D5F23584(a3, &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_1D5F2364C(&v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  *(v10 + v9 + v7) = 0;
  v11 = sub_1D725B92C();
  type metadata accessor for WebEmbedDataVisualizationDataResult(0);
  type metadata accessor for WebEmbedDataVisualizationDataService(0);
  v12 = sub_1D725BA9C();

  return v12;
}

uint64_t sub_1D5F22E5C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D6D62B84(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D6D7FF3C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_1D72585BC();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1D6713B30(v5, v7);
  *v2 = v7;
  return v10;
}

double sub_1D5F22F24@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D5B91830(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D86960();
      v9 = v11;
    }

    sub_1D5B808F0(*(v9 + 56) + 16 * v7, a2);
    sub_1D671588C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1D7279980;
  }

  return result;
}

uint64_t sub_1D5F22FBC()
{
  v1 = OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_networkProxy;
  v2 = sub_1D725AA5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_sportsTokenManager);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_genericTokenManager);

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F230B0(uint64_t a1)
{
  v3 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v13 = *v1;
  v14 = a1;
  sub_1D725BF2C();
  sub_1D725BDCC();
  sub_1D5F23584(a1, &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for WebEmbedDataVisualizationDataRequest);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1D5F2364C(&v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  *(v8 + v7 + v5) = 1;
  v9 = sub_1D725B92C();
  type metadata accessor for WebEmbedDataVisualizationDataResult(0);
  v10 = sub_1D725BA9C();

  return v10;
}

uint64_t sub_1D5F232F4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1D72577EC() - 8);
  return sub_1D5F218A0(a1, a2, v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

uint64_t sub_1D5F233D4(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1D725891C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D72577EC() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  return sub_1D5F220A0(a1, a2, v2 + v6, v2 + v9, v2 + v12, *(v2 + v12 + *(v11 + 64)));
}

void sub_1D5F23530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5F23584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F235EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5F2364C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F2374C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D5F1FDD4(a1, a2, v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_1D5F237E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B54408(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D5F23858()
{
  if (!qword_1EDF17B08)
  {
    sub_1D725B39C();
    v0 = sub_1D725B6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17B08);
    }
  }
}

unint64_t sub_1D5F238E0()
{
  result = sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    result = sub_1D72577EC();
    if (v2 <= 0x3F)
    {
      result = sub_1D5B60C04();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D5F239BC()
{
  sub_1D72585BC();
  if (v0 <= 0x3F)
  {
    sub_1D5F23A58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5F23A58()
{
  if (!qword_1EDF04808)
  {
    type metadata accessor for WebEmbedDataVisualization();
    sub_1D5F23AEC(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization);
    v0 = sub_1D7262BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04808);
    }
  }
}

uint64_t sub_1D5F23AEC(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL static FormatSupplementaryNodeRubberbandTrait.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

BOOL sub_1D5F23BEC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t FormatSupplementaryNodeRubberbandTraitTransform.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5F23CD4(uint64_t a1)
{
  result = sub_1D5F23CFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F23CFC()
{
  result = qword_1EC881080;
  if (!qword_1EC881080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881080);
  }

  return result;
}

unint64_t sub_1D5F23D90()
{
  result = qword_1EDF1C9E8;
  if (!qword_1EDF1C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C9E8);
  }

  return result;
}

unint64_t sub_1D5F23DE4()
{
  result = qword_1EDF06620;
  if (!qword_1EDF06620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06620);
  }

  return result;
}

unint64_t sub_1D5F23E38()
{
  result = qword_1EC881088;
  if (!qword_1EC881088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881088);
  }

  return result;
}

unint64_t sub_1D5F23E90()
{
  result = qword_1EC881090;
  if (!qword_1EC881090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881090);
  }

  return result;
}

unint64_t sub_1D5F23EE4(uint64_t a1)
{
  result = sub_1D5F23F0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F23F0C()
{
  result = qword_1EC881098;
  if (!qword_1EC881098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881098);
  }

  return result;
}

uint64_t sub_1D5F23FA0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F23FF4()
{
  result = qword_1EDF05FE8;
  if (!qword_1EDF05FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05FE8);
  }

  return result;
}

unint64_t sub_1D5F24048()
{
  result = qword_1EC8810A0;
  if (!qword_1EC8810A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8810A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatSupplementaryNodeRubberbandTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FormatSupplementaryNodeRubberbandTrait(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D5F24254(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D5F24268(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void *sub_1D5F24298(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 == 2)
  {
    v12 = MEMORY[0x1E69E6F90];
    sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v5 = inited + 32;
    sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v12);
    sub_1D5EA74B8();
    v7 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v10 = 0x45206F54206E6950;
    v11 = 0xEB00000000656764;
    v9 = (v8 + v7);
    goto LABEL_5;
  }

  if (v2 == 3)
  {
    v3 = MEMORY[0x1E69E6F90];
    sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v5 = inited + 32;
    sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v3);
    sub_1D5EA74B8();
    v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v9 = (v8 + v7);
    v10 = 1701736270;
    v11 = 0xE400000000000000;
LABEL_5:
    sub_1D711F844(1701869908, 0xE400000000000000, v10, v11, v9);
    v14 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v14 - 8) + 56))(v8 + v7, 0, 1, v14);
    sub_1D6795150(0x6162726562627552, 0xEA0000000000646ELL, 0, 0, v8, v28);
    swift_setDeallocating();
    sub_1D5EF5F0C(v8 + v7, sub_1D5EA74B8);
    goto LABEL_10;
  }

  v15 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v5 = inited + 32;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v15);
  sub_1D5EA74B8();
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7270C10;
  v20 = (v19 + v18);
  sub_1D711F844(1701869908, 0xE400000000000000, 0xD000000000000011, 0x80000001D73C2550, v20);
  v21 = type metadata accessor for FormatInspectionItem(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 0, 1, v21);
  if (v2)
  {
    v23 = 0xEB00000000592065;
  }

  else
  {
    v23 = 0xE900000000000065;
  }

  sub_1D711F844(0x726F66736E617254, 0xE90000000000006DLL, 0x6C61635320706F54, v23, (v20 + v17));
  v22((v20 + v17), 0, 1, v21);
  sub_1D6795150(0x6162726562627552, 0xEA0000000000646ELL, 0, 0, v19, v28);
  swift_setDeallocating();
  swift_arrayDestroy();
LABEL_10:
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v24 = swift_allocObject();
  *(inited + 32) = v24;
  *(v24 + 48) = v29;
  v25 = v28[1];
  *(v24 + 16) = v28[0];
  *(v24 + 32) = v25;
  v26 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5EF5F0C(v5, sub_1D5E4F358);
  return v26;
}

void sub_1D5F24888(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for DebugFormatLayoutTreePackage();
  sub_1D5F25C74(&qword_1EC8810A8, type metadata accessor for DebugFormatLayoutTreePackage);
  sub_1D7260F9C();
  swift_getKeyPath();
  sub_1D7260FAC();

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  sub_1D5F25F40(0, &qword_1EC8810B0, sub_1D5F256CC, sub_1D5F25A44);
  sub_1D5F26288(0, &qword_1EC881100, sub_1D5F25AF4, MEMORY[0x1E69E6720]);
  sub_1D5F25CBC();
  sub_1D5F25DCC();

  sub_1D7260FFC();
  sub_1D726185C();
  v10 = sub_1D726199C();
  sub_1D5F25F40(0, &qword_1EC881158, sub_1D5F25FB4, sub_1D5F260A0);
  *(a5 + *(v11 + 36)) = v10;
}

uint64_t sub_1D5F24AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D5F25AF4();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v23 >> 62)
  {
    v20 = sub_1D7263BFC();

    if (v20)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 1;
    return (*(v12 + 56))(a5, v19, 1, v11);
  }

  v16 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v16)
  {
    goto LABEL_5;
  }

LABEL_3:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  sub_1D5F26288(0, &qword_1EC881110, type metadata accessor for DebugFormatLayoutTreeItem, MEMORY[0x1E69E62F8]);
  v22 = v18;
  sub_1D725895C();
  sub_1D5F25BEC();
  sub_1D5F25EEC();
  sub_1D5F25C74(&qword_1EC881180, type metadata accessor for DebugFormatLayoutTreeItem);

  sub_1D72619EC();
  (*(v12 + 32))(a5, v15, v11);
  v19 = 0;
  return (*(v12 + 56))(a5, v19, 1, v11);
}

uint64_t sub_1D5F24DFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DebugFormatLayoutTree();
  sub_1D5F25C74(&qword_1EC881188, type metadata accessor for DebugFormatLayoutTree);

  v2 = sub_1D7260F8C();
  v4 = v3;
  type metadata accessor for DebugFormatLayoutTreeItem();
  sub_1D5F25C74(&qword_1EC881190, type metadata accessor for DebugFormatLayoutTreeItem);
  result = sub_1D7260F8C();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  return result;
}

double sub_1D5F24EF8@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = sub_1D72611CC();
  v19 = 1;
  sub_1D5F25058(a1, &v11);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v27[6] = v17;
  sub_1D5F26134(&v20, &v10);
  sub_1D5F262EC(v27, &qword_1EC8810C0, sub_1D5F25780, MEMORY[0x1E6981F40]);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[103] = v26;
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  v5 = *&v18[80];
  *(a2 + 81) = *&v18[64];
  *(a2 + 97) = v5;
  *(a2 + 113) = *&v18[96];
  v6 = *&v18[16];
  *(a2 + 17) = *v18;
  *(a2 + 33) = v6;
  result = *&v18[32];
  v8 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  v9 = v19;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 128) = *&v18[111];
  *(a2 + 65) = v8;
  *(a2 + 136) = 0;
  return result;
}

uint64_t sub_1D5F25058@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = sub_1D72618CC();
  v5 = sub_1D726188C();
  KeyPath = swift_getKeyPath();
  v7 = sub_1D726125C();
  LOBYTE(v20[0]) = 1;
  sub_1D5F25220(a1, v16);
  *&v15[55] = v17;
  *&v15[39] = v16[2];
  *&v15[23] = v16[1];
  *&v15[7] = v16[0];
  v8 = v20[0];
  v18 = v7;
  v19[0] = v20[0];
  v9 = *&v15[16];
  *&v19[1] = *v15;
  *&v19[64] = *(&v17 + 1);
  *&v19[49] = *&v15[48];
  v10 = *&v15[32];
  *&v19[33] = *&v15[32];
  v11 = *v15;
  *&v19[17] = *&v15[16];
  *(a2 + 40) = *v19;
  *(a2 + 24) = v7;
  *(a2 + 88) = *&v19[48];
  v12 = *&v19[16];
  *(a2 + 72) = *&v19[32];
  *(a2 + 56) = v12;
  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v5;
  *(a2 + 104) = *&v19[64];
  v20[0] = v7;
  v20[1] = 0;
  v21 = v8;
  v22 = v11;
  *&v25[15] = *&v15[63];
  *v25 = *&v15[48];
  v24 = v10;
  v23 = v9;

  sub_1D5F261C8(&v18, &v14);
  sub_1D5F2622C(v20);
}

uint64_t sub_1D5F25220@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v62 = a2;
  sub_1D5F26288(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v52 - v5;
  v61 = *(a1 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage_layoutResult);
  v7 = *(v61 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_inventory);
  v8 = (v7 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v9 = *(v7 + 16);
  }

  v64 = v9;
  v65 = v10;
  v57 = sub_1D5BF4D9C();

  v11 = sub_1D726171C();
  v13 = v12;
  v15 = v14;
  v55 = sub_1D726163C();
  v16 = *(v55 - 8);
  v54 = *(v16 + 56);
  v56 = v16 + 56;
  v54(v6, 1, 1, v55);
  sub_1D726167C();
  v53 = MEMORY[0x1E6980E30];
  v52 = MEMORY[0x1E69E6720];
  sub_1D5F262EC(v6, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  v17 = sub_1D72616DC();
  v19 = v18;
  v21 = v20;

  sub_1D5F26348(v11, v13, v15 & 1);

  sub_1D726187C();
  v22 = sub_1D72616BC();
  v59 = v23;
  v60 = v22;
  v25 = v24;
  v58 = v26;

  sub_1D5F26348(v17, v19, v21 & 1);

  v27 = *(v61 + 24);
  v64 = *(v61 + 16);
  v65 = v27;

  v28 = sub_1D726171C();
  v30 = v29;
  LOBYTE(v17) = v31;
  v54(v6, 1, 1, v55);
  sub_1D726167C();
  sub_1D5F262EC(v6, &qword_1EC881178, v53, v52);
  v32 = sub_1D72616DC();
  v34 = v33;
  v36 = v35;

  sub_1D5F26348(v28, v30, v17 & 1);

  v37 = sub_1D72616AC();
  v39 = v38;
  LOBYTE(v17) = v40;
  sub_1D5F26348(v32, v34, v36 & 1);

  sub_1D726188C();
  v41 = sub_1D72616BC();
  v43 = v42;
  LOBYTE(v34) = v44;
  v46 = v45;

  sub_1D5F26348(v37, v39, v17 & 1);

  v47 = v58 & 1;
  v63 = v58 & 1;
  LOBYTE(v64) = v58 & 1;
  LOBYTE(v37) = v34 & 1;
  v66 = v34 & 1;
  v48 = v62;
  v49 = v59;
  v50 = v60;
  *v62 = v60;
  v48[1] = v25;
  *(v48 + 16) = v47;
  v48[3] = v49;
  v48[4] = v41;
  v48[5] = v43;
  *(v48 + 48) = v37;
  v48[7] = v46;
  sub_1D5F26358(v50, v25, v47);

  sub_1D5F26358(v41, v43, v37);

  sub_1D5F26348(v41, v43, v37);

  sub_1D5F26348(v50, v25, v63);
}

void sub_1D5F256CC()
{
  if (!qword_1EC8810B8)
  {
    sub_1D5F26288(255, &qword_1EC8810C0, sub_1D5F25780, MEMORY[0x1E6981F40]);
    sub_1D5F259E0(&qword_1EC8810F0, &qword_1EC8810C0, sub_1D5F25780);
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8810B8);
    }
  }
}

void sub_1D5F25780()
{
  if (!qword_1EC8810C8)
  {
    sub_1D5F257F0();
    sub_1D5F258D0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8810C8);
    }
  }
}

void sub_1D5F257F0()
{
  if (!qword_1EC87E040)
  {
    sub_1D5F26288(255, &qword_1EC87E048, sub_1D5F25880, MEMORY[0x1E6980A08]);
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87E040);
    }
  }
}

void sub_1D5F25880()
{
  if (!qword_1EC87E050)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87E050);
    }
  }
}

void sub_1D5F258D0()
{
  if (!qword_1EC8810D0)
  {
    sub_1D5F26288(255, &qword_1EC8810D8, sub_1D5F25984, MEMORY[0x1E6981F40]);
    sub_1D5F259E0(&qword_1EC8810E8, &qword_1EC8810D8, sub_1D5F25984);
    v0 = sub_1D726198C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8810D0);
    }
  }
}

void sub_1D5F25984()
{
  if (!qword_1EC8810E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8810E0);
    }
  }
}

uint64_t sub_1D5F259E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5F26288(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5F25A44()
{
  if (!qword_1EC89AE80)
  {
    sub_1D5F25AA0();
    v0 = sub_1D726140C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89AE80);
    }
  }
}

unint64_t sub_1D5F25AA0()
{
  result = qword_1EC8810F8;
  if (!qword_1EC8810F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8810F8);
  }

  return result;
}

void sub_1D5F25AF4()
{
  if (!qword_1EC881108)
  {
    sub_1D5F26288(255, &qword_1EC881110, type metadata accessor for DebugFormatLayoutTreeItem, MEMORY[0x1E69E62F8]);
    sub_1D725895C();
    sub_1D5F25BEC();
    sub_1D5F25C74(&qword_1EC881120, MEMORY[0x1E69695A8]);
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881108);
    }
  }
}

unint64_t sub_1D5F25BEC()
{
  result = qword_1EC881118;
  if (!qword_1EC881118)
  {
    sub_1D5F26288(255, &qword_1EC881110, type metadata accessor for DebugFormatLayoutTreeItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881118);
  }

  return result;
}

uint64_t sub_1D5F25C74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5F25CBC()
{
  result = qword_1EC881128;
  if (!qword_1EC881128)
  {
    sub_1D5F25F40(255, &qword_1EC8810B0, sub_1D5F256CC, sub_1D5F25A44);
    sub_1D5F25C74(&qword_1EC881130, sub_1D5F256CC);
    sub_1D5F25C74(&qword_1EC881138, sub_1D5F25A44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881128);
  }

  return result;
}

unint64_t sub_1D5F25DCC()
{
  result = qword_1EC881140;
  if (!qword_1EC881140)
  {
    sub_1D5F26288(255, &qword_1EC881100, sub_1D5F25AF4, MEMORY[0x1E69E6720]);
    sub_1D5F25E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881140);
  }

  return result;
}

unint64_t sub_1D5F25E74()
{
  result = qword_1EC881148;
  if (!qword_1EC881148)
  {
    sub_1D5F25AF4();
    sub_1D5F25EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881148);
  }

  return result;
}

unint64_t sub_1D5F25EEC()
{
  result = qword_1EC881150;
  if (!qword_1EC881150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881150);
  }

  return result;
}

void sub_1D5F25F40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5F25FB4()
{
  if (!qword_1EC881160)
  {
    sub_1D5F25F40(255, &qword_1EC8810B0, sub_1D5F256CC, sub_1D5F25A44);
    sub_1D5F26288(255, &qword_1EC881100, sub_1D5F25AF4, MEMORY[0x1E69E6720]);
    sub_1D5F25CBC();
    sub_1D5F25DCC();
    v0 = sub_1D726100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881160);
    }
  }
}

void sub_1D5F260A0()
{
  if (!qword_1EC881168)
  {
    sub_1D72614BC();
    sub_1D5F25C74(&qword_1EC881170, MEMORY[0x1E697C9E8]);
    v0 = sub_1D726141C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881168);
    }
  }
}

uint64_t sub_1D5F26134(uint64_t a1, uint64_t a2)
{
  sub_1D5F26288(0, &qword_1EC8810C0, sub_1D5F25780, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F261C8(uint64_t a1, uint64_t a2)
{
  sub_1D5F258D0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F2622C(uint64_t a1)
{
  sub_1D5F258D0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5F26288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5F262EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D5F26288(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D5F26348(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D5F26358(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1D5F26374()
{
  result = qword_1EC881198;
  if (!qword_1EC881198)
  {
    sub_1D5F25F40(255, &qword_1EC881158, sub_1D5F25FB4, sub_1D5F260A0);
    sub_1D5F25C74(&qword_1EC8811A0, sub_1D5F25FB4);
    sub_1D5F25C74(&qword_1EC8811A8, sub_1D5F260A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881198);
  }

  return result;
}

uint64_t type metadata accessor for FormatSharedItemData()
{
  result = qword_1EDF0EDE0;
  if (!qword_1EDF0EDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5F264D0()
{
  result = type metadata accessor for SharedItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5F26530()
{
  v1 = type metadata accessor for SharedItem();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatSharedItemData();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF2EB38 != -1)
  {
    swift_once();
  }

  sub_1D5F267D0(v0, v8, type metadata accessor for FormatSharedItemData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D5F2676C(v8, v4);
  if (EnumCaseMultiPayload == 1)
  {
    SharedItemManager.hideContextMenuItem(for:)(v14);
  }

  else
  {
    SharedItemManager.replyContextMenuItem(for:)(v4, v14);
  }

  sub_1D5F268F4(v4, type metadata accessor for SharedItem);
  sub_1D5F267D0(v14, v12, sub_1D5F26838);
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v10 = sub_1D725DF5C();
    sub_1D5F268F4(v14, sub_1D5F26838);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1D5F268F4(v14, sub_1D5F26838);
    sub_1D5F268F4(v12, sub_1D5F26838);
    return 0;
  }

  return v10;
}

uint64_t sub_1D5F2676C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F267D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D5F26838()
{
  if (!qword_1EDF3B530)
  {
    sub_1D5F26890();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B530);
    }
  }
}

unint64_t sub_1D5F26890()
{
  result = qword_1EDF3B540;
  if (!qword_1EDF3B540)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3B540);
  }

  return result;
}

uint64_t sub_1D5F268F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s8NewsFeed27FormatImageAdjustmentFilterO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    switch(*&v2)
    {
      case 1:
        if (*&v3 != 1)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if (*&v3 != 2)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if (*&v3 != 3)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if (*&v3 != 4)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if (*&v3 != 5)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if (*&v3 != 6)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if (*&v3 != 7)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if (*&v3 != 8)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if (*&v3 != 9)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xALL:
        if (*&v3 != 10)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xBLL:
        if (*&v3 != 11)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xCLL:
        if (*&v3 != 12)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xDLL:
        if (*&v3 != 13)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xELL:
        if (*&v3 != 14)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xFLL:
        if (*&v3 <= 0xEuLL)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if (v3 != 0.0)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (*(a2 + 8) & 1) == 0 && v2 == v3;
  }

  return result;
}

unint64_t sub_1D5F26B28(uint64_t a1)
{
  result = sub_1D5F26B50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F26B50()
{
  result = qword_1EC8811B0;
  if (!qword_1EC8811B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811B0);
  }

  return result;
}

unint64_t sub_1D5F26BA4(void *a1)
{
  a1[1] = sub_1D5F26BDC();
  a1[2] = sub_1D5F26C30();
  result = sub_1D5F26C84();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F26BDC()
{
  result = qword_1EDF225F8;
  if (!qword_1EDF225F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF225F8);
  }

  return result;
}

unint64_t sub_1D5F26C30()
{
  result = qword_1EDF0AFF8;
  if (!qword_1EDF0AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AFF8);
  }

  return result;
}

unint64_t sub_1D5F26C84()
{
  result = qword_1EC8811B8;
  if (!qword_1EC8811B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811B8);
  }

  return result;
}

uint64_t sub_1D5F26CE8(uint64_t a1)
{
  v17 = a1;
  v16 = sub_1D726307C();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D5B5DA7C();
  v15[1] = "canvasRenderQueue";
  v15[2] = v10;
  sub_1D7261AFC();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D5B71010(&qword_1EDF1AA50, MEMORY[0x1E69E8030]);
  v11 = MEMORY[0x1E69E8030];
  sub_1D5B6D284(0, &unk_1EDF1AE90, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D5B6321C(&qword_1EDF1AE80, &unk_1EDF1AE90, v11);
  sub_1D7263B6C();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v16);
  v12 = sub_1D72630BC();
  v13 = v17;
  *(v1 + 16) = v12;
  *(v1 + 24) = v13;
  return v1;
}

uint64_t sub_1D5F26F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v30 = a3;
  v36 = sub_1D7261ABC();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v6);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D7261B2C();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F2AF78();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10, v14);
  v15 = type metadata accessor for DebugFormatCanvasBindRequest();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v18);
  v19 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a2 + 16);
  sub_1D5F2B48C(v30, v19, type metadata accessor for DebugFormatCanvasBindRequest);
  (*(v12 + 16))(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v12 + 80) + v21 + 8) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  sub_1D5F2B424(v19, v23 + v20, type metadata accessor for DebugFormatCanvasBindRequest);
  *(v23 + v21) = v32;
  (*(v12 + 32))(v23 + v22, &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_1D5F2AFF8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_5;
  v24 = _Block_copy(aBlock);

  v25 = v31;
  sub_1D7261AEC();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D5B71010(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  v26 = MEMORY[0x1E69E7F60];
  sub_1D5B6D284(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D5B6321C(&qword_1EDF1B560, &qword_1EDF1B570, v26);
  v27 = v34;
  v28 = v36;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v25, v27, v24);
  _Block_release(v24);
  (*(v38 + 8))(v27, v28);
  (*(v35 + 8))(v25, v37);
}

uint64_t sub_1D5F27414(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for DebugFormatCanvasBindResult();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v14 - v11;
  sub_1D5F2754C(a2, a3, v14 - v11);
  sub_1D5F2B48C(v12, v8, type metadata accessor for DebugFormatCanvasBindResult);
  sub_1D5F2AF78();
  sub_1D726287C();
  return sub_1D5F2B188(v12, type metadata accessor for DebugFormatCanvasBindResult);
}

int *sub_1D5F2754C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v167 = a2;
  v148 = a3;
  v9 = sub_1D7259CFC();
  v153 = *(v9 - 8);
  v154 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v151 = (&v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = sub_1D7259F5C();
  v150 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v12);
  v149 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725BD1C();
  v146 = *(v14 - 8);
  v147 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v145 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v144 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GroupLayoutContext();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v179 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for FormatDebuggerWorkspaceStackFrame();
  MEMORY[0x1EEE9AC00](v160, v23);
  v159 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v175 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = a1;
  v29 = *a1;
  if (*a1 >= 2)
  {

    sub_1D6D2C438();
    sub_1D5F2B1E8(v29);
  }

  v169 = v25;
  v224 = MEMORY[0x1E69E7CC0];
  v143 = type metadata accessor for DebugFormatCanvasBindRequest();
  v30 = v177 + *(v143 + 28);
  v31 = *(v30 + 25);
  if (v31 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v33 = MEMORY[0x1E69E7CC0];
    v156 = v29;
    v225 = v26;
    if (i)
    {
      *&v213 = MEMORY[0x1E69E7CC0];
      sub_1D7263ECC();
      if (i < 0)
      {
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_49;
      }

      v34 = 0;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6FB460](v34, v31);
        }

        else
        {
        }

        ++v34;

        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      while (i != v34);
      v33 = v213;
      v29 = v156;
    }

    v171 = v33;
    v223 = v33;
    v221 = MEMORY[0x1E69E7CD0];
    v222 = MEMORY[0x1E69E7CD0];
    type metadata accessor for FormatContentSubgroupNeighborsResolver();
    v35 = *(v30 + 3);
    v215 = *(v30 + 2);
    v216 = v35;
    v217 = *(v30 + 4);
    v36 = *(v30 + 1);
    v213 = *v30;
    v214 = v36;
    v37 = *(v30 + 10);
    v25 = *(v30 + 11);
    v3 = *(v30 + 12);
    *(v219 + 8) = *(v30 + 104);
    *(&v219[1] + 8) = *(v30 + 120);
    *(&v219[2] + 8) = *(v30 + 136);
    v38 = *(v30 + 152);
    v39 = *(v30 + 168);
    *(&v219[5] + 8) = *(v30 + 184);
    *(&v219[4] + 8) = v39;
    *(&v219[3] + 8) = v38;
    v40 = *(v30 + 25);
    v26 = *(v30 + 26);
    *&v218 = v37;
    *(&v218 + 1) = v25;
    *(&v219[6] + 1) = v40;
    *&v219[0] = v3;
    v220 = v26;
    v41 = sub_1D6C567D4();
    sub_1D5CE998C(v41, v211);

    v155 = *(v26 + 16);
    if (!v155)
    {
      break;
    }

    v42 = v26;
    v168 = *&v211[0];
    v43 = *(v30 + 11);
    v219[4] = *(v30 + 10);
    v219[5] = v43;
    v219[6] = *(v30 + 12);
    v220 = *(v30 + 26);
    v44 = *(v30 + 7);
    v219[0] = *(v30 + 6);
    v219[1] = v44;
    v45 = *(v30 + 9);
    v219[2] = *(v30 + 8);
    v219[3] = v45;
    v46 = *(v30 + 3);
    v215 = *(v30 + 2);
    v216 = v46;
    v47 = *(v30 + 5);
    v217 = *(v30 + 4);
    v218 = v47;
    v48 = *(v30 + 1);
    v213 = *v30;
    v214 = v48;
    v31 = v175;
    if (*(v26 + 16))
    {
      v26 = 0;
      v178 = 0;
      v161 = *(&v218 + 1);
      v158 = *&v219[0];
      v166 = BYTE3(v219[6]);
      v49 = v42 + ((*(v225 + 80) + 32) & ~*(v225 + 80));
      v162 = *(v225 + 72);
      v164 = v155 - 1;
      height = 0.0;
      v50 = 1;
      v170 = MEMORY[0x1E69E7CC0];
      width = 0.0;
      y = 0.0;
      x = 0.0;
      v51 = 0.0;
      v163 = v42;
      v157 = v30;
      while (1)
      {
        v173 = v50;
        v172 = v49;
        sub_1D5F2B48C(v49, v31, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v207 = v219[4];
        v208 = v219[5];
        v209 = v219[6];
        v210 = v220;
        v203 = v219[0];
        v204 = v219[1];
        v205 = v219[2];
        v206 = v219[3];
        v199 = v215;
        v200 = v216;
        v201 = v217;
        v202 = v218;
        v197 = v213;
        v198 = v214;
        sub_1D5F2B0D8(&v213, v189);
        v225 = sub_1D6912660(&v197);
        v211[10] = v207;
        v211[11] = v208;
        v211[12] = v209;
        v212 = v210;
        v211[6] = v203;
        v211[7] = v204;
        v211[8] = v205;
        v211[9] = v206;
        v211[2] = v199;
        v211[3] = v200;
        v211[4] = v201;
        v211[5] = v202;
        v211[0] = v197;
        v211[1] = v198;
        sub_1D5F2B134(v211);
        v52 = v166;
        if (v29 >= 2)
        {
          v53 = *(v30 + 5);
          v201 = *(v30 + 4);
          v202 = v53;
          v54 = *(v30 + 3);
          v199 = *(v30 + 2);
          v200 = v54;
          v55 = *(v30 + 9);
          v205 = *(v30 + 8);
          v206 = v55;
          v56 = *(v30 + 7);
          v203 = *(v30 + 6);
          v204 = v56;
          v210 = *(v30 + 26);
          v57 = *(v30 + 12);
          v208 = *(v30 + 11);
          v209 = v57;
          v207 = *(v30 + 10);
          v58 = *(v30 + 1);
          v197 = *v30;
          v198 = v58;
          v161 = *(&v202 + 1);
          v158 = v203;
          v59 = v26;
          v60 = BYTE3(v57);
          v62 = v159;
          v61 = v160;
          sub_1D5F2B48C(v31, &v159[*(v160 + 20)], type metadata accessor for DebugFormatEditorWorkspaceGroup);
          v63 = v202;
          *(v62 + 64) = v201;
          *(v62 + 80) = v63;
          v64 = v200;
          *(v62 + 32) = v199;
          *(v62 + 48) = v64;
          v65 = v206;
          *(v62 + 128) = v205;
          *(v62 + 144) = v65;
          v66 = v204;
          *(v62 + 96) = v203;
          *(v62 + 112) = v66;
          *(v62 + 208) = v210;
          v67 = v209;
          *(v62 + 176) = v208;
          *(v62 + 192) = v67;
          *(v62 + 160) = v207;
          v68 = v198;
          *v62 = v197;
          *(v62 + 16) = v68;
          *(v62 + *(v61 + 24)) = v225;
          sub_1D5F2B27C(v29);
          sub_1D5F2B0D8(&v197, v189);
          v52 = v60;
          v26 = v59;
          v30 = v157;

          sub_1D725A76C();
          swift_beginAccess();
          sub_1D5B6D284(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, MEMORY[0x1E69D6AD8]);
          sub_1D725B8BC();
          swift_endAccess();
          sub_1D725A77C();
          sub_1D5F2B188(v62, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
          sub_1D5F2B1E8(v29);
        }

        v69 = v169;
        v165 = *(v31 + *(v169 + 24));

        MEMORY[0x1DA6F9CE0](v70);
        if (*((v223 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v223 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
          v31 = v175;
        }

        sub_1D726278C();
        v171 = v223;
        v71 = *(v31 + *(v69 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings;

        sub_1D5D63A8C(v72);
        sub_1D5B68374(v71 + 8, &v197);
        v73 = *(&v198 + 1);
        v74 = v31;
        v75 = v199;
        __swift_project_boxed_opaque_existential_1(&v197, *(&v198 + 1));
        v76 = (*(v75 + 80))(v73, v75);
        sub_1D5B886D0(v76);
        __swift_destroy_boxed_opaque_existential_1(&v197);
        sub_1D5F29604(v177, v178, v179);
        v77 = v168;
        if (*(v168 + 16) && (v78 = sub_1D5B69D90(*v74, v74[1]), (v79 & 1) != 0))
        {
          v80 = (*(v77 + 56) + 16 * v78);
          v82 = *v80;
          v81 = v80[1];
        }

        else
        {
          v82 = MEMORY[0x1E69E7CD0];
          v81 = MEMORY[0x1E69E7CC0];
        }

        if (qword_1EDF34BB8 != -1)
        {
          swift_once();
        }

        LOBYTE(v197) = v52 == 33;
        swift_task_localValuePush();
        *&v197 = v82;
        *(&v197 + 1) = v81;
        v83 = v174;
        v84 = sub_1D5F29A08(v177, v175, v225, v179, &v197, v167);
        v85 = v83;
        if (v83)
        {

          swift_task_localValuePop();

          goto LABEL_40;
        }

        v86 = v84;
        v174 = 0;
        swift_task_localValuePop();
        v3 = (v86 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes);
        v85 = *(v86 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 72);
        if (v85)
        {
          break;
        }

        MEMORY[0x1DA6F9CE0](v87);
        if (*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v88 = v3[1];
        v89 = v3[2];
        v90 = v3[3];
        v91 = v3[4];
        v31 = v175;
        v170 = v224;
        if (v173)
        {
          x = v88;
          y = v89;
          width = v90;
          height = v91;
        }

        else
        {
          v226.origin.x = x;
          v226.origin.y = y;
          v226.size.width = width;
          v226.size.height = height;
          v227 = CGRectUnion(v226, *&v88);
          x = v227.origin.x;
          y = v227.origin.y;
          width = v227.size.width;
          height = v227.size.height;
          v88 = v3[1];
          v89 = v3[2];
          v90 = v3[3];
          v91 = v3[4];
        }

        v228.origin.x = v88;
        v228.origin.y = v89;
        v228.size.width = v90;
        v228.size.height = v91;
        v92 = CGRectGetHeight(v228);

        sub_1D5F2B188(v179, type metadata accessor for GroupLayoutContext);
        v93 = *(v3 + 5);

        v25 = *(v93 + 16);

        v94 = __OFADD__(v178, v25);
        v178 += v25;
        if (v94)
        {
          goto LABEL_59;
        }

        sub_1D5F2B188(v31, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        if (v164 == v26)
        {

          v3 = v158;
          goto LABEL_43;
        }

        v50 = 0;
        ++v26;
        v51 = v51 + v92;
        v49 = v172 + v162;
        if (v26 >= *(v163 + 16))
        {
          goto LABEL_58;
        }
      }

      v95 = v85;

      swift_willThrow();

LABEL_40:

      v96 = v175;
      v97 = (v175 + *(v169 + 28));
      v98 = v97[5];
      v99 = v97[7];
      v194 = v97[6];
      v195 = v99;
      v100 = v97[7];
      v196 = v97[8];
      v101 = v97[1];
      v102 = v97[3];
      v190 = v97[2];
      v191 = v102;
      v103 = v97[3];
      v104 = v97[5];
      v192 = v97[4];
      v193 = v104;
      v105 = v97[1];
      v189[0] = *v97;
      v189[1] = v105;
      v186 = v194;
      v187 = v100;
      v188 = v97[8];
      v182 = v190;
      v183 = v103;
      v184 = v192;
      v185 = v98;
      v180 = v189[0];
      v181 = v101;
      v106 = *(v176 + 24);
      sub_1D5D65D5C(v189, &v197);
      sub_1D6A12C54(v165, &v180, v106, v85);
      v203 = v186;
      v204 = v187;
      v205 = v188;
      v199 = v182;
      v200 = v183;
      v201 = v184;
      v202 = v185;
      v197 = v180;
      v198 = v181;
      sub_1D5D68304(&v197);
      swift_willThrow();

      sub_1D5F2B188(v179, type metadata accessor for GroupLayoutContext);
      result = sub_1D5F2B188(v96, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      if (v29 < 2)
      {
        return result;
      }

      sub_1D6D2CBFC();
      v108 = v29;
      return sub_1D5F2B1E8(v108);
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v161 = v25;

  v170 = MEMORY[0x1E69E7CC0];
  x = 0.0;
  y = 0.0;
  width = 0.0;
  height = 0.0;
LABEL_43:
  type metadata accessor for FormatNodeDebugData();
  i = swift_allocObject();
  type metadata accessor for FormatNodeDebugRecords();
  v109 = swift_allocObject();
  v110 = MEMORY[0x1E69E7CC0];
  *(v109 + 16) = MEMORY[0x1E69E7CC0];
  *(i + 16) = v109;
  v111 = swift_allocObject();
  *(v111 + 16) = v110;
  *(i + 24) = v111;
  type metadata accessor for FormatSourceMapCollection();
  v112 = swift_allocObject();
  v113 = MEMORY[0x1E69E7CC8];
  *(v112 + 16) = MEMORY[0x1E69E7CC8];
  *(v112 + 24) = v113;
  *(i + 32) = v112;
  v25 = *(v176 + 24);
  v225 = v222;
  if (v29 == 1)
  {
    v114 = type metadata accessor for FormatLogger();
    inited = swift_initStaticObject();
    *&v215 = &protocol witness table for FormatLogger;
    *(&v214 + 1) = v114;
    *&v213 = inited;
  }

  else
  {
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    v116 = qword_1EC9BA710;
    v117 = type metadata accessor for DebugFormatLogger();
    *&v215 = &off_1F5125BB8;
    *(&v214 + 1) = v117;
    *&v213 = v116;
  }

  v118 = *(*(v25 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_fontManager) + 16);
  sub_1D72596FC();

  v29 = v118;
  sub_1D72596DC();
  if (qword_1EDF43B30 != -1)
  {
    goto LABEL_62;
  }

LABEL_49:
  sub_1D72596CC();

  v119 = v211[0];
  v120 = *(v25 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_defaultSystemFactory);
  swift_weakInit();
  swift_weakAssign();

  v121 = v144;
  sub_1D725972C();

  v122 = v145;
  sub_1D60D74F0(v145);
  sub_1D5F2B188(v121, type metadata accessor for FormatVersioningModeSelection);
  v123 = sub_1D6AA5460(v211, v122, v120);
  (*(v146 + 8))(v122, v147);
  sub_1D5F2B1F8(v211);
  type metadata accessor for FormatDecorationProvider();
  v124 = swift_allocObject();
  *(v124 + 16) = v171;
  *(v124 + 24) = v29;
  *(v124 + 32) = 0;
  *(v124 + 33) = v119;
  *(v124 + 40) = 0u;
  *(v124 + 56) = 0u;
  *(v124 + 72) = 0u;
  *(v124 + 88) = 0u;
  *(v124 + 104) = 0u;
  v125 = v225;
  *(v124 + 120) = MEMORY[0x1E69E7CC0];
  *(v124 + 128) = v125;
  *(v124 + 136) = v123;
  sub_1D5B63F14(&v213, v124 + 144);
  v225 = i;
  *(v124 + 184) = i;
  v126 = v143;
  v127 = v177;
  (*(v150 + 16))(v149, v177 + *(v143 + 20), v152);
  (*(v153 + 16))(v151, v127 + *(v126 + 24), v154);

  v128._countAndFlagsBits = v161;
  v128._object = v3;
  FeedKind.init(rawValue:)(v128);
  if (LOBYTE(v211[0]) == 30)
  {
    v129 = 0;
  }

  else
  {
    v129 = v211[0];
  }

  v179 = v221;
  if (!v155)
  {
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
  }

  LOBYTE(v197) = v129;
  *&v211[0] = MEMORY[0x1E69E7CD0];
  *(&v211[0] + 1) = MEMORY[0x1E69E7CC0];
  v130 = *(v124 + 168);
  v131 = *(v124 + 176);
  v132 = __swift_project_boxed_opaque_existential_1((v124 + 144), v130);
  v133 = v149;
  v134 = v151;
  v135 = sub_1D6C33A98(v149, v151, &v197, v132, v211, v123, v130, v131);

  MEMORY[0x1EEE9AC00](v136, v137);
  *(&v142 - 10) = v134;
  *(&v142 - 9) = v124;
  v138 = v179;
  *(&v142 - 8) = v135;
  *(&v142 - 7) = v138;
  *(&v142 - 6) = v133;
  *(&v142 - 40) = v129;
  *(&v142 - 4) = x;
  *(&v142 - 3) = y;
  *(&v142 - 2) = width;
  *(&v142 - 1) = height;
  v139 = sub_1D71962D0(sub_1D5F2B24C, (&v142 - 12), v171);

  swift_setDeallocating();
  FormatDecorationProvider.deinit();
  swift_deallocClassInstance();
  (*(v153 + 8))(v134, v154);
  (*(v150 + 8))(v133, v152);
  v140 = v148;
  sub_1D5F2B48C(v177, v148, type metadata accessor for DebugFormatCanvasBindRequest);
  result = type metadata accessor for DebugFormatCanvasBindResult();
  *(v140 + result[5]) = v170;
  *(v140 + result[6]) = v139;
  *(v140 + result[7]) = v225;
  v141 = v156;
  if (v156 >= 2)
  {

    sub_1D6D2CBFC();
    v108 = v141;
    return sub_1D5F2B1E8(v108);
  }

  return result;
}

uint64_t sub_1D5F2882C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DebugFormatCanvasBindResult();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &aBlock[-1] - v13;
  v28 = 0;
  v15 = objc_opt_self();
  sub_1D5F2B48C(a1, v14, type metadata accessor for DebugFormatCanvasBindResult);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v17[2] = &v28;
  v17[3] = a2;
  v17[4] = v3;
  sub_1D5F2B424(v14, v17 + v16, type metadata accessor for DebugFormatCanvasBindResult);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D5F2B4F4;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1D5DF8E8C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D69C9704;
  aBlock[3] = &block_descriptor_10;
  v19 = _Block_copy(aBlock);

  [v15 performWithoutAnimation_];
  _Block_release(v19);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    result = sub_1D5F2B48C(a1, v10, type metadata accessor for DebugFormatCanvasBindResult);
    v21 = v28;
    if (v28)
    {
      type metadata accessor for DebugFormatCanvasViewResult();
      v22 = swift_allocObject();
      *(v22 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_viewMap) = MEMORY[0x1E69E7CC8];
      sub_1D5F2B48C(v10, v22 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_bindResult, type metadata accessor for DebugFormatCanvasBindResult);
      *(v22 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView) = v21;
      v23 = *&v21[OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView];
      v24 = v21;
      sub_1D6CDA440(v23, v22);
      sub_1D5F2B188(v10, type metadata accessor for DebugFormatCanvasBindResult);

      v25 = v28;

      return v22;
    }
  }

  __break(1u);
  return result;
}

void sub_1D5F28B84(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D5F2941C(2, 0, 0, sub_1D5F2B55C);
  v8 = *a1;
  *a1 = v7;

  if (*a4 == 1)
  {
    if (*a1)
    {
      [*a1 setUserInteractionEnabled_];
      v9 = *a1;
      if (*a1)
      {
        v10 = a4 + *(type metadata accessor for DebugFormatCanvasBindRequest() + 28);
        v11 = *(v10 + 10);
        v12 = *(v10 + 8);
        v42 = *(v10 + 9);
        v43 = v11;
        v13 = *(v10 + 10);
        v44[0] = *(v10 + 11);
        v14 = *(v10 + 6);
        v15 = *(v10 + 4);
        v38 = *(v10 + 5);
        v39 = v14;
        v16 = *(v10 + 6);
        v17 = *(v10 + 8);
        v40 = *(v10 + 7);
        v41 = v17;
        v18 = *(v10 + 2);
        v19 = *(v10 + 4);
        v36 = *(v10 + 3);
        v37 = v19;
        v20 = *(v10 + 2);
        v35[0] = *(v10 + 1);
        v35[1] = v20;
        v32 = v42;
        v33 = v13;
        *v34 = *(v10 + 11);
        v28 = v38;
        v29 = v16;
        v30 = v40;
        v31 = v12;
        v24 = v35[0];
        v25 = v18;
        *(v44 + 15) = *(v10 + 191);
        *&v34[15] = *(v10 + 191);
        v26 = v36;
        v27 = v15;
        v21 = *(a3 + 24);
        v22 = v9;
        sub_1D5ECF1C0(v35, v45);
        v23 = sub_1D62D78BC(v21);
        v45[8] = v32;
        v45[9] = v33;
        v46[0] = *v34;
        *(v46 + 15) = *&v34[15];
        v45[4] = v28;
        v45[5] = v29;
        v45[6] = v30;
        v45[7] = v31;
        v45[0] = v24;
        v45[1] = v25;
        v45[2] = v26;
        v45[3] = v27;
        sub_1D5ECF21C(v45);
        [v22 setBackgroundColor_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

size_t sub_1D5F28D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1D5B6D284(0, &qword_1EC899B20, MEMORY[0x1E69D74E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v78 = v63 - v8;
  v73 = type metadata accessor for DebugGroupDirectionalLayoutAttributes();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v9);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a1 + 24);
  sub_1D5B68374(v64 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_factory, v76);
  v63[1] = __swift_project_boxed_opaque_existential_1(v76, v76[3]);
  v12 = type metadata accessor for DebugFormatCanvasBindResult();
  v13 = *(v12 + 20);
  v65 = a2;
  v14 = *(a2 + v13);
  if (v14 >> 62)
  {
    v62 = v12;
    v15 = sub_1D7263BFC();
    v12 = v62;
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  v66 = a3;
  if (v15)
  {
    v63[0] = v12;
    v77[0] = MEMORY[0x1E69E7CC0];
    result = sub_1D6998164(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    v16 = v77[0];
    v19 = v14;
    v69 = v14 & 0xC000000000000001;
    v68 = *MEMORY[0x1E69D74D0];
    v67 = *MEMORY[0x1E69D74D8];
    v71 = v14;
    v70 = v15;
    do
    {
      if (v69)
      {
        v20 = MEMORY[0x1DA6FB460](v18, v19);
      }

      else
      {
        v20 = *(v19 + 8 * v18 + 32);
      }

      v21 = *(v20 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes);
      v22 = *(v20 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 40);
      v23 = *(v20 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 48);
      v24 = *(v20 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_inventory);
      v25 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
      v75 = *(v20 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 8);
      v74 = *(v20 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 24);
      swift_beginAccess();
      LODWORD(v24) = *(v24 + v25);

      v26 = sub_1D725A5BC();
      v27 = *(v26 - 8);
      if (v24 == 4)
      {
        v28 = v67;
      }

      else
      {
        v28 = v68;
      }

      v29 = v78;
      (*(*(v26 - 8) + 104))(v78, v28, v26);
      (*(v27 + 56))(v29, 0, 1, v26);
      *v11 = v21;
      *(v11 + 24) = v74;
      *(v11 + 8) = v75;
      *(v11 + 5) = v22;
      *(v11 + 6) = v23;
      sub_1D5F2B578(v29, &v11[*(v73 + 20)]);
      v77[0] = v16;
      v31 = *(v16 + 16);
      v30 = *(v16 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D6998164(v30 > 1, v31 + 1, 1);
        v16 = v77[0];
      }

      ++v18;
      *(v16 + 16) = v31 + 1;
      sub_1D5F2B424(v11, v16 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v31, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
      v19 = v71;
    }

    while (v70 != v18);
    v12 = v63[0];
  }

  v32 = v65;
  v33 = *(v65 + *(v12 + 24));
  v34 = type metadata accessor for DebugFormatCanvasBindRequest();
  sub_1D7259E8C();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_1D7259E9C();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v32 + *(v34 + 28);
  v52 = *(v51 + 195);
  v53 = *(v51 + 196);
  v54 = sub_1D7259EBC();
  v55 = [v54 userInterfaceStyle];

  if (v53)
  {
    v56 = 256;
  }

  else
  {
    v56 = 0;
  }

  v57 = v56 | v52;
  v58 = v64;
  sub_1D67F6CC8(v55, 0, 0, 0, 2u, v57, v77);
  v59 = sub_1D7259EBC();
  v60 = *(v58 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_resizingProvider);

  v61 = sub_1D705E828(v16, v33, v77, v59, v60, sub_1D5F29330, 0, v36, v38, v40, v42, v44, v46, v48, v50);

  *v66 = v61;
  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t sub_1D5F29330()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73C2750);
  type metadata accessor for FeedActionSender();
  sub_1D7263F9C();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(3, 0, 0, 0, 0xE000000000000000);
}

void *sub_1D5F2941C(char a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  v10 = CACurrentMediaTime();
  result = a4(&v25);
  if (!v5)
  {
    v12 = *(v4 + 16);
    os_unfair_lock_lock((v12 + 24));
    v13 = CACurrentMediaTime();
    v14 = objc_opt_self();
    if (a1)
    {
      v15 = &selRef_systemPurpleColor;
      if (a1 != 1)
      {
        v15 = &selRef_systemBlueColor;
      }

      v16 = 0xE600000000000000;
      if (a1 == 1)
      {
        v17 = 0x74756F79614CLL;
      }

      else
      {
        v17 = 0x7265646E6552;
      }
    }

    else
    {
      v16 = 0xE400000000000000;
      v15 = &selRef_systemYellowColor;
      v17 = 1684957506;
    }

    v18 = [v14 *v15];
    v19 = *(v12 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 16) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = *(v19 + 2);

      *(v12 + 16) = sub_1D69954E4(0, v24 + 1, 1, v19);

      v19 = *(v12 + 16);
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1D69954E4((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[48 * v22];
    *(v23 + 4) = v17;
    *(v23 + 5) = v16;
    *(v23 + 6) = a2;
    *(v23 + 7) = a3;
    *(v23 + 8) = (v13 - v10) * 1000.0;
    *(v23 + 9) = v18;
    *(v12 + 16) = v19;
    os_unfair_lock_unlock((v12 + 24));
    return v25;
  }

  return result;
}

uint64_t sub_1D5F29604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v6 = type metadata accessor for FeedLayoutSolverOptions(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7259CFC();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7259F5C();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DebugFormatCanvasBindRequest();
  v49 = v18[5];
  v19 = *(v3 + 24);

  sub_1D725972C();

  v51 = v17;
  v20 = v48;
  sub_1D7259F4C();
  v21 = *(v20 + 16);
  v22 = a1 + v18[6];
  v54 = v13;
  v55 = v10;
  v21(v13, v22, v10);
  v23 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_key;
  v24 = v19 + *(type metadata accessor for DebugGroupLayoutKey() + 28) + v23;
  v25 = type metadata accessor for GroupLayoutContext();
  v26 = *(v24 + v25[10]);
  v27 = v24 + v25[6];
  v56 = v9;
  sub_1D5F2B48C(v27, v9, type metadata accessor for FeedLayoutSolverOptions);
  v50 = v26;

  sub_1D7259C1C();
  v29 = v28;
  v30 = a1 + v18[7];
  v31 = *(v30 + 192);
  v32 = *(v30 + 88);
  v33 = *(v30 + 96);

  v34._countAndFlagsBits = v32;
  v34._object = v33;
  FeedKind.init(rawValue:)(v34);
  v35 = v58;
  v36 = *(v19 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_resizingProvider);

  sub_1D7259E7C();
  v38 = v37;
  v40 = v39;
  sub_1D725A76C();
  swift_beginAccess();
  v41 = *(v36 + 24);
  if (*(v41 + 16) && (v42 = sub_1D6D62C64(v38, v40), (v43 & 1) != 0))
  {
    v44 = *(*(v41 + 56) + 8 * v42);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v44 = sub_1D5BC9514(MEMORY[0x1E69E7CC0]);
  }

  if (v35 == 30)
  {
    v45 = 0;
  }

  else
  {
    v45 = v35;
  }

  sub_1D725A77C();

  (*(v52 + 32))(a3, v51, v53);
  (*(v20 + 32))(a3 + v25[5], v54, v55);
  *(a3 + v25[10]) = v50;
  result = sub_1D5F2B424(v56, a3 + v25[6], type metadata accessor for FeedLayoutSolverOptions);
  *(a3 + v25[7]) = v57;
  *(a3 + v25[8]) = v29;
  *(a3 + v25[9]) = v31;
  *(a3 + v25[11]) = v45;
  *(a3 + v25[12]) = v44;
  return result;
}

_OWORD *sub_1D5F29A08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v164 = a6;
  v184 = a4;
  v223 = a3;
  v185 = a1;
  v186 = a2;
  v7 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  MEMORY[0x1EEE9AC00](v7, v8);
  v161 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F2B28C();
  v157 = *(v10 - 8);
  v158 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v165 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for FormatGroupLayoutFactory.Bound();
  MEMORY[0x1EEE9AC00](v171, v13);
  v162 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v170 = &v154 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v166 = &v154 - v20;
  v21 = sub_1D7259CFC();
  v154 = *(v21 - 8);
  v155 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v163 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6D284(0, &unk_1EDF3C080, MEMORY[0x1E69D7138], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v175 = &v154 - v26;
  v27 = sub_1D7259D1C();
  v172 = *(v27 - 8);
  v173 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v167 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v168 = &v154 - v32;
  v169 = type metadata accessor for GroupLayoutContext();
  MEMORY[0x1EEE9AC00](v169, v33);
  v160 = &v154 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v178 = &v154 - v37;
  v38 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v159 = &v154 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v174 = &v154 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v177 = (&v154 - v46);
  v47 = sub_1D725BD1C();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v154 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v55 = &v154 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *a5;
  v57 = a5[1];
  v176 = v7;
  v58 = (v186 + *(v7 + 28));
  v59 = v58[7];
  v220 = v58[6];
  v221 = v59;
  v222 = v58[8];
  v60 = v58[3];
  v216 = v58[2];
  v217 = v60;
  v61 = v58[5];
  v218 = v58[4];
  v219 = v61;
  v63 = *v58;
  v62 = v58[1];
  v156 = v58;
  v214 = v63;
  v215 = v62;
  v64 = *(v182 + 24);

  sub_1D5D65D5C(&v214, &v194);
  v181 = v56;

  v182 = v57;

  v65 = v185;
  v180 = sub_1D6A9DB5C(v185);
  v66 = *v65;
  if (*v65 == 1)
  {
    v67 = type metadata accessor for FormatLogger();
    inited = swift_initStaticObject();
    *&v196 = &protocol witness table for FormatLogger;
    *(&v195 + 1) = v67;
    *&v194 = inited;
  }

  else
  {
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    v69 = qword_1EC9BA710;
    v70 = type metadata accessor for DebugFormatLogger();
    *&v196 = &off_1F5125BB8;
    *(&v195 + 1) = v70;
    *&v194 = v69;
  }

  v71 = *(v64 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_defaultSystemFactory);
  swift_weakInit();
  swift_weakAssign();

  sub_1D725972C();

  sub_1D60D74F0(v51);
  sub_1D5F2B188(v55, type metadata accessor for FormatVersioningModeSelection);
  v179 = sub_1D6AA5460(&v187, v51, v71);
  (*(v48 + 8))(v51, v47);
  sub_1D5F2B1F8(&v187);
  v72 = type metadata accessor for FeedLayoutTracker();
  v73 = swift_allocObject();
  v188 = v72;
  v189 = &off_1F512CC20;
  *&v187 = v73;
  if (v66 == 1)
  {
    v74 = type metadata accessor for FormatLogger();
    v75 = swift_initStaticObject();
    v76 = 0;
    v77 = &protocol witness table for FormatLogger;
    v193 = &protocol witness table for FormatLogger;
    v192 = v74;
    v191[0] = v75;
  }

  else
  {
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    v78 = qword_1EC9BA710;
    v74 = type metadata accessor for DebugFormatLogger();
    v77 = &off_1F5125BB8;
    v193 = &off_1F5125BB8;
    v192 = v74;
    v191[0] = v78;

    v76 = v66;
  }

  v79 = type metadata accessor for FormatOptionConverter();
  v80 = __swift_mutable_project_boxed_opaque_existential_1(v191, v74);
  v81 = MEMORY[0x1EEE9AC00](v80, v80);
  v83 = &v154 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v84 + 16))(v83, v81);
  v85 = v223;

  v87 = sub_1D6AC4F3C(v86, v83, v79, v74, v77);
  __swift_destroy_boxed_opaque_existential_1(v191);
  v203[6] = v220;
  v203[7] = v221;
  v204 = v222;
  v203[2] = v216;
  v203[3] = v217;
  v203[4] = v218;
  v203[5] = v219;
  v203[0] = v214;
  v203[1] = v215;
  v206 = xmmword_1D72825A0;
  v205 = v85;
  v207 = 0;
  v208 = 0;
  v209 = v181;
  v210 = v182;
  v211 = v180;
  sub_1D5B63F14(&v194, v212);
  v212[5] = v179;
  sub_1D5B63F14(&v187, v213);
  v213[5] = v87;
  v213[6] = v76;
  sub_1D5F2B27C(v66);
  v88 = v203;
  v89 = v183;
  v90 = v184;
  sub_1D5F2AE14();
  v91 = v89;
  if (v89)
  {
    if (v66 == 1)
    {
LABEL_18:
      swift_willThrow();
      sub_1D5F2B344(v203);
      return v88;
    }

    *&v194 = 0;
    *(&v194 + 1) = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD0000000000000A4, 0x80000001D73C25F0);
    *&v187 = v89;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    sub_1D7263F9C();
    v93 = *(&v194 + 1);
    v92 = v194;
    if (qword_1EC87D498 != -1)
    {
      v150 = v194;
      swift_once();
      v92 = v150;
    }

    sub_1D5F5EBA0(4, 0, 0, v92, v93);

    v91 = 0;
  }

  v94 = sub_1D6FEC3CC();
  LOBYTE(v187) = v204;
  FormatContentSizeCategory.groupLayoutContentSizeCategory.getter(&v194);
  v95 = v194;
  v96 = BYTE8(v194);
  type metadata accessor for GroupLayoutFactoryValidator();
  v88 = swift_allocObject();
  *(v88 + 2) = v94;
  *(v88 + 3) = v95;
  *(v88 + 32) = v96;
  sub_1D5BEEB24(v90);
  if (v91)
  {

    swift_setDeallocating();
    sub_1D5BEEACC(*(v88 + 3), *(v88 + 32));
    swift_deallocClassInstance();
    v97 = v178;
    v98 = v186;
    if (v66 == 1)
    {
      goto LABEL_18;
    }

    *&v194 = 0;
    *(&v194 + 1) = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD0000000000000A2, 0x80000001D73C26A0);
    *&v187 = v91;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    sub_1D7263F9C();
    v100 = *(&v194 + 1);
    v99 = v194;
    if (qword_1EC87D498 != -1)
    {
      v151 = v194;
      swift_once();
      v99 = v151;
    }

    sub_1D5F5EBA0(4, 0, 0, v99, v100);
  }

  else
  {

    swift_setDeallocating();
    sub_1D5BEEACC(*(v88 + 3), *(v88 + 32));
    swift_deallocClassInstance();
    v97 = v178;
    v98 = v186;
  }

  v101 = v174;
  sub_1D5F2B48C(*(v98 + *(v176 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v174, type metadata accessor for GroupLayoutBindingContext);
  v102 = v185 + *(type metadata accessor for DebugFormatCanvasBindRequest() + 28);
  v103 = v102[193];
  LOBYTE(v194) = v102[192];
  v104 = v177;
  sub_1D62EFCE4(v103, &v194, v177);
  sub_1D5F2B188(v101, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5F2B48C(v90, v97, type metadata accessor for GroupLayoutContext);
  v105 = v175;
  sub_1D6FC10DC(v104, v90, v175);
  v106 = v172;
  v107 = v173;
  if ((*(v172 + 48))(v105, 1, v173) == 1)
  {
    sub_1D5F2B398(v105);
  }

  else
  {
    v108 = v168;
    (*(v106 + 32))(v168, v105, v107);
    v109 = v106;
    v110 = v167;
    sub_1D7259BFC();
    sub_1D5B71010(&unk_1EDF3C090, MEMORY[0x1E69D7138]);
    v111 = sub_1D7261FBC();
    v112 = *(v109 + 8);
    v112(v110, v107);
    if (v111)
    {
      v112(v108, v107);
    }

    else
    {
      v113 = v163;
      sub_1D7259D0C();
      v112(v108, v173);
      (*(v154 + 40))(&v97[*(v169 + 20)], v113, v155);
    }

    v104 = v177;
  }

  v114 = v214;
  v115 = CACurrentMediaTime();
  sub_1D6FC14D8(v104, v97, &v194);
  sub_1D5B49474(0, qword_1EDF22AA0);
  swift_dynamicCast();
  v117 = *(v164 + 16);
  os_unfair_lock_lock((v117 + 24));
  v118 = CACurrentMediaTime();
  v119 = objc_opt_self();
  v120 = [v119 systemYellowColor];
  v121 = *(v117 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v117 + 16) = v121;
  v185 = v114;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v152 = *(v121 + 2);

    *(v117 + 16) = sub_1D69954E4(0, v152 + 1, 1, v121);

    v121 = *(v117 + 16);
  }

  v124 = *(v121 + 2);
  v123 = *(v121 + 3);
  if (v124 >= v123 >> 1)
  {
    v121 = sub_1D69954E4((v123 > 1), v124 + 1, 1, v121);
  }

  *(v121 + 2) = v124 + 1;
  v125 = &v121[48 * v124];
  *(v125 + 4) = 1684957506;
  *(v125 + 5) = 0xE400000000000000;
  *(v125 + 6) = v185;
  *(v125 + 7) = *(&v114 + 1);
  *(v125 + 8) = (v118 - v115) * 1000.0;
  *(v125 + 9) = v120;
  *(v117 + 16) = v121;
  os_unfair_lock_unlock((v117 + 24));
  v126 = v166;
  sub_1D5F2B424(v170, v166, type metadata accessor for FormatGroupLayoutFactory.Bound);
  v127 = CACurrentMediaTime();
  v128 = v165;
  sub_1D725A4BC();
  sub_1D6FED4C0(v128, v190);
  (*(v157 + 8))(v128, v158);
  os_unfair_lock_lock((v117 + 24));
  v129 = CACurrentMediaTime();
  v130 = [v119 systemPurpleColor];
  v131 = *(v117 + 16);

  v132 = swift_isUniquelyReferenced_nonNull_native();
  *(v117 + 16) = v131;
  if ((v132 & 1) == 0)
  {
    v153 = *(v131 + 2);

    *(v117 + 16) = sub_1D69954E4(0, v153 + 1, 1, v131);

    v131 = *(v117 + 16);
  }

  v134 = *(v131 + 2);
  v133 = *(v131 + 3);
  if (v134 >= v133 >> 1)
  {
    v131 = sub_1D69954E4((v133 > 1), v134 + 1, 1, v131);
  }

  *(v131 + 2) = v114 + 1;
  v135 = &v131[48 * v114];
  *(v135 + 4) = 0x74756F79614CLL;
  *(v135 + 5) = 0xE600000000000000;
  *(v135 + 6) = v185;
  *(v135 + 7) = *(&v114 + 1);
  *(v135 + 8) = (v129 - v127) * 1000.0;
  *(v135 + 9) = v130;
  *(v117 + 16) = v131;
  os_unfair_lock_unlock((v117 + 24));
  v136 = v156[7];
  v200 = v156[6];
  v201 = v136;
  v202 = v156[8];
  v137 = v156[3];
  v196 = v156[2];
  v197 = v137;
  v138 = v156[5];
  v198 = v156[4];
  v199 = v138;
  v139 = v156[1];
  v194 = *v156;
  v195 = v139;
  v140 = v161;
  sub_1D5F2B48C(v186, v161, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  v141 = v160;
  sub_1D5F2B48C(v184, v160, type metadata accessor for GroupLayoutContext);
  v142 = v159;
  sub_1D5F2B424(v177, v159, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5F2B48C(v126, v162, type metadata accessor for FormatGroupLayoutFactory.Bound);
  type metadata accessor for DebugFormatCanvasLayoutResult();
  v88 = swift_allocObject();
  v143 = v201;
  v88[7] = v200;
  v88[8] = v143;
  v88[9] = v202;
  v144 = v197;
  v88[3] = v196;
  v88[4] = v144;
  v145 = v199;
  v88[5] = v198;
  v88[6] = v145;
  v146 = v195;
  v88[1] = v194;
  v88[2] = v146;
  sub_1D5F2B424(v140, v88 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_workspaceGroup, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  *(v88 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_inventory) = v223;
  v147 = (v88 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes);
  v148 = v190[3];
  v147[2] = v190[2];
  v147[3] = v148;
  v147[4] = v190[4];
  v149 = v190[1];
  *v147 = v190[0];
  v147[1] = v149;
  sub_1D5F2B424(v141, v88 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_groupLayoutContext, type metadata accessor for GroupLayoutContext);
  sub_1D5F2B424(v142, v88 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_groupLayoutBindings, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5F2B424(v162, v88 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_boundLayoutFactory, type metadata accessor for FormatGroupLayoutFactory.Bound);

  sub_1D5D65D5C(&v194, &v187);
  sub_1D5F2B188(v126, type metadata accessor for FormatGroupLayoutFactory.Bound);
  sub_1D5F2B188(v178, type metadata accessor for GroupLayoutContext);
  sub_1D5F2B344(v203);
  return v88;
}

void sub_1D5F2AE14()
{
  sub_1D6FEC3CC();
  FormatContentSizeCategory.groupLayoutContentSizeCategory.getter(&v8);
  v0 = v8;
  v1 = v9;
  v6 = v8;
  v7 = v9;
  sub_1D5BEE8A0(v8, v9);
  v2 = sub_1D7259EEC();
  v3 = sub_1D5BEE8E4();

  sub_1D5BEEACC(v6, v7);
  if ((v3 & 1) == 0)
  {
    sub_1D5C17350();
    swift_allocError();
    v5 = v4;
    *v4 = sub_1D7259EEC();
    *(v5 + 40) = 1;
    swift_willThrow();
  }

  sub_1D5BEEACC(v0, v1);
}

uint64_t sub_1D5F2AF14()
{

  return swift_deallocClassInstance();
}

void sub_1D5F2AF78()
{
  if (!qword_1EC8811C0)
  {
    type metadata accessor for DebugFormatCanvasBindResult();
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    v0 = sub_1D726288C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8811C0);
    }
  }
}

uint64_t sub_1D5F2AFF8()
{
  v1 = *(type metadata accessor for DebugFormatCanvasBindRequest() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D5F2AF78();
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);

  return sub_1D5F27414(v4, (v0 + v2), v5);
}

uint64_t sub_1D5F2B188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5F2B1E8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1D5F2B27C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1D5F2B28C()
{
  if (!qword_1EDF3BF58)
  {
    type metadata accessor for FormatLayoutAttributes();
    sub_1D5EB5218();
    sub_1D5B71010(&qword_1EDF28608, type metadata accessor for FormatLayoutAttributes);
    v0 = sub_1D725A4AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BF58);
    }
  }
}

uint64_t sub_1D5F2B398(uint64_t a1)
{
  sub_1D5B6D284(0, &unk_1EDF3C080, MEMORY[0x1E69D7138], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F2B424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F2B48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D5F2B4F4()
{
  v1 = *(type metadata accessor for DebugFormatCanvasBindResult() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = (v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  sub_1D5F28B84(v2, v3, v4, v5);
}

uint64_t sub_1D5F2B578(uint64_t a1, uint64_t a2)
{
  sub_1D5B6D284(0, &qword_1EC899B20, MEMORY[0x1E69D74E0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatSlotItemOrdering.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5F2B6A4()
{
  result = qword_1EC8811D0;
  if (!qword_1EC8811D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811D0);
  }

  return result;
}

unint64_t sub_1D5F2B6F8(uint64_t a1)
{
  result = sub_1D5F2B720();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2B720()
{
  result = qword_1EC8811D8;
  if (!qword_1EC8811D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811D8);
  }

  return result;
}

unint64_t sub_1D5F2B774(void *a1)
{
  a1[1] = sub_1D5F2B7AC();
  a1[2] = sub_1D5F2B800();
  result = sub_1D5F2B6A4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F2B7AC()
{
  result = qword_1EDF27FD0;
  if (!qword_1EDF27FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27FD0);
  }

  return result;
}

unint64_t sub_1D5F2B800()
{
  result = qword_1EDF0D9F8;
  if (!qword_1EDF0D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D9F8);
  }

  return result;
}

void *sub_1D5F2B894@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v5 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  if (v9)
  {
    v12 = *(v11 + 32);
    v13 = sub_1D5EE5AA4();
    result = v12(v61, &type metadata for FeedIssue, &type metadata for FeedIssue, v13, v10, v11);
    if (!v3)
    {
      v59 = v61[6];
      v60[0] = v62[0];
      *(v60 + 9) = *(v62 + 9);
      v53 = v61[0];
      v54 = v61[1];
      v55 = v61[2];
      v56 = v61[3];
      v57 = v61[4];
      v58 = v61[5];
      v15 = *&v61[0];
      v16 = [*&v61[0] layeredCoverJSON];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1D726207C();
        v20 = v19;

        [v15 layeredCoverAspectRatio];
        v22 = v21;
        result = sub_1D5ECF320(&v53);
        v23 = v42;
        *v42 = v18;
        v23[1] = v20;
        v23[2] = v22;
      }

      else
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B571E0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        v36 = v35;
        v51 = 0;
        v52 = 0xE000000000000000;
        v49 = v59;
        v50[0] = v60[0];
        *(v50 + 9) = *(v60 + 9);
        v45 = v55;
        v46 = v56;
        v47 = v57;
        v48 = v58;
        v43 = v53;
        v44 = v54;
        sub_1D7263F9C();
        v37 = v52;
        *v36 = v51;
        v36[1] = v37;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return sub_1D5ECF320(&v53);
      }
    }
  }

  else
  {
    v24 = *(v11 + 32);
    v25 = sub_1D5B571E0(&qword_1EDF34AD0, type metadata accessor for FeedHeadline);
    result = v24(v5, v5, v25, v10, v11);
    if (v3)
    {
      return result;
    }

    v26 = *(v8 + 5);
    if ([v26 respondsToSelector_])
    {
      v27 = [v26 layeredThumbnailJSON];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1D726207C();
        v31 = v30;

        if ([v26 respondsToSelector_])
        {
          [v26 layeredThumbnailAspectRatio];
          v33 = v32;
          result = sub_1D5C10040(v8);
          v34 = v42;
          *v42 = v29;
          v34[1] = v31;
          v34[2] = v33;
          return result;
        }
      }
    }

    type metadata accessor for FormatLayoutError();
    sub_1D5B571E0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    v39 = v38;
    *&v61[0] = 0;
    *(&v61[0] + 1) = 0xE000000000000000;
    sub_1D7263F9C();
    v40 = *(&v61[0] + 1);
    *v39 = *&v61[0];
    v39[1] = v40;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_1D5C10040(v8);
  }

  return result;
}

uint64_t static FormatLayeredMediaNodeBinding.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1D5F2BCD8(uint64_t a1)
{
  result = sub_1D5F2BD00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2BD00()
{
  result = qword_1EC8811E0;
  if (!qword_1EC8811E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811E0);
  }

  return result;
}

unint64_t sub_1D5F2BD54(void *a1)
{
  a1[1] = sub_1D5F2BD8C();
  a1[2] = sub_1D5F2BDE0();
  result = sub_1D5F2BE34();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F2BD8C()
{
  result = qword_1EDF21258;
  if (!qword_1EDF21258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21258);
  }

  return result;
}

unint64_t sub_1D5F2BDE0()
{
  result = qword_1EDF0A480;
  if (!qword_1EDF0A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A480);
  }

  return result;
}

unint64_t sub_1D5F2BE34()
{
  result = qword_1EC8811E8;
  if (!qword_1EC8811E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811E8);
  }

  return result;
}

uint64_t sub_1D5F2BEB8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      return 1;
    }
  }

  else if ((*a2 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for FormatLayeredMediaNodeBinding(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t *sub_1D5F2BF80(uint64_t a1)
{
  v4 = *v1;
  v14 = *(v1 + 16);
  v5 = *(v1 + 8);
  v12 = v4;
  v13 = v5;
  sub_1D5F2C6D4(v4, v5);
  v6 = &v12;
  sub_1D69A9B58(a1);
  if (v2)
  {
    sub_1D5F2C6E8(v12, v13);
  }

  else
  {
    v8 = v7;
    sub_1D5F2C6E8(v12, v13);
    v9 = sub_1D619AA74();
    v10 = [v9 stringFromNumber_];

    if (v10)
    {
      v6 = sub_1D726207C();
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

BOOL _s8NewsFeed20FormatTextNodeNumberV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  v18 = *a1;
  LOBYTE(v19) = v7;
  v11 = v5;
  LOBYTE(v12) = v8;
  sub_1D5F2C6D4(v18, v7);
  sub_1D5F2C6D4(v5, v8);
  LOBYTE(v5) = _s8NewsFeed12FormatNumberO2eeoiySbAC_ACtFZ_0(&v18, &v11);
  sub_1D5F2C6E8(v11, v12);
  sub_1D5F2C6E8(v18, v19);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  if ((v4 & 0xFF00) != 0x800)
  {
    v22 = *(a1 + 72);
    v23 = *(a1 + 88);
    v24[0] = *(a1 + 104);
    *(v24 + 9) = *(a1 + 113);
    v19 = *(a1 + 24);
    v20 = *(a1 + 40);
    v21 = *(a1 + 56);
    v18 = v4;
    if ((v6 & 0xFF00) != 0x800)
    {
      v15 = *(a2 + 72);
      v16 = *(a2 + 88);
      v17[0] = *(a2 + 104);
      *(v17 + 9) = *(a2 + 113);
      v12 = *(a2 + 24);
      v13 = *(a2 + 40);
      v14 = *(a2 + 56);
      v11 = v6;
      return _s8NewsFeed012FormatNumberC0V2eeoiySbAC_ACtFZ_0(&v18, &v11);
    }

    return 0;
  }

  return (v6 & 0xFF00) == 2048;
}

unint64_t sub_1D5F2C424(uint64_t a1)
{
  result = sub_1D5F2C44C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2C44C()
{
  result = qword_1EC8811F0;
  if (!qword_1EC8811F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811F0);
  }

  return result;
}

unint64_t sub_1D5F2C4A0(void *a1)
{
  a1[1] = sub_1D5F2C4D8();
  a1[2] = sub_1D5F2C52C();
  result = sub_1D5F2C580();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F2C4D8()
{
  result = qword_1EDF0ECB8;
  if (!qword_1EDF0ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECB8);
  }

  return result;
}

unint64_t sub_1D5F2C52C()
{
  result = qword_1EDF0ECC0;
  if (!qword_1EDF0ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECC0);
  }

  return result;
}

unint64_t sub_1D5F2C580()
{
  result = qword_1EC8811F8;
  if (!qword_1EC8811F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8811F8);
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D5F2C614(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 129))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D5F2C65C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D5F2C6D4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D5F2C6E8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1D5F2C734(uint64_t a1)
{
  result = sub_1D5F2C75C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2C75C()
{
  result = qword_1EC881200;
  if (!qword_1EC881200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881200);
  }

  return result;
}

void *sub_1D5F2C800(uint64_t a1, uint64_t a2)
{
  v185 = a2;
  sub_1D5D5046C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v183 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedRecipe();
  v179 = *(v6 - 8);
  v180 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v182 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F2DDBC(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v178 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v184 = &v162 - v14;
  v15 = type metadata accessor for FeedPuzzleStatistic();
  v174 = *(v15 - 8);
  v175 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v165 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v181 = &v162 - v20;
  sub_1D5F2DDF0(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v173 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v177 = &v162 - v26;
  v27 = type metadata accessor for FeedWebEmbed();
  v169 = *(v27 - 8);
  v170 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v164 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v176 = &v162 - v32;
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v168 = &v162 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v172 = &v162 - v38;
  v39 = type metadata accessor for FeedHeadline(0);
  v167 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v163 = &v162 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v171 = &v162 - v44;
  sub_1D5F2DE24(0);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v48 = &v162 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v162 - v51;
  v53 = type metadata accessor for FeedWeather(0);
  v166 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v162 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v162 - v59;
  v61 = type metadata accessor for FeedGroupItem();
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = &v162 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(a1 + 112);
  v242 = *(a1 + 96);
  v243 = v65;
  v244 = *(a1 + 128);
  v245 = *(a1 + 144);
  v66 = *(a1 + 48);
  v238 = *(a1 + 32);
  v239 = v66;
  v67 = *(a1 + 80);
  v240 = *(a1 + 64);
  v241 = v67;
  v68 = *(a1 + 16);
  v236 = *a1;
  v237 = v68;
  sub_1D5F2E068(v185, v64, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v99 = *(v64 + 5);
      v100 = *(v64 + 7);
      v192 = *(v64 + 6);
      v193[0] = v100;
      *(v193 + 9) = *(v64 + 121);
      v101 = *(v64 + 1);
      v102 = *(v64 + 3);
      v188 = *(v64 + 2);
      v189 = v102;
      v103 = *(v64 + 3);
      v104 = *(v64 + 5);
      v190 = *(v64 + 4);
      v191 = v104;
      v105 = *(v64 + 1);
      v186 = *v64;
      v187 = v105;
      v106 = *(a1 + 112);
      v201 = *(a1 + 96);
      v202 = v106;
      v203 = *(a1 + 128);
      v107 = *(a1 + 48);
      v197 = *(a1 + 32);
      v198 = v107;
      v108 = *(a1 + 80);
      v199 = *(a1 + 64);
      v200 = v108;
      v109 = *(a1 + 16);
      v195 = *a1;
      v196 = v109;
      v110 = *(v64 + 7);
      v230 = v192;
      v231[0] = v110;
      *(v231 + 9) = *(v64 + 121);
      v226 = v188;
      v227 = v103;
      v228 = v190;
      v229 = v99;
      *&v204 = *(a1 + 144);
      v224 = v186;
      v225 = v101;
      v69 = sub_1D6CDE0AC(&v195, &v224);
      sub_1D5ECF320(&v186);
      return v69;
    case 2u:
    case 0xCu:
      sub_1D5F2DD5C(v64, type metadata accessor for FeedGroupItem);
      return sub_1D7073500(MEMORY[0x1E69E7CC0]);
    case 3u:
      sub_1D5F2E000(v64, v60, type metadata accessor for FeedWeather);
      sub_1D5F2E068(v60, v52, type metadata accessor for FeedWeather);
      v79 = v166;
      (*(v166 + 56))(v52, 0, 1, v53);
      sub_1D5F2E068(v52, v48, sub_1D5F2DE24);
      if ((*(v79 + 48))(v48, 1, v53) == 1)
      {
        sub_1D5F2DD5C(v48, sub_1D5F2DE24);
        v69 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        sub_1D5F2E000(v48, v56, type metadata accessor for FeedWeather);
        v201 = v242;
        v202 = v243;
        v203 = v244;
        *&v204 = v245;
        v197 = v238;
        v198 = v239;
        v199 = v240;
        v200 = v241;
        v195 = v236;
        v196 = v237;
        v69 = sub_1D60F2F30(&v195, v56);
        sub_1D5F2DD5C(v56, type metadata accessor for FeedWeather);
      }

      sub_1D5F2DD5C(v52, sub_1D5F2DE24);
      v139 = type metadata accessor for FeedWeather;
      goto LABEL_29;
    case 4u:
      v115 = *(v64 + 13);
      v116 = *(v64 + 11);
      v207 = *(v64 + 12);
      v208 = v115;
      v117 = *(v64 + 13);
      v209 = *(v64 + 14);
      v118 = *(v64 + 9);
      v119 = *(v64 + 7);
      v203 = *(v64 + 8);
      v204 = v118;
      v120 = *(v64 + 9);
      v121 = *(v64 + 11);
      v205 = *(v64 + 10);
      v206 = v121;
      v122 = *(v64 + 5);
      v123 = *(v64 + 3);
      v199 = *(v64 + 4);
      v200 = v122;
      v124 = *(v64 + 5);
      v125 = *(v64 + 7);
      v201 = *(v64 + 6);
      v202 = v125;
      v126 = *(v64 + 1);
      v195 = *v64;
      v196 = v126;
      v127 = *(v64 + 3);
      v129 = *v64;
      v128 = *(v64 + 1);
      v197 = *(v64 + 2);
      v198 = v127;
      v130 = *(a1 + 112);
      v230 = *(a1 + 96);
      v231[0] = v130;
      v231[1] = *(a1 + 128);
      v131 = *(a1 + 48);
      v226 = *(a1 + 32);
      v227 = v131;
      v132 = *(a1 + 80);
      v228 = *(a1 + 64);
      v229 = v132;
      v133 = *(a1 + 16);
      v224 = *a1;
      v225 = v133;
      v193[5] = v207;
      v193[6] = v117;
      v193[7] = *(v64 + 14);
      v193[1] = v203;
      v193[2] = v120;
      v193[3] = v205;
      v193[4] = v116;
      v190 = v199;
      v191 = v124;
      v192 = v201;
      v193[0] = v119;
      v186 = v129;
      v187 = v128;
      v210 = *(v64 + 30);
      *&v232 = *(a1 + 144);
      v194 = *(v64 + 30);
      v188 = v197;
      v189 = v123;
      v69 = sub_1D6A4FE30(&v224, &v186);
      sub_1D5F2DFAC(&v195);
      return v69;
    case 5u:
      v60 = v171;
      sub_1D5F2E000(v64, v171, type metadata accessor for FeedHeadline);
      v140 = v172;
      sub_1D5F2E068(v60, v172, type metadata accessor for FeedHeadline);
      v141 = v167;
      (*(v167 + 56))(v140, 0, 1, v39);
      v142 = v168;
      sub_1D5F2E068(v140, v168, sub_1D5B69BE0);
      if ((*(v141 + 48))(v142, 1, v39) == 1)
      {
        sub_1D5F2DD5C(v142, sub_1D5B69BE0);
        v69 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v160 = v163;
        sub_1D5F2E000(v142, v163, type metadata accessor for FeedHeadline);
        v201 = v242;
        v202 = v243;
        v203 = v244;
        *&v204 = v245;
        v197 = v238;
        v198 = v239;
        v199 = v240;
        v200 = v241;
        v195 = v236;
        v196 = v237;
        v69 = sub_1D5E4E6A4(&v195, v160);
        sub_1D5F2DD5C(v160, type metadata accessor for FeedHeadline);
      }

      sub_1D5F2DD5C(v140, sub_1D5B69BE0);
      v139 = type metadata accessor for FeedHeadline;
      goto LABEL_29;
    case 6u:
      v60 = v176;
      sub_1D5F2E000(v64, v176, type metadata accessor for FeedWebEmbed);
      v111 = v177;
      sub_1D5F2E068(v60, v177, type metadata accessor for FeedWebEmbed);
      v113 = v169;
      v112 = v170;
      (*(v169 + 56))(v111, 0, 1, v170);
      v114 = v173;
      sub_1D5F2E068(v111, v173, sub_1D5F2DDF0);
      if ((*(v113 + 48))(v114, 1, v112) == 1)
      {
        sub_1D5F2DD5C(v114, sub_1D5F2DDF0);
        v69 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v159 = v164;
        sub_1D5F2E000(v114, v164, type metadata accessor for FeedWebEmbed);
        v201 = v242;
        v202 = v243;
        v203 = v244;
        *&v204 = v245;
        v197 = v238;
        v198 = v239;
        v199 = v240;
        v200 = v241;
        v195 = v236;
        v196 = v237;
        v69 = sub_1D6D49E84(&v195, v159);
        sub_1D5F2DD5C(v159, type metadata accessor for FeedWebEmbed);
      }

      sub_1D5F2DD5C(v111, sub_1D5F2DDF0);
      v139 = type metadata accessor for FeedWebEmbed;
      goto LABEL_29;
    case 7u:
      v153 = *v64;
      v154 = *(a1 + 112);
      v201 = *(a1 + 96);
      v202 = v154;
      v203 = *(a1 + 128);
      *&v204 = *(a1 + 144);
      v155 = *(a1 + 48);
      v197 = *(a1 + 32);
      v198 = v155;
      v156 = *(a1 + 80);
      v199 = *(a1 + 64);
      v200 = v156;
      v157 = *(a1 + 16);
      v195 = *a1;
      v196 = v157;
      v93 = v153;
      v94 = FCFeedDescriptor.feedTag.getter();

      goto LABEL_20;
    case 8u:
      v84 = *v64;
      v85 = *(v64 + 1);
      v87 = *(v64 + 2);
      v86 = *(v64 + 3);
      v88 = v64[32];
      v89 = *(a1 + 112);
      v201 = *(a1 + 96);
      v202 = v89;
      v203 = *(a1 + 128);
      *&v204 = *(a1 + 144);
      v90 = *(a1 + 48);
      v197 = *(a1 + 32);
      v198 = v90;
      v91 = *(a1 + 80);
      v199 = *(a1 + 64);
      v200 = v91;
      v92 = *(a1 + 16);
      v195 = *a1;
      v196 = v92;
      *&v186 = v84;
      *(&v186 + 1) = v85;
      *&v187 = v87;
      *(&v187 + 1) = v86;
      LOBYTE(v188) = v88;
      v69 = sub_1D6B19314(&v195, &v186);
      swift_unknownObjectRelease();

      return v69;
    case 9u:
      v143 = *(v64 + 11);
      v205 = *(v64 + 10);
      v206 = v143;
      v207 = *(v64 + 12);
      v144 = *(v64 + 7);
      v201 = *(v64 + 6);
      v202 = v144;
      v145 = *(v64 + 9);
      v203 = *(v64 + 8);
      v204 = v145;
      v146 = *(v64 + 3);
      v197 = *(v64 + 2);
      v198 = v146;
      v147 = *(v64 + 5);
      v199 = *(v64 + 4);
      v200 = v147;
      v148 = *(v64 + 1);
      v195 = *v64;
      v196 = v148;
      sub_1D5F2DEAC(&v195, &v186);
      sub_1D5F2E068(&v186, &v211, sub_1D5F2DF08);
      if (v214)
      {
        v233 = v221;
        v234 = v222;
        v235 = v223;
        v230 = v217;
        v231[0] = v218;
        v232 = v220;
        v231[1] = v219;
        v226 = v213;
        v227 = v214;
        v228 = v215;
        v229 = v216;
        v224 = v211;
        v225 = v212;
        v149 = *(a1 + 112);
        v217 = *(a1 + 96);
        v218 = v149;
        v219 = *(a1 + 128);
        *&v220 = *(a1 + 144);
        v150 = *(a1 + 48);
        v213 = *(a1 + 32);
        v214 = v150;
        v151 = *(a1 + 80);
        v215 = *(a1 + 64);
        v216 = v151;
        v152 = *(a1 + 16);
        v211 = *a1;
        v212 = v152;
        v69 = sub_1D69CADF0(&v211, &v224);
        sub_1D5F2DF58(&v224);
      }

      else
      {
        sub_1D5F2DD5C(&v211, sub_1D5F2DF08);
        v69 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
      }

      sub_1D5F2DD5C(&v186, sub_1D5F2DF08);
      sub_1D5F2DF58(&v195);
      return v69;
    case 0xAu:
      v70 = *(v64 + 1);
      v186 = *v64;
      v187 = v70;
      v71 = *(v64 + 3);
      v73 = *v64;
      v72 = *(v64 + 1);
      v188 = *(v64 + 2);
      v189 = v71;
      v74 = *(a1 + 112);
      v201 = *(a1 + 96);
      v202 = v74;
      v203 = *(a1 + 128);
      v75 = *(a1 + 48);
      v197 = *(a1 + 32);
      v198 = v75;
      v76 = *(a1 + 80);
      v199 = *(a1 + 64);
      v200 = v76;
      v77 = *(a1 + 16);
      v195 = *a1;
      v196 = v77;
      *&v204 = *(a1 + 144);
      v224 = v73;
      v225 = v72;
      v78 = *(v64 + 3);
      v226 = v188;
      v227 = v78;
      v69 = sub_1D69ABAE8(&v195, &v224);
      sub_1D5F2DE58(&v186);
      return v69;
    case 0xBu:
      v60 = v181;
      sub_1D5F2E000(v64, v181, type metadata accessor for FeedPuzzleStatistic);
      v80 = v184;
      sub_1D5F2E068(v60, v184, type metadata accessor for FeedPuzzleStatistic);
      v82 = v174;
      v81 = v175;
      (*(v174 + 56))(v80, 0, 1, v175);
      v83 = v178;
      sub_1D5F2E068(v80, v178, sub_1D5F2DDBC);
      if ((*(v82 + 48))(v83, 1, v81) == 1)
      {
        sub_1D5F2DD5C(v83, sub_1D5F2DDBC);
        v69 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v158 = v165;
        sub_1D5F2E000(v83, v165, type metadata accessor for FeedPuzzleStatistic);
        v201 = v242;
        v202 = v243;
        v203 = v244;
        *&v204 = v245;
        v197 = v238;
        v198 = v239;
        v199 = v240;
        v200 = v241;
        v195 = v236;
        v196 = v237;
        v69 = sub_1D6A62CCC(&v195, v158);
        sub_1D5F2DD5C(v158, type metadata accessor for FeedPuzzleStatistic);
      }

      sub_1D5F2DD5C(v80, sub_1D5F2DDBC);
      v139 = type metadata accessor for FeedPuzzleStatistic;
      goto LABEL_29;
    case 0xDu:
      v60 = v182;
      sub_1D5F2E000(v64, v182, type metadata accessor for FeedRecipe);
      v134 = *(a1 + 112);
      v201 = *(a1 + 96);
      v202 = v134;
      v203 = *(a1 + 128);
      *&v204 = *(a1 + 144);
      v135 = *(a1 + 48);
      v197 = *(a1 + 32);
      v198 = v135;
      v136 = *(a1 + 80);
      v199 = *(a1 + 64);
      v200 = v136;
      v137 = *(a1 + 16);
      v195 = *a1;
      v196 = v137;
      v138 = v183;
      sub_1D5F2E068(v60, v183, type metadata accessor for FeedRecipe);
      (*(v179 + 56))(v138, 0, 1, v180);
      v69 = sub_1D6C9EA0C(&v195, v138);
      sub_1D5F2DD5C(v138, sub_1D5D5046C);
      v139 = type metadata accessor for FeedRecipe;
LABEL_29:
      sub_1D5F2DD5C(v60, v139);
      break;
    default:
      v94 = *v64;
      v93 = *(v64 + 1);
      v95 = *(a1 + 112);
      v201 = *(a1 + 96);
      v202 = v95;
      v203 = *(a1 + 128);
      *&v204 = *(a1 + 144);
      v96 = *(a1 + 48);
      v197 = *(a1 + 32);
      v198 = v96;
      v97 = *(a1 + 80);
      v199 = *(a1 + 64);
      v200 = v97;
      v98 = *(a1 + 16);
      v195 = *a1;
      v196 = v98;
LABEL_20:
      swift_getObjectType();
      v69 = sub_1D6A5AE4C(&v195, v94);
      swift_unknownObjectRelease();

      break;
  }

  return v69;
}

void *sub_1D5F2D9BC(__int128 *a1, uint64_t a2)
{
  sub_1D5F2DC78(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatInspectionFeedGroupItem();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[7];
  v29 = a1[6];
  v30 = v13;
  v31 = a1[8];
  v32 = *(a1 + 18);
  v14 = a1[3];
  v25 = a1[2];
  v26 = v14;
  v15 = a1[5];
  v27 = a1[4];
  v28 = v15;
  v16 = a1[1];
  v23 = *a1;
  v24 = v16;
  sub_1D5F2E068(a2, v7, sub_1D5F2DC78);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D5F2DD5C(v7, sub_1D5F2DC78);
    return sub_1D7073500(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1D5F2E000(v7, v12, type metadata accessor for FormatInspectionFeedGroupItem);
    sub_1D5F2DCF8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v21[6] = v29;
    v21[7] = v30;
    v21[8] = v31;
    v22 = v32;
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v21[5] = v28;
    v21[0] = v23;
    v21[1] = v24;
    v19 = sub_1D5F2C800(v21, v12);
    *(inited + 56) = &type metadata for FormatInspection;
    *(inited + 64) = &off_1F51E3FD0;
    *(inited + 32) = v19;
    v20 = sub_1D7073500(inited);
    swift_setDeallocating();
    sub_1D5F2DD5C(inited + 32, sub_1D5E4F358);
    sub_1D5F2DD5C(v12, type metadata accessor for FormatInspectionFeedGroupItem);
    return v20;
  }
}

uint64_t type metadata accessor for FormatInspectionFeedGroupItem()
{
  result = qword_1EC881208;
  if (!qword_1EC881208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5F2DCF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5F2DD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5F2DF08()
{
  if (!qword_1EDF12E30)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF12E30);
    }
  }
}

uint64_t sub_1D5F2E000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F2E068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F2E0F8()
{
  result = type metadata accessor for FeedGroupItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double static FormatCodingNotEmptyTextExpressionLogicStrategy.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 50) = -64;
  *(a1 + 48) = 0;
  return result;
}

BOOL static FormatCodingNotEmptyTextExpressionLogicStrategy.shouldEncode(wrappedValue:)(uint64_t a1)
{
  v1 = vorrq_s8(*(a1 + 8), *(a1 + 24));
  v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | *(a1 + 40);
  return *a1 != 1 || v2 != 0 || (*(a1 + 48) | (*(a1 + 50) << 16)) != 12582912;
}

double sub_1D5F2E254@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 50) = -64;
  *(a1 + 48) = 0;
  return result;
}

BOOL sub_1D5F2E27C(uint64_t a1)
{
  v1 = vorrq_s8(*(a1 + 8), *(a1 + 24));
  v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | *(a1 + 40);
  return *a1 != 1 || v2 != 0 || (*(a1 + 48) | (*(a1 + 50) << 16)) != 12582912;
}

double static FormatCodingNotEmptyFloatExpressionLogicStrategy.defaultValue.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 13;
  *a1 = xmmword_1D7282A80;
  return result;
}

unint64_t sub_1D5F2E300(uint64_t a1)
{
  result = sub_1D5F2E328();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E328()
{
  result = qword_1EC881218;
  if (!qword_1EC881218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881218);
  }

  return result;
}

unint64_t sub_1D5F2E37C(uint64_t a1)
{
  result = sub_1D5F2E3A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E3A4()
{
  result = qword_1EC881220;
  if (!qword_1EC881220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881220);
  }

  return result;
}

unint64_t sub_1D5F2E3F8()
{
  result = qword_1EDF08298;
  if (!qword_1EDF08298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF08298);
  }

  return result;
}

unint64_t sub_1D5F2E44C(uint64_t a1)
{
  result = sub_1D5F2E474();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E474()
{
  result = qword_1EC881228;
  if (!qword_1EC881228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881228);
  }

  return result;
}

unint64_t sub_1D5F2E4C8()
{
  result = qword_1EDF1C478;
  if (!qword_1EDF1C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C478);
  }

  return result;
}

unint64_t sub_1D5F2E51C()
{
  result = qword_1EDF06388;
  if (!qword_1EDF06388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06388);
  }

  return result;
}

unint64_t sub_1D5F2E570(uint64_t a1)
{
  result = sub_1D5F2E598();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E598()
{
  result = qword_1EC881230;
  if (!qword_1EC881230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881230);
  }

  return result;
}

unint64_t sub_1D5F2E5EC()
{
  result = qword_1EDF1C0D0;
  if (!qword_1EDF1C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C0D0);
  }

  return result;
}

unint64_t sub_1D5F2E640()
{
  result = qword_1EDF06120;
  if (!qword_1EDF06120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06120);
  }

  return result;
}

unint64_t sub_1D5F2E694(uint64_t a1)
{
  result = sub_1D5F2E6BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E6BC()
{
  result = qword_1EC881238;
  if (!qword_1EC881238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881238);
  }

  return result;
}

unint64_t sub_1D5F2E710()
{
  result = qword_1EDF1C790;
  if (!qword_1EDF1C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C790);
  }

  return result;
}

unint64_t sub_1D5F2E764()
{
  result = qword_1EDF06590;
  if (!qword_1EDF06590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06590);
  }

  return result;
}

unint64_t sub_1D5F2E7B8(uint64_t a1)
{
  result = sub_1D5F2E7E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E7E0()
{
  result = qword_1EC881240;
  if (!qword_1EC881240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881240);
  }

  return result;
}

unint64_t sub_1D5F2E834()
{
  result = qword_1EDF1FD08;
  if (!qword_1EDF1FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FD08);
  }

  return result;
}

unint64_t sub_1D5F2E888()
{
  result = qword_1EDF09568;
  if (!qword_1EDF09568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09568);
  }

  return result;
}

unint64_t sub_1D5F2E8DC(uint64_t a1)
{
  result = sub_1D5F2E904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2E904()
{
  result = qword_1EC881248;
  if (!qword_1EC881248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881248);
  }

  return result;
}

unint64_t sub_1D5F2E958()
{
  result = qword_1EDF1D320;
  if (!qword_1EDF1D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D320);
  }

  return result;
}

unint64_t sub_1D5F2E9AC()
{
  result = qword_1EDF06F08;
  if (!qword_1EDF06F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F08);
  }

  return result;
}

unint64_t sub_1D5F2EA00(uint64_t a1)
{
  result = sub_1D5F2EA28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F2EA28()
{
  result = qword_1EC881250;
  if (!qword_1EC881250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881250);
  }

  return result;
}

unint64_t sub_1D5F2EA7C()
{
  result = qword_1EDF1E6B0;
  if (!qword_1EDF1E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E6B0);
  }

  return result;
}

unint64_t sub_1D5F2EAD0()
{
  result = qword_1EDF07EA0;
  if (!qword_1EDF07EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07EA0);
  }

  return result;
}

uint64_t FeedReplaceLocation.group.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t FeedReplaceLocation.cursorContainer.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t FeedReplaceLocation.init(group:cursorContainer:findConfigBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  result = type metadata accessor for FeedReplaceLocation();
  *(a5 + *(result + 36)) = a2;
  v12 = (a5 + *(result + 40));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

unint64_t sub_1D5F2EE4C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedCursorContainer();
    if (v2 <= 0x3F)
    {
      result = sub_1D5B5D9E0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D5F2EF60(_DWORD *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *((((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void sub_1D5F2F164(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v13 = 0;
    v14 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = a3 - v9 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v13)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = ((((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          *v18 = (a2 - 1);
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v9 + a2;
    bzero(a1, v10);
    *a1 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v10) = v15;
    }

    else
    {
      *(a1 + v10) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v10) = v15;
  }
}

uint64_t FormatAnimationNodeDataLayoutAttributes.sourceItemData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_1D5EBC314(v4, v5);
}

void sub_1D5F2F434()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1D5F2F810();
    if (v1 <= 0x3F)
    {
      sub_1D5F2F868();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D5F2F4D4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1D5F2F620(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1D5F2F810()
{
  if (!qword_1EDF2CBF0)
  {
    type metadata accessor for FormatAnimationData();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2CBF0);
    }
  }
}

void sub_1D5F2F868()
{
  if (!qword_1EDF2AB20)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2AB20);
    }
  }
}

uint64_t FeedContentPrefetchContext.init(formatService:assetHandleFactory:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5B63F14(a1, a3);

  return sub_1D5B63F14(a2, a3 + 40);
}

uint64_t FeedContentPrefetchTask.Result.serviceConfig.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t sub_1D5F2F984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  result = type metadata accessor for FeedContentPrefetchTask.Result();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t FeedContentPrefetchTask.__allocating_init(configFetcher:context:purpose:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  FeedContentPrefetchTask.init(configFetcher:context:purpose:log:)(a1, a2, a3, a4);
  return v8;
}

char *FeedContentPrefetchTask.init(configFetcher:context:purpose:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 80);
  (*(*(v9 - 8) + 32))(&v4[*(*v4 + 104)], a1, v9);
  v10 = *(v8 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;
  (*(v12 + 32))(v14 + v13, a2, AssociatedTypeWitness);
  v15 = &v4[*(*v4 + 112)];
  *v15 = sub_1D5F2FD4C;
  v15[1] = v14;
  *&v4[*(*v4 + 120)] = a3;
  *(v4 + 2) = a4;
  return v4;
}

uint64_t sub_1D5F2FC48(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v4);
  v6 = &v8 - v5;
  sub_1D725BC0C();
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  return sub_1D725BB0C();
}

char *FeedContentPrefetchTask.__allocating_init(configFetcher:purpose:log:contextBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  (*(*(*(*v10 + 80) - 8) + 32))(&v10[*(*v10 + 104)], a1);
  v11 = &v10[*(*v10 + 112)];
  *v11 = a4;
  *(v11 + 1) = a5;
  *&v10[*(*v10 + 120)] = a2;
  *(v10 + 2) = a3;
  return v10;
}

char *FeedContentPrefetchTask.init(configFetcher:purpose:log:contextBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(*(*v5 + 80) - 8) + 32))(&v5[*(*v5 + 104)], a1);
  v10 = &v5[*(*v5 + 112)];
  *v10 = a4;
  *(v10 + 1) = a5;
  *&v5[*(*v5 + 120)] = a2;
  *(v5 + 2) = a3;
  return v5;
}

uint64_t FeedContentPrefetchTask.prefetch(with:)(uint64_t a1)
{
  sub_1D7262EDC();
  sub_1D725C30C();
  swift_getAssociatedTypeWitness();
  sub_1D725BDCC();
  v2 = sub_1D725B92C();
  swift_getAssociatedTypeWitness();
  sub_1D725BA9C();

  sub_1D5F305C0(a1, &v15);
  v3 = swift_allocObject();
  v4 = v18;
  v3[3] = v17;
  v3[4] = v4;
  v3[5] = v19;
  v5 = v16;
  v3[1] = v15;
  v3[2] = v5;
  v6 = sub_1D725B92C();
  sub_1D725BA9C();

  sub_1D5F305C0(a1, &v15);
  v7 = swift_allocObject();
  v8 = v18;
  v7[3] = v17;
  v7[4] = v8;
  v7[5] = v19;
  v9 = v16;
  v7[1] = v15;
  v7[2] = v9;
  v10 = sub_1D725B92C();
  sub_1D5F30D78();
  swift_getTupleTypeMetadata2();
  sub_1D725BA9C();

  v11 = sub_1D725B92C();
  type metadata accessor for FeedContentPrefetchTask.Result();
  sub_1D725BAAC();

  v12 = sub_1D725B92C();
  v13 = sub_1D725BADC();

  return v13;
}

uint64_t sub_1D5F303AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v20 = *(*a2 + 88);
  v7 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v19 - v11;
  sub_1D7262EDC();
  sub_1D725C30C();
  sub_1D5F30614(a1, a3);
  (*(v9 + 16))(v12, a1, AssociatedTypeWitness);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = v20;
  *(v14 + 2) = v7;
  *(v14 + 3) = v15;
  *(v14 + 4) = a2;
  (*(v9 + 32))(&v14[v13], v12, AssociatedTypeWitness);

  v16 = sub_1D725B92C();
  v17 = sub_1D725BA8C();

  return v17;
}

uint64_t sub_1D5F30614(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = type metadata accessor for FormatTransformData();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatServiceOptions();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + *(v4 + 120));
  v14 = v2[2];
  if (qword_1EDF2BBB8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_1EDFFCAD0);
  sub_1D5CEEFC0(v15, v8, type metadata accessor for FormatTransformData);
  *(v12 + 5) = 0x4122750000000000;
  v12[48] = 0;
  *&v12[v9[12]] = v13;
  *&v12[v9[13]] = v14;
  *(v12 + 56) = xmmword_1D7282F10;
  *(v12 + 9) = 0x40F5180000000000;
  *(v12 + 10) = 30;
  sub_1D5CEEFC0(v8, &v12[v9[10]], type metadata accessor for FormatTransformData);
  v16 = v13;
  v17 = v14;
  sub_1D5F32C28(v8, type metadata accessor for FormatTransformData);
  *&v12[v9[11]] = MEMORY[0x1E69E7CD0];
  *&v12[v9[16]] = 0;
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[v9[15]] = 1;
  v12[v9[14]] = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = sub_1D5F316A4(AssociatedTypeWitness, AssociatedConformanceWitness);
  MEMORY[0x1EEE9AC00](v20, v21);
  v26[-2] = a2;
  v26[-1] = v12;
  v22 = sub_1D5ECAC14(sub_1D5F32E90, &v26[-4], v20);

  sub_1D5F32EB0(0);
  v26[0] = v22;
  v23 = sub_1D725B92C();
  sub_1D5B59480(0, &qword_1EDF05390, sub_1D5F32EB0, MEMORY[0x1E69E62F8]);
  sub_1D5F32EE4(&qword_1EDF05388, &qword_1EDF05390, sub_1D5F32EB0);
  v24 = sub_1D725BA3C();

  sub_1D5F32C28(v12, type metadata accessor for FormatServiceOptions);
  return v24;
}

uint64_t sub_1D5F309B4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1D5C384A0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  v5 = sub_1D72644BC();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D5B7E2C0();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1D7262EDC();
  sub_1D725C30C();

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
}

uint64_t sub_1D5F30B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v11 = &v17 - v10;
  sub_1D7262EDC();
  sub_1D725C30C();
  v18 = sub_1D5F328F8(a1, v18);
  (*(v8 + 16))(v11, a1, AssociatedTypeWitness);
  v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v6;
  *(v13 + 3) = v5;
  *(v13 + 4) = a2;
  (*(v8 + 32))(&v13[v12], v11, AssociatedTypeWitness);

  v14 = sub_1D725B92C();
  sub_1D5F30D78();
  swift_getTupleTypeMetadata2();
  v15 = sub_1D725BA8C();

  return v15;
}

void sub_1D5F30D78()
{
  if (!qword_1EDF1AEB8)
  {
    sub_1D5B5A498(255, &qword_1EDF1AB50);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AEB8);
    }
  }
}

uint64_t sub_1D5F30DE0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_1D5C384A0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  if (v5 >> 62)
  {
    sub_1D7263BFC();
  }

  v7 = sub_1D72644BC();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D5B7E2C0();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_1D7262EDC();
  sub_1D725C30C();

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D5F30D78();
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, a2, AssociatedTypeWitness);
  *(a3 + v11) = v5;
}

uint64_t sub_1D5F30F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D5F30D78();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v9);
  v11 = &v40 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v40 - v19;
  (*(v21 + 16))(v11, a1, TupleTypeMetadata2, v18);
  v22 = *&v11[*(TupleTypeMetadata2 + 48)];
  v43 = v12;
  v44 = AssociatedTypeWitness;
  (*(v12 + 32))(v20, v11, AssociatedTypeWitness);
  v45 = v6;
  v23 = sub_1D5F313CC(v20);
  if (v22 >> 62)
  {
    v24 = sub_1D7263BFC();
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v47;
  v46 = v5;
  v41 = v23;
  if (!v24)
  {

LABEL_12:
    v31 = objc_allocWithZone(MEMORY[0x1E69B5240]);
    sub_1D5B5A498(0, &unk_1EDF04508);
    v32 = sub_1D726265C();

    v33 = [v31 initWithManifests_];

    v35 = v42;
    v34 = v43;
    v36 = v44;
    (*(v43 + 16))(v42, v20, v44);
    v37 = objc_opt_self();
    v38 = v41;
    v39 = [v37 manifestByMergingManifest:v41 withManifest:v33];

    (*(v34 + 8))(v20, v36);
    return sub_1D5F2F984(v35, v39, v25);
  }

  v48 = MEMORY[0x1E69E7CC0];
  result = sub_1D7263ECC();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v40 = v3;
    v27 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1DA6FB460](v27, v22);
      }

      else
      {
        v28 = *(v22 + 8 * v27 + 32);
      }

      v29 = v28;
      ++v27;
      v30 = [v28 contentManifest];

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v24 != v27);

    v25 = v47;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_1D5F313CC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v3);
  (*(v6 + 16))(&v13 - v5, a1, AssociatedTypeWitness, v4);
  sub_1D5B49474(0, qword_1EDF0FDC8);
  if (swift_dynamicCast())
  {
    v7 = *(&v14 + 1);
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    v9 = (*(v8 + 8))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(&v13);
    if (v9)
    {
      v10 = [v9 contentManifest];

      return v10;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_1D5F32C28(&v13, sub_1D5F32620);
  }

  v12 = [objc_opt_self() empty];

  return v12;
}

uint64_t sub_1D5F315A8()
{
  sub_1D7262EBC();
  sub_1D5C384A0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D5B7E2C0();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D725C30C();
}

uint64_t sub_1D5F316A4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v9 = &v20[-v8];
  v10 = swift_checkMetadataState();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v20[-v14];
  (*(a2 + 64))(a1, a2, v13);
  (*(AssociatedConformanceWitness + 40))(v10, AssociatedConformanceWitness);
  (*(v11 + 8))(v15, v10);
  v16 = swift_getAssociatedConformanceWitness();
  v17 = (*(v16 + 48))(AssociatedTypeWitness, v16);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  v23 = v17;
  v21 = a1;
  v22 = a2;
  swift_getAssociatedTypeWitness();
  sub_1D72627FC();
  type metadata accessor for FormatContent(0);
  swift_getWitnessTable();
  v18 = sub_1D726242C();

  return v18;
}

void sub_1D5F31994(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FormatServiceOptions();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v19 = a2;
  v20 = a1;
  v21 = a3;
  type metadata accessor for FormatContent.Resolved();
  sub_1D725BDCC();
  sub_1D5F305C0(a2, v22);
  sub_1D5CEEFC0(a3, &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FormatServiceOptions);
  v12 = (*(v9 + 80) + 96) & ~*(v9 + 80);
  v13 = swift_allocObject();
  v14 = v22[3];
  v13[3] = v22[2];
  v13[4] = v14;
  v13[5] = v22[4];
  v15 = v22[1];
  v13[1] = v22[0];
  v13[2] = v15;
  sub_1D5F32F68(&v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  v16 = sub_1D725B92C();
  v17 = sub_1D725BA7C();

  *a4 = v17;
}

uint64_t sub_1D5F31B54(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  sub_1D5B59480(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v24 - v6;
  v8 = type metadata accessor for FormatContentPool();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[4];
  v25 = a1[3];
  v26 = v12;
  v24[1] = __swift_project_boxed_opaque_existential_1(a1, v25);
  v13 = sub_1D72608BC();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_1D605A62C(MEMORY[0x1E69E7CC0]);
  v16 = sub_1D605A62C(v14);
  v17 = sub_1D605A5F8(v14);
  v18 = sub_1D605AD18(v14);
  v19 = sub_1D605B9BC(v14);
  v20 = sub_1D605B9F0(v14);
  v21 = sub_1D605ACB8(v14);
  FormatContentPool.init(headlines:headlineLists:issues:tags:tagFeeds:tagFeedFetches:puzzles:puzzleTypes:puzzleStatistics:recipes:recipeLists:placeholders:slotPlaceholders:webArchivePromises:resourcePromises:sportsDataVisualizations:genericDataVisualizations:sponsoredAdBanner:)(v14, v15, v14, v14, v16, v17, v14, v14, v11, v14, v14, v18, v14, v14, v19, v20, v14, v21, v7);
  v22 = FormatServiceType.resolve(content:pool:options:)(v27, v11, v28, v25, v26);
  sub_1D5F32C28(v11, type metadata accessor for FormatContentPool);
  return v22;
}

uint64_t sub_1D5F31D8C(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v7 + 16))(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v5);
  sub_1D5B49474(0, &qword_1EDF14238);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v12, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v10 = (*(v9 + 8))(a1 + 40, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return v10;
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D5F32C28(v12, sub_1D5F32C88);
    return MEMORY[0x1E69E7CC0];
  }
}

id *FeedContentPrefetchTask.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 13));

  return v0;
}

uint64_t FeedContentPrefetchTask.__deallocating_deinit()
{
  FeedContentPrefetchTask.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F3204C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D5F32094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5F320F8()
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

uint64_t sub_1D5F3220C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_1D5B5A498(319, &unk_1EDF04508);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5F322B4(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void sub_1D5F32444(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v9 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v9 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v9)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      bzero(a1, v10);
      *a1 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v10) = 0;
  }

  else if (v14)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v7 < 0x7FFFFFFF)
  {
    v18 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = (a2 - 1);
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v6 + 56);

    v17(a1, a2);
  }
}

void sub_1D5F32620()
{
  if (!qword_1EDF0FDC0)
  {
    sub_1D5B49474(255, qword_1EDF0FDC8);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0FDC0);
    }
  }
}

uint64_t sub_1D5F32688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v5);
  (*(v8 + 16))(v13 - v7, a1, AssociatedTypeWitness, v6);
  sub_1D5B49474(0, &qword_1EDF14258);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v13, v15);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v10 + 8))(v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1D5F32C28(v13, sub_1D5F33084);
    v12 = type metadata accessor for FormatContent(0);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_1D5F328F8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1D5F31D8C(a2, AssociatedTypeWitness);
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_14:

    sub_1D5F32BC0();
    v13 = sub_1D725B92C();
    sub_1D5B59480(0, &qword_1EDF05370, sub_1D5F32BC0, MEMORY[0x1E69E62F8]);
    sub_1D5F32EE4(&qword_1EDF05368, &qword_1EDF05370, sub_1D5F32BC0);
    v14 = sub_1D725BA3C();

    return v14;
  }

  v6 = sub_1D7263BFC();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = sub_1D7263ECC();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6FB460](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 filePath];
      if (v11)
      {

        v15 = v10;
        sub_1D5F32BC0();
        swift_allocObject();
        sub_1D725BB1C();
      }

      else
      {
        MEMORY[0x1EEE9AC00](0, v12);
        sub_1D5F32BC0();
        swift_allocObject();
        sub_1D725BBAC();
      }

      ++v8;
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v6 != v8);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1D5F32BC0()
{
  if (!qword_1EDF17938)
  {
    sub_1D5B5A498(255, &qword_1EDF1AB50);
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17938);
    }
  }
}

uint64_t sub_1D5F32C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5F32C88()
{
  if (!qword_1EDF14230)
  {
    sub_1D5B49474(255, &qword_1EDF14238);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF14230);
    }
  }
}

uint64_t objectdestroy_18Tm_0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5F32EE4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B59480(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F32F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatServiceOptions();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F32FCC(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatServiceOptions() - 8);
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return FormatServiceType.prefetch(content:options:)(a1, v1 + v4, v5, v6);
}

void sub_1D5F33084()
{
  if (!qword_1EDF14250)
  {
    sub_1D5B49474(255, &qword_1EDF14258);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF14250);
    }
  }
}

uint64_t sub_1D5F330EC()
{
  result = sub_1D725FACC();
  if (v1 <= 0x3F)
  {
    result = sub_1D725D34C();
    if (v2 <= 0x3F)
    {
      result = sub_1D725E9DC();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}
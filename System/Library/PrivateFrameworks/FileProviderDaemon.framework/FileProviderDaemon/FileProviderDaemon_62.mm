uint64_t sub_1CF689CB8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v133 = a4;
  v134 = a2;
  v135 = a3;
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  v9 = *v4;
  v10 = *(*v4 + 96);
  v11 = *(v9 + 104);
  v144 = v7;
  v145 = v8;
  v119 = v8;
  v146 = v10;
  v147 = v11;
  v118 = v11;
  v122 = type metadata accessor for PersistenceTrigger();
  v121 = *(v122 - 8);
  v12 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v113 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v140 = AssociatedTypeWitness;
  v141 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v129 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v125 = &v113 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v124 = &v113 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v113 - v23;
  v128 = type metadata accessor for SnapshotItem();
  v132 = *(v128 - 8);
  v24 = *(v132 + 64);
  v25 = MEMORY[0x1EEE9AC00](v128);
  v127 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v123 = &v113 - v27;
  v117 = v7;
  v116 = v10;
  v28 = type metadata accessor for SnapshotMutation();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = MEMORY[0x1EEE9AC00](v28);
  v142 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v131 = &v113 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v113 - v35;
  v37 = sub_1CF9E6118();
  v138 = *(v37 - 8);
  v139 = v37;
  v38 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v42 = sub_1CF06EE90(v28);
  v43 = v29[2];
  v137 = a1;
  v44 = a1;
  v45 = v43;
  v43(v36, v44, v28);

  v136 = v40;
  v46 = sub_1CF9E6108();
  v130 = v42;
  if (os_log_type_enabled(v46, v42))
  {
    v47 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v144 = v115;
    *v47 = 136446466;
    v113 = v46;
    v48 = v5[32];

    if (v48)
    {
      v49 = 20550;
    }

    else
    {
      v49 = 21318;
    }

    v50 = sub_1CEFD0DF0(v49, 0xE200000000000000, &v144);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2082;
    v51 = v131;
    v45(v131, v36, v28);
    v114 = v45;
    v52 = v29[1];
    v52(v36, v28);
    v53 = sub_1CF06F1D8(v28);
    v55 = v54;
    v52(v51, v28);
    v56 = sub_1CEFD0DF0(v53, v55, &v144);

    *(v47 + 14) = v56;
    v57 = v113;
    _os_log_impl(&dword_1CEFC7000, v113, v130, " ✍️  %{public}s snapshot mutation: %{public}s", v47, 0x16u);
    v58 = v115;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v58, -1, -1);
    MEMORY[0x1D386CDC0](v47, -1, -1);

    (*(v138 + 8))(v136, v139);
    v59 = v114;
  }

  else
  {
    (v29[1])(v36, v28);

    (*(v138 + 8))(v136, v139);
    v59 = v45;
  }

  v60 = v142;
  v59(v142, v137, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v63 = v140;
    v62 = v141;
    if (EnumCaseMultiPayload)
    {
      v64 = v132;
      if (EnumCaseMultiPayload != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
        v100 = *&v60[*(swift_getTupleTypeMetadata3() + 64) + 8];

        v101 = v126;
        (*(v62 + 32))(v126, v60, v63);
        v102 = &v5[qword_1EDEBBA48];
        result = swift_beginAccess();
        v103 = *(v102 + 2);
        v76 = __CFADD__(v103, 1);
        v104 = v103 + 1;
        if (!v76)
        {
          *(v102 + 2) = v104;
          v105 = v143;
          (*(*v5 + 520))(v101, v134, v135, v133);
          v143 = v105;
          return (*(v62 + 8))(v101, v63);
        }

        goto LABEL_26;
      }

      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&(&v113)[-4], "from to  reason ");
      v65 = v128;
      v144 = v128;
      v145 = v128;
      v146 = &type metadata for Fields;
      v147 = MEMORY[0x1E69E6158];
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v67 = TupleTypeMetadata[12];
      v68 = v60;
      v69 = *&v60[TupleTypeMetadata[16]];
      v70 = *&v68[TupleTypeMetadata[20] + 8];

      v71 = &v68[v67];
      v72 = v127;
      (*(v64 + 32))(v127, v71, v65);
      v73 = &v5[qword_1EDEBBA48];
      result = swift_beginAccess();
      v75 = *(v73 + 1);
      v76 = __CFADD__(v75, 1);
      v77 = v75 + 1;
      if (!v76)
      {
        *(v73 + 1) = v77;
        v148 = v69;
        v78 = v143;
        (*(*v5 + 512))(v72, &v148, v134, v135, v133);
        v143 = v78;
        v79 = *(v64 + 8);
        v79(v72, v65);
        return (v79)(v142, v65);
      }
    }

    else
    {
      v89 = v128;
      v90 = *&v60[*(swift_getTupleTypeMetadata2() + 48) + 8];

      v91 = v132;
      v92 = v123;
      (*(v132 + 32))(v123, v60, v89);
      v93 = qword_1EDEBBA48;
      result = swift_beginAccess();
      v94 = *&v5[v93];
      v76 = __CFADD__(v94, 1);
      v95 = v94 + 1;
      if (!v76)
      {
        *&v5[v93] = v95;
        v96 = v143;
        (*(*v5 + 504))(v92, v134, v135, v133);
        v143 = v96;
        return (*(v91 + 8))(v92, v89);
      }

      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v81 = v140;
  v80 = v141;
  if (EnumCaseMultiPayload == 3)
  {
    v97 = *&v60[*(swift_getTupleTypeMetadata2() + 48) + 8];

    v98 = v124;
    (*(v80 + 32))(v124, v60, v81);
    v99 = v143;
    (*(*v5 + 528))(v98, v134, v135, v133);
    v143 = v99;
    v87 = *(v80 + 8);
    v88 = v98;
  }

  else if (EnumCaseMultiPayload == 4)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v83 = v60[*(TupleTypeMetadata3 + 48)];
    v84 = *&v60[*(TupleTypeMetadata3 + 64) + 8];

    v85 = v125;
    (*(v80 + 32))(v125, v60, v81);
    v86 = v143;
    (*(*v5 + 536))(v85, v83, v134, v135, v133);
    v143 = v86;
    v87 = *(v80 + 8);
    v88 = v85;
  }

  else
  {
    v106 = *&v60[*(swift_getTupleTypeMetadata2() + 48) + 8];

    (*(v80 + 32))(v129, v60, v81);
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v107 = result;
    v108 = v120;
    (*(v80 + 16))(v120, v129, v81);
    v109 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v111 = swift_getAssociatedConformanceWitness();
    v144 = v81;
    v145 = v109;
    v146 = AssociatedConformanceWitness;
    v147 = v111;
    type metadata accessor for ReconciliationID();
    swift_storeEnumTagMultiPayload();
    v112 = v122;
    swift_storeEnumTagMultiPayload();
    (*(*v107 + 312))(v108);

    (*(v121 + 8))(v108, v112);
    v87 = *(v80 + 8);
    v88 = v129;
  }

  return v87(v88, v81);
}

unint64_t sub_1CF68AAA8()
{
  result = qword_1EC4C2330;
  if (!qword_1EC4C2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2330);
  }

  return result;
}

unint64_t sub_1CF68AB00()
{
  result = qword_1EC4C2338;
  if (!qword_1EC4C2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2338);
  }

  return result;
}

unint64_t sub_1CF68AB58()
{
  result = qword_1EC4C2340;
  if (!qword_1EC4C2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2340);
  }

  return result;
}

uint64_t sub_1CF68ABAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43657461657263 && a2 == 0xEB00000000746E75;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43657461647075 && a2 == 0xEB00000000746E75 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F436574656C6564 && a2 == 0xEB00000000746E75 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447465736572 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CF9E8048();

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

uint64_t sub_1CF68AD64()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF042F4C();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68ADAC()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68ADD0()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 264))(result);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68AE3C()
{
  v1 = *v0;
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 248))(result);

    v3 = v1[77];
    v4 = v1[78];
    v5 = v1[79];
    v6 = v1[80];
    type metadata accessor for FSOrFPJob();
    v7 = sub_1CF9E78B8();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1D3868E50](&v10, v7, WitnessTable);

    MEMORY[0x1EEE9AC00](v9);
    swift_getKeyPath();
    sub_1CF9E7978();
    type metadata accessor for FSOrFPJob();
    swift_getWitnessTable();
    sub_1CF9E7C38();

    sub_1CF9E7AC8();
    swift_getWitnessTable();
    return sub_1CF9E78C8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68B080@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 32);
  v7 = *(v5 - 24);
  v8 = *(v5 - 16);
  v9 = *(v5 - 8);
  *a4 = sub_1CF0452C8(*a1);
}

uint64_t sub_1CF68B0CC(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_1CF68B128(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = a8;
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    sub_1CF5A1E10(a1, a2, a3, (a4 & 1) == 0, sub_1CF68C1F4, v18, a7, v17, a9, a10);
  }

  return result;
}

uint64_t sub_1CF68B244(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 448))(a1, a2, a3, (a4 & 1) == 0, a5 & 1, a6, a7, a8, a9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68B328(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 464))(a1 & 1, a2, a3, a4, 2, a6, a7, a8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68B400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 472))(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68B4D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CF59896C(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68B578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 432))(a1, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68B62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 440))(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68B6D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = v5[78];
    v8 = v5[77];
    v9 = v5[80];
    v10 = v5[79];
    v11 = sub_1CF0452C8(a1);

    sub_1CF5A1030(v11, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68B784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CF5A1A2C(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68B840(char a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_1CF5DA5A8(byte_1CFA1101A[a1]);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68B89C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 496))(a1, a2 & 1, a3, a4, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68B980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v26 = a4;
  v27 = a5;
  v24 = a2;
  v25 = a3;
  v23[1] = a1;
  v6 = *v5;
  v7 = *(*v5 + 632);
  v8 = *(*v5 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(v6 + 640);
  v11 = *(v6 + 624);
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v28 = AssociatedTypeWitness;
  v29 = v12;
  v30 = AssociatedConformanceWitness;
  v31 = v14;
  v15 = type metadata accessor for ReconciliationID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = v12;
    v29 = AssociatedTypeWitness;
    v30 = v14;
    v31 = AssociatedConformanceWitness;
    v21 = type metadata accessor for ReconciliationID();
    sub_1CF050768(v21, v19);
    v22 = v27(v19, v24, v25, v26);

    (*(v16 + 8))(v19, v15);
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68BBA4(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 616);
  v5 = *(*v2 + 624);
  v6 = *(*v2 + 632);
  v7 = *(*v2 + 640);
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v8 = type metadata accessor for TestingOperation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = v5;
    v16 = v4;
    v17 = v7;
    v18 = v6;
    v14 = type metadata accessor for TestingOperation();
    sub_1CF940280(v14, v12);
    sub_1CF5A296C(v12, a2);

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68BD2C(uint64_t a1)
{
  v3 = *v1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = v3[78];
    v6 = v3[77];
    v7 = v3[80];
    v8 = v3[79];
    v9 = sub_1CF0452C8(a1);

    v10 = sub_1CF5A1C7C(v9);

    v11 = sub_1CF0452C8(v10);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68BE20()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF5A4F58();

    return v1 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68BE94(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = a2(a1);

    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68BEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 576))(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1CF68BFC4()
{
  v0 = sub_1CF92E98C();
  swift_weakDestroy();
  return v0;
}

uint64_t sub_1CF68BFF4()
{
  sub_1CF92E98C();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void *sub_1CF68C064(uint64_t *a1)
{
  v3 = *v1;
  swift_weakInit();
  swift_weakAssign();
  v4 = v3[77];
  v5 = v3[78];
  v6 = v3[79];
  v7 = v3[80];
  type metadata accessor for SwappedReconciliationTable();
  v8 = sub_1CF9330A8(a1[2]);
  type metadata accessor for SwappedJobRegistry();
  v9 = sub_1CF950238(a1[3]);
  v11 = a1[4];
  v10 = a1[5];
  v13 = a1[6];
  v12 = a1[7];

  swift_unknownObjectRetain();
  return sub_1CF92E870(v8, v9, v10, v11, v13, v12);
}

uint64_t sub_1CF68C1F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t FileItemID.isRoot.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 48))(v6);
  v10 = *(*(a2 + 40) + 8);
  v11 = sub_1CF9E6868();
  (*(v4 + 8))(v8, a1);
  return v11 & 1;
}

uint64_t FileItemID.isTrash.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 56))(v6);
  v10 = *(*(a2 + 40) + 8);
  v11 = sub_1CF9E6868();
  (*(v4 + 8))(v8, a1);
  return v11 & 1;
}

uint64_t FileItemID.kind.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = (*(a2 + 64))();
  if (result)
  {
    v7 = 0;
  }

  else
  {
    result = (*(a2 + 72))(a1, a2);
    if (result)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t FileItemIDKind.hashValue.getter()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v1);
  return sub_1CF9E8228();
}

uint64_t FileItemID.parseableString.getter(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CF9E56C8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1CF9E56B8();
  sub_1CF9E5698();
  v6 = *(a2 + 32);
  v7 = sub_1CF9E56A8();
  v9 = v8;
  v10 = sub_1CF9E5B58();
  sub_1CEFE4714(v7, v9);

  return v10;
}

uint64_t FileItemID.init(parsing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5AC8();
  v13 = v12;

  if (v13 >> 60 == 15)
  {
    v14 = 1;
  }

  else
  {
    v15 = sub_1CF9E5688();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_1CF9E5678();
    v18 = *(a3 + 24);
    sub_1CF9E5668();

    sub_1CEFE48D8(v11, v13);
    (*(v7 + 32))(a4, v10, a2);
    v14 = 0;
  }

  return (*(v7 + 56))(a4, v14, 1, a2);
}

uint64_t sub_1CF68C7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x6520746F6E6E6163, 0xEE002065646F636ELL);
  v4 = *(a3 + 16);
  sub_1CF9E7FE8();
  return 0;
}

unint64_t sub_1CF68C894()
{
  result = qword_1EC4C2348;
  if (!qword_1EC4C2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2348);
  }

  return result;
}

uint64_t sub_1CF68C970(uint64_t a1)
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

void sub_1CF68CA04(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1CF68CA44();
}

uint64_t sub_1CF68CA84(uint64_t a1)
{
  if (a1 > 0x3FFFFFF)
  {
    if (a1 <= 0x3FFFFFFFFFLL)
    {
      if (a1 <= 0xFFFFFFFFLL)
      {
        if (a1 > 0x1FFFFFFF)
        {
          v32 = 0x65766F4D6D657469;
          if (a1 != 0x80000000)
          {
            v32 = 0;
          }

          if (a1 == 0x40000000)
          {
            v33 = 0xD00000000000001BLL;
          }

          else
          {
            v33 = v32;
          }

          if (a1 == 0x20000000)
          {
            return 0xD000000000000014;
          }

          else
          {
            return v33;
          }
        }

        else
        {
          switch(a1)
          {
            case 0x4000000:
              return 0x67696E556D657469;
            case 0x8000000:
              return 0x55746E65746E6F63;
            case 0x10000000:
              return 0xD000000000000012;
            default:
              return 0;
          }
        }
      }

      if (a1 <= 0x7FFFFFFFFLL)
      {
        v6 = 0x100000000;
        v7 = 0xD00000000000001BLL;
        v8 = 0xD00000000000001ALL;
        v21 = 0x74616C7563657073;
        if (a1 != 0x400000000)
        {
          v21 = 0;
        }

        if (a1 != 0x200000000)
        {
          v8 = v21;
        }

        goto LABEL_75;
      }

      v23 = 0x800000000;
      v24 = 0xD00000000000001ALL;
      v29 = 0x1000000000;
      v30 = a1 == 0x2000000000;
      v31 = 0x64616F6C70756572;
    }

    else
    {
      if (a1 > 0xFFFFFFFFFFFLL)
      {
        if (a1 > 0x7FFFFFFFFFFFLL)
        {
          if (a1 > 0x1FFFFFFFFFFFFLL)
          {
            v36 = 0x616E65746E69616DLL;
            if (a1 != 0x4000000000000)
            {
              v36 = 0;
            }

            if (a1 == 0x2000000000000)
            {
              return 0x676972546B637066;
            }

            else
            {
              return v36;
            }
          }

          v6 = 0x800000000000;
          v7 = 0xD000000000000010;
          v8 = 0xD000000000000022;
          if (a1 != 0x1000000000000)
          {
            v8 = 0;
          }

LABEL_75:
          if (a1 == v6)
          {
            return v7;
          }

          else
          {
            return v8;
          }
        }

        v23 = 0x100000000000;
        v24 = 0xD000000000000013;
        if (a1 == 0x400000000000)
        {
          v25 = 0xD000000000000012;
        }

        else
        {
          v25 = 0;
        }

        if (a1 == 0x200000000000)
        {
          v26 = 0xD000000000000017;
        }

        else
        {
          v26 = v25;
        }

LABEL_122:
        if (a1 == v23)
        {
          return v24;
        }

        else
        {
          return v26;
        }
      }

      if (a1 <= 0x1FFFFFFFFFFLL)
      {
        if (a1 == 0x4000000000)
        {
          return 0x74616C7563657073;
        }

        v17 = 0x684364656E6E6970;
        if (a1 != 0x10000000000)
        {
          v17 = 0;
        }

        if (a1 == 0x8000000000)
        {
          return 0xD00000000000001ELL;
        }

        else
        {
          return v17;
        }
      }

      v23 = 0x20000000000;
      v24 = 0xD000000000000011;
      v29 = 0x40000000000;
      v30 = a1 == 0x80000000000;
      v31 = 0x446D7269666E6F63;
    }

    if (!v30)
    {
      v31 = 0;
    }

    if (a1 == v29)
    {
      v26 = 0xD000000000000013;
    }

    else
    {
      v26 = v31;
    }

    goto LABEL_122;
  }

  if (a1 <= 4095)
  {
    if (a1 > 63)
    {
      if (a1 <= 511)
      {
        v18 = 0xD000000000000016;
        if (a1 == 256)
        {
          v19 = 0xD000000000000014;
        }

        else
        {
          v19 = 0;
        }

        if (a1 == 128)
        {
          v19 = 0xD000000000000012;
        }

        v20 = a1 == 64;
        goto LABEL_83;
      }

      v34 = 0xD000000000000011;
      if (a1 == 2048)
      {
        v35 = 0xD000000000000011;
      }

      else
      {
        v35 = 0;
      }

      if (a1 != 1024)
      {
        v34 = v35;
      }

      if (a1 == 512)
      {
        return 0x697665526D657469;
      }

      else
      {
        return v34;
      }
    }

    else
    {
      v9 = 0xD000000000000013;
      v10 = 0x6F4E7265646C6F66;
      if (a1 == 32)
      {
        v11 = 0xD000000000000014;
      }

      else
      {
        v11 = 0;
      }

      if (a1 != 16)
      {
        v10 = v11;
      }

      if (a1 != 8)
      {
        v9 = v10;
      }

      v12 = 0x6C6169726574616DLL;
      v13 = 0x6E6F697463697665;
      v14 = 0xD000000000000013;
      if (a1 != 4)
      {
        v14 = 0;
      }

      if (a1 != 2)
      {
        v13 = v14;
      }

      if (a1 != 1)
      {
        v12 = v13;
      }

      if (a1 <= 7)
      {
        return v12;
      }

      else
      {
        return v9;
      }
    }
  }

  else
  {
    if (a1 >= 0x40000)
    {
      if (a1 >= 0x400000)
      {
        v1 = 0x6F6E67496D657469;
        if (a1 != 0x2000000)
        {
          v1 = 0;
        }

        if (a1 == 0x1000000)
        {
          v2 = 0x756F72676B636162;
        }

        else
        {
          v2 = v1;
        }

        v3 = 0x72654D736D657469;
        v4 = 0x7571655272657375;
        if (a1 != 0x800000)
        {
          v4 = 0;
        }

        if (a1 != 0x400000)
        {
          v3 = v4;
        }

        if (a1 <= 0xFFFFFF)
        {
          return v3;
        }

        else
        {
          return v2;
        }
      }

      v18 = 0xD000000000000010;
      v19 = 0xD000000000000015;
      v22 = 0x6165726C4179616DLL;
      if (a1 != 0x200000)
      {
        v22 = 0;
      }

      if (a1 != 0x80000)
      {
        v19 = v22;
      }

      v20 = a1 == 0x40000;
LABEL_83:
      if (v20)
      {
        return v18;
      }

      else
      {
        return v19;
      }
    }

    if (a1 >= 0x8000)
    {
      v27 = 0x6F706D496B736964;
      v28 = 0x6F706D496B736964;
      if (a1 != 0x20000)
      {
        v28 = 0;
      }

      if (a1 != 0x10000)
      {
        v27 = v28;
      }

      if (a1 == 0x8000)
      {
        return 0x65526D6165727473;
      }

      else
      {
        return v27;
      }
    }

    else
    {
      v15 = 0xD00000000000001FLL;
      v16 = 0xD000000000000011;
      if (a1 != 0x4000)
      {
        v16 = 0;
      }

      if (a1 != 0x2000)
      {
        v15 = v16;
      }

      if (a1 == 4096)
      {
        return 0xD000000000000013;
      }

      else
      {
        return v15;
      }
    }
  }
}

unint64_t sub_1CF68D348()
{
  result = qword_1EC4C2350;
  if (!qword_1EC4C2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2350);
  }

  return result;
}

unint64_t sub_1CF68D3A0()
{
  result = qword_1EC4C2358;
  if (!qword_1EC4C2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2358);
  }

  return result;
}

unint64_t sub_1CF68D3F8()
{
  result = qword_1EC4C2360;
  if (!qword_1EC4C2360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2368, &qword_1CFA112B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2360);
  }

  return result;
}

unint64_t sub_1CF68D460()
{
  result = qword_1EC4C2370;
  if (!qword_1EC4C2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2370);
  }

  return result;
}

unint64_t sub_1CF68D4B8()
{
  result = qword_1EC4C2378;
  if (!qword_1EC4C2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2378);
  }

  return result;
}

unint64_t sub_1CF68D538()
{
  result = qword_1EC4C2380;
  if (!qword_1EC4C2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2380);
  }

  return result;
}

unint64_t sub_1CF68D58C()
{
  result = qword_1EC4C2388;
  if (!qword_1EC4C2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2388);
  }

  return result;
}

uint64_t sub_1CF68D60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF68D648()
{
  result = qword_1EC4C2390;
  if (!qword_1EC4C2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2390);
  }

  return result;
}

unint64_t sub_1CF68D69C()
{
  result = qword_1EC4C2398;
  if (!qword_1EC4C2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2398);
  }

  return result;
}

void sub_1CF68D6F0()
{
  v0 = 0;
  v1 = 0x20u;
  do
  {
    v2 = *(&unk_1F4BEC320 + v1);
    if ((v2 & ~v0) == 0)
    {
      v2 = 0;
    }

    v0 |= v2;
    v1 += 8;
  }

  while (v1 != 240);
  qword_1EDEBB8C0 = v0;
}

unint64_t sub_1CF68D754()
{
  result = qword_1EC4C23A0;
  if (!qword_1EC4C23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23A0);
  }

  return result;
}

unint64_t sub_1CF68D7AC()
{
  result = qword_1EC4C23A8;
  if (!qword_1EC4C23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23A8);
  }

  return result;
}

unint64_t sub_1CF68D804()
{
  result = qword_1EC4C23B0;
  if (!qword_1EC4C23B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C23B8, &qword_1CFA11570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23B0);
  }

  return result;
}

unint64_t sub_1CF68D86C()
{
  result = qword_1EC4C23C0;
  if (!qword_1EC4C23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23C0);
  }

  return result;
}

unint64_t sub_1CF68D8C4()
{
  result = qword_1EC4C23C8;
  if (!qword_1EC4C23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23C8);
  }

  return result;
}

unint64_t sub_1CF68D944()
{
  result = qword_1EC4C23D0;
  if (!qword_1EC4C23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23D0);
  }

  return result;
}

unint64_t sub_1CF68D998()
{
  result = qword_1EC4C23D8;
  if (!qword_1EC4C23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23D8);
  }

  return result;
}

uint64_t sub_1CF68DA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF68DA54()
{
  result = qword_1EC4C23E0;
  if (!qword_1EC4C23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23E0);
  }

  return result;
}

unint64_t sub_1CF68DAA8()
{
  result = qword_1EC4C23E8;
  if (!qword_1EC4C23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23E8);
  }

  return result;
}

uint64_t sub_1CF68DB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v24 = a5;
  v8 = *v5;
  v9 = *(*v5 + 96);
  v27 = *(*v5 + 80);
  v28 = v9;
  v10 = type metadata accessor for ItemReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_1CF9E75D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v23 - v16;
  v18 = v29;
  result = (*(v8 + 168))(a1, 1, a2, v25, v26, v15);
  if (!v18)
  {
    v20 = v24;
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
    {
      (*(v13 + 8))(v17, v12);
      v21 = *(v10 - 8);
      v22 = 1;
    }

    else
    {
      v21 = *(v10 - 8);
      (*(v21 + 32))(v20, v17, v10);
      v22 = 0;
    }

    return (*(v21 + 56))(v20, v22, 1, v10);
  }

  return result;
}

uint64_t sub_1CF68DDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v41 = a4;
  v42 = a2;
  v43 = a3;
  v44 = a1;
  v38 = a5;
  v7 = *v5;
  v8 = *(*v5 + 80);
  TupleTypeMetadata2 = *(*v5 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(v7 + 104);
  v11 = *(v7 + 88);
  v40 = AssociatedTypeWitness;
  v45 = AssociatedTypeWitness;
  v46 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for ReconciliationID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v45 = v8;
  v46 = v11;
  AssociatedConformanceWitness = TupleTypeMetadata2;
  v48 = v10;
  v37 = type metadata accessor for ItemReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_1CF9E75D8();
  v35 = *(v17 - 8);
  v36 = v17;
  v18 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v22 = v41;
  v21 = v42;
  v23 = v43;
  v24 = (*(v41 + 8))(v43, v41) == 2;
  (*(*(v40 - 8) + 16))(v16, v44);
  swift_storeEnumTagMultiPayload();
  v25 = v49;
  (*(*v6 + 168))(v16, v24, v21, v23, v22);
  if (v25)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v28 = v35;
  v27 = v36;
  v30 = v37;
  v29 = v38;
  (*(v13 + 8))(v16, v12);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v20, 1) == 1)
  {
    (*(v28 + 8))(v20, v27);
    v31 = v30;
    v32 = *(v30 - 8);
    v33 = 1;
    v34 = v29;
  }

  else
  {
    v31 = v30;
    v32 = *(v30 - 8);
    v34 = v29;
    (*(v32 + 32))(v29, v20, v30);
    v33 = 0;
  }

  return (*(v32 + 56))(v34, v33, 1, v31);
}

uint64_t sub_1CF68E230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a2;
  v33 = a5;
  v6 = *v5;
  v7 = *(*v5 + 96);
  v8 = *(*v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(v6 + 104);
  v11 = *(v6 + 88);
  v35 = swift_getAssociatedTypeWitness();
  v40 = AssociatedTypeWitness;
  v41 = v35;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for ReconciliationID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v31 = v11;
  v32 = v8;
  v40 = v8;
  v41 = v11;
  v34 = v7;
  AssociatedConformanceWitness = v7;
  v43 = v10;
  v17 = v10;
  v18 = type metadata accessor for ItemReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_1CF9E75D8();
  v30 = *(v20 - 8);
  v21 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v30 - v22;
  (*(*(v35 - 8) + 16))(v16, v36);
  swift_storeEnumTagMultiPayload();
  v24 = v44;
  (*(*v5 + 168))(v16, 1, v37, v38, v39);
  if (v24)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v26 = v30;
  v39 = 0;
  v44 = v17;
  v27 = v33;
  (*(v13 + 8))(v16, v12);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v23, 1, TupleTypeMetadata2) == 1)
  {
    (*(v26 + 8))(v23, v20);
    v40 = v31;
    v41 = v32;
    AssociatedConformanceWitness = v44;
    v43 = v34;
    v28 = type metadata accessor for ItemReconciliation();
    v29 = 1;
  }

  else
  {
    sub_1CF07EE34(v18, v27);
    (*(*(v18 - 8) + 8))(v23, v18);
    v40 = v31;
    v41 = v32;
    AssociatedConformanceWitness = v44;
    v43 = v34;
    v28 = type metadata accessor for ItemReconciliation();
    v29 = 0;
  }

  return (*(*(v28 - 8) + 56))(v27, v29, 1);
}

uint64_t sub_1CF68E6AC@<X0>(unint64_t a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v554 = a5;
  v553 = a4;
  v552 = a3;
  v572 = a2;
  v573 = a6;
  v578 = a1;
  v7 = *v6;
  v8 = *(*v6 + 96);
  v9 = *(*v6 + 80);
  v580.i64[0] = swift_getAssociatedTypeWitness();
  v580.i64[1] = swift_getAssociatedTypeWitness();
  v581.i64[0] = swift_getAssociatedConformanceWitness();
  v581.i64[1] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for FileItemVersion();
  v531 = sub_1CF9E75D8();
  v570 = *(v531 - 8);
  v11 = v570[8];
  v12 = MEMORY[0x1EEE9AC00](v531);
  v508 = &v482 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v491 = &v482 - v15;
  v516 = v10;
  v515 = *(v10 - 8);
  v16 = *(v515 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v510 = &v482 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v492 = &v482 - v19;
  v20 = *(v7 + 88);
  v557 = v6;
  v21 = *(v7 + 104);
  v556 = type metadata accessor for ItemReconciliationHalf();
  v551 = *(v556 - 8);
  v22 = *(v551 + 64);
  v23 = MEMORY[0x1EEE9AC00](v556);
  v547 = &v482 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v548 = &v482 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v501 = &v482 - v27;
  v28 = type metadata accessor for SnapshotItem();
  v505 = sub_1CF9E75D8();
  v503 = *(v505 - 8);
  v29 = *(v503 + 64);
  v30 = MEMORY[0x1EEE9AC00](v505);
  v529 = &v482 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v528 = &v482 - v33;
  v519 = v28;
  v518 = *(v28 - 8);
  v34 = *(v518 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v498 = &v482 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v569 = &v482 - v37;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = swift_getAssociatedConformanceWitness();
  v580.i64[0] = AssociatedTypeWitness;
  v580.i64[1] = v39;
  v581.i64[0] = AssociatedConformanceWitness;
  v581.i64[1] = v41;
  v42 = type metadata accessor for FileItemVersion();
  v512 = sub_1CF9E75D8();
  v511 = *(v512 - 8);
  v43 = *(v511 + 64);
  v44 = MEMORY[0x1EEE9AC00](v512);
  v507 = &v482 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v489 = &v482 - v47;
  v514 = v42;
  v513 = *(v42 - 8);
  v48 = *(v513 + 64);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v509 = &v482 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v490 = &v482 - v51;
  v52 = swift_getAssociatedTypeWitness();
  v561 = sub_1CF9E75D8();
  v559 = *(v561 - 8);
  v53 = *(v559 + 64);
  v54 = MEMORY[0x1EEE9AC00](v561);
  v544 = &v482 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v545 = &v482 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v567 = &v482 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v568 = &v482 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v543 = &v482 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v546 = &v482 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v495 = &v482 - v67;
  v564 = v52;
  v562 = *(v52 - 8);
  v68 = *(v562 + 64);
  v69 = MEMORY[0x1EEE9AC00](v66);
  v525 = &v482 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v526 = &v482 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v536 = &v482 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v533 = &v482 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v535 = &v482 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v527 = &v482 - v80;
  MEMORY[0x1EEE9AC00](v79);
  v496 = &v482 - v81;
  v555 = type metadata accessor for ItemReconciliationHalf();
  v550 = *(v555 - 8);
  v82 = *(v550 + 64);
  v83 = MEMORY[0x1EEE9AC00](v555);
  v541 = &v482 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v542 = &v482 - v86;
  MEMORY[0x1EEE9AC00](v85);
  v500 = &v482 - v87;
  v88 = type metadata accessor for SnapshotItem();
  v504 = sub_1CF9E75D8();
  v502 = *(v504 - 8);
  v89 = *(v502 + 64);
  v90 = MEMORY[0x1EEE9AC00](v504);
  v524 = &v482 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = MEMORY[0x1EEE9AC00](v90);
  v523 = &v482 - v93;
  v517 = v88;
  v530 = *(v88 - 8);
  v94 = *(v530 + 64);
  v95 = MEMORY[0x1EEE9AC00](v92);
  v499 = &v482 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95);
  v497 = &v482 - v97;
  v98 = swift_getAssociatedTypeWitness();
  v560 = sub_1CF9E75D8();
  v558 = *(v560 - 8);
  v99 = *(v558 + 64);
  v100 = MEMORY[0x1EEE9AC00](v560);
  v522 = &v482 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = MEMORY[0x1EEE9AC00](v100);
  v493 = &v482 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v539 = &v482 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v540 = &v482 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v538 = &v482 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v566 = &v482 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v537 = &v482 - v113;
  v565 = v98;
  v563 = *(v98 - 8);
  v114 = *(v563 + 64);
  v115 = MEMORY[0x1EEE9AC00](v112);
  v506 = &v482 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = MEMORY[0x1EEE9AC00](v115);
  v494 = &v482 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v520 = &v482 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v521 = &v482 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v549 = &v482 - v124;
  v125 = MEMORY[0x1EEE9AC00](v123);
  v532 = &v482 - v126;
  MEMORY[0x1EEE9AC00](v125);
  v534 = &v482 - v127;
  v128 = sub_1CF9E6118();
  v574 = *(v128 - 8);
  v575 = v128;
  v129 = *(v574 + 8);
  v130 = MEMORY[0x1EEE9AC00](v128);
  v132 = &v482 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v130);
  v571 = &v482 - v133;
  v134.i64[0] = v9;
  v134.i64[1] = v20;
  v135.i64[0] = v8;
  v135.i64[1] = v21;
  v576 = v135;
  v577 = v134;
  v580 = v134;
  v581 = v135;
  v136 = type metadata accessor for ItemReconciliation();
  v137 = sub_1CF9E75D8();
  v138 = *(v137 - 8);
  v139 = *(v138 + 64);
  v140 = MEMORY[0x1EEE9AC00](v137);
  v142 = &v482 - v141;
  v143 = *(v136 - 8);
  v144 = *(v143 + 64);
  v145 = MEMORY[0x1EEE9AC00](v140);
  v147 = &v482 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = MEMORY[0x1EEE9AC00](v145);
  v150 = &v482 - v149;
  MEMORY[0x1EEE9AC00](v148);
  v152 = &v482 - v151;
  (*(v138 + 16))(v142, v578, v137);
  if ((*(v143 + 48))(v142, 1, v136) != 1)
  {
    (*(v143 + 32))(v152, v142, v136);
    v159 = v579;
    sub_1CF95A080(v572, v136, v580.i64);
    if (v159)
    {
      return (*(v143 + 8))(v152, v136);
    }

    v160 = v580.i64[1];
    v578 = v580.i64[0];
    v579 = 0;
    v161 = v581.i64[0];
    v162 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v163 = *(v143 + 16);
    v487 = v152;
    v486 = v136;
    v485 = v163;
    v163(v150, v152, v136);
    v164 = v578;
    sub_1CF48048C(v578, v160, v161);
    v165 = sub_1CF9E6108();
    v166 = sub_1CF9E7298();
    v572 = v160;
    v488 = v161;
    sub_1CF480498(v164);
    v483 = v166;
    v167 = os_log_type_enabled(v165, v166);
    v484 = v143;
    if (v167)
    {
      v168 = swift_slowAlloc();
      v482 = swift_slowAlloc();
      v585 = v482;
      *v168 = 136315394;
      v169 = v486;
      v485(v147, v150, v486);
      v170 = *(v143 + 8);
      v170(v150, v169);
      v171 = v165;
      v172 = sub_1CF082CB0(v169);
      v174 = v173;
      v485 = v170;
      v170(v147, v169);
      v175 = sub_1CEFD0DF0(v172, v174, &v585);

      *(v168 + 4) = v175;
      *(v168 + 12) = 2080;
      v176 = v578;
      v580.i64[0] = v578;
      v580.i64[1] = v572;
      v581.i64[0] = v488;
      sub_1CF48048C(v578, v572, v488);
      v177 = sub_1CF95E1F0();
      v179 = v178;
      sub_1CF480498(v580.i64[0]);
      v180 = sub_1CEFD0DF0(v177, v179, &v585);

      *(v168 + 14) = v180;
      _os_log_impl(&dword_1CEFC7000, v171, v483, "[interactive] testingOperationForEntry, entry=%s, status=%s", v168, 0x16u);
      v181 = v482;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v181, -1, -1);
      v182 = v168;
      v183 = v579;
      MEMORY[0x1D386CDC0](v182, -1, -1);

      (*(v574 + 1))(v571, v575);
      v184 = v569;
      v185 = v570;
      v186 = v176;
    }

    else
    {
      v169 = v486;
      v485 = *(v143 + 8);
      (v485)(v150, v486);

      (*(v574 + 1))(v571, v575);
      v184 = v569;
      v185 = v570;
      v186 = v578;
      v183 = v579;
    }

    v187 = v567;
    v188 = v566;
    v189 = v487;
    v190 = v568;
    if (v186 >> 62 != 1)
    {
      if (!(v186 >> 62))
      {
        if (v186 <= 5u)
        {
          if (v186)
          {
            if (v186 == 1)
            {
              Strong = swift_weakLoadStrong();
              if (Strong)
              {
                v192 = *(Strong + 32);

                v193 = v558;
                v194 = v560;
                (*(v558 + 16))(v188, v189, v560);
                v195 = v563;
                v196 = v565;
                if ((*(v563 + 48))(v188, 1, v565) == 1)
                {

                  sub_1CF480498(v578);
                  (v485)(v189, v486);
                  (*(v193 + 8))(v188, v194);
                  goto LABEL_32;
                }

                v300 = v532;
                v301 = v188;
                v302 = *(v195 + 32);
                v302(v532, v301, v196);
                v303 = v524;
                (*(*v192 + 240))(v300, 1, v552, v553, v554);
                if (v183)
                {

                  sub_1CF480498(v578);
                  (*(v195 + 8))(v300, v196);
                  v293 = v487;
                  v294 = v486;
                  return (v485)(v293, v294);
                }

                v575 = v302;
                v327 = v530;
                v328 = v303;
                v329 = v303;
                v330 = v517;
                if ((*(v530 + 48))(v328, 1, v517) == 1)
                {

                  sub_1CF480498(v578);
                  (*(v563 + 8))(v300, v565);
                  (v485)(v487, v486);
                  (*(v502 + 8))(v329, v504);
                  goto LABEL_32;
                }

                v381 = *(v327 + 32);
                v382 = v499;
                v381(v499, v329, v330);
                v383 = (*(*v192 + 312))(v300, v552, v553, v554);
                v579 = 0;
                v398 = v486;
                v571 = v381;
                v574 = v383;
                v399 = v384;

                sub_1CF480498(v578);
                if (v399)
                {
                  (*(v530 + 8))(v382, v330);
                  (*(v563 + 8))(v532, v565);
                  v393 = v487;
                  v394 = v398;
                  goto LABEL_100;
                }

                v429 = &v487[*(v398 + 52)];
                v430 = v559;
                v431 = v495;
                (*(v559 + 16))(v495, v429, v561);
                v432 = v562;
                v433 = v564;
                if ((*(v562 + 48))(v431, 1, v564) == 1)
                {
                  (*(v530 + 8))(v499, v330);
                  (*(v563 + 8))(v532, v565);
                  (v485)(v487, v398);
                  (*(v430 + 8))(v431, v561);
                }

                else
                {
                  v438 = *(v432 + 32);
                  v578 = v432 + 32;
                  v570 = v438;
                  (v438)(v496, v431, v433);
                  v439 = v511;
                  v440 = &v429[*(v556 + 48)];
                  v441 = v489;
                  v442 = v512;
                  (*(v511 + 16))(v489, v440, v512);
                  v443 = v513;
                  v444 = v514;
                  if ((*(v513 + 48))(v441, 1, v514) != 1)
                  {
                    v563 = *(v443 + 32);
                    v566 = v443 + 32;
                    v449 = (v563)(v490, v441, v444);
                    v569 = &v482;
                    MEMORY[0x1EEE9AC00](v449);
                    strcpy(&v482 - 80, " item destinationItemID baseVersion fields version domainVersion ");
                    v580.i64[0] = v565;
                    v580.i64[1] = v504;
                    v581.i64[0] = v561;
                    v581.i64[1] = v442;
                    v582 = &type metadata for Fields;
                    v583 = MEMORY[0x1E69E6810];
                    v584 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
                    TupleTypeMetadata = swift_getTupleTypeMetadata();
                    v451 = TupleTypeMetadata[12];
                    v452 = TupleTypeMetadata[16];
                    v453 = TupleTypeMetadata[20];
                    v568 = TupleTypeMetadata[24];
                    v567 = TupleTypeMetadata[28];
                    v569 = TupleTypeMetadata[32];
                    v454 = v444;
                    v455 = v573;
                    (v575)(v573, v532, v565);
                    v456 = v517;
                    (v571)(&v455[v451], v499, v517);
                    (*(v530 + 56))(&v455[v451], 0, 1, v456);
                    v457 = v564;
                    (v570)(&v455[v452], v496, v564);
                    (*(v432 + 56))(&v455[v452], 0, 1, v457);
                    (v563)(&v455[v453], v490, v454);
                    (*(v443 + 56))(&v455[v453], 0, 1, v454);
                    *&v455[v568] = v572;
                    *&v567[v455] = v574;
                    v458 = v550;
                    v459 = v500;
                    v460 = v487;
                    v461 = v555;
                    (*(v550 + 16))(v500, v487, v555);
                    (v485)(v460, v486);
                    v462 = *&v459[*(v461 + 72)];
                    v463 = *(v458 + 8);
                    v464 = v462;
                    v463(v459, v461);
                    *&v455[v569] = v462;
                    v580 = v577;
                    v581 = v576;
                    type metadata accessor for DirectionalTestingOperation();
                    swift_storeEnumTagMultiPayload();
                    v580 = v577;
                    v581 = v576;
                    v465 = type metadata accessor for TestingOperation();
                    swift_storeEnumTagMultiPayload();
                    return (*(*(v465 - 8) + 56))(v455, 0, 1, v465);
                  }

                  (*(v432 + 8))(v496, v564);
                  (*(v530 + 8))(v499, v517);
                  (*(v563 + 8))(v532, v565);
                  (v485)(v487, v486);
                  (*(v439 + 8))(v441, v442);
                }

LABEL_32:
                v580 = v577;
                v581 = v576;
                v219 = type metadata accessor for TestingOperation();
                return (*(*(v219 - 8) + 56))(v573, 1, 1, v219);
              }

              __break(1u);
              goto LABEL_114;
            }

            if (v186 != 2)
            {
              goto LABEL_117;
            }

            sub_1CF480498(v186);
            v250 = v558;
            v251 = v538;
            v252 = v560;
            (*(v558 + 16))(v538, v189, v560);
            v253 = v563;
            v254 = v565;
            v255 = (*(v563 + 48))(v251, 1, v565);
            v256 = v546;
            if (v255 == 1)
            {
              (v485)(v189, v169);
              (*(v250 + 8))(v251, v252);
              goto LABEL_32;
            }

            v273 = *(v253 + 32);
            v578 = v253 + 32;
            v575 = v273;
            v273(v549, v251, v254);
            v274 = v189;
            v275 = &v189[*(v169 + 52)];
            v276 = v559;
            v277 = v256;
            v278 = v256;
            v279 = v561;
            (*(v559 + 16))(v277, v275, v561);
            v280 = v562;
            v281 = v564;
            if ((*(v562 + 48))(v278, 1, v564) == 1)
            {
              (*(v253 + 8))(v549, v565);
              (v485)(v274, v169);
              (*(v276 + 8))(v278, v279);
              goto LABEL_32;
            }

            v574 = *(v280 + 32);
            v574(v527, v278, v281);
            v310 = v511;
            v311 = &v275[*(v556 + 48)];
            v312 = v507;
            v313 = v512;
            (*(v511 + 16))(v507, v311, v512);
            v314 = v513;
            v315 = v514;
            if ((*(v513 + 48))(v312, 1, v514) == 1)
            {
              (*(v280 + 8))(v527, v564);
              (*(v563 + 8))(v549, v565);
              (v485)(v487, v169);
              (*(v310 + 8))(v312, v313);
              goto LABEL_32;
            }

            v335 = *(v314 + 32);
            v571 = (v314 + 32);
            v572 = v335;
            v336 = (v335)(v509, v312, v315);
            v337 = v280;
            MEMORY[0x1EEE9AC00](v336);
            strcpy(&v482 - 64, " destinationItemID baseVersion recursive domainVersion ");
            v338 = v565;
            v580.i64[0] = v565;
            v580.i64[1] = v561;
            v581.i64[0] = v313;
            v581.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
            v582 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
            v339 = swift_getTupleTypeMetadata();
            v340 = v339[12];
            v341 = v339[16];
            v570 = v339[20];
            v342 = v339[24];
            v343 = v573;
            (v575)(v573, v549, v338);
            v344 = v564;
            v574(&v343[v340], v527, v564);
            (*(v337 + 56))(&v343[v340], 0, 1, v344);
            v572(&v343[v341], v509, v315);
            (*(v314 + 56))(&v343[v341], 0, 1, v315);
            *(v570 + v343) = 1;
            v345 = v550;
            v346 = v500;
            v347 = v487;
            v348 = v555;
            (*(v550 + 16))(v500, v487, v555);
            (v485)(v347, v486);
            v349 = *&v346[*(v348 + 72)];
            v350 = *(v345 + 8);
            v351 = v349;
            v350(v346, v348);
            *&v343[v342] = v349;
            v580 = v577;
            v581 = v576;
            type metadata accessor for DirectionalTestingOperation();
          }

          else
          {
            v220 = swift_weakLoadStrong();
            if (!v220)
            {
LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

            v221 = *(v220 + 32);

            v222 = v558;
            v223 = v537;
            v224 = v560;
            (*(v558 + 16))(v537, v189, v560);
            v225 = v563;
            v226 = v565;
            if ((*(v563 + 48))(v223, 1, v565) == 1)
            {

              sub_1CF480498(v578);
              (v485)(v189, v169);
              (*(v222 + 8))(v223, v224);
              goto LABEL_32;
            }

            v289 = v183;
            v290 = *(v225 + 32);
            v291 = v534;
            v290(v534, v223, v226);
            v292 = v523;
            (*(*v221 + 240))(v291, 1, v552, v553, v554);
            if (v289)
            {

              sub_1CF480498(v578);
              (*(v225 + 8))(v291, v565);
              v293 = v487;
              v294 = v169;
              return (v485)(v293, v294);
            }

            v575 = v225 + 32;
            v320 = v530;
            v321 = v517;
            if ((*(v530 + 48))(v292, 1, v517) == 1)
            {

              sub_1CF480498(v578);
              (*(v563 + 8))(v534, v565);
              (v485)(v487, v169);
              (*(v502 + 8))(v292, v504);
              goto LABEL_32;
            }

            v574 = v290;
            v368 = *(v320 + 32);
            v369 = v292;
            v370 = v497;
            v368(v497, v369, v321);
            v371 = (*(*v221 + 312))(v534, v552, v553, v554);
            v579 = 0;
            v571 = v371;
            v391 = v372;

            v392 = sub_1CF480498(v578);
            if (v391)
            {
              (*(v530 + 8))(v370, v321);
              (*(v563 + 8))(v534, v565);
              v393 = v487;
              v394 = v169;
LABEL_100:
              (v485)(v393, v394);
              goto LABEL_32;
            }

            MEMORY[0x1EEE9AC00](v392);
            strcpy(&v482 - 48, " item version domainVersion ");
            v401 = v565;
            v580.i64[0] = v565;
            v580.i64[1] = v504;
            v581.i64[0] = MEMORY[0x1E69E6810];
            v581.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
            v402 = swift_getTupleTypeMetadata();
            v403 = v402[12];
            v404 = v402[16];
            v405 = v402[20];
            v343 = v573;
            v574(v573, v534, v401);
            v368(&v343[v403], v370, v321);
            (*(v530 + 56))(&v343[v403], 0, 1, v321);
            *&v343[v404] = v571;
            v406 = v550;
            v407 = v500;
            v408 = v487;
            v409 = v555;
            (*(v550 + 16))(v500, v487, v555);
            (v485)(v408, v486);
            v410 = *&v407[*(v409 + 72)];
            v411 = *(v406 + 8);
            v412 = v410;
            v411(v407, v409);
            *&v343[v405] = v410;
            v580 = v577;
            v581 = v576;
            type metadata accessor for DirectionalTestingOperation();
          }

          swift_storeEnumTagMultiPayload();
          v580 = v577;
          v581 = v576;
          v352 = type metadata accessor for TestingOperation();
LABEL_84:
          swift_storeEnumTagMultiPayload();
          return (*(*(v352 - 8) + 56))(v343, 0, 1, v352);
        }

        if (v186 == 6)
        {
          sub_1CF480498(v186);
          v227 = v550;
          v228 = v541;
          v229 = v555;
          (*(v550 + 16))(v541, v189, v555);
          (v485)(v189, v169);
          v210 = v558;
          v211 = v539;
          v212 = v560;
          (*(v558 + 16))(v539, v228, v560);
          (*(v227 + 8))(v228, v229);
          v230 = v563;
          v231 = v565;
          if ((*(v563 + 48))(v211, 1, v565) != 1)
          {
            v269 = *(v230 + 32);
            v270 = v520;
            v269(v520, v211, v231);
            v217 = v573;
            v269(v573, v270, v231);
            v580 = v577;
            v581 = v576;
            type metadata accessor for DirectionalTestingOperation();
            goto LABEL_59;
          }

          goto LABEL_37;
        }

        if (v186 != 12)
        {
          if (v186 != 23)
          {
            goto LABEL_117;
          }

          sub_1CF480498(v186);
          v207 = v550;
          v208 = v542;
          v209 = v555;
          (*(v550 + 16))(v542, v189, v555);
          (v485)(v189, v169);
          v210 = v558;
          v211 = v540;
          v212 = v560;
          (*(v558 + 16))(v540, v208, v560);
          (*(v207 + 8))(v208, v209);
          v213 = v563;
          v214 = v565;
          if ((*(v563 + 48))(v211, 1, v565) != 1)
          {
            v215 = *(v213 + 32);
            v216 = v521;
            v215(v521, v211, v214);
            v217 = v573;
            v215(v573, v216, v214);
            v580 = v577;
            v581 = v576;
            type metadata accessor for DirectionalTestingOperation();
            goto LABEL_59;
          }

LABEL_37:
          (*(v210 + 8))(v211, v212);
          goto LABEL_32;
        }
      }

LABEL_31:
      sub_1CF480498(v186);
      (v485)(v189, v169);
      goto LABEL_32;
    }

    if (v186 <= 5u)
    {
      if (!v186)
      {
        v232 = swift_weakLoadStrong();
        if (!v232)
        {
LABEL_116:
          __break(1u);
LABEL_117:
          sub_1CF51565C("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 1169, v186);
        }

        v233 = *(v232 + 40);

        v234 = v559;
        v235 = *(v559 + 16);
        v236 = v487;
        v575 = *(v169 + 52);
        v237 = v169;
        v238 = v543;
        v239 = v561;
        v235(v543, &v487[v575], v561);
        v240 = v562;
        v241 = v564;
        if ((*(v562 + 48))(v238, 1, v564) == 1)
        {

          sub_1CF480498(v578);
          (v485)(v236, v237);
          (*(v234 + 8))(v238, v239);
          goto LABEL_32;
        }

        v295 = v535;
        v296 = v238;
        v297 = *(v240 + 32);
        v297(v535, v296, v241);
        v298 = v528;
        v299 = v579;
        (*(*v233 + 240))(v295, 1, v552, v553, v554);
        v579 = v299;
        if (v299)
        {

          sub_1CF480498(v578);
          (*(v240 + 8))(v295, v241);
        }

        else
        {
          v322 = v233;
          v323 = v518;
          v324 = v519;
          v325 = (*(v518 + 48))(v298, 1, v519);
          v326 = v486;
          if (v325 == 1)
          {

            sub_1CF480498(v578);
            (*(v562 + 8))(v535, v564);
            (v485)(v487, v326);
            (*(v503 + 8))(v298, v505);
            goto LABEL_32;
          }

          v574 = v297;
          v373 = v323;
          v376 = *(v323 + 32);
          v374 = (v323 + 32);
          v375 = v376;
          (v376)(v184, v298, v324);
          v377 = v535;
          v378 = v579;
          v379 = (*(*v322 + 312))(v535, v552, v553, v554);
          v579 = v378;
          if (!v378)
          {
            v395 = v373;
            v569 = v374;
            v570 = v375;
            v571 = v379;
            v396 = v380;

            v397 = sub_1CF480498(v578);
            if ((v396 & 1) == 0)
            {
              MEMORY[0x1EEE9AC00](v397);
              strcpy(&v482 - 48, " item version domainVersion ");
              v413 = v395;
              v414 = v564;
              v580.i64[0] = v564;
              v580.i64[1] = v505;
              v581.i64[0] = MEMORY[0x1E69E6810];
              v581.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
              v415 = swift_getTupleTypeMetadata();
              v416 = v415[12];
              v417 = v415[16];
              v418 = v415[20];
              v419 = v573;
              v574(v573, v535, v414);
              v420 = v519;
              (v570)(&v419[v416], v184, v519);
              (*(v413 + 56))(&v419[v416], 0, 1, v420);
              *&v419[v417] = v571;
              v421 = v551;
              v422 = v487;
              v423 = v501;
              v424 = v556;
              (*(v551 + 16))(v501, &v487[v575], v556);
              (v485)(v422, v486);
              v425 = *&v423[*(v424 + 72)];
              v426 = *(v421 + 8);
              v427 = v425;
              v426(v423, v424);
              *&v419[v418] = v425;
              v580 = vextq_s8(v577, v577, 8uLL);
              v581 = vextq_s8(v576, v576, 8uLL);
              type metadata accessor for DirectionalTestingOperation();
              swift_storeEnumTagMultiPayload();
              v580 = v577;
              v581 = v576;
              v428 = type metadata accessor for TestingOperation();
              swift_storeEnumTagMultiPayload();
              return (*(*(v428 - 8) + 56))(v419, 0, 1, v428);
            }

            (*(v395 + 8))(v184, v519);
            (*(v562 + 8))(v535, v564);
            goto LABEL_99;
          }

          sub_1CF480498(v578);
          (*(v373 + 8))(v184, v519);
          (*(v562 + 8))(v377, v564);
        }

        v293 = v487;
        v294 = v486;
        return (v485)(v293, v294);
      }

      if (v186 == 1)
      {
        v197 = swift_weakLoadStrong();
        if (!v197)
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        v198 = *(v197 + 40);

        v199 = v189;
        v200 = v559;
        v201 = *(v559 + 16);
        v575 = &v189[*(v169 + 52)];
        v202 = v561;
        v201(v190);
        v203 = v562;
        v204 = v190;
        v205 = v190;
        v206 = v564;
        if ((*(v562 + 48))(v204, 1, v564) == 1)
        {

          sub_1CF480498(v578);
          (v485)(v199, v169);
          (*(v200 + 8))(v205, v202);
          goto LABEL_32;
        }

        v304 = v203;
        v307 = *(v203 + 32);
        v305 = (v203 + 32);
        v306 = v307;
        v308 = v533;
        v307(v533, v205, v206);
        v309 = v529;
        (*(*v198 + 240))(v308, 1, v552, v553, v554);
        if (v183)
        {

          sub_1CF480498(v578);
          (*(v304 + 8))(v308, v206);
          return (v485)(v487, v486);
        }

        v571 = v305;
        v574 = v306;
        v331 = v518;
        v332 = v519;
        v333 = (*(v518 + 48))(v309, 1, v519);
        v334 = v486;
        if (v333 == 1)
        {

          sub_1CF480498(v578);
          (*(v562 + 8))(v308, v564);
          (v485)(v487, v334);
          (*(v503 + 8))(v309, v505);
          goto LABEL_32;
        }

        v385 = *(v331 + 32);
        v386 = v308;
        v387 = v498;
        v385(v498, v309, v332);
        v388 = v332;
        v389 = (*(*v198 + 312))(v386, v552, v553, v554);
        v579 = 0;
        v400 = v390;
        v569 = v389;

        sub_1CF480498(v578);
        if ((v400 & 1) == 0)
        {
          v434 = v558;
          v435 = v493;
          (*(v558 + 16))(v493, v487, v560);
          v436 = v563;
          v437 = v565;
          if ((*(v563 + 48))(v435, 1, v565) == 1)
          {
            (*(v518 + 8))(v387, v388);
            (*(v562 + 8))(v533, v564);
            (v485)(v487, v486);
            (*(v434 + 8))(v435, v560);
          }

          else
          {
            v578 = *(v436 + 32);
            v568 = v436 + 32;
            (v578)(v494, v435, v437);
            v445 = v570;
            v446 = v491;
            (v570[2])(v491, &v487[*(v555 + 48)], v531);
            v447 = v515;
            v448 = v516;
            if ((*(v515 + 48))(v446, 1, v516) != 1)
            {
              v466 = *(v447 + 32);
              v567 = (v447 + 32);
              v570 = v466;
              v467 = (v466)(v492, v446, v448);
              MEMORY[0x1EEE9AC00](v467);
              v468 = v447;
              strcpy(&v482 - 80, " item destinationItemID baseVersion fields version domainVersion ");
              v580.i64[0] = v564;
              v580.i64[1] = v505;
              v581.i64[0] = v560;
              v581.i64[1] = v531;
              v582 = &type metadata for Fields;
              v583 = MEMORY[0x1E69E6810];
              v584 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
              v469 = swift_getTupleTypeMetadata();
              v470 = v469[12];
              v471 = v469[16];
              v560 = v469[20];
              v562 = v469[24];
              v561 = v469[28];
              v566 = v469[32];
              v472 = v573;
              v574(v573, v533, v564);
              v385(&v472[v470], v498, v388);
              (*(v518 + 56))(&v472[v470], 0, 1, v388);
              (v578)(&v472[v471], v494, v437);
              (*(v436 + 56))(&v472[v471], 0, 1, v437);
              v473 = v560;
              v474 = v516;
              (v570)(&v472[v560], v492, v516);
              (*(v468 + 56))(&v472[v473], 0, 1, v474);
              *&v472[v562] = v572;
              *&v472[v561] = v569;
              v475 = v551;
              v476 = v501;
              v477 = v556;
              (*(v551 + 16))(v501, v575, v556);
              (v485)(v487, v486);
              v478 = *&v476[*(v477 + 72)];
              v479 = *(v475 + 8);
              v480 = v478;
              v479(v476, v477);
              *&v472[v566] = v478;
              v580 = vextq_s8(v577, v577, 8uLL);
              v581 = vextq_s8(v576, v576, 8uLL);
              type metadata accessor for DirectionalTestingOperation();
              swift_storeEnumTagMultiPayload();
              v580 = v577;
              v581 = v576;
              v481 = type metadata accessor for TestingOperation();
              swift_storeEnumTagMultiPayload();
              return (*(*(v481 - 8) + 56))(v472, 0, 1, v481);
            }

            (*(v436 + 8))(v494, v437);
            (*(v518 + 8))(v498, v388);
            (*(v562 + 8))(v533, v564);
            (v485)(v487, v486);
            (v445[1])(v446, v531);
          }

          goto LABEL_32;
        }

        (*(v331 + 8))(v387, v332);
        (*(v562 + 8))(v533, v564);
LABEL_99:
        v393 = v487;
        v394 = v486;
        goto LABEL_100;
      }

      v257 = v564;
      if (v186 == 2)
      {
        sub_1CF480498(v186);
        v258 = v559;
        v259 = *(v559 + 16);
        v578 = *(v169 + 52);
        v260 = v561;
        v259(v187, &v189[v578], v561);
        v261 = v562;
        if ((*(v562 + 48))(v187, 1, v257) == 1)
        {
          (v485)(v189, v169);
          (*(v258 + 8))(v187, v260);
          goto LABEL_32;
        }

        v282 = v536;
        v574 = *(v261 + 32);
        v575 = v261 + 32;
        v574(v536, v187, v257);
        v283 = v558;
        v284 = v522;
        v285 = v560;
        (*(v558 + 16))(v522, v189, v560);
        if ((*(v563 + 48))(v284, 1, v565) == 1)
        {
          (*(v261 + 8))(v282, v257);
          (v485)(v189, v169);
          (*(v283 + 8))(v284, v285);
          goto LABEL_32;
        }

        v316 = v506;
        v572 = *(v563 + 32);
        v572(v506, v284, v565);
        v317 = v508;
        (v185[2])(v508, &v189[*(v555 + 48)], v531);
        v318 = v515;
        v319 = v516;
        if ((*(v515 + 48))(v317, 1, v516) == 1)
        {
          (*(v563 + 8))(v316, v565);
          (*(v562 + 8))(v536, v257);
          (v485)(v189, v169);
          (v185[1])(v317, v531);
          goto LABEL_32;
        }

        v571 = *(v318 + 32);
        v353 = (v571)(v510, v317, v319);
        v570 = &v482;
        MEMORY[0x1EEE9AC00](v353);
        strcpy(&v482 - 64, " destinationItemID baseVersion recursive domainVersion ");
        v354 = v257;
        v580.i64[0] = v257;
        v580.i64[1] = v560;
        v581.i64[0] = v531;
        v581.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
        v582 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
        v355 = swift_getTupleTypeMetadata();
        v356 = v355[12];
        v357 = v355[16];
        v358 = v355[24];
        v569 = v355[20];
        v570 = v358;
        v343 = v573;
        v574(v573, v536, v354);
        v359 = v316;
        v360 = v565;
        v572(&v343[v356], v359, v565);
        (*(v563 + 56))(&v343[v356], 0, 1, v360);
        (v571)(&v343[v357], v510, v319);
        (*(v318 + 56))(&v343[v357], 0, 1, v319);
        v343[v569] = 0;
        v361 = v551;
        v362 = v487;
        v363 = v501;
        v364 = v556;
        (*(v551 + 16))(v501, &v487[v578], v556);
        (v485)(v362, v486);
        v365 = *&v363[*(v364 + 72)];
        v366 = *(v361 + 8);
        v367 = v365;
        v366(v363, v364);
        *(v570 + v343) = v365;
        v580 = vextq_s8(v577, v577, 8uLL);
        v581 = vextq_s8(v576, v576, 8uLL);
        type metadata accessor for DirectionalTestingOperation();
        swift_storeEnumTagMultiPayload();
        v580 = v577;
        v581 = v576;
        v352 = type metadata accessor for TestingOperation();
        goto LABEL_84;
      }

LABEL_118:
      sub_1CF51565C("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 1220, v186);
    }

    if (v186 == 6)
    {
      sub_1CF480498(v186);
      v242 = v551;
      v243 = v547;
      v244 = v556;
      (*(v551 + 16))(v547, &v189[*(v169 + 52)], v556);
      (v485)(v189, v169);
      v245 = v559;
      v246 = v544;
      v247 = v561;
      (*(v559 + 16))(v544, v243, v561);
      (*(v242 + 8))(v243, v244);
      v248 = v562;
      v249 = v564;
      if ((*(v562 + 48))(v246, 1, v564) == 1)
      {
        (*(v245 + 8))(v246, v247);
        goto LABEL_32;
      }

      v271 = *(v248 + 32);
      v272 = v525;
      v271(v525, v246, v249);
      v217 = v573;
      v271(v573, v272, v249);
      v580 = vextq_s8(v577, v577, 8uLL);
      v581 = vextq_s8(v576, v576, 8uLL);
      type metadata accessor for DirectionalTestingOperation();
    }

    else
    {
      v218 = v564;
      if (v186 == 12)
      {
        goto LABEL_31;
      }

      if (v186 != 23)
      {
        goto LABEL_118;
      }

      sub_1CF480498(v186);
      v262 = v551;
      v263 = v548;
      v264 = v556;
      (*(v551 + 16))(v548, &v189[*(v169 + 52)], v556);
      (v485)(v189, v169);
      v265 = v559;
      v266 = v545;
      v267 = v561;
      (*(v559 + 16))(v545, v263, v561);
      (*(v262 + 8))(v263, v264);
      v268 = v562;
      if ((*(v562 + 48))(v266, 1, v218) == 1)
      {
        (*(v265 + 8))(v266, v267);
        goto LABEL_32;
      }

      v286 = *(v268 + 32);
      v287 = v526;
      v286(v526, v266, v218);
      v217 = v573;
      v286(v573, v287, v218);
      v580 = vextq_s8(v577, v577, 8uLL);
      v581 = vextq_s8(v576, v576, 8uLL);
      type metadata accessor for DirectionalTestingOperation();
    }

LABEL_59:
    swift_storeEnumTagMultiPayload();
    v580 = v577;
    v581 = v576;
    v288 = type metadata accessor for TestingOperation();
    swift_storeEnumTagMultiPayload();
    return (*(*(v288 - 8) + 56))(v217, 0, 1, v288);
  }

  (*(v138 + 8))(v142, v137);
  v153 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v154 = sub_1CF9E6108();
  v155 = sub_1CF9E7298();
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    *v156 = 0;
    _os_log_impl(&dword_1CEFC7000, v154, v155, "[interactive] testingOperationForEntry, missing entry", v156, 2u);
    MEMORY[0x1D386CDC0](v156, -1, -1);
  }

  (*(v574 + 1))(v132, v575);
  v580 = v577;
  v581 = v576;
  v157 = type metadata accessor for TestingOperation();
  return (*(*(v157 - 8) + 56))(v573, 1, 1, v157);
}

uint64_t sub_1CF693178(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v9 = v8;
  v68 = a5;
  v69 = a7;
  v78 = a6;
  v67 = a3;
  v71 = a2;
  v72 = a1;
  v11 = *(*v7 + 88);
  v12 = *(*v7 + 96);
  v13 = *(*v7 + 104);
  v74 = *(*v7 + 80);
  v75 = v11;
  v76 = v12;
  v77 = v13;
  v63 = type metadata accessor for ReconciliationTable.CachedEntry();
  v58 = *(v63 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v54 = &v53 - v15;
  v75 = v11;
  v76 = v12;
  v77 = v13;
  v16 = type metadata accessor for ReconciliationMutation();
  v59 = *(v16 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - v18;
  v20 = sub_1CF9E75D8();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v53 - v23;
  v25 = *(a4 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = *(AssociatedTypeWitness - 8);
  v30 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v53 - v31;
  v33 = sub_1CF9E75D8();
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v57 = &v53 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v61 = v38;
  v62 = v37;
  v39 = *(v38 + 16);
  v73 = &v53 - v40;
  v56 = v38 + 16;
  v55 = v39;
  v39();
  (*(v25 + 16))(v28, v72, a4);
  sub_1CF9E6B68();
  v66 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v71 = v32;
  v72 = AssociatedTypeWitness;
  v42 = v59;
  v65 = AssociatedConformanceWitness;
  sub_1CF9E7618();
  v64 = *(v42 + 48);
  if (v64(v24, 1, v16) != 1)
  {
    v43 = *(v42 + 32);
    v44 = (v42 + 8);
    while (1)
    {
      v43(v19, v24, v16);
      v45 = objc_autoreleasePoolPush();
      sub_1CF69C15C(v73, v70, v19, v67, v66, v68, v78, v69, &v74);
      if (v9)
      {
        break;
      }

      v9 = 0;
      objc_autoreleasePoolPop(v45);
      (*v44)(v19, v16);
      sub_1CF9E7618();
      if (v64(v24, 1, v16) == 1)
      {
        goto LABEL_5;
      }
    }

    objc_autoreleasePoolPop(v45);
    (*(v60 + 8))(v71, v72);
    (*v44)(v19, v16);
    v47 = v62;
    return (*(v61 + 8))(v73, v47);
  }

LABEL_5:
  (*(v60 + 8))(v71, v72);
  v46 = v57;
  v47 = v62;
  (v55)(v57, v73, v62);
  v48 = v58;
  v49 = v63;
  if ((*(v58 + 48))(v46, 1, v63) == 1)
  {
    v50 = *(v61 + 8);
    v50(v46, v47);
    return (v50)(v73, v47);
  }

  v52 = v54;
  (*(v48 + 32))(v54, v46, v49);
  sub_1CF695580(v52, v67, v68, v69);
  if (v9)
  {
    (*(v48 + 8))(v52, v49);
    return (*(v61 + 8))(v73, v47);
  }

  (*(v48 + 8))(v52, v49);
  return (*(v61 + 8))(v73, v47);
}

uint64_t sub_1CF693824(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v11 = *(*v6 + 96);
  v21 = *(*v6 + 80);
  v22 = v11;
  v12 = type metadata accessor for ReconciliationTable.CachedEntry();
  v13 = sub_1CF9E75D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(*(v12 - 8) + 56))(&v19 - v16, 1, 1, v12);
  sub_1CF693178(a1, v17, a2, a3, a4, v19, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1CF6939AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(v7 + 80);
  v15 = *(v7 + 96);
  v16 = a1 + *(type metadata accessor for ItemReconciliationHalf() + 64);
  v17 = *v16;
  if (*(v16 + 16))
  {
    v7 = *v16;
    sub_1CF03C530(*v16, *(v16 + 8), *(v16 + 16));
  }

  else
  {
    v18 = v17 & a3;
    v25 = *(v16 + 8);

    if (v18)
    {
      v19 = v17;
      while (1)
      {
        v20 = v18 & -v18;
        v21 = sub_1CF6A5438(v20, a1, a2, a4, a5, a6, a7);
        if (v27)
        {
          break;
        }

        v22 = -1;
        if ((v21 & ((v19 & v20) != 0)) != 0)
        {
          v22 = ~v20;
        }

        v19 &= v22;
        v23 = v18 == v20;
        v18 ^= v20;
        if (v23)
        {
          goto LABEL_12;
        }
      }

      sub_1CF03D7A8(v17, v25, 0);
    }

    else
    {
      v19 = v17;
LABEL_12:
      if (v19)
      {
        return v19;
      }

      else
      {
        return v25;
      }
    }
  }

  return v7;
}

uint64_t sub_1CF693B0C(unint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v195 = a4;
  v191 = a3;
  v192 = a2;
  v212 = a1;
  v5 = v4 + 16;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 96);
  v9 = *(*v4 + 104);
  v216 = v6;
  v217 = v7;
  v218 = v8;
  v219 = v9;
  v10 = type metadata accessor for ReconciliationTable.CachedEntry();
  v184 = sub_1CF9E75D8();
  v183 = *(v184 - 8);
  v11 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v190 = &v170 - v12;
  v205 = sub_1CF9E6118();
  v204 = *(v205 - 8);
  v13 = *(v204 + 64);
  v14 = MEMORY[0x1EEE9AC00](v205);
  v181 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v182 = &v170 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v185 = &v170 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v196 = &v170 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v180 = &v170 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v179 = &v170 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v193 = &v170 - v27;
  v197 = *(v10 - 8);
  v28 = *(v197 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v188 = &v170 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v201 = &v170 - v31;
  v208 = v7;
  v209 = v6;
  v216 = v6;
  v217 = v7;
  v206 = v9;
  v207 = v8;
  v218 = v8;
  v219 = v9;
  v32 = type metadata accessor for ItemReconciliation();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v189 = &v170 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v187 = &v170 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v203 = &v170 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v198 = &v170 - v41;
  v213 = v42;
  v43 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v200 = *(TupleTypeMetadata2 - 8);
  v45 = *(v200 + 64);
  v46 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v48 = &v170 - v47;
  v211 = *(v43 - 8);
  v49 = *(v211 + 64);
  v50 = MEMORY[0x1EEE9AC00](v46);
  v186 = &v170 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v199 = &v170 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v170 - v54;
  v210 = v5;
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_48;
  }

  v57 = (*(*result + 152))(result);

  if ((v57 & 8) != 0 || (v202 = v33, v58 = *(v10 + 56), v59 = v212, v60 = v213, !sub_1CF082AE4(v213)))
  {
LABEL_18:
    v79 = 0;
    return v79 & 1;
  }

  v175 = v10;
  v178 = *(v10 + 68);
  v61 = v58;
  v62 = v202;
  v63 = *(v202 + 16);
  v174 = v61;
  v177 = v202 + 16;
  v176 = v63;
  v63(v55, v59 + v61, v60);
  v64 = *(v62 + 56);
  v172 = v62 + 56;
  v171 = v64;
  v64(v55, 0, 1, v60);
  v173 = TupleTypeMetadata2;
  v65 = *(TupleTypeMetadata2 + 48);
  v66 = v211;
  v67 = *(v211 + 16);
  v67(v48, v59 + v178, v43);
  v178 = v65;
  v68 = &v48[v65];
  v69 = v213;
  v67(v68, v55, v43);
  v70 = *(v62 + 48);
  if (v70(v48, 1, v69) == 1)
  {
    v71 = *(v66 + 8);
    v71(v55, v43);
    if (v70(&v48[v178], 1, v69) == 1)
    {
      v71(v48, v43);
LABEL_15:
      v84 = fpfs_current_or_default_log();
      v85 = v196;
      sub_1CF9E6128();
      v86 = sub_1CF9E6108();
      v87 = sub_1CF9E7298();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_1CEFC7000, v86, v87, "item is still runnable after reconciliation, breaking loop", v88, 2u);
        MEMORY[0x1D386CDC0](v88, -1, -1);
      }

      (*(v204 + 8))(v85, v205);
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v72 = v199;
  v67(v199, v48, v43);
  v73 = v178;
  if (v70(&v48[v178], 1, v69) == 1)
  {
    (*(v211 + 8))(v55, v43);
    (*(v202 + 8))(v72, v69);
LABEL_9:
    (*(v200 + 8))(v48, v173);
    v74 = v212;
    v75 = v174;
    goto LABEL_10;
  }

  v80 = v202;
  v81 = v198;
  (*(v202 + 32))(v198, &v48[v73], v69);
  LODWORD(v200) = sub_1CF95CFBC(v72, v81, v209, v208, v207, v206);
  v82 = *(v80 + 8);
  v82(v81, v69);
  v83 = *(v211 + 8);
  v83(v55, v43);
  v82(v72, v69);
  v83(v48, v43);
  v74 = v212;
  v75 = v174;
  if (v200)
  {
    goto LABEL_15;
  }

LABEL_10:
  v76 = v203;
  v77 = v176;
  v176(v203, v74 + v75, v69);
  result = swift_weakLoadStrong();
  v78 = v220;
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_1CF95A22C(result, 1, v69, &v216);
  if (v78)
  {
    (*(v202 + 8))(v76, v69);

    return v79 & 1;
  }

  v89 = *(v202 + 8);
  v202 += 8;
  v203 = v89;
  (v89)(v76, v69);

  v212 = v218;
  if (v216 >> 62 == 2 && v216 <= 0x8000000000000001)
  {
    v79 = v212 | v217;
    if (!(v212 | v217))
    {
      return v79 & 1;
    }
  }

  v211 = v216;
  v200 = v217;
  v220 = 0;
  v199 = *v74;
  LODWORD(v196) = *(v74 + 8);
  v90 = v75;
  v91 = v175;
  v92 = v198;
  v77(v198, v74 + *(v175 + 52), v69);
  v93 = v187;
  v77(v187, v74 + v90, v69);
  v94 = *(v91 + 64);
  v95 = (v74 + *(v91 + 60));
  v97 = *v95;
  v96 = v95[1];
  v216 = v97;
  v215 = v96;
  v98 = v74 + v94;
  v99 = v77;
  v100 = *v98;
  v101 = *(v98 + 8);
  v102 = v74 + v90;
  v103 = v186;
  v99(v186, v102, v69);
  v171(v103, 0, 1, v69);
  v104 = v201;
  sub_1CF079694(v199, v196, v92, v93, &v216, &v215, v100, v101, v201, v103);
  v105 = [objc_allocWithZone(FPLoggerScope) init];
  v106 = fpfs_current_or_default_log();
  v107 = v193;
  sub_1CF9E6128();
  v108 = v197;
  v109 = *(v197 + 16);
  v110 = v188;
  v187 = (v197 + 16);
  v186 = v109;
  (v109)(v188, v104, v91);
  v111 = v110;
  v112 = v105;
  v113 = sub_1CF9E6108();
  v114 = sub_1CF9E7288();

  v115 = os_log_type_enabled(v113, v114);
  v199 = v112;
  if (v115)
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v178 = v117;
    v118 = v108;
    v119 = swift_slowAlloc();
    v216 = v119;
    *v116 = 138412546;
    v120 = [v112 enter];
    *(v116 + 4) = v120;
    *v117 = v120;
    *(v116 + 12) = 2082;
    v121 = v175;
    v176(v92, &v111[*(v175 + 56)], v213);
    v196 = *(v118 + 8);
    (v196)(v111, v121);
    v122 = sub_1CF082CB0(v213);
    v124 = v123;
    (v203)(v92, v213);
    v125 = sub_1CEFD0DF0(v122, v124, &v216);
    v126 = v200;
    v127 = v211;

    *(v116 + 14) = v125;
    _os_log_impl(&dword_1CEFC7000, v113, v114, "%@  ⚙️ reconciling: %{public}s", v116, 0x16u);
    v128 = v178;
    sub_1CEFCCC44(v178, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v128, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v119);
    MEMORY[0x1D386CDC0](v119, -1, -1);
    v129 = v116;
    v69 = v213;
    MEMORY[0x1D386CDC0](v129, -1, -1);

    v198 = *(v204 + 8);
    (v198)(v193, v205);
    v130 = v195;
    v131 = v192;
  }

  else
  {
    v196 = *(v108 + 8);
    (v196)(v111, v175);

    v198 = *(v204 + 8);
    (v198)(v107, v205);
    v130 = v195;
    v131 = v192;
    v126 = v200;
    v127 = v211;
  }

  v216 = v209;
  v217 = v208;
  v218 = v207;
  v219 = v206;
  type metadata accessor for ConcreteJobResult();
  v132 = sub_1CF056580();
  v133 = v189;
  v176(v189, v201 + *(v175 + 56), v69);
  v216 = v127;
  v217 = v126;
  v218 = v212;
  result = swift_weakLoadStrong();
  if (result)
  {
    v134 = result;
    sub_1CF48048C(v127, v126, v212);
    v135 = v191;
    v136 = v220;
    sub_1CF98B47C(v133, &v216, v134, v132, v131, v191, v130);
    v137 = v133;
    v138 = v190;
    if (v136)
    {

      sub_1CF6BC8AC(v216);
      (v203)(v137, v213);
      v139 = fpfs_current_or_default_log();
      v140 = v185;
      sub_1CF9E6128();
      v141 = v199;
      v142 = sub_1CF9E6108();
      v143 = sub_1CF9E7288();

      if (os_log_type_enabled(v142, v143))
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    v220 = 0;

    sub_1CF6BC8AC(v216);
    (v203)(v137, v213);
    swift_beginAccess();
    v214 = v132[4];
    v144 = v175;
    (v186)(v138, v201, v175);
    (*(v197 + 56))(v138, 0, 1, v144);

    v216 = v209;
    v217 = v208;
    v218 = v207;
    v219 = v206;
    type metadata accessor for ReconciliationMutation();
    v145 = sub_1CF9E6E58();
    WitnessTable = swift_getWitnessTable();
    v147 = v220;
    sub_1CF693178(&v214, v138, v131, v145, v135, WitnessTable, v195);
    if (v147)
    {

      (*(v183 + 8))(v138, v184);

      v148 = fpfs_current_or_default_log();
      v140 = v182;
      sub_1CF9E6128();
      v141 = v199;
      v142 = sub_1CF9E6108();
      v143 = sub_1CF9E7288();

      if (os_log_type_enabled(v142, v143))
      {
LABEL_32:
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        *v149 = 138412290;
        v151 = [v141 leave];
        *(v149 + 4) = v151;
        *v150 = v151;
        _os_log_impl(&dword_1CEFC7000, v142, v143, "%@", v149, 0xCu);
        sub_1CEFCCC44(v150, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v150, -1, -1);
        MEMORY[0x1D386CDC0](v149, -1, -1);
      }

LABEL_33:

      (v198)(v140, v205);
      sub_1CF480498(v211);

      (v196)(v201, v175);
      return v79 & 1;
    }

    (*(v183 + 8))(v138, v184);

    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();
      v152 = v132[3];

      v153 = sub_1CF9E6DA8();
      v154 = v192;
      v155 = v191;
      sub_1CF92E0C4(v152, v153, v192, v191, v195);

      swift_beginAccess();
      v156 = v132[5];

      v216 = v209;
      v217 = v208;
      v218 = v207;
      v219 = v206;
      type metadata accessor for FSOrFPJob();
      if (!sub_1CF9E6DF8())
      {
        goto LABEL_44;
      }

      v157 = 0;
      while (1)
      {
        v158 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v158)
        {
          v159 = *(v156 + 8 * v157 + 32);

          v160 = v157 + 1;
          if (__OFADD__(v157, 1))
          {
            goto LABEL_43;
          }
        }

        else
        {
          v159 = sub_1CF9E7998();

          swift_unknownObjectRelease();
          v160 = v157 + 1;
          if (__OFADD__(v157, 1))
          {
LABEL_43:
            __break(1u);
LABEL_44:

            v162 = fpfs_current_or_default_log();
            v163 = v180;
            sub_1CF9E6128();
            v164 = v199;
            v165 = sub_1CF9E6108();
            v166 = sub_1CF9E7288();

            if (os_log_type_enabled(v165, v166))
            {
              v167 = swift_slowAlloc();
              v168 = swift_slowAlloc();
              *v167 = 138412290;
              v169 = [v164 leave];
              *(v167 + 4) = v169;
              *v168 = v169;
              _os_log_impl(&dword_1CEFC7000, v165, v166, "%@", v167, 0xCu);
              sub_1CEFCCC44(v168, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v168, -1, -1);
              MEMORY[0x1D386CDC0](v167, -1, -1);
            }

            (v198)(v163, v205);
            sub_1CF480498(v211);

            (v196)(v201, v175);
            v79 = 1;
            return v79 & 1;
          }
        }

        v161 = objc_autoreleasePoolPush();
        sub_1CF6A5084(v159, v194, v154, v155, v195, &v216);
        objc_autoreleasePoolPop(v161);

        v216 = v209;
        v217 = v208;
        v218 = v207;
        v219 = v206;
        type metadata accessor for FSOrFPJob();
        ++v157;
        if (v160 == sub_1CF9E6DF8())
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1CF695580(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v378 = a4;
  v374 = a3;
  v375 = a2;
  v380 = a1;
  v5 = *v4;
  v6 = *(*v4 + 96);
  v7 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v369 = *(AssociatedTypeWitness - 8);
  v9 = *(v369 + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v349 = &v316 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v318 = &v316 - v12;
  v13 = *(v5 + 104);
  v381 = v4;
  v14 = *(v5 + 88);
  v356 = swift_getAssociatedTypeWitness();
  v354 = sub_1CF9E75D8();
  v353 = *(v354 - 8);
  v15 = *(v353 + 64);
  v16 = MEMORY[0x1EEE9AC00](v354);
  v334 = &v316 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v335 = &v316 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v322 = &v316 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v338 = &v316 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v341 = &v316 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v325 = &v316 - v26;
  v371 = AssociatedTypeWitness;
  v368 = sub_1CF9E75D8();
  v376 = *(v368 - 8);
  v27 = *(v376 + 64);
  v28 = MEMORY[0x1EEE9AC00](v368);
  v351 = &v316 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v333 = &v316 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v339 = &v316 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v326 = &v316 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v329 = &v316 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v342 = &v316 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v317 = &v316 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v323 = &v316 - v42;
  v372 = v7;
  *&v43 = v7;
  v359 = v14;
  *(&v43 + 1) = v14;
  v384 = v43;
  v373 = v6;
  *&v44 = v6;
  v357 = v13;
  *(&v44 + 1) = v13;
  v383 = v44;
  v386 = v44;
  v385 = v43;
  v366 = type metadata accessor for PersistenceTrigger();
  v365 = *(v366 - 8);
  v45 = *(v365 + 64);
  v46 = MEMORY[0x1EEE9AC00](v366);
  v332 = &v316 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v370 = &v316 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v363 = &v316 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v340 = &v316 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v352 = &v316 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v324 = &v316 - v56;
  v386 = v383;
  v385 = v384;
  v57 = type metadata accessor for ReconciliationTable.CachedEntry();
  v331 = *(v57 - 1);
  v58 = *(v331 + 64);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v320 = &v316 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v321 = &v316 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v319 = &v316 - v63;
  v386 = v383;
  v385 = v384;
  v64 = type metadata accessor for ItemReconciliation();
  v367 = sub_1CF9E75D8();
  v358 = *(v367 - 8);
  v65 = *(v358 + 64);
  v66 = MEMORY[0x1EEE9AC00](v367);
  v343 = (&v316 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = MEMORY[0x1EEE9AC00](v66);
  v345 = &v316 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v347 = &v316 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v328 = &v316 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v344 = &v316 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v346 = &v316 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v330 = &v316 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v327 = &v316 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v84 = &v316 - v83;
  v85 = MEMORY[0x1EEE9AC00](v82);
  v87 = &v316 - v86;
  v88 = *(v64 - 8);
  v89 = *(v88 + 64);
  v90 = MEMORY[0x1EEE9AC00](v85);
  v337 = &v316 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = MEMORY[0x1EEE9AC00](v90);
  v336 = &v316 - v93;
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v316 - v94;
  v96 = v380;
  v97 = (v380 + v57[13]);
  v361 = sub_1CF07CD0C(v64);
  *&v384 = v97;
  v362 = sub_1CF07CD80(v64);
  v98 = v57[14];
  v355 = sub_1CF07CD0C(v64);
  v99 = v96;
  v360 = sub_1CF07CD80(v64);
  v379 = v88;
  v101 = *(v88 + 16);
  v100 = v88 + 16;
  v350 = v98;
  v102 = v96 + v98;
  v103 = v57;
  v382 = v64;
  *&v383 = v95;
  v364 = v101;
  v101(v95, v102, v64);
  v104 = v96 + v57[16];
  if (*(v104 + 8) < 2u)
  {
    goto LABEL_105;
  }

  v105 = *v104;
  if (v105 <= 1)
  {
    v106 = v383;
    v107 = v384;
    if (!v105)
    {
      v108 = *(v96 + 8);
      v348 = v100;
      if ((v108 & 1) == 0)
      {
        goto LABEL_45;
      }

      v109 = v382;
      while (1)
      {
LABEL_12:
        v114 = v370;
LABEL_13:
        v87 = type metadata accessor for ItemReconciliationHalf();
        if ((*(v107 + *(v87 + 16) + 16) == 2) == (*(v106 + *(v87 + 16) + 16) != 2) || (v128 = *(v109 + 52), v129 = *(type metadata accessor for ItemReconciliationHalf() + 64), (*(v107 + v128 + v129 + 16) == 2) == (*(v106 + v128 + v129 + 16) != 2)))
        {
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v131 = Strong;
            v132 = v352;
            v364(v352, v380 + v350, v109);
            v133 = v366;
            swift_storeEnumTagMultiPayload();
            (*(*v131 + 312))(v132);

            (*(v365 + 8))(v132, v133);
          }
        }

        if (v362 && v361 && *(v380 + 8) != 1)
        {
          v136 = v376;
          v134 = v363;
          if (v360)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v134 = v363;
          if (v355 || v360)
          {
            v135 = swift_weakLoadStrong();
            v136 = v376;
            if (!v135)
            {
              goto LABEL_65;
            }

            v99 = v135;
            v137 = v342;
            (*(v376 + 16))(v342, v106, v368);
            v138 = v369;
            v139 = v371;
            if ((*(v369 + 48))(v137, 1, v371) == 1)
            {
LABEL_91:
              __break(1u);
            }

            else
            {
              v114 = v340;
              (*(v138 + 32))(v340, v137, v139);
              v107 = v341;
              (*(v353 + 16))(v341, v106 + *(v109 + 52), v354);
              v84 = v356;
              v140 = *(v356 - 8);
              if ((*(v140 + 48))(v107, 1, v356) != 1)
              {
                goto LABEL_64;
              }
            }

            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
            goto LABEL_100;
          }

          v136 = v376;
          if (!v362)
          {
            goto LABEL_65;
          }
        }

        v141 = *(v384 + *(v87 + 14));
        if (v141 != 6)
        {
          v142 = swift_weakLoadStrong();
          if (v142)
          {
            LODWORD(v367) = v141;
            v380 = v142;
            v143 = v329;
            v144 = v384;
            (*(v136 + 16))(v329, v384, v368);
            v145 = v369;
            v146 = v371;
            if ((*(v369 + 48))(v143, 1, v371) == 1)
            {
              goto LABEL_98;
            }

            (*(v145 + 32))(v134, v143, v146);
            v147 = v146;
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            v149 = v356;
            v150 = swift_getAssociatedConformanceWitness();
            *&v385 = v147;
            *(&v385 + 1) = v149;
            *&v386 = AssociatedConformanceWitness;
            *(&v386 + 1) = v150;
            v151 = type metadata accessor for ReconciliationID();
            swift_storeEnumTagMultiPayload();
            v152 = v338;
            (*(v353 + 16))(v338, v144 + *(v109 + 52), v354);
            v153 = *(v149 - 8);
            v154 = (*(v153 + 48))(v152, 1, v149);
            if (v154 == 1)
            {
              goto LABEL_99;
            }

            MEMORY[0x1EEE9AC00](v154);
            strcpy(v314, " otherID from to ");
            *&v385 = v151;
            *(&v385 + 1) = sub_1CF9E75D8();
            *&v386 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
            *(&v386 + 1) = v386;
            TupleTypeMetadata = swift_getTupleTypeMetadata();
            v156 = TupleTypeMetadata[12];
            v157 = TupleTypeMetadata[16];
            v158 = TupleTypeMetadata[20];
            (*(v153 + 32))(&v134[v156], v338, v149);
            swift_storeEnumTagMultiPayload();
            (*(*(v151 - 8) + 56))(&v134[v156], 0, 1, v151);
            v134[v157] = v367;
            v134[v158] = 6;
            v159 = v366;
            swift_storeEnumTagMultiPayload();
            (*(*v380 + 312))(v134);

            (*(v365 + 8))(v134, v159);
            v106 = v383;
            v136 = v376;
            v114 = v370;
          }
        }

        v160 = swift_weakLoadStrong();
        if (!v160)
        {
          __break(1u);
          goto LABEL_90;
        }

        v161 = (*(*v160 + 152))(v160);

        v162 = v384;
        if ((v161 & 0x4000) != 0 && (*(v106 + *(v87 + 9)) & 0x80) != 0)
        {
          break;
        }

        v163 = swift_weakLoadStrong();
        if (!v163)
        {
          goto LABEL_93;
        }

        v164 = v163;
        v165 = v339;
        v380 = *(v136 + 16);
        (v380)(v339, v162, v368);
        v166 = v369;
        v167 = v371;
        v370 = *(v369 + 48);
        if ((v370)(v165, 1, v371) == 1)
        {
          goto LABEL_94;
        }

        v168 = (*(*v164 + 560))(v165);

        (*(v166 + 8))(v165, v167);
        v109 = v382;
        v106 = v383;
        if ((v168 & 1) == 0)
        {
          v169 = swift_weakLoadStrong();
          if (!v169)
          {
            goto LABEL_95;
          }

          v170 = v169;
          v171 = v335;
          (*(v353 + 16))(v335, v384 + *(v109 + 52), v354);
          v172 = v356;
          v173 = *(v356 - 8);
          if ((*(v173 + 48))(v171, 1, v356) == 1)
          {
            goto LABEL_96;
          }

          v174 = (*(*v170 + 568))(v171);

          (*(v173 + 8))(v171, v172);
          v106 = v383;
          v136 = v376;
          if ((v174 & 1) == 0)
          {
            goto LABEL_65;
          }
        }

        v175 = swift_weakLoadStrong();
        if (!v175)
        {
          goto LABEL_65;
        }

        v99 = v175;
        v176 = v333;
        v177 = v384;
        (v380)(v333, v384, v368);
        v103 = v371;
        if ((v370)(v176, 1, v371) == 1)
        {
          goto LABEL_97;
        }

        v114 = v332;
        (*(v369 + 32))(v332, v176, v103);
        v107 = v334;
        (*(v353 + 16))(v334, v177 + *(v109 + 52), v354);
        v84 = v356;
        v140 = *(v356 - 8);
        if ((*(v140 + 48))(v107, 1, v356) != 1)
        {
          goto LABEL_64;
        }

        __break(1u);
LABEL_45:
        v345 = *v99;
        v178 = v382;
        v364(v87, v107, v382);
        v179 = v99;
        v180 = v379;
        v347 = *(v379 + 56);
        v346 = v379 + 56;
        (v347)(v87, 0, 1, v178);
        v328 = (v179 + v103[15]);
        v181 = *(v328 + 1);
        *&v385 = *v328;
        v387 = v181;
        v182 = v103[17];
        v344 = v103;
        v183 = v358;
        v185 = v358 + 16;
        v184 = *(v358 + 16);
        v325 = v182;
        v186 = &v182[v179];
        v187 = v367;
        v343 = v184;
        v184(v84, v186, v367);
        LODWORD(v180) = (*(v180 + 48))(v84, 1, v178) == 1;
        v188 = *(v183 + 8);
        v188(v84, v187);
        v189 = v106;
        v190 = v375;
        v191 = v377;
        sub_1CF6A1D90(v189, v87, &v385, &v387, v180, v375, v374, v378);
        if (v191)
        {
          v188(v87, v187);
          goto LABEL_80;
        }

        v377 = v185;
        v188(v87, v187);
        v224 = v327;
        v225 = v382;
        v226 = v364;
        v364(v327, v383, v382);
        (v347)(v224, 0, 1, v225);
        sub_1CF6A4478(v384, v224, v190, v374, *(v378 + 8));
        v271 = v226;
        v272 = v224;
        v273 = v367;
        v188(v272, v367);
        v274 = v336;
        v109 = v382;
        v226(v336, v384, v382);
        v275 = v337;
        v276 = v383;
        v271(v337, v383, v109);
        v277 = *(v328 + 1);
        *&v385 = *v328;
        v387 = v277;
        v278 = v330;
        v343(v330, &v325[v380], v273);
        v314[2] = v357;
        v314[1] = v373;
        v314[0] = v359;
        v313 = v372;
        v279 = v319;
        sub_1CF079694(v345, 0, v274, v275, &v385, &v387, 0, 2, v319, v278);
        v280 = v378;
        v281 = v381;
        v282 = sub_1CF693B0C(v279, v375, v374, v378);
        v106 = v276;
        v107 = v384;
        if (v282)
        {
          (*(v331 + 8))(v279, v344);
          return (*(v379 + 8))(v106, v109);
        }

        (*(*v281 + 192))(v276, v384, v345, v375, v374, v280);
        v377 = 0;
        (*(v331 + 8))(v279, v344);
      }

      v236 = swift_weakLoadStrong();
      v237 = v326;
      if (!v236)
      {
        goto LABEL_65;
      }

      v99 = v236;
      v238 = *(v136 + 16);
      v239 = v384;
      v238(v326, v384, v368);
      v240 = v369;
      v241 = v371;
      if ((*(v369 + 48))(v237, 1, v371) == 1)
      {
        goto LABEL_102;
      }

      (*(v240 + 32))(v114, v237, v241);
      v107 = v322;
      (*(v353 + 16))(v322, v239 + *(v109 + 52), v354);
      v84 = v356;
      v140 = *(v356 - 8);
      if ((*(v140 + 48))(v107, 1, v356) != 1)
      {
LABEL_64:
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        (*(v140 + 32))(&v114[*(TupleTypeMetadata2 + 48)], v107, v84);
        v243 = v366;
        swift_storeEnumTagMultiPayload();
        (*(*v99 + 312))(v114);

        (*(v365 + 8))(v114, v243);
        v136 = v376;
LABEL_65:
        v244 = *(v87 + 9);
        v245 = *(v106 + v244);
        v246 = v384;
        v247 = v378;
        if (((v245 >> 4) & 1) == ((*(v384 + v244) & 0x10) == 0))
        {
          v248 = v351;
          v249 = v368;
          (*(v136 + 16))(v351, v106, v368);
          v250 = v369;
          v251 = v371;
          if ((*(v369 + 48))(v248, 1, v371) == 1)
          {
            (*(v136 + 8))(v248, v249);
            v109 = v382;
            v106 = v383;
          }

          else
          {
            v252 = v349;
            (*(v250 + 32))(v349, v248, v251);
            v253 = swift_weakLoadStrong();
            if (v253)
            {
              v254 = v253;
              v380 = v245 & 0x10;
              v255 = swift_getAssociatedConformanceWitness();
              v256 = v356;
              v257 = swift_getAssociatedConformanceWitness();
              *&v385 = v251;
              *(&v385 + 1) = v256;
              *&v386 = v255;
              *(&v386 + 1) = v257;
              type metadata accessor for ReconciliationID();
              v258 = *(swift_getTupleTypeMetadata2() + 48);
              v259 = v352;
              v252 = v349;
              (*(v250 + 16))(v352, v349, v251);
              swift_storeEnumTagMultiPayload();
              v259[v258] = v380 >> 4;
              v260 = v366;
              swift_storeEnumTagMultiPayload();
              (*(*v254 + 312))(v259);

              (*(v365 + 8))(v259, v260);
            }

            (*(v250 + 8))(v252, v251);
            v109 = v382;
            v106 = v383;
            v246 = v384;
          }
        }

        v261 = *(v87 + 14);
        if (*(v106 + v261) != 6 && *(v246 + v261) == 6)
        {
          v262 = swift_weakLoadStrong();
          if (v262)
          {
            (*(*v262 + 328))(v375, v374, *(v247 + 8));

            return (*(v379 + 8))(v106, v109);
          }

LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        return (*(v379 + 8))(v106, v109);
      }

      goto LABEL_103;
    }

    v343 = *v96;
    if (*(v96 + 8))
    {
      v348 = v100;
      v115 = v379;
      v116 = v347;
      v117 = v382;
      (*(v379 + 56))(v347, 1, 1, v382);
      v118 = (v96 + v57[15]);
      v119 = v118[1];
      *&v385 = *v118;
      v387 = v119;
      v120 = v103[17];
      v344 = v103;
      v121 = v358;
      v122 = *(v358 + 16);
      v328 = v120;
      v123 = v116;
      v124 = v345;
      v125 = v367;
      v346 = v122;
      v122(v345, &v120[v96], v367);
      LODWORD(v117) = (*(v115 + 48))(v124, 1, v117) == 1;
      v126 = *(v121 + 8);
      v126(v124, v125);
      v106 = v383;
      v127 = v377;
      sub_1CF6A1D90(v383, v123, &v385, &v387, v117, v375, v374, v378);
      if (v127)
      {
        v126(v123, v125);
        v109 = v382;
        return (*(v379 + 8))(v106, v109);
      }

      v126(v123, v125);
      v223 = v357;
      sub_1CF082824(v106, v372, v359, v373, v357);
      v109 = v382;
      v263 = v364;
      v364(v336, v384, v382);
      v263(v337, v106, v109);
      v264 = v118[1];
      *&v385 = *v118;
      v387 = v264;
      v265 = v330;
      (v346)(v330, &v328[v380], v125);
      v314[2] = v223;
      v314[1] = v373;
      v314[0] = v359;
      v313 = v372;
      v266 = v320;
      sub_1CF079694(v343, 1, v336, v337, &v385, &v387, 1, 2, v320, v265);
      v267 = v374;
      v268 = v378;
      v269 = v381;
      v270 = sub_1CF693B0C(v266, v375, v374, v378);
      if ((v270 & 1) == 0)
      {
        v106 = v383;
        (*(*v269 + 176))(v383, v375, v267, v268);
        v377 = 0;
        (*(v331 + 8))(v320, v344);
        v107 = v384;
        goto LABEL_12;
      }
    }

    else
    {
      v208 = v346;
      v209 = v382;
      v364(v346, v384, v382);
      v210 = v379;
      v211 = *(v379 + 56);
      v347 = v379 + 56;
      v345 = v211;
      (v211)(v208, 0, 1, v209);
      v325 = (v99 + v103[15]);
      v212 = *(v325 + 1);
      *&v385 = *v325;
      v387 = v212;
      v213 = v358;
      v215 = v358 + 16;
      v214 = *(v358 + 16);
      v324 = v103[17];
      v216 = &v324[v99];
      v217 = v344;
      v218 = v367;
      v327 = v214;
      (v214)(v344, v216, v367);
      LODWORD(v210) = (*(v210 + 48))(v217, 1, v209) == 1;
      v358 = *(v213 + 8);
      (v358)(v217, v218);
      v219 = v377;
      v220 = v378;
      v221 = v100;
      v222 = v381;
      sub_1CF6A1D90(v383, v208, &v385, &v387, v210, v375, v374, v378);
      if (v219)
      {
        (v358)(v208, v367);
LABEL_80:
        v109 = v382;
        v106 = v383;
        return (*(v379 + 8))(v106, v109);
      }

      v377 = v215;
      v344 = v103;
      v227 = v367;
      (v358)(v208, v367);
      v228 = v328;
      v229 = v220;
      v230 = v382;
      v231 = v364;
      v364(v328, v383, v382);
      (v345)(v228, 0, 1, v230);
      v232 = v221;
      v107 = v384;
      sub_1CF6A4478(v384, v228, v375, v374, *(v229 + 8));
      v233 = v232;
      v234 = v227;
      v283 = v233;
      (v358)(v228, v227);
      v284 = v336;
      v285 = v382;
      v231(v336, v107, v382);
      v286 = v337;
      v348 = v283;
      v231(v337, v383, v285);
      v287 = *(v325 + 1);
      *&v385 = *v325;
      v387 = v287;
      v288 = v330;
      (v327)(v330, &v324[v380], v234);
      v314[2] = v357;
      v314[1] = v373;
      v314[0] = v359;
      v313 = v372;
      v266 = v321;
      sub_1CF079694(v343, 0, v284, v286, &v385, &v387, 1, 2, v321, v288);
      v289 = v374;
      v290 = sub_1CF693B0C(v266, v375, v374, v378);
      v109 = v382;
      if ((v290 & 1) == 0)
      {
        v106 = v383;
        (*(*v222 + 192))(v383, v107, v343, v375, v289, v378);
        v377 = 0;
        (*(v331 + 8))(v321, v344);
        goto LABEL_12;
      }
    }

    (*(v331 + 8))(v266, v344);
    v106 = v383;
    return (*(v379 + 8))(v106, v109);
  }

  v348 = v100;
  v109 = v382;
  v106 = v383;
  v107 = v384;
  if (v105 != 2)
  {
    goto LABEL_12;
  }

  v110 = *(v96 + 8);
  v111 = v375;
  v112 = v378;
  v113 = v381;
  v114 = v370;
  if (v110)
  {
    goto LABEL_13;
  }

  v347 = *v99;
  if (!sub_1CF07CD80(v382) || (v192 = swift_weakLoadStrong()) == 0)
  {
LABEL_52:
    v203 = v343;
    (*(v379 + 56))(v343, 1, 1, v109);
    v204 = v111;
    v205 = v111;
    v206 = v374;
    v207 = v377;
    sub_1CF6A4478(v107, v203, v204, v374, *(v112 + 8));
    if (!v207)
    {
      (*(v358 + 8))(v203, v367);
      (*(*v113 + 200))(v107, v347, 1, v205, v206, v112);
      v235 = *(v107 + *(type metadata accessor for ItemReconciliationHalf() + 56));
      v377 = 0;
      if (v235 == 6)
      {
        goto LABEL_12;
      }

      LODWORD(v367) = v235;
      v292 = v376;
      v293 = v317;
      v294 = v368;
      (*(v376 + 16))(v317, v107, v368);
      v295 = v369;
      v296 = v371;
      if ((*(v369 + 48))(v293, 1, v371) == 1)
      {
        (*(v292 + 8))(v293, v294);
        v109 = v382;
        v106 = v383;
        v107 = v384;
        goto LABEL_12;
      }

      v297 = *(v295 + 32);
      v298 = v318;
      v297(v318, v293, v296);
      v299 = swift_weakLoadStrong();
      v358 = v299;
      if (v299)
      {
        MEMORY[0x1EEE9AC00](v299);
        strcpy(v314, " otherID from to ");
        v300 = swift_getAssociatedConformanceWitness();
        v301 = v356;
        v302 = swift_getAssociatedConformanceWitness();
        *&v385 = v296;
        *(&v385 + 1) = v301;
        *&v386 = v300;
        *(&v386 + 1) = v302;
        *&v385 = type metadata accessor for ReconciliationID();
        *(&v385 + 1) = sub_1CF9E75D8();
        *&v386 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
        *(&v386 + 1) = v386;
        v303 = swift_getTupleTypeMetadata();
        v304 = v303[12];
        v346 = v303[16];
        v347 = v303[20];
        v305 = v352;
        (*(v369 + 16))(v352, v298, v296);
        *&v385 = v296;
        *(&v385 + 1) = v301;
        *&v386 = v300;
        *(&v386 + 1) = v302;
        v306 = type metadata accessor for ReconciliationID();
        v307 = swift_storeEnumTagMultiPayload();
        v109 = v382;
        v308 = *(v382 + 52);
        MEMORY[0x1EEE9AC00](v307);
        v312 = v372;
        v313 = v359;
        v314[0] = v374;
        v314[1] = v373;
        v309 = v377;
        v314[2] = v357;
        v315 = v378;
        v107 = v384;
        sub_1CF06E1CC(sub_1CF6BC8C0, (&v316 - 8), MEMORY[0x1E69E73E0], v306, v310, &v305[v304]);
        v377 = v309;
        v305[v346] = v367;
        v305[v347] = 6;
        v311 = v366;
        swift_storeEnumTagMultiPayload();
        (*(*v358 + 312))(v305);

        (*(v365 + 8))(v305, v311);
        (*(v369 + 8))(v318, v296);
        v106 = v383;
        goto LABEL_12;
      }

      goto LABEL_104;
    }

    (*(v358 + 8))(v203, v367);
    return (*(v379 + 8))(v106, v109);
  }

  v193 = v192;
  v194 = v323;
  (*(v376 + 16))(v323, v106, v368);
  v195 = v369;
  v196 = v371;
  if ((*(v369 + 48))(v194, 1, v371) == 1)
  {
LABEL_100:
    __break(1u);
  }

  else
  {
    v197 = v324;
    (*(v195 + 32))(v324, v194, v196);
    v198 = v325;
    (*(v353 + 16))(v325, v106 + *(v109 + 52), v354);
    v199 = v356;
    v200 = *(v356 - 8);
    if ((*(v200 + 48))(v198, 1, v356) != 1)
    {
      v201 = swift_getTupleTypeMetadata2();
      (*(v200 + 32))(&v197[*(v201 + 48)], v198, v199);
      v202 = v366;
      swift_storeEnumTagMultiPayload();
      (*(*v193 + 312))(v197);

      (*(v365 + 8))(v197, v202);
      v107 = v384;
      v112 = v378;
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  LODWORD(v315) = 0;
  v314[2] = 1435;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF6982AC(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t *, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v297 = a8;
  v299 = a7;
  v298 = a6;
  v312 = a5;
  v318 = a4;
  v304 = a3;
  v311[0] = a2;
  v303 = a1;
  v10 = v8[11];
  v12 = v8[12];
  v11 = v8[13];
  v326 = v8[10];
  v9 = v326;
  v327 = v10;
  v328 = v12;
  v329 = v11;
  v13 = type metadata accessor for ItemReconciliation();
  v272 = sub_1CF9E75D8();
  v264 = *(v272 - 8);
  v14 = *(v264 + 64);
  v15 = MEMORY[0x1EEE9AC00](v272);
  v282 = &v256 - v16;
  v263 = *(v13 - 8);
  v17 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v276 = &v256 - v18;
  v321 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v292 = *(AssociatedTypeWitness - 8);
  v20 = *(v292 + 64);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v274 = &v256 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v300 = &v256 - v23;
  v268 = sub_1CF9E75D8();
  v267 = *(v268 - 8);
  v24 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v268);
  v266 = &v256 - v25;
  v322 = v10;
  v323 = v11;
  v26 = swift_getAssociatedTypeWitness();
  v27 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v270 = *(TupleTypeMetadata2 - 8);
  v28 = *(v270 + 64);
  v29 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v283 = &v256 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v293 = &v256 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v316 = &v256 - v34;
  v35 = *(v27 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v33);
  v278 = &v256 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v306 = &v256 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v269 = &v256 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v271 = &v256 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v290 = &v256 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v291 = &v256 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v307 = &v256 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v301 = &v256 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v315 = &v256 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v320 = &v256 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = &v256 - v58;
  v60 = *(v26 - 8);
  v61 = *(v60 + 8);
  v62 = MEMORY[0x1EEE9AC00](v57);
  v305 = &v256 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v289 = &v256 - v65;
  v261 = v66;
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v256 - v67;
  v302 = v13;
  v69 = v318 + *(v13 + 52);
  v317 = *(v35 + 16);
  v317(v59, v69, v27);
  v70 = *(v60 + 6);
  v314 = v60 + 48;
  v313 = v70;
  if (v70(v59, 1, v26) == 1)
  {
    (*(v35 + 8))(v59, v27);
LABEL_14:
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v82 = swift_getAssociatedConformanceWitness();
    v326 = AssociatedTypeWitness;
    v327 = v26;
LABEL_15:
    v328 = AssociatedConformanceWitness;
    v329 = v82;
    v98 = type metadata accessor for ReconciliationID();
    (*(*(v98 - 8) + 56))(v303, 1, 1, v98);
    LOBYTE(v83) = 0;
    return v83 & 1;
  }

  v284 = AssociatedTypeWitness;
  v277 = v35;
  v318 = v27;
  v71 = *(v60 + 4);
  v281 = v60 + 32;
  v280 = v71;
  v71(v68, v59, v26);
  v72 = v321;
  v262 = type metadata accessor for ItemReconciliationHalf();
  v73 = v12;
  if (!*(v311[0] + v262[14]))
  {
    (*(v60 + 1))(v68, v26);
    AssociatedTypeWitness = v284;
    goto LABEL_14;
  }

  v311[1] = v35 + 16;
  v310 = v68;
  v275 = v60;
  (*(*v312 + 248))();
  v74 = sub_1CF9E7B08();

  v76 = v322;
  v75 = v323;
  v326 = v72;
  v327 = v322;
  v328 = v12;
  v329 = v323;
  type metadata accessor for FSOrFPJob();
  sub_1CF9E78A8();
  v77 = v324;
  v309 = v73;
  v78 = v26;
  if ((~v324 & 0xF000000000000007) != 0)
  {
    v295 = (v275 + 56);
    v294 = (v275 + 16);
    v259 = (v275 + 8);
    v308 = (v277 + 8);
    v258 = (v270 + 8);
    v296 = v74;
    v273 = v26;
    do
    {
      if ((v77 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      v326 = v72;
      v327 = v76;
      v328 = v73;
      v329 = v75;
      type metadata accessor for Propagation.CreateItem();
      v101 = swift_dynamicCastClass();
      if (v101)
      {
        v102 = *(*v101 + 664);
        v265 = v101;
        v103 = v78;
        v104 = v101 + v102;
        swift_beginAccess();
        v279 = swift_getAssociatedConformanceWitness();
        v105 = type metadata accessor for ItemState();
        v106 = *(v105 - 8);
        v107 = *(v106 + 48);
        v287 = v105;
        v286 = v107;
        v285 = (v106 + 48);
        v108 = (v107)(v104, 1);
        v109 = v294;
        v110 = v295;
        v288 = v104;
        if (v108)
        {
          v111 = *v295;
          v112 = v320;
          (*v295)(v320, 1, 1, v103);
          v113 = *v109;
        }

        else
        {
          v113 = *v294;
          v112 = v320;
          (*v294)(v320, v104, v103);
          v111 = *v110;
          (*v110)(v112, 0, 1, v103);
        }

        v124 = v103;
        v126 = v315;
        v125 = v316;
        (v113)(v315, v310, v124);
        (v111)(v126, 0, 1, v124);
        v127 = *(TupleTypeMetadata2 + 48);
        v128 = v112;
        v129 = v317;
        v130 = v318;
        v317(v125, v128, v318);
        v129(&v125[v127], v126, v130);
        v131 = v313;
        if (v313(v125, 1, v124) == 1)
        {
          v132 = *v308;

          v132(v126, v130);
          v132(v320, v130);
          v133 = &v125[v127];
          v134 = v125;
          v78 = v273;
          if (v131(v133, 1, v273) != 1)
          {
            goto LABEL_19;
          }

          v132(v316, v318);
          v76 = v322;
        }

        else
        {
          v135 = v301;
          v129(v301, v125, v130);
          v136 = v273;
          v137 = v131(&v125[v127], 1, v273);
          v138 = v136;
          v139 = v315;
          v140 = v320;
          v141 = v135;
          v134 = v125;
          if (v137 == 1)
          {
            goto LABEL_18;
          }

          v142 = &v316[v127];
          v143 = v289;
          v280(v289, v142, v138);
          v144 = *(*(v279 + 40) + 8);

          v145 = v301;
          LODWORD(v257) = sub_1CF9E6868();
          v78 = v138;
          v146 = *v259;
          (*v259)(v143, v138);
          v147 = *v308;
          (*v308)(v315, v130);
          v147(v320, v130);
          v146(v145, v138);
          v147(v316, v130);
          v76 = v322;
          if ((v257 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v148 = v288;
        v149 = v287;
        result = v286(v288, 1, v287);
        if (result == 1)
        {
          goto LABEL_98;
        }

        v150 = *(v312[5] + 16);
        v151 = (v148 + *(v149 + 36));
        v152 = v151[1];
        v326 = *v151;
        v327 = v152;
        v72 = v321;
        v73 = v309;
        v153 = (v304 + *(type metadata accessor for SnapshotItem() + 44));
        v154 = v153[1];
        v324 = *v153;
        v325 = v154;

        LOBYTE(v152) = sub_1CF936C68(&v326, &v324);

        sub_1CF09575C(v77);

        v75 = v323;
        if (v152)
        {
          (*v259)(v310, v78);

          v246 = v303;
          v247 = v284;
          (*(v292 + 16))(v303, v265 + *(*v265 + 576), v284);
          sub_1CF09575C(v77);
          v248 = swift_getAssociatedConformanceWitness();
          v326 = v247;
          v327 = v78;
          v328 = v248;
          v249 = v311;
LABEL_91:
          v329 = *(v249 - 32);
          v250 = type metadata accessor for ReconciliationID();
          swift_storeEnumTagMultiPayload();
          LOBYTE(v83) = 1;
          (*(*(v250 - 8) + 56))(v246, 0, 1, v250);
          return v83 & 1;
        }
      }

      else
      {
        v326 = v72;
        v327 = v76;
        v328 = v73;
        v329 = v75;
        type metadata accessor for Propagation.UpdateItem();
        v114 = swift_dynamicCastClass();
        if (!v114)
        {
          goto LABEL_21;
        }

        v115 = *(*v114 + 672);
        v265 = v114;
        v116 = v114 + v115;
        swift_beginAccess();
        v257 = swift_getAssociatedConformanceWitness();
        v117 = type metadata accessor for ItemState();
        v118 = *(v117 - 8);
        v119 = *(v118 + 48);
        v286 = v117;
        v285 = v119;
        v279 = v118 + 48;
        v120 = (v119)(v116, 1);
        v287 = v116;
        if (v120)
        {
          v121 = *v295;
          v122 = v307;
          (*v295)(v307, 1, 1, v78);
          v123 = *v294;
        }

        else
        {
          v123 = *v294;
          v122 = v307;
          (*v294)(v307, v116, v78);
          v121 = *v295;
          (*v295)(v122, 0, 1, v78);
        }

        v155 = v293;
        v156 = v291;
        (v123)(v291, v310, v78);
        (v121)(v156, 0, 1, v78);
        v157 = *(TupleTypeMetadata2 + 48);
        v158 = v317;
        v130 = v318;
        v317(v155, v122, v318);
        v288 = v157;
        v158(&v155[v157], v156, v130);
        v159 = v156;
        v160 = v313;
        if (v313(v155, 1, v78) == 1)
        {
          v161 = *v308;

          v161(v159, v130);
          v161(v307, v130);
          v134 = v155;
          if (v160(&v155[v288], 1, v78) != 1)
          {
            goto LABEL_19;
          }

          v161(v293, v318);
          v76 = v322;
        }

        else
        {
          v158(v290, v155, v130);
          v162 = v160(&v155[v288], 1, v78);
          v139 = v159;
          v140 = v307;
          v141 = v290;
          v134 = v155;
          v138 = v78;
          if (v162 == 1)
          {
LABEL_18:
            v100 = *v308;

            v100(v139, v130);
            v100(v140, v130);
            (*v259)(v141, v138);
            v78 = v138;
LABEL_19:
            (*v258)(v134, TupleTypeMetadata2);
            v76 = v322;
LABEL_20:
            sub_1CF09575C(v77);
            v72 = v321;
            v75 = v323;
            v73 = v309;
            goto LABEL_21;
          }

          v163 = v293;
          v164 = v289;
          v280(v289, &v293[v288], v78);
          v165 = *(*(v257 + 40) + 8);

          v166 = v290;
          LODWORD(v288) = sub_1CF9E6868();
          v167 = *v259;
          (*v259)(v164, v78);
          v168 = *v308;
          (*v308)(v291, v130);
          v168(v307, v130);
          v167(v166, v78);
          v168(v163, v130);
          v76 = v322;
          if ((v288 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v169 = v287;
        v170 = v286;
        result = v285(v287, 1, v286);
        if (result == 1)
        {
          goto LABEL_99;
        }

        v171 = *(v312[5] + 16);
        v172 = (v169 + *(v170 + 9));
        v173 = v172[1];
        v326 = *v172;
        v327 = v173;
        v72 = v321;
        v73 = v309;
        v174 = (v304 + *(type metadata accessor for SnapshotItem() + 44));
        v175 = v174[1];
        v324 = *v174;
        v325 = v175;

        LOBYTE(v173) = sub_1CF936C68(&v326, &v324);

        sub_1CF09575C(v77);

        v75 = v323;
        if (v173)
        {
          v176 = v265;
          (*v259)(v310, v78);

          v177 = v176 + *(*v176 + 576);
          v246 = v303;
          v178 = v284;
          (*(v292 + 16))(v303, v177, v284);
          sub_1CF09575C(v77);
          v179 = swift_getAssociatedConformanceWitness();
          v326 = v178;
          v327 = v78;
          v328 = v179;
          v249 = &v289;
          goto LABEL_91;
        }
      }

LABEL_21:
      sub_1CF09575C(v77);
      v326 = v72;
      v327 = v76;
      v328 = v73;
      v329 = v75;
      type metadata accessor for FSOrFPJob();
      sub_1CF9E78A8();
      v77 = v324;
    }

    while ((~v324 & 0xF000000000000007) != 0);
  }

  v79 = v311[0];
  if (*(v311[0] + v262[16] + 16) != 2 && !sub_1CF07CD80(v302) && *(v79 + v262[9]))
  {
    (*(v275 + 1))(v310, v78);
    v80 = v284;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
LABEL_9:
    v82 = swift_getAssociatedConformanceWitness();
    v326 = v80;
    v327 = v78;
    goto LABEL_15;
  }

  v83 = v312[4];
  v84 = sub_1CF056558();
  v85 = v284;
  if (!v84)
  {
    goto LABEL_71;
  }

  v86 = type metadata accessor for SnapshotItem();
  v316 = *(v86 + 36);
  v87 = v304;
  v88 = (v304 + *(v86 + 44));
  v89 = v88[1];
  v326 = *v88;
  v327 = v89;
  v90 = v292;
  v91 = (v292 + 16);
  v92 = v266;
  v320 = *(v292 + 16);
  (v320)(v266, v304, v85);
  (*(v90 + 56))(v92, 0, 1, v85);
  v93 = *(*v83 + 256);

  v94 = &v316[v87];
  v95 = v297;
  v96 = v319;
  v97 = v93(v94, &v326, v92, v298, v299, v297);
  if (v96)
  {
    (*(v267 + 8))(v92, v268);

    (*(v275 + 1))(v310, v78);
    return v83 & 1;
  }

  v316 = v91;
  v319 = 0;
  v180 = v97;
  (*(v267 + 8))(v92, v268);

  v181 = v180;
  if (!sub_1CF9E6DF8())
  {
    goto LABEL_70;
  }

  v182 = 0;
  v183 = v292;
  v315 = (v292 + 32);
  v307 = (v263 + 48);
  v296 = (v263 + 32);
  v308 = (v292 + 8);
  v294 = (v277 + 8);
  v301 = (v263 + 8);
  v295 = (v264 + 8);
  v184 = v274;
  while (1)
  {
    v186 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v186 & 1) == 0)
    {
      break;
    }

    (v320)(v300, v181 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v182, v85);
    v187 = v182 + 1;
    if (__OFADD__(v182, 1))
    {
      goto LABEL_69;
    }

LABEL_54:
    v188 = v85;
    v189 = *v315;
    (*v315)(v184, v300, v188);
    v83 = v312[2];
    v190 = v282;
    v191 = v319;
    sub_1CF68DDB0(v184, v298, v299, v95, v282);
    v319 = v191;
    if (v191)
    {

      (*v308)(v184, v284);
      (*(v275 + 1))(v310, v78);
      return v83 & 1;
    }

    v192 = v302;
    if ((*v307)(v190, 1, v302) == 1)
    {
      v85 = v284;
      (*v308)(v184, v284);
      (*v295)(v190, v272);
LABEL_50:
      v95 = v297;
      goto LABEL_51;
    }

    v193 = v276;
    (*v296)(v276, v190, v192);
    v194 = v271;
    v195 = v318;
    v317(v271, &v193[*(v192 + 52)], v318);
    if (v313(v194, 1, v78) != 1)
    {
      v197 = v274;
      v85 = v284;
      (*v308)(v274, v284);
      (*v294)(v194, v195);
      v198 = v193;
      v184 = v197;
      (*v301)(v198, v302);
      goto LABEL_50;
    }

    (*v294)(v194, v195);
    v196 = &v193[v262[16]];
    if (v196[16])
    {
      v83 = v302;
      v95 = v297;
      v184 = v274;
      if (v196[16] == 2)
      {

        (*(v275 + 1))(v310, v78);
LABEL_96:
        (*v301)(v276, v83);
        v251 = v303;
        v252 = v284;
        v189(v303, v184, v284);
        v253 = swift_getAssociatedConformanceWitness();
        v254 = swift_getAssociatedConformanceWitness();
        v326 = v252;
        v327 = v78;
        v328 = v253;
        v329 = v254;
        v255 = type metadata accessor for ReconciliationID();
        swift_storeEnumTagMultiPayload();
        LOBYTE(v83) = 1;
        (*(*(v255 - 8) + 56))(v251, 0, 1, v255);
        return v83 & 1;
      }
    }

    else
    {
      v83 = v302;
      v95 = v297;
      v184 = v274;
      if ((v196[1] & 4) != 0)
      {
        v85 = v284;
        (*v308)(v274, v284);
        (*v301)(v276, v83);
        goto LABEL_51;
      }
    }

    v199 = v83;
    v200 = v276;
    if (sub_1CF07CD80(v199) || !*&v200[v262[9]])
    {
      (*(v275 + 1))(v310, v78);

      v83 = v302;
      goto LABEL_96;
    }

    v85 = v284;
    (*v308)(v184, v284);
    (*v301)(v200, v302);
LABEL_51:
    ++v182;
    v185 = v187 == sub_1CF9E6DF8();
    v183 = v292;
    if (v185)
    {
      goto LABEL_70;
    }
  }

  result = sub_1CF9E7998();
  if (v260 != 8)
  {
    goto LABEL_101;
  }

  v326 = result;
  (v320)(v300, &v326, v85);
  swift_unknownObjectRelease();
  v187 = v182 + 1;
  if (!__OFADD__(v182, 1))
  {
    goto LABEL_54;
  }

LABEL_69:
  __break(1u);
LABEL_70:

LABEL_71:
  v201 = v304;
  v83 = v312[5];
  v202 = (v201 + *(type metadata accessor for SnapshotItem() + 44));
  v203 = v202[1];
  v326 = *v202;
  v327 = v203;
  v204 = v275;
  v206 = (v275 + 56);
  v205 = *(v275 + 7);
  v207 = v269;
  v205(v269, 1, 1, v78);
  v208 = *(*v83 + 256);
  v209 = v207;

  v210 = v78;
  v211 = v310;
  v212 = v319;
  v213 = v208(v310, &v326, v209, v298, v299, v297);
  if (v212)
  {
    (*(v277 + 8))(v209, v318);

    (v204)[1](v211, v210);
    return v83 & 1;
  }

  v214 = v213;
  v308 = v205;
  v215 = v277 + 8;
  v315 = *(v277 + 8);
  (v315)(v209, v318);

  v78 = v210;
  if (sub_1CF9E6DF8() < 1)
  {
    (*(v275 + 1))(v310, v210);

    v242 = v284;
    v243 = swift_getAssociatedConformanceWitness();
    v244 = swift_getAssociatedConformanceWitness();
    v326 = v242;
    v327 = v210;
    v328 = v243;
    v329 = v244;
    v245 = type metadata accessor for ReconciliationID();
    (*(*(v245 - 8) + 56))(v303, 1, 1, v245);
    LOBYTE(v83) = 0;
    return v83 & 1;
  }

  v307 = v206;
  v277 = v215;

  v216 = sub_1CF9E6DF8();
  v217 = v313;
  v312 = v214;
  v218 = v275;
  if (!v216)
  {
LABEL_89:

    v218[1](v310, v78);
    v238 = v284;
    v239 = swift_getAssociatedConformanceWitness();
    v240 = swift_getAssociatedConformanceWitness();
    v326 = v238;
    v327 = v78;
    v328 = v239;
    v329 = v240;
    v241 = type metadata accessor for ReconciliationID();
    LOBYTE(v83) = 1;
    (*(*(v241 - 8) + 56))(v303, 1, 1, v241);
    return v83 & 1;
  }

  v219 = 0;
  v302 = *(v302 + 52);
  v304 = (v275 + 16);
  v301 = (v270 + 8);
  v300 = (v275 + 8);
  v299 = (v275 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v319 = 0;
  while (2)
  {
    v222 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v222)
    {
      result = (v218[2])(v305, v214 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + v218[9] * v219, v78);
      v223 = v311[0];
      v224 = v306;
    }

    else
    {
      result = sub_1CF9E7998();
      v223 = v311[0];
      v224 = v306;
      if (v261 != 8)
      {
        goto LABEL_100;
      }

      v326 = result;
      (*v304)(v305, &v326, v78);
      result = swift_unknownObjectRelease();
    }

    v225 = v308;
    if (!__OFADD__(v219, 1))
    {
      v320 = v219;
      v316 = v219 + 1;
      v280(v224, v305, v78);
      (v225)(v224, 0, 1, v78);
      v226 = *(TupleTypeMetadata2 + 48);
      v227 = v283;
      v228 = v224;
      v229 = v318;
      v230 = v223;
      v231 = v317;
      v317(v283, v228, v318);
      v231(&v227[v226], v230 + v302, v229);
      if (v217(v227, 1, v78) == 1)
      {
        (v315)(v306, v229);
        v220 = v217(&v227[v226], 1, v78);
        v214 = v312;
        v221 = v320;
        if (v220 == 1)
        {
          swift_bridgeObjectRelease_n();
          (v315)(v227, v318);
          (*v300)(v310, v78);
          goto LABEL_95;
        }

LABEL_77:
        (*v301)(v227, TupleTypeMetadata2);
        v218 = v275;
      }

      else
      {
        v232 = v278;
        v231(v278, v227, v229);
        if (v217(&v227[v226], 1, v78) == 1)
        {
          (v315)(v306, v229);
          (*v300)(v232, v78);
          v214 = v312;
          v221 = v320;
          goto LABEL_77;
        }

        v233 = v289;
        v280(v289, &v227[v226], v78);
        v234 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
        LODWORD(v313) = sub_1CF9E6868();
        v235 = v227;
        v236 = *v300;
        (*v300)(v233, v78);
        v237 = v315;
        (v315)(v306, v229);
        v236(v278, v78);
        v237(v235, v229);
        v218 = v275;
        v214 = v312;
        v221 = v320;
        if (v313)
        {
          swift_bridgeObjectRelease_n();
          v236(v310, v78);
LABEL_95:
          v80 = v284;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          goto LABEL_9;
        }
      }

      v219 = v221 + 1;
      if (v316 == sub_1CF9E6DF8())
      {
        goto LABEL_89;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_1CF69AAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v47 = a3;
  v48 = a4;
  v46 = a2;
  v54 = a5;
  v8 = *v5;
  v9 = type metadata accessor for ItemMetadata();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v8[12];
  v52 = v8[10];
  v53 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v43 - v16;
  v51 = *(AssociatedTypeWitness - 8);
  v17 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = v8[13];
  v24 = v8[11];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(AssociatedConformanceWitness + 64);
  v27 = swift_checkMetadataState();
  if (v26(v27, AssociatedConformanceWitness))
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v29 = *(result + 32);

      sub_1CF046AB4();
LABEL_7:

      v31 = v51;
LABEL_8:
      v32 = v49;
      (*(v31 + 32))(v49, v22, AssociatedTypeWitness);
      v33 = type metadata accessor for ItemState();
      v34 = *(v33 + 40);
      v35 = (a1 + *(v33 + 36));
      v36 = v35[1];
      v55[0] = *v35;
      v55[1] = v36;
      v37 = v50;
      sub_1CEFF4408(a1 + v34, v50);
      swift_getAssociatedConformanceWitness();
      v38 = v54;
      sub_1CF67E0DC(v32, v55, v37, AssociatedTypeWitness, v54);
      v39 = type metadata accessor for ItemState();
      (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    }

    __break(1u);
    goto LABEL_15;
  }

  if ((*(AssociatedConformanceWitness + 72))(v27, AssociatedConformanceWitness))
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v30 = *(result + 32);

      sub_1CF685B34();
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  v40 = v45;
  v41 = v56;
  result = (*(*v6 + 152))(a1, v46, v47, v48);
  if (!v41)
  {
    v31 = v51;
    if ((*(v51 + 48))(v40, 1, AssociatedTypeWitness) == 1)
    {
      (*(v43 + 8))(v40, v44);
      swift_getAssociatedConformanceWitness();
      v42 = type metadata accessor for ItemState();
      return (*(*(v42 - 8) + 56))(v54, 1, 1, v42);
    }

    v56 = 0;
    (*(v31 + 32))(v22, v40, AssociatedTypeWitness);
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1CF69C15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v27 = a6;
  v28 = a8;
  v12 = *(*a2 + 96);
  v29 = *(*a2 + 80);
  v30 = v12;
  v13 = type metadata accessor for ReconciliationTable.CachedEntry();
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - v20;
  v22 = *(v15 + 16);
  v26 = a1;
  v22(v19, a1, v14);
  v23 = v31;
  sub_1CF69C378(a3, v19, a4, v27, v28, v21);
  if (v23)
  {
    result = (*(v15 + 8))(v19, v14);
    *a9 = v23;
  }

  else
  {
    (*(v15 + 8))(v19, v14);
    (*(*(v13 - 8) + 56))(v21, 0, 1, v13);
    return (*(v15 + 40))(v26, v21, v14);
  }

  return result;
}

uint64_t sub_1CF69C378@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v203 = a5;
  v202 = a4;
  v204 = a3;
  v212 = a2;
  v208 = a1;
  v182 = a6;
  v7 = *v6;
  v8 = *(*v6 + 104);
  v9 = *(*v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v170 = sub_1CF9E75D8();
  v167 = *(v170 - 8);
  v11 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v172 = &v161 - v12;
  v13 = *(v7 + 96);
  v209 = v6;
  v14 = *(v7 + 80);
  v15 = swift_getAssociatedTypeWitness();
  v164 = sub_1CF9E75D8();
  v163 = *(v164 - 8);
  v16 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v165 = &v161 - v17;
  *&v18 = v14;
  *(&v18 + 1) = v9;
  *&v19 = v13;
  *(&v19 + 1) = v8;
  v213 = v19;
  v214 = v18;
  v218 = v19;
  v217 = v18;
  v171 = type metadata accessor for PersistenceTrigger();
  v168 = *(v171 - 8);
  v20 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v166 = &v161 - v21;
  v218 = v213;
  v217 = v214;
  v22 = type metadata accessor for ItemReconciliation();
  v181 = sub_1CF9E75D8();
  v180 = *(v181 - 8);
  v23 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v184 = &v161 - v24;
  v186 = v13;
  v185 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v187 = v8;
  v188 = v9;
  v26 = swift_getAssociatedConformanceWitness();
  v169 = v15;
  *&v217 = v15;
  *(&v217 + 1) = AssociatedTypeWitness;
  v173 = AssociatedTypeWitness;
  *&v218 = AssociatedConformanceWitness;
  *(&v218 + 1) = v26;
  v27 = type metadata accessor for ReconciliationID();
  v177 = sub_1CF9E75D8();
  v176 = *(v177 - 8);
  v28 = *(v176 + 64);
  v29 = MEMORY[0x1EEE9AC00](v177);
  v183 = &v161 - v30;
  v195 = v27;
  v194 = *(v27 - 8);
  v31 = *(v194 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v179 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v178 = &v161 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v175 = &v161 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v193 = &v161 - v38;
  v218 = v213;
  v217 = v214;
  v39 = type metadata accessor for ReconciliationTable.CachedEntry();
  v206 = *(v39 - 1);
  v40 = *(v206 + 64);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v189 = &v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v197 = (&v161 - v44);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v161 - v45;
  v47 = sub_1CF9E75D8();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v161 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v161 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = &v161 - v57;
  v196 = v22;
  v201 = *(v22 - 8);
  v59 = *(v201 + 64);
  v60 = MEMORY[0x1EEE9AC00](v56);
  v191 = &v161 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v190 = &v161 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v174 = &v161 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v192 = (&v161 - v67);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v207 = (&v161 - v69);
  MEMORY[0x1EEE9AC00](v68);
  v199 = &v161 - v70;
  v71 = *(v48 + 16);
  v71(v58, v212, v47);
  v212 = v58;
  v72 = v58;
  v73 = v206;
  v71(v55, v72, v47);
  v210 = *(v73 + 48);
  v211 = v73 + 48;
  v74 = v210(v55, 1, v39);
  v198 = v47;
  v200 = v48;
  if (v74 == 1)
  {
    (*(v48 + 8))(v55, v47);
  }

  else
  {
    (*(v73 + 32))(v46, v55, v39);
    if (sub_1CF0797FC(v208, v39))
    {
      v75 = *(v201 + 16);
      v76 = v196;
      v75(v199, &v46[v39[13]], v196);
      v75(v207, &v46[v39[14]], v76);
      v197 = *v46;
      LODWORD(v193) = v46[8];
      (*(v73 + 8))(v46, v39);
      v77 = v205;
      v78 = v203;
      v79 = v212;
      v80 = v202;
      goto LABEL_19;
    }

    (*(v73 + 8))(v46, v39);
    v47 = v198;
  }

  v81 = v202;
  v71(v52, v212, v47);
  v82 = v210(v52, 1, v39);
  v83 = v197;
  if (v82 == 1)
  {
    v162 = v39;
    v84 = v200;
    (*(v200 + 8))(v52, v47);
    v85 = v205;
  }

  else
  {
    v86 = v206;
    (*(v206 + 32))(v197, v52, v39);
    v87 = v205;
    sub_1CF695580(v83, v204, v81, v203);
    v84 = v200;
    if (v87)
    {
      (*(v86 + 8))(v83, v39);
      v79 = v212;
      return (*(v84 + 8))(v79, v47);
    }

    (*(v86 + 8))(v83, v39);
    v88 = v212;
    (*(v84 + 8))(v212, v47);
    v89 = *(v86 + 56);
    v162 = v39;
    v89(v88, 1, 1, v39);
    v85 = 0;
  }

  v90 = v193;
  v217 = v214;
  v218 = v213;
  v91 = type metadata accessor for ReconciliationMutation();
  sub_1CF077DEC(v91, v90);
  v92 = v203[1];
  v93 = v192;
  v94 = sub_1CF69DBA4(v192, v90, v204, v81, v92);
  if (v85)
  {
    (*(v194 + 8))(v90, v195);
    v47 = v198;
    v79 = v212;
    return (*(v84 + 8))(v79, v47);
  }

  v96 = v95;
  v197 = v94;
  v205 = 0;
  v97 = v194;
  v98 = v207;
  v99 = v195;
  v161 = *(v194 + 8);
  v161(v90, v195);
  v192 = *(v201 + 32);
  (v192)(v98, v93, v196);
  if (v96)
  {
    v100 = v183;
    sub_1CF078C8C(v91, v183);
    if ((*(v97 + 48))(v100, 1, v99) != 1)
    {
      v121 = v99;
      v122 = v175;
      (*(v97 + 32))(v175, v100, v121);
      v123 = v174;
      v124 = v205;
      v125 = sub_1CF69DBA4(v174, v122, v204, v202, v92);
      v79 = v212;
      v205 = v124;
      if (v124)
      {
        v161(v122, v121);
        (*(v201 + 8))(v207, v196);
        v47 = v198;
        v84 = v200;
        return (*(v84 + 8))(v79, v47);
      }

      LODWORD(v193) = v126;
      v197 = v125;
      v161(v122, v121);
      v160 = v207;
      v76 = v196;
      (*(v201 + 8))(v207, v196);
      (v192)(v160, v123, v76);
      v101 = v160;
      goto LABEL_18;
    }

    (*(v176 + 8))(v100, v177);
    LODWORD(v193) = 1;
  }

  else
  {
    LODWORD(v193) = 0;
  }

  v76 = v196;
  v79 = v212;
  v101 = v207;
LABEL_18:
  v75 = *(v201 + 16);
  v75(v199, v101, v76);
  v78 = v203;
  v80 = v202;
  v39 = v162;
  v77 = v205;
LABEL_19:
  v102 = v208;
  if (v210(v79, 1, v39))
  {
    v103 = 0;
  }

  else
  {
    v103 = *&v79[v39[15]];
  }

  v219 = v103;
  v104 = v39;
  if (v210(v79, 1, v39))
  {
    v105 = 0;
  }

  else
  {
    v105 = *&v79[v39[15] + 8];
  }

  v216 = v105;
  v106 = v207;
  v107 = sub_1CF69E000(v102, v207, &v219, &v216, v204, v80, v78);
  if (v77)
  {
    v109 = *(v201 + 8);
    v109(v106, v76);
    v109(v199, v76);
    v47 = v198;
    v84 = v200;
    return (*(v84 + 8))(v79, v47);
  }

  LODWORD(v192) = v108;
  v205 = v107;
  v217 = v214;
  v218 = v213;
  *&v214 = type metadata accessor for ReconciliationMutation();
  v111 = sub_1CF078FAC(v214);
  v113 = v193;
  if ((v114 & 1) == 0)
  {
    if (v193)
    {
      goto LABEL_31;
    }

    v115 = v111;
    v116 = v76;
    v117 = v112;
    v118 = sub_1CF95B2CC(v116);
    v112 = v117;
    v76 = v196;
    v119 = v118;
    v111 = v115;
    v113 = v193;
    v106 = v207;
    if (v119)
    {
LABEL_31:
      v120 = (v106 + *(v76 + 64));
      *v120 = v111;
      v120[1] = v112;
    }

    else
    {
      v127 = (v207 + *(v196 + 64));
      v128 = *v127;
      v129 = v127[1];
      if (v111 > *v127)
      {
        v128 = v111;
      }

      if (v112 < v129)
      {
        v129 = v112;
      }

      *v127 = v128;
      v127[1] = v129;
    }
  }

  v75(v190, v199, v76);
  v75(v191, v106, v76);
  *&v217 = v219;
  v215 = v216;
  if (v210(v79, 1, v104))
  {
    v130 = 0;
    v131 = -1;
  }

  else
  {
    v132 = &v79[v104[16]];
    v130 = *v132;
    v131 = v132[8];
  }

  v133 = v104;
  v134 = v189;
  v135 = v192;
  v136 = sub_1CF69DEE8(v130, v131, v205, v192);
  v138 = v137;
  v139 = v210(v79, 1, v133);
  v162 = v133;
  if (v139)
  {
    v140 = v184;
    (*(v201 + 56))(v184, 1, 1, v76);
  }

  else
  {
    v141 = &v79[v133[17]];
    v140 = v184;
    (*(v180 + 16))(v184, v141, v181);
  }

  sub_1CF079694(v197, v113 & 1, v190, v191, &v217, &v215, v136, v138, v134, v140);
  v142 = v207;
  if (v135 == 1)
  {
    v147 = v179;
    sub_1CF077DEC(v214, v179);
    (*(*v209 + 208))(v147, v205, v204, v202, v203);
    v143 = v134;
    (*(v194 + 8))(v147, v195);
    goto LABEL_54;
  }

  v143 = v134;
  v144 = v209;
  v145 = v202;
  if (v135)
  {
LABEL_54:
    v158 = v162;
    v148 = v199;
    goto LABEL_55;
  }

  v146 = v178;
  sub_1CF077DEC(v214, v178);
  (*(*v144 + 216))(v146, v205, v204, v145, v203);
  (*(v194 + 8))(v146, v195);
  v148 = v199;
  if (!sub_1CF07CD80(v76))
  {
    v158 = v162;
    goto LABEL_55;
  }

  v205 = 0;
  result = swift_weakLoadStrong();
  *&v214 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_59;
  }

  v149 = v165;
  (*(v163 + 16))(v165, v148, v164);
  v150 = v169;
  v151 = *(v169 - 8);
  result = (*(v151 + 48))(v149, 1, v169);
  v152 = v173;
  v153 = v172;
  v154 = v166;
  if (result == 1)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  (*(v151 + 32))(v166, v149, v150);
  (*(v167 + 16))(v153, &v148[*(v76 + 52)], v170);
  v155 = *(v152 - 8);
  result = (*(v155 + 48))(v153, 1, v152);
  if (result != 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v155 + 32))(&v154[*(TupleTypeMetadata2 + 48)], v153, v152);
    v157 = v171;
    swift_storeEnumTagMultiPayload();
    (*(*v214 + 312))(v154);

    (*(v168 + 8))(v154, v157);
    v79 = v212;
    v158 = v162;
    v143 = v189;
    v148 = v199;
    v142 = v207;
LABEL_55:
    v159 = *(v201 + 8);
    v159(v142, v76);
    v159(v148, v76);
    (*(v206 + 32))(v182, v143, v158);
    return (*(v200 + 8))(v79, v198);
  }

LABEL_60:
  __break(1u);
  return result;
}

uint64_t *sub_1CF69DBA4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v36 = a1;
  v37 = a3;
  v7 = *v5;
  v8 = *(*v5 + 96);
  v40 = *(*v5 + 80);
  v41 = v8;
  v33 = type metadata accessor for ItemReconciliation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_1CF9E75D8();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v35 = *(TupleTypeMetadata2 - 8);
  v15 = *(v35 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v32 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v32 - v22;
  v24 = v42;
  (*(v7 + 168))(a2, 1, v37, v38, v39);
  if (!v24)
  {
    v38 = v21;
    v39 = a2;
    v26 = v34;
    v25 = v35;
    v42 = 0;
    if ((*(v35 + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      (*(v26 + 8))(v14, v10);
      sub_1CF078348(v39, v36);
      return 0;
    }

    else
    {
      v27 = *(v25 + 32);
      v27(v23, v14, TupleTypeMetadata2);
      v28 = v38;
      (*(v25 + 16))(v38, v23, TupleTypeMetadata2);
      v29 = v33;
      v30 = *(v33 - 8);
      (*(v30 + 32))(v36, v28, v33);
      v27(v18, v23, TupleTypeMetadata2);
      v5 = *&v18[*(TupleTypeMetadata2 + 48)];
      (*(v30 + 8))(v18, v29);
    }
  }

  return v5;
}

unint64_t sub_1CF69DEE8(unint64_t result, char a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 == -1 || a2 == 2 && result == 3)
  {
    if (a4 >= 2u)
    {
      return a3;
    }

    else
    {
      return 3;
    }
  }

  if (a4 < 2u)
  {
    return result;
  }

  if (a4 != 2)
  {
    goto LABEL_22;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1 && a2 == 2 && result < 2)
      {
        return 1;
      }
    }

    else if (a2 == 2 && result < 2)
    {
      return result;
    }

LABEL_22:
    result = sub_1CF9E7B68();
    __break(1u);
    return result;
  }

  if (a3 == 2)
  {
    return 2;
  }

  if (a3 != 3)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1CF69E000(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), void *a3, void *a4, uint64_t a5, char *a6, uint64_t *a7)
{
  v404 = a6;
  v405 = a7;
  v366 = a5;
  v381 = a4;
  v380 = a3;
  v411 = a2;
  v412 = a1;
  v9 = *(*v7 + 88);
  v10 = *(*v7 + 96);
  v11 = *(*v7 + 104);
  v415 = *(*v7 + 80);
  v8 = v415;
  v416 = v9;
  v417 = v10;
  v418 = v11;
  v365 = type metadata accessor for PersistenceTrigger();
  v364 = *(v365 - 8);
  v12 = *(v364 + 64);
  MEMORY[0x1EEE9AC00](v365);
  v363 = &v344 - v13;
  v394 = type metadata accessor for ReconciliationSideMutation();
  v393 = *(v394 - 8);
  v14 = *(v393 + 8);
  MEMORY[0x1EEE9AC00](v394);
  v392 = &v344 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v415 = AssociatedTypeWitness;
  v416 = v17;
  v351 = AssociatedConformanceWitness;
  v417 = AssociatedConformanceWitness;
  v418 = v19;
  v346 = v19;
  v20 = type metadata accessor for ReconciliationID();
  v362 = sub_1CF9E75D8();
  v354 = *(v362 - 8);
  v21 = *(v354 + 64);
  v22 = MEMORY[0x1EEE9AC00](v362);
  v378 = &v344 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v379 = &v344 - v24;
  v391 = type metadata accessor for ReconciliationSideMutation();
  v390 = *(v391 - 8);
  v25 = *(v390 + 8);
  MEMORY[0x1EEE9AC00](v391);
  v389 = &v344 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v375 = &v344 - v28;
  v29 = sub_1CF9E75D8();
  v356 = swift_getTupleTypeMetadata2();
  v348 = *(v356 - 8);
  v30 = *(v348 + 64);
  v31 = MEMORY[0x1EEE9AC00](v356);
  v352 = &v344 - v32;
  v401 = v29;
  v396 = *(v29 - 8);
  v33 = v396[8];
  v34 = MEMORY[0x1EEE9AC00](v31);
  v383 = (&v344 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x1EEE9AC00](v34);
  v377 = &v344 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v347 = &v344 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v357 = &v344 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v358 = &v344 - v43;
  v413 = v20;
  v414 = *(v20 - 8);
  v44 = *(v414 + 64);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v371 = &v344 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v376 = &v344 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v388 = &v344 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v374 = &v344 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v387 = (&v344 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v367 = &v344 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v386 = &v344 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v370 = &v344 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v350 = &v344 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v361 = &v344 - v63;
  v64 = sub_1CF9E75D8();
  v384 = swift_getTupleTypeMetadata2();
  v353 = *(v384 - 8);
  v65 = *(v353 + 64);
  v66 = MEMORY[0x1EEE9AC00](v384);
  v372 = &v344 - v67;
  v403 = *(v64 - 8);
  v68 = *(v403 + 64);
  v69 = MEMORY[0x1EEE9AC00](v66);
  v71 = &v344 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v69);
  v369 = &v344 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v368 = &v344 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v78 = &v344 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v385 = &v344 - v79;
  v415 = v8;
  v416 = v9;
  v417 = v10;
  v418 = v11;
  v410 = type metadata accessor for ItemReconciliation();
  v359 = *(v410 - 1);
  v80 = *(v359 + 64);
  v81 = MEMORY[0x1EEE9AC00](v410);
  v349 = &v344 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x1EEE9AC00](v81);
  v360 = &v344 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v355 = &v344 - v86;
  v398 = v17;
  v395 = *(v17 - 8);
  v87 = *(v395 + 64);
  v88 = MEMORY[0x1EEE9AC00](v85);
  v345 = &v344 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x1EEE9AC00](v88);
  v397 = &v344 - v91;
  v400 = AssociatedTypeWitness;
  v92 = *(AssociatedTypeWitness - 8);
  v93 = *(v92 + 64);
  v94 = MEMORY[0x1EEE9AC00](v90);
  v382 = &v344 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x1EEE9AC00](v94);
  v98 = &v344 - v97;
  MEMORY[0x1EEE9AC00](v96);
  v399 = (&v344 - v99);
  v408 = v10;
  v409 = v8;
  v415 = v8;
  v416 = v9;
  v406 = v11;
  v407 = v9;
  v417 = v10;
  v418 = v11;
  v100 = type metadata accessor for ReconciliationMutation();
  v101 = *(v100 - 8);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v104 = &v344 - v103;
  (*(v101 + 16))(&v344 - v103, v412, v100);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v169 = v400;
      v412 = v92;
      v170 = v398;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v172 = *(TupleTypeMetadata3 + 48);
      LODWORD(v389) = v104[*(TupleTypeMetadata3 + 64)];
      v173 = *(v412 + 32);
      v174 = v399;
      v388 = (v412 + 32);
      v387 = v173;
      v173(v399, v104, v169);
      v175 = *(v395 + 32);
      v176 = &v104[v172];
      v177 = v412;
      v386 = (v395 + 32);
      v383 = v175;
      v175(v397, v176, v170);
      v392 = *(v403 + 16);
      v178 = v385;
      (v392)(v385, v411, v64);
      v179 = *(v177 + 16);
      v391 = v177 + 16;
      v390 = v179;
      v179(v78, v174, v169);
      (*(v177 + 56))(v78, 0, 1, v169);
      v180 = *(v384 + 48);
      v181 = v372;
      v182 = v178;
      v183 = v177;
      v184 = v392;
      (v392)(v372, v182, v64);
      v394 = v180;
      v184(&v181[v180], v78, v64);
      v393 = *(v183 + 48);
      if (v393(v181, 1, v169) == 1)
      {
        v185 = *(v403 + 8);
        v185(v78, v64);
        v185(v385, v64);
        v186 = v181;
        if (v393(&v181[v394], 1, v169) == 1)
        {
          v185(v181, v64);
          v187 = v411;
          goto LABEL_68;
        }
      }

      else
      {
        v184(v368, v181, v64);
        v265 = (v183 + 8);
        v186 = v181;
        if (v393(&v181[v394], 1, v169) != 1)
        {
          v387(v98, &v181[v394], v169);
          v282 = *(*(v351 + 40) + 8);
          v283 = v169;
          v284 = v368;
          LODWORD(v394) = sub_1CF9E6868();
          v285 = *v265;
          (*v265)(v98, v283);
          v286 = v186;
          v287 = *(v403 + 8);
          v287(v78, v64);
          v287(v385, v64);
          v288 = v284;
          v169 = v283;
          v285(v288, v283);
          v287(v286, v64);
          v187 = v411;
          if (v394)
          {
LABEL_68:
            v289 = v396[2];
            v392 = v410[13];
            v290 = v358;
            v291 = v401;
            v289(v358, v187 + v392, v401);
            v292 = v395;
            v293 = *(v395 + 16);
            v294 = v357;
            v295 = v398;
            v394 = v395 + 16;
            v393 = v293;
            v293(v357, v397, v398);
            (*(v292 + 56))(v294, 0, 1, v295);
            v296 = *(v356 + 48);
            v297 = v352;
            v289(v352, v290, v291);
            v403 = v296;
            v289(&v297[v296], v294, v291);
            v298 = *(v292 + 48);
            if (v298(v297, 1, v295) == 1)
            {
              v299 = v396[1];
              v300 = v401;
              v299(v294, v401);
              v299(v290, v300);
              v301 = v298(&v297[v403], 1, v295);
              v169 = v400;
              if (v301 == 1)
              {
                v299(v297, v300);
                v302 = 0;
LABEL_94:
                v331 = v398;
                v332 = v411;
                v323 = v412;
                goto LABEL_95;
              }
            }

            else
            {
              v308 = v347;
              v309 = v401;
              v289(v347, v297, v401);
              v310 = v403;
              v311 = (v292 + 8);
              if (v298(&v297[v403], 1, v295) != 1)
              {
                v324 = v345;
                v383(v345, &v297[v310], v295);
                v325 = *(*(v346 + 40) + 8);
                v326 = sub_1CF9E6868();
                v327 = *v311;
                (*v311)(v324, v295);
                v328 = v396[1];
                v328(v357, v309);
                v328(v358, v309);
                v327(v308, v295);
                v328(v297, v309);
                v169 = v400;
                v313 = v405;
                if (v326)
                {
                  v302 = 0;
                  goto LABEL_94;
                }

                goto LABEL_77;
              }

              v312 = v396[1];
              v312(v357, v309);
              v312(v358, v309);
              (*v311)(v308, v295);
              v169 = v400;
            }

            (*(v348 + 8))(v297, v356);
            v313 = v405;
LABEL_77:
            v314 = v350;
            v393(v350, v397, v398);
            v315 = v413;
            swift_storeEnumTagMultiPayload();
            v316 = v349;
            v317 = v366;
            v318 = v402;
            v319 = v419;
            v320 = sub_1CF69DBA4(v349, v314, v366, v404, v313[1]);
            v419 = v319;
            if (v319)
            {
              (*(v414 + 8))(v314, v315);
              goto LABEL_79;
            }

            v405 = v320;
            v329 = v321;
            (*(v414 + 8))(v314, v315);
            v330 = v355;
            (*(v359 + 32))(v355, v316, v410);
            if (v329)
            {
LABEL_93:
              v302 = 1;
              goto LABEL_94;
            }

            v338 = v419;
            (*(*v318 + 200))(v330, v405, 0, v317, v404, v313);
            v419 = v338;
            v323 = v412;
            if (v338)
            {
              (*(v359 + 8))(v330, v410);
              v322 = v398;
              goto LABEL_80;
            }

            v339 = v410[13];
            v340 = type metadata accessor for ItemReconciliationHalf();
            v341 = v411;
            (*(*(v340 - 8) + 24))(v411 + v392, &v330[v339], v340);
            v332 = v341;
            v302 = 1;
            v331 = v398;
LABEL_95:
            v333 = v395;
            LOBYTE(v415) = v389;
            v334 = v399;
            v335 = v397;
            sub_1CF6BA644(v332, v399, v397, &v415, v409, v407, v408, v406);
            (*(v333 + 8))(v335, v331);
            (*(v323 + 8))(v334, v169);
            if (v302)
            {
              (*(v359 + 8))(v355, v410);
            }

            return 1;
          }

LABEL_58:
          v267 = v361;
          v390(v361, v399, v169);
          v268 = v413;
          swift_storeEnumTagMultiPayload();
          v270 = v404;
          v269 = v405;
          v271 = v360;
          v272 = v366;
          v273 = v402;
          v274 = v419;
          v275 = sub_1CF69DBA4(v360, v267, v366, v404, v405[1]);
          v419 = v274;
          if (v274)
          {
            (*(v414 + 8))(v267, v268);
          }

          else
          {
            v303 = v267;
            v304 = v275;
            v305 = v276;
            (*(v414 + 8))(v303, v268);
            v306 = v355;
            (*(v359 + 32))(v355, v271, v410);
            if (v305)
            {
              goto LABEL_93;
            }

            v307 = v419;
            (*(*v273 + 200))(v306, v304, 0, v272, v270, v269);
            v419 = v307;
            if (!v307)
            {
              v336 = type metadata accessor for ItemReconciliationHalf();
              v337 = v411;
              (*(*(v336 - 8) + 24))(v411, v306, v336);
              v332 = v337;
              v302 = 1;
              v331 = v398;
              v323 = v412;
              goto LABEL_95;
            }

            (*(v359 + 8))(v306, v410);
          }

LABEL_79:
          v322 = v398;
          v323 = v412;
LABEL_80:
          (*(v395 + 8))(v397, v322);
          return (*(v323 + 8))(v399, v169);
        }

        v266 = *(v403 + 8);
        v266(v78, v64);
        v266(v385, v64);
        (*v265)(v368, v169);
      }

      (*(v353 + 8))(v186, v384);
      goto LABEL_58;
    case 2u:
      v144 = v413;
      v145 = v104[*(swift_getTupleTypeMetadata2() + 48)];
      v146 = v414;
      v147 = v370;
      (*(v414 + 32))(v370, v104, v144);
      v148 = v375;
      (*(v146 + 16))(v375, v147, v144);
      v149 = v145 ^ (swift_getEnumCaseMultiPayload() != 1);
      v150 = *(v146 + 8);
      v150(v148, v144);
      if (v149)
      {
        v151 = v410;
        v152 = v410[13];
        v153 = type metadata accessor for ItemReconciliationHalf();
        v154 = v411;
        (*(*(v153 - 8) + 8))(v411 + v152, v153);
        sub_1CF078A84(v154 + v152);
      }

      else
      {
        v235 = type metadata accessor for ItemReconciliationHalf();
        v154 = v411;
        (*(*(v235 - 8) + 8))(v411, v235);
        sub_1CF078A84(v154);
        v151 = v410;
      }

      v236 = sub_1CF9E6DA8();
      v150(v147, v144);
      v237 = v151[15];
      v238 = *(v154 + v237);

      result = 0;
      *(v154 + v237) = v236;
      return result;
    case 3u:
      v106 = v413;
      *(v411 + v410[14]) = v104[*(swift_getTupleTypeMetadata2() + 48)];
      goto LABEL_21;
    case 4u:
      v119 = type metadata accessor for ItemReconciliationHalf();
      v120 = v411;
      (*(*(v119 - 8) + 8))(v411, v119);
      sub_1CF078A84(v120);
      v121 = v410;
      v122 = v410[13];
      v123 = type metadata accessor for ItemReconciliationHalf();
      (*(*(v123 - 8) + 8))(v120 + v122, v123);
      sub_1CF078A84(v120 + v122);
      v124 = sub_1CF9E6DA8();
      v125 = v121[15];
      v126 = *(v120 + v125);

      *(v120 + v125) = v124;
      (*(v101 + 8))(v104, v100);
      return 2;
    case 5u:
    case 6u:
      v188 = v413;
      v189 = *&v104[*(swift_getTupleTypeMetadata2() + 48)];
      (*(v414 + 8))(v104, v188);
      return v189;
    case 7u:
      v163 = v413;
      v164 = swift_getTupleTypeMetadata2();
      v165 = v414;
      v166 = v386;
      (*(v414 + 32))(v386, &v104[*(v164 + 48)], v163);
      (*(v165 + 16))(v367, v166, v163);
      v167 = v410[15];
      sub_1CF9E6E58();
      sub_1CF9E6E18();
      v168 = *(v165 + 8);
      v168(v166, v163);
      v168(v104, v163);
      return 1;
    case 8u:
      v214 = v413;
      v215 = swift_getTupleTypeMetadata2();
      v216 = v414;
      v217 = v386;
      v218 = (*(v414 + 32))(v386, &v104[*(v215 + 48)], v214);
      MEMORY[0x1EEE9AC00](v218);
      v219 = v407;
      *(&v344 - 8) = v409;
      *(&v344 - 7) = v219;
      v220 = v408;
      *(&v344 - 6) = v404;
      *(&v344 - 5) = v220;
      v221 = v405;
      *(&v344 - 4) = v406;
      *(&v344 - 3) = v221;
      v342 = v217;
      v222 = v410[15];
      sub_1CF9E6E58();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1CF9E7198();
      v223 = *(v216 + 8);
      v223(v217, v214);
      v223(v104, v214);
      return 0;
    case 9u:
      v128 = v413;
      v129 = v391;
      v130 = *(swift_getTupleTypeMetadata2() + 48);
      v131 = v414;
      v132 = v387;
      v412 = *(v414 + 32);
      (v412)(v387, v104, v128);
      v133 = (*(v390 + 4))(v389, &v104[v130], v129);
      v134 = v411;
      v135 = v410[13];
      LOBYTE(v415) = *(v411 + v410[14]);
      MEMORY[0x1EEE9AC00](v133);
      v136 = v407;
      *(&v344 - 6) = v409;
      *(&v344 - 5) = v136;
      v137 = v408;
      *(&v344 - 4) = v404;
      *(&v344 - 3) = v137;
      v342 = v406;
      v343 = v405;
      v138 = v379;
      v139 = v419;
      sub_1CF06E1CC(sub_1CF6BCB20, (&v344 - 8), MEMORY[0x1E69E73E0], v128, v140, v379);
      v419 = v139;
      v141 = *(v131 + 48);
      if (v141(v138, 1, v128) == 1)
      {
        v142 = *(v131 + 16);
        v143 = v374;
        v142(v374, v132, v128);
        if (v141(v138, 1, v128) != 1)
        {
          (*(v354 + 8))(v138, v362);
        }
      }

      else
      {
        v143 = v374;
        (v412)(v374, v138, v128);
      }

      v227 = v396;
      v228 = v377;
      v229 = v401;
      (v396[2])(v377, v134 + v135, v401);
      v230 = v389;
      v231 = sub_1CF07A814(v389, (v134 + v135), v381, &v415, v143, v134, v228, v407, v406);
      v232 = v143;
      v233 = v231;
      (v227[1])(v228, v229);
      v234 = *(v414 + 8);
      v234(v232, v128);
      (*(v390 + 1))(v230, v391);
      v234(v387, v128);
      return v233;
    case 0xAu:
      v199 = v413;
      v200 = v394;
      v201 = *(swift_getTupleTypeMetadata2() + 48);
      v202 = v414;
      v203 = v388;
      v412 = *(v414 + 32);
      (v412)(v388, v104, v199);
      v204 = (*(v393 + 4))(v392, &v104[v201], v200);
      v205 = v411;
      LOBYTE(v415) = *(v411 + v410[14]);
      MEMORY[0x1EEE9AC00](v204);
      v206 = v407;
      *(&v344 - 6) = v409;
      *(&v344 - 5) = v206;
      v207 = v408;
      *(&v344 - 4) = v404;
      *(&v344 - 3) = v207;
      v342 = v406;
      v343 = v405;
      v208 = v378;
      v209 = v419;
      sub_1CF06E1CC(sub_1CF6BC900, (&v344 - 8), MEMORY[0x1E69E73E0], v199, v210, v378);
      v419 = v209;
      v211 = *(v202 + 48);
      if (v211(v208, 1, v199) == 1)
      {
        v212 = *(v202 + 16);
        v213 = v376;
        v212(v376, v203, v199);
        if (v211(v208, 1, v199) != 1)
        {
          (*(v354 + 8))(v208, v362);
        }
      }

      else
      {
        v213 = v376;
        (v412)(v376, v208, v199);
      }

      v277 = v403;
      v278 = v369;
      (*(v403 + 16))(v369, v205, v64);
      v279 = v392;
      v280 = sub_1CF07A814(v392, v205, v380, &v415, v213, v278, v205 + v410[13], v409, v408);
      (*(v277 + 8))(v278, v64);
      v281 = *(v414 + 8);
      v281(v213, v199);
      (*(v393 + 1))(v279, v394);
      v281(v388, v199);
      return v280;
    case 0xBu:
      v111 = v413;
      v112 = &v104[*(swift_getTupleTypeMetadata2() + 48)];
      v113 = *v112;
      v114 = v112[8];
      v115 = *(type metadata accessor for ItemReconciliationHalf() + 76);
      v116 = *(v411 + v115);
      if (v114)
      {
        v117 = v116 & ~v113;
        v118 = v414;
LABEL_45:
        *(v411 + v115) = v117;
        goto LABEL_46;
      }

      v224 = (*(v411 + v115) & 3) != 0 && (v113 & 3) != 0;
      if (v224)
      {
        v116 &= 0xFFFFFFFFFFFFFFFCLL;
      }

      v225 = v116 & v113;
      v118 = v414;
      if (v224 || v225 != v113)
      {
        if (v225 == v113)
        {
          v226 = 0;
        }

        else
        {
          v226 = v113;
        }

        v117 = v226 | v116;
        goto LABEL_45;
      }

LABEL_46:
      (*(v118 + 8))(v104, v111);
      return 0;
    case 0xCu:
      (*(v414 + 8))(v104, v413);
      return 0;
    case 0xDu:
      v190 = v104[*(TupleTypeMetadata2 + 48)];
      v191 = v413;
      v192 = v414;
      v193 = v371;
      (*(v414 + 32))(v371, v104, v413);
      v194 = v411;
      v195 = v410[19];
      if (v190 == *(v411 + v195))
      {
        goto LABEL_32;
      }

      result = swift_weakLoadStrong();
      if (result)
      {
        v196 = result;
        v197 = v363;
        (*(v192 + 16))(v363, v193, v191);
        v198 = v365;
        swift_storeEnumTagMultiPayload();
        (*(*v196 + 312))(v197);

        (*(v364 + 8))(v197, v198);
LABEL_32:
        (*(v192 + 8))(v193, v191);
        result = 0;
        *(v194 + v195) = v190;
      }

      else
      {
        __break(1u);
      }

      return result;
    case 0xEu:
      v106 = v413;
      v107 = swift_getTupleTypeMetadata3();
      v108 = *&v104[*(v107 + 48)];
      v109 = v410[20];
      v110 = *(v411 + v109);
      if ((v108 & ~v110) == 0)
      {
        v108 = 0;
      }

      *(v411 + v109) = (v108 | v110) & ~*&v104[*(v107 + 64)];
LABEL_21:
      (*(v414 + 8))(v104, v106);
      return 0;
    case 0xFu:
      v155 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      v156 = v413;
      v398 = v155;
      v157 = swift_getTupleTypeMetadata3();
      LODWORD(v399) = v104[*(v157 + 48)];
      v158 = v92;
      v159 = v104[*(v157 + 64)];
      v160 = v403;
      v161 = v411;
      (*(v403 + 16))(v71, v411, v64);
      v162 = v400;
      if ((*(v158 + 48))(v71, 1, v400) == 1)
      {
        (*(v160 + 8))(v71, v64);
        (*(v414 + 8))(v104, v156);
        return 3;
      }

      v412 = v158;
      v239 = v382;
      (*(v158 + 32))(v382, v71, v162);
      v240 = type metadata accessor for ItemReconciliationHalf();
      v241 = *(v240 + 56);
      v242 = *(v161 + v241);
      v243 = v401;
      v244 = v396;
      v245 = v383;
      v246 = v161;
      if (v159)
      {
        goto LABEL_53;
      }

      if (*(v161 + v241) <= 2u)
      {
        if (*(v161 + v241))
        {
          if (v242 == 1)
          {
            if (v399 != 2)
            {
              goto LABEL_111;
            }
          }

          else if (v399 != 3)
          {
            goto LABEL_111;
          }
        }

        else if (v399 > 6 || ((1 << v399) & 0x4E) == 0)
        {
          goto LABEL_111;
        }

        goto LABEL_53;
      }

      if (*(v161 + v241) > 4u)
      {
        if (v242 != 5)
        {
          if (v399 && v399 != 5)
          {
            goto LABEL_111;
          }

          goto LABEL_53;
        }

        if (!v399)
        {
          goto LABEL_53;
        }

        goto LABEL_99;
      }

      if (v242 != 3)
      {
LABEL_99:
        if (v399 != 6)
        {
          goto LABEL_111;
        }

        goto LABEL_53;
      }

      if ((v399 | 2) != 6)
      {
LABEL_111:
        (*(v412 + 8))(v239, v400);
        (*(v414 + 8))(v104, v413);
        return 3;
      }

LABEL_53:
      v403 = v240;
      *(v161 + v241) = v399;
      (v244[2])(v245, v161 + v410[13], v243);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v248 = Strong;
        MEMORY[0x1EEE9AC00](Strong);
        strcpy(&v344 - 32, " otherID from to ");
        v249 = v413;
        v415 = v413;
        v416 = v362;
        v417 = v398;
        v418 = v398;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v251 = TupleTypeMetadata[12];
        v410 = TupleTypeMetadata[16];
        v252 = TupleTypeMetadata[20];
        v253 = v242;
        v254 = v412;
        v255 = v363;
        (*(v412 + 16))(v363, v382, v400);
        v256 = swift_storeEnumTagMultiPayload();
        MEMORY[0x1EEE9AC00](v256);
        v257 = v407;
        *(&v344 - 6) = v409;
        *(&v344 - 5) = v257;
        v258 = v408;
        *(&v344 - 4) = v404;
        *(&v344 - 3) = v258;
        v342 = v406;
        v343 = v405;
        v259 = v419;
        sub_1CF06E1CC(sub_1CF6BCB20, (&v344 - 8), MEMORY[0x1E69E73E0], v249, v260, &v255[v251]);
        v419 = v259;
        v246 = v411;
        *(v410 + v255) = v253;
        v255[v252] = v399;
        v261 = v400;
        v262 = v365;
        swift_storeEnumTagMultiPayload();
        (*(*v248 + 312))(v255);
        v244 = v396;
        v243 = v401;

        v263 = v255;
        v245 = v383;
        v264 = v262;
        v239 = v382;
        (*(v364 + 8))(v263, v264);
      }

      else
      {
        v254 = v412;
        v261 = v400;
      }

      (v244[1])(v245, v243);
      (*(v254 + 8))(v239, v261);
      if (v399 == 6)
      {
        *(v246 + *(v403 + 60)) = 0;
      }

      (*(v414 + 8))(v104, v413);
      return 1;
    case 0x10u:
      v105 = v413;
      *(v411 + v410[18]) = *&v104[*(swift_getTupleTypeMetadata2() + 48)];
      goto LABEL_4;
    default:
      v105 = v413;
      *(v411 + v410[14]) = v104[*(swift_getTupleTypeMetadata2() + 48)];
LABEL_4:
      (*(v414 + 8))(v104, v105);
      return 1;
  }
}

uint64_t sub_1CF6A0B64(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1CF024490(a1, a2, AssociatedTypeWitness, v4) & 1;
}

uint64_t sub_1CF6A0C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF6A0D98(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v148 = a2;
  v135 = a4;
  v136 = a5;
  v133 = a3;
  v149 = a1;
  v6 = *v5;
  v7 = *(*v5 + 104);
  v8 = *(*v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = sub_1CF9E75D8();
  v123 = *(v119 - 8);
  v10 = *(v123 + 64);
  v11 = MEMORY[0x1EEE9AC00](v119);
  v118 = &v112 - v12;
  v121 = AssociatedTypeWitness;
  v120 = *(AssociatedTypeWitness - 8);
  v13 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v112 - v14;
  v15 = *(v6 + 96);
  v134 = v5;
  v16 = *(v6 + 80);
  v17 = swift_getAssociatedTypeWitness();
  v140 = *(v17 - 8);
  v18 = *(v140 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v116 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v114 = &v112 - v21;
  v144 = sub_1CF9E5CF8();
  v132 = *(v144 - 8);
  v22 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v17;
  v24 = sub_1CF9E75D8();
  v25 = *(v24 - 8);
  v138 = v24;
  v139 = v25;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v122 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v117 = &v112 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v142 = &v112 - v31;
  *&v32 = v16;
  *(&v32 + 1) = v8;
  *&v33 = v15;
  *(&v33 + 1) = v7;
  v130 = v33;
  v151 = v33;
  v131 = v32;
  v150 = v32;
  v34 = type metadata accessor for ItemReconciliation();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v124 = &v112 - v37;
  v38 = type metadata accessor for ItemReconciliationHalf();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v137 = &v112 - v41;
  v42 = sub_1CF9E75D8();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v129 = &v112 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v112 - v47;
  v113 = *(v38 + 36);
  v145 = *(v149 + v113);
  v128 = *(v43 + 16);
  v128(&v112 - v47, v148, v42);
  v49 = *(v35 + 48);
  v146 = v34;
  v127 = v49;
  v50 = v49(v48, 1, v34);
  v125 = v35;
  v126 = v38;
  if (v50 == 1)
  {
    result = (*(v43 + 8))(v48, v42);
    if ((v145 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  v52 = v137;
  (*(v39 + 16))(v137, v48, v38);
  (*(v35 + 8))(v48, v146);
  v53 = *&v52[*(v38 + 36)];
  result = (*(v39 + 8))(v52, v38);
  v54 = v145;
  if ((v145 & 0x10) != 0)
  {
    if ((v53 & 0x10) != 0)
    {
      return result;
    }

LABEL_11:
    v65 = v129;
    v128(v129, v148, v42);
    v66 = v146;
    if (v127(v65, 1, v146) == 1)
    {
      (*(v43 + 8))(v65, v42);
      v64 = 0x2000000;
    }

    else
    {
      v67 = v125;
      v68 = v124;
      (*(v125 + 32))(v124, v65, v66);
      v69 = v68[*(v126 + 56)];
      (*(v67 + 8))(v68, v66);
      if (v69)
      {
        v64 = 0x2000000;
      }

      else
      {
        v64 = 0x40000000;
      }
    }

    v57 = v135;
    v56 = v140;
    v70 = v142;
    (*(v139 + 16))(v142, v149, v138);
    v54 = v141;
    result = (*(v56 + 48))(v70, 1, v141);
    if (result != 1)
    {
      v150 = v131;
      v151 = v130;
      v63 = type metadata accessor for Materialization.MaterializeIgnoredItem();
      v71 = v143;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v73 = v72;
      v55 = *(v132 + 8);
      v55(v71, v144);
      v74 = v73 * 1000000000.0;
      if (COERCE__INT64(fabs(v73 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v74 > -9.22337204e18)
      {
        if (v74 < 9.22337204e18)
        {
          v57 = v142;
          v64 = sub_1CF57487C(v142, 0, v74, v64);
          v75 = *(v56 + 8);
          v56 += 8;
          v75(v57, v54);
          result = swift_weakLoadStrong();
          if (result)
          {
            v63 = result;
            v71 = v143;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v77 = v76;
            v55(v71, v144);
            v78 = v77 * 1000000000.0;
            if (COERCE__INT64(fabs(v77 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v78 > -9.22337204e18)
              {
                if (v78 < 9.22337204e18)
                {
                  sub_1CF5215C0(v64);
                }

                goto LABEL_61;
              }

LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if ((v53 & 0x10) != 0 && (v145 & 5) == 0)
  {
    v55 = *(v146 + 56);
    v56 = v149;
    if (*(v55 + v149) != 1)
    {
      v64 = v136;
      v63 = v123;
      v57 = v138;
      goto LABEL_26;
    }

    v148 = *(v146 + 56);
    v57 = v138;
    v58 = v139;
    v59 = v117;
    (*(v139 + 16))(v117, v149, v138);
    v61 = v140;
    v60 = v141;
    v62 = (*(v140 + 48))(v59, 1, v141);
    v63 = v123;
    if (v62 == 1)
    {
      (*(v58 + 8))(v59, v57);
      v64 = v136;
      v55 = v148;
      goto LABEL_26;
    }

    v93 = v114;
    (*(v61 + 32))(v114, v59, v60);
    v151 = v130;
    v150 = v131;
    type metadata accessor for Ingestion.FetchChildrenMetadata();
    v94 = v143;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v96 = v95;
    v97 = *(v132 + 8);
    result = v97(v94, v144);
    v98 = v96 * 1000000000.0;
    if (COERCE__INT64(fabs(v96 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v98 > -9.22337204e18)
    {
      if (v98 < 9.22337204e18)
      {
        v99 = sub_1CF65707C(v93, 0, v98, 0x4000000);
        result = swift_weakLoadStrong();
        if (!result)
        {
LABEL_73:
          __break(1u);
          return result;
        }

        v100 = v143;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v102 = v101;
        result = v97(v100, v144);
        v103 = v102 * 1000000000.0;
        if (COERCE__INT64(fabs(v102 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v104 = v147;
          v55 = v148;
          v64 = v136;
          if (v103 > -9.22337204e18)
          {
            if (v103 < 9.22337204e18)
            {
              sub_1CF5215C0(v99);
              v147 = v104;
              if (v104)
              {

                return (*(v140 + 8))(v93, v141);
              }

              (*(v140 + 8))(v93, v141);
              v63 = v123;
              v57 = v138;
              v54 = v145;
LABEL_26:
              v79 = sub_1CF07CD80(v146);
              v71 = v122;
              v80 = v126;
              if (v79)
              {
                goto LABEL_30;
              }

              if (qword_1EDEABDE0 == -1)
              {
LABEL_28:
                *(v56 + *(v80 + 40)) |= qword_1EDEABDE8 & 0xFFFFFFFFFF7FFFEFLL;
                if ((v54 & 8) != 0)
                {
                  *(v56 + v113) = v54 & 0xFFFFFFFFFFFFFFE2;
                }

LABEL_30:
                v81 = *(v55 + v56);
                if (v81 != 1)
                {
                  if (v81 != 4)
                  {
LABEL_35:
                    v84 = v139;
                    (*(v139 + 16))(v71, v56, v57);
                    v85 = v140;
                    v86 = v71;
                    v87 = v71;
                    v88 = v141;
                    if ((*(v140 + 48))(v86, 1, v141) == 1)
                    {
                      (*(v84 + 8))(v87, v57);
LABEL_50:
                      v105 = v56 + *(v146 + 52);
                      v106 = v118;
                      v107 = v119;
                      (*(v63 + 16))(v118, v105, v119);
                      v108 = v120;
                      v109 = v121;
                      if ((*(v120 + 48))(v106, 1, v121) == 1)
                      {
                        return (*(v63 + 8))(v106, v107);
                      }

                      v110 = v115;
                      (*(v108 + 32))(v115, v106, v109);
                      result = swift_weakLoadStrong();
                      if (result)
                      {
                        v111 = *(result + 24);

                        (*(*v111 + 400))(v110, v133, v135, v64);
                        (*(v108 + 8))(v110, v109);
                      }

                      goto LABEL_72;
                    }

                    v89 = *(v85 + 32);
                    v90 = v116;
                    v89(v116, v87, v88);
                    result = swift_weakLoadStrong();
                    if (result)
                    {
                      v91 = *(result + 24);

                      v92 = v147;
                      (*(*v91 + 392))(v90, v133, v135, v64);
                      v147 = v92;
                      if (v92)
                      {
                        (*(v140 + 8))(v90, v141);
                      }

                      (*(v140 + 8))(v90, v141);

                      goto LABEL_50;
                    }

LABEL_71:
                    __break(1u);
LABEL_72:
                    __break(1u);
                    goto LABEL_73;
                  }

                  __break(1u);
                }

                v82 = *(v80 + 40);
                v83 = *(v56 + v82);
                if ((v83 & 0x100000000000) == 0)
                {
                  *(v56 + v82) = v83 | 0x100000000000;
                }

                goto LABEL_35;
              }

LABEL_62:
              swift_once();
              v80 = v126;
              goto LABEL_28;
            }

LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_65;
  }

  return result;
}

void *sub_1CF6A1D90(uint64_t a1, char *a2, uint64_t *a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v318 = a4;
  v309 = a8;
  v310 = a6;
  v311 = a7;
  LODWORD(v313) = a5;
  v317 = a3;
  v315 = a2;
  v322 = a1;
  v9 = *v8;
  v280 = sub_1CF9E5CF8();
  v279 = *(v280 - 8);
  v10 = *(v279 + 64);
  MEMORY[0x1EEE9AC00](v280);
  v278 = &v249 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v9[11];
  v13 = v9[10];
  v14 = v9[13];
  v316 = v8;
  v15 = v9[12];
  v324 = v12;
  v325 = v13;
  v16 = v12;
  v326 = v14;
  v327 = v15;
  v320 = type metadata accessor for ItemReconciliation();
  v283 = sub_1CF9E75D8();
  v282 = *(v283 - 8);
  v17 = *(v282 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v284 = &v249 - v18;
  v324 = v13;
  v325 = v16;
  v326 = v15;
  v327 = v14;
  v321 = type metadata accessor for PersistenceTrigger();
  v303 = *(v321 - 8);
  v19 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v321);
  v261 = &v249 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v324 = AssociatedTypeWitness;
  v325 = v22;
  v260 = AssociatedConformanceWitness;
  v326 = AssociatedConformanceWitness;
  v327 = v24;
  v259 = v24;
  v264 = type metadata accessor for ThrottlingKey();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v263 = sub_1CF9E75D8();
  v262 = *(v263 - 8);
  v25 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v263);
  v266 = &v249 - v26;
  v273 = sub_1CF9E75D8();
  v272 = *(v273 - 8);
  v27 = *(v272 + 64);
  v28 = MEMORY[0x1EEE9AC00](v273);
  v271 = &v249 - v29;
  v276 = AssociatedTypeWitness;
  v277 = *(AssociatedTypeWitness - 8);
  v30 = *(v277 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v270 = &v249 - v31;
  v288 = sub_1CF9E75D8();
  v285 = *(v288 - 8);
  v32 = *(v285 + 64);
  v33 = MEMORY[0x1EEE9AC00](v288);
  v293 = &v249 - v34;
  v286 = v22;
  v289 = *(v22 - 8);
  v35 = *(v289 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v281 = &v249 - v36;
  v295 = type metadata accessor for ItemReconciliationHalf();
  v275 = *(v295 - 8);
  v37 = *(v275 + 64);
  MEMORY[0x1EEE9AC00](v295);
  v274 = &v249 - v38;
  v302 = type metadata accessor for ItemReconciliationHalf();
  v300 = *(v302 - 1);
  v39 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v302);
  v268 = &v249 - v40;
  v324 = v13;
  v325 = v16;
  v41 = v16;
  v326 = v15;
  v327 = v14;
  v42 = type metadata accessor for ItemReconciliation();
  v294 = sub_1CF9E75D8();
  v291 = *(v294 - 8);
  v43 = *(v291 + 64);
  v44 = MEMORY[0x1EEE9AC00](v294);
  v292 = &v249 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v287 = &v249 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v269 = &v249 - v48;
  v307 = v41;
  v324 = v41;
  v325 = v13;
  v304 = v13;
  v306 = v14;
  v326 = v14;
  v327 = v15;
  v305 = v15;
  v296 = type metadata accessor for PersistenceTrigger();
  v299 = sub_1CF9E75D8();
  v297 = *(v299 - 8);
  v49 = *(v297 + 8);
  v50 = MEMORY[0x1EEE9AC00](v299);
  v298 = &v249 - v51;
  v301 = *(v320 - 1);
  v52 = *(v301 + 64);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v290 = &v249 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v267 = &v249 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v249 - v57;
  v59 = sub_1CF9E75D8();
  v312 = *(v59 - 8);
  v60 = *(v312 + 64);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v249 - v62;
  v308 = *(v42 - 1);
  v64 = *(v308 + 64);
  v65 = MEMORY[0x1EEE9AC00](v61);
  v67 = &v249 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v65);
  v70 = &v249 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v72 = (&v249 - v71);
  v73 = *v317;
  v74 = *v318;
  v314 = v42;
  v75 = v319;
  result = sub_1CF07CFF8(v42);
  if (v75)
  {
    return result;
  }

  v317 = v72;
  v258 = v63;
  v257 = v59;
  v256 = v58;
  v254 = v70;
  v318 = v74;
  v319 = v73;
  v255 = v67;
  if (v313)
  {
    sub_1CF6A0D98(v322, v315, v310, v311, v309);
  }

  v77 = v312;
  v78 = v317;
  v323 = v318;
  v324 = v319;
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_118;
  }

  v79 = v314;
  v80 = v322;
  v253 = sub_1CF07D89C(v315, &v324, &v323, result, v314);

  v312 = *(v308 + 16);
  v313 = v308 + 16;
  (v312)(v78, v80, v79);
  v81 = v258;
  (*(v303 + 56))(v258, 1, 1, v321);
  if (qword_1EDEA72F0 != -1)
  {
    swift_once();
  }

  v82 = qword_1EDEBB8C0;
  result = swift_weakLoadStrong();
  v83 = v309;
  if (!result)
  {
    goto LABEL_121;
  }

  v84 = result;
  v324 = v304;
  v325 = v307;
  v326 = v305;
  v327 = v306;
  type metadata accessor for ReconciliationTable();
  v85 = *(v83 + 8);
  v86 = sub_1CF6939AC(v78, v81, v82, v84, v310, v311, v85);
  v87 = v81;
  v88 = (v77 + 8);
  v89 = (v308 + 8);
  v317 = 0;
  v91 = v90;
  v93 = v92;
  v251 = v82;
  v252 = v85;
  v94 = v86;

  (*v88)(v87, v257);
  v95 = *v89;
  v96 = v314;
  v257 = v89;
  v250 = v95;
  v95(v78, v314);
  LODWORD(v88) = v93;
  v97 = v322 + v302[16];
  sub_1CF03D7A8(*v97, *(v97 + 8), *(v97 + 16));
  v249 = v94;
  *v97 = v94;
  *(v97 + 8) = v91;
  LODWORD(v258) = v88;
  *(v97 + 16) = v88;
  v98 = v256;
  sub_1CF07EE34(v96, v256);
  v99 = v298;
  (*(*(v296 - 8) + 56))(v298, 1, 1);
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v100 = result;
  v324 = v307;
  v325 = v304;
  v326 = v306;
  v327 = v305;
  type metadata accessor for ReconciliationTable();
  v101 = (*(*v100 + 176))();

  v102 = v317;
  v103 = sub_1CF6939AC(v98, v99, v251, v101, v310, v311, v252);
  v106 = (v297 + 8);
  v107 = (v301 + 8);
  v317 = v102;
  v108 = v300;
  if (v102)
  {

    (*v106)(v99, v299);
    return (*v107)(v98, v320);
  }

  v109 = v103;
  v110 = v104;
  v111 = v105;

  (*v106)(v99, v299);
  v112 = *v107;
  v298 = v107;
  v297 = v112;
  (v112)(v98, v320);
  v113 = v314;
  v114 = *(v295 + 64);
  v296 = v322 + *(v314 + 13);
  v115 = v296 + v114;
  sub_1CF03D7A8(*(v296 + v114), *(v296 + v114 + 8), *(v296 + v114 + 16));
  *v115 = v109;
  *(v115 + 8) = v110;
  LODWORD(v299) = v111;
  *(v115 + 16) = v111;
  if (v258)
  {
    v116 = v307;
    v117 = v315;
    v118 = v294;
    v119 = v255;
    v120 = v293;
  }

  else
  {
    v116 = v307;
    v117 = v315;
    v119 = v255;
    v120 = v293;
    v128 = v249;
    if ((v249 & 0x100) != 0)
    {
      v129 = *(v113 + 64);
      v130 = *(v322 + v129);
      if (v130 >= 0x2000000000000000)
      {
        v130 = 0x2000000000000000;
      }

      *(v322 + v129) = v130;
      if (v319)
      {
        v131 = v254;
        (v312)(v254);
        result = swift_weakLoadStrong();
        if (!result)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v132 = v317;
        sub_1CF6B9E9C(v131, v117, result, v310, v304, v116, v311, v305, v306, v309);
        v317 = v132;
        v133 = v131;
        if (v132)
        {
          v134 = v113;
LABEL_40:
          v250(v133, v134);
        }

        v250(v131, v113);

        v120 = v293;
        v128 = v249;
      }
    }

    if ((v128 & 0x200) != 0)
    {
      v199 = v291;
      v200 = v269;
      v118 = v294;
      (*(v291 + 16))(v269, v117, v294);
      if ((*(v308 + 48))(v200, 1, v113) == 1)
      {
        (*(v199 + 8))(v200, v118);
        v120 = v293;
      }

      else
      {
        v201 = v113;
        v202 = v268;
        v203 = v302;
        (*(v108 + 16))(v268, v200, v302);
        v250(v200, v201);
        v204 = &v202[v203[16]];
        v205 = *v204;
        v206 = *(v204 + 1);
        v207 = v204[16];
        sub_1CF03C530(*v204, v206, v204[16]);
        (*(v108 + 8))(v202, v203);
        if (v207)
        {
          sub_1CF03D7A8(v205, v206, v207);
          v113 = v314;
          v117 = v315;
          v118 = v294;
          v120 = v293;
          v116 = v307;
        }

        else
        {
          sub_1CF03D7A8(v205, v206, 0);
          v113 = v314;
          v117 = v315;
          v118 = v294;
          v119 = v255;
          v120 = v293;
          v116 = v307;
          if ((v205 & 0x200) != 0)
          {
            goto LABEL_13;
          }
        }
      }

      result = swift_weakLoadStrong();
      if (!result)
      {
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v208 = result[4];

      v209 = *(v208 + 16);

      (*(*v209 + 920))(v210);

      v119 = v255;
    }

    else
    {
      v118 = v294;
    }
  }

LABEL_13:
  if (v299 || (v109 & 0x100) == 0)
  {
    v124 = v292;
    v127 = v290;
LABEL_35:
    v126 = v322;
    goto LABEL_36;
  }

  v121 = v120;
  v122 = v291;
  v123 = v287;
  (*(v291 + 16))(v287, v117, v118);
  if ((*(v308 + 48))(v123, 1, v113) == 1)
  {
    (*(v122 + 8))(v123, v118);
    v124 = v292;
    v125 = v288;
    v126 = v322;
  }

  else
  {
    v135 = *(v113 + 52);
    v136 = v113;
    v137 = v275;
    v138 = v274;
    v139 = v295;
    (*(v275 + 16))(v274, &v123[v135], v295);
    v140 = v136;
    v250(v123, v136);
    v141 = &v138[*(v139 + 64)];
    v142 = *v141;
    v143 = *(v141 + 1);
    v144 = v141[16];
    sub_1CF03C530(*v141, v143, v141[16]);
    (*(v137 + 8))(v138, v139);
    v145 = v322;
    if (v144)
    {
      sub_1CF03D7A8(v142, v143, v144);
      v124 = v292;
      v119 = v255;
      v125 = v288;
      v113 = v140;
      v126 = v145;
    }

    else
    {
      sub_1CF03D7A8(v142, v143, 0);
      v124 = v292;
      v119 = v255;
      v125 = v288;
      v113 = v140;
      v126 = v145;
      if ((v142 & 0x100) != 0)
      {
        v127 = v290;
        v116 = v307;
        goto LABEL_36;
      }
    }
  }

  v146 = v113;
  v147 = *(v113 + 64);
  v148 = *(v126 + v147);
  if (v148 >= 0x2000000000000000)
  {
    v148 = 0x2000000000000000;
  }

  *(v126 + v147) = v148;
  v149 = v285;
  v150 = v121;
  (*(v285 + 16))(v121);
  v151 = v125;
  v152 = v289;
  v153 = v121;
  v154 = v286;
  if ((*(v289 + 48))(v153, 1, v286) == 1)
  {
    (*(v149 + 8))(v150, v151);
    v127 = v290;
LABEL_34:
    v116 = v307;
    goto LABEL_35;
  }

  v155 = v281;
  (*(v152 + 32))(v281, v150, v154);
  v156 = v272;
  v157 = v271;
  v158 = v273;
  (*(v272 + 16))(v271, v296, v273);
  v159 = v277;
  v160 = v276;
  if ((*(v277 + 48))(v157, 1, v276) == 1)
  {
    (*(v152 + 8))(v155, v154);
    (*(v156 + 8))(v157, v158);
    v127 = v290;
    v124 = v292;
    v119 = v255;
    goto LABEL_34;
  }

  v190 = v270;
  (*(v159 + 32))(v270, v157, v160);
  v191 = v160;
  if (*(v322 + v302[11]) == 5)
  {
    (*(v159 + 8))(v190, v160);
    (*(v289 + 8))(v281, v154);
    v126 = v322;
    v127 = v290;
LABEL_94:
    v124 = v292;
    v119 = v255;
    v116 = v307;
    goto LABEL_36;
  }

  v192 = v289;
  v127 = v290;
  v193 = v281;
  if (*(v322 + v302[14]) != 6)
  {
    (*(v277 + 8))(v270, v191);
    (*(v192 + 8))(v193, v154);
    v126 = v322;
    goto LABEL_94;
  }

  v194 = *(v322 + v302[11]);
  v195 = v267;
  sub_1CF07EE34(v146, v267);
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v196 = (*(*result + 176))(result);

  v197 = v320;
  v198 = v317;
  sub_1CF07DE7C(v196, 1, v320, &v324);
  v317 = v198;
  if (v198)
  {

    (v297)(v195, v197);
LABEL_82:
    (*(v277 + 8))(v270, v276);
    return (*(v289 + 8))(v281, v286);
  }

  (v297)(v195, v197);

  v211 = v324;
  if (v324 == 89)
  {
    (*(v277 + 8))(v270, v276);
    (*(v289 + 8))(v281, v286);
    v124 = v292;
    v119 = v255;
    v116 = v307;
    goto LABEL_35;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v212 = result[3];

  v213 = v317;
  v214 = (*(*v212 + 376))(v270, v211, 0, 1, v310, v311, v252);
  v317 = v213;
  if (v213)
  {

    goto LABEL_82;
  }

  v215 = v214;

  v324 = v215;
  v216 = TupleTypeMetadata2;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  v217 = v266;
  sub_1CF9E7118();

  if ((*(*(v216 - 8) + 48))(v217, 1, v216) != 1)
  {
    v218 = v266;
    v219 = &v266[*(TupleTypeMetadata2 + 48)];
    v220 = *(v219 + 5);
    v221 = *(v219 + 8);
    v222 = v220;

    (*(*(v264 - 8) + 8))(v218);
    if (!v220)
    {
      (*(v277 + 8))(v270, v276);
      (*(v289 + 8))(v281, v286);
      goto LABEL_109;
    }

    if (v194 <= 1)
    {
      if (v194)
      {
        result = swift_weakLoadStrong();
        if (!result)
        {
LABEL_135:
          __break(1u);
          return result;
        }

        v223 = result;
        v224 = v286;
        v225 = v276;
        v324 = v286;
        v325 = v276;
        v326 = v259;
        v327 = v260;
        type metadata accessor for ReconciliationID();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v244 = *(TupleTypeMetadata3 + 48);
        v245 = *(TupleTypeMetadata3 + 64);
        v229 = v289;
        v230 = v261;
        (*(v289 + 16))(v261, v281, v224);
        swift_storeEnumTagMultiPayload();
        *&v230[v244] = v220;
        v230[v245] = 0;
LABEL_116:
        v246 = v321;
        swift_storeEnumTagMultiPayload();
        v247 = *(*v223 + 312);
        v248 = v220;
        v247(v230);

        (*(v303 + 8))(v230, v246);
        (*(v277 + 8))(v270, v225);
        (*(v229 + 8))(v281, v224);
        goto LABEL_109;
      }
    }

    else
    {
      if (v194 == 2)
      {
        sub_1CF24CD3C();
        swift_allocError();
        v241 = v240;
        v324 = 0;
        v325 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA459B0);
        swift_getWitnessTable();
        sub_1CF9E7FE8();
        v242 = v325;
        *v241 = v324;
        *(v241 + 8) = v242;
        *(v241 + 48) = 8;
        swift_willThrow();

        (*(v277 + 8))(v270, v276);
        return (*(v289 + 8))(v281, v286);
      }

      if (v194 == 3)
      {
        result = swift_weakLoadStrong();
        if (!result)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v223 = result;
        v224 = v286;
        v225 = v276;
        v324 = v286;
        v325 = v276;
        v326 = v259;
        v327 = v260;
        type metadata accessor for ReconciliationID();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v226 = swift_getTupleTypeMetadata3();
        v227 = *(v226 + 48);
        v228 = *(v226 + 64);
        v229 = v289;
        v230 = v261;
        (*(v289 + 16))(v261, v281, v224);
        swift_storeEnumTagMultiPayload();
        *&v230[v227] = v220;
        v230[v228] = 1;
        goto LABEL_116;
      }
    }

    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v231 = result;
    v232 = v286;
    v233 = v276;
    v324 = v286;
    v325 = v276;
    v326 = v259;
    v327 = v260;
    type metadata accessor for ReconciliationID();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v234 = *(swift_getTupleTypeMetadata2() + 48);
    v235 = v289;
    v236 = v261;
    (*(v289 + 16))(v261, v281, v232);
    swift_storeEnumTagMultiPayload();
    *&v236[v234] = v220;
    v237 = v321;
    swift_storeEnumTagMultiPayload();
    v238 = *(*v231 + 312);
    v239 = v220;
    v238(v236);

    (*(v303 + 8))(v236, v237);
    (*(v277 + 8))(v270, v233);
    (*(v235 + 8))(v281, v232);
    goto LABEL_109;
  }

  (*(v277 + 8))(v270, v276);
  (*(v289 + 8))(v281, v286);
  (*(v262 + 8))(v266, v263);
LABEL_109:
  v126 = v322;
  v116 = v307;
  v127 = v290;
  v124 = v292;
  v119 = v255;
LABEL_36:
  v161 = v304;
  v162 = v305;
  if (v319)
  {
    v163 = v127;
    v164 = v126;
    (v312)(v119);
    result = swift_weakLoadStrong();
    v165 = v310;
    if (!result)
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v166 = v317;
    sub_1CF6B9E9C(v119, v315, result, v310, v161, v116, v311, v162, v306, v309);
    v317 = v166;
    v133 = v119;
    if (v166)
    {
      v134 = v314;
      goto LABEL_40;
    }

    v250(v119, v314);

    v126 = v164;
    v127 = v163;
  }

  else
  {
    v165 = v310;
  }

  if (v318)
  {
    v167 = v314;
    sub_1CF07EE34(v314, v127);
    v168 = v291;
    v169 = v294;
    (*(v291 + 16))(v124, v315, v294);
    if ((*(v308 + 48))(v124, 1, v167) == 1)
    {
      (*(v168 + 8))(v124, v169);
      v170 = 1;
      v171 = v284;
    }

    else
    {
      v171 = v284;
      sub_1CF07EE34(v167, v284);
      v250(v124, v167);
      v170 = 0;
    }

    v172 = v306;
    v173 = v320;
    (*(v301 + 56))(v171, v170, 1, v320);
    result = swift_weakLoadStrong();
    if (!result)
    {
      goto LABEL_124;
    }

    v174 = (*(*result + 176))(result);

    v175 = v317;
    sub_1CF6B9E9C(v127, v171, v174, v165, v161, v307, v311, v162, v172, v309);
    v317 = v175;
    if (v175)
    {

      (*(v282 + 8))(v171, v283);
      return (v297)(v127, v173);
    }

    (*(v282 + 8))(v171, v283);
    (v297)(v127, v173);
    v126 = v322;
  }

  v176 = v126;
  v177 = sub_1CF07CD80(v314);
  v178 = v280;
  v179 = v279;
  v180 = v278;
  v181 = v295;
  if (v177)
  {
    sub_1CF436420(&v324);
    if (!sub_1CF959458(&v324, 0, v302))
    {
      sub_1CF436420(&v324);
      if (!sub_1CF959458(&v324, 0, v181) && *(v176 + v302[11]) == 5 && v258 != 2 && v299 != 2)
      {
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v183 = v182;
        result = (*(v179 + 8))(v180, v178);
        v184 = v183 * 1000000000.0;
        if (COERCE__INT64(fabs(v183 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v184 > -9.22337204e18)
          {
            if (v184 < 9.22337204e18)
            {
              v185 = (v176 + *(v314 + 16));
              *v185 = 0x2000000000000000;
              v185[1] = v184;
              goto LABEL_62;
            }

            goto LABEL_120;
          }

LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }
    }
  }

LABEL_62:
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v186 = (*(*result + 152))(result);

  v187 = v253 ^ 1;
  if ((v186 & 8) != 0 && ((v253 ^ 1) & 1) == 0 && v258 == 1)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    (*(*result + 304))(result);
  }

  result = swift_weakLoadStrong();
  v188 = v299;
  if (!result)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v189 = (*(*result + 152))(result);

  if (!(((v189 & 8) == 0) | v187 & 1) && v188 == 1)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(*result + 304))(result);
    }

    goto LABEL_128;
  }

  return result;
}

void (*sub_1CF6A4478(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t, char *, uint64_t)
{
  v104 = a5;
  v105 = a3;
  v106 = a4;
  v109 = a2;
  v103 = a1;
  v6 = *v5;
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1CF9E5268();
  v88 = *(v89 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v6[11];
  v14 = v6[12];
  v15 = v6[13];
  v111 = v6[10];
  v12 = v111;
  v112 = v13;
  v113 = v14;
  v114 = v15;
  v16 = type metadata accessor for TestingOperation();
  v17 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v85 = *(TupleTypeMetadata2 - 8);
  v18 = *(v85 + 64);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v90 = &v82 - v20;
  v94 = v17;
  v96 = *(v17 - 8);
  v21 = v96[8];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v84 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v92 = &v82 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v93 = &v82 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v108 = &v82 - v29;
  v100 = v16;
  v99 = *(v16 - 8);
  v30 = *(v99 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v83 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v95 = &v82 - v33;
  v101 = v14;
  v102 = v12;
  v111 = v12;
  v112 = v13;
  v97 = v15;
  v98 = v13;
  v113 = v14;
  v114 = v15;
  v34 = type metadata accessor for ItemReconciliation();
  v35 = sub_1CF9E75D8();
  v110 = *(v35 - 8);
  v36 = *(v110 + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v82 - v41;
  v43 = *(v34 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v46 = &v82 - v45;
  v107 = v5 + 2;
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v48 = (*(*result + 152))(result);

  if ((v48 & 0x80) == 0)
  {
    return result;
  }

  v49 = v110;
  (*(v110 + 16))(v42, v109, v35);
  if ((*(v43 + 48))(v42, 1, v34) == 1)
  {
    (*(v49 + 8))(v42, v35);
    v50 = v108;
  }

  else
  {
    (*(v43 + 32))(v46, v42, v34);
    v53 = type metadata accessor for ItemReconciliationHalf();
    v50 = v108;
    if (v46[*(v53 + 64) + 16] == 2)
    {
      return (*(v43 + 8))(v46, v34);
    }

    v54 = v53;
    v55 = &v46[*(v34 + 52)];
    v56 = type metadata accessor for ItemReconciliationHalf();
    if (v55[*(v56 + 64) + 16] == 2 || v46[*(v54 + 52)] == 1 || v55[*(v56 + 52)] == 1)
    {
      return (*(v43 + 8))(v46, v34);
    }

    (*(v43 + 8))(v46, v34);
  }

  (*(v43 + 16))(v39, v103, v34);
  (*(v43 + 56))(v39, 0, 1, v34);
  result = swift_weakLoadStrong();
  v51 = v115;
  v52 = v104;
  if (!result)
  {
    goto LABEL_29;
  }

  sub_1CF68E6AC(v39, result, v105, v106, v104, v50);
  if (v51)
  {
    (*(v110 + 8))(v39, v35);
  }

  (*(v110 + 8))(v39, v35);

  v58 = v99;
  v57 = v100;
  v59 = *(v99 + 48);
  if (v59(v50, 1, v100) != 1)
  {
    v60 = *(v58 + 32);
    v110 = v58 + 32;
    v108 = v60;
    (v60)(v95, v50, v57);
    v61 = v93;
    (*(v58 + 16))();
    (*(v58 + 56))(v61, 0, 1, v57);
    result = swift_weakLoadStrong();
    if (result)
    {
      v62 = v92;
      sub_1CF68E6AC(v109, result, v105, v106, v52, v92);
      v115 = 0;

      v63 = *(TupleTypeMetadata2 + 48);
      v64 = v96[2];
      v65 = v90;
      v66 = v94;
      v64(v90, v61, v94);
      v109 = v63;
      v64(&v65[v63], v62, v66);
      v67 = v61;
      v68 = v100;
      if (v59(v65, 1, v100) == 1)
      {
        v69 = v96[1];
        v69(v62, v66);
        v69(v67, v66);
        if (v59(&v65[v109], 1, v68) == 1)
        {
          v69(v65, v66);
          return (*(v99 + 8))(v95, v100);
        }
      }

      else
      {
        v70 = v84;
        v64(v84, v65, v66);
        v71 = v109;
        if (v59(&v65[v109], 1, v68) != 1)
        {
          v78 = v83;
          (v108)(v83, &v65[v71], v68);
          v79 = sub_1CF9465DC(v70, v78, v102, v98, v101, v97);
          v80 = *(v99 + 8);
          v80(v78, v68);
          v81 = v96[1];
          v81(v92, v66);
          v81(v93, v66);
          v80(v70, v68);
          v81(v65, v66);
          if (v79)
          {
            return (v80)(v95, v100);
          }

          goto LABEL_24;
        }

        v72 = v96[1];
        v72(v92, v66);
        v72(v93, v66);
        (*(v99 + 8))(v70, v68);
      }

      (*(v85 + 8))(v65, TupleTypeMetadata2);
LABEL_24:
      result = swift_weakLoadStrong();
      if (result)
      {
        v73 = result;
        sub_1CF9E5198();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        v74 = v86;
        v75 = v89;
        sub_1CF9E57D8();
        v76 = sub_1CF9E50D8();
        (*(v88 + 8))(v74, v75);
        v77 = v95;
        (*(*v73 + 520))(v95, v76);

        return (*(v99 + 8))(v77, v100);
      }

      goto LABEL_31;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  return (v96[1])(v50, v94);
}

uint64_t sub_1CF6A5084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[0] = a6;
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) == 0)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v14 = v13;
    result = (*(v8 + 8))(v11, v7);
    v15 = v14 * 1000000000.0;
    if (COERCE__INT64(fabs(v14 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v15 > -9.22337204e18)
    {
      if (v15 < 9.22337204e18)
      {
        v16 = a1;
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  (*(*result + 176))(result);

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v18 = v17;
  result = (*(v8 + 8))(v11, v7);
  v19 = v18 * 1000000000.0;
  if (COERCE__INT64(fabs(v18 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = a1 & 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
  v20 = v21[1];
  sub_1CF5215C0(v16);

  if (v20)
  {
    *v21[0] = v20;
  }

  return result;
}

uint64_t sub_1CF6A5304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF6A5438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a3;
  v27 = a5;
  v28 = a6;
  v26 = a4;
  v22 = a1;
  v23 = a2;
  v8 = v7[12];
  v9 = v7[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = v7[13];
  v12 = v7[11];
  v29 = AssociatedTypeWitness;
  v30 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  v13 = sub_1CF9E75D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  v18 = v33;
  result = sub_1CF6A5608(&v21 - v16, v22, v23, v25, 1, v26, v27, v28, v24);
  if (!v18)
  {
    v20 = result;
    (*(v14 + 8))(v17, v13);
    return v20 & 1;
  }

  return result;
}

uint64_t sub_1CF6B8584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v18 = type metadata accessor for ItemReconciliation();
  (*(v14 + 16))(v17, a1 + *(v18 + 52), v13);
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v17, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v19 + 32))(a6, v17, AssociatedTypeWitness);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF6B871C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v56 = a5;
  v58 = a2;
  v59 = a4;
  v62 = a6;
  v8 = *(*a3 + 88);
  v9 = *(*a3 + 80);
  v10 = *(*a3 + 96);
  v51 = *(*a3 + 104);
  v52 = v8;
  v63 = v8;
  v64 = v9;
  v65 = v51;
  v66 = v10;
  v11 = type metadata accessor for ItemReconciliation();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v49 - v13;
  v60 = v10;
  v54 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v49 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v49 - v23;
  v61 = v11;
  v25 = *(v11 + 52);
  v55 = a1;
  v26 = a1 + v25;
  (*(v16 + 16))(v20, a1 + v25, v15);
  if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v16 + 8))(v20, v15);
LABEL_3:
    *v62 = 0;
    return result;
  }

  (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
  v28 = a3[5];
  v29 = sub_1CF056558();
  v30 = v60;
  if (v29)
  {
    v31 = v26 + *(type metadata accessor for ItemReconciliationHalf() + 64);
    if (!*(v31 + 16) && (*(v31 + 1) & 1) != 0)
    {
      result = (*(v21 + 8))(v24, AssociatedTypeWitness);
      goto LABEL_3;
    }
  }

  v50 = v24;
  v32 = (*(*a3 + 176))();
  v33 = v57;
  v34 = v61;
  v35 = v56;
  v36 = v67;
  sub_1CF959950(v32, v58, v61, v59, v56, v57);
  v67 = v36;
  if (v36)
  {
    (*(v21 + 8))(v50, AssociatedTypeWitness);
  }

  v37 = v33 + *(v34 + 52);
  v38 = v54;
  v39 = type metadata accessor for ItemReconciliationHalf();
  if (*(v37 + *(v39 + 36)))
  {
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v40 = qword_1EDEABDE8;
    goto LABEL_14;
  }

  v40 = *(v37 + *(v39 + 40)) & 3;
  if (v40)
  {
LABEL_14:
    (*(v53 + 8))(v33, v61);
    result = (*(v21 + 8))(v50, AssociatedTypeWitness);
    *v62 = v40;
    return result;
  }

  v41 = v38;
  v42 = a3[3];
  v63 = v41;
  v64 = v52;
  v65 = v30;
  v66 = v51;
  ItemMetadata = type metadata accessor for Ingestion.FetchItemMetadata();
  v44 = v50;
  v45 = v67;
  v46 = (*(*v42 + 328))(v50, ItemMetadata, 0, v58, v59, v35);
  if (v45)
  {
    (*(v53 + 8))(v33, v61);
    return (*(v21 + 8))(v44, AssociatedTypeWitness);
  }

  else if (v46)
  {
    v47 = v62;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v48 = qword_1EDEABDE8;
    (*(v53 + 8))(v33, v61);
    result = (*(v21 + 8))(v50, AssociatedTypeWitness);
    *v47 = v48;
  }

  else
  {
    (*(v53 + 8))(v33, v61);
    result = (*(v21 + 8))(v44, AssociatedTypeWitness);
    *v62 = 0;
  }

  return result;
}

uint64_t sub_1CF6B8D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a5;
  v72 = a6;
  v53 = a4;
  v10 = *(*a1 + 88);
  v11 = *(*a1 + 96);
  v12 = *(*a1 + 104);
  v68 = *(*a1 + 80);
  v9 = v68;
  v69 = v10;
  v57 = v12;
  v58 = v10;
  v70 = v11;
  v71 = v12;
  v13 = type metadata accessor for ItemReconciliation();
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  v54 = v14;
  v55 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v60 = &v49 - v18;
  v63 = v13;
  v59 = *(v13 - 8);
  v19 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v49 - v20;
  v64 = v11;
  v65 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = sub_1CF9E75D8();
  v62 = *(v22 - 8);
  v23 = *(v62 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v49 - v25;
  v61 = *(AssociatedTypeWitness - 8);
  v27 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v49 - v28;
  v30 = a2;
  v31 = a2;
  v32 = a3;
  v33 = v66;
  result = (*(**(a1 + 32) + 288))(v31, a3, v67, v72);
  if (!v33)
  {
    v35 = v62;
    v51 = v30;
    v52 = v29;
    v50 = v32;
    v36 = v63;
    v66 = 0;
    v37 = v61;
    if ((*(v61 + 48))(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v35 + 8))(v26, v22);
      return 1;
    }

    v38 = v52;
    (*(v37 + 32))();
    v39 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
    if (sub_1CF9E6868())
    {
      (*(v37 + 8))(v38, AssociatedTypeWitness);
      return 1;
    }

    v40 = v37;
    v41 = *(a1 + 16);
    v42 = v60;
    v43 = v66;
    sub_1CF68DDB0(v38, v50, v67, v72, v60);
    if (v43)
    {
      return (*(v37 + 8))(v38, AssociatedTypeWitness);
    }

    v44 = v59;
    if ((*(v59 + 48))(v42, 1, v36) == 1)
    {
      (*(v37 + 8))(v52, AssociatedTypeWitness);
      (*(v55 + 8))(v42, v54);
    }

    else
    {
      v45 = v56;
      (*(v44 + 32))(v56, v42, v36);
      v46 = sub_1CF07CD80(v36);
      (*(v40 + 8))(v52, AssociatedTypeWitness);
      v47 = *(v36 + 52);
      if (v46 && v45[v47 + *(type metadata accessor for ItemReconciliationHalf() + 52)] == 1)
      {
        (*(v44 + 8))(v45, v36);
        return 0;
      }

      swift_getAssociatedTypeWitness();
      v48 = sub_1CF9E75D8();
      (*(*(v48 - 8) + 24))(v53, &v45[v47], v48);
      (*(v44 + 8))(v45, v36);
    }

    return 1;
  }

  return result;
}

uint64_t sub_1CF6B9310(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = a6;
  v122 = a3;
  v123 = a5;
  v114 = a4;
  v126 = a1;
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  v8 = *a2;
  v9 = *(*a2 + 104);
  v121 = a2;
  v125 = *(v8 + 96);
  v127 = v6;
  v128 = v7;
  v129 = v9;
  v130 = v125;
  v10 = type metadata accessor for ItemReconciliation();
  v106 = sub_1CF9E75D8();
  v105 = *(v106 - 8);
  v11 = *(v105 + 64);
  v12 = MEMORY[0x1EEE9AC00](v106);
  v112 = v95 - v13;
  v108 = v10;
  v107 = *(v10 - 8);
  v14 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v104 = v95 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v111 = *(TupleTypeMetadata2 - 8);
  v18 = *(v111 + 64);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v115 = v95 - v20;
  v21 = *(v17 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v110 = v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v116 = v95 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v118 = v95 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v124 = v95 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = v95 - v32;
  v34 = *(*(AssociatedTypeWitness - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v31);
  v109 = v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v119 = v95 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = v95 - v39;
  v127 = v7;
  v128 = v6;
  v42 = v41;
  v129 = v125;
  v130 = v9;
  v125 = v9;
  v43 = &v126[*(type metadata accessor for ItemReconciliation() + 52)];
  v113 = *(v21 + 16);
  v113(v33, v43, v17);
  v126 = *(v42 + 48);
  if ((v126)(v33, 1, AssociatedTypeWitness) == 1)
  {
    (*(v21 + 8))(v33, v17);
    return 1;
  }

  v102 = v42 + 48;
  v101 = v21;
  v103 = v17;
  v100 = v6;
  v45 = *(v42 + 32);
  v45(v40, v33, AssociatedTypeWitness);
  v46 = v131;
  (*(*v121[5] + 288))(v40, v122, v123, v120);
  v131 = v46;
  v47 = AssociatedTypeWitness;
  if (v46)
  {
    return (*(v42 + 8))(v40, AssociatedTypeWitness);
  }

  v97 = v45;
  v98 = v40;
  v99 = v42;
  if ((v126)(v124, 1, AssociatedTypeWitness) == 1)
  {
    (*(v99 + 8))(v98, AssociatedTypeWitness);
    (*(v101 + 8))(v124, v103);
    return 1;
  }

  v48 = v119;
  v49 = v124;
  v124 = (v42 + 32);
  v97(v119, v49, AssociatedTypeWitness);
  v50 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
  v51 = v98;
  if (sub_1CF9E6868())
  {
    v52 = *(v99 + 8);
    v52(v48, v47);
    v52(v51, v47);
    return 1;
  }

  v95[1] = v50;
  v53 = v99;
  v54 = v118;
  (*(v99 + 16))(v118, v48, v47);
  (*(v53 + 56))(v54, 0, 1, v47);
  v55 = v116;
  v56 = v113;
  v57 = v103;
  v113(v116, v114, v103);
  v58 = *(TupleTypeMetadata2 + 48);
  v59 = v115;
  v56(v115, v54, v57);
  v114 = v58;
  v60 = &v59[v58];
  v61 = v55;
  v56(v60, v55, v57);
  v62 = v126;
  v63 = (v126)(v59, 1, v47);
  v96 = v47;
  if (v63 == 1)
  {
    v64 = *(v101 + 8);
    v65 = v103;
    v64(v61, v103);
    v64(v118, v65);
    v66 = v62(&v59[v114], 1, v47);
    v67 = v131;
    if (v66 == 1)
    {
      v64(v59, v65);
      v70 = *(v99 + 8);
LABEL_19:
      v88 = v96;
      v70(v119, v96, v68, v69);
      (v70)(v98, v88);
      return 1;
    }

    goto LABEL_15;
  }

  v71 = v110;
  v72 = v103;
  v56(v110, v59, v103);
  v73 = v114;
  if (v62(&v59[v114], 1, v47) == 1)
  {
    v74 = v71;
    v75 = *(v101 + 8);
    v75(v116, v72);
    v75(v118, v72);
    (*(v99 + 8))(v74, v47);
    v67 = v131;
LABEL_15:
    (*(v111 + 8))(v59, TupleTypeMetadata2);
    v69 = v120;
    v76 = v121;
    v77 = v122;
    v68 = v123;
    goto LABEL_16;
  }

  v83 = v109;
  v97(v109, &v59[v73], v47);
  v84 = v71;
  v85 = sub_1CF9E6868();
  v70 = *(v99 + 8);
  (v70)(v83, v47);
  v86 = v59;
  v87 = *(v101 + 8);
  v87(v116, v72);
  v87(v118, v72);
  (v70)(v84, v47);
  v87(v86, v72);
  v67 = v131;
  v69 = v120;
  v76 = v121;
  v77 = v122;
  v68 = v123;
  if (v85)
  {
    goto LABEL_19;
  }

LABEL_16:
  v78 = v76[2];
  v79 = v112;
  v80 = v119;
  sub_1CF68E230(v119, v77, v68, v69, v112);
  if (v67)
  {
    v81 = *(v99 + 8);
    v82 = v96;
    v81(v80, v96);
    return (v81)(v98, v82);
  }

  else
  {
    v89 = *(v99 + 8);
    v90 = v96;
    v89(v80, v96);
    v89(v98, v90);
    v91 = v107;
    v92 = v108;
    if ((*(v107 + 48))(v79, 1, v108) == 1)
    {
      (*(v105 + 8))(v79, v106);
      return 1;
    }

    else
    {
      v93 = v104;
      (*(v91 + 32))(v104, v79, v92);
      v94 = v93[*(type metadata accessor for ItemReconciliationHalf() + 52)];
      (*(v91 + 8))(v93, v92);
      return v94 != 1;
    }
  }
}

uint64_t sub_1CF6B9E9C(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v83 = a4;
  v84 = a7;
  v90 = a2;
  v12 = *a3;
  v13 = *(*a3 + 104);
  v14 = *(*a3 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = sub_1CF9E75D8();
  v78 = *(v80 - 8);
  v16 = *(v78 + 64);
  v17 = MEMORY[0x1EEE9AC00](v80);
  v77 = &v75 - v18;
  v82 = AssociatedTypeWitness;
  v81 = *(AssociatedTypeWitness - 8);
  v19 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v75 - v20;
  v21 = *(v12 + 80);
  v22 = *(v12 + 96);
  v23 = type metadata accessor for ItemReconciliationHalf();
  v86 = *(v23 - 8);
  v87 = v23;
  v24 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v75 - v25;
  *&v26 = v21;
  *(&v26 + 1) = v14;
  *&v27 = v22;
  *(&v27 + 1) = v13;
  v91 = v26;
  v92 = v27;
  v28 = type metadata accessor for ItemReconciliation();
  v29 = sub_1CF9E75D8();
  v88 = *(v29 - 8);
  v89 = v29;
  v30 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v75 - v31;
  v33 = swift_getAssociatedTypeWitness();
  v34 = sub_1CF9E75D8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v75 - v38;
  v40 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v75 - v41;
  v43 = *(v35 + 16);
  v79 = a1;
  v44 = a1;
  v46 = v45;
  v43(v39, v44, v34);
  if ((*(v46 + 48))(v39, 1, v33) == 1)
  {
    return (*(v35 + 8))(v39, v34);
  }

  (*(v46 + 32))(v42, v39, v33);
  v49 = v88;
  v48 = v89;
  (*(v88 + 16))(v32, v90, v89);
  v50 = *(v28 - 8);
  if ((*(v50 + 48))(v32, 1, v28) == 1)
  {
    (*(v46 + 8))(v42, v33);
    return (*(v49 + 8))(v32, v48);
  }

  else
  {
    v89 = v33;
    v90 = v42;
    v51 = v85;
    v52 = v86;
    v53 = v87;
    (*(v86 + 16))(v85, v32, v87);
    (*(v50 + 8))(v32, v28);
    v54 = &v51[*(v53 + 64)];
    v55 = *v54;
    v56 = *(v54 + 1);
    v57 = v54[16];
    sub_1CF03C530(*v54, v56, v54[16]);
    (*(v52 + 8))(v51, v53);
    if (v57)
    {
      sub_1CF03D7A8(v55, v56, v57);
      return (*(v46 + 8))(v90, v89);
    }

    sub_1CF03D7A8(v55, v56, 0);
    v58 = v89;
    if ((v55 & 0x100) == 0)
    {
      return (*(v46 + 8))(v90, v89);
    }

    v88 = v46;
    v59 = a3[3];
    v60 = v90;
    v62 = v83;
    v61 = v84;
    v63 = v93;
    (*(*v59 + 392))(v90, v83, v84, a10);
    v93 = v63;
    if (v63)
    {
      v64 = v88;
      v65 = v60;
    }

    else
    {
      v66 = v78;
      v67 = v79 + *(v28 + 52);
      v68 = v77;
      v69 = v80;
      (*(v78 + 16))(v77, v67, v80);
      v70 = v81;
      if ((*(v81 + 48))(v68, 1, v82) == 1)
      {
        (*(v88 + 8))(v90, v58);
        return (*(v66 + 8))(v68, v69);
      }

      v71 = v76;
      v72 = v68;
      v73 = v82;
      (*(v70 + 32))(v76, v72, v82);
      v74 = v93;
      (*(*v59 + 400))(v71, v62, v61, a10);
      v93 = v74;
      if (!v74)
      {
        (*(v70 + 8))(v71, v73);
        return (*(v88 + 8))(v90, v58);
      }

      (*(v70 + 8))(v71, v73);
      v64 = v88;
      v65 = v90;
    }

    return (*(v64 + 8))(v65, v58);
  }
}

uint64_t sub_1CF6BA644(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v231 = a3;
  v233 = a2;
  v190 = sub_1CF9E6118();
  v189 = *(v190 - 8);
  v14 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v214 = &v185 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236[0] = a5;
  v236[1] = a6;
  v236[2] = a7;
  v236[3] = a8;
  v228 = type metadata accessor for ItemReconciliation();
  v188 = *(v228 - 8);
  v16 = *(v188 + 64);
  v17 = MEMORY[0x1EEE9AC00](v228);
  v187 = &v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v213 = &v185 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v191 = &v185 - v21;
  v218 = a8;
  v217 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v227 = *(AssociatedTypeWitness - 8);
  v23 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v198 = &v185 - v24;
  v232 = v25;
  v26 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v196 = *(TupleTypeMetadata2 - 8);
  v27 = *(v196 + 64);
  v28 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v211 = &v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v209 = &v185 - v31;
  v212 = v26;
  v234 = *(v26 - 8);
  v32 = *(v234 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v195 = &v185 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v223 = &v185 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v224 = &v185 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v194 = &v185 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v221 = &v185 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v222 = &v185 - v43;
  v216 = a7;
  v215 = a5;
  v44 = swift_getAssociatedTypeWitness();
  v45 = *(v44 - 8);
  v46 = v45[8];
  MEMORY[0x1EEE9AC00](v44);
  v197 = &v185 - v47;
  v48 = sub_1CF9E75D8();
  v49 = swift_getTupleTypeMetadata2();
  v193 = *(v49 - 8);
  v50 = *(v193 + 64);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v207 = &v185 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v185 - v54;
  v200 = *(v48 - 8);
  v56 = v200;
  v57 = *(v200 + 64);
  v58 = MEMORY[0x1EEE9AC00](v53);
  v192 = &v185 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v219 = &v185 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v220 = &v185 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v199 = &v185 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v68 = &v185 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v185 - v69;
  v210 = *a4;
  v229 = v56;
  v73 = *(v56 + 16);
  v71 = (v56 + 16);
  v72 = v73;
  v235 = a1;
  v73(&v185 - v69, a1, v48);
  v74 = v45[2];
  v203 = v45 + 2;
  v202 = v74;
  v74(v68, v233, v44);
  v75 = v45[7];
  v201 = v45 + 7;
  v226 = v75;
  v75(v68, 0, 1, v44);
  v225 = v49;
  v76 = *(v49 + 48);
  v73(v55, v70, v48);
  v73(&v55[v76], v68, v48);
  v208 = v45;
  v77 = v45[6];
  v78 = v77(v55, 1, v44);
  v206 = v77;
  v205 = v45 + 6;
  v204 = v73;
  if (v78 == 1)
  {
    v199 = v71;
    v79 = *(v200 + 8);
    v79(v68, v48);
    v79(v70, v48);
    if (v77(&v55[v76], 1, v44) == 1)
    {
      v79(v55, v48);
      v80 = v235;
      v81 = v233;
      v82 = v202;
      goto LABEL_9;
    }

    v82 = v202;
    goto LABEL_7;
  }

  v72(v199, v55, v48);
  if (v77(&v55[v76], 1, v44) == 1)
  {
    v79 = *(v200 + 8);
    v79(v68, v48);
    v79(v70, v48);
    (v208[1])(v199, v44);
    v82 = v202;
LABEL_7:
    (*(v193 + 8))(v55, v225);
    v80 = v235;
LABEL_8:
    v83 = type metadata accessor for ItemReconciliationHalf();
    (*(*(v83 - 8) + 8))(v80, v83);
    v81 = v233;
    v84 = sub_1CF078A84(v80);
    (v79)(v80, v48, v84);
    v82(v80, v81, v44);
    v226(v80, 0, 1, v44);
    goto LABEL_9;
  }

  v127 = v208;
  v128 = v197;
  (v208[4])(v197, &v55[v76], v44);
  v129 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
  v130 = v199;
  v186 = sub_1CF9E6868();
  v185 = v127[1];
  v185(v128, v44);
  v79 = *(v200 + 8);
  v79(v68, v48);
  v79(v70, v48);
  v185(v130, v44);
  v79(v55, v48);
  v80 = v235;
  v81 = v233;
  v82 = v202;
  if ((v186 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v233 = v79;
  v85 = v220;
  v86 = v204;
  v204(v220, v80, v48);
  v87 = v82;
  v88 = v219;
  v89 = v81;
  v90 = v85;
  v87(v219, v89, v44);
  v226(v88, 0, 1, v44);
  v91 = *(v225 + 48);
  v92 = v207;
  v86(v207, v85, v48);
  v86(&v92[v91], v88, v48);
  v93 = v206;
  v94 = v206(v92, 1, v44);
  v95 = v86;
  v96 = v234;
  if (v94 == 1)
  {
    v97 = v88;
    v98 = v233;
    v233(v97, v48);
    v98(v90, v48);
    if (v93(&v92[v91], 1, v44) == 1)
    {
      v98(v92, v48);
      v99 = v212;
      v100 = v222;
      v101 = v231;
      goto LABEL_14;
    }

    goto LABEL_56;
  }

  v102 = v192;
  v95(v192, v92, v48);
  if (v93(&v92[v91], 1, v44) == 1)
  {
    v183 = v233;
    v233(v219, v48);
    v183(v220, v48);
    (v208[1])(v102, v44);
LABEL_56:
    (*(v193 + 8))(v92, v225);
LABEL_57:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 436);
  }

  v103 = v208;
  v104 = v197;
  (v208[4])(v197, &v92[v91], v44);
  v105 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
  v106 = sub_1CF9E6868();
  v107 = v103[1];
  v107(v104, v44);
  v108 = v233;
  v233(v219, v48);
  v108(v220, v48);
  v107(v102, v44);
  v108(v92, v48);
  v99 = v212;
  v100 = v222;
  v96 = v234;
  v101 = v231;
  if ((v106 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_14:
  v110 = v96 + 16;
  v109 = *(v96 + 16);
  v229 = *(v228 + 52);
  v109(v100, (v235 + v229), v99);
  v111 = v227;
  v112 = v221;
  v113 = v232;
  v219 = *(v227 + 16);
  v220 = (v227 + 16);
  (v219)(v221, v101, v232);
  v225 = *(v111 + 56);
  v226 = (v111 + 56);
  (v225)(v112, 0, 1, v113);
  v114 = v100;
  v115 = v96;
  v116 = *(TupleTypeMetadata2 + 48);
  v117 = v209;
  v109(v209, v114, v99);
  v216 = v116;
  v109(&v117[v116], v112, v99);
  v118 = *(v111 + 48);
  v233 = (v111 + 48);
  v119 = v118(v117, 1, v113);
  v215 = v110;
  if (v119 == 1)
  {
    v120 = *(v115 + 8);
    v120(v112, v99);
    v120(v114, v99);
    if (v118(&v117[v216], 1, v113) == 1)
    {
      v120(v117, v99);
      v121 = v235;
      v122 = v232;
      v123 = v229;
      v124 = v219;
      goto LABEL_24;
    }

    v121 = v235;
    goto LABEL_22;
  }

  v125 = v194;
  v109(v194, v117, v99);
  v126 = v216;
  v212 = v118;
  if (v118(&v117[v216], 1, v113) == 1)
  {
    v120 = *(v115 + 8);
    v120(v221, v99);
    v120(v222, v99);
    (*(v227 + 8))(v125, v113);
    v121 = v235;
    v118 = v212;
LABEL_22:
    (*(v196 + 8))(v117, TupleTypeMetadata2);
    v124 = v219;
LABEL_23:
    v131 = type metadata accessor for ItemReconciliationHalf();
    (*(*(v131 - 8) + 8))(v121 + v229, v131);
    v122 = v232;
    v123 = v229;
    v132 = sub_1CF078A84(v121 + v229);
    (v120)(v121 + v123, v99, v132);
    v124(v121 + v123, v231, v122);
    (v225)(v121 + v123, 0, 1, v122);
    goto LABEL_24;
  }

  v158 = v227;
  v159 = v198;
  (*(v227 + 32))(v198, &v117[v126], v113);
  v160 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
  LODWORD(v216) = sub_1CF9E6868();
  v161 = *(v158 + 8);
  v161(v159, v232);
  v120 = *(v234 + 8);
  v120(v221, v99);
  v120(v222, v99);
  v161(v125, v232);
  v122 = v232;
  v121 = v235;
  v120(v117, v99);
  v118 = v212;
  v123 = v229;
  v124 = v219;
  if ((v216 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v232 = v120;
  v133 = (v121 + v123);
  v134 = v224;
  v109(v224, v133, v99);
  v135 = v223;
  v124(v223, v231, v122);
  (v225)(v135, 0, 1, v122);
  v136 = *(TupleTypeMetadata2 + 48);
  v137 = v211;
  v109(v211, v134, v99);
  v109(&v137[v136], v135, v99);
  v138 = v118(v137, 1, v122);
  v139 = v109;
  v140 = v118;
  if (v138 == 1)
  {
    v141 = v232;
    v232(v135, v99);
    v141(v134, v99);
    if (v118(&v137[v136], 1, v122) == 1)
    {
      result = (v141)(v137, v99);
      v143 = v214;
      v144 = v235;
      goto LABEL_29;
    }

    goto LABEL_59;
  }

  v145 = v195;
  v139(v195, v137, v99);
  if (v140(&v137[v136], 1, v122) == 1)
  {
    v184 = v232;
    v232(v223, v99);
    v184(v224, v99);
    (*(v227 + 8))(v145, v122);
LABEL_59:
    (*(v196 + 8))(v137, TupleTypeMetadata2);
LABEL_60:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 449);
  }

  v146 = v227;
  v147 = v198;
  (*(v227 + 32))(v198, &v137[v136], v122);
  v148 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
  v149 = sub_1CF9E6868();
  v150 = *(v146 + 8);
  v150(v147, v122);
  v151 = v232;
  v232(v223, v99);
  v151(v224, v99);
  v150(v145, v122);
  result = (v151)(v137, v99);
  v143 = v214;
  v144 = v235;
  if ((v149 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_29:
  v152 = v210;
  v153 = v228;
  v154 = *(v228 + 56);
  v155 = *(v144 + v154);
  v156 = v213;
  if (v155 <= 1)
  {
    v157 = *(v144 + v154);
    if (*(v144 + v154))
    {
      v157 = 1;
    }
  }

  else if (v155 == 2)
  {
    v157 = 2;
  }

  else
  {
    if (v155 != 3)
    {
      goto LABEL_54;
    }

    v157 = 4;
  }

  if (v157 == qword_1CFA11A30[v210])
  {
    goto LABEL_54;
  }

  if (v155 == 3)
  {
    if (!v210)
    {
      goto LABEL_54;
    }
  }

  else if (!*(v144 + v154) && v210 == 3)
  {
    goto LABEL_54;
  }

  LODWORD(v234) = v210;
  v162 = v188;
  v163 = *(v188 + 16);
  v164 = v191;
  v163(v191);
  v165 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  (v163)(v156, v164, v153);
  v166 = v156;
  v167 = sub_1CF9E6108();
  v168 = sub_1CF9E72B8();
  if (os_log_type_enabled(v167, v168))
  {
    LODWORD(v233) = v168;
    v169 = swift_slowAlloc();
    v232 = swift_slowAlloc();
    v236[0] = v232;
    *v169 = 136446466;
    v170 = v187;
    (v163)(v187, v166, v153);
    v171 = *(v162 + 8);
    v171(v166, v153);
    v172 = sub_1CF082CB0(v153);
    v174 = v173;
    v171(v170, v153);
    v175 = sub_1CEFD0DF0(v172, v174, v236);

    *(v169 + 4) = v175;
    *(v169 + 12) = 2082;
    v152 = v234;
    if (v234 > 1)
    {
      v176 = v191;
      v177 = v167;
      if (v234 == 2)
      {
        v178 = 0xE700000000000000;
        v179 = 0x6B6E696C6D7973;
      }

      else
      {
        v178 = 0xE500000000000000;
        v179 = 0x7361696C61;
      }
    }

    else
    {
      v176 = v191;
      v177 = v167;
      v178 = 0xE300000000000000;
      if (v234)
      {
        v179 = 7498084;
      }

      else
      {
        v179 = 6516580;
      }
    }

    v181 = v232;
    v182 = sub_1CEFD0DF0(v179, v178, v236);

    *(v169 + 14) = v182;
    _os_log_impl(&dword_1CEFC7000, v177, v233, "inconsistent item kind %{public}s new kind %{public}s", v169, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v181, -1, -1);
    MEMORY[0x1D386CDC0](v169, -1, -1);

    (*(v189 + 8))(v214, v190);
    result = (v171)(v176, v228);
    v144 = v235;
  }

  else
  {
    v180 = *(v162 + 8);
    v180(v166, v153);

    (*(v189 + 8))(v143, v190);
    result = (v180)(v164, v153);
    v144 = v235;
    v152 = v234;
  }

LABEL_54:
  *(v144 + v154) = v152;
  return result;
}
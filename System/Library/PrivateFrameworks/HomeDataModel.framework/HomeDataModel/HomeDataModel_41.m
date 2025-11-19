uint64_t sub_1D1A329B0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 104) = v0;
    v5 = sub_1D1A32CCC;
  }

  else
  {
    v5 = sub_1D1A32BF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1A32AD0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 104) = v0;
    v5 = sub_1D1A32CCC;
  }

  else
  {
    v5 = sub_1D1A32BF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1A32BF0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  sub_1D1A38680(*(v0 + 40), type metadata accessor for StaticOnOffCluster);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1));
  sub_1D1A38680(v2, type metadata accessor for StaticCluster);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D1A32CCC()
{
  sub_1D1A38680(*(v0 + 40), type metadata accessor for StaticOnOffCluster);
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1((v2 + *(v0 + 128)));
  sub_1D1A38680(v2, type metadata accessor for StaticCluster);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1A32DB0()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D1A32FA0;
  }

  else
  {
    v3 = sub_1D1A32EC4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A32EC4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  sub_1D1A38680(*(v0 + 32), type metadata accessor for StaticColorControlCluster);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1));
  sub_1D1A38680(v2, type metadata accessor for StaticCluster);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D1A32FA0()
{
  sub_1D1A38680(*(v0 + 32), type metadata accessor for StaticColorControlCluster);
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1((v2 + *(v0 + 128)));
  sub_1D1A38680(v2, type metadata accessor for StaticCluster);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1A33088(uint64_t a1)
{
  v2 = sub_1D1A3774C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A330C4(uint64_t a1)
{
  v2 = sub_1D1A3774C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A33100()
{
  v1 = *v0;
  v2 = 0x666E496369736162;
  v3 = 0x6E6F436C6576656CLL;
  v4 = 0x6E6F43726F6C6F63;
  if (v1 != 4)
  {
    v4 = 0x756F537265776F70;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x66664F6E6FLL;
  if (v1 != 1)
  {
    v5 = 0x6B636F4C726F6F64;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1A331D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1A38470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1A331FC(uint64_t a1)
{
  v2 = sub_1D1A37554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A33238(uint64_t a1)
{
  v2 = sub_1D1A37554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A33274(uint64_t a1)
{
  v2 = sub_1D1A375FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A332B0(uint64_t a1)
{
  v2 = sub_1D1A375FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A332EC(uint64_t a1)
{
  v2 = sub_1D1A376A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A33328(uint64_t a1)
{
  v2 = sub_1D1A376A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A33364(uint64_t a1)
{
  v2 = sub_1D1A37650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A333A0(uint64_t a1)
{
  v2 = sub_1D1A37650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A333DC(uint64_t a1)
{
  v2 = sub_1D1A376F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A33418(uint64_t a1)
{
  v2 = sub_1D1A376F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A33454(uint64_t a1)
{
  v2 = sub_1D1A375A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A33490(uint64_t a1)
{
  v2 = sub_1D1A375A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCluster.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493A8, &qword_1D1E93700);
  v86 = *(v2 - 8);
  v87 = v2;
  v3 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v85 = &v60 - v4;
  v83 = type metadata accessor for StaticClusterPowerSource();
  v5 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493B0, &qword_1D1E93708);
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v60 - v9;
  v78 = type metadata accessor for StaticColorControlCluster();
  v10 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493B8, &qword_1D1E93710);
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v60 - v14;
  v73 = type metadata accessor for StaticLevelControlCluster();
  v15 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493C0, &qword_1D1E93718);
  v71 = *(v72 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v60 - v18;
  v68 = type metadata accessor for StaticDoorLockCluster();
  v19 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493C8, &qword_1D1E93720);
  v66 = *(v67 - 8);
  v21 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v60 - v22;
  v63 = type metadata accessor for StaticOnOffCluster();
  v23 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493D0, &qword_1D1E93728);
  v61 = *(v62 - 8);
  v25 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v27 = &v60 - v26;
  v28 = type metadata accessor for StaticBasicInfoCluster();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for StaticCluster();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493D8, &qword_1D1E93730);
  v89 = *(v36 - 8);
  v90 = v36;
  v37 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v60 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A37554();
  v88 = v39;
  sub_1D1E6930C();
  sub_1D1A386E0(v91, v35, type metadata accessor for StaticCluster);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v42 = v74;
      sub_1D1A377A0(v35, v74, type metadata accessor for StaticLevelControlCluster);
      v95 = 3;
      sub_1D1A37650();
      v54 = v75;
      v44 = v90;
      v45 = v88;
      sub_1D1E68DFC();
      sub_1D1A37850(&qword_1EC649410, type metadata accessor for StaticLevelControlCluster);
      v55 = v77;
      sub_1D1E68F1C();
      (*(v76 + 8))(v54, v55);
      v47 = type metadata accessor for StaticLevelControlCluster;
    }

    else
    {
      v44 = v90;
      v45 = v88;
      if (EnumCaseMultiPayload == 4)
      {
        v42 = v79;
        sub_1D1A377A0(v35, v79, type metadata accessor for StaticColorControlCluster);
        v96 = 4;
        sub_1D1A375FC();
        v48 = v80;
        sub_1D1E68DFC();
        sub_1D1A37850(&qword_1EC649400, type metadata accessor for StaticColorControlCluster);
        v49 = v82;
        sub_1D1E68F1C();
        (*(v81 + 8))(v48, v49);
        v47 = type metadata accessor for StaticColorControlCluster;
      }

      else
      {
        v42 = v84;
        sub_1D1A377A0(v35, v84, type metadata accessor for StaticClusterPowerSource);
        v97 = 5;
        sub_1D1A375A8();
        v58 = v85;
        sub_1D1E68DFC();
        sub_1D1A37850(&qword_1EC6493F0, type metadata accessor for StaticClusterPowerSource);
        v59 = v87;
        sub_1D1E68F1C();
        (*(v86 + 8))(v58, v59);
        v47 = type metadata accessor for StaticClusterPowerSource;
      }
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D1A377A0(v35, v31, type metadata accessor for StaticBasicInfoCluster);
      v92 = 0;
      sub_1D1A3774C();
      v50 = v90;
      v51 = v88;
      sub_1D1E68DFC();
      sub_1D1A37850(&qword_1EC649440, type metadata accessor for StaticBasicInfoCluster);
      v52 = v62;
      sub_1D1E68F1C();
      (*(v61 + 8))(v27, v52);
      sub_1D1A38680(v31, type metadata accessor for StaticBasicInfoCluster);
      return (*(v89 + 8))(v51, v50);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v42 = v64;
      sub_1D1A377A0(v35, v64, type metadata accessor for StaticOnOffCluster);
      v93 = 1;
      sub_1D1A376F8();
      v43 = v65;
      v44 = v90;
      v45 = v88;
      sub_1D1E68DFC();
      sub_1D1A37850(&qword_1EC649430, type metadata accessor for StaticOnOffCluster);
      v46 = v67;
      sub_1D1E68F1C();
      (*(v66 + 8))(v43, v46);
      v47 = type metadata accessor for StaticOnOffCluster;
    }

    else
    {
      v42 = v69;
      sub_1D1A377A0(v35, v69, type metadata accessor for StaticDoorLockCluster);
      v94 = 2;
      sub_1D1A376A4();
      v56 = v70;
      v44 = v90;
      v45 = v88;
      sub_1D1E68DFC();
      sub_1D1A37850(&qword_1EC649420, type metadata accessor for StaticDoorLockCluster);
      v57 = v72;
      sub_1D1E68F1C();
      (*(v71 + 8))(v56, v57);
      v47 = type metadata accessor for StaticDoorLockCluster;
    }
  }

  sub_1D1A38680(v42, v47);
  return (*(v89 + 8))(v45, v44);
}

uint64_t StaticCluster.hash(into:)(uint64_t a1)
{
  v40 = a1;
  v2 = type metadata accessor for StaticClusterPowerSource();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticColorControlCluster();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticLevelControlCluster();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StaticDoorLockCluster();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StaticOnOffCluster();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for StaticBasicInfoCluster();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for StaticCluster();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1A386E0(v1, v29, type metadata accessor for StaticCluster);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D1A377A0(v29, v13, type metadata accessor for StaticLevelControlCluster);
      MEMORY[0x1D3892850](3);
      StaticLevelControlCluster.hash(into:)();
      v35 = type metadata accessor for StaticLevelControlCluster;
      v36 = v13;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1D1A377A0(v29, v9, type metadata accessor for StaticColorControlCluster);
      v37 = v40;
      MEMORY[0x1D3892850](4);
      StaticColorControlCluster.hash(into:)(v37);
      v35 = type metadata accessor for StaticColorControlCluster;
      v36 = v9;
    }

    else
    {
      sub_1D1A377A0(v29, v5, type metadata accessor for StaticClusterPowerSource);
      MEMORY[0x1D3892850](5);
      StaticClusterPowerSource.hash(into:)();
      v35 = type metadata accessor for StaticClusterPowerSource;
      v36 = v5;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1A377A0(v29, v21, type metadata accessor for StaticOnOffCluster);
      MEMORY[0x1D3892850](1);
      sub_1D1E66A7C();
      sub_1D1A37850(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      v31 = type metadata accessor for EndpointPath(0);
      MEMORY[0x1D3892890](*&v21[*(v31 + 20)]);
      v32 = *&v21[*(v31 + 24)];
      sub_1D1E6923C();
      v33 = dword_1D1E940B4[v21[*(type metadata accessor for ClusterPath(0) + 20)]];
      sub_1D1E6924C();
      v34 = v21[*(v18 + 20)];
      sub_1D1E6922C();
      v35 = type metadata accessor for StaticOnOffCluster;
      v36 = v21;
    }

    else
    {
      sub_1D1A377A0(v29, v17, type metadata accessor for StaticDoorLockCluster);
      MEMORY[0x1D3892850](2);
      StaticDoorLockCluster.hash(into:)();
      v35 = type metadata accessor for StaticDoorLockCluster;
      v36 = v17;
    }
  }

  else
  {
    sub_1D1A377A0(v29, v25, type metadata accessor for StaticBasicInfoCluster);
    MEMORY[0x1D3892850](0);
    StaticBasicInfoCluster.hash(into:)();
    v35 = type metadata accessor for StaticBasicInfoCluster;
    v36 = v25;
  }

  return sub_1D1A38680(v36, v35);
}

uint64_t StaticCluster.hashValue.getter()
{
  sub_1D1E6920C();
  StaticCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticCluster.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649448, &qword_1D1E93738);
  v4 = *(v3 - 8);
  v107 = v3;
  v108 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v110 = &v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649450, &qword_1D1E93740);
  v105 = *(v7 - 8);
  v106 = v7;
  v8 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v109 = &v89 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649458, &qword_1D1E93748);
  v104 = *(v103 - 8);
  v10 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v115 = &v89 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649460, &qword_1D1E93750);
  v102 = *(v99 - 8);
  v12 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v114 = &v89 - v13;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649468, &qword_1D1E93758);
  v100 = *(v101 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v113 = &v89 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649470, &qword_1D1E93760);
  v97 = *(v98 - 8);
  v16 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v111 = &v89 - v17;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649478, &unk_1D1E93768);
  v117 = *(v119 - 8);
  v18 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v20 = &v89 - v19;
  v118 = type metadata accessor for StaticCluster();
  v21 = *(*(v118 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v118);
  v96 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v95 = &v89 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v89 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v89 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v89 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v89 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v89 - v38;
  v41 = a1[3];
  v40 = a1[4];
  v121 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1D1A37554();
  v112 = v20;
  v42 = v120;
  sub_1D1E692FC();
  if (!v42)
  {
    v90 = v34;
    v91 = v31;
    v92 = v28;
    v93 = v37;
    v43 = v111;
    v45 = v113;
    v44 = v114;
    v120 = 0;
    v46 = v115;
    v94 = v39;
    v48 = v118;
    v47 = v119;
    v49 = v116;
    v50 = v112;
    v51 = sub_1D1E68DDC();
    v52 = (2 * *(v51 + 16)) | 1;
    v122 = v51;
    v123 = v51 + 32;
    v124 = 0;
    v125 = v52;
    v53 = sub_1D18085D8();
    v54 = v47;
    if (v53 == 6 || v124 != v125 >> 1)
    {
      v60 = sub_1D1E688EC();
      swift_allocError();
      v62 = v61;
      v63 = v54;
      v64 = v50;
      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v62 = v48;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v60 - 8) + 104))(v62, *MEMORY[0x1E69E6AF8], v60);
      swift_willThrow();
      (*(v117 + 8))(v64, v63);
    }

    else
    {
      if (v53 <= 2u)
      {
        if (v53)
        {
          v55 = v120;
          if (v53 != 1)
          {
            v126 = 2;
            sub_1D1A376A4();
            v78 = v44;
            sub_1D1E68C4C();
            if (!v55)
            {
              type metadata accessor for StaticDoorLockCluster();
              sub_1D1A37850(&qword_1EC649498, type metadata accessor for StaticDoorLockCluster);
              v85 = v91;
              v86 = v99;
              sub_1D1E68D7C();
              v87 = v117;
              (*(v102 + 8))(v78, v86);
              (*(v87 + 8))(v50, v47);
              swift_unknownObjectRelease();
              swift_storeEnumTagMultiPayload();
              v88 = v85;
              goto LABEL_27;
            }

            (*(v117 + 8))(v50, v47);
            goto LABEL_10;
          }

          v126 = 1;
          sub_1D1A376F8();
          v56 = v45;
          v57 = v47;
          sub_1D1E68C4C();
          if (!v55)
          {
            type metadata accessor for StaticOnOffCluster();
            sub_1D1A37850(&qword_1EC6494A0, type metadata accessor for StaticOnOffCluster);
            v58 = v90;
            v59 = v101;
            sub_1D1E68D7C();
            (*(v100 + 8))(v56, v59);
            (*(v117 + 8))(v50, v57);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v88 = v58;
LABEL_27:
            v67 = v49;
            goto LABEL_28;
          }
        }

        else
        {
          v126 = 0;
          sub_1D1A3774C();
          v57 = v47;
          v73 = v120;
          sub_1D1E68C4C();
          if (!v73)
          {
            type metadata accessor for StaticBasicInfoCluster();
            sub_1D1A37850(&qword_1EC6494A8, type metadata accessor for StaticBasicInfoCluster);
            v74 = v93;
            v75 = v98;
            sub_1D1E68D7C();
            (*(v97 + 8))(v43, v75);
            (*(v117 + 8))(v50, v57);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v67 = v49;
            v88 = v74;
LABEL_28:
            v68 = v94;
            goto LABEL_29;
          }
        }

        goto LABEL_24;
      }

      v67 = v49;
      if (v53 != 3)
      {
        v68 = v94;
        if (v53 == 4)
        {
          v126 = 4;
          sub_1D1A375FC();
          v69 = v109;
          v57 = v54;
          v70 = v120;
          sub_1D1E68C4C();
          if (!v70)
          {
            type metadata accessor for StaticColorControlCluster();
            sub_1D1A37850(&qword_1EC649488, type metadata accessor for StaticColorControlCluster);
            v71 = v95;
            v72 = v106;
            sub_1D1E68D7C();
            (*(v105 + 8))(v69, v72);
            (*(v117 + 8))(v50, v119);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v88 = v71;
LABEL_29:
            sub_1D1A377A0(v88, v68, type metadata accessor for StaticCluster);
            sub_1D1A377A0(v68, v67, type metadata accessor for StaticCluster);
            return __swift_destroy_boxed_opaque_existential_1(v121);
          }
        }

        else
        {
          v126 = 5;
          sub_1D1A375A8();
          v57 = v54;
          v79 = v120;
          sub_1D1E68C4C();
          if (!v79)
          {
            type metadata accessor for StaticClusterPowerSource();
            sub_1D1A37850(&qword_1EC649480, type metadata accessor for StaticClusterPowerSource);
            v80 = v96;
            v81 = v107;
            v82 = v110;
            sub_1D1E68D7C();
            (*(v108 + 8))(v82, v81);
            (*(v117 + 8))(v50, v57);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v88 = v80;
            goto LABEL_29;
          }
        }

LABEL_24:
        (*(v117 + 8))(v50, v57);
        goto LABEL_10;
      }

      v76 = v49;
      v126 = 3;
      sub_1D1A37650();
      v77 = v120;
      sub_1D1E68C4C();
      v68 = v94;
      if (!v77)
      {
        type metadata accessor for StaticLevelControlCluster();
        sub_1D1A37850(&qword_1EC649490, type metadata accessor for StaticLevelControlCluster);
        v83 = v92;
        v84 = v103;
        sub_1D1E68D7C();
        (*(v104 + 8))(v46, v84);
        (*(v117 + 8))(v50, v119);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v88 = v83;
        v67 = v76;
        goto LABEL_29;
      }

      (*(v117 + 8))(v50, v54);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v121);
}

uint64_t sub_1D1A35560()
{
  sub_1D1E6920C();
  StaticCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A355A4()
{
  sub_1D1E6920C();
  StaticCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A35610()
{
  result = sub_1D1E6821C();
  qword_1EC6BE168 = result;
  return result;
}

id sub_1D1A35634()
{
  if (qword_1EC6422E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC6BE168;
  qword_1EC649398 = qword_1EC6BE168;

  return v1;
}

uint64_t static StaticCluster.expectedValueInterval.getter()
{
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC649398;
  v1 = qword_1EC649398;
  return v0;
}

void static StaticCluster.resetExpectedValueInterval()()
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D1E6709C();
  __swift_project_value_buffer(v0, qword_1EE07A0B0);
  v1 = sub_1D1E6707C();
  v2 = sub_1D1E6835C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D16EC000, v1, v2, "StaticCluster: Resetting command expected interval to default", v3, 2u);
    MEMORY[0x1D3893640](v3, -1, -1);
  }

  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC6422E0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC649398;
  qword_1EC649398 = qword_1EC6BE168;
  v4 = qword_1EC6BE168;
}

void static StaticCluster.set(expectedValueInterval:reason:)(void *a1)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07A0B0);
  v3 = a1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v6 = 136315394;
    if (a1)
    {
      v7 = [v3 description];
      v8 = sub_1D1E6781C();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = sub_1D1B1312C(v8, v10, &v18);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = sub_1D1E6888C();
    v14 = sub_1D1B1312C(v12, v13, &v18);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1D16EC000, v4, v5, "StaticCluster: Setting command expected interval to %s for %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v17 = qword_1EC649398;
  qword_1EC649398 = a1;
  v15 = v3;
}

uint64_t sub_1D1A35AD8@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a4;
  v111 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448C8, &qword_1D1E94060);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v109 = &v87 - v8;
  v9 = type metadata accessor for StaticClusterPowerSource();
  v107 = *(v9 - 8);
  v108 = v9;
  v10 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649560, &unk_1D1E94068);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v106 = &v87 - v14;
  v15 = type metadata accessor for StaticDoorLockCluster();
  v104 = *(v15 - 8);
  v105 = v15;
  v16 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646F08, &unk_1D1E83910);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = &v87 - v20;
  v21 = type metadata accessor for StaticColorControlCluster();
  v101 = *(v21 - 8);
  v102 = v21;
  v22 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v90 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649568, &qword_1D1E94078);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v100 = &v87 - v26;
  v27 = type metadata accessor for StaticLevelControlCluster();
  v98 = *(v27 - 8);
  v99 = v27;
  v28 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v88 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649570, &qword_1D1E94080);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v95 = &v87 - v32;
  v33 = type metadata accessor for StaticOnOffCluster();
  v93 = *(v33 - 8);
  v94 = v33;
  v34 = *(v93 + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v97 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v89 = &v87 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649578, &qword_1D1E94088);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v87 - v40;
  v42 = type metadata accessor for StaticBasicInfoCluster();
  v96 = *(v42 - 8);
  v43 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v87 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for ClusterPath(0);
  v47 = v46 - 8;
  v48 = *(*(v46 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v87 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v87 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v87 - v55;
  v57 = *a1;
  v58 = *a2;
  v59 = a2[1];
  sub_1D1A386E0(v111, &v87 - v55, type metadata accessor for EndpointPath);
  v56[*(v47 + 28)] = v57;
  if (v57 > 11)
  {
    switch(v57)
    {
      case 12:
        sub_1D1A386E0(v56, v54, type metadata accessor for ClusterPath);
        v112 = v58;
        v113 = v59;

        v64 = v100;
        sub_1D19C801C(v54, &v112, v100);
        sub_1D1A38680(v56, type metadata accessor for ClusterPath);
        if ((*(v98 + 48))(v64, 1, v99) != 1)
        {
          v70 = v64;
          v71 = v88;
          sub_1D1A377A0(v70, v88, type metadata accessor for StaticLevelControlCluster);
          v72 = v71;
          v68 = v110;
          sub_1D1A377A0(v72, v110, type metadata accessor for StaticLevelControlCluster);
          v69 = type metadata accessor for StaticCluster();
          goto LABEL_33;
        }

        v65 = &qword_1EC649568;
        v66 = &qword_1D1E94078;
        break;
      case 17:
        sub_1D1A386E0(v56, v54, type metadata accessor for ClusterPath);
        v112 = v58;
        v113 = v59;

        v64 = v103;
        StaticColorControlCluster.init(path:valueSource:)(v54, &v112, v103);
        sub_1D1A38680(v56, type metadata accessor for ClusterPath);
        if ((*(v101 + 48))(v64, 1, v102) != 1)
        {
          v84 = v64;
          v85 = v90;
          sub_1D1A377A0(v84, v90, type metadata accessor for StaticColorControlCluster);
          v86 = v85;
          v68 = v110;
          sub_1D1A377A0(v86, v110, type metadata accessor for StaticColorControlCluster);
          v69 = type metadata accessor for StaticCluster();
          goto LABEL_33;
        }

        v65 = &qword_1EC646F08;
        v66 = &unk_1D1E83910;
        break;
      case 22:
        sub_1D1A386E0(v56, v54, type metadata accessor for ClusterPath);
        v112 = v58;
        v113 = v59;

        v64 = v106;
        StaticDoorLockCluster.init(path:valueSource:)(v54, &v112, v106);
        sub_1D1A38680(v56, type metadata accessor for ClusterPath);
        if ((*(v104 + 48))(v64, 1, v105) != 1)
        {
          v75 = v64;
          v76 = v91;
          sub_1D1A377A0(v75, v91, type metadata accessor for StaticDoorLockCluster);
          v77 = v76;
          v68 = v110;
          sub_1D1A377A0(v77, v110, type metadata accessor for StaticDoorLockCluster);
          v69 = type metadata accessor for StaticCluster();
          goto LABEL_33;
        }

        v65 = &qword_1EC649560;
        v66 = &unk_1D1E94068;
        break;
      default:
        goto LABEL_16;
    }

LABEL_26:
    v67 = v64;
    goto LABEL_27;
  }

  if (v57 == 1)
  {
    sub_1D1A386E0(v56, v54, type metadata accessor for ClusterPath);
    v112 = v58;
    v113 = v59;

    StaticBasicInfoCluster.init(path:valueSource:)(v54, &v112, v41);
    sub_1D1A38680(v56, type metadata accessor for ClusterPath);
    if ((*(v96 + 48))(v41, 1, v42) == 1)
    {
      v65 = &qword_1EC649578;
      v66 = &qword_1D1E94088;
      v67 = v41;
LABEL_27:
      sub_1D1741A30(v67, v65, v66);
      goto LABEL_28;
    }

    sub_1D1A377A0(v41, v45, type metadata accessor for StaticBasicInfoCluster);
    v68 = v110;
    sub_1D1A377A0(v45, v110, type metadata accessor for StaticBasicInfoCluster);
    v69 = type metadata accessor for StaticCluster();
    goto LABEL_33;
  }

  if (v57 == 2)
  {
    sub_1D1A386E0(v56, v54, type metadata accessor for ClusterPath);
    v112 = v58;
    v113 = v59;

    v64 = v109;
    StaticClusterPowerSource.init(path:valueSource:)(v54, &v112, v109);
    sub_1D1A38680(v56, type metadata accessor for ClusterPath);
    if ((*(v107 + 48))(v64, 1, v108) != 1)
    {
      v81 = v64;
      v82 = v92;
      sub_1D1A377A0(v81, v92, type metadata accessor for StaticClusterPowerSource);
      v83 = v82;
      v68 = v110;
      sub_1D1A377A0(v83, v110, type metadata accessor for StaticClusterPowerSource);
      v69 = type metadata accessor for StaticCluster();
      goto LABEL_33;
    }

    v65 = &qword_1EC6448C8;
    v66 = &qword_1D1E94060;
    goto LABEL_26;
  }

  if (v57 != 11)
  {
LABEL_16:
    sub_1D1A38680(v56, type metadata accessor for ClusterPath);
LABEL_28:
    v73 = type metadata accessor for StaticCluster();
    return (*(*(v73 - 8) + 56))(v110, 1, 1, v73);
  }

  sub_1D1A386E0(v56, v51, type metadata accessor for ClusterPath);
  v60 = v97;
  sub_1D1A386E0(v51, v97, type metadata accessor for ClusterPath);
  v61 = sub_1D19BE5F8(0, v51, v58, v59);
  sub_1D1A38680(v51, type metadata accessor for ClusterPath);
  sub_1D1A38680(v56, type metadata accessor for ClusterPath);
  if (v61 == 2)
  {
    sub_1D1A38680(v60, type metadata accessor for ClusterPath);
    v62 = v93;
    v63 = v94;
    v64 = v95;
    (*(v93 + 56))(v95, 1, 1, v94);
  }

  else
  {
    v63 = v94;
    v64 = v95;
    *(v60 + *(v94 + 20)) = v61 & 1;
    sub_1D1A386E0(v60, v64, type metadata accessor for StaticOnOffCluster);
    v62 = v93;
    (*(v93 + 56))(v64, 0, 1, v63);
    sub_1D1A38680(v60, type metadata accessor for StaticOnOffCluster);
  }

  if ((*(v62 + 48))(v64, 1, v63) == 1)
  {
    v65 = &qword_1EC649570;
    v66 = &qword_1D1E94080;
    goto LABEL_26;
  }

  v78 = v64;
  v79 = v89;
  sub_1D1A377A0(v78, v89, type metadata accessor for StaticOnOffCluster);
  v80 = v79;
  v68 = v110;
  sub_1D1A377A0(v80, v110, type metadata accessor for StaticOnOffCluster);
  v69 = type metadata accessor for StaticCluster();
LABEL_33:
  swift_storeEnumTagMultiPayload();
  return (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
}

void *sub_1D1A36818()
{
  result = sub_1D179B598(&unk_1F4D60010);
  off_1EC6493A0 = result;
  return result;
}

uint64_t StaticCluster.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StaticClusterPowerSource();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticColorControlCluster();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticLevelControlCluster();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StaticDoorLockCluster();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StaticOnOffCluster();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for StaticBasicInfoCluster();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for StaticCluster();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v35 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1A386E0(v2, v31, type metadata accessor for StaticCluster);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D1A377A0(v31, v15, type metadata accessor for StaticLevelControlCluster);
      v33 = v15;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1D1A377A0(v31, v11, type metadata accessor for StaticColorControlCluster);
        sub_1D1A386E0(v11, a1, type metadata accessor for ClusterPath);
        return sub_1D1A38680(v11, type metadata accessor for StaticColorControlCluster);
      }

      sub_1D1A377A0(v31, v7, type metadata accessor for StaticClusterPowerSource);
      v33 = v7;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D1A377A0(v31, v27, type metadata accessor for StaticBasicInfoCluster);
      sub_1D1A386E0(v27, a1, type metadata accessor for ClusterPath);
      return sub_1D1A38680(v27, type metadata accessor for StaticBasicInfoCluster);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1A377A0(v31, v23, type metadata accessor for StaticOnOffCluster);
      v33 = v23;
    }

    else
    {
      sub_1D1A377A0(v31, v19, type metadata accessor for StaticDoorLockCluster);
      v33 = v19;
    }
  }

  return sub_1D1A377A0(v33, a1, type metadata accessor for ClusterPath);
}

uint64_t _s13HomeDataModel13StaticClusterO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v73 = a2;
  v2 = type metadata accessor for StaticClusterPowerSource();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticColorControlCluster();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticLevelControlCluster();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticDoorLockCluster();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for StaticOnOffCluster();
  v14 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StaticBasicInfoCluster();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StaticCluster();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v64 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v64 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v64 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v71 = &v64 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v64 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649580, &qword_1D1E94090);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v42 = &v64 - v41;
  v43 = *(v40 + 56);
  sub_1D1A386E0(v72, &v64 - v41, type metadata accessor for StaticCluster);
  sub_1D1A386E0(v73, &v42[v43], type metadata accessor for StaticCluster);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D1A386E0(v42, v30, type metadata accessor for StaticCluster);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v56 = type metadata accessor for StaticLevelControlCluster;
        v57 = v30;
        goto LABEL_31;
      }

      v58 = v67;
      sub_1D1A377A0(&v42[v43], v67, type metadata accessor for StaticLevelControlCluster);
      v51 = _s13HomeDataModel25StaticLevelControlClusterV2eeoiySbAC_ACtFZ_0(v30, v58);
      v54 = type metadata accessor for StaticLevelControlCluster;
      sub_1D1A38680(v58, type metadata accessor for StaticLevelControlCluster);
      v55 = v30;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1D1A386E0(v42, v27, type metadata accessor for StaticCluster);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v56 = type metadata accessor for StaticColorControlCluster;
        v57 = v27;
        goto LABEL_31;
      }

      v52 = &v42[v43];
      v53 = v69;
      sub_1D1A377A0(v52, v69, type metadata accessor for StaticColorControlCluster);
      v51 = _s13HomeDataModel25StaticColorControlClusterV2eeoiySbAC_ACtFZ_0(v27, v53);
      v54 = type metadata accessor for StaticColorControlCluster;
      sub_1D1A38680(v53, type metadata accessor for StaticColorControlCluster);
      v55 = v27;
    }

    else
    {
      sub_1D1A386E0(v42, v24, type metadata accessor for StaticCluster);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v56 = type metadata accessor for StaticClusterPowerSource;
        v57 = v24;
        goto LABEL_31;
      }

      v60 = v70;
      sub_1D1A377A0(&v42[v43], v70, type metadata accessor for StaticClusterPowerSource);
      v51 = _s13HomeDataModel24StaticClusterPowerSourceV2eeoiySbAC_ACtFZ_0(v24, v60);
      v54 = type metadata accessor for StaticClusterPowerSource;
      sub_1D1A38680(v60, type metadata accessor for StaticClusterPowerSource);
      v55 = v24;
    }

LABEL_23:
    v61 = v54;
LABEL_24:
    sub_1D1A38680(v55, v61);
    sub_1D1A38680(v42, type metadata accessor for StaticCluster);
    return v51 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D1A386E0(v42, v37, type metadata accessor for StaticCluster);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1D1A377A0(&v42[v43], v19, type metadata accessor for StaticBasicInfoCluster);
      v51 = _s13HomeDataModel22StaticBasicInfoClusterV2eeoiySbAC_ACtFZ_0(v37, v19);
      sub_1D1A38680(v19, type metadata accessor for StaticBasicInfoCluster);
      v55 = v37;
      v61 = type metadata accessor for StaticBasicInfoCluster;
      goto LABEL_24;
    }

    v56 = type metadata accessor for StaticBasicInfoCluster;
    v57 = v37;
LABEL_31:
    sub_1D1A38680(v57, v56);
    sub_1D1741A30(v42, &qword_1EC649580, &qword_1D1E94090);
LABEL_32:
    v51 = 0;
    return v51 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D1A386E0(v42, v33, type metadata accessor for StaticCluster);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v62 = type metadata accessor for StaticDoorLockCluster;
      goto LABEL_29;
    }

    v59 = v66;
    sub_1D1A377A0(&v42[v43], v66, type metadata accessor for StaticDoorLockCluster);
    v51 = _s13HomeDataModel21StaticDoorLockClusterV2eeoiySbAC_ACtFZ_0(v33, v59);
    v54 = type metadata accessor for StaticDoorLockCluster;
    sub_1D1A38680(v59, type metadata accessor for StaticDoorLockCluster);
    v55 = v33;
    goto LABEL_23;
  }

  v33 = v71;
  sub_1D1A386E0(v42, v71, type metadata accessor for StaticCluster);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v62 = type metadata accessor for StaticOnOffCluster;
LABEL_29:
    v56 = v62;
    v57 = v33;
    goto LABEL_31;
  }

  v45 = v68;
  sub_1D1A377A0(&v42[v43], v68, type metadata accessor for StaticOnOffCluster);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (v46 = type metadata accessor for EndpointPath(0), *&v33[*(v46 + 20)] != *(v45 + *(v46 + 20))) || *&v33[*(v46 + 24)] != *(v45 + *(v46 + 24)) || (v47 = type metadata accessor for ClusterPath(0), dword_1D1E940B4[v33[*(v47 + 20)]] != dword_1D1E940B4[*(v45 + *(v47 + 20))]))
  {
    sub_1D1A38680(v45, type metadata accessor for StaticOnOffCluster);
    goto LABEL_35;
  }

  v48 = *(v65 + 20);
  v49 = v33[v48];
  v50 = *(v45 + v48);
  sub_1D1A38680(v45, type metadata accessor for StaticOnOffCluster);
  if (v49 != v50)
  {
LABEL_35:
    sub_1D1A38680(v33, type metadata accessor for StaticOnOffCluster);
    sub_1D1A38680(v42, type metadata accessor for StaticCluster);
    goto LABEL_32;
  }

  sub_1D1A38680(v33, type metadata accessor for StaticOnOffCluster);
  sub_1D1A38680(v42, type metadata accessor for StaticCluster);
  v51 = 1;
  return v51 & 1;
}

unint64_t sub_1D1A37554()
{
  result = qword_1EC6493E0;
  if (!qword_1EC6493E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6493E0);
  }

  return result;
}

unint64_t sub_1D1A375A8()
{
  result = qword_1EC6493E8;
  if (!qword_1EC6493E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6493E8);
  }

  return result;
}

unint64_t sub_1D1A375FC()
{
  result = qword_1EC6493F8;
  if (!qword_1EC6493F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6493F8);
  }

  return result;
}

unint64_t sub_1D1A37650()
{
  result = qword_1EC649408;
  if (!qword_1EC649408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649408);
  }

  return result;
}

unint64_t sub_1D1A376A4()
{
  result = qword_1EC649418;
  if (!qword_1EC649418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649418);
  }

  return result;
}

unint64_t sub_1D1A376F8()
{
  result = qword_1EC649428;
  if (!qword_1EC649428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649428);
  }

  return result;
}

unint64_t sub_1D1A3774C()
{
  result = qword_1EC649438;
  if (!qword_1EC649438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649438);
  }

  return result;
}

uint64_t sub_1D1A377A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A37850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1A37898()
{
  result = type metadata accessor for StaticBasicInfoCluster();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StaticOnOffCluster();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for StaticDoorLockCluster();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for StaticLevelControlCluster();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for StaticColorControlCluster();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for StaticClusterPowerSource();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D1A379D0()
{
  result = qword_1EC6494B8;
  if (!qword_1EC6494B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494B8);
  }

  return result;
}

unint64_t sub_1D1A37A28()
{
  result = qword_1EC6494C0;
  if (!qword_1EC6494C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494C0);
  }

  return result;
}

unint64_t sub_1D1A37A80()
{
  result = qword_1EC6494C8;
  if (!qword_1EC6494C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494C8);
  }

  return result;
}

unint64_t sub_1D1A37AD8()
{
  result = qword_1EC6494D0;
  if (!qword_1EC6494D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494D0);
  }

  return result;
}

unint64_t sub_1D1A37B30()
{
  result = qword_1EC6494D8;
  if (!qword_1EC6494D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494D8);
  }

  return result;
}

unint64_t sub_1D1A37B88()
{
  result = qword_1EC6494E0;
  if (!qword_1EC6494E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494E0);
  }

  return result;
}

unint64_t sub_1D1A37BE0()
{
  result = qword_1EC6494E8;
  if (!qword_1EC6494E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494E8);
  }

  return result;
}

unint64_t sub_1D1A37C38()
{
  result = qword_1EC6494F0;
  if (!qword_1EC6494F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494F0);
  }

  return result;
}

unint64_t sub_1D1A37C90()
{
  result = qword_1EC6494F8;
  if (!qword_1EC6494F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494F8);
  }

  return result;
}

unint64_t sub_1D1A37CE8()
{
  result = qword_1EC649500;
  if (!qword_1EC649500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649500);
  }

  return result;
}

unint64_t sub_1D1A37D40()
{
  result = qword_1EC649508;
  if (!qword_1EC649508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649508);
  }

  return result;
}

unint64_t sub_1D1A37D98()
{
  result = qword_1EC649510;
  if (!qword_1EC649510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649510);
  }

  return result;
}

unint64_t sub_1D1A37DF0()
{
  result = qword_1EC649518;
  if (!qword_1EC649518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649518);
  }

  return result;
}

unint64_t sub_1D1A37E48()
{
  result = qword_1EC649520;
  if (!qword_1EC649520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649520);
  }

  return result;
}

unint64_t sub_1D1A37EA0()
{
  result = qword_1EC649528;
  if (!qword_1EC649528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649528);
  }

  return result;
}

unint64_t sub_1D1A37EF8()
{
  result = qword_1EC649530;
  if (!qword_1EC649530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649530);
  }

  return result;
}

unint64_t sub_1D1A37F50()
{
  result = qword_1EC649538;
  if (!qword_1EC649538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649538);
  }

  return result;
}

unint64_t sub_1D1A37FA8()
{
  result = qword_1EC649540;
  if (!qword_1EC649540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649540);
  }

  return result;
}

unint64_t sub_1D1A38000()
{
  result = qword_1EC649548;
  if (!qword_1EC649548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649548);
  }

  return result;
}

unint64_t sub_1D1A38058()
{
  result = qword_1EC649550;
  if (!qword_1EC649550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649550);
  }

  return result;
}

unint64_t sub_1D1A380B0()
{
  result = qword_1EC649558;
  if (!qword_1EC649558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649558);
  }

  return result;
}

uint64_t sub_1D1A38104(uint64_t a1, _BYTE *a2)
{
  v2 = a1;
  v3 = *a2;
  v4 = *a2;
  if (v4 > 0x15)
  {
    if (v4 - 24 >= 3)
    {
      if (v4 != 29)
      {
        goto LABEL_17;
      }

      v8 = sub_1D19B5690(a1);
      if (v8 == 8)
      {
LABEL_29:
        if (v2 > 65530)
        {
          if (v2 != 65531)
          {
            if (v2 != 65532)
            {
              if (v2 == 65533)
              {
                return 0xD000000000000011;
              }

              goto LABEL_26;
            }

            return 0x4D65727574616566;
          }

          return 0x7475626972747461;
        }

        if (v2 != 65528)
        {
          if (v2 != 65529)
          {
LABEL_26:
            v11 = MTRAttributeNameForID();
            if (v11)
            {
              v12 = v11;
              v13 = sub_1D1E6781C();

              return v13;
            }

            else
            {
              v15[0] = 0x2D6E776F6E6B6E75;
              v15[1] = 0xE800000000000000;
              v14 = sub_1D1E68FAC();
              MEMORY[0x1D3890F70](v14);

              return v15[0];
            }
          }

          return 0xD000000000000015;
        }

        return 0xD000000000000016;
      }

      v7 = v8 | 0x80;
      return sub_1D19B37E8(v7);
    }

    LOBYTE(v15[0]) = *a2;
    result = sub_1D197C780(a1, v15);
    if (v6)
    {
      return result;
    }

LABEL_17:
    if (v2 > 65530)
    {
      if (v2 != 65531)
      {
        if (v2 != 65532)
        {
          if (v2 == 65533)
          {
            return 0xD000000000000011;
          }

          goto LABEL_25;
        }

        return 0x4D65727574616566;
      }

      return 0x7475626972747461;
    }

    if (v2 != 65528)
    {
      if (v2 != 65529)
      {
LABEL_25:
        v10 = dword_1D1E940B4[v3];
        goto LABEL_26;
      }

      return 0xD000000000000015;
    }

    return 0xD000000000000016;
  }

  if (*a2 > 0xAu)
  {
    if (v4 - 11 >= 2 && v4 == 19)
    {
      v7 = sub_1D19B5730(a1);
      if (v7 == 15)
      {
        goto LABEL_29;
      }

      return sub_1D19B37E8(v7);
    }

    goto LABEL_17;
  }

  if (!*a2)
  {
    if (a1 <= 65527)
    {
      if (a1 > 1)
      {
        if (a1 == 2)
        {
          return 0x694C746E65696C63;
        }

        if (a1 == 3)
        {
          return 0x73694C7374726170;
        }
      }

      else
      {
        if (!a1)
        {
          return 0xD000000000000010;
        }

        if (a1 == 1)
        {
          return 0x694C726576726573;
        }
      }

      goto LABEL_26;
    }

    goto LABEL_29;
  }

  if (v4 != 1)
  {
    goto LABEL_17;
  }

  result = sub_1D19BF704(a1);
  if (!v9)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1D1A38470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x666E496369736162 && a2 == 0xE90000000000006FLL;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x66664F6E6FLL && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B636F4C726F6F64 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F436C6576656CLL && a2 == 0xEC0000006C6F7274 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F43726F6C6F63 && a2 == 0xEC0000006C6F7274 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756F537265776F70 && a2 == 0xEB00000000656372)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D1A38680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A386E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t StaticClusterGroups.copyApplying(overridingAttributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for StaticRVCClusterGroup();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  sub_1D1A3BD7C(v3, a2, type metadata accessor for StaticClusterGroups);
  sub_1D1741C08(v3, v9, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D1741A30(v9, &qword_1EC644778, &unk_1D1E75B10);
  }

  v30 = a2;
  sub_1D1A3BE38(v9, v17, type metadata accessor for StaticRVCClusterGroup);
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;

  for (i = 0; v21; result = sub_1D1A3BE38(v15, v17, type metadata accessor for StaticRVCClusterGroup))
  {
    v24 = i;
LABEL_11:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = *(*(a1 + 56) + ((v24 << 9) | (8 * v25)));

    sub_1D1928EEC(v27, v15);

    sub_1D1A3BEA0(v17, type metadata accessor for StaticRVCClusterGroup);
  }

  while (1)
  {
    v24 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      v28 = v30;
      sub_1D1741A30(v30, &qword_1EC644778, &unk_1D1E75B10);
      sub_1D1A3BE38(v17, v28, type metadata accessor for StaticRVCClusterGroup);
      return (*(v11 + 56))(v28, 0, 1, v10);
    }

    v21 = *(a1 + 64 + 8 * v24);
    ++i;
    if (v21)
    {
      i = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for StaticClusterGroups()
{
  result = qword_1EE07C530;
  if (!qword_1EE07C530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1A38ABC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20[-v8];
  v10 = type metadata accessor for StaticRVCClusterGroup();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x1E69E7CD0];
  sub_1D1741C08(v1, v9, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D1741A30(v9, &qword_1EC644778, &unk_1D1E75B10);
  }

  else
  {
    sub_1D1A3BE38(v9, v14, type metadata accessor for StaticRVCClusterGroup);
    v15 = StaticRVCClusterGroup.representedClusterKinds.getter();
    sub_1D19303DC(v15);
    sub_1D1A3BEA0(v14, type metadata accessor for StaticRVCClusterGroup);
  }

  v16 = type metadata accessor for StaticClusterGroups();
  sub_1D1741C08(v1 + *(v16 + 20), v5, &qword_1EC644790, &unk_1D1E75B48);
  v17 = type metadata accessor for StaticThermostatClusterGroup();
  v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
  sub_1D1741A30(v5, &qword_1EC644790, &unk_1D1E75B48);
  if (v18 != 1)
  {
    sub_1D1761BE0(&v22, 19);
    sub_1D1761BE0(&v21, 29);
  }

  return v23;
}

uint64_t sub_1D1A38D68(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for StaticThermostatClusterGroup();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v8 = type metadata accessor for StaticRVCClusterGroup();
  v2[26] = v8;
  v9 = *(v8 - 8);
  v2[27] = v9;
  v10 = *(v9 + 64) + 15;
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A38EF4, 0, 0);
}

uint64_t sub_1D1A38EF4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_1D1741C08(*(v0 + 160), v3, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D1741A30(*(v0 + 200), &qword_1EC644778, &unk_1D1E75B10);
  }

  else
  {
    v4 = *(v0 + 152);
    sub_1D1A3BE38(*(v0 + 200), *(v0 + 224), type metadata accessor for StaticRVCClusterGroup);
    sub_1D17419CC(v4, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
    if (swift_dynamicCast())
    {
      v5 = *(v0 + 120);
      *(v0 + 232) = v5;
      v6 = *(v0 + 128);
      *(v0 + 114) = v6;
      *(v0 + 136) = v5;
      *(v0 + 144) = v6;
      v7 = swift_task_alloc();
      *(v0 + 240) = v7;
      *v7 = v0;
      v7[1] = sub_1D1A39310;
      v8 = *(v0 + 224);

      return StaticRVCClusterGroup.run(command:)((v0 + 136));
    }

    sub_1D1A3BEA0(*(v0 + 224), type metadata accessor for StaticRVCClusterGroup);
  }

  v10 = *(v0 + 176);
  v11 = *(v0 + 184);
  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  v14 = type metadata accessor for StaticClusterGroups();
  sub_1D1741C08(v13 + *(v14 + 20), v12, &qword_1EC644790, &unk_1D1E75B48);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_1D1741A30(*(v0 + 168), &qword_1EC644790, &unk_1D1E75B48);
LABEL_16:
    v21 = *(v0 + 224);
    v22 = *(v0 + 192);
    v23 = *(v0 + 200);
    v24 = *(v0 + 168);

    v25 = *(v0 + 8);

    return v25();
  }

  v15 = *(v0 + 152);
  sub_1D1A3BE38(*(v0 + 168), *(v0 + 192), type metadata accessor for StaticThermostatClusterGroup);
  sub_1D17419CC(v15, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D1A3BEA0(*(v0 + 192), type metadata accessor for StaticThermostatClusterGroup);
    goto LABEL_16;
  }

  v16 = *(v0 + 96);
  v17 = *(v0 + 112);
  if (v17 < 0)
  {
    v26 = swift_task_alloc();
    *(v0 + 272) = v26;
    *v26 = v0;
    v26[1] = sub_1D1A39804;
    v27 = *(v0 + 192);

    return StaticThermostatClusterGroup.pauseFollowingGuidance(untilTomorrow:)(v16 & 1);
  }

  else
  {
    v18 = *(v0 + 104);
    *(v0 + 113) = v16 & 1;
    v19 = swift_task_alloc();
    *(v0 + 256) = v19;
    *v19 = v0;
    v19[1] = sub_1D1A396F0;
    v20 = *(v0 + 192);

    return StaticThermostatClusterGroup.updateSetpointHold(hold:holdUntilPresetChange:duration:)((v0 + 113), BYTE1(v16) & 1, v18, v17 & 1);
  }
}

uint64_t sub_1D1A39310()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v6 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_1D1A39A98;
  }

  else
  {
    sub_1D19630E4(*(v2 + 232), *(v2 + 114));
    v4 = sub_1D1A39430;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1A39430()
{
  sub_1D1A3BEA0(*(v0 + 224), type metadata accessor for StaticRVCClusterGroup);
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = type metadata accessor for StaticClusterGroups();
  sub_1D1741C08(v4 + *(v5 + 20), v3, &qword_1EC644790, &unk_1D1E75B48);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D1741A30(*(v0 + 168), &qword_1EC644790, &unk_1D1E75B48);
LABEL_9:
    v13 = *(v0 + 224);
    v14 = *(v0 + 192);
    v15 = *(v0 + 200);
    v16 = *(v0 + 168);

    v17 = *(v0 + 8);

    return v17();
  }

  v6 = *(v0 + 152);
  sub_1D1A3BE38(*(v0 + 168), *(v0 + 192), type metadata accessor for StaticThermostatClusterGroup);
  sub_1D17419CC(v6, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D1A3BEA0(*(v0 + 192), type metadata accessor for StaticThermostatClusterGroup);
    goto LABEL_9;
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 112);
  if (v8 < 0)
  {
    v18 = swift_task_alloc();
    *(v0 + 272) = v18;
    *v18 = v0;
    v18[1] = sub_1D1A39804;
    v19 = *(v0 + 192);

    return StaticThermostatClusterGroup.pauseFollowingGuidance(untilTomorrow:)(v7 & 1);
  }

  else
  {
    v9 = *(v0 + 104);
    *(v0 + 113) = v7 & 1;
    v10 = swift_task_alloc();
    *(v0 + 256) = v10;
    *v10 = v0;
    v10[1] = sub_1D1A396F0;
    v11 = *(v0 + 192);

    return StaticThermostatClusterGroup.updateSetpointHold(hold:holdUntilPresetChange:duration:)((v0 + 113), BYTE1(v7) & 1, v9, v8 & 1);
  }
}

uint64_t sub_1D1A396F0()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1D1A39924;
  }

  else
  {
    v3 = sub_1D1A39948;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A39804()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 280) = v0;
    v5 = sub_1D1A399F0;
  }

  else
  {
    v5 = sub_1D1A39948;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1A39948()
{
  sub_1D1A3BEA0(v0[24], type metadata accessor for StaticThermostatClusterGroup);
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[21];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1A399F0()
{
  sub_1D1A3BEA0(v0[24], type metadata accessor for StaticThermostatClusterGroup);
  v1 = v0[35];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1A39A98()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 114);
  sub_1D1A3BEA0(*(v0 + 224), type metadata accessor for StaticRVCClusterGroup);
  sub_1D19630E4(v1, v2);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 168);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t StaticClusterGroups.init(rvc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticRVCClusterGroup();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(type metadata accessor for StaticClusterGroups() + 20);
  v6 = type metadata accessor for StaticThermostatClusterGroup();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  return sub_1D17B4270(a1, a2, &qword_1EC644778, &unk_1D1E75B10);
}

uint64_t StaticClusterGroups.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StaticRVCClusterGroup();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = *(type metadata accessor for StaticClusterGroups() + 20);
  v4 = type metadata accessor for StaticThermostatClusterGroup();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t StaticClusterGroups.init(thermostat:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticRVCClusterGroup();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(type metadata accessor for StaticClusterGroups() + 20);
  v6 = type metadata accessor for StaticThermostatClusterGroup();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  return sub_1D17B4270(a1, a2 + v5, &qword_1EC644790, &unk_1D1E75B48);
}

uint64_t StaticClusterGroups.init(valueSource:path:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for EndpointPath(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v28 - v17;
  v20 = *a1;
  v19 = a1[1];
  v21 = type metadata accessor for StaticRVCClusterGroup();
  (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
  v22 = *(type metadata accessor for StaticClusterGroups() + 20);
  v23 = type metadata accessor for StaticThermostatClusterGroup();
  (*(*(v23 - 8) + 56))(a3 + v22, 1, 1, v23);
  v24 = *(a2 + *(v11 + 32));
  v29 = v20;
  v30 = v19;
  v31 = v24;
  v32 = 0;
  v33 = 0;
  v34 = 0;

  v25 = DescriptorClusterDecoder.availableClusterKinds.getter();

  if (sub_1D17198DC(24, v25) && sub_1D17198DC(25, v25))
  {
    sub_1D1A3BD7C(a2, v14, type metadata accessor for EndpointPath);
    v29 = v20;
    v30 = v19;

    StaticRVCClusterGroup.init(endpointPath:valueSource:)(v14, &v29, v18);
    sub_1D17B4270(v18, a3, &qword_1EC644778, &unk_1D1E75B10);
  }

  v26 = sub_1D17198DC(19, v25);

  if (v26)
  {
    sub_1D1A3BD7C(a2, v14, type metadata accessor for EndpointPath);
    v29 = v20;
    v30 = v19;
    sub_1D1984070(v14, &v29, v9);
    sub_1D1A3BEA0(a2, type metadata accessor for EndpointPath);
    return sub_1D17B4270(v9, a3 + v22, &qword_1EC644790, &unk_1D1E75B48);
  }

  else
  {
    sub_1D1A3BEA0(a2, type metadata accessor for EndpointPath);
  }
}

uint64_t StaticClusterGroups.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v36 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434A8, &qword_1D1E8EC00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D1E739C0;
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_1D1E6884C();

  v36[0] = 0xD000000000000018;
  v36[1] = 0x80000001D1EC3870;
  sub_1D1741C08(v0, v9, &qword_1EC644778, &unk_1D1E75B10);
  v11 = type metadata accessor for StaticRVCClusterGroup();
  v12 = (*(*(v11 - 8) + 48))(v9, 1, v11);
  sub_1D1741A30(v9, &qword_1EC644778, &unk_1D1E75B10);
  if (v12 == 1)
  {
    v13 = 0x65736C6166;
  }

  else
  {
    v13 = 1702195828;
  }

  if (v12 == 1)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v13, v14);

  v15 = v36[1];
  *(v10 + 32) = v36[0];
  *(v10 + 40) = v15;
  strcpy(v36, "thermostat: ");
  BYTE5(v36[1]) = 0;
  HIWORD(v36[1]) = -5120;
  v16 = type metadata accessor for StaticClusterGroups();
  sub_1D1741C08(v1 + *(v16 + 20), v5, &qword_1EC644790, &unk_1D1E75B48);
  v17 = type metadata accessor for StaticThermostatClusterGroup();
  v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
  if (v18 == 1)
  {
    v19 = 0x65736C6166;
  }

  else
  {
    v19 = 1702195828;
  }

  if (v18 == 1)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  sub_1D1741A30(v5, &qword_1EC644790, &unk_1D1E75B48);
  MEMORY[0x1D3890F70](v19, v20);

  v21 = v36[0];
  v22 = v36[1];
  v24 = *(v10 + 16);
  v23 = *(v10 + 24);
  if (v24 >= v23 >> 1)
  {
    v10 = sub_1D177CF00((v23 > 1), v24 + 1, 1, v10);
  }

  *(v10 + 16) = v24 + 1;
  v25 = v10 + 16 * v24;
  *(v25 + 32) = v21;
  *(v25 + 40) = v22;
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_1D1E6884C();

  v36[0] = 0xD000000000000017;
  v36[1] = 0x80000001D1EC3890;
  sub_1D1A38ABC();
  sub_1D1785A0C();
  v26 = sub_1D1E6817C();
  v28 = v27;

  MEMORY[0x1D3890F70](v26, v28);

  v29 = v36[0];
  v30 = v36[1];
  v32 = *(v10 + 16);
  v31 = *(v10 + 24);
  if (v32 >= v31 >> 1)
  {
    v10 = sub_1D177CF00((v31 > 1), v32 + 1, 1, v10);
  }

  *(v10 + 16) = v32 + 1;
  v33 = v10 + 16 * v32;
  *(v33 + 32) = v29;
  *(v33 + 40) = v30;
  v36[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v34 = sub_1D1E6770C();

  return v34;
}

uint64_t sub_1D1A3A62C()
{
  if (*v0)
  {
    result = 0x74736F6D72656874;
  }

  else
  {
    result = 6518386;
  }

  *v0;
  return result;
}

uint64_t sub_1D1A3A664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6518386 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736F6D72656874 && a2 == 0xEA00000000007461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1A3A748(uint64_t a1)
{
  v2 = sub_1D1A3BDE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A3A784(uint64_t a1)
{
  v2 = sub_1D1A3BDE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticClusterGroups.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649590, &qword_1D1E94130);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A3BDE4();
  sub_1D1E6930C();
  v11[15] = 0;
  type metadata accessor for StaticRVCClusterGroup();
  sub_1D1A3BF48(&qword_1EC6495A0, type metadata accessor for StaticRVCClusterGroup);
  sub_1D1E68E5C();
  if (!v1)
  {
    v9 = *(type metadata accessor for StaticClusterGroups() + 20);
    v11[14] = 1;
    type metadata accessor for StaticThermostatClusterGroup();
    sub_1D1A3BF48(&qword_1EC6495A8, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D1E68E5C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t StaticClusterGroups.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v27 = a1;
  v28 = type metadata accessor for StaticThermostatClusterGroup();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for StaticRVCClusterGroup();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - v17;
  v19 = v2;
  sub_1D1741C08(v2, &v25 - v17, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    v20 = v27;
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A3BE38(v18, v14, type metadata accessor for StaticRVCClusterGroup);
    v21 = v27;
    sub_1D1E6922C();
    StaticRVCClusterGroup.hash(into:)(v21);
    sub_1D1A3BEA0(v14, type metadata accessor for StaticRVCClusterGroup);
    v20 = v21;
  }

  v22 = type metadata accessor for StaticClusterGroups();
  sub_1D1741C08(v19 + *(v22 + 20), v9, &qword_1EC644790, &unk_1D1E75B48);
  if ((*(v3 + 48))(v9, 1, v28) == 1)
  {
    return sub_1D1E6922C();
  }

  v24 = v26;
  sub_1D1A3BE38(v9, v26, type metadata accessor for StaticThermostatClusterGroup);
  sub_1D1E6922C();
  StaticThermostatClusterGroup.hash(into:)(v20);
  return sub_1D1A3BEA0(v24, type metadata accessor for StaticThermostatClusterGroup);
}

uint64_t StaticClusterGroups.hashValue.getter()
{
  v1 = v0;
  v21 = type metadata accessor for StaticThermostatClusterGroup();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for StaticRVCClusterGroup();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v21 - v17;
  sub_1D1E6920C();
  sub_1D1741C08(v1, v18, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A3BE38(v18, v14, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1E6922C();
    StaticRVCClusterGroup.hash(into:)(v22);
    sub_1D1A3BEA0(v14, type metadata accessor for StaticRVCClusterGroup);
  }

  v19 = type metadata accessor for StaticClusterGroups();
  sub_1D1741C08(v1 + *(v19 + 20), v9, &qword_1EC644790, &unk_1D1E75B48);
  if ((*(v2 + 48))(v9, 1, v21) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A3BE38(v9, v5, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D1E6922C();
    StaticThermostatClusterGroup.hash(into:)(v22);
    sub_1D1A3BEA0(v5, type metadata accessor for StaticThermostatClusterGroup);
  }

  return sub_1D1E6926C();
}

uint64_t StaticClusterGroups.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v27 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6495B0, &qword_1D1E94138);
  v28 = *(v31 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v27 - v10;
  v12 = type metadata accessor for StaticClusterGroups();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StaticRVCClusterGroup();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = *(v13 + 28);
  v19 = type metadata accessor for StaticThermostatClusterGroup();
  (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A3BDE4();
  v21 = v32;
  sub_1D1E692FC();
  if (!v21)
  {
    v32 = v18;
    v23 = v28;
    v22 = v29;
    v34 = 0;
    sub_1D1A3BF48(&qword_1EC6495B8, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1E68CBC();
    sub_1D17B4270(v30, v16, &qword_1EC644778, &unk_1D1E75B10);
    v33 = 1;
    sub_1D1A3BF48(&qword_1EC6495C0, type metadata accessor for StaticThermostatClusterGroup);
    v24 = v22;
    v25 = v31;
    sub_1D1E68CBC();
    (*(v23 + 8))(v11, v25);
    sub_1D17B4270(v24, &v16[v32], &qword_1EC644790, &unk_1D1E75B48);
    sub_1D1A3BD7C(v16, v27, type metadata accessor for StaticClusterGroups);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1A3BEA0(v16, type metadata accessor for StaticClusterGroups);
}

uint64_t sub_1D1A3B44C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v23 = type metadata accessor for StaticThermostatClusterGroup();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for StaticRVCClusterGroup();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v21 - v17;
  sub_1D1E6920C();
  sub_1D1741C08(v2, v18, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A3BE38(v18, v14, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1E6922C();
    StaticRVCClusterGroup.hash(into:)(v24);
    sub_1D1A3BEA0(v14, type metadata accessor for StaticRVCClusterGroup);
  }

  sub_1D1741C08(v2 + *(v22 + 20), v9, &qword_1EC644790, &unk_1D1E75B48);
  if ((*(v3 + 48))(v9, 1, v23) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v19 = v21;
    sub_1D1A3BE38(v9, v21, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D1E6922C();
    StaticThermostatClusterGroup.hash(into:)(v24);
    sub_1D1A3BEA0(v19, type metadata accessor for StaticThermostatClusterGroup);
  }

  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel19StaticClusterGroupsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticThermostatClusterGroup();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v41 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6495E8, &qword_1D1E94378);
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v41 - v11;
  v12 = type metadata accessor for StaticRVCClusterGroup();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6495F0, &qword_1D1E94380);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v41 - v24;
  v26 = *(v23 + 56);
  v45 = a1;
  sub_1D1741C08(a1, &v41 - v24, &qword_1EC644778, &unk_1D1E75B10);
  v46 = a2;
  sub_1D1741C08(a2, &v25[v26], &qword_1EC644778, &unk_1D1E75B10);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_1D1741C08(v25, v20, &qword_1EC644778, &unk_1D1E75B10);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_1D1A3BE38(&v25[v26], v16, type metadata accessor for StaticRVCClusterGroup);
      v31 = _s13HomeDataModel21StaticRVCClusterGroupV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_1D1A3BEA0(v16, type metadata accessor for StaticRVCClusterGroup);
      sub_1D1A3BEA0(v20, type metadata accessor for StaticRVCClusterGroup);
      sub_1D1741A30(v25, &qword_1EC644778, &unk_1D1E75B10);
      if (!v31)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_1D1A3BEA0(v20, type metadata accessor for StaticRVCClusterGroup);
LABEL_6:
    v28 = &qword_1EC6495F0;
    v29 = &qword_1D1E94380;
    v30 = v25;
LABEL_14:
    sub_1D1741A30(v30, v28, v29);
    return 0;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_1D1741A30(v25, &qword_1EC644778, &unk_1D1E75B10);
LABEL_8:
  v32 = *(type metadata accessor for StaticClusterGroups() + 20);
  v33 = v44;
  v34 = *(v43 + 48);
  sub_1D1741C08(v45 + v32, v44, &qword_1EC644790, &unk_1D1E75B48);
  sub_1D1741C08(v46 + v32, v33 + v34, &qword_1EC644790, &unk_1D1E75B48);
  v35 = v48;
  v36 = *(v47 + 48);
  if (v36(v33, 1, v48) == 1)
  {
    if (v36(v33 + v34, 1, v35) == 1)
    {
      sub_1D1741A30(v33, &qword_1EC644790, &unk_1D1E75B48);
      return 1;
    }

    goto LABEL_13;
  }

  v37 = v42;
  sub_1D1741C08(v33, v42, &qword_1EC644790, &unk_1D1E75B48);
  if (v36(v33 + v34, 1, v35) == 1)
  {
    sub_1D1A3BEA0(v37, type metadata accessor for StaticThermostatClusterGroup);
LABEL_13:
    v28 = &qword_1EC6495E8;
    v29 = &qword_1D1E94378;
    v30 = v33;
    goto LABEL_14;
  }

  v39 = v41;
  sub_1D1A3BE38(v33 + v34, v41, type metadata accessor for StaticThermostatClusterGroup);
  v40 = _s13HomeDataModel28StaticThermostatClusterGroupV2eeoiySbAC_ACtFZ_0(v37, v39);
  sub_1D1A3BEA0(v39, type metadata accessor for StaticThermostatClusterGroup);
  sub_1D1A3BEA0(v37, type metadata accessor for StaticThermostatClusterGroup);
  sub_1D1741A30(v33, &qword_1EC644790, &unk_1D1E75B48);
  return v40;
}

uint64_t sub_1D1A3BD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1A3BDE4()
{
  result = qword_1EC649598;
  if (!qword_1EC649598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649598);
  }

  return result;
}

uint64_t sub_1D1A3BE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A3BEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A3BF48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1A3BFB8()
{
  sub_1D1A3C074(319, qword_1EE07C378, type metadata accessor for StaticRVCClusterGroup);
  if (v0 <= 0x3F)
  {
    sub_1D1A3C074(319, qword_1EE07B918, type metadata accessor for StaticThermostatClusterGroup);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1A3C074(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1E685AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D1A3C0DC()
{
  result = qword_1EC6495D0;
  if (!qword_1EC6495D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6495D0);
  }

  return result;
}

unint64_t sub_1D1A3C134()
{
  result = qword_1EC6495D8;
  if (!qword_1EC6495D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6495D8);
  }

  return result;
}

unint64_t sub_1D1A3C18C()
{
  result = qword_1EC6495E0;
  if (!qword_1EC6495E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6495E0);
  }

  return result;
}

uint64_t StaticEndpoint.activateCHIPPairingModeAndCreateSetupPayloadString()()
{
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1D1A3C270;

  return sub_1D1A42D00();
}

uint64_t sub_1D1A3C270(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A3C370, 0, 0);
}

uint64_t sub_1D1A3C370()
{
  v1 = v0[21];
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D1A3C4C8;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644788, &qword_1D1E75B28);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17FC60C;
    v0[13] = &block_descriptor_34;
    v0[14] = v2;
    [v1 activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v3 = v0[1];

    return v3(0, 0);
  }
}

uint64_t sub_1D1A3C4C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1D1A3C648;
  }

  else
  {
    v3 = sub_1D1A3C5D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A3C5D8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_1D1A3C648()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t StaticEndpoint.set(name:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for EndpointPath(0);
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = sub_1D1E67E1C();
  v3[14] = sub_1D1E67E0C();
  v3[15] = sub_1D1E67E0C();
  v6 = swift_task_alloc();
  v3[16] = v6;
  *v6 = v3;
  v6[1] = sub_1D1A3C7B0;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A3C7B0(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 136) = a1;

  v6 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A3C8F4, v6, v5);
}

uint64_t sub_1D1A3C8F4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);

  if (v1)
  {
    v3 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = *(type metadata accessor for StaticEndpoint() + 20);
    *(v0 + 152) = v9;
    v10 = *(v8 + v9 + *(v7 + 20));
    sub_1D1A43740(v8 + v9, v6, type metadata accessor for EndpointPath);
    v11 = HMHomeManager.matterDevice(with:inHomeWithID:)(v10, v6);
    *(v0 + 48) = v11;
    *(v0 + 56) = v12;

    *(v0 + 144) = v11;
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 8))(v6, v13);
    v14 = sub_1D1E67D4C();
    v16 = v15;
    v17 = sub_1D1A3CA54;
  }

  else
  {
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    v14 = sub_1D1E67D4C();
    v16 = v20;
    v17 = sub_1D1A4413C;
  }

  return MEMORY[0x1EEE6DFA0](v17, v14, v16);
}

uint64_t sub_1D1A3CA54()
{
  v17 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);

  if (v1)
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 88);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = *(v0 + 80) + *(v0 + 152);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + *(v4 + 24));
    v11 = MEMORY[0x1E69E6158];
    *(v0 + 16) = v6;
    v16[0] = 0;
    *(v0 + 40) = v11;
    *(v0 + 24) = v5;
    v12 = *(v7 + 72);

    v12(v16, v10, v0 + 16, ObjectType, v7);
    swift_unknownObjectRelease();
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v13 = *(v0 + 96);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t StaticEndpoint.set(roomID:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for EndpointPath(0);
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = sub_1D1E67E1C();
  v2[13] = sub_1D1E67E0C();
  v2[14] = sub_1D1E67E0C();
  v5 = swift_task_alloc();
  v2[15] = v5;
  *v5 = v2;
  v5[1] = sub_1D1A3CC70;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A3CC70(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 128) = a1;

  v6 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A3CDB4, v6, v5);
}

uint64_t sub_1D1A3CDB4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  if (v1)
  {
    v3 = *(v0 + 128);
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = *(type metadata accessor for StaticEndpoint() + 20);
    *(v0 + 160) = v9;
    v10 = *(v8 + v9 + *(v7 + 20));
    sub_1D1A43740(v8 + v9, v6, type metadata accessor for EndpointPath);
    v11 = HMHomeManager.matterDevice(with:inHomeWithID:)(v10, v6);
    *(v0 + 48) = v11;
    *(v0 + 56) = v12;

    *(v0 + 136) = v11;
    v13 = sub_1D1E66A7C();
    *(v0 + 144) = v13;
    v14 = *(v13 - 8);
    *(v0 + 152) = v14;
    (*(v14 + 8))(v6, v13);
    v15 = sub_1D1E67D4C();
    v17 = v16;
    v18 = sub_1D1A3CF2C;
  }

  else
  {
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    v15 = sub_1D1E67D4C();
    v17 = v21;
    v18 = sub_1D1A3D060;
  }

  return MEMORY[0x1EEE6DFA0](v18, v15, v17);
}

uint64_t sub_1D1A3CF2C()
{
  v17 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);

  if (v1)
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 152);
    v5 = *(v0 + 136);
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72) + *(v0 + 160);
    ObjectType = swift_getObjectType();
    v16[0] = 1;
    v11 = *(v9 + *(v6 + 24));
    *(v0 + 40) = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(v4 + 16))(boxed_opaque_existential_1, v8, v3);
    (*(v7 + 72))(v16, v11, v0 + 16, ObjectType, v7);
    swift_unknownObjectRelease();
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v13 = *(v0 + 88);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D1A3D060()
{
  v1 = v0[13];

  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t StaticEndpoint.set(shouldShowInDashboard:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 140) = a1;
  v3 = type metadata accessor for EndpointPath(0);
  *(v2 + 72) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = sub_1D1E67E1C();
  *(v2 + 96) = sub_1D1E67E0C();
  *(v2 + 104) = sub_1D1E67E0C();
  v5 = swift_task_alloc();
  *(v2 + 112) = v5;
  *v5 = v2;
  v5[1] = sub_1D1A3D1C0;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A3D1C0(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 120) = a1;

  v6 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A3D304, v6, v5);
}

uint64_t sub_1D1A3D304()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  if (v1)
  {
    v3 = *(v0 + 120);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);
    v9 = *(type metadata accessor for StaticEndpoint() + 20);
    *(v0 + 136) = v9;
    v10 = *(v8 + v9 + *(v7 + 20));
    sub_1D1A43740(v8 + v9, v6, type metadata accessor for EndpointPath);
    v11 = HMHomeManager.matterDevice(with:inHomeWithID:)(v10, v6);
    *(v0 + 48) = v11;
    *(v0 + 56) = v12;

    *(v0 + 128) = v11;
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 8))(v6, v13);
    v14 = sub_1D1E67D4C();
    v16 = v15;
    v17 = sub_1D1A3D464;
  }

  else
  {
    v18 = *(v0 + 88);
    v19 = *(v0 + 96);
    v14 = sub_1D1E67D4C();
    v16 = v20;
    v17 = sub_1D1A44138;
  }

  return MEMORY[0x1EEE6DFA0](v17, v14, v16);
}

uint64_t sub_1D1A3D464()
{
  v15 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);

  if (v1)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    v6 = *(v0 + 140);
    v7 = *(v0 + 64) + *(v0 + 136);
    ObjectType = swift_getObjectType();
    v14[0] = 4;
    v9 = *(v7 + *(v4 + 24));
    v10 = MEMORY[0x1E69E6370];
    *(v0 + 16) = v6;
    *(v0 + 40) = v10;
    (*(v5 + 72))(v14, v9, v0 + 16, ObjectType, v5);
    swift_unknownObjectRelease();
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v11 = *(v0 + 80);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t StaticEndpoint.set(favorite:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 140) = a1;
  v3 = type metadata accessor for EndpointPath(0);
  *(v2 + 72) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = sub_1D1E67E1C();
  *(v2 + 96) = sub_1D1E67E0C();
  *(v2 + 104) = sub_1D1E67E0C();
  v5 = swift_task_alloc();
  *(v2 + 112) = v5;
  *v5 = v2;
  v5[1] = sub_1D1A3D664;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A3D664(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 120) = a1;

  v6 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A3D7A8, v6, v5);
}

uint64_t sub_1D1A3D7A8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  if (v1)
  {
    v3 = *(v0 + 120);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);
    v9 = *(type metadata accessor for StaticEndpoint() + 20);
    *(v0 + 136) = v9;
    v10 = *(v8 + v9 + *(v7 + 20));
    sub_1D1A43740(v8 + v9, v6, type metadata accessor for EndpointPath);
    v11 = HMHomeManager.matterDevice(with:inHomeWithID:)(v10, v6);
    *(v0 + 48) = v11;
    *(v0 + 56) = v12;

    *(v0 + 128) = v11;
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 8))(v6, v13);
    v14 = sub_1D1E67D4C();
    v16 = v15;
    v17 = sub_1D1A3D908;
  }

  else
  {
    v18 = *(v0 + 88);
    v19 = *(v0 + 96);
    v14 = sub_1D1E67D4C();
    v16 = v20;
    v17 = sub_1D1A44138;
  }

  return MEMORY[0x1EEE6DFA0](v17, v14, v16);
}

uint64_t sub_1D1A3D908()
{
  v15 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);

  if (v1)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    v6 = *(v0 + 140);
    v7 = *(v0 + 64) + *(v0 + 136);
    ObjectType = swift_getObjectType();
    v14[0] = 3;
    v9 = *(v7 + *(v4 + 24));
    v10 = MEMORY[0x1E69E6370];
    *(v0 + 16) = v6;
    *(v0 + 40) = v10;
    (*(v5 + 72))(v14, v9, v0 + 16, ObjectType, v5);
    swift_unknownObjectRelease();
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v11 = *(v0 + 80);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t StaticEndpoint.set(customIconSymbol:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for EndpointPath(0);
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = sub_1D1E67E1C();
  v3[14] = sub_1D1E67E0C();
  v3[15] = sub_1D1E67E0C();
  v6 = swift_task_alloc();
  v3[16] = v6;
  *v6 = v3;
  v6[1] = sub_1D1A3DB08;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A3DB08(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 136) = a1;

  v6 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A3DC4C, v6, v5);
}

uint64_t sub_1D1A3DC4C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);

  if (v1)
  {
    v3 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = *(type metadata accessor for StaticEndpoint() + 20);
    *(v0 + 152) = v9;
    v10 = *(v8 + v9 + *(v7 + 20));
    sub_1D1A43740(v8 + v9, v6, type metadata accessor for EndpointPath);
    v11 = HMHomeManager.matterDevice(with:inHomeWithID:)(v10, v6);
    *(v0 + 48) = v11;
    *(v0 + 56) = v12;

    *(v0 + 144) = v11;
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 8))(v6, v13);
    v14 = sub_1D1E67D4C();
    v16 = v15;
    v17 = sub_1D1A3DDAC;
  }

  else
  {
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    v14 = sub_1D1E67D4C();
    v16 = v20;
    v17 = sub_1D1A3DEE0;
  }

  return MEMORY[0x1EEE6DFA0](v17, v14, v16);
}

uint64_t sub_1D1A3DDAC()
{
  v17 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);

  if (v1)
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 56);
    v5 = *(v0 + 88);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80) + *(v0 + 152);
    v16[0] = 2;
    v8 = *(v7 + *(v5 + 24));
    if (v6)
    {
      v9 = *(v0 + 64);
      v10 = MEMORY[0x1E69E6158];
    }

    else
    {
      v9 = 0;
      v10 = 0;
      *(v0 + 32) = 0;
    }

    *(v0 + 16) = v9;
    *(v0 + 24) = v6;
    *(v0 + 40) = v10;
    ObjectType = swift_getObjectType();
    v12 = *(v4 + 72);

    v12(v16, v8, v0 + 16, ObjectType, v4);
    swift_unknownObjectRelease();
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v13 = *(v0 + 96);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D1A3DEE0()
{
  v1 = v0[14];

  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t StaticEndpoint.primaryDeviceType.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for StaticEndpoint() + 32));

  return static MatterDeviceType.primaryDeviceType(for:)(v3, a1);
}

uint64_t StaticEndpoint.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticEndpoint.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticEndpoint() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticEndpoint.deviceTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticEndpoint() + 32));
}

uint64_t StaticEndpoint.clusters.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticEndpoint() + 36));
}

uint64_t StaticEndpoint.linkedEndpointIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticEndpoint() + 44));
}

uint64_t StaticEndpoint.roomIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticEndpoint() + 48));
}

uint64_t StaticEndpoint.identifyType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticEndpoint();
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t StaticEndpoint.init(id:endpointPath:name:deviceState:deviceTypes:clusters:clusterGroups:linkedEndpointIDs:roomIds:metadata:identifyTime:identifyType:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned __int8 *a14)
{
  v87 = a7;
  v88 = a8;
  v85 = a4;
  v86 = a6;
  v96 = a3;
  v97 = a5;
  v99 = a1;
  v100 = a12;
  v101 = a2;
  v91 = a13;
  v89 = a11;
  v90 = a10;
  v16 = type metadata accessor for StaticClusterGroups();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v98 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EndpointPath(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v92 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v83 - v23;
  v25 = type metadata accessor for MatterTilePath(0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *a14;
  sub_1D1A43740(a2, v24, type metadata accessor for EndpointPath);
  v30 = sub_1D1E66A7C();
  v93 = *(v30 - 8);
  v31 = *(v93 + 16);
  v31(v29, v24, v30);
  v83 = v19;
  v32 = *(v19 + 24);
  v33 = *&v24[*(v19 + 20)];
  v34 = *&v24[v32];
  sub_1D1A43810(v24, type metadata accessor for EndpointPath);
  v35 = *(v26 + 28);
  v36 = &v29[*(v26 + 32)];
  v94 = v30;
  v95 = v29;
  *&v29[v35] = v33;
  v38 = v85;
  v37 = v86;
  v39 = v87;
  *v36 = v34;
  v36[2] = 0;
  v31(a9, v99, v30);
  v40 = v88;
  v41 = type metadata accessor for StaticEndpoint();
  sub_1D1A43740(v101, &a9[v41[5]], type metadata accessor for EndpointPath);
  *&a9[v41[12]] = v89;
  *&a9[v41[9]] = v39;
  sub_1D1A43740(v40, &a9[v41[10]], type metadata accessor for StaticClusterGroups);
  *&a9[v41[7]] = v97;
  *&a9[v41[11]] = v90;
  *&a9[v41[8]] = v37;
  v42 = &a9[v41[6]];
  *v42 = v96;
  *(v42 + 1) = v38;
  sub_1D1A43740(v100, &a9[v41[13]], type metadata accessor for MatterTileMetadata);
  v43 = &a9[v41[14]];
  v44 = BYTE2(v91);
  *v43 = v91;
  v43[2] = v44 & 1;
  a9[v41[15]] = v84;
  v45 = qword_1EE07A0A8;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = sub_1D1E6709C();
  __swift_project_value_buffer(v46, qword_1EE07A0B0);
  v47 = v92;
  sub_1D1A43740(v101, v92, type metadata accessor for EndpointPath);
  v48 = v98;
  sub_1D1A43740(v40, v98, type metadata accessor for StaticClusterGroups);

  v49 = sub_1D1E6707C();
  v50 = sub_1D1E6832C();

  v51 = v38;
  if (os_log_type_enabled(v49, v50))
  {
    v91 = v50;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v90 = v53;
    *v52 = 136447746;
    v104 = 0xE300000000000000;
    v105[0] = v53;
    v54 = v83;
    v102 = *(v47 + *(v83 + 20));
    v103 = 3829371;
    v55 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v55);

    MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
    LOWORD(v102) = *(v47 + *(v54 + 24));
    v56 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v56);

    MEMORY[0x1D3890F70](125, 0xE100000000000000);
    v57 = v103;
    v58 = v104;
    sub_1D1A43810(v47, type metadata accessor for EndpointPath);
    v59 = sub_1D1B1312C(v57, v58, v105);

    *(v52 + 4) = v59;
    *(v52 + 12) = 2080;
    v60 = sub_1D1B1312C(v96, v51, v105);

    *(v52 + 14) = v60;
    *(v52 + 22) = 2082;
    sub_1D1785A60();
    v61 = sub_1D1E6817C();
    v63 = v37;
    v64 = sub_1D1B1312C(v61, v62, v105);

    *(v52 + 24) = v64;
    *(v52 + 32) = 2082;
    static MatterDeviceType.primaryDeviceType(for:)(v63, &v103);

    if (v103 == 28)
    {
      v65 = 0xE600000000000000;
      v66 = 0x296C6C756E28;
    }

    else
    {
      LOBYTE(v102) = v103;
      v66 = sub_1D1E6789C();
      v65 = v67;
    }

    v68 = sub_1D1B1312C(v66, v65, v105);

    *(v52 + 34) = v68;
    *(v52 + 42) = 2082;
    v69 = MTRDeviceState.description.getter(v97);
    v71 = sub_1D1B1312C(v69, v70, v105);

    *(v52 + 44) = v71;
    *(v52 + 52) = 2082;
    type metadata accessor for StaticCluster();
    sub_1D1785A0C();
    v72 = sub_1D1E6762C();
    v74 = v73;

    v75 = sub_1D1B1312C(v72, v74, v105);

    *(v52 + 54) = v75;
    *(v52 + 62) = 2082;
    v76 = v98;
    v77 = StaticClusterGroups.description.getter();
    v79 = v78;
    sub_1D1A43810(v76, type metadata accessor for StaticClusterGroups);
    v80 = sub_1D1B1312C(v77, v79, v105);

    *(v52 + 64) = v80;
    _os_log_impl(&dword_1D16EC000, v49, v91, "Creating StaticEndpoint: (%{public}s) name: (%s) deviceTypes:%{public}s primaryDeviceType:(%{public}s) deviceState: (%{public}s) clusters: %{public}s clusterGroup: (%{public}s)", v52, 0x48u);
    v81 = v90;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v81, -1, -1);
    MEMORY[0x1D3893640](v52, -1, -1);

    sub_1D1A43810(v100, type metadata accessor for MatterTileMetadata);
    sub_1D1A43810(v40, type metadata accessor for StaticClusterGroups);
    sub_1D1A43810(v101, type metadata accessor for EndpointPath);
    (*(v93 + 8))(v99, v94);
  }

  else
  {

    sub_1D1A43810(v100, type metadata accessor for MatterTileMetadata);
    sub_1D1A43810(v40, type metadata accessor for StaticClusterGroups);
    sub_1D1A43810(v101, type metadata accessor for EndpointPath);
    (*(v93 + 8))(v99, v94);
    sub_1D1A43810(v48, type metadata accessor for StaticClusterGroups);
    sub_1D1A43810(v47, type metadata accessor for EndpointPath);
  }

  return sub_1D1A43810(v95, type metadata accessor for MatterTilePath);
}

uint64_t sub_1D1A3EB38(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x617461646174656DLL;
    if (a1 != 9)
    {
      v6 = 0x796669746E656469;
    }

    v7 = 0x4772657473756C63;
    v8 = 0xD000000000000011;
    if (a1 != 7)
    {
      v8 = 0x7364496D6F6F72;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x7453656369766564;
    v3 = 0x7954656369766564;
    if (a1 != 4)
    {
      v3 = 0x7372657473756C63;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x746E696F70646E65;
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

uint64_t sub_1D1A3ECD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1A43D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1A3ED00(uint64_t a1)
{
  v2 = sub_1D1A43544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A3ED3C(uint64_t a1)
{
  v2 = sub_1D1A43544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticEndpoint.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6495F8, &qword_1D1E943C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A43544();
  sub_1D1E6930C();
  LOBYTE(v23) = 0;
  sub_1D1E66A7C();
  sub_1D1A43A24(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticEndpoint();
    v12 = v11[5];
    LOBYTE(v23) = 1;
    type metadata accessor for EndpointPath(0);
    sub_1D1A43A24(&qword_1EC646B18, type metadata accessor for EndpointPath);
    sub_1D1E68F1C();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v23) = 2;
    sub_1D1E68ECC();
    v23 = *(v3 + v11[7]);
    HIBYTE(v22) = 3;
    type metadata accessor for MTRDeviceState(0);
    sub_1D1A43A24(&qword_1EC646B28, type metadata accessor for MTRDeviceState);
    sub_1D1E68F1C();
    v23 = *(v3 + v11[8]);
    HIBYTE(v22) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
    sub_1D1904180(&qword_1EC646B30, sub_1D18F16D8);
    sub_1D1E68F1C();
    v23 = *(v3 + v11[9]);
    HIBYTE(v22) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B38, &qword_1D1E82200);
    sub_1D19001F8();
    sub_1D1E68F1C();
    v16 = v11[10];
    LOBYTE(v23) = 6;
    type metadata accessor for StaticClusterGroups();
    sub_1D1A43A24(&qword_1EC646B58, type metadata accessor for StaticClusterGroups);
    sub_1D1E68F1C();
    v23 = *(v3 + v11[11]);
    HIBYTE(v22) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B60, &qword_1D1E82208);
    sub_1D19004B4(&qword_1EC646B68);
    sub_1D1E68F1C();
    v23 = *(v3 + v11[12]);
    HIBYTE(v22) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1A43598(&qword_1EC646B10, &qword_1EE07B258);
    sub_1D1E68F1C();
    v17 = v11[13];
    LOBYTE(v23) = 9;
    type metadata accessor for MatterTileMetadata();
    sub_1D1A43A24(&qword_1EC646B20, type metadata accessor for MatterTileMetadata);
    sub_1D1E68F1C();
    v18 = (v3 + v11[14]);
    v19 = *v18;
    v20 = *(v18 + 2);
    LOBYTE(v23) = 10;
    sub_1D1E68E9C();
    LOBYTE(v23) = *(v3 + v11[15]);
    HIBYTE(v22) = 11;
    sub_1D1A43634();
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticEndpoint.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_1D1E66A7C();
  sub_1D1A43A24(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = type metadata accessor for StaticEndpoint();
  v5 = v1 + v4[5];
  sub_1D1E676EC();
  v6 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v5 + *(v6 + 20)));
  v7 = *(v5 + *(v6 + 24));
  sub_1D1E6923C();
  v8 = (v1 + v4[6]);
  v9 = *v8;
  v10 = v8[1];
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v1 + v4[7]));
  sub_1D176DB8C(a1, *(v1 + v4[8]));
  sub_1D185BAEC(a1, *(v1 + v4[9]));
  v11 = v1 + v4[10];
  StaticClusterGroups.hash(into:)(a1);
  sub_1D176E508(a1, *(v2 + v4[11]));
  sub_1D176D4E8(a1, *(v2 + v4[12]));
  v12 = v2 + v4[13];
  MatterTileMetadata.hash(into:)();
  v13 = (v2 + v4[14]);
  if (*(v13 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v14 = *v13;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  if (*(v2 + v4[15]) != 6)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StaticEndpoint.hashValue.getter()
{
  sub_1D1E6920C();
  StaticEndpoint.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticEndpoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53 = type metadata accessor for MatterTileMetadata();
  v3 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for StaticClusterGroups();
  v5 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for EndpointPath(0);
  v7 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649610, &qword_1D1E943D0);
  v58 = *(v60 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v15 = &v49 - v14;
  v16 = type metadata accessor for StaticEndpoint();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A43544();
  v61 = v15;
  v21 = v63;
  sub_1D1E692FC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v58;
  v50 = v16;
  v51 = v19;
  v63 = a1;
  LOBYTE(v65) = 0;
  sub_1D1A43A24(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68D7C();
  v24 = *(v57 + 32);
  v25 = v51;
  v49 = v10;
  v24(v51, v62, v10);
  LOBYTE(v65) = 1;
  sub_1D1A43A24(&qword_1EC646B80, type metadata accessor for EndpointPath);
  sub_1D1E68D7C();
  v26 = v50;
  sub_1D1A437A8(v9, &v25[v50[5]], type metadata accessor for EndpointPath);
  LOBYTE(v65) = 2;
  v59 = 0;
  v27 = sub_1D1E68D2C();
  v28 = &v25[v26[6]];
  *v28 = v27;
  v28[1] = v29;
  type metadata accessor for MTRDeviceState(0);
  v64 = 3;
  sub_1D1A43A24(&qword_1EC646B90, type metadata accessor for MTRDeviceState);
  sub_1D1E68D7C();
  *&v25[v26[7]] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
  v64 = 4;
  sub_1D1904180(&qword_1EC646B98, sub_1D18F1924);
  sub_1D1E68D7C();
  *&v25[v26[8]] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B38, &qword_1D1E82200);
  v64 = 5;
  sub_1D19003A4();
  sub_1D1E68D7C();
  *&v25[v26[9]] = v65;
  LOBYTE(v65) = 6;
  sub_1D1A43A24(&qword_1EC646BB8, type metadata accessor for StaticClusterGroups);
  v40 = v56;
  sub_1D1E68D7C();
  sub_1D1A437A8(v40, &v25[v26[10]], type metadata accessor for StaticClusterGroups);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B60, &qword_1D1E82208);
  v64 = 7;
  sub_1D19004B4(&qword_1EC646BC0);
  sub_1D1E68D7C();
  *&v51[v26[11]] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v64 = 8;
  sub_1D1A43598(&qword_1EC646B78, &qword_1EC644B20);
  sub_1D1E68D7C();
  v62 = 0;
  *&v51[v50[12]] = v65;
  LOBYTE(v65) = 9;
  sub_1D1A43A24(&qword_1EC646B88, type metadata accessor for MatterTileMetadata);
  v41 = v62;
  sub_1D1E68D7C();
  v62 = v41;
  if (v41)
  {
    (*(v22 + 8))(v61, v60);
    v42 = 0;
    v43 = v63;
  }

  else
  {
    sub_1D1A437A8(v54, &v51[v50[13]], type metadata accessor for MatterTileMetadata);
    LOBYTE(v65) = 10;
    v44 = v62;
    v45 = sub_1D1E68CFC();
    v62 = v44;
    if (!v44)
    {
      v46 = &v51[v50[14]];
      *v46 = v45;
      v46[2] = BYTE2(v45) & 1;
      v64 = 11;
      sub_1D1A43688();
      v47 = v62;
      sub_1D1E68CBC();
      v62 = v47;
      if (!v47)
      {
        (*(v22 + 8))(v61, v60);
        v48 = v51;
        v51[v50[15]] = v65;
        sub_1D1A43740(v48, v52, type metadata accessor for StaticEndpoint);
        __swift_destroy_boxed_opaque_existential_1(v63);
        return sub_1D1A43810(v48, type metadata accessor for StaticEndpoint);
      }
    }

    (*(v22 + 8))(v61, v60);
    v42 = 1;
    v43 = v63;
  }

  v30 = v57;
  v31 = v59;
  __swift_destroy_boxed_opaque_existential_1(v43);
  v32 = *(v30 + 8);
  v33 = v51;
  v32(v51, v49);
  if (!v31)
  {
    sub_1D1A43810(&v33[v50[5]], type metadata accessor for EndpointPath);
  }

  v34 = v50;
  v35 = *&v33[v50[6] + 8];

  v38 = *&v33[v34[8]];

  v36 = *&v33[v34[9]];

  sub_1D1A43810(&v33[v34[10]], type metadata accessor for StaticClusterGroups);
  v37 = *&v33[v34[11]];

  v39 = *&v33[v34[12]];

  if (v42)
  {
    return sub_1D1A43810(&v33[v34[13]], type metadata accessor for MatterTileMetadata);
  }

  return result;
}

uint64_t sub_1D1A4018C()
{
  sub_1D1E6920C();
  StaticEndpoint.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A401D0()
{
  sub_1D1E6920C();
  StaticEndpoint.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticEndpoint.init(device:valueSource:path:roomId:accessoryName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  object = a7;
  countAndFlagsBits = a6;
  v180 = a5;
  v171 = a2;
  v178 = a1;
  v170 = a8;
  v165 = type metadata accessor for MatterTilePath(0);
  v9 = *(*(v165 - 8) + 64);
  MEMORY[0x1EEE9AC00](v165);
  v181 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for StaticEndpoint();
  v168 = *(v169 - 8);
  v11 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v183 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1D1E66A7C();
  v190 = *(v182 - 8);
  v13 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v189 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EndpointPath(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v167 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v186 = &v156 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v164 = &v156 - v21;
  v22 = type metadata accessor for StaticClusterGroups();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v173 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v185 = &v156 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v179 = &v156 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AF8, &unk_1D1E97C50);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v156 - v31;
  v174 = type metadata accessor for StaticCluster();
  v33 = *(v174 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v174);
  v160 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v159 = &v156 - v37;
  v161 = type metadata accessor for ClusterPath(0);
  v38 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161);
  v177 = &v156 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for MatterTileMetadata();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v176 = &v156 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v156 - v44;
  v47 = *a3;
  v46 = a3[1];
  v172 = v15;
  v48 = *(v15 + 24);
  v192 = a4;
  LODWORD(a4) = *(a4 + v48);
  v198 = v47;
  v199 = v46;
  v200 = a4;
  v201 = 0;
  v202 = 0;
  v203 = 0;

  v163 = DescriptorClusterDecoder.endpointIDs.getter();
  v198 = v47;
  v199 = v46;
  v200 = a4;
  v201 = 0;
  v202 = 0;
  v203 = 0;
  v166 = DescriptorClusterDecoder.deviceTypes.getter();
  if (qword_1EC642290 != -1)
  {
LABEL_49:
    swift_once();
  }

  v50 = __swift_project_value_buffer(v40, qword_1EC648EE8);
  v188 = v45;
  sub_1D1A43740(v50, v45, type metadata accessor for MatterTileMetadata);
  v198 = v47;
  v199 = v46;
  v191 = v46;
  LODWORD(v162) = a4;
  v200 = a4;
  v201 = 0;
  v202 = 0;
  v203 = 0;
  v51 = DescriptorClusterDecoder.availableClusterKinds.getter();
  a4 = v51;
  v45 = 0;
  v46 = v51 + 56;
  v52 = 1 << *(v51 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v51 + 56);
  v55 = (v52 + 63) >> 6;
  v158 = v33;
  v33 += 48;
  v175 = MEMORY[0x1E69E7CC8];
  v56 = v174;
  while (1)
  {
    v57 = v45;
    if (!v54)
    {
      break;
    }

LABEL_9:
    v58 = __clz(__rbit64(v54));
    v40 = *(*(a4 + 48) + (v58 | (v45 << 6)));
    LOBYTE(v195) = *(*(a4 + 48) + (v58 | (v45 << 6)));
    v54 &= v54 - 1;
    v198 = v47;
    v199 = v191;
    sub_1D1A35AD8(&v195, &v198, v192, v32);
    if ((*v33)(v32, 1, v56) == 1)
    {
      sub_1D1741A30(v32, &qword_1EC646AF8, &unk_1D1E97C50);
    }

    else
    {
      v59 = v159;
      sub_1D1A437A8(v32, v159, type metadata accessor for StaticCluster);
      sub_1D1A43740(v59, v160, type metadata accessor for StaticCluster);
      v60 = v175;
      LODWORD(v157) = swift_isUniquelyReferenced_nonNull_native();
      v198 = v60;
      v62 = sub_1D171D278(v40);
      v63 = *(v60 + 16);
      v64 = (v61 & 1) == 0;
      v65 = v63 + v64;
      if (__OFADD__(v63, v64))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        result = sub_1D1E690FC();
        __break(1u);
        return result;
      }

      if (*(v60 + 24) >= v65)
      {
        v56 = v174;
        if (v157)
        {
          goto LABEL_17;
        }

        v157 = v62;
        LODWORD(v175) = v61;
        sub_1D1739780();
        LOBYTE(v61) = v175;
        v62 = v157;
      }

      else
      {
        LODWORD(v175) = v61;
        sub_1D1729800(v65, v157);
        v66 = sub_1D171D278(v40);
        v67 = v61 & 1;
        LOBYTE(v61) = v175;
        if ((v175 & 1) != v67)
        {
          goto LABEL_52;
        }

        v62 = v66;
      }

      v56 = v174;
LABEL_17:
      v175 = v198;
      if (v61)
      {
        sub_1D1A436DC(v160, *(v198 + 56) + *(v158 + 9) * v62);
        sub_1D1A43810(v159, type metadata accessor for StaticCluster);
      }

      else
      {
        *(v198 + 8 * (v62 >> 6) + 64) |= 1 << v62;
        *(*(v175 + 48) + v62) = v40;
        sub_1D1A437A8(v160, *(v175 + 56) + *(v158 + 9) * v62, type metadata accessor for StaticCluster);
        sub_1D1A43810(v159, type metadata accessor for StaticCluster);
        v68 = *(v175 + 16);
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          goto LABEL_51;
        }

        *(v175 + 16) = v70;
      }
    }
  }

  while (1)
  {
    v45 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v45 >= v55)
    {
      break;
    }

    v54 = *(v46 + 8 * v45);
    ++v57;
    if (v54)
    {
      goto LABEL_9;
    }
  }

  ObjectType = swift_getObjectType();
  v171 = (*(v171 + 40))(ObjectType);
  v72 = v188[1];
  if (v72)
  {
    countAndFlagsBits = *v188;

    object = v72;
    v73 = v190;
    v74 = v191;
    v75 = v186;
    v76 = v177;
    v77 = v162;
    v78 = v161;
  }

  else
  {
    v74 = v191;
    v198 = v47;
    v199 = v191;
    v77 = v162;
    v79 = AttributeValueSet.defaultName(in:)(v162);
    v73 = v190;
    v75 = v186;
    v76 = v177;
    v78 = v161;
    if (v79.value._object)
    {

      countAndFlagsBits = v79.value._countAndFlagsBits;
      object = v79.value._object;
    }
  }

  sub_1D1A43740(v192, v76, type metadata accessor for EndpointPath);
  *(v76 + *(v78 + 20)) = 10;
  v198 = v47;
  v199 = v74;
  v200 = v77;
  v201 = 0;
  v202 = 0;
  v203 = 0;
  v80 = DescriptorClusterDecoder.availableClusterKinds.getter();
  v81 = sub_1D17198DC(10, v80);

  if (!v81)
  {
    LODWORD(v161) = 0;
    LODWORD(v160) = 1;
    goto LABEL_38;
  }

  v202 = v78;
  v82 = sub_1D1A43A24(&qword_1EC646A70, type metadata accessor for ClusterPath);
  v203 = v82;
  v83 = __swift_allocate_boxed_opaque_existential_1(&v198);
  sub_1D1A43740(v76, v83, type metadata accessor for ClusterPath);
  v193 = v47;
  v194 = v74;
  AttributeValueSet.value(for:in:)(0, &v198, &v195);
  __swift_destroy_boxed_opaque_existential_1(&v198);
  if (v196)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v84 = swift_dynamicCast();
    if (v84)
    {
      LODWORD(v161) = v197;
    }

    else
    {
      LODWORD(v161) = 0;
      v197 = 0;
    }

    v85 = v84 ^ 1;
  }

  else
  {
    sub_1D1741A30(&v195, &qword_1EC645D58, &unk_1D1E7E530);
    LODWORD(v161) = 0;
    v85 = 1;
  }

  v202 = v78;
  v203 = v82;
  v86 = __swift_allocate_boxed_opaque_existential_1(&v198);
  sub_1D1A43740(v76, v86, type metadata accessor for ClusterPath);
  v193 = v47;
  v194 = v74;
  AttributeValueSet.value(for:in:)(1, &v198, &v195);
  __swift_destroy_boxed_opaque_existential_1(&v198);
  LODWORD(v160) = v85;
  if (!v196)
  {
    sub_1D1741A30(&v195, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    LODWORD(v159) = 6;
    LOBYTE(v197) = 6;
    goto LABEL_39;
  }

  StaticEndpoint.IdentifyType.init(rawValue:)(v198, &v197);
  LODWORD(v159) = v197;
LABEL_39:
  v198 = v47;
  v199 = v74;
  v87 = v192;
  v88 = v164;
  sub_1D1A43740(v192, v164, type metadata accessor for EndpointPath);
  v89 = v179;
  StaticClusterGroups.init(valueSource:path:)(&v198, v88, v179);
  v90 = v172;
  static UUID.matterObjectIdentifier(deviceID:endpointID:)(*(v87 + *(v172 + 20)), v77, v189);
  sub_1D1A43740(v87, v75, type metadata accessor for EndpointPath);
  v158 = type metadata accessor for StaticClusterGroups;
  sub_1D1A43740(v89, v185, type metadata accessor for StaticClusterGroups);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v91 = *(v73 + 72);
  v92 = v75;
  v93 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1D1E739C0;
  v95 = *(v73 + 16);
  v96 = v182;
  v95(v94 + v93, v180, v182);
  v157 = sub_1D179BE14(v94);
  swift_setDeallocating();
  v97 = *(v73 + 8);
  v190 = v73 + 8;
  v162 = v97;
  v97(v94 + v93, v96);
  swift_deallocClassInstance();
  v98 = v176;
  sub_1D1A43740(v188, v176, type metadata accessor for MatterTileMetadata);
  sub_1D1A43740(v92, v88, type metadata accessor for EndpointPath);
  v99 = v181;
  v95(v181, v88, v96);
  v100 = *(v88 + *(v90 + 20));
  LOWORD(v90) = *(v88 + *(v90 + 24));
  sub_1D1A43810(v88, type metadata accessor for EndpointPath);
  v101 = v99 + *(v165 + 24);
  *(v99 + *(v165 + 20)) = v100;
  v102 = v186;
  *v101 = v90;
  *(v101 + 2) = 0;
  v103 = v183;
  v104 = v96;
  v105 = v102;
  v95(v183, v189, v104);
  v106 = v185;
  v107 = v169;
  sub_1D1A43740(v105, v103 + *(v169 + 20), type metadata accessor for EndpointPath);
  *(v103 + v107[12]) = v157;
  *(v103 + v107[9]) = v175;
  sub_1D1A43740(v106, v103 + v107[10], v158);
  *(v103 + v107[7]) = v171;
  *(v103 + v107[11]) = v163;
  v108 = v166;
  *(v103 + v107[8]) = v166;
  v109 = (v103 + v107[6]);
  v110 = object;
  *v109 = countAndFlagsBits;
  v109[1] = v110;
  sub_1D1A43740(v98, v103 + v107[13], type metadata accessor for MatterTileMetadata);
  v111 = v103 + v107[14];
  *v111 = v161;
  *(v111 + 2) = v160;
  *(v103 + v107[15]) = v159;
  v112 = v110;
  v113 = qword_1EE07A0A8;

  if (v113 != -1)
  {
    swift_once();
  }

  v114 = sub_1D1E6709C();
  __swift_project_value_buffer(v114, qword_1EE07A0B0);
  v115 = v167;
  sub_1D1A43740(v105, v167, type metadata accessor for EndpointPath);
  v116 = v173;
  sub_1D1A43740(v106, v173, type metadata accessor for StaticClusterGroups);

  v117 = sub_1D1E6707C();
  v118 = v106;
  v119 = v105;
  v120 = sub_1D1E6832C();

  if (os_log_type_enabled(v117, v120))
  {
    v121 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    *&v195 = v165;
    *v121 = 136447746;
    v198 = 3829371;
    v199 = 0xE300000000000000;
    v122 = v108;
    v123 = v172;
    v193 = *(v115 + *(v172 + 20));
    v124 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v124);

    MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
    LOWORD(v193) = *(v115 + *(v123 + 24));
    v125 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v125);

    MEMORY[0x1D3890F70](125, 0xE100000000000000);
    v126 = v198;
    v127 = v199;
    sub_1D1A43810(v115, type metadata accessor for EndpointPath);
    v128 = sub_1D1B1312C(v126, v127, &v195);

    *(v121 + 4) = v128;
    *(v121 + 12) = 2080;
    v129 = sub_1D1B1312C(countAndFlagsBits, v112, &v195);

    *(v121 + 14) = v129;
    *(v121 + 22) = 2082;
    sub_1D1785A60();
    v130 = sub_1D1E6817C();
    v132 = sub_1D1B1312C(v130, v131, &v195);

    *(v121 + 24) = v132;
    *(v121 + 32) = 2082;
    static MatterDeviceType.primaryDeviceType(for:)(v122, &v198);

    if (v198 == 28)
    {
      v133 = 0xE600000000000000;
      v134 = 0x296C6C756E28;
    }

    else
    {
      LOBYTE(v193) = v198;
      v134 = sub_1D1E6789C();
      v133 = v137;
    }

    v138 = sub_1D1B1312C(v134, v133, &v195);

    *(v121 + 34) = v138;
    *(v121 + 42) = 2082;
    v139 = MTRDeviceState.description.getter(v171);
    v141 = sub_1D1B1312C(v139, v140, &v195);

    *(v121 + 44) = v141;
    *(v121 + 52) = 2082;
    sub_1D1785A0C();
    v142 = sub_1D1E6762C();
    v144 = v143;

    v145 = sub_1D1B1312C(v142, v144, &v195);

    *(v121 + 54) = v145;
    *(v121 + 62) = 2082;
    v146 = v173;
    v147 = StaticClusterGroups.description.getter();
    v149 = v148;
    sub_1D1A43810(v146, type metadata accessor for StaticClusterGroups);
    v150 = sub_1D1B1312C(v147, v149, &v195);

    *(v121 + 64) = v150;
    _os_log_impl(&dword_1D16EC000, v117, v120, "Creating StaticEndpoint: (%{public}s) name: (%s) deviceTypes:%{public}s primaryDeviceType:(%{public}s) deviceState: (%{public}s) clusters: %{public}s clusterGroup: (%{public}s)", v121, 0x48u);
    v151 = v165;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v151, -1, -1);
    MEMORY[0x1D3893640](v121, -1, -1);
    swift_unknownObjectRelease();

    v152 = v182;
    v153 = v162;
    v162(v180, v182);
    sub_1D1A43810(v192, type metadata accessor for EndpointPath);
    sub_1D1A43810(v181, type metadata accessor for MatterTilePath);
    sub_1D1A43810(v176, type metadata accessor for MatterTileMetadata);
    sub_1D1A43810(v185, type metadata accessor for StaticClusterGroups);
    sub_1D1A43810(v186, type metadata accessor for EndpointPath);
    v153(v189, v152);
  }

  else
  {
    swift_unknownObjectRelease();

    v135 = v182;
    v136 = v162;
    v162(v180, v182);
    sub_1D1A43810(v192, type metadata accessor for EndpointPath);
    sub_1D1A43810(v116, type metadata accessor for StaticClusterGroups);
    sub_1D1A43810(v115, type metadata accessor for EndpointPath);
    sub_1D1A43810(v181, type metadata accessor for MatterTilePath);
    sub_1D1A43810(v176, type metadata accessor for MatterTileMetadata);
    sub_1D1A43810(v118, type metadata accessor for StaticClusterGroups);
    sub_1D1A43810(v119, type metadata accessor for EndpointPath);
    v136(v189, v135);
  }

  sub_1D1A43810(v179, type metadata accessor for StaticClusterGroups);
  sub_1D1A43810(v177, type metadata accessor for ClusterPath);
  sub_1D1A43810(v188, type metadata accessor for MatterTileMetadata);
  v154 = v170;
  sub_1D1A437A8(v183, v170, type metadata accessor for StaticEndpoint);
  return (*(v168 + 56))(v154, 0, 1, v107);
}

double StaticEndpoint.tileIcon.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticEndpoint();
  v4 = v1 + *(v3 + 52);
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);

    v8._countAndFlagsBits = v6;
    v8._object = v5;
    Icon.init(customIconName:)(&v16, v8);
  }

  else
  {
    static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v3 + 32)), &v15);
    if (v15 == 28)
    {
      if (qword_1EC642238 != -1)
      {
        swift_once();
      }

      v13[2] = *&qword_1EC646788;
      v13[3] = xmmword_1EC646798;
      *v14 = xmmword_1EC6467A8;
      *&v14[9] = *(&xmmword_1EC6467A8 + 9);
      v13[0] = xmmword_1EC646768;
      v13[1] = xmmword_1EC646778;
      v16.accessoryControlOnStateIconInfo.name = xmmword_1EC646798;
      *&v16.accessoryControlOnStateIconInfo.renderingMode = xmmword_1EC6467A8;
      *&v16.tileOnStateIconInfo.renderingMode = xmmword_1EC646778;
      *&v16.tileOffStateIconInfo.name._object = *&qword_1EC646788;
      *(&v16.accessoryControlOffStateIconInfo.name + 1) = *(&xmmword_1EC6467A8 + 9);
      v16.tileOnStateIconInfo.name = xmmword_1EC646768;
      sub_1D18A9844(v13, &v12);
    }

    else
    {
      LOBYTE(v13[0]) = v15;
      Icon.init(deviceType:)(&v16, v13);
    }
  }

  name = v16.accessoryControlOnStateIconInfo.name;
  *(a1 + 32) = *&v16.tileOffStateIconInfo.name._object;
  *(a1 + 48) = name;
  *(a1 + 64) = *&v16.accessoryControlOnStateIconInfo.renderingMode;
  *(a1 + 73) = *(&v16.accessoryControlOffStateIconInfo.name + 1);
  result = *&v16.tileOnStateIconInfo.name._countAndFlagsBits;
  v11 = *&v16.tileOnStateIconInfo.renderingMode;
  *a1 = v16.tileOnStateIconInfo.name;
  *(a1 + 16) = v11;
  return result;
}

uint64_t StaticEndpoint.customIconSymbol.getter()
{
  v1 = v0 + *(type metadata accessor for StaticEndpoint() + 52);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t StaticEndpoint.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t StaticEndpoint.foregroundColor.getter()
{
  v1 = type metadata accessor for StaticEndpoint();
  static MatterDeviceType.primaryDeviceType(for:)(*(v0 + *(v1 + 32)), v3);
  if (v3[0] != 28)
  {
    return MatterDeviceType.foregroundColor.getter();
  }

  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t StaticEndpoint.isDoubleHigh.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticEndpoint() + 52) + 48);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v3 = "40-A849-215882E2F008";
    if (v1)
    {
      v3 = "HFTileResizableSizeSmall";
    }

    if (v3 | 0x8000000000000000) == 0x80000001D1EB3840 && (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1D1E6904C();
    }
  }

  return v2 & 1;
}

uint64_t StaticEndpoint.tileSize.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticEndpoint();
  *a1 = *(v1 + *(result + 52) + 48);
  return result;
}

uint64_t StaticEndpoint.set(showInDashboard:)(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A08578;

  return StaticEndpoint.set(shouldShowInDashboard:)(a1);
}

uint64_t sub_1D1A41D34(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A44134;

  return StaticEndpoint.set(shouldShowInDashboard:)(a1);
}

uint64_t sub_1D1A41DC8(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A44134;

  return StaticEndpoint.set(includeInStatus:)(a1);
}

uint64_t StaticEndpoint.set(includeInStatus:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 140) = a1;
  v3 = type metadata accessor for EndpointPath(0);
  *(v2 + 72) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = sub_1D1E67E1C();
  *(v2 + 96) = sub_1D1E67E0C();
  *(v2 + 104) = sub_1D1E67E0C();
  v5 = swift_task_alloc();
  *(v2 + 112) = v5;
  *v5 = v2;
  v5[1] = sub_1D1A41F54;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A41F54(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 120) = a1;

  v6 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A42098, v6, v5);
}

uint64_t sub_1D1A42098()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  if (v1)
  {
    v3 = *(v0 + 120);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);
    v9 = *(type metadata accessor for StaticEndpoint() + 20);
    *(v0 + 136) = v9;
    v10 = *(v8 + v9 + *(v7 + 20));
    sub_1D1A43740(v8 + v9, v6, type metadata accessor for EndpointPath);
    v11 = HMHomeManager.matterDevice(with:inHomeWithID:)(v10, v6);
    *(v0 + 48) = v11;
    *(v0 + 56) = v12;

    *(v0 + 128) = v11;
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 8))(v6, v13);
    v14 = sub_1D1E67D4C();
    v16 = v15;
    v17 = sub_1D1A421F8;
  }

  else
  {
    v18 = *(v0 + 88);
    v19 = *(v0 + 96);
    v14 = sub_1D1E67D4C();
    v16 = v20;
    v17 = sub_1D1A42300;
  }

  return MEMORY[0x1EEE6DFA0](v17, v14, v16);
}

uint64_t sub_1D1A421F8()
{
  v15 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);

  if (v1)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    v6 = *(v0 + 140);
    v7 = *(v0 + 64) + *(v0 + 136);
    ObjectType = swift_getObjectType();
    v14[0] = 8;
    v9 = *(v7 + *(v4 + 24));
    v10 = MEMORY[0x1E69E6370];
    *(v0 + 16) = v6;
    *(v0 + 40) = v10;
    (*(v5 + 72))(v14, v9, v0 + 16, ObjectType, v5);
    swift_unknownObjectRelease();
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v11 = *(v0 + 80);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D1A42300()
{
  v1 = v0[12];

  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t StaticEndpoint.device.getter()
{
  v1[2] = v0;
  v2 = type metadata accessor for EndpointPath(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = sub_1D1E67E1C();
  v1[6] = sub_1D1E67E0C();
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_1D1A424B4;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A424B4(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 64) = a1;

  v6 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A425F8, v6, v5);
}

uint64_t sub_1D1A425F8()
{
  v1 = v0[8];
  v2 = v0[6];

  if (v1)
  {
    v3 = v0[8];
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[2];
    v7 = v6 + *(type metadata accessor for StaticEndpoint() + 20);
    v8 = *(v7 + *(v4 + 20));
    sub_1D1A43740(v7, v5, type metadata accessor for EndpointPath);
    v9 = HMHomeManager.matterDevice(with:inHomeWithID:)(v8, v5);
    v11 = v10;

    v12 = sub_1D1E66A7C();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v13 = v0[4];

  v14 = v0[1];

  return v14(v9, v11);
}

uint64_t StaticEndpoint.toggleKnownState()()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649570, &qword_1D1E94080) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for StaticOnOffCluster();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  sub_1D1E67E1C();
  v1[8] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  v1[9] = v8;
  v1[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D1A42878, v8, v7);
}

uint64_t sub_1D1A42878()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_1D1A45C7C(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[3];
    v6 = v0[2];
    sub_1D1741A30(v0[4], &qword_1EC649570, &qword_1D1E94080);
    v7 = type metadata accessor for StaticEndpoint();
    sub_1D18FB784(v6 + *(v7 + 40), v5);
    v8 = type metadata accessor for StaticRVCClusterGroup();
    v9 = (*(*(v8 - 8) + 48))(v5, 1, v8);
    v10 = v0[8];
    v11 = v0[3];
    if (v9 == 1)
    {
      v12 = v0[8];

      sub_1D1741A30(v11, &qword_1EC644778, &unk_1D1E75B10);
    }

    else
    {
      sub_1D1741A30(v0[3], &qword_1EC644778, &unk_1D1E75B10);
    }

    v16 = v0[7];
    v17 = v0[3];
    v18 = v0[4];

    v19 = v0[1];

    return v19();
  }

  else
  {
    sub_1D1A437A8(v0[4], v0[7], type metadata accessor for StaticOnOffCluster);
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_1D1A42A84;
    v14 = v0[7];

    return StaticOnOffCluster.toggleKnownState()();
  }
}

uint64_t sub_1D1A42A84()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_1D1A42C5C;
  }

  else
  {
    v7 = sub_1D1A42BC0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D1A42BC0()
{
  v2 = v0[7];
  v1 = v0[8];

  sub_1D1A43810(v2, type metadata accessor for StaticOnOffCluster);
  v3 = v0[7];
  v4 = v0[3];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1A42C5C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];

  sub_1D1A43810(v2, type metadata accessor for StaticOnOffCluster);

  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t sub_1D1A42D00()
{
  v1[2] = v0;
  v2 = type metadata accessor for EndpointPath(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A42D94, 0, 0);
}

uint64_t sub_1D1A42D94()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[5] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[2];
    v5 = v4 + *(type metadata accessor for StaticEndpoint() + 20);
    v0[6] = *(v5 + *(v2 + 20));
    sub_1D1A43740(v5, v3, type metadata accessor for EndpointPath);
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v6 = qword_1EC64ABE8;
    v7 = sub_1D1A42ECC;
    v8 = 0;
  }

  else
  {
    v0[8] = sub_1D1E67E1C();
    v0[9] = sub_1D1E67E0C();
    v9 = sub_1D1E67D4C();
    v11 = v10;
    v7 = sub_1D1A42FE8;
    v6 = v9;
    v8 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v8);
}

uint64_t sub_1D1A42ECC()
{
  v1 = v0[5];
  v2 = v0[4];
  v0[7] = HomeState.Stream.accessory(with:inHomeWithID:)(v0[6], v2);
  v3 = sub_1D1E66A7C();
  (*(*(v3 - 8) + 8))(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1A42F78, 0, 0);
}

uint64_t sub_1D1A42F78()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_1D1A42FE8()
{
  v1 = *(v0 + 72);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1A43080, 0, 0);
}

uint64_t sub_1D1A43080()
{
  v1 = *(v0 + 64);
  *(v0 + 80) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A4310C, v3, v2);
}

uint64_t sub_1D1A4310C()
{
  v1 = *(v0 + 80);

  *(v0 + 88) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1A43180, 0, 0);
}

uint64_t sub_1D1A43180()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = v4 + *(type metadata accessor for StaticEndpoint() + 20);
  v0[12] = *(v5 + *(v3 + 20));
  sub_1D1A43740(v5, v2, type metadata accessor for EndpointPath);
  v0[13] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A43254, v7, v6);
}

uint64_t sub_1D1A43254()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[4];

  v5 = DataModel.accessory(with:inHomeWithID:)(v2);
  v6 = sub_1D1E66A7C();
  (*(*(v6 - 8) + 8))(v4, v6);
  v7 = v0[4];

  v8 = v0[1];

  return v8(v5);
}

uint64_t _s13HomeDataModel14StaticEndpointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticEndpoint();
  v5 = v4[5];
  v6 = a1 + v5;
  v7 = a2 + v5;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for EndpointPath(0);
  if (*(v6 + *(v8 + 20)) != *(v7 + *(v8 + 20)) || *(v6 + *(v8 + 24)) != *(v7 + *(v8 + 24)))
  {
    return 0;
  }

  v9 = v4[6];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v10 == *v12 && v11 == v12[1];
  if (!v13 && (sub_1D1E6904C() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]) || (sub_1D17A7F14(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0 || (sub_1D184C184(*(a1 + v4[9]), *(a2 + v4[9])) & 1) == 0 || !_s13HomeDataModel19StaticClusterGroupsV2eeoiySbAC_ACtFZ_0(a1 + v4[10], a2 + v4[10]) || (sub_1D17A8098(*(a1 + v4[11]), *(a2 + v4[11])) & 1) == 0 || (sub_1D17A6E98(*(a1 + v4[12]), *(a2 + v4[12])) & 1) == 0 || !static MatterTileMetadata.== infix(_:_:)((a1 + v4[13]), a2 + v4[13]))
  {
    return 0;
  }

  v14 = v4[14];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 2);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 2);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = v4[15];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 6)
  {
    if (v21 == 6)
    {
      return 1;
    }
  }

  else if (v20 == v21)
  {
    return 1;
  }

  return 0;
}

uint64_t type metadata accessor for StaticEndpoint()
{
  result = qword_1EE07CBC8;
  if (!qword_1EE07CBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1A43544()
{
  result = qword_1EC649600;
  if (!qword_1EC649600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649600);
  }

  return result;
}

uint64_t sub_1D1A43598(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1A43A24(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1A43634()
{
  result = qword_1EC649608;
  if (!qword_1EC649608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649608);
  }

  return result;
}

unint64_t sub_1D1A43688()
{
  result = qword_1EC649618;
  if (!qword_1EC649618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649618);
  }

  return result;
}

uint64_t sub_1D1A436DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCluster();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A43740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A437A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A43810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A43900(void *a1)
{
  a1[1] = sub_1D1A43A24(&qword_1EC649628, type metadata accessor for StaticEndpoint);
  a1[2] = sub_1D1A43A24(&qword_1EC649630, type metadata accessor for StaticEndpoint);
  a1[3] = sub_1D1A43A24(&qword_1EC644740, type metadata accessor for StaticEndpoint);
  a1[4] = sub_1D1A43A24(&qword_1EC6446D8, type metadata accessor for StaticEndpoint);
  a1[5] = sub_1D1A43A24(&qword_1EC649638, type metadata accessor for StaticEndpoint);
  result = sub_1D1A43A24(&qword_1EC649640, type metadata accessor for StaticEndpoint);
  a1[6] = result;
  return result;
}

uint64_t sub_1D1A43A24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1A43ABC()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EndpointPath(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MTRDeviceState(319);
      if (v2 <= 0x3F)
      {
        sub_1D1900840();
        if (v3 <= 0x3F)
        {
          sub_1D190089C();
          if (v4 <= 0x3F)
          {
            type metadata accessor for StaticClusterGroups();
            if (v5 <= 0x3F)
            {
              sub_1D1900908();
              if (v6 <= 0x3F)
              {
                sub_1D1791340();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for MatterTileMetadata();
                  if (v8 <= 0x3F)
                  {
                    sub_1D17BDF80(319, &qword_1EE07D1D0);
                    if (v9 <= 0x3F)
                    {
                      sub_1D17BDF80(319, qword_1EE07CBD8);
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

unint64_t sub_1D1A43C54()
{
  result = qword_1EC649648;
  if (!qword_1EC649648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649648);
  }

  return result;
}

unint64_t sub_1D1A43CAC()
{
  result = qword_1EC649650;
  if (!qword_1EC649650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649650);
  }

  return result;
}

unint64_t sub_1D1A43D04()
{
  result = qword_1EC649658;
  if (!qword_1EC649658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649658);
  }

  return result;
}

uint64_t sub_1D1A43D58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEC00000068746150 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453656369766564 && a2 == 0xEB00000000657461 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7372657473756C63 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4772657473756C63 && a2 == 0xED00007370756F72 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EBE040 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x796669746E656469 && a2 == 0xEC000000656D6954 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x796669746E656469 && a2 == 0xEC00000065707954)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t MatterEndpoint.doorLockCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticCluster();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(a2 + 8))(a1, a2);
  if (!*(v11 + 16) || (v12 = sub_1D171D278(22), (v13 & 1) == 0))
  {

LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  sub_1D19D0574(*(v11 + 56) + *(v7 + 72) * v12, v10);

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D1A45594(v10, type metadata accessor for StaticCluster);
    goto LABEL_6;
  }

  sub_1D1A455F4(v10, a3, type metadata accessor for StaticDoorLockCluster);
  v14 = 0;
LABEL_7:
  v15 = type metadata accessor for StaticDoorLockCluster();
  return (*(*(v15 - 8) + 56))(a3, v14, 1, v15);
}

uint64_t MatterEndpoint.rvcClusterGroup.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticClusterGroups();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  sub_1D1741C08(v9, a3, &qword_1EC644778, &unk_1D1E75B10);
  return sub_1D1A45594(v9, type metadata accessor for StaticClusterGroups);
}

uint64_t MatterEndpoint.thermostatCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticClusterGroups();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = &type metadata for HomeKitFeatures;
  v14[4] = sub_1D18076E8();
  LOBYTE(v14[0]) = 3;
  v10 = sub_1D1E66D5C();
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v10)
  {
    (*(a2 + 16))(a1, a2);
    sub_1D1741C08(&v9[*(v6 + 20)], a3, &qword_1EC644790, &unk_1D1E75B48);
    return sub_1D1A45594(v9, type metadata accessor for StaticClusterGroups);
  }

  else
  {
    v12 = type metadata accessor for StaticThermostatClusterGroup();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

uint64_t MatterEndpoint.powerSourceCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticCluster();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(a2 + 8))(a1, a2);
  if (!*(v11 + 16) || (v12 = sub_1D171D278(2), (v13 & 1) == 0))
  {

LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  sub_1D19D0574(*(v11 + 56) + *(v7 + 72) * v12, v10);

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1D1A45594(v10, type metadata accessor for StaticCluster);
    goto LABEL_6;
  }

  sub_1D1A455F4(v10, a3, type metadata accessor for StaticClusterPowerSource);
  v14 = 0;
LABEL_7:
  v15 = type metadata accessor for StaticClusterPowerSource();
  return (*(*(v15 - 8) + 56))(a3, v14, 1, v15);
}

uint64_t MatterEndpoint.colorControlCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticCluster();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(a2 + 8))(a1, a2);
  if (!*(v11 + 16) || (v12 = sub_1D171D278(17), (v13 & 1) == 0))
  {

LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  sub_1D19D0574(*(v11 + 56) + *(v7 + 72) * v12, v10);

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1D1A45594(v10, type metadata accessor for StaticCluster);
    goto LABEL_6;
  }

  sub_1D1A455F4(v10, a3, type metadata accessor for StaticColorControlCluster);
  v14 = 0;
LABEL_7:
  v15 = type metadata accessor for StaticColorControlCluster();
  return (*(*(v15 - 8) + 56))(a3, v14, 1, v15);
}

uint64_t MatterEndpoint.onOffCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticCluster();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(a2 + 8))(a1, a2);
  if (!*(v11 + 16) || (v12 = sub_1D171D278(11), (v13 & 1) == 0))
  {

LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  sub_1D19D0574(*(v11 + 56) + *(v7 + 72) * v12, v10);

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D1A45594(v10, type metadata accessor for StaticCluster);
    goto LABEL_6;
  }

  sub_1D1A455F4(v10, a3, type metadata accessor for StaticOnOffCluster);
  v14 = 0;
LABEL_7:
  v15 = type metadata accessor for StaticOnOffCluster();
  return (*(*(v15 - 8) + 56))(a3, v14, 1, v15);
}

uint64_t StaticEndpoint.primaryCluster.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649568, &qword_1D1E94078);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649570, &qword_1D1E94080);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26[-v13];
  v15 = type metadata accessor for StaticEndpoint();
  result = static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v15 + 32)), &v27);
  if (v27 - 5 >= 3)
  {
    if (v27 == 23)
    {
      sub_1D1741C08(v1 + *(v15 + 40), v6, &qword_1EC644778, &unk_1D1E75B10);
      v25 = type metadata accessor for StaticRVCClusterGroup();
      if ((*(*(v25 - 8) + 48))(v6, 1, v25) == 1)
      {
        v18 = &qword_1EC644778;
        v19 = &unk_1D1E75B10;
        v20 = v6;
        goto LABEL_11;
      }

      *(a1 + 24) = v25;
      *(a1 + 32) = &protocol witness table for StaticRVCClusterGroup;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v23 = type metadata accessor for StaticRVCClusterGroup;
      v24 = v6;
    }

    else
    {
      if (v27 != 4)
      {
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return result;
      }

      sub_1D1A45C7C(v14);
      v21 = type metadata accessor for StaticOnOffCluster();
      if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
      {
        v18 = &qword_1EC649570;
        v19 = &qword_1D1E94080;
        v20 = v14;
        goto LABEL_11;
      }

      *(a1 + 24) = v21;
      *(a1 + 32) = &protocol witness table for StaticOnOffCluster;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v23 = type metadata accessor for StaticOnOffCluster;
      v24 = v14;
    }
  }

  else
  {
    sub_1D1A44DD4(v10);
    v17 = type metadata accessor for StaticLevelControlCluster();
    if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
    {
      v18 = &qword_1EC649568;
      v19 = &qword_1D1E94078;
      v20 = v10;
LABEL_11:
      result = sub_1D1741A30(v20, v18, v19);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      return result;
    }

    *(a1 + 24) = v17;
    *(a1 + 32) = &protocol witness table for StaticLevelControlCluster;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v23 = type metadata accessor for StaticLevelControlCluster;
    v24 = v10;
  }

  return sub_1D1A455F4(v24, boxed_opaque_existential_1, v23);
}

uint64_t sub_1D1A44DD4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticCluster();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(type metadata accessor for StaticEndpoint() + 36));
  if (!*(v8 + 16))
  {
    goto LABEL_6;
  }

  v9 = sub_1D171D278(12);
  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1D19D0574(*(v8 + 56) + *(v4 + 72) * v9, v7);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1D1A45594(v7, type metadata accessor for StaticCluster);
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  sub_1D1A455F4(v7, a1, type metadata accessor for StaticLevelControlCluster);
  v11 = 0;
LABEL_7:
  v12 = type metadata accessor for StaticLevelControlCluster();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t MatterEndpoint.levelCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticCluster();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(a2 + 8))(a1, a2);
  if (!*(v11 + 16) || (v12 = sub_1D171D278(12), (v13 & 1) == 0))
  {

LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  sub_1D19D0574(*(v11 + 56) + *(v7 + 72) * v12, v10);

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1D1A45594(v10, type metadata accessor for StaticCluster);
    goto LABEL_6;
  }

  sub_1D1A455F4(v10, a3, type metadata accessor for StaticLevelControlCluster);
  v14 = 0;
LABEL_7:
  v15 = type metadata accessor for StaticLevelControlCluster();
  return (*(*(v15 - 8) + 56))(a3, v14, 1, v15);
}

uint64_t MatterEndpoint.onOff.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649570, &qword_1D1E94080);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  MatterEndpoint.onOffCluster.getter(a1, a2, &v11 - v6);
  v8 = type metadata accessor for StaticOnOffCluster();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC649570, &qword_1D1E94080);
    return 2;
  }

  else
  {
    v9 = v7[*(v8 + 20)];
    sub_1D1A45594(v7, type metadata accessor for StaticOnOffCluster);
  }

  return v9;
}

uint64_t MatterEndpoint.basicInfoCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticCluster();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(a2 + 8))(a1, a2);
  if (*(v11 + 16) && (v12 = sub_1D171D278(1), (v13 & 1) != 0))
  {
    sub_1D19D0574(*(v11 + 56) + *(v7 + 72) * v12, v10);

    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1D1A455F4(v10, a3, type metadata accessor for StaticBasicInfoCluster);
      v14 = 0;
      goto LABEL_7;
    }

    sub_1D1A45594(v10, type metadata accessor for StaticCluster);
  }

  else
  {
  }

  v14 = 1;
LABEL_7:
  v15 = type metadata accessor for StaticBasicInfoCluster();
  return (*(*(v15 - 8) + 56))(a3, v14, 1, v15);
}

uint64_t StaticEndpoint.tileStatusAttributePaths.getter()
{
  v1 = v0;
  StaticEndpoint.primaryCluster.getter(v9);
  v2 = v10;
  if (v10)
  {
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v3 + 32))(v2, v3);
    v5 = __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v5 = sub_1D1741A30(v9, &qword_1EC646BC8, &qword_1D1E82230);
    v4 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v5);
  v8[2] = v1;
  v6 = sub_1D1892D24(sub_1D1A4565C, v8, v4);

  return v6;
}

void sub_1D1A454C8(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a2 + *(type metadata accessor for StaticEndpoint() + 20);
  v7 = *(v6 + *(type metadata accessor for EndpointPath(0) + 24));
  v8 = sub_1D1E692AC();
  v9 = dword_1D1E9473C[v4];
  v10 = sub_1D1E692CC();
  v11 = sub_1D1E692CC();
  v12 = [objc_opt_self() attributePathWithEndpointID:v8 clusterID:v10 attributeID:v11];

  *a3 = v12;
}

uint64_t sub_1D1A45594(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A455F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t StaticEndpoint.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for StaticCluster();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticOnOffCluster();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StaticEndpoint();
  if (*(v0 + *(v14 + 28)) != 2)
  {
    v15 = v14;
    v16 = *(v0 + *(v14 + 36));
    if (*(v16 + 16))
    {
      v17 = sub_1D171D278(11);
      if (v18)
      {
        sub_1D19D0574(*(v16 + 56) + *(v6 + 72) * v17, v9);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D1A465E4(v9, v13, type metadata accessor for StaticOnOffCluster);
          LOBYTE(v19) = v13[*(v10 + 20)];
          v20 = type metadata accessor for StaticOnOffCluster;
          v21 = v13;
LABEL_11:
          sub_1D1A4664C(v21, v20);
          return v19 & 1;
        }

        sub_1D1A4664C(v9, type metadata accessor for StaticCluster);
      }
    }

    sub_1D18FB784(v0 + *(v15 + 40), v4);
    v22 = type metadata accessor for StaticRVCClusterGroup();
    if ((*(*(v22 - 8) + 48))(v4, 1, v22) != 1)
    {
      v23 = v4[*(v22 + 20)];
      v19 = (v23 > 0xB) | (0x15u >> v23);
      v20 = type metadata accessor for StaticRVCClusterGroup;
      v21 = v4;
      goto LABEL_11;
    }

    sub_1D1741A30(v4, &qword_1EC644778, &unk_1D1E75B10);
  }

  LOBYTE(v19) = 0;
  return v19 & 1;
}

uint64_t StaticEndpoint.canBeToggled.getter()
{
  result = type metadata accessor for StaticEndpoint();
  if (*(v0 + *(result + 28)) == 2)
  {
    return 0;
  }

  if (*(*(v0 + *(result + 36)) + 16))
  {
    v2 = result;
    sub_1D171D278(11);
    result = v2;
    if (v3)
    {
      return 1;
    }
  }

  v4 = 0;
  v5 = *(v0 + *(result + 32));
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_14:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(v5 + 48) + (v11 | (v4 << 6))) - 4;
    if (v12 <= 0x11 && ((0x203ADu >> v12) & 1) != 0)
    {
      return 1;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return 0;
    }

    v8 = *(v5 + 56 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id StaticEndpoint.statusString(with:associatedMatterDevice:)(_BYTE *a1)
{
  v3 = sub_1D1A4625C(a1);
  v5 = v4;
  v6 = *(v1 + *(type metadata accessor for StaticEndpoint() + 28));
  StaticEndpoint.primaryCluster.getter(v17);
  v7 = v18;
  if (v18)
  {
    v8 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v9 = (*(v8 + 24))(v7, v8);
    v7 = v10;
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1D1741A30(v17, &qword_1EC646BC8, &qword_1D1E82230);
    v9 = 0;
  }

  LOBYTE(v13) = v6 == 1;
  *(&v13 + 1) = 512;
  BYTE3(v13) = 2;
  BYTE4(v13) = v6 == 0;
  *(&v13 + 1) = v3;
  *&v14 = v5;
  *(&v14 + 1) = v9;
  v11 = StatusStrings.string(for:)(a1);
  v15[0] = v13;
  v15[1] = v14;
  v16 = v7;
  sub_1D1A46590(v15);
  return v11;
}

uint64_t sub_1D1A45C7C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticCluster();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(type metadata accessor for StaticEndpoint() + 36));
  if (!*(v8 + 16))
  {
    goto LABEL_6;
  }

  v9 = sub_1D171D278(11);
  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1D19D0574(*(v8 + 56) + *(v4 + 72) * v9, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D1A4664C(v7, type metadata accessor for StaticCluster);
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  sub_1D1A465E4(v7, a1, type metadata accessor for StaticOnOffCluster);
  v11 = 0;
LABEL_7:
  v12 = type metadata accessor for StaticOnOffCluster();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t sub_1D1A45DFC()
{
  v1 = type metadata accessor for StaticCluster();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticOnOffCluster();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + *(type metadata accessor for StaticEndpoint() + 36));
  if (*(v10 + 16))
  {
    v11 = sub_1D171D278(11);
    if (v12)
    {
      sub_1D19D0574(*(v10 + 56) + *(v2 + 72) * v11, v5);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D1A465E4(v5, v9, type metadata accessor for StaticOnOffCluster);
        v13 = v9[*(v6 + 20)];
        sub_1D1A4664C(v9, type metadata accessor for StaticOnOffCluster);
        return v13;
      }

      sub_1D1A4664C(v5, type metadata accessor for StaticCluster);
    }
  }

  return 2;
}

uint64_t StaticEndpoint.roomId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for StaticEndpoint();
  sub_1D17721A0(*(v1 + *(v7 + 48)), v6);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1A460B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  sub_1D17721A0(*(v2 + *(a1 + 48)), &v12 - v7);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a2, v8, v9);
  }

  __break(1u);
  return result;
}

char StaticEndpoint.statusIcon.getter@<W0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticEndpoint();
  result = static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v3 + 32)), &v13);
  v5 = v13;
  v6 = v1 + *(v3 + 52);
  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = *(v6 + 16);
    v9 = *(v6 + 24);

    v10._countAndFlagsBits = v8;
    v10._object = v7;
    result = IconSymbol.init(rawValue:)(v10).value;
    v11 = v12;
  }

  else
  {
    v11 = 92;
  }

  *a1 = v5;
  *(a1 + 8) = 32;
  *(a1 + 9) = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1D1A4625C(uint64_t a1)
{
  v3 = *(a1 + 4);
  if (v3 > 2 || v3 == 0)
  {
    return 0;
  }

  v15 = v1;
  v16 = v2;
  if (v3 == 1)
  {
    StaticEndpoint.primaryCluster.getter(v12);
    v6 = v13;
    if (v13)
    {
      v7 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v8 = (*(v7 + 16))(v6, v7);
LABEL_12:
      v11 = v8;
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v11;
    }
  }

  else
  {
    StaticEndpoint.primaryCluster.getter(v12);
    v9 = v13;
    if (v13)
    {
      v10 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v8 = (*(v10 + 8))(v9, v10);
      goto LABEL_12;
    }
  }

  sub_1D1741A30(v12, &qword_1EC646BC8, &qword_1D1E82230);
  return 0;
}

uint64_t StaticEndpoint.tileStatusStringIconSymbolSuffix.getter()
{
  v1 = type metadata accessor for StaticCluster();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticClusterPowerSource();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + *(type metadata accessor for StaticEndpoint() + 36));
  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = sub_1D171D278(2);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  sub_1D19D0574(*(v10 + 56) + *(v2 + 72) * v11, v5);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    v14 = type metadata accessor for StaticCluster;
    v15 = v5;
    goto LABEL_7;
  }

  sub_1D1A465E4(v5, v9, type metadata accessor for StaticClusterPowerSource);
  v13 = &v9[*(v6 + 36)];
  if (v13[1])
  {
    v14 = type metadata accessor for StaticClusterPowerSource;
    v15 = v9;
LABEL_7:
    sub_1D1A4664C(v15, v14);
    return 0;
  }

  v17 = *v13;
  sub_1D1A4664C(v9, type metadata accessor for StaticClusterPowerSource);
  if (v17 >= 0xA)
  {
    return 0;
  }

  else
  {
    return 0x2E79726574746162;
  }
}

uint64_t sub_1D1A465E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A4664C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A466AC(void *a1)
{
  a1[1] = sub_1D1A4675C(&qword_1EC644740);
  a1[2] = sub_1D1A4675C(&qword_1EC6446D8);
  a1[3] = sub_1D1A4675C(&qword_1EC649638);
  result = sub_1D1A4675C(&qword_1EC649640);
  a1[4] = result;
  return result;
}

uint64_t sub_1D1A4675C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StaticEndpoint();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t StaticMatterDevice.foregroundColor.getter()
{
  v1 = type metadata accessor for StaticMatterDevice();
  static MatterDeviceType.primaryDeviceType(for:)(*(v0 + *(v1 + 32)), v3);
  if (v3[0] != 28)
  {
    return MatterDeviceType.foregroundColor.getter();
  }

  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

void sub_1D1A46850(char a1)
{
  if (a1 != 2)
  {
    v2 = [v1 applicationData];
    v3 = sub_1D1E677EC();

    v4 = sub_1D1E677EC();
    [v2 setObject:v3 forKeyedSubscript:v4];

    v5 = [v1 applicationData];
    v7[4] = sub_1D18AA2EC;
    v7[5] = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1D1C40BA8;
    v7[3] = &block_descriptor_32_1;
    v6 = _Block_copy(v7);
    [v1 updateApplicationData:v5 completionHandler:v6];
    _Block_release(v6);
  }
}

uint64_t StaticMatterDevice.init(device:accessory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  ObjectType = swift_getObjectType();
  MatterDevice.readAllSupportedAttributes()(ObjectType, a2);
  StaticMatterDevice.init(device:valueSource:accessory:)(a1, a2, &v17, a3, v11);
  v13 = type metadata accessor for StaticMatterDevice();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13))
  {
    sub_1D1741A30(v11, &qword_1EC643650, &qword_1D1E71D40);
    v15 = 1;
  }

  else
  {
    sub_1D1A4FBE0(v11, a4, type metadata accessor for StaticMatterDevice);
    v15 = 0;
  }

  return (*(v14 + 56))(a4, v15, 1, v13);
}

uint64_t StaticMatterDevice.primaryDeviceType.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for StaticMatterDevice() + 32));

  return static MatterDeviceType.primaryDeviceType(for:)(v3, a1);
}

uint64_t type metadata accessor for StaticMatterDevice()
{
  result = qword_1EE07D5E0;
  if (!qword_1EE07D5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1A46BE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v2 >= v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = 1 << *(v4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = v5 + 56;

  v12 = 0;
  while (1)
  {
LABEL_13:
    if (v8)
    {
      v13 = v8;
    }

    else
    {
      do
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          return result;
        }

        if (v14 >= v9)
        {

          v22 = 1;
          goto LABEL_36;
        }

        v13 = *(v4 + 56 + 8 * v14);
        ++v12;
      }

      while (!v13);
      v12 = v14;
    }

    v8 = (v13 - 1) & v13;
    if (*(v5 + 16))
    {
      v15 = *(*(v4 + 48) + (__clz(__rbit64(v13)) | (v12 << 6)));
      v16 = *(v5 + 40);
      sub_1D1E6920C();
      v17 = v15 >> 6;
      sub_1D1E6923C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      if ((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        break;
      }
    }
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v5 + 48) + v19);
    if (!(v21 >> 6))
    {
      break;
    }

    if (v21 >> 6 == 1)
    {
      if (v17 != 1)
      {
        goto LABEL_23;
      }
    }

    else if (v17 != 2)
    {
      goto LABEL_23;
    }

    if (((v21 ^ v15) & 0x3F) == 0)
    {
      goto LABEL_35;
    }

LABEL_23:
    v19 = (v19 + 1) & v20;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (v15 > 0x3F || v21 != v15)
  {
    goto LABEL_23;
  }

LABEL_35:

  v22 = 0;
LABEL_36:

  return v22;
}

uint64_t sub_1D1A46E30(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + (__clz(__rbit64(v12)) | (v4 << 6)));
      v15 = *(v6 + 40);
      sub_1D1E6920C();
      v16 = dword_1D1E94BB4[v14];
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v17 = -1 << *(v6 + 32);
      v18 = result & ~v17;
      if ((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (dword_1D1E94BB4[*(*(v6 + 48) + v18)] != v16)
        {
          v18 = (v18 + 1) & v19;
          if (((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1A46FB0(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v47 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v36 - v12;
  v13 = a2[2];
  if (!v13)
  {
    return 1;
  }

  v14 = a1[2];
  if (!v14)
  {
    return 1;
  }

  if (v13 >= v14)
  {
    v15 = a1;
  }

  else
  {
    v15 = a2;
  }

  if (v13 < v14)
  {
    a2 = a1;
  }

  v16 = v15 + 7;
  v17 = 1 << *(v15 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v15[7];
  v20 = (v17 + 63) >> 6;
  v45 = v5 + 16;
  v40 = v5 + 32;
  v41 = v15;
  v43 = a2 + 7;
  v21 = (v5 + 8);

  v46 = a2;

  v23 = 0;
  v37 = v20;
  v38 = v16;
  v39 = v5;
  while (v19)
  {
LABEL_18:
    v25 = v42;
    v26 = v41[6];
    v44 = *(v5 + 72);
    v27 = *(v5 + 16);
    v27(v42, v26 + v44 * (__clz(__rbit64(v19)) | (v23 << 6)), v4);
    (*(v5 + 32))(v47, v25, v4);
    if (v46[2])
    {
      v28 = v46;
      v29 = v46[5];
      sub_1D1A4FCC0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      v30 = sub_1D1E676DC();
      v31 = -1 << *(v28 + 32);
      v32 = v30 & ~v31;
      if ((*(v43 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        while (1)
        {
          v27(v9, v46[6] + v32 * v44, v4);
          sub_1D1A4FCC0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          v34 = sub_1D1E6775C();
          v35 = *v21;
          (*v21)(v9, v4);
          if (v34)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v43 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v35(v47, v4);
        return 0;
      }
    }

LABEL_12:
    v19 &= v19 - 1;
    result = (*v21)(v47, v4);
    v16 = v38;
    v5 = v39;
    v20 = v37;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return 1;
    }

    v19 = v16[v24];
    ++v23;
    if (v19)
    {
      v23 = v24;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1A47370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v33 - v13;
  v14 = *(a2 + 16);
  if (!v14)
  {
    return 1;
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    return 1;
  }

  if (v14 >= v15)
  {
    v16 = a1;
  }

  else
  {
    v16 = a2;
  }

  v17 = v16 + 56;
  if (v14 >= v15)
  {
    a1 = a2;
  }

  v18 = 1 << *(v16 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v16 + 56);
  v21 = (v18 + 63) >> 6;
  v39 = a1 + 56;
  v37 = v16;

  v23 = 0;
  v34 = v21;
  v35 = v17;
  v36 = v5;
  while (v20)
  {
LABEL_18:
    v25 = v38;
    v26 = *(v5 + 72);
    sub_1D1A4FB78(*(v37 + 48) + v26 * (__clz(__rbit64(v20)) | (v23 << 6)), v38, type metadata accessor for StaticService);
    sub_1D1A4FBE0(v25, v12, type metadata accessor for StaticService);
    if (*(a1 + 16))
    {
      v27 = *(a1 + 40);
      sub_1D1E6920C();
      StaticService.hash(into:)(v40);
      v28 = sub_1D1E6926C();
      v29 = -1 << *(a1 + 32);
      v30 = v28 & ~v29;
      if ((*(v39 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        v31 = ~v29;
        while (1)
        {
          sub_1D1A4FB78(*(a1 + 48) + v30 * v26, v9, type metadata accessor for StaticService);
          v32 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v9, v12);
          sub_1D1A4FC48(v9, type metadata accessor for StaticService);
          if (v32)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v39 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        sub_1D1A4FC48(v12, type metadata accessor for StaticService);
        return 0;
      }
    }

LABEL_12:
    v20 &= v20 - 1;
    result = sub_1D1A4FC48(v12, type metadata accessor for StaticService);
    v17 = v35;
    v5 = v36;
    v21 = v34;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return 1;
    }

    v20 = *(v17 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticMatterDevice.init(device:valueSource:accessory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v167 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v137 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v143 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v137 - v17;
  v153 = type metadata accessor for EndpointPath(0);
  v18 = *(*(v153 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v153);
  v152 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v159 = &v137 - v21;
  v169 = type metadata accessor for StaticEndpoint();
  v165 = *(v169 - 8);
  v22 = *(v165 + 64);
  v23 = MEMORY[0x1EEE9AC00](v169);
  v142 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v160 = &v137 - v25;
  v26 = type metadata accessor for MatterTileMetadata();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v148 = &v137 - v31;
  v157 = sub_1D1E66A7C();
  v149 = *(v157 - 8);
  v32 = *(v149 + 64);
  v33 = MEMORY[0x1EEE9AC00](v157);
  v35 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v147 = &v137 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v161 = &v137 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v166 = &v137 - v40;
  v41 = a3[1];
  v164 = *a3;
  v162 = [a4 home];
  if (v162)
  {
    v144 = v35;
    v145 = v30;
    v146 = v12;
    v139 = a5;
    v42 = [a4 room];
    if (!v42)
    {
      v42 = [v162 roomForEntireHome];
    }

    v138 = v42;
    v43 = [v42 uniqueIdentifier];
    sub_1D1E66A5C();

    v44 = a4;
    v45 = sub_1D1A11844();
    if (v45 == 2)
    {
      v46 = 2;
    }

    else
    {
      v46 = v45 & 1;
    }

    v47 = HMAccessory.isFavorite.getter() & 1;
    v48 = HMAccessory.shouldShowInDashboard.getter() & 1;
    v49 = HMAccessory.contributesToHomeStatus.getter() & 1;
    v50 = *(v26 + 44);
    v51 = v148;
    HMAccessory.dateAdded.getter(v148 + v50);

    *(v51 + 16) = 0u;
    *(v51 + 32) = 0u;
    *v51 = 0u;
    *(v51 + 48) = v46;
    *(v51 + 49) = v47;
    *(v51 + 50) = v48;
    *(v51 + 51) = v49;
    v140 = v44;
    v52 = [v44 configuredName];
    if (v52)
    {
      v53 = v52;
      countAndFlagsBits = sub_1D1E6781C();
      object = v54;

      v56 = v159;
    }

    else
    {
      v173 = v164;
      v174 = v41;
      v60 = AttributeValueSet.defaultName(in:)(0);
      countAndFlagsBits = v60.value._countAndFlagsBits;
      v56 = v159;
      if (v60.value._object)
      {
        object = v60.value._object;
      }

      else
      {
        v61 = [v140 name];
        countAndFlagsBits = sub_1D1E6781C();
        object = v62;
      }
    }

    v178 = 0;
    v179 = MEMORY[0x1E69E7CC8];
    v173 = v164;
    v174 = v41;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v163 = v41;

    v63 = DescriptorClusterDecoder.endpointIDs.getter();
    v64 = 0;
    v65 = v63 + 56;
    v66 = 1 << v63[32];
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & *(v63 + 7);
    v69 = (v66 + 63) >> 6;
    v155 = (v167 + 8);
    v156 = (v149 + 16);
    v150 = (v165 + 48);
    v141 = (v165 + 56);
    v170 = a1;
    v151 = v63;
    while (v68)
    {
LABEL_25:
      v71 = __clz(__rbit64(v68));
      v68 &= v68 - 1;
      LODWORD(v168) = *(*(v63 + 6) + ((v64 << 7) | (2 * v71)));
      if (v168)
      {
        swift_unknownObjectRetain();
        v72 = v162;
        v73 = [v72 uniqueIdentifier];
        sub_1D1E66A5C();

        ObjectType = swift_getObjectType();
        v48 = v167;
        v75 = (*(v167 + 8))(ObjectType, v167);
        swift_unknownObjectRelease();

        v76 = object;
        v77 = v170;
        v78 = v153;
        *(v56 + *(v153 + 20)) = v75;
        *(v56 + *(v78 + 24)) = v168;
        v173 = v164;
        v174 = v163;
        v79 = v56;
        v80 = v152;
        sub_1D1A4FB78(v79, v152, type metadata accessor for EndpointPath);
        v81 = v161;
        (*v156)(v161, v166, v157);
        v82 = v77;
        object = v76;

        swift_unknownObjectRetain();

        v47 = v154;
        StaticEndpoint.init(device:valueSource:path:roomId:accessoryName:)(v82, v48, &v173, v80, v81, countAndFlagsBits, object, v154);
        v83 = v169;
        if ((*v150)(v47, 1, v169) == 1)
        {
          v56 = v159;
          sub_1D1A4FC48(v159, type metadata accessor for EndpointPath);
          sub_1D1741A30(v47, &qword_1EC644780, &qword_1D1E91AA0);
        }

        else
        {
          v48 = v142;
          sub_1D1A4FBE0(v47, v142, type metadata accessor for StaticEndpoint);
          v47 = v143;
          sub_1D1A4FB78(v48, v143, type metadata accessor for StaticEndpoint);
          (*v141)(v47, 0, 1, v83);
          sub_1D1B0DF74(v47, v168);
          sub_1D1A4FC48(v48, type metadata accessor for StaticEndpoint);
          v56 = v159;
          sub_1D1A4FC48(v159, type metadata accessor for EndpointPath);
        }

        v63 = v151;
      }
    }

    while (1)
    {
      v70 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v70 >= v69)
      {
        break;
      }

      v68 = *&v65[8 * v70];
      ++v64;
      if (v68)
      {
        v64 = v70;
        goto LABEL_25;
      }
    }

    v84 = v179;
    v173 = MEMORY[0x1E69E7CD0];
    v47 = v179 + 64;
    v85 = 1 << *(v179 + 32);
    v86 = -1;
    if (v85 < 64)
    {
      v86 = ~(-1 << v85);
    }

    v87 = v86 & *(v179 + 64);
    v48 = (v85 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v88 = 0;
    v69 = v160;
    while (v87)
    {
      v89 = v88;
LABEL_36:
      v90 = __clz(__rbit64(v87));
      v87 &= v87 - 1;
      sub_1D1A4FB78(*(v84 + 56) + *(v165 + 72) * (v90 | (v89 << 6)), v69, type metadata accessor for StaticEndpoint);
      v91 = *(v69 + *(v169 + 32));

      sub_1D19306C0(v92);
      sub_1D1A4FC48(v69, type metadata accessor for StaticEndpoint);
    }

    while (1)
    {
      v89 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      if (v89 >= v48)
      {

        v47 = v173;
        v69 = swift_getObjectType();
        v48 = (*(v167 + 40))();
        v173 = v164;
        v174 = v163;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v93 = DescriptorClusterDecoder.availableClusterKinds.getter();
        LODWORD(v165) = sub_1D17198DC(4, v93);

        if (qword_1EE07A0A8 != -1)
        {
          goto LABEL_48;
        }

        goto LABEL_39;
      }

      v87 = *(v47 + 8 * v89);
      ++v88;
      if (v87)
      {
        v88 = v89;
        goto LABEL_36;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
LABEL_39:
    v168 = v48;
    v94 = sub_1D1E6709C();
    __swift_project_value_buffer(v94, qword_1EE07A0B0);
    swift_unknownObjectRetain();

    v95 = sub_1D1E6707C();
    v96 = sub_1D1E6835C();

    v97 = os_log_type_enabled(v95, v96);
    v137 = object;
    v160 = v47;
    if (v97)
    {
      v98 = object;
      v99 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v173 = v159;
      *v99 = 136316418;
      *(v99 + 4) = sub_1D1B1312C(countAndFlagsBits, v98, &v173);
      *(v99 + 12) = 2050;
      v100 = *(v167 + 8);
      v164 = v69;
      *(v99 + 14) = v100(v69);
      swift_unknownObjectRelease();
      *(v99 + 22) = 2082;
      sub_1D1785A60();
      v101 = sub_1D1E6817C();
      v103 = sub_1D1B1312C(v101, v102, &v173);

      *(v99 + 24) = v103;
      *(v99 + 32) = 2082;
      static MatterDeviceType.primaryDeviceType(for:)(v47, &v172);
      if (v172 == 28)
      {
        v104 = 0xE600000000000000;
        v105 = 0x296C6C756E28;
      }

      else
      {
        v171 = v172;
        v105 = sub_1D1E6789C();
        v104 = v107;
      }

      v108 = sub_1D1B1312C(v105, v104, &v173);

      *(v99 + 34) = v108;
      *(v99 + 42) = 2082;
      v109 = MTRDeviceState.description.getter(v168);
      v111 = sub_1D1B1312C(v109, v110, &v173);

      *(v99 + 44) = v111;
      *(v99 + 52) = 2082;

      v112 = sub_1D1E6762C();
      v114 = v113;

      v115 = sub_1D1B1312C(v112, v114, &v173);

      *(v99 + 54) = v115;
      _os_log_impl(&dword_1D16EC000, v95, v96, "Creating StaticMatterDevice: (%s) nodeID: %{public}llu deviceTypes:%{public}s primaryDeviceType:(%{public}s) deviceState: (%{public}s) endpoints: %{public}s ", v99, 0x3Eu);
      v116 = v159;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v116, -1, -1);
      MEMORY[0x1D3893640](v99, -1, -1);

      v106 = (v100)(v164, v167);
    }

    else
    {

      swift_unknownObjectRelease();
      v106 = (*v155)(v69, v167);
    }

    v117 = v106;
    v118 = [v162 uniqueIdentifier];
    sub_1D1E66A5C();

    v119 = v149;
    v120 = v157;
    (*(v149 + 16))(v147, v166, v157);
    v121 = v138;
    v122 = [v138 name];
    v123 = sub_1D1E6781C();
    v169 = v124;
    v170 = v123;

    v125 = v140;
    v126 = [v140 uniqueIdentifier];
    sub_1D1E66A5C();

    HMAccessory.dateAdded.getter(v146);
    swift_beginAccess();
    v127 = v179;
    v128 = v148;
    sub_1D1A4FB78(v148, v145, type metadata accessor for MatterTileMetadata);

    v129 = v139;
    static UUID.matterObjectIdentifier(deviceID:endpointID:)(v117, 0, v139);

    swift_unknownObjectRelease();

    sub_1D1A4FC48(v128, type metadata accessor for MatterTileMetadata);
    (*(v119 + 8))(v166, v120);
    v130 = type metadata accessor for StaticMatterDevice();
    *(v129 + v130[5]) = v117;
    *(v129 + v130[7]) = v168;
    v131 = v161;
    *(v129 + v130[8]) = v160;
    v132 = *(v119 + 32);
    v132(v129 + v130[9], v131, v120);
    v132(v129 + v130[10], v147, v120);
    v132(v129 + v130[12], v144, v120);
    sub_1D19A376C(v146, v129 + v130[13]);
    v133 = (v129 + v130[11]);
    v134 = v169;
    *v133 = v170;
    v133[1] = v134;
    *(v129 + v130[14]) = v127;
    v135 = (v129 + v130[6]);
    v136 = v137;
    *v135 = countAndFlagsBits;
    v135[1] = v136;
    sub_1D1A4FBE0(v145, v129 + v130[15], type metadata accessor for MatterTileMetadata);

    *(v129 + v130[16]) = v165 & 1;
    return (*(*(v130 - 1) + 56))(v129, 0, 1, v130);
  }

  else
  {
    swift_unknownObjectRelease();

    v57 = type metadata accessor for StaticMatterDevice();
    v58 = *(*(v57 - 8) + 56);

    return v58(a5, 1, 1, v57);
  }
}

uint64_t StaticMatterDevice.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticMatterDevice.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticMatterDevice() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticMatterDevice.deviceTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMatterDevice() + 32));
}

uint64_t StaticMatterDevice.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticMatterDevice() + 36);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticMatterDevice.roomId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticMatterDevice() + 40);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticMatterDevice.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticMatterDevice() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticMatterDevice.accessoryID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticMatterDevice() + 48);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticMatterDevice.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticMatterDevice() + 52);

  return sub_1D174A548(v3, a1);
}

uint64_t StaticMatterDevice.endpoints.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMatterDevice() + 56));
}

unint64_t sub_1D1A48AE4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x644965646F6ELL;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x6574617473;
      break;
    case 4:
      result = 0x7954656369766564;
      break;
    case 5:
      result = 0x6449656D6F68;
      break;
    case 6:
      result = 0x64496D6F6F72;
      break;
    case 7:
      result = 0x656D614E6D6F6F72;
      break;
    case 8:
      result = 0x726F737365636361;
      break;
    case 9:
      result = 0x6564644165746164;
      break;
    case 10:
      result = 0x746E696F70646E65;
      break;
    case 11:
      result = 0x617461646174656DLL;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1A48C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1A4F764(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1A48C78(uint64_t a1)
{
  v2 = sub_1D1A4EF94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A48CB4(uint64_t a1)
{
  v2 = sub_1D1A4EF94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticMatterDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649660, &unk_1D1E947D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A4EF94();
  sub_1D1E6930C();
  LOBYTE(v28) = 0;
  sub_1D1E66A7C();
  sub_1D1A4FCC0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticMatterDevice();
    v12 = *(v3 + v11[5]);
    LOBYTE(v28) = 1;
    sub_1D1E68F6C();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v28) = 2;
    sub_1D1E68ECC();
    v28 = *(v3 + v11[7]);
    v27 = 3;
    type metadata accessor for MTRDeviceState(0);
    sub_1D1A4FCC0(&qword_1EC646B28, type metadata accessor for MTRDeviceState);
    sub_1D1E68F1C();
    v28 = *(v3 + v11[8]);
    v27 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
    sub_1D1904180(&qword_1EC646B30, sub_1D18F16D8);
    sub_1D1E68F1C();
    v16 = v11[9];
    LOBYTE(v28) = 5;
    sub_1D1E68F1C();
    v17 = v11[10];
    LOBYTE(v28) = 6;
    sub_1D1E68F1C();
    v18 = (v3 + v11[11]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v28) = 7;
    sub_1D1E68E0C();
    v21 = v11[12];
    LOBYTE(v28) = 8;
    sub_1D1E68F1C();
    v22 = v11[13];
    LOBYTE(v28) = 9;
    sub_1D1E669FC();
    sub_1D1A4FCC0(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
    v28 = *(v3 + v11[14]);
    v27 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649670, &qword_1D1E947E8);
    sub_1D1A4EFE8();
    sub_1D1E68F1C();
    v23 = v11[15];
    LOBYTE(v28) = 11;
    type metadata accessor for MatterTileMetadata();
    sub_1D1A4FCC0(&qword_1EC646B20, type metadata accessor for MatterTileMetadata);
    sub_1D1E68F1C();
    v24 = *(v3 + v11[16]);
    LOBYTE(v28) = 12;
    sub_1D1E68EDC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticMatterDevice.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v28 = &v27 - v11;
  sub_1D1E66A7C();
  sub_1D1A4FCC0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v12 = type metadata accessor for StaticMatterDevice();
  MEMORY[0x1D3892890](*(v1 + v12[5]));
  v13 = (v1 + v12[6]);
  v14 = *v13;
  v15 = v13[1];
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v1 + v12[7]));
  sub_1D176DB8C(a1, *(v1 + v12[8]));
  v16 = v1 + v12[9];
  sub_1D1E676EC();
  v17 = v2 + v12[10];
  sub_1D1E676EC();
  v18 = (v2 + v12[11]);
  if (v18[1])
  {
    v27 = v8;
    v19 = v4;
    v20 = v5;
    v21 = *v18;
    sub_1D1E6922C();
    v5 = v20;
    v4 = v19;
    v8 = v27;
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v22 = v2 + v12[12];
  sub_1D1E676EC();
  v23 = v28;
  sub_1D174A548(v2 + v12[13], v28);
  if ((*(v5 + 48))(v23, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v8, v23, v4);
    sub_1D1E6922C();
    sub_1D1A4FCC0(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v5 + 8))(v8, v4);
  }

  sub_1D185A8E4(a1, *(v2 + v12[14]));
  v24 = v2 + v12[15];
  MatterTileMetadata.hash(into:)();
  v25 = *(v2 + v12[16]);
  return sub_1D1E6922C();
}

uint64_t StaticMatterDevice.hashValue.getter()
{
  sub_1D1E6920C();
  StaticMatterDevice.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticMatterDevice.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = type metadata accessor for MatterTileMetadata();
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v52 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = v46 - v7;
  v59 = sub_1D1E66A7C();
  v55 = *(v59 - 8);
  v8 = *(v55 + 64);
  v9 = MEMORY[0x1EEE9AC00](v59);
  v54 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v46 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v46 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v57 = v46 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649680, &qword_1D1E947F0);
  v56 = *(v58 - 8);
  v18 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v20 = v46 - v19;
  v21 = type metadata accessor for StaticMatterDevice();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A4EF94();
  v60 = v20;
  v26 = v61;
  sub_1D1E692FC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v16;
  v47 = v13;
  v48 = v21;
  v28 = v56;
  v61 = v24;
  v49 = a1;
  LOBYTE(v63) = 0;
  v29 = sub_1D1A4FCC0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v30 = v59;
  sub_1D1E68D7C();
  v46[1] = v29;
  v31 = *(v55 + 32);
  v32 = v61;
  v31(v61, v57, v30);
  LOBYTE(v63) = 1;
  v33 = sub_1D1E68DCC();
  v34 = v48;
  *&v32[v48[5]] = v33;
  LOBYTE(v63) = 2;
  v35 = sub_1D1E68D2C();
  v37 = &v32[v34[6]];
  *v37 = v35;
  v37[1] = v38;
  type metadata accessor for MTRDeviceState(0);
  v62 = 3;
  sub_1D1A4FCC0(&qword_1EC646B90, type metadata accessor for MTRDeviceState);
  sub_1D1E68D7C();
  *&v32[v34[7]] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
  v62 = 4;
  sub_1D1904180(&qword_1EC646B98, sub_1D18F1924);
  sub_1D1E68D7C();
  *&v32[v34[8]] = v63;
  LOBYTE(v63) = 5;
  v57 = v27;
  v39 = v59;
  sub_1D1E68D7C();
  v31(&v32[v34[9]], v57, v39);
  LOBYTE(v63) = 6;
  sub_1D1E68D7C();
  v31(&v32[v34[10]], v47, v39);
  LOBYTE(v63) = 7;
  v40 = sub_1D1E68C6C();
  v41 = &v32[v48[11]];
  *v41 = v40;
  v41[1] = v42;
  LOBYTE(v63) = 8;
  v43 = v54;
  sub_1D1E68D7C();
  v31(&v61[v48[12]], v43, v59);
  sub_1D1E669FC();
  LOBYTE(v63) = 9;
  sub_1D1A4FCC0(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68CBC();
  sub_1D19A376C(v53, &v61[v48[13]]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649670, &qword_1D1E947E8);
  v62 = 10;
  sub_1D1A4F0A4();
  sub_1D1E68D7C();
  *&v61[v48[14]] = v63;
  LOBYTE(v63) = 11;
  sub_1D1A4FCC0(&qword_1EC646B88, type metadata accessor for MatterTileMetadata);
  sub_1D1E68D7C();
  sub_1D1A4FBE0(v52, &v61[v48[15]], type metadata accessor for MatterTileMetadata);
  LOBYTE(v63) = 12;
  v44 = sub_1D1E68D3C();
  (*(v28 + 8))(v60, v58);
  v45 = v61;
  v61[v48[16]] = v44 & 1;
  sub_1D1A4FB78(v45, v50, type metadata accessor for StaticMatterDevice);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_1D1A4FC48(v45, type metadata accessor for StaticMatterDevice);
}

uint64_t sub_1D1A4A214()
{
  sub_1D1E6920C();
  StaticMatterDevice.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A4A258()
{
  sub_1D1E6920C();
  StaticMatterDevice.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t static StaticMatterDevice.find(nodeId:)(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for MatterStateSnapshot();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A4A3CC, 0, 0);
}

uint64_t sub_1D1A4A3CC()
{
  v24 = v0;
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[17] = v1;
  if (v1)
  {
    v0[18] = v1[3];
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1A4A800;
    v4 = 0;
    goto LABEL_10;
  }

  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 > 7)
  {
LABEL_16:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EE07A0B0);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6833C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1D1B1312C(0x646F6E28646E6966, 0xED0000293A644965, &v23);
      _os_log_impl(&dword_1D16EC000, v11, v12, "%s Unsupported context. Cannot find matter device.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D3893640](v14, -1, -1);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    v15 = v0[10];
    v16 = type metadata accessor for StaticMatterDevice();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[14];

    v20 = v0[1];

    return v20();
  }

  if (((1 << qword_1EE07AE40) & 0xC7) != 0)
  {
    v0[32] = sub_1D1E67E1C();
    v0[33] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1A4B23C;
    v2 = v5;
    v4 = v7;
LABEL_10:

    return MEMORY[0x1EEE6DFA0](v3, v2, v4);
  }

  if (qword_1EE07AE40 != 3)
  {
    if (qword_1EE07AE40 == 4)
    {
      v0[19] = type metadata accessor for DataModel();
      v0[20] = sub_1D1E67E1C();
      v0[21] = sub_1D1E67E0C();
      v8 = sub_1D1E67D4C();
      v4 = v9;
      v0[22] = v8;
      v0[23] = v9;
      v3 = sub_1D1A4AB04;
      v2 = v8;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  type metadata accessor for WidgetDataModel();
  swift_initStaticObject();
  v21 = swift_task_alloc();
  v0[37] = v21;
  *v21 = v0;
  v21[1] = sub_1D1A4B748;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1A4A800()
{
  v1 = *(v0 + 144);
  HomeState.AllHomesModel.currentMatterSnapshot.getter(*(v0 + 128));

  return MEMORY[0x1EEE6DFA0](sub_1D1A4A86C, 0, 0);
}

uint64_t sub_1D1A4A86C()
{
  v1 = v0[16];
  v2 = v0[12];
  if ((*(v0[13] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[17];
    v4 = v0[10];

    sub_1D1741A30(v1, &unk_1EC64F390, &qword_1D1E92B10);
    v5 = type metadata accessor for StaticMatterDevice();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v6 = *(v1 + *(v2 + 24));

    sub_1D1A4FC48(v1, type metadata accessor for MatterStateSnapshot);
    if (*(v6 + 16))
    {
      v7 = sub_1D17420B0(v0[11]);
      v8 = v0[17];
      v9 = v0[10];
      if (v10)
      {
        v11 = v7;
        v12 = *(v6 + 56);
        v13 = type metadata accessor for StaticMatterDevice();
        v14 = *(v13 - 8);
        sub_1D1A4FB78(v12 + *(v14 + 72) * v11, v9, type metadata accessor for StaticMatterDevice);

        (*(v14 + 56))(v9, 0, 1, v13);
      }

      else
      {

        v18 = type metadata accessor for StaticMatterDevice();
        (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
      }
    }

    else
    {
      v15 = v0[17];
      v16 = v0[10];

      v17 = type metadata accessor for StaticMatterDevice();
      (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    }
  }

  v20 = v0[15];
  v19 = v0[16];
  v21 = v0[14];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D1A4AB04()
{
  v1 = v0[20];
  v2 = swift_allocObject();
  v0[24] = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  v0[25] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();
  v0[26] = v4;
  v0[27] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4ABB0, v4, v3);
}

uint64_t sub_1D1A4ABB0()
{
  v1 = v0[24];
  v2 = swift_allocObject();
  v0[28] = v2;
  *(v2 + 16) = sub_1D1A4F160;
  *(v2 + 24) = v1;

  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_1D1A4ACA4;
  v4 = v0[19];

  return static DataModel.sharedAsync(coverageProvider:)(sub_1D1A4F16C, v2);
}

uint64_t sub_1D1A4ACA4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v8 = *v1;
  *(*v1 + 240) = a1;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1D1A4ADF0, v6, v5);
}

uint64_t sub_1D1A4ADF0()
{
  v2 = v0[24];
  v1 = v0[25];

  v3 = v0[22];
  v4 = v0[23];

  return MEMORY[0x1EEE6DFA0](sub_1D1A4AE5C, v3, v4);
}

uint64_t sub_1D1A4AE5C()
{
  v1 = *(v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1D1A4AEC4, 0, 0);
}

uint64_t sub_1D1A4AEC4()
{
  v1 = *(v0 + 160);
  *(v0 + 248) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A4AF50, v3, v2);
}

uint64_t sub_1D1A4AF50()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[15];

  swift_getKeyPath();
  v0[9] = v2;
  sub_1D1A4FCC0(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  sub_1D1A4FB78(v2 + v4, v3, type metadata accessor for MatterStateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B07C, 0, 0);
}

uint64_t sub_1D1A4B07C()
{
  v1 = v0[15];
  v2 = *(v1 + *(v0[12] + 24));

  sub_1D1A4FC48(v1, type metadata accessor for MatterStateSnapshot);
  if (*(v2 + 16))
  {
    v3 = sub_1D17420B0(v0[11]);
    v4 = v0[10];
    if (v5)
    {
      v6 = v3;
      v7 = *(v2 + 56);
      v8 = type metadata accessor for StaticMatterDevice();
      v9 = *(v8 - 8);
      sub_1D1A4FB78(v7 + *(v9 + 72) * v6, v4, type metadata accessor for StaticMatterDevice);

      (*(v9 + 56))(v4, 0, 1, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = v0[10];
  }

  v10 = type metadata accessor for StaticMatterDevice();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
LABEL_6:
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D1A4B23C()
{
  v1 = *(v0 + 264);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B2D4, 0, 0);
}

uint64_t sub_1D1A4B2D4()
{
  v1 = *(v0 + 256);
  *(v0 + 272) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B360, v3, v2);
}

uint64_t sub_1D1A4B360()
{
  v1 = *(v0 + 272);

  *(v0 + 280) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B3D4, 0, 0);
}

uint64_t sub_1D1A4B3D4()
{
  v1 = *(v0 + 256);
  *(v0 + 288) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B460, v3, v2);
}

uint64_t sub_1D1A4B460()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[14];

  swift_getKeyPath();
  v0[8] = v2;
  sub_1D1A4FCC0(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  sub_1D1A4FB78(v2 + v4, v3, type metadata accessor for MatterStateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B588, 0, 0);
}

uint64_t sub_1D1A4B588()
{
  v1 = v0[14];
  v2 = *(v1 + *(v0[12] + 24));

  sub_1D1A4FC48(v1, type metadata accessor for MatterStateSnapshot);
  if (*(v2 + 16))
  {
    v3 = sub_1D17420B0(v0[11]);
    v4 = v0[10];
    if (v5)
    {
      v6 = v3;
      v7 = *(v2 + 56);
      v8 = type metadata accessor for StaticMatterDevice();
      v9 = *(v8 - 8);
      sub_1D1A4FB78(v7 + *(v9 + 72) * v6, v4, type metadata accessor for StaticMatterDevice);

      (*(v9 + 56))(v4, 0, 1, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = v0[10];
  }

  v10 = type metadata accessor for StaticMatterDevice();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
LABEL_6:
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D1A4B748(uint64_t a1)
{
  v3 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B84C, a1, 0);
}

uint64_t sub_1D1A4B84C()
{
  v1 = v0[38];
  WidgetSnapshotModerator.staticMatterDevice(_:)(v0[11], v0[10]);

  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t StaticMatterDevice.init(nodeId:name:state:deviceTypes:homeId:roomId:roomName:accessoryID:dateAdded:endpoints:metadata:supportsDiagnosticsLogs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  static UUID.matterObjectIdentifier(deviceID:endpointID:)(a1, 0, a9);
  v21 = type metadata accessor for StaticMatterDevice();
  *(a9 + v21[5]) = a1;
  *(a9 + v21[7]) = a4;
  *(a9 + v21[8]) = a5;
  v22 = v21[9];
  v23 = sub_1D1E66A7C();
  v24 = *(*(v23 - 8) + 32);
  v24(a9 + v22, a6, v23);
  v24(a9 + v21[10], a7, v23);
  v24(a9 + v21[12], a11, v23);
  sub_1D19A376C(a12, a9 + v21[13]);
  v25 = (a9 + v21[11]);
  *v25 = a8;
  v25[1] = a10;
  *(a9 + v21[14]) = a13;
  v26 = (a9 + v21[6]);
  *v26 = a2;
  v26[1] = a3;
  result = sub_1D1A4FBE0(a14, a9 + v21[15], type metadata accessor for MatterTileMetadata);
  *(a9 + v21[16]) = a15;
  return result;
}

double StaticMatterDevice.tileIcon.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticMatterDevice();
  v4 = v1 + *(v3 + 60);
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);

    v8._countAndFlagsBits = v6;
    v8._object = v5;
    Icon.init(customIconName:)(&v16, v8);
  }

  else
  {
    static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v3 + 32)), &v15);
    if (v15 == 28)
    {
      if (qword_1EC642238 != -1)
      {
        swift_once();
      }

      v13[2] = *&qword_1EC646788;
      v13[3] = xmmword_1EC646798;
      *v14 = xmmword_1EC6467A8;
      *&v14[9] = *(&xmmword_1EC6467A8 + 9);
      v13[0] = xmmword_1EC646768;
      v13[1] = xmmword_1EC646778;
      v16.accessoryControlOnStateIconInfo.name = xmmword_1EC646798;
      *&v16.accessoryControlOnStateIconInfo.renderingMode = xmmword_1EC6467A8;
      *&v16.tileOnStateIconInfo.renderingMode = xmmword_1EC646778;
      *&v16.tileOffStateIconInfo.name._object = *&qword_1EC646788;
      *(&v16.accessoryControlOffStateIconInfo.name + 1) = *(&xmmword_1EC6467A8 + 9);
      v16.tileOnStateIconInfo.name = xmmword_1EC646768;
      sub_1D18A9844(v13, &v12);
    }

    else
    {
      LOBYTE(v13[0]) = v15;
      Icon.init(deviceType:)(&v16, v13);
    }
  }

  name = v16.accessoryControlOnStateIconInfo.name;
  *(a1 + 32) = *&v16.tileOffStateIconInfo.name._object;
  *(a1 + 48) = name;
  *(a1 + 64) = *&v16.accessoryControlOnStateIconInfo.renderingMode;
  *(a1 + 73) = *(&v16.accessoryControlOffStateIconInfo.name + 1);
  result = *&v16.tileOnStateIconInfo.name._countAndFlagsBits;
  v11 = *&v16.tileOnStateIconInfo.renderingMode;
  *a1 = v16.tileOnStateIconInfo.name;
  *(a1 + 16) = v11;
  return result;
}

uint64_t StaticMatterDevice.customIconSymbol.getter()
{
  v1 = v0 + *(type metadata accessor for StaticMatterDevice() + 60);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t StaticMatterDevice.roomIds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D1E739C0;
  v6 = type metadata accessor for StaticMatterDevice();
  (*(v2 + 16))(v5 + v4, v0 + *(v6 + 40), v1);
  v7 = sub_1D179BE14(v5);
  swift_setDeallocating();
  (*(v2 + 8))(v5 + v4, v1);
  swift_deallocClassInstance();
  return v7;
}

uint64_t StaticMatterDevice.isDoubleHigh.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMatterDevice() + 60) + 48);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v3 = "40-A849-215882E2F008";
    if (v1)
    {
      v3 = "HFTileResizableSizeSmall";
    }

    if (v3 | 0x8000000000000000) == 0x80000001D1EB3840 && (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1D1E6904C();
    }
  }

  return v2 & 1;
}

uint64_t StaticMatterDevice.tileSize.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticMatterDevice();
  *a1 = *(v1 + *(result + 60) + 48);
  return result;
}

uint64_t sub_1D1A4BEC8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D1A4BF00(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A44134;

  return StaticMatterDevice.set(showInDashboard:)(a1);
}

uint64_t StaticMatterDevice.set(showInDashboard:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D1A4C03C;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4C03C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4C13C, 0, 0);
}

uint64_t sub_1D1A4C13C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  else
  {
    v4 = 0;
  }

  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A4C220;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4C220(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4C320, 0, 0);
}

uint64_t sub_1D1A4C320()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);

    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = v7;
    HMAccessory.shouldShowInDashboard.setter(v8);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D1A4C3F4(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A08578;

  return StaticMatterDevice.set(includeInStatus:)(a1);
}

uint64_t StaticMatterDevice.set(includeInStatus:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D1A4C530;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4C530(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4C630, 0, 0);
}

uint64_t sub_1D1A4C630()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  else
  {
    v4 = 0;
  }

  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A4C714;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4C714(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4C814, 0, 0);
}

uint64_t sub_1D1A4C814()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);

    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = v7;
    HMAccessory.contributesToHomeStatus.setter(v8);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t StaticMatterDevice.intersects(deviceTypes:)(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for StaticMatterDevice() + 32));
  if (*(v3 + 16))
  {
    v4 = sub_1D1A46E30(a1, v3) ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t StaticMatterDevice.device(in:)(uint64_t result)
{
  if (result)
  {
    v2 = type metadata accessor for StaticMatterDevice();
    return HMHomeManager.matterDevice(with:inHomeWithID:)(*(v1 + *(v2 + 20)), v1 + *(v2 + 36));
  }

  return result;
}

uint64_t StaticMatterDevice.device.getter()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1A4CA84;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4CA84(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4CB84, 0, 0);
}

uint64_t sub_1D1A4CB84()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    v7 = HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);
    v1 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v0[1];

  return v9(v7, v1);
}

uint64_t StaticMatterDevice.accessory.getter()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1A4CCE8;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4CCE8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4CDE8, 0, 0);
}

uint64_t sub_1D1A4CDE8()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[1];

  return v5(v4);
}

uint64_t StaticMatterDevice.toggleKnownState()()
{
  v1[2] = v0;
  v2 = type metadata accessor for StaticEndpoint();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A4CF58, 0, 0);
}

uint64_t sub_1D1A4CF58()
{
  v1 = v0[2];
  if (StaticMatterDevice.canBeToggled.getter())
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[2];
    v5 = *(v4 + *(type metadata accessor for StaticMatterDevice() + 56));
    v6 = v5 + 64;
    v7 = -1 << *(v5 + 32);
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v5 + 64);
    v10 = (63 - v7) >> 6;
    v42 = v5;

    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    if (!v9)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_12:
      while (1)
      {
        v15 = v0[7];
        v16 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v17 = *(v3 + 72);
        sub_1D1A4FB78(*(v42 + 56) + v17 * (v16 | (v12 << 6)), v15, type metadata accessor for StaticEndpoint);
        result = v0[7];
        if (*(v15 + v2[7]) != 2)
        {
          break;
        }

LABEL_7:
        result = sub_1D1A4FC48(result, type metadata accessor for StaticEndpoint);
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      if (!*(*(result + v2[9]) + 16) || (sub_1D171D278(11), result = v0[7], (v18 & 1) == 0))
      {
        v19 = 0;
        v20 = *(result + v2[8]);
        v21 = -1 << *(v20 + 32);
        if (-v21 < 64)
        {
          v22 = ~(-1 << -v21);
        }

        else
        {
          v22 = -1;
        }

        v23 = v22 & *(v20 + 56);
        v24 = (63 - v21) >> 6;
        while (v23)
        {
          v25 = v19;
LABEL_25:
          v26 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          v27 = *(*(v20 + 48) + (v26 | (v25 << 6)));
          v28 = v27 > 0x15;
          v29 = (1 << v27) & 0x203AD0;
          if (!v28 && v29 != 0)
          {
            goto LABEL_29;
          }
        }

        while (1)
        {
          v25 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v25 >= v24)
          {
            goto LABEL_7;
          }

          v23 = *(v20 + 56 + 8 * v25);
          ++v19;
          if (v23)
          {
            v19 = v25;
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_46;
      }

LABEL_29:
      sub_1D1A4FBE0(result, v0[5], type metadata accessor for StaticEndpoint);
      v41 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D178DA14(0, *(v13 + 16) + 1, 1);
      }

      v32 = *(v13 + 16);
      v31 = *(v13 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D178DA14(v31 > 1, v32 + 1, 1);
      }

      v33 = v0[5];
      *(v13 + 16) = v32 + 1;
      result = sub_1D1A4FBE0(v33, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + v32 * v17, type metadata accessor for StaticEndpoint);
      v2 = v41;
    }

    while (v9);
LABEL_8:
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v10)
      {

        v34 = *(v13 + 16);
        if (!v34)
        {

          goto LABEL_42;
        }

        sub_1D1A4FB78(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v0[6], type metadata accessor for StaticEndpoint);

        if (v34 != 1)
        {
          sub_1D1A4FC48(v0[6], type metadata accessor for StaticEndpoint);
          goto LABEL_42;
        }

        v35 = swift_task_alloc();
        v0[8] = v35;
        *v35 = v0;
        v35[1] = sub_1D1A4D378;
        v36 = v0[6];

        return StaticEndpoint.toggleKnownState()();
      }

      v9 = *(v6 + 8 * v14);
      ++v12;
      if (v9)
      {
        v12 = v14;
        goto LABEL_12;
      }
    }

LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_42:
    v38 = v0[6];
    v37 = v0[7];
    v39 = v0[5];

    v40 = v0[1];

    return v40();
  }

  return result;
}

uint64_t sub_1D1A4D378()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D1A4D520;
  }

  else
  {
    v3 = sub_1D1A4D48C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A4D48C()
{
  sub_1D1A4FC48(v0[6], type metadata accessor for StaticEndpoint);
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1A4D520()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_1D1A4FC48(v0[6], type metadata accessor for StaticEndpoint);

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t StaticMatterDevice.set(displayName:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = swift_task_alloc();
  v3[21] = v4;
  *v4 = v3;
  v4[1] = sub_1D1A4D668;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4D668(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4D768, 0, 0);
}

uint64_t sub_1D1A4D768()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[20];
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  else
  {
    v4 = 0;
  }

  v0[23] = v4;
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A4D84C;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4D84C(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4D94C, 0, 0);
}

uint64_t sub_1D1A4D94C()
{
  v1 = v0[25];
  if (v1)
  {
    v2 = v0[20];
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);

    swift_unknownObjectRelease();
  }

  v7 = v0[23];
  if (v7)
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = v7;
    v11 = sub_1D1E677EC();
    v0[26] = v11;
    v0[2] = v0;
    v0[3] = sub_1D1A4DB14;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17B04C8;
    v0[13] = &block_descriptor_35;
    v0[14] = v12;
    [v10 updateName:v11 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1D1A4DB14()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_1D1A4DC94;
  }

  else
  {
    v3 = sub_1D1A4DC24;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A4DC24()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1A4DC94()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[27];

  return v4();
}

uint64_t StaticMatterDevice.set(favorite:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D1A4DDB8;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4DDB8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4DEB8, 0, 0);
}

uint64_t sub_1D1A4DEB8()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  else
  {
    v4 = 0;
  }

  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A4DF9C;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4DF9C(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4E09C, 0, 0);
}

uint64_t sub_1D1A4E09C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);

    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = v7;
    HMAccessory.isFavorite.setter(v8);
  }

  v10 = *(v0 + 8);

  return v10();
}
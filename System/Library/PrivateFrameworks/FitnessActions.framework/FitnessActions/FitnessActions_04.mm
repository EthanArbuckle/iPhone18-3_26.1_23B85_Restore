void sub_1E5BBDFF8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1E5BF71F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1E5BBE058()
{
  result = qword_1ED03FF00;
  if (!qword_1ED03FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FF00);
  }

  return result;
}

unint64_t sub_1E5BBE0B0()
{
  result = qword_1ED03FF08;
  if (!qword_1ED03FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FF08);
  }

  return result;
}

unint64_t sub_1E5BBE108()
{
  result = qword_1ED03FF10;
  if (!qword_1ED03FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FF10);
  }

  return result;
}

uint64_t sub_1E5BBE15C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C08410 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746174536E6F6369 && a2 == 0xE900000000000065 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5C08430 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001E5C08450 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5BF7444();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id static UIColor.keyTint.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v0 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
}

uint64_t sub_1E5BBE368()
{
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];

  return sub_1E5BF6B94();
}

__n128 CreatePlanAlertFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t CreatePlanAlertFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, unint64_t a2, size_t *a3, unsigned __int8 a4)
{
  v5 = v4;
  v130 = a2;
  v131 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E8D0, &qword_1E5BF9570);
  v132 = *(v7 - 8);
  v133 = v7;
  v8 = *(v132 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v117 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v117 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v117 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v117 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v117 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v117 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v117 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v35 = &v117 - v34;
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v126 = v33;
      v140 = 2;
      sub_1E5BBF008();
      sub_1E5BF7254();
      v76 = *MEMORY[0x1E6999AE8];
      v129 = *(v132 + 104);
      v129(v25, v76, v133);
      v77 = *v131;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_1E5B71754(0, *(v77 + 16) + 1, 1, v77);
      }

      v79 = *(v77 + 16);
      v78 = *(v77 + 24);
      if (v79 >= v78 >> 1)
      {
        v77 = sub_1E5B71754(v78 > 1, v79 + 1, 1, v77);
      }

      *(v77 + 16) = v79 + 1;
      v80 = *(v132 + 32);
      v127 = ((*(v132 + 80) + 32) & ~*(v132 + 80));
      v128 = v80;
      v81 = *(v132 + 72);
      v82 = v25;
      v83 = v133;
      v132 += 32;
      v80(&v127[v77 + v81 * v79], v82, v133);
      v139 = 3;
      sub_1E5BF7254();
      v129(v22, v76, v83);
      v85 = *(v77 + 16);
      v84 = *(v77 + 24);
      if (v85 >= v84 >> 1)
      {
        v77 = sub_1E5B71754(v84 > 1, v85 + 1, 1, v77);
      }

      *(v77 + 16) = v85 + 1;
      v86 = v133;
      v128(&v127[v77 + v85 * v81], v22, v133);
      v138 = 1;
      v87 = v126;
      sub_1E5BF7254();
      v129(v87, v76, v86);
      v89 = *(v77 + 16);
      v88 = *(v77 + 24);
      if (v89 >= v88 >> 1)
      {
        v77 = sub_1E5B71754(v88 > 1, v89 + 1, 1, v77);
      }

      *(v77 + 16) = v89 + 1;
      v90 = v133;
      v128(&v127[v77 + v89 * v81], v126, v133);
      *(v130 + *(type metadata accessor for CreatePlanAlertState() + 24)) = 1;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FF20, &qword_1E5C01668);
      v92 = v91[20];
      v93 = v91[24];
      v94 = v91[28];
      v95 = &v18[v91[32]];
      v137 = 0;
      sub_1E5BF7254();
      *(v18 + 5) = 0x3FF0000000000000;
      v18[48] = 0;
      sub_1E5BF7094();
      v96 = *MEMORY[0x1E6999B50];
      v97 = sub_1E5BF6E24();
      (*(*(v97 - 8) + 104))(&v18[v93], v96, v97);
      v98 = *MEMORY[0x1E6999B40];
      v99 = sub_1E5BF6E14();
      (*(*(v99 - 8) + 104))(&v18[v94], v98, v99);
      *v95 = &unk_1E5C01670;
      *(v95 + 1) = 0;
      v129(v18, *MEMORY[0x1E6999AE0], v90);
      v101 = *(v77 + 16);
      v100 = *(v77 + 24);
      if (v101 >= v100 >> 1)
      {
        v77 = sub_1E5B71754(v100 > 1, v101 + 1, 1, v77);
      }

      *(v77 + 16) = v101 + 1;
      result = (v128)(&v127[v77 + v101 * v81], v18, v133);
    }

    else
    {
      v130 = v32;
      v143 = 2;
      v129 = sub_1E5BBF008();
      sub_1E5BF7254();
      v103 = *MEMORY[0x1E6999AE8];
      v128 = *(v132 + 104);
      v128(v15, v103, v133);
      v77 = *v131;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_1E5B71754(0, *(v77 + 16) + 1, 1, v77);
      }

      v105 = *(v77 + 16);
      v104 = *(v77 + 24);
      if (v105 >= v104 >> 1)
      {
        v77 = sub_1E5B71754(v104 > 1, v105 + 1, 1, v77);
      }

      *(v77 + 16) = v105 + 1;
      v106 = v133;
      v107 = *(v132 + 32);
      v108 = (*(v132 + 80) + 32) & ~*(v132 + 80);
      v109 = *(v132 + 72);
      v107(v77 + v108 + v109 * v105, v15, v133);
      v142 = 3;
      sub_1E5BF7254();
      v128(v12, v103, v106);
      v111 = *(v77 + 16);
      v110 = *(v77 + 24);
      if (v111 >= v110 >> 1)
      {
        v77 = sub_1E5B71754(v110 > 1, v111 + 1, 1, v77);
      }

      *(v77 + 16) = v111 + 1;
      v112 = v12;
      v113 = v133;
      v107(v77 + v108 + v111 * v109, v112, v133);
      v141 = 1;
      v114 = v130;
      sub_1E5BF7254();
      v128(v114, v103, v113);
      v116 = *(v77 + 16);
      v115 = *(v77 + 24);
      if (v116 >= v115 >> 1)
      {
        v77 = sub_1E5B71754(v115 > 1, v116 + 1, 1, v77);
      }

      *(v77 + 16) = v116 + 1;
      result = (v107)(v77 + v108 + v116 * v109, v130, v133);
    }

    *v131 = v77;
  }

  else if (a4)
  {
    result = type metadata accessor for CreatePlanAlertState();
    v102 = v130;
    *(v130 + *(result + 20)) = 0;
    *(v102 + *(result + 24)) = 0;
  }

  else
  {
    v36 = *v5;
    v37 = v5[1];
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FF20, &qword_1E5C01668);
    v39 = v38[20];
    v40 = v38[24];
    v41 = v38[28];
    v42 = &v35[v38[32]];
    v136 = 2;
    v130 = sub_1E5BBF008();
    sub_1E5BF7254();
    *(v35 + 5) = 0x4008000000000000;
    v35[48] = 1;
    sub_1E5BF7094();
    v43 = *MEMORY[0x1E6999B50];
    v44 = sub_1E5BF6E24();
    v45 = *(v44 - 8);
    v46 = *(v45 + 104);
    LODWORD(v129) = v43;
    v127 = v46;
    v128 = v44;
    v126 = (v45 + 104);
    (v46)(&v35[v40], v43);
    v47 = *MEMORY[0x1E6999B40];
    v48 = sub_1E5BF6E14();
    v49 = *(v48 - 8);
    v50 = *(v49 + 104);
    v118 = v47;
    v124 = v50;
    v125 = v48;
    v123 = v49 + 104;
    (v50)(&v35[v41], v47);
    v51 = swift_allocObject();
    *(v51 + 16) = v36;
    *(v51 + 24) = v37;
    *v42 = &unk_1E5C01680;
    *(v42 + 1) = v51;
    v52 = *(v132 + 104);
    v122 = *MEMORY[0x1E6999AE0];
    v52(v35);
    v53 = *v131;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1E5B71754(0, *(v53 + 2) + 1, 1, v53);
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    v117 = v52;
    if (v55 >= v54 >> 1)
    {
      v53 = sub_1E5B71754(v54 > 1, v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = v133;
    v57 = *(v132 + 32);
    v120 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v121 = v57;
    v119 = *(v132 + 72);
    v132 += 32;
    v57(&v53[v120 + v119 * v55], v35, v133);
    v58 = v38[20];
    v59 = v38[24];
    v60 = v38[28];
    v61 = &v31[v38[32]];
    v135 = 3;
    sub_1E5BF7254();
    *(v31 + 5) = 0x4072C00000000000;
    v31[48] = 0;
    sub_1E5BF7094();
    (v127)(&v31[v59], v129, v128);
    v62 = &v31[v60];
    v63 = v118;
    v124(v62, v118, v125);
    *v61 = &unk_1E5C01688;
    *(v61 + 1) = 0;
    v64 = v56;
    v65 = v117;
    (v117)(v31, v122, v64);
    v67 = *(v53 + 2);
    v66 = *(v53 + 3);
    if (v67 >= v66 >> 1)
    {
      v53 = sub_1E5B71754(v66 > 1, v67 + 1, 1, v53);
    }

    *(v53 + 2) = v67 + 1;
    v68 = v133;
    v121(&v53[v120 + v67 * v119], v31, v133);
    v69 = v38[20];
    v70 = v38[24];
    v71 = v38[28];
    v72 = &v28[v38[32]];
    v134 = 1;
    sub_1E5BF7254();
    *(v28 + 5) = 0x403E000000000000;
    v28[48] = 0;
    sub_1E5BF7094();
    (v127)(&v28[v70], v129, v128);
    v124(&v28[v71], v63, v125);
    *v72 = &unk_1E5C01690;
    *(v72 + 1) = 0;
    v65(v28, v122, v68);
    v74 = *(v53 + 2);
    v73 = *(v53 + 3);
    if (v74 >= v73 >> 1)
    {
      v53 = sub_1E5B71754(v73 > 1, v74 + 1, 1, v53);
    }

    *(v53 + 2) = v74 + 1;
    result = (v121)(&v53[v120 + v74 * v119], v28, v133);
    *v131 = v53;
  }

  return result;
}

unint64_t sub_1E5BBF008()
{
  result = qword_1ED03FF18;
  if (!qword_1ED03FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FF18);
  }

  return result;
}

uint64_t sub_1E5BBF05C(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v2[3] = sub_1E5BF7084();
  v2[4] = sub_1E5BF7074();
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_1E5BBF170;

  return v7();
}

uint64_t sub_1E5BBF170()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
    v7 = sub_1E5BF7054();

    return MEMORY[0x1EEE6DFA0](sub_1E5BBF468, v7, v6);
  }

  else
  {
    *(v3 + 64) = 2;
    v8 = *(MEMORY[0x1E6999AF0] + 4);
    v9 = swift_task_alloc();
    *(v3 + 56) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED03FF48, &unk_1E5C017B0);
    *v9 = v3;
    v9[1] = sub_1E5BBF32C;
    v11 = *(v3 + 16);

    return MEMORY[0x1EEE01A40](v3 + 64, v10);
  }
}

uint64_t sub_1E5BBF32C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5BBFE3C, v5, v4);
}

uint64_t sub_1E5BBF468()
{
  v1 = v0[4];

  if (qword_1ED03E1D0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_1E5BF6594();
  __swift_project_value_buffer(v3, qword_1ED053DE0);
  v4 = v2;
  v5 = sub_1E5BF6574();
  v6 = sub_1E5BF71C4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5B54000, v5, v6, "Requesting workout plan failed with error: %@", v9, 0xCu);
    sub_1E5BBFDD4(v10);
    MEMORY[0x1E6938270](v10, -1, -1);
    MEMORY[0x1E6938270](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E5BBF608(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = sub_1E5BF7084();
  *(v1 + 32) = sub_1E5BF7074();
  *(v1 + 64) = 1;
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED03FF48, &unk_1E5C017B0);
  *(v1 + 48) = v4;
  *v3 = v1;
  v3[1] = sub_1E5BBF6F4;

  return MEMORY[0x1EEE01A40](v1 + 64, v4);
}

uint64_t sub_1E5BBF6F4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v9 = *v0;

  *(v1 + 65) = 3;
  v3 = v1 + 65;
  v4 = *(MEMORY[0x1E6999AF0] + 4);
  v5 = swift_task_alloc();
  *(v3 - 9) = v5;
  *v5 = v9;
  v5[1] = sub_1E5BBF834;
  v6 = *(v3 - 17);
  v7 = *(v3 - 49);

  return MEMORY[0x1EEE01A40](v3, v6);
}

uint64_t sub_1E5BBF834()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5BBF970, v5, v4);
}

uint64_t sub_1E5BBF970()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5BBF9D4()
{
  *(v0 + 16) = sub_1E5BF7084();
  *(v0 + 24) = sub_1E5BF7074();
  *(v0 + 40) = 1;
  v1 = *(MEMORY[0x1E6999AF0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED03FF48, &unk_1E5C017B0);
  *v2 = v0;
  v2[1] = sub_1E5B6F8E4;

  return MEMORY[0x1EEE01A40](v0 + 40, v3);
}

uint64_t sub_1E5BBFAB8()
{
  *(v0 + 16) = sub_1E5BF7084();
  *(v0 + 24) = sub_1E5BF7074();
  *(v0 + 40) = 1;
  v1 = *(MEMORY[0x1E6999AF0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED03FF48, &unk_1E5C017B0);
  *v2 = v0;
  v2[1] = sub_1E5B6F688;

  return MEMORY[0x1EEE01A40](v0 + 40, v3);
}

uint64_t sub_1E5BBFBA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6D9A0;

  return sub_1E5BBF05C(a1, v5);
}

unint64_t sub_1E5BBFC54()
{
  result = qword_1ED03FF28;
  if (!qword_1ED03FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FF28);
  }

  return result;
}

unint64_t sub_1E5BBFCAC()
{
  result = qword_1ED03FF30;
  if (!qword_1ED03FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FF30);
  }

  return result;
}

unint64_t sub_1E5BBFD04()
{
  result = qword_1ED03FF38;
  if (!qword_1ED03FF38)
  {
    type metadata accessor for CreatePlanAlertState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FF38);
  }

  return result;
}

unint64_t sub_1E5BBFD80()
{
  result = qword_1ED03FF40;
  if (!qword_1ED03FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FF40);
  }

  return result;
}

uint64_t sub_1E5BBFDD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E890, &qword_1E5BF9310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*RemoveLibraryItemState.bookmarkLoadState.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t (*RemoveLibraryItemState.downloadLoadState.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t (*RemoveLibraryItemState.confirmation.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t RemoveLibraryItemState.init(identifier:locale:bookmarkLoadState:downloadLoadState:presentationContextKey:confirmation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  v14 = type metadata accessor for RemoveLibraryItemState();
  v15 = v14[9];
  v16 = sub_1E5BF64B4();
  (*(*(v16 - 8) + 32))(a8 + v15, a2, v16);
  sub_1E5B5F8D4(a3, a8 + v14[10], &qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5B5F8D4(a4, a8 + v14[11], &qword_1ED03E260, &qword_1E5BF9190);
  v17 = v14[12];
  v18 = sub_1E5BF6494();
  (*(*(v18 - 8) + 32))(a8 + v17, a5, v18);
  return sub_1E5B5F8D4(a6, a8 + v14[13], &qword_1ED03E5C0, &unk_1E5BF8A20);
}

uint64_t static RemoveLibraryItemState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) + 8);
  if ((sub_1E5BF6F14() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for RemoveLibraryItemState();
  if ((MEMORY[0x1E6936BF0](a1 + v7[9], a2 + v7[9]) & 1) == 0)
  {
    return 0;
  }

  v8 = v7[10];
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v9 = v7[11];
  sub_1E5B695CC();
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v10 = v7[12];
  if ((sub_1E5BF6474() & 1) == 0)
  {
    return 0;
  }

  v11 = v7[13];

  return sub_1E5B65C60(a1 + v11, a2 + v11);
}

uint64_t sub_1E5BC0264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C08470 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C08490 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

unint64_t sub_1E5BC0474(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000011;
  v3 = 0xD000000000000016;
  if (a1 != 4)
  {
    v3 = 0x616D7269666E6F63;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x656C61636F6CLL;
  if (a1 != 1)
  {
    v4 = 0xD000000000000011;
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

unint64_t sub_1E5BC0540(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5BC0474(*v1);
}

uint64_t sub_1E5BC054C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5BC0264(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5BC057C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E5BC24DC();
  *a2 = result;
  return result;
}

uint64_t sub_1E5BC05A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BC05FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t RemoveLibraryItemState.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v22[0] = a2;
  v22[1] = v3;
  type metadata accessor for RemoveLibraryItemState.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1E5BF7434();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF7524();
  v28 = 0;
  v11 = *(v4 + 16);
  v12 = v9;
  v13 = v22[3];
  sub_1E5BF7424();
  if (v13)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v15 = v6;
  v16 = v22[0];
  v17 = *(v22[0] + 36);
  v27 = 1;
  sub_1E5BF64B4();
  sub_1E5BC1840(&qword_1ED03E5C8, MEMORY[0x1E6969770]);
  sub_1E5BF7424();
  v18 = v16[10];
  v26 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5B6968C(&qword_1ED03E5D0);
  sub_1E5BF7424();
  v19 = v16[11];
  v25 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  sub_1E5B696FC(&qword_1ED03E5D8);
  sub_1E5BF7424();
  v20 = v16[12];
  v24 = 4;
  sub_1E5BF6494();
  sub_1E5BC1840(&qword_1EE2C7AF0, MEMORY[0x1E69695A8]);
  sub_1E5BF7424();
  v21 = v16[13];
  v23 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B69774(&qword_1ED03E5E0);
  sub_1E5BF7424();
  return (*(v15 + 8))(v12, v5);
}

uint64_t RemoveLibraryItemState.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1E5BF6494();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v29 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  v19 = *(a2 + 16);
  v20 = *(*(a2 + 24) + 24);
  sub_1E5BF6EF4();
  v21 = *(a2 + 36);
  sub_1E5BF64B4();
  sub_1E5BC1840(&qword_1ED03E5F0, MEMORY[0x1E6969770]);
  sub_1E5BF6EF4();
  v22 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  v23 = *(a2 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  sub_1E5B69638();
  sub_1E5BF6DF4();
  v24 = *(a2 + 48);
  sub_1E5BC1840(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  sub_1E5B5F864(v3 + *(a2 + 52), v18, &qword_1ED03E5C0, &unk_1E5BF8A20);
  if ((*(v9 + 48))(v18, 1, v8) == 1)
  {
    return MEMORY[0x1E6937C10](0);
  }

  v26 = v31;
  sub_1E5B5F8D4(v18, v31, &qword_1ED03E5E8, &unk_1E5BF9600);
  MEMORY[0x1E6937C10](1);
  sub_1E5B5F864(v26, v13, &qword_1ED03E5E8, &unk_1E5BF9600);
  v27 = v32;
  if ((*(v32 + 48))(v13, 1, v5) == 1)
  {
    sub_1E5BF74D4();
  }

  else
  {
    v28 = v30;
    (*(v27 + 32))(v30, v13, v5);
    sub_1E5BF74D4();
    sub_1E5BF6EF4();
    (*(v27 + 8))(v28, v5);
  }

  return sub_1E5B5F804(v26, &qword_1ED03E5E8, &unk_1E5BF9600);
}

uint64_t RemoveLibraryItemState.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  RemoveLibraryItemState.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t RemoveLibraryItemState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v7 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v47 - v8;
  v55 = sub_1E5BF6494();
  v57 = *(v55 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  v11 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v47 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v13 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v47 - v14;
  v62 = sub_1E5BF64B4();
  v56 = *(v62 - 8);
  v15 = *(v56 + 64);
  v16 = MEMORY[0x1EEE9AC00](v62);
  v60 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a2 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v64 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for RemoveLibraryItemState.CodingKeys();
  swift_getWitnessTable();
  v66 = sub_1E5BF7384();
  v59 = *(v66 - 8);
  v20 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v22 = &v47 - v21;
  v63 = a2;
  v61 = a3;
  v23 = type metadata accessor for RemoveLibraryItemState();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v47 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v65 = v22;
  v29 = v67;
  sub_1E5BF7514();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v59;
  v31 = v60;
  v67 = v24;
  v32 = v27;
  v33 = v62;
  v73 = 0;
  v34 = *(v61 + 8);
  v35 = v63;
  sub_1E5BF7364();
  v36 = v35;
  v37 = v32;
  (*(v58 + 32))(v32, v64, v36);
  v72 = 1;
  sub_1E5BC1840(&qword_1ED03E600, MEMORY[0x1E6969770]);
  sub_1E5BF7364();
  (*(v56 + 32))(&v32[v23[9]], v31, v33);
  v71 = 2;
  sub_1E5B6968C(&qword_1ED03E608);
  v38 = v53;
  v61 = 0;
  sub_1E5BF7364();
  v64 = a1;
  v39 = v57;
  v40 = v30;
  sub_1E5B5F8D4(v38, &v37[v23[10]], &qword_1ED03E238, &unk_1E5BF8A10);
  v70 = 3;
  sub_1E5B696FC(&qword_1ED03E610);
  v41 = v51;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v41, &v37[v23[11]], &qword_1ED03E260, &qword_1E5BF9190);
  v69 = 4;
  sub_1E5BC1840(&qword_1EE2C7AE0, MEMORY[0x1E69695A8]);
  v42 = v50;
  v43 = v55;
  sub_1E5BF7364();
  (*(v39 + 32))(&v37[v23[12]], v42, v43);
  v68 = 5;
  sub_1E5B69774(qword_1ED03E618);
  v44 = v49;
  sub_1E5BF7364();
  (*(v40 + 8))(v65, v66);
  sub_1E5B5F8D4(v44, &v37[v23[13]], &qword_1ED03E5C0, &unk_1E5BF8A20);
  v45 = v67;
  (*(v67 + 16))(v47, v37, v23);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return (*(v45 + 8))(v37, v23);
}

uint64_t sub_1E5BC17FC(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  RemoveLibraryItemState.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC1840(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5BC18B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1E5BF64B4();
    if (v3 <= 0x3F)
    {
      sub_1E5B6A458();
      if (v4 <= 0x3F)
      {
        sub_1E5B6A4B0();
        if (v5 <= 0x3F)
        {
          sub_1E5BF6494();
          if (v6 <= 0x3F)
          {
            sub_1E5B6A50C();
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

uint64_t sub_1E5BC19A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v57 = *(a3 + 16);
  v4 = *(v57 - 8);
  v5 = *(v4 + 84);
  v55 = sub_1E5BF64B4();
  v6 = *(v55 - 8);
  v58 = v5;
  v56 = *(v6 + 84);
  if (v56 > v5)
  {
    v5 = *(v6 + 84);
  }

  v7 = *(sub_1E5BF6464() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  if (((v8 + 1) & ~v8) + v9 <= 0x28)
  {
    v10 = 40;
  }

  else
  {
    v10 = ((v8 + 1) & ~v8) + v9;
  }

  v11 = 252 - (1u >> (8 * v10));
  if (v10 >= 4)
  {
    v11 = 252;
  }

  v54 = v11;
  if (v11 <= v5)
  {
    v11 = v5;
  }

  v12 = ((v8 + 6) & ~v8) + v9;
  if (v12 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 4)
  {
    v14 = 252;
  }

  else
  {
    v14 = 252 - (1u >> (8 * v13));
  }

  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(sub_1E5BF6494() - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  if (v18 <= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = *(v16 + 84);
  }

  v20 = v18 - 1;
  if (!v18)
  {
    v20 = 0;
  }

  v21 = v20 - 1;
  v22 = v18 < 2;
  if (v18 >= 2)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > v19)
  {
    v19 = v23;
  }

  v24 = *(v6 + 80);
  v25 = *(v16 + 80);
  v26 = *(v16 + 64);
  if (!v18)
  {
    ++v22;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = *(v4 + 64) + v24;
  v28 = v8 | 7;
  v29 = *(v6 + 64) + (v8 | 7);
  v30 = v10 + (v8 | 7) + 1;
  v31 = v13 + v25 + 1;
  v32 = v26 + v25;
  v33 = a1;
  if (a2 <= v19)
  {
    goto LABEL_55;
  }

  v34 = v22 + v26 + ((v32 + ((v31 + ((v30 + ((v29 + (v27 & ~v24)) & ~v28)) & ~v28)) & ~v25)) & ~v25);
  v35 = 8 * v34;
  if (v34 > 3)
  {
    goto LABEL_34;
  }

  v38 = ((a2 - v19 + ~(-1 << v35)) >> v35) + 1;
  if (HIWORD(v38))
  {
    v36 = *(a1 + v34);
    if (v36)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v38 <= 0xFF)
    {
      if (v38 < 2)
      {
        goto LABEL_55;
      }

LABEL_34:
      v36 = *(a1 + v34);
      if (!*(a1 + v34))
      {
        goto LABEL_55;
      }

LABEL_42:
      v39 = (v36 - 1) << v35;
      if (v34 > 3)
      {
        v39 = 0;
      }

      if (v34)
      {
        if (v34 <= 3)
        {
          v40 = v34;
        }

        else
        {
          v40 = 4;
        }

        if (v40 > 2)
        {
          if (v40 == 3)
          {
            v41 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v41 = *a1;
          }
        }

        else if (v40 == 1)
        {
          v41 = *a1;
        }

        else
        {
          v41 = *a1;
        }
      }

      else
      {
        v41 = 0;
      }

      return v19 + (v41 | v39) + 1;
    }

    v36 = *(a1 + v34);
    if (*(a1 + v34))
    {
      goto LABEL_42;
    }
  }

LABEL_55:
  if (v58 == v19)
  {
    v42 = v57;
    v43 = *(v4 + 48);
    v44 = v58;
LABEL_59:

    return v43(v33, v44, v42);
  }

  v33 = ((a1 + v27) & ~v24);
  if (v56 == v19)
  {
    v43 = *(v6 + 48);
    v44 = v56;
    v42 = v55;
    goto LABEL_59;
  }

  v45 = ~v28;
  v46 = (v33 + v29) & v45;
  if (v54 == v19)
  {
    v47 = *(v46 + v10);
    if (v54 <= (v47 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v47);
    }
  }

  else
  {
    v48 = (v30 + v46) & v45;
    if (v14 == v19)
    {
      v49 = *(v48 + v13);
      if (v14 <= (v49 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v49);
      }
    }

    else
    {
      v50 = ~v25;
      v51 = (v31 + v48) & v50;
      if (v18 == v19)
      {
        v52 = *(v17 + 48);

        return v52(v51);
      }

      else
      {
        result = 0;
        if (v18 >= 2 && v21)
        {
          v53 = (*(v17 + 48))((v32 + v51) & v50);
          if (v53 >= 3)
          {
            return v53 - 2;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1E5BC1E80(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v63 = *(a4 + 16);
  v4 = *(v63 - 8);
  v62 = v4;
  v5 = *(v4 + 84);
  v60 = sub_1E5BF64B4();
  v6 = *(v60 - 8);
  v64 = v5;
  v61 = *(v6 + 84);
  if (v61 > v5)
  {
    v5 = *(v6 + 84);
  }

  v7 = *(sub_1E5BF6464() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  if (((v8 + 1) & ~v8) + v9 <= 0x28)
  {
    v10 = 40;
  }

  else
  {
    v10 = ((v8 + 1) & ~v8) + v9;
  }

  v11 = 252 - (1u >> (8 * v10));
  if (v10 >= 4)
  {
    v11 = 252;
  }

  v59 = v11;
  if (v11 <= v5)
  {
    v11 = v5;
  }

  v12 = ((v8 + 6) & ~v8) + v9;
  if (v12 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 4)
  {
    v14 = 252;
  }

  else
  {
    v14 = 252 - (1u >> (8 * v13));
  }

  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  v16 = 0;
  v17 = *(sub_1E5BF6494() - 8);
  v18 = v17;
  v19 = *(v17 + 84);
  if (v19 <= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = *(v17 + 84);
  }

  if (v19)
  {
    v21 = v19 - 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 - 1;
  v23 = v19 < 2;
  if (v19 < 2)
  {
    v22 = 0;
  }

  if (v22 > v20)
  {
    v20 = v22;
  }

  v24 = *(v6 + 80);
  v25 = *(v4 + 64) + v24;
  v26 = *(v17 + 80);
  v27 = *(v17 + 64);
  v28 = v8 | 7;
  v29 = *(v6 + 64) + (v8 | 7);
  v30 = v10 + (v8 | 7) + 1;
  v31 = v13 + v26 + 1;
  v32 = v27 + v26;
  if (v19)
  {
    v33 = v19 < 2;
  }

  else
  {
    v33 = v23 + 1;
  }

  v34 = v33 + v27 + ((v27 + v26 + ((v31 + ((v30 + ((v29 + (v25 & ~v24)) & ~(v8 | 7))) & ~(v8 | 7))) & ~v26)) & ~v26);
  if (a3 > v20)
  {
    v16 = 1;
    if (v34 <= 3)
    {
      v35 = ((a3 - v20 + ~(-1 << (8 * v34))) >> (8 * v34)) + 1;
      v36 = HIWORD(v35);
      if (v35 < 0x100)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2;
      }

      if (v35 >= 2)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      if (v36)
      {
        v16 = 4;
      }

      else
      {
        v16 = v38;
      }
    }
  }

  if (v20 < a2)
  {
    v39 = ~v20 + a2;
    if (v34 >= 4)
    {
      bzero(a1, v34);
      *a1 = v39;
      v40 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_74;
    }

    v40 = (v39 >> (8 * v34)) + 1;
    if (v34)
    {
      v42 = v39 & ~(-1 << (8 * v34));
      bzero(a1, v34);
      if (v34 != 3)
      {
        if (v34 == 2)
        {
          *a1 = v42;
          if (v16 > 1)
          {
            goto LABEL_46;
          }
        }

        else
        {
          *a1 = v39;
          if (v16 > 1)
          {
LABEL_46:
            if (v16 == 2)
            {
              *&a1[v34] = v40;
            }

            else
            {
              *&a1[v34] = v40;
            }

            return;
          }
        }

LABEL_74:
        if (v16)
        {
          a1[v34] = v40;
        }

        return;
      }

      *a1 = v42;
      a1[2] = BYTE2(v42);
    }

    if (v16 > 1)
    {
      goto LABEL_46;
    }

    goto LABEL_74;
  }

  v41 = a1;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v34] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_60;
    }

    *&a1[v34] = 0;
  }

  else if (v16)
  {
    a1[v34] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_60;
  }

  if (!a2)
  {
    return;
  }

LABEL_60:
  if (v64 == v20)
  {
    v43 = v63;
    v44 = *(v62 + 56);
    v45 = a2;
    v46 = v64;
LABEL_64:

    v44(v41, v45, v46, v43);
    return;
  }

  v41 = (&a1[v25] & ~v24);
  if (v61 == v20)
  {
    v44 = *(v6 + 56);
    v45 = a2;
    v46 = v61;
    v43 = v60;
    goto LABEL_64;
  }

  v47 = &v41[v29] & ~v28;
  if (v59 == v20)
  {
    *(v47 + v10) = -a2;
    return;
  }

  v48 = (v30 + v47) & ~v28;
  if (v14 == v20)
  {
    *(v48 + v13) = -a2;
    return;
  }

  v49 = ~v26;
  v50 = (v31 + v48) & v49;
  if (v19 != v20)
  {
    v53 = ((v32 + v50) & v49);
    if (v19)
    {
      if (v22 >= a2)
      {
        if (a2 + 1 <= v21)
        {
          if (a2 == -1 || v19 == 1)
          {
            return;
          }

          v51 = *(v18 + 56);
          v52 = a2 + 2;
          v50 = (v32 + v50) & v49;
          goto LABEL_83;
        }

        if (v27 <= 3)
        {
          v58 = ~(-1 << (8 * v27));
        }

        else
        {
          v58 = -1;
        }

        if (!v27)
        {
          return;
        }

        v56 = v58 & (a2 - v21);
        if (v27 <= 3)
        {
          v57 = v27;
        }

        else
        {
          v57 = 4;
        }

        bzero(v53, v27);
        if (v57 <= 2)
        {
          if (v57 == 1)
          {
            goto LABEL_99;
          }

          goto LABEL_110;
        }

LABEL_111:
        if (v57 == 3)
        {
          *v53 = v56;
          v53[2] = BYTE2(v56);
        }

        else
        {
          *v53 = v56;
        }

        return;
      }

      v54 = (v27 + v23);
    }

    else
    {
      v54 = (v27 + 2);
    }

    if (v54 <= 3)
    {
      v55 = ~(-1 << (8 * v54));
    }

    else
    {
      v55 = -1;
    }

    if (!v54)
    {
      return;
    }

    v56 = v55 & (~v22 + a2);
    if (v54 <= 3)
    {
      v57 = v54;
    }

    else
    {
      v57 = 4;
    }

    bzero(v53, v54);
    if (v57 <= 2)
    {
      if (v57 == 1)
      {
LABEL_99:
        *v53 = v56;
        return;
      }

LABEL_110:
      *v53 = v56;
      return;
    }

    goto LABEL_111;
  }

  v51 = *(v18 + 56);
  v52 = a2;
LABEL_83:

  v51(v50, v52);
}

uint64_t get_enum_tag_for_layout_string_14FitnessActions20ActionTaskIdentifierO(uint64_t a1)
{
  if ((*(a1 + 40) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 40) & 0xF;
  }
}

uint64_t sub_1E5BC2500(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 41))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 40);
  if (v3 >= 9)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5BC253C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5BC2588(uint64_t result, unsigned int a2)
{
  if (a2 > 7)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 8;
    LOBYTE(a2) = 8;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1E5BC25C0()
{
  sub_1E5B6C48C(v0, &v6);
  if (v9 <= 3u)
  {
    if (v9 > 1u)
    {
      v3 = v6;
      v4 = v7;
      v5 = v8;
      if (v9 == 2)
      {
        v1 = 2;
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v3 = v6;
      v4 = v7;
      v5 = v8;
      v1 = v9 != 0;
    }
  }

  else if (v9 <= 5u)
  {
    v3 = v6;
    v4 = v7;
    v5 = v8;
    if (v9 == 4)
    {
      v1 = 4;
    }

    else
    {
      v1 = 5;
    }
  }

  else if (v9 == 6)
  {
    v3 = v6;
    v4 = v7;
    v5 = v8;
    v1 = 6;
  }

  else
  {
    if (v9 != 7)
    {
      return MEMORY[0x1E6937C10](7);
    }

    v3 = v6;
    v4 = v7;
    v5 = v8;
    v1 = 8;
  }

  MEMORY[0x1E6937C10](v1);
  sub_1E5BF7244();
  return sub_1E5B6E230(&v3);
}

uint64_t sub_1E5BC271C()
{
  sub_1E5BF74B4();
  sub_1E5BC25C0();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC2760()
{
  sub_1E5BF74B4();
  sub_1E5BC25C0();
  return sub_1E5BF7504();
}

unint64_t sub_1E5BC27A4()
{
  result = qword_1EE2C7238;
  if (!qword_1EE2C7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7238);
  }

  return result;
}

uint64_t sub_1E5BC27F8(uint64_t a1, uint64_t a2)
{
  sub_1E5B6C48C(a1, v9);
  sub_1E5B6C48C(a2, v11);
  if (v10 > 3u)
  {
    if (v10 <= 5u)
    {
      if (v10 == 4)
      {
        sub_1E5B6C48C(v9, v8);
        if (v12 == 4)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1E5B6C48C(v9, v8);
        if (v12 == 5)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_10;
    }

    if (v10 != 6)
    {
      if (v10 != 7)
      {
        if (v12 == 8)
        {
          v5 = vorrq_s8(*&v11[8], *&v11[24]);
          if (!(*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *v11))
          {
            sub_1E5B6C53C(v9);
            v3 = 1;
            return v3 & 1;
          }
        }

        goto LABEL_11;
      }

      sub_1E5B6C48C(v9, v8);
      if (v12 == 7)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    sub_1E5B6C48C(v9, v8);
    if (v12 != 6)
    {
      goto LABEL_10;
    }

LABEL_19:
    v6[0] = *v11;
    v6[1] = *&v11[16];
    v7 = *&v11[32];
    v3 = MEMORY[0x1E6937980](v8, v6);
    sub_1E5B6E230(v6);
    sub_1E5B6E230(v8);
    sub_1E5B6C53C(v9);
    return v3 & 1;
  }

  if (v10 > 1u)
  {
    if (v10 == 2)
    {
      sub_1E5B6C48C(v9, v8);
      if (v12 == 2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_1E5B6C48C(v9, v8);
      if (v12 == 3)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_10;
  }

  if (v10)
  {
    sub_1E5B6C48C(v9, v8);
    if (v12 == 1)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  sub_1E5B6C48C(v9, v8);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_10:
  sub_1E5B6E230(v8);
LABEL_11:
  sub_1E5BC29C0(v9);
  v3 = 0;
  return v3 & 1;
}

uint64_t sub_1E5BC29C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FFD0, &unk_1E5C01B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5BC2A40()
{
  if (*v0)
  {
    result = 0x657474616C506F6ELL;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_1E5BC2A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657474616C506F6ELL && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BC2B64(uint64_t a1)
{
  v2 = sub_1E5BC2F7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BC2BA0(uint64_t a1)
{
  v2 = sub_1E5BC2F7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BC2BDC(uint64_t a1)
{
  v2 = sub_1E5BC3024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BC2C18(uint64_t a1)
{
  v2 = sub_1E5BC3024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BC2C54(uint64_t a1)
{
  v2 = sub_1E5BC2FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BC2C90(uint64_t a1)
{
  v2 = sub_1E5BC2FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicBarButtonItemStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FFD8, &qword_1E5C01B80);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FFE0, &qword_1E5C01B88);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FFE8, &qword_1E5C01B90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BC2F7C();
  sub_1E5BF7524();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E5BC2FD0();
    v18 = v22;
    sub_1E5BF7394();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E5BC3024();
    sub_1E5BF7394();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1E5BC2F7C()
{
  result = qword_1ED03FFF0;
  if (!qword_1ED03FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FFF0);
  }

  return result;
}

unint64_t sub_1E5BC2FD0()
{
  result = qword_1ED03FFF8;
  if (!qword_1ED03FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FFF8);
  }

  return result;
}

unint64_t sub_1E5BC3024()
{
  result = qword_1ED040000;
  if (!qword_1ED040000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040000);
  }

  return result;
}

uint64_t DynamicBarButtonItemStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040008, &qword_1E5C01B98);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040010, &qword_1E5C01BA0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040018, &unk_1E5C01BA8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BC2F7C();
  v16 = v36;
  sub_1E5BF7514();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1E5BF7374();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E5B7FB0C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E5BF7284();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
      *v26 = &type metadata for DynamicBarButtonItemStyle;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1E5BC2FD0();
        sub_1E5BF72C4();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E5BC3024();
        sub_1E5BF72C4();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t DynamicBarButtonItemStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

unint64_t sub_1E5BC35DC()
{
  result = qword_1ED040020;
  if (!qword_1ED040020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040020);
  }

  return result;
}

unint64_t sub_1E5BC3674()
{
  result = qword_1ED040028;
  if (!qword_1ED040028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040028);
  }

  return result;
}

unint64_t sub_1E5BC36CC()
{
  result = qword_1ED040030;
  if (!qword_1ED040030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040030);
  }

  return result;
}

unint64_t sub_1E5BC3724()
{
  result = qword_1ED040038;
  if (!qword_1ED040038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040038);
  }

  return result;
}

unint64_t sub_1E5BC377C()
{
  result = qword_1ED040040;
  if (!qword_1ED040040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040040);
  }

  return result;
}

unint64_t sub_1E5BC37D4()
{
  result = qword_1ED040048;
  if (!qword_1ED040048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040048);
  }

  return result;
}

unint64_t sub_1E5BC382C()
{
  result = qword_1ED040050;
  if (!qword_1ED040050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040050);
  }

  return result;
}

unint64_t sub_1E5BC3884()
{
  result = qword_1ED040058;
  if (!qword_1ED040058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040058);
  }

  return result;
}

uint64_t sub_1E5BC38D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_1E5BF74B4();
    MEMORY[0x1E6937C10](v13);
    result = sub_1E5BF7504();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for StackButtonState()
{
  result = qword_1ED040080;
  if (!qword_1ED040080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StackButtonState.init(workoutIdentifier:locale:allowedMediaTypes:isEntitled:startWorkoutDetailLoadState:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v14 = type metadata accessor for StackButtonState();
  v15 = v14[5];
  v16 = sub_1E5BF64B4();
  (*(*(v16 - 8) + 32))(&a8[v15], a3, v16);
  *&a8[v14[6]] = a4;
  sub_1E5B5F8D4(a5, &a8[v14[7]], &qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5B5F8D4(a6, &a8[v14[8]], &qword_1ED03E950, &unk_1E5BF95F0);
  return sub_1E5B5F8D4(a7, &a8[v14[9]], &qword_1ED03E238, &unk_1E5BF8A10);
}

unint64_t sub_1E5BC3C2C()
{
  v1 = *v0;
  v2 = 0x656C61636F6CLL;
  v3 = 0x6C7469746E457369;
  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0x7461745364616F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E5BC3D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BC5054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BC3D28(uint64_t a1)
{
  v2 = sub_1E5BC4C38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BC3D64(uint64_t a1)
{
  v2 = sub_1E5BC4C38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StackButtonState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040060, &unk_1E5C01F30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BC4C38();
  sub_1E5BF7524();
  v11 = *v3;
  v12 = v3[1];
  v24 = 0;
  sub_1E5BF73E4();
  if (!v2)
  {
    v13 = type metadata accessor for StackButtonState();
    v14 = v13[5];
    v23 = 1;
    sub_1E5BF64B4();
    sub_1E5BC4D94(&qword_1ED03E5C8, MEMORY[0x1E6969770]);
    sub_1E5BF7424();
    v18[1] = *(v3 + v13[6]);
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F210, &qword_1E5BFBBD0);
    sub_1E5B8D750(&qword_1ED03F218, sub_1E5B8D528);
    sub_1E5BF7424();
    v15 = v13[7];
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
    sub_1E5B6968C(&qword_1ED03E5D0);
    sub_1E5BF7424();
    v18[0] = v13[8];
    v20 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
    sub_1E5B8D81C(&qword_1ED03F220);
    sub_1E5BF7424();
    v16 = v13[9];
    v19 = 5;
    sub_1E5BF7424();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StackButtonState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_1E5BF6FE4();
  v6 = type metadata accessor for StackButtonState();
  v7 = v6[5];
  sub_1E5BF64B4();
  sub_1E5BC4D94(&qword_1ED03E5F0, MEMORY[0x1E6969770]);
  sub_1E5BF6EF4();
  sub_1E5B8D230(a1, *(v2 + v6[6]));
  v8 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  v9 = v6[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  sub_1E5B8D6FC();
  sub_1E5BF6DF4();
  v10 = v2 + v6[9];
  return sub_1E5BF6DF4();
}

uint64_t StackButtonState.hashValue.getter()
{
  sub_1E5BF74B4();
  type metadata accessor for StackButtonState();
  sub_1E5BC4D94(&qword_1ED040070, type metadata accessor for StackButtonState);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t StackButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v3 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v31 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v5 = *(*(v35 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v35);
  v36 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - v8;
  v10 = sub_1E5BF64B4();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040078, &qword_1E5C01F40);
  v37 = *(v39 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v16 = v31 - v15;
  v17 = type metadata accessor for StackButtonState();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a1[3];
  v21 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E5BC4C38();
  v40 = v16;
  v23 = v41;
  sub_1E5BF7514();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v41 = v9;
  v24 = v36;
  v25 = v38;
  v49 = 0;
  *v20 = sub_1E5BF7324();
  v20[1] = v26;
  v48 = 1;
  sub_1E5BC4D94(&qword_1ED03E600, MEMORY[0x1E6969770]);
  sub_1E5BF7364();
  (*(v25 + 32))(v20 + v17[5], v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F210, &qword_1E5BFBBD0);
  v47 = 2;
  sub_1E5B8D750(&qword_1ED03F250, sub_1E5B8D7C8);
  sub_1E5BF7364();
  *(v20 + v17[6]) = v43;
  v46 = 3;
  sub_1E5B6968C(&qword_1ED03E608);
  v27 = v41;
  v31[1] = 0;
  sub_1E5BF7364();
  v28 = v17;
  sub_1E5B5F8D4(v27, v20 + v17[7], &qword_1ED03E238, &unk_1E5BF8A10);
  v45 = 4;
  sub_1E5B8D81C(&qword_1ED03F260);
  v29 = v34;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v29, v20 + v28[8], &qword_1ED03E950, &unk_1E5BF95F0);
  v44 = 5;
  sub_1E5BF7364();
  (*(v37 + 8))(v40, v39);
  sub_1E5B5F8D4(v24, v20 + v28[9], &qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BC4C8C(v20, v32);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_1E5BC4CF0(v20);
}

uint64_t sub_1E5BC49F4(__int128 *a1, int *a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = v2[1];
  sub_1E5BF6FE4();
  v8 = a2[5];
  sub_1E5BF64B4();
  sub_1E5BC4D94(&qword_1ED03E5F0, MEMORY[0x1E6969770]);
  sub_1E5BF6EF4();
  sub_1E5B8D230(a1, *(v4 + a2[6]));
  v9 = a2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  v10 = a2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  sub_1E5B8D6FC();
  sub_1E5BF6DF4();
  v11 = v4 + a2[9];
  return sub_1E5BF6DF4();
}

uint64_t _s14FitnessActions16StackButtonStateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for StackButtonState();
  if ((MEMORY[0x1E6936BF0](a1 + v5[5], a2 + v5[5]) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E5BC38D8(*(a1 + v5[6]), *(a2 + v5[6])) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[7];
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[8];
  sub_1E5B8DC2C();
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v8 = v5[9];

  return sub_1E5BF6DE4();
}

unint64_t sub_1E5BC4C38()
{
  result = qword_1ED040068;
  if (!qword_1ED040068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040068);
  }

  return result;
}

uint64_t sub_1E5BC4C8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StackButtonState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BC4CF0(uint64_t a1)
{
  v2 = type metadata accessor for StackButtonState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5BC4D94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5BC4E04()
{
  sub_1E5BF64B4();
  if (v0 <= 0x3F)
  {
    sub_1E5B8DBC4(319, &qword_1EE2C6210, sub_1E5B8DB70, &type metadata for WorkoutMediaType, MEMORY[0x1E69E64E8]);
    if (v1 <= 0x3F)
    {
      sub_1E5B6A458();
      if (v2 <= 0x3F)
      {
        sub_1E5B8DBC4(319, &qword_1EE2C6278, sub_1E5B8DC2C, &type metadata for StartWorkoutDetail, MEMORY[0x1E6999B18]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1E5BC4F50()
{
  result = qword_1ED040090;
  if (!qword_1ED040090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040090);
  }

  return result;
}

unint64_t sub_1E5BC4FA8()
{
  result = qword_1ED040098;
  if (!qword_1ED040098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040098);
  }

  return result;
}

unint64_t sub_1E5BC5000()
{
  result = qword_1ED0400A0[0];
  if (!qword_1ED0400A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED0400A0);
  }

  return result;
}

uint64_t sub_1E5BC5054(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5C07A80 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C07AA0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C7469746E457369 && a2 == 0xEA00000000006465 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E5C084B0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t static ModalPresentation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a1;
  v59 = a2;
  v52 = *(a3 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5BF71F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v48 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v53 = a3;
  v54 = &v48 - v17;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v49 = a6;
  v18 = type metadata accessor for ModalPresentation();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v23 = swift_getTupleTypeMetadata2();
  v56 = *(v23 - 8);
  v24 = *(v56 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - v26;
  v28 = *(v25 + 48);
  v57 = v19;
  v29 = *(v19 + 16);
  v29(&v48 - v26, v58, v18);
  v29(&v27[v28], v59, v18);
  v59 = v13;
  v30 = *(v13 + 48);
  if (v30(v27, 1, v12) != 1)
  {
    v29(v22, v27, v18);
    if (v30(&v27[v28], 1, v12) == 1)
    {
      (*(v59 + 8))(v22, v12);
      goto LABEL_6;
    }

    v33 = v54;
    v34 = *(TupleTypeMetadata2 + 48);
    v35 = v59;
    v36 = *(v59 + 32);
    v36(v54, v22, v12);
    v36(&v33[v34], &v27[v28], v12);
    v38 = v52;
    v37 = v53;
    v39 = *(v52 + 48);
    if (v39(v33, 1, v53) == 1)
    {
      v40 = v39(&v33[v34], 1, v37);
      v32 = v57;
      if (v40 == 1)
      {
        (*(v35 + 8))(v33, v12);
        v31 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      (*(v35 + 16))(v51, v33, v12);
      v41 = v39(&v33[v34], 1, v37);
      v32 = v57;
      if (v41 != 1)
      {
        v43 = &v33[v34];
        v44 = v48;
        (*(v38 + 32))(v48, v43, v37);
        v45 = *(v49 + 8);
        v46 = v51;
        LODWORD(v58) = sub_1E5BF6F14();
        v47 = *(v38 + 8);
        v47(v44, v37);
        v47(v46, v37);
        (*(v35 + 8))(v54, v12);
        if (v58)
        {
          v31 = 1;
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      (*(v38 + 8))(v51, v37);
    }

    (*(v50 + 8))(v33, TupleTypeMetadata2);
LABEL_13:
    v31 = 0;
    goto LABEL_14;
  }

  v31 = 1;
  if (v30(&v27[v28], 1, v12) != 1)
  {
LABEL_6:
    v31 = 0;
    v32 = v56;
    v18 = v23;
    goto LABEL_14;
  }

  v32 = v57;
LABEL_14:
  (*(v32 + 8))(v27, v18);
  return v31;
}

uint64_t sub_1E5BC5818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373696D736964 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2003789939 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E5BF7444();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E5BC58E4(char a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1 & 1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC592C(char a1)
{
  if (a1)
  {
    return 2003789939;
  }

  else
  {
    return 0x7373696D736964;
  }
}

uint64_t sub_1E5BC595C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5BF7444();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_1E5BC59CC(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1E5B5C154(*a1, *a2);
}

uint64_t sub_1E5BC59E4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1E5BC58E4(*v1);
}

uint64_t sub_1E5BC59F8(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1E5B5C164(a1, *v2);
}

uint64_t sub_1E5BC5A0C(uint64_t a1, void *a2)
{
  sub_1E5BF74B4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1E5B5C164(v9, *v2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC5A58(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1E5BC592C(*v1);
}

uint64_t sub_1E5BC5A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1E5BC5818(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5BC5AA0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1E5BC72FC();
  *a2 = result;
  return result;
}

uint64_t sub_1E5BC5AD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BC5B28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5BC5B7C@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = sub_1E5B600CC();

  *a2 = v7 & 1;
  return result;
}

uint64_t sub_1E5BC5BE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BC5C38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5BC5C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1E5BC595C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1E5BC5CC4@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5BC5D04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BC5D58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ModalPresentation.encode(to:)(void *a1, void *a2)
{
  v54 = a1;
  v3 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v56 = a2[2];
  v4 = v56;
  v57 = v3;
  v58 = v6;
  v59 = v5;
  v46 = type metadata accessor for ModalPresentation.ShowCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1E5BF7434();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v37 - v9;
  v10 = sub_1E5BF71F4();
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v37 - v13;
  v56 = v4;
  v57 = v3;
  v58 = v6;
  v59 = v5;
  v14 = type metadata accessor for ModalPresentation.DismissCodingKeys();
  v15 = swift_getWitnessTable();
  v42 = v14;
  v40 = v15;
  v41 = sub_1E5BF7434();
  v39 = *(v41 - 8);
  v16 = *(v39 + 64);
  v17 = MEMORY[0x1EEE9AC00](v41);
  v38 = &v37 - v18;
  v19 = *(a2 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v6;
  v50 = v4;
  v56 = v4;
  v57 = v3;
  v58 = v6;
  v59 = v5;
  type metadata accessor for ModalPresentation.CodingKeys();
  swift_getWitnessTable();
  v53 = sub_1E5BF7434();
  v23 = *(v53 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v26 = &v37 - v25;
  v27 = v54[4];
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v28 = v51;
  sub_1E5BF7524();
  (*(v19 + 16))(v22, v55, a2);
  v29 = v52;
  if ((*(v52 + 48))(v22, 1, v28) == 1)
  {
    LOBYTE(v56) = 0;
    v30 = v38;
    v31 = v53;
    sub_1E5BF7394();
    (*(v39 + 8))(v30, v41);
    return (*(v23 + 8))(v26, v31);
  }

  else
  {
    v55 = v23;
    v33 = v43;
    (*(v29 + 32))(v43, v22, v28);
    LOBYTE(v56) = 1;
    v34 = v45;
    v35 = v53;
    sub_1E5BF7394();
    v36 = v48;
    sub_1E5BF73D4();
    (*(v47 + 8))(v34, v36);
    (*(v29 + 8))(v33, v28);
    return (*(v55 + 8))(v26, v35);
  }
}

uint64_t ModalPresentation.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1E5BF71F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - v9;
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2, a2);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    return MEMORY[0x1E6937C10](0);
  }

  (*(v6 + 32))(v10, v13, v5);
  MEMORY[0x1E6937C10](1);
  v16 = *(a2 + 40);
  sub_1E5BF7204();
  return (*(v6 + 8))(v10, v5);
}

uint64_t ModalPresentation.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  ModalPresentation.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t ModalPresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v80 = a1;
  v69 = a6;
  *&v78 = a2;
  *(&v78 + 1) = a3;
  *&v79 = a4;
  *(&v79 + 1) = a5;
  v10 = type metadata accessor for ModalPresentation.ShowCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v67 = v10;
  v60 = sub_1E5BF7384();
  v59 = *(v60 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v68 = &v55 - v12;
  *&v78 = a2;
  *(&v78 + 1) = a3;
  *&v79 = a4;
  *(&v79 + 1) = a5;
  v13 = type metadata accessor for ModalPresentation.DismissCodingKeys();
  v64 = swift_getWitnessTable();
  v65 = v13;
  v58 = sub_1E5BF7384();
  v57 = *(v58 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v63 = &v55 - v15;
  *&v78 = a2;
  *(&v78 + 1) = a3;
  *&v79 = a4;
  *(&v79 + 1) = a5;
  type metadata accessor for ModalPresentation.CodingKeys();
  v74 = swift_getWitnessTable();
  v70 = sub_1E5BF7384();
  v72 = *(v70 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v18 = &v55 - v17;
  v71 = a2;
  *&v78 = a2;
  *(&v78 + 1) = a3;
  v61 = a3;
  *&v79 = a4;
  *(&v79 + 1) = a5;
  v19 = type metadata accessor for ModalPresentation();
  v62 = *(v19 - 8);
  v20 = *(v62 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v55 - v24;
  v26 = v80;
  v27 = v80[4];
  __swift_project_boxed_opaque_existential_1(v80, v80[3]);
  v73 = v18;
  v28 = v75;
  sub_1E5BF7514();
  v29 = v26;
  if (!v28)
  {
    v56 = v23;
    v74 = v25;
    v75 = v19;
    v30 = v70;
    v31 = v73;
    *&v76 = sub_1E5BF7374();
    sub_1E5BF7044();
    swift_getWitnessTable();
    *&v78 = sub_1E5BF7224();
    *(&v78 + 1) = v32;
    *&v79 = v33;
    *(&v79 + 1) = v34;
    sub_1E5BF7214();
    swift_getWitnessTable();
    sub_1E5BF7164();
    v35 = v76;
    if (v76 == 2 || (v55 = v78, v76 = v78, v77 = v79, (sub_1E5BF7174() & 1) == 0))
    {
      v39 = sub_1E5BF7284();
      swift_allocError();
      v41 = v40;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
      *v41 = v75;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      (*(v72 + 8))(v31, v30);
      swift_unknownObjectRelease();
    }

    else if (v35)
    {
      LOBYTE(v76) = 1;
      v36 = v68;
      sub_1E5BF72C4();
      v37 = v69;
      v38 = v72;
      v47 = v56;
      v48 = v60;
      sub_1E5BF7314();
      (*(v59 + 8))(v36, v48);
      (*(v38 + 8))(v73, v30);
      swift_unknownObjectRelease();
      v51 = sub_1E5BF71F4();
      (*(*(v51 - 8) + 56))(v47, 0, 1, v51);
      v52 = *(v62 + 32);
      v54 = v74;
      v53 = v75;
      v52(v74, v47, v75);
      v52(v37, v54, v53);
    }

    else
    {
      LOBYTE(v76) = 0;
      v44 = v63;
      sub_1E5BF72C4();
      v45 = v69;
      v46 = v72;
      (*(v57 + 8))(v44, v58);
      (*(v46 + 8))(v31, v30);
      swift_unknownObjectRelease();
      v49 = sub_1E5BF71F4();
      v50 = v74;
      (*(*(v49 - 8) + 56))(v74, 1, 1, v49);
      (*(v62 + 32))(v45, v50, v75);
    }

    v29 = v80;
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_1E5BC6D5C(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  ModalPresentation.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC6DCC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 < 2)
  {
    v7 = 0;
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_30;
  }

  v10 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v12 = ((v9 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v8);
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_30;
      }

LABEL_10:
      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_30;
      }

LABEL_17:
      v13 = (v11 - 1) << v10;
      if (v8 > 3)
      {
        v13 = 0;
      }

      if (v8)
      {
        if (v8 <= 3)
        {
          v14 = v8;
        }

        else
        {
          v14 = 4;
        }

        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v15 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v15 = *a1;
          }
        }

        else if (v14 == 1)
        {
          v15 = *a1;
        }

        else
        {
          v15 = *a1;
        }
      }

      else
      {
        v15 = 0;
      }

      return v7 + (v15 | v13) + 1;
    }

    v11 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_17;
    }
  }

LABEL_30:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  v17 = v16 >= 2;
  result = v16 - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_1E5BC6F58(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
  }

  v11 = v10 - 1;
  if (!v8)
  {
    ++v9;
  }

  if (v8 >= 2)
  {
    v12 = v9;
  }

  else
  {
    v11 = 0;
    v12 = v9 + 1;
  }

  v13 = a3 >= v11;
  v14 = a3 - v11;
  if (v14 == 0 || !v13)
  {
LABEL_20:
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v11 < a2)
  {
LABEL_21:
    v17 = ~v11 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v12] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (a2 + 1 <= v10)
  {
    if (a2 != -1 && v8 >= 2)
    {
      v23 = *(v7 + 56);

      v23();
    }
  }

  else
  {
    if (v9 <= 3)
    {
      v20 = ~(-1 << (8 * v9));
    }

    else
    {
      v20 = -1;
    }

    if (v9)
    {
      v21 = v20 & (a2 - v10);
      if (v9 <= 3)
      {
        v22 = v9;
      }

      else
      {
        v22 = 4;
      }

      bzero(a1, v9);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else
        {
          *a1 = v21;
        }
      }

      else if (v22 == 1)
      {
        *a1 = v21;
      }

      else
      {
        *a1 = v21;
      }
    }
  }
}

uint64_t sub_1E5BC733C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F6C6E776F447369 && a2 == 0xEC00000064656461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5BF7444();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5BC73C8(uint64_t a1)
{
  v2 = sub_1E5BC7578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BC7404(uint64_t a1)
{
  v2 = sub_1E5BC7578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoveBookmarkConfirmationData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040228, &qword_1E5C02560);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BC7578();
  sub_1E5BF7524();
  sub_1E5BF73F4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E5BC7578()
{
  result = qword_1ED040230;
  if (!qword_1ED040230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040230);
  }

  return result;
}

uint64_t RemoveBookmarkConfirmationData.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  sub_1E5BF74D4();
  return sub_1E5BF7504();
}

uint64_t RemoveBookmarkConfirmationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040238, &unk_1E5C02568);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BC7578();
  sub_1E5BF7514();
  if (!v2)
  {
    v11 = sub_1E5BF7334();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5BC77B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040228, &qword_1E5C02560);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BC7578();
  sub_1E5BF7524();
  sub_1E5BF73F4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E5BC78E8()
{
  v1 = *v0;
  sub_1E5BF74B4();
  sub_1E5BF74D4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC795C()
{
  v1 = *v0;
  sub_1E5BF74B4();
  sub_1E5BF74D4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC7A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*BookmarkButtonState.removeConfirmation.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t BookmarkButtonState.init(identifier:locale:presentationContextKey:removeConfirmation:isEntitled:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  v14 = type metadata accessor for BookmarkButtonState();
  v15 = v14[9];
  v16 = sub_1E5BF64B4();
  (*(*(v16 - 8) + 32))(a8 + v15, a2, v16);
  v17 = v14[10];
  v18 = sub_1E5BF6494();
  (*(*(v18 - 8) + 32))(a8 + v17, a3, v18);
  sub_1E5B5F8D4(a4, a8 + v14[13], &qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B5F8D4(a5, a8 + v14[11], &qword_1ED03E238, &unk_1E5BF8A10);
  return sub_1E5B5F8D4(a6, a8 + v14[12], &qword_1ED03E238, &unk_1E5BF8A10);
}

uint64_t sub_1E5BC7C70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C7469746E457369 && a2 == 0xEA00000000006465 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C077F0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E5BC7E88(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6C7469746E457369;
  v3 = 0x7461745364616F6CLL;
  if (a1 != 4)
  {
    v3 = 0xD000000000000012;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x656C61636F6CLL;
  if (a1 != 1)
  {
    v4 = 0xD000000000000016;
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

uint64_t sub_1E5BC7F4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5BC7E88(*v1);
}

uint64_t sub_1E5BC7F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5BC7C70(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5BC7F88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5BC7FDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t BookmarkButtonState.encode(to:)(void *a1, uint64_t a2)
{
  v21[0] = a2;
  v3 = *(a2 + 24);
  v21[2] = *(a2 + 16);
  type metadata accessor for BookmarkButtonState.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1E5BF7434();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF7524();
  v27 = 0;
  v10 = *(v3 + 16);
  v11 = v21[3];
  v12 = v8;
  sub_1E5BF7424();
  if (v11)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = v5;
  v15 = v21[0];
  v16 = *(v21[0] + 36);
  v26 = 1;
  sub_1E5BF64B4();
  sub_1E5BC1840(&qword_1ED03E5C8, MEMORY[0x1E6969770]);
  sub_1E5BF7424();
  v17 = *(v15 + 40);
  v25 = 2;
  sub_1E5BF6494();
  sub_1E5BC1840(&qword_1EE2C7AF0, MEMORY[0x1E69695A8]);
  sub_1E5BF7424();
  v18 = *(v15 + 44);
  v24 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5B6968C(&qword_1ED03E5D0);
  sub_1E5BF7424();
  v19 = *(v21[0] + 48);
  v23 = 4;
  sub_1E5BF7424();
  v20 = *(v21[0] + 52);
  v22 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B69774(&qword_1ED03E5E0);
  sub_1E5BF7424();
  return (*(v14 + 8))(v12, v4);
}

uint64_t BookmarkButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v7 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v46 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v9 = *(*(v52 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v52);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v46 - v12;
  v59 = sub_1E5BF6494();
  v54 = *(v59 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v53 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5BF64B4();
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = *(v55 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v58 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a2 - 8);
  v19 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v64 = (&v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BookmarkButtonState.CodingKeys();
  swift_getWitnessTable();
  v62 = sub_1E5BF7384();
  v60 = *(v62 - 8);
  v21 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v23 = &v46 - v22;
  v63 = a2;
  v61 = a3;
  v24 = type metadata accessor for BookmarkButtonState();
  v25 = *(v24 - 1);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v46 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v65 = v23;
  v30 = v66;
  sub_1E5BF7514();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v66 = v25;
  v31 = v28;
  v32 = v58;
  v33 = v59;
  v72 = 0;
  v34 = *(v61 + 1);
  v35 = v63;
  sub_1E5BF7364();
  v36 = *(v57 + 32);
  v61 = v31;
  v36(v31, v64, v35);
  v71 = 1;
  sub_1E5BC1840(&qword_1ED03E600, MEMORY[0x1E6969770]);
  v37 = v56;
  sub_1E5BF7364();
  (*(v55 + 32))(&v61[v24[9]], v32, v37);
  v70 = 2;
  sub_1E5BC1840(&qword_1EE2C7AE0, MEMORY[0x1E69695A8]);
  v38 = v53;
  sub_1E5BF7364();
  v64 = a1;
  (*(v54 + 32))(&v61[v24[10]], v38, v33);
  v69 = 3;
  sub_1E5B6968C(&qword_1ED03E608);
  v39 = v51;
  sub_1E5BF7364();
  v40 = v39;
  v41 = v61;
  sub_1E5B5F8D4(v40, &v61[v24[11]], &qword_1ED03E238, &unk_1E5BF8A10);
  v68 = 4;
  sub_1E5BF7364();
  v42 = v60;
  sub_1E5B5F8D4(v50, &v41[v24[12]], &qword_1ED03E238, &unk_1E5BF8A10);
  v67 = 5;
  sub_1E5B69774(qword_1ED03E618);
  v43 = v48;
  sub_1E5BF7364();
  (*(v42 + 8))(v65, v62);
  sub_1E5B5F8D4(v43, &v41[v24[13]], &qword_1ED03E5C0, &unk_1E5BF8A20);
  v44 = v66;
  (*(v66 + 16))(v47, v41, v24);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return (*(v44 + 8))(v41, v24);
}

uint64_t static BookmarkButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) + 8);
  if ((sub_1E5BF6F14() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for BookmarkButtonState();
  if ((MEMORY[0x1E6936BF0](a1 + v7[9], a2 + v7[9]) & 1) == 0)
  {
    return 0;
  }

  v8 = v7[10];
  if ((sub_1E5BF6474() & 1) == 0)
  {
    return 0;
  }

  v9 = v7[11];
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v10 = v7[12];
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v11 = v7[13];

  return sub_1E5B65C60(a1 + v11, a2 + v11);
}

uint64_t BookmarkButtonState.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1E5BF6494();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v30 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v30 - v16;
  v18 = *(a2 + 16);
  v19 = *(*(a2 + 24) + 24);
  sub_1E5BF6EF4();
  v20 = *(a2 + 36);
  sub_1E5BF64B4();
  sub_1E5BC1840(&qword_1ED03E5F0, MEMORY[0x1E6969770]);
  sub_1E5BF6EF4();
  v21 = *(a2 + 40);
  sub_1E5BC1840(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  v35 = v5;
  sub_1E5BF6EF4();
  v22 = *(a2 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  v23 = v3 + *(a2 + 48);
  sub_1E5BF6DF4();
  sub_1E5B5F864(v3 + *(a2 + 52), v17, &qword_1ED03E5C0, &unk_1E5BF8A20);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    return MEMORY[0x1E6937C10](0);
  }

  v25 = v33;
  sub_1E5B5F8D4(v17, v33, &qword_1ED03E5E8, &unk_1E5BF9600);
  MEMORY[0x1E6937C10](1);
  v26 = v32;
  sub_1E5B5F864(v25, v32, &qword_1ED03E5E8, &unk_1E5BF9600);
  v28 = v34;
  v27 = v35;
  if ((*(v34 + 48))(v26, 1, v35) == 1)
  {
    sub_1E5BF74D4();
  }

  else
  {
    v29 = v31;
    (*(v28 + 32))(v31, v26, v27);
    sub_1E5BF74D4();
    sub_1E5BF6EF4();
    (*(v28 + 8))(v29, v27);
  }

  return sub_1E5B5F804(v25, &qword_1ED03E5E8, &unk_1E5BF9600);
}

uint64_t BookmarkButtonState.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  BookmarkButtonState.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BC92AC(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  BookmarkButtonState.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

unint64_t sub_1E5BC92F4()
{
  result = qword_1ED040240[0];
  if (!qword_1ED040240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED040240);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoveBookmarkConfirmationData(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1E5BC9420(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1E5BF64B4();
    if (v3 <= 0x3F)
    {
      sub_1E5BF6494();
      if (v4 <= 0x3F)
      {
        sub_1E5B6A458();
        if (v5 <= 0x3F)
        {
          sub_1E5B6A50C();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E5BC94F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v48 = *(a3 + 16);
  v4 = *(v48 - 8);
  v5 = *(v4 + 84);
  v46 = sub_1E5BF64B4();
  v6 = *(v46 - 8);
  v47 = *(v6 + 84);
  if (v47 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v45 = sub_1E5BF6494();
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  if (v9 > v7)
  {
    v7 = *(v8 + 84);
  }

  v10 = *(sub_1E5BF6464() - 8);
  v11 = *(v10 + 80);
  v12 = ((v11 + 1) & ~v11) + *(v10 + 64);
  v13 = 40;
  if (v12 > 0x28)
  {
    v13 = v12;
  }

  if (v13 >= 4)
  {
    v14 = 252;
  }

  else
  {
    v14 = 252 - (1u >> (8 * v13));
  }

  if (v14 <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v14;
  }

  v16 = v9 - 1;
  if (!v9)
  {
    v16 = 0;
  }

  v17 = v16 - 1;
  if (v9 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > v15)
  {
    v15 = v18;
  }

  v19 = *(v6 + 80);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  if (v9)
  {
    v23 = v9 < 2;
  }

  else
  {
    v23 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(v4 + 64) + v19;
  v25 = v11 | 7;
  v26 = v22 + (v11 | 7);
  v27 = v13 + 1 + (v11 | 7);
  v28 = v13 + 1 + v21;
  v29 = a1;
  if (a2 <= v15)
  {
    goto LABEL_48;
  }

  v30 = v23 + v22 + ((v28 + ((v27 + ((v26 + ((v20 + v21 + (v24 & ~v19)) & ~v21)) & ~v25)) & ~v25)) & ~v21);
  v31 = 8 * v30;
  if (v30 > 3)
  {
    goto LABEL_27;
  }

  v34 = ((a2 - v15 + ~(-1 << v31)) >> v31) + 1;
  if (HIWORD(v34))
  {
    v32 = *(a1 + v30);
    if (v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v34 <= 0xFF)
    {
      if (v34 < 2)
      {
        goto LABEL_48;
      }

LABEL_27:
      v32 = *(a1 + v30);
      if (!*(a1 + v30))
      {
        goto LABEL_48;
      }

LABEL_35:
      v35 = (v32 - 1) << v31;
      if (v30 > 3)
      {
        v35 = 0;
      }

      if (v30)
      {
        if (v30 <= 3)
        {
          v36 = v30;
        }

        else
        {
          v36 = 4;
        }

        if (v36 > 2)
        {
          if (v36 == 3)
          {
            v37 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v37 = *a1;
          }
        }

        else if (v36 == 1)
        {
          v37 = *a1;
        }

        else
        {
          v37 = *a1;
        }
      }

      else
      {
        v37 = 0;
      }

      return v15 + (v37 | v35) + 1;
    }

    v32 = *(a1 + v30);
    if (*(a1 + v30))
    {
      goto LABEL_35;
    }
  }

LABEL_48:
  if (v5 == v15)
  {
    v38 = v48;
    v39 = *(v4 + 48);
    v40 = v5;
LABEL_54:

    return v39(v29, v40, v38);
  }

  v29 = ((a1 + v24) & ~v19);
  v40 = v47;
  if (v47 == v15)
  {
    v39 = *(v6 + 48);
    v38 = v46;
    goto LABEL_54;
  }

  v41 = ~v21;
  v29 = ((v29 + v20 + v21) & ~v21);
  if (v9 == v15)
  {
    v39 = *(v8 + 48);
    v40 = v9;
    v38 = v45;
    goto LABEL_54;
  }

  v42 = (v29 + v26) & ~v25;
  if (v14 == v15)
  {
    v43 = *(v42 + v13);
    if (v14 <= (v43 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v43);
    }
  }

  else
  {
    result = 0;
    if (v9 >= 2 && v17)
    {
      v44 = (*(v8 + 48))((v28 + ((v27 + v42) & ~v25)) & v41, v9, v45);
      if (v44 >= 3)
      {
        return v44 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1E5BC9944(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v57 = *(a4 + 16);
  v4 = *(v57 - 8);
  v56 = v4;
  v5 = *(v4 + 84);
  v54 = sub_1E5BF64B4();
  v6 = *(v54 - 8);
  v55 = *(v6 + 84);
  if (v55 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v53 = sub_1E5BF6494();
  v8 = *(v53 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(sub_1E5BF6464() - 8);
  v13 = *(v12 + 80);
  v14 = ((v13 + 1) & ~v13) + *(v12 + 64);
  if (v14 <= 0x28)
  {
    v15 = 40;
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 4)
  {
    v16 = 252;
  }

  else
  {
    v16 = 252 - (1u >> (8 * v15));
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  if (v9)
  {
    v18 = v9 - 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 - 1;
  v20 = v9 < 2;
  if (v9 < 2)
  {
    v19 = 0;
  }

  if (v19 > v17)
  {
    v17 = v19;
  }

  v21 = *(v6 + 80);
  v22 = *(v4 + 64) + v21;
  v23 = *(v6 + 64);
  v24 = *(v8 + 80);
  v25 = *(v8 + 64);
  v26 = v13 | 7;
  v27 = v25 + (v13 | 7);
  v28 = (v27 + ((v23 + v24 + (v22 & ~v21)) & ~v24)) & ~(v13 | 7);
  v29 = v15 + 1 + (v13 | 7);
  v30 = (v29 + v28) & ~v26;
  v31 = v15 + 1 + v24;
  v32 = (v31 + v30) & ~v24;
  if (v9)
  {
    v33 = v9 < 2;
  }

  else
  {
    v33 = v20 + 1;
  }

  v34 = v33 + v25 + v32;
  if (a3 > v17)
  {
    if (v34 <= 3)
    {
      v35 = ((a3 - v17 + ~(-1 << (8 * v34))) >> (8 * v34)) + 1;
      if (HIWORD(v35))
      {
        v11 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v11 = v36;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v17 < a2)
  {
    v37 = ~v17 + a2;
    if (v34 >= 4)
    {
      bzero(a1, v34);
      *a1 = v37;
      v38 = 1;
      if (v11 > 1)
      {
        goto LABEL_40;
      }

      goto LABEL_69;
    }

    v38 = (v37 >> (8 * v34)) + 1;
    if (v34)
    {
      v40 = v37 & ~(-1 << (8 * v34));
      bzero(a1, v34);
      if (v34 != 3)
      {
        if (v34 == 2)
        {
          *a1 = v40;
          if (v11 > 1)
          {
            goto LABEL_40;
          }
        }

        else
        {
          *a1 = v37;
          if (v11 > 1)
          {
LABEL_40:
            if (v11 == 2)
            {
              *&a1[v34] = v38;
            }

            else
            {
              *&a1[v34] = v38;
            }

            return;
          }
        }

LABEL_69:
        if (v11)
        {
          a1[v34] = v38;
        }

        return;
      }

      *a1 = v40;
      a1[2] = BYTE2(v40);
    }

    if (v11 > 1)
    {
      goto LABEL_40;
    }

    goto LABEL_69;
  }

  v39 = a1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v34] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    }

    *&a1[v34] = 0;
  }

  else if (v11)
  {
    a1[v34] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_54;
  }

  if (!a2)
  {
    return;
  }

LABEL_54:
  if (v5 != v17)
  {
    v39 = (&a1[v22] & ~v21);
    v44 = v55;
    if (v55 == v17)
    {
      v42 = *(v6 + 56);
      v43 = a2;
      v41 = v54;
      goto LABEL_64;
    }

    v39 = (&v39[v23 + v24] & ~v24);
    if (v9 == v17)
    {
      v42 = *(v8 + 56);
      v43 = a2;
LABEL_63:
      v44 = v9;
      v41 = v53;
      goto LABEL_64;
    }

    v45 = ~v26;
    v46 = &v39[v27] & ~v26;
    if (v16 == v17)
    {
      *(v46 + v15) = -a2;
      return;
    }

    v47 = ((v31 + ((v29 + v46) & v45)) & ~v24);
    if (v9)
    {
      if (v19 >= a2)
      {
        if (a2 + 1 <= v18)
        {
          if (a2 == -1 || v9 == 1)
          {
            return;
          }

          v42 = *(v8 + 56);
          v43 = a2 + 2;
          v39 = ((v31 + ((v29 + v46) & v45)) & ~v24);
          goto LABEL_63;
        }

        if (v25 <= 3)
        {
          v52 = ~(-1 << (8 * v25));
        }

        else
        {
          v52 = -1;
        }

        if (!v25)
        {
          return;
        }

        v50 = v52 & (a2 - v18);
        if (v25 <= 3)
        {
          v51 = v25;
        }

        else
        {
          v51 = 4;
        }

        bzero(v47, v25);
        if (v51 <= 2)
        {
          if (v51 == 1)
          {
            goto LABEL_89;
          }

          goto LABEL_100;
        }

LABEL_101:
        if (v51 == 3)
        {
          *v47 = v50;
          v47[2] = BYTE2(v50);
        }

        else
        {
          *v47 = v50;
        }

        return;
      }

      v48 = (v25 + v20);
    }

    else
    {
      v48 = (v25 + 2);
    }

    if (v48 <= 3)
    {
      v49 = ~(-1 << (8 * v48));
    }

    else
    {
      v49 = -1;
    }

    if (!v48)
    {
      return;
    }

    v50 = v49 & (~v19 + a2);
    if (v48 <= 3)
    {
      v51 = v48;
    }

    else
    {
      v51 = 4;
    }

    bzero(v47, v48);
    if (v51 <= 2)
    {
      if (v51 == 1)
      {
LABEL_89:
        *v47 = v50;
        return;
      }

LABEL_100:
      *v47 = v50;
      return;
    }

    goto LABEL_101;
  }

  v41 = v57;
  v42 = *(v56 + 56);
  v43 = a2;
  v44 = v5;
LABEL_64:

  v42(v39, v43, v44, v41);
}

unint64_t sub_1E5BC9EF0()
{
  result = qword_1ED040348;
  if (!qword_1ED040348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040348);
  }

  return result;
}

unint64_t sub_1E5BC9F9C()
{
  result = qword_1ED040350;
  if (!qword_1ED040350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040350);
  }

  return result;
}

unint64_t sub_1E5BC9FF4()
{
  result = qword_1ED040358;
  if (!qword_1ED040358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040358);
  }

  return result;
}

uint64_t sub_1E5BCA058(uint64_t a1)
{
  v2 = sub_1E5BCAAC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCA094(uint64_t a1)
{
  v2 = sub_1E5BCAAC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCA0D0(uint64_t a1)
{
  v2 = sub_1E5BCA9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCA10C(uint64_t a1)
{
  v2 = sub_1E5BCA9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E5BCA148()
{
  v1 = *v0;
  v2 = 0x6570704177656976;
  v3 = 0xD000000000000017;
  v4 = 0xD00000000000001DLL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000023;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E5BCA1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BCAC40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BCA224(uint64_t a1)
{
  v2 = sub_1E5BCA978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCA260(uint64_t a1)
{
  v2 = sub_1E5BCA978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCA29C(uint64_t a1)
{
  v2 = sub_1E5BCAA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCA2D8(uint64_t a1)
{
  v2 = sub_1E5BCAA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCA314(uint64_t a1)
{
  v2 = sub_1E5BCAA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCA350(uint64_t a1)
{
  v2 = sub_1E5BCAA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCA38C(uint64_t a1)
{
  v2 = sub_1E5BCAB1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCA3C8(uint64_t a1)
{
  v2 = sub_1E5BCAB1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BookmarkButtonAction.encode(to:)(void *a1, int a2)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040360, &qword_1E5C029A0);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040368, &qword_1E5C029A8);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040370, &qword_1E5C029B0);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040378, &qword_1E5C029B8);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040380, &qword_1E5C029C0);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040388, &qword_1E5C029C8);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v23 = &v36 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BCA978();
  sub_1E5BF7524();
  v25 = (v20 + 8);
  if (v47 <= 1u)
  {
    v31 = v45;
    v30 = v46;
    if (v47)
    {
      v50 = 1;
      sub_1E5BCAAC8();
      v35 = v48;
      sub_1E5BF7394();
      (*(v30 + 8))(v15, v12);
      return (*v25)(v23, v35);
    }

    v49 = 0;
    sub_1E5BCAB1C();
    v32 = v48;
    sub_1E5BF7394();
    (*(v31 + 8))(v19, v16);
    return (*v25)(v23, v32);
  }

  if (v47 == 2)
  {
    v51 = 2;
    sub_1E5BCAA74();
    v33 = v36;
    v32 = v48;
    sub_1E5BF7394();
    (*(v37 + 8))(v33, v38);
    return (*v25)(v23, v32);
  }

  if (v47 == 3)
  {
    v52 = 3;
    sub_1E5BCAA20();
    v26 = v39;
    v27 = v48;
    sub_1E5BF7394();
    v29 = v40;
    v28 = v41;
  }

  else
  {
    v53 = 4;
    sub_1E5BCA9CC();
    v26 = v42;
    v27 = v48;
    sub_1E5BF7394();
    v29 = v43;
    v28 = v44;
  }

  (*(v29 + 8))(v26, v28);
  return (*v25)(v23, v27);
}

unint64_t sub_1E5BCA978()
{
  result = qword_1ED040390;
  if (!qword_1ED040390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040390);
  }

  return result;
}

unint64_t sub_1E5BCA9CC()
{
  result = qword_1ED040398;
  if (!qword_1ED040398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040398);
  }

  return result;
}

unint64_t sub_1E5BCAA20()
{
  result = qword_1ED0403A0;
  if (!qword_1ED0403A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403A0);
  }

  return result;
}

unint64_t sub_1E5BCAA74()
{
  result = qword_1ED0403A8;
  if (!qword_1ED0403A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403A8);
  }

  return result;
}

unint64_t sub_1E5BCAAC8()
{
  result = qword_1ED0403B0;
  if (!qword_1ED0403B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403B0);
  }

  return result;
}

unint64_t sub_1E5BCAB1C()
{
  result = qword_1ED0403B8;
  if (!qword_1ED0403B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403B8);
  }

  return result;
}

uint64_t sub_1E5BCAB88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5BCADF8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t BookmarkButtonAction.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BCAC40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C084D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C084F0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001E5C08510 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001E5C08540 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5BF7444();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E5BCADF8(uint64_t *a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040430, &qword_1E5C02FA0);
  v50 = *(v53 - 8);
  v2 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040438, &qword_1E5C02FA8);
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040440, &qword_1E5C02FB0);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040448, &qword_1E5C02FB8);
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040450, &qword_1E5C02FC0);
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040458, &unk_1E5C02FC8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1E5BCA978();
  v25 = v58;
  sub_1E5BF7514();
  if (v25)
  {
    goto LABEL_9;
  }

  v26 = v17;
  v44 = v14;
  v27 = v56;
  v58 = v19;
  v28 = v22;
  v29 = sub_1E5BF7374();
  v30 = (2 * *(v29 + 16)) | 1;
  v59 = v29;
  v60 = v29 + 32;
  v61 = 0;
  v62 = v30;
  v31 = sub_1E5B7E69C();
  if (v31 == 5 || v61 != v62 >> 1)
  {
    v35 = v18;
    v36 = sub_1E5BF7284();
    v19 = swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v38 = &type metadata for BookmarkButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v58 + 8))(v28, v35);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v57);
    return v19;
  }

  v19 = v31;
  if (v31 <= 1u)
  {
    if (v31)
    {
      v63 = 1;
      sub_1E5BCAAC8();
      sub_1E5BF72C4();
      (*(v46 + 8))(v13, v47);
    }

    else
    {
      v63 = 0;
      sub_1E5BCAB1C();
      sub_1E5BF72C4();
      (*(v45 + 8))(v26, v44);
    }

    (*(v58 + 8))(v22, v18);
  }

  else if (v31 == 2)
  {
    v63 = 2;
    sub_1E5BCAA74();
    sub_1E5BF72C4();
    v41 = v58;
    (*(v48 + 8))(v27, v49);
    (*(v41 + 8))(v22, v18);
  }

  else
  {
    v32 = v58;
    v33 = v28;
    if (v31 == 3)
    {
      v63 = 3;
      sub_1E5BCAA20();
      v34 = v54;
      sub_1E5BF72C4();
      (*(v51 + 8))(v34, v52);
    }

    else
    {
      v63 = 4;
      sub_1E5BCA9CC();
      v42 = v55;
      sub_1E5BF72C4();
      (*(v50 + 8))(v42, v53);
    }

    (*(v32 + 8))(v33, v18);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v19;
}

unint64_t sub_1E5BCB560()
{
  result = qword_1ED0403C0;
  if (!qword_1ED0403C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403C0);
  }

  return result;
}

unint64_t sub_1E5BCB628()
{
  result = qword_1ED0403C8;
  if (!qword_1ED0403C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403C8);
  }

  return result;
}

unint64_t sub_1E5BCB680()
{
  result = qword_1ED0403D0;
  if (!qword_1ED0403D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403D0);
  }

  return result;
}

unint64_t sub_1E5BCB6D8()
{
  result = qword_1ED0403D8;
  if (!qword_1ED0403D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403D8);
  }

  return result;
}

unint64_t sub_1E5BCB730()
{
  result = qword_1ED0403E0;
  if (!qword_1ED0403E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403E0);
  }

  return result;
}

unint64_t sub_1E5BCB788()
{
  result = qword_1ED0403E8;
  if (!qword_1ED0403E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403E8);
  }

  return result;
}

unint64_t sub_1E5BCB7E0()
{
  result = qword_1ED0403F0;
  if (!qword_1ED0403F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403F0);
  }

  return result;
}

unint64_t sub_1E5BCB838()
{
  result = qword_1ED0403F8;
  if (!qword_1ED0403F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0403F8);
  }

  return result;
}

unint64_t sub_1E5BCB890()
{
  result = qword_1ED040400;
  if (!qword_1ED040400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040400);
  }

  return result;
}

unint64_t sub_1E5BCB8E8()
{
  result = qword_1ED040408;
  if (!qword_1ED040408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040408);
  }

  return result;
}

unint64_t sub_1E5BCB940()
{
  result = qword_1ED040410;
  if (!qword_1ED040410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040410);
  }

  return result;
}

unint64_t sub_1E5BCB998()
{
  result = qword_1ED040418;
  if (!qword_1ED040418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040418);
  }

  return result;
}

unint64_t sub_1E5BCB9F0()
{
  result = qword_1ED040420;
  if (!qword_1ED040420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040420);
  }

  return result;
}

unint64_t sub_1E5BCBA48()
{
  result = qword_1ED040428;
  if (!qword_1ED040428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040428);
  }

  return result;
}

__n128 RemoveLibraryItemFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t RemoveLibraryItemFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v132 = a3;
  v124 = a1;
  v9 = a4 & 0xFFFFFFFFFFFFLL;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v108 - v15;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040460, &qword_1E5C02FD8);
  v126 = *(v131 - 8);
  v17 = *(v126 + 64);
  v18 = MEMORY[0x1EEE9AC00](v131);
  v127 = v108 - v19;
  v20 = *(a5 + 16);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v125 = v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v108 - v24;
  v26 = v5[1];
  v136 = *v5;
  v137 = v26;
  v27 = v5[2];
  v28 = v5[3];
  v30 = v29;
  v138 = v27;
  v139 = v28;
  v129 = *(v29 + 16);
  v128 = v29 + 16;
  v129(v108 - v24, a2, v20);
  if ((a4 & 0x1000000000000) != 0)
  {
    v35 = a5;
    if (v9 <= 1)
    {
      if (v9)
      {
        (*(v30 + 8))(v25, v20);
        v100 = *(a5 + 24);
        v101 = type metadata accessor for RemoveLibraryItemState();
        v102 = *(v101 + 52);
        v103 = a2;
        sub_1E5B5F804(a2 + v102, &qword_1ED03E5C0, &unk_1E5BF8A20);
        v104 = *(v101 + 48);
        v105 = sub_1E5BF6494();
        v106 = *(v105 - 8);
        (*(v106 + 16))(v103 + v102, v103 + v104, v105);
        (*(v106 + 56))(v103 + v102, 0, 1, v105);
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
        return (*(*(v107 - 8) + 56))(v103 + v102, 0, 1, v107);
      }

      else
      {
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
        v113 = v57[12];
        v58 = v30;
        v59 = v57[16];
        v114 = v57[20];
        v60 = v127;
        v61 = &v127[v57[24]];
        v122 = v35;
        v62 = *(v35 + 24);
        v124 = *(v62 + 24);
        v63 = v62;
        v116 = v62;
        v64 = v25;
        v110 = v25;
        v65 = v20;
        sub_1E5BF72B4();
        v134 = 5;
        sub_1E5B6C48C(v133, v135);
        v121 = sub_1E5B6C4E8();
        sub_1E5BF7254();
        sub_1E5B6C53C(v133);
        v119 = *MEMORY[0x1E6999B50];
        v66 = v119;
        v118 = sub_1E5BF6E24();
        v67 = *(v118 - 8);
        v117 = *(v67 + 104);
        v120 = v67 + 104;
        v117(&v60[v59], v66, v118);
        v68 = v125;
        v129(v125, v64, v65);
        v123 = v58;
        v69 = (*(v58 + 80) + 96) & ~*(v58 + 80);
        v70 = swift_allocObject();
        *(v70 + 16) = v65;
        *(v70 + 24) = v63;
        v71 = v137;
        *(v70 + 32) = v136;
        *(v70 + 48) = v71;
        v72 = v139;
        *(v70 + 64) = v138;
        *(v70 + 80) = v72;
        v115 = *(v58 + 32);
        v115(v70 + v69, v68, v65);
        *v61 = &unk_1E5C03010;
        *(v61 + 1) = v70;
        v73 = *(v122 - 8);
        v111 = *(v73 + 16);
        v112 = v73 + 16;
        v111(v135, &v136);
        sub_1E5B6C8B8();
        sub_1E5B6C8BC(&v60[v114]);
        LODWORD(v114) = *MEMORY[0x1E6999AD8];
        v126 = *(v126 + 104);
        (v126)(v60);
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040468, &qword_1E5C02FF0);
        sub_1E5BF7034();
        v108[1] = v57[12];
        v74 = v57[16];
        v109 = v57[20];
        v75 = &v60[v57[24]];
        v76 = v110;
        sub_1E5BF72B4();
        v134 = 0;
        sub_1E5B6C48C(v133, v135);
        sub_1E5BF7254();
        sub_1E5B6C53C(v133);
        v117(&v60[v74], v119, v118);
        v129(v68, v76, v65);
        v77 = swift_allocObject();
        v78 = v116;
        *(v77 + 16) = v65;
        *(v77 + 24) = v78;
        v79 = v137;
        *(v77 + 32) = v136;
        *(v77 + 48) = v79;
        v80 = v139;
        *(v77 + 64) = v138;
        *(v77 + 80) = v80;
        v115(v77 + v69, v68, v65);
        *v75 = &unk_1E5C03020;
        *(v75 + 1) = v77;
        (v111)(v135, &v136, v122);
        sub_1E5B6C8B8();
        sub_1E5B6C8BC(&v60[v109]);
        (v126)(v60, v114, v131);
        sub_1E5BF7034();
        return (*(v123 + 8))(v76, v65);
      }
    }

    else
    {
      v36 = v25;
      if (v9 == 2)
      {
        (*(v30 + 8))(v25, v20);
        v81 = *(a5 + 24);
        v82 = *(type metadata accessor for RemoveLibraryItemState() + 52);
        sub_1E5B5F804(a2 + v82, &qword_1ED03E5C0, &unk_1E5BF8A20);
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
        return (*(*(v83 - 8) + 56))(a2 + v82, 1, 1, v83);
      }

      else
      {
        v123 = v30;
        if (v9 == 3)
        {
          v37 = *(a5 + 24);
          v38 = v20;
          v39 = *(type metadata accessor for RemoveLibraryItemState() + 44);
          sub_1E5B6C41C(a2 + v39, v16);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v40 = v37;
            v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
            v42 = sub_1E5BF6464();
            (*(*(v42 - 8) + 8))(&v16[v41], v42);
            sub_1E5B5F804(a2 + v39, &qword_1ED03E260, &qword_1E5BF9190);
            swift_storeEnumTagMultiPayload();
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
            v121 = v43[12];
            v44 = a5;
            v45 = v43[16];
            v124 = v43[20];
            v46 = v127;
            v47 = &v127[v43[24]];
            v48 = *(v40 + 24);
            sub_1E5BF72B4();
            v134 = 3;
            sub_1E5B6C48C(v133, v135);
            sub_1E5B6C4E8();
            sub_1E5BF7254();
            sub_1E5B6C53C(v133);
            v49 = *MEMORY[0x1E6999B50];
            v50 = sub_1E5BF6E24();
            (*(*(v50 - 8) + 104))(&v46[v45], v49, v50);
            v51 = v125;
            v129(v125, v36, v38);
            v52 = v123;
            v53 = (*(v123 + 80) + 96) & ~*(v123 + 80);
            v54 = swift_allocObject();
            *(v54 + 16) = v38;
            *(v54 + 24) = v40;
            v55 = v137;
            *(v54 + 32) = v136;
            *(v54 + 48) = v55;
            v56 = v139;
            *(v54 + 64) = v138;
            *(v54 + 80) = v56;
            (*(v52 + 32))(v54 + v53, v51, v38);
            *v47 = &unk_1E5C03000;
            *(v47 + 1) = v54;
            (*(*(v44 - 8) + 16))(v135, &v136, v44);
            sub_1E5B6C8B8();
            sub_1E5B6C8BC(&v46[v124]);
            (*(v126 + 104))(v46, *MEMORY[0x1E6999AD8], v131);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040468, &qword_1E5C02FF0);
            sub_1E5BF7034();
            return (*(v52 + 8))(v36, v38);
          }

          else
          {
            (*(v123 + 8))(v36, v20);
            return sub_1E5B5F804(v16, &qword_1ED03E260, &qword_1E5BF9190);
          }
        }

        else
        {
          v135[0] = v136;
          v135[1] = v137;
          v135[2] = v138;
          v135[3] = v139;
          v133[0] = 1;
          RemoveLibraryItemFeature.reduce(localState:sharedState:sideEffects:action:)(v124, a2, v132, 0x1000000000003, a5);
          v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
          v121 = v84[12];
          v85 = v25;
          v86 = v84[16];
          v124 = v84[20];
          v87 = v127;
          v88 = &v127[v84[24]];
          v89 = *(v35 + 24);
          v90 = *(v89 + 24);
          v91 = v20;
          sub_1E5BF72B4();
          v134 = 2;
          sub_1E5B6C48C(v133, v135);
          sub_1E5B6C4E8();
          sub_1E5BF7254();
          sub_1E5B6C53C(v133);
          v92 = *MEMORY[0x1E6999B50];
          v93 = sub_1E5BF6E24();
          (*(*(v93 - 8) + 104))(&v87[v86], v92, v93);
          v94 = v125;
          v129(v125, v85, v91);
          v95 = v123;
          v96 = (*(v123 + 80) + 96) & ~*(v123 + 80);
          v97 = swift_allocObject();
          *(v97 + 16) = v91;
          *(v97 + 24) = v89;
          v98 = v137;
          *(v97 + 32) = v136;
          *(v97 + 48) = v98;
          v99 = v139;
          *(v97 + 64) = v138;
          *(v97 + 80) = v99;
          (*(v95 + 32))(v97 + v96, v94, v91);
          *v88 = &unk_1E5C02FE8;
          *(v88 + 1) = v97;
          (*(*(v35 - 8) + 16))(v135, &v136, v35);
          sub_1E5B6C8B8();
          sub_1E5B6C8BC(&v87[v124]);
          (*(v126 + 104))(v87, *MEMORY[0x1E6999AD8], v131);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040468, &qword_1E5C02FF0);
          sub_1E5BF7034();
          return (*(v95 + 8))(v85, v91);
        }
      }
    }
  }

  else
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
    *v14 = a4;
    v14[4] = BYTE4(a4);
    v14[5] = BYTE5(v9) & 1;
    sub_1E5BF6444();
    (*(v30 + 8))(v25, v20);
    swift_storeEnumTagMultiPayload();
    v32 = *(a5 + 24);
    v33 = type metadata accessor for RemoveLibraryItemState();
    return sub_1E5B6C3AC(v14, a2 + *(v33 + 44));
  }
}

uint64_t sub_1E5BCCA24(uint64_t a1, int **a2, uint64_t a3)
{
  v3[2] = sub_1E5BF7084();
  v3[3] = sub_1E5BF7074();
  v6 = a2[1];
  v10 = (*a2 + **a2);
  v7 = (*a2)[1];
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_1E5B79670;

  return v10(a3);
}

uint64_t sub_1E5BCCB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = sub_1E5BF7084();
  v3[4] = sub_1E5BF7074();
  v6 = *(a2 + 56);
  v10 = (*(a2 + 48) + **(a2 + 48));
  v7 = *(*(a2 + 48) + 4);
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1E5BCCC50;

  return v10(a3);
}

uint64_t sub_1E5BCCC50()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
    v7 = sub_1E5BF7054();

    return MEMORY[0x1EEE6DFA0](sub_1E5BCCE14, v7, v6);
  }

  else
  {
    *(v3 + 64) = 0;
    *(v3 + 68) = 256;
    *(v3 + 70) = 0;
    v8 = *(MEMORY[0x1E6999AF0] + 4);
    v9 = swift_task_alloc();
    *(v3 + 56) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040470, &qword_1E5C03108);
    *v9 = v3;
    v9[1] = sub_1E5BBF834;
    v11 = *(v3 + 16);

    return MEMORY[0x1EEE01A40](v3 + 64, v10);
  }
}

uint64_t sub_1E5BCCE14()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1E5BCCE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_1E5BF7084();
  v3[3] = sub_1E5BF7074();
  v6 = *(a2 + 40);
  v10 = (*(a2 + 32) + **(a2 + 32));
  v7 = *(*(a2 + 32) + 4);
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_1E5BBB568;

  return v10(a3);
}

uint64_t sub_1E5BCCF8C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = (*(*(*(v1 + 16) - 8) + 80) + 96) & ~*(*(*(v1 + 16) - 8) + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5BCCE78(a1, v1 + 32, v1 + v5);
}

uint64_t sub_1E5BCD074(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = (*(*(*(v1 + 16) - 8) + 80) + 96) & ~*(*(*(v1 + 16) - 8) + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5BCCB38(a1, v1 + 32, v1 + v5);
}

uint64_t sub_1E5BCD15C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = (*(*(*(v1 + 16) - 8) + 80) + 96) & ~*(*(*(v1 + 16) - 8) + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5BBB010(a1, v1 + 32, v1 + v5);
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 5);

  v6 = *(v0 + 7);

  v7 = *(v0 + 9);

  v8 = *(v0 + 11);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1E5BCD318(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = (*(*(*(v1 + 16) - 8) + 80) + 96) & ~*(*(*(v1 + 16) - 8) + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6D9A0;

  return sub_1E5BCCA24(a1, (v1 + 32), v1 + v5);
}

unint64_t sub_1E5BCD438()
{
  result = qword_1EE2C6EA8;
  if (!qword_1EE2C6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6EA8);
  }

  return result;
}

unint64_t sub_1E5BCD490()
{
  result = qword_1EE2C6EB0[0];
  if (!qword_1EE2C6EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C6EB0);
  }

  return result;
}

uint64_t sub_1E5BCD500()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5BCD5C8(uint64_t a1)
{
  v2 = sub_1E5BCE598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD604(uint64_t a1)
{
  v2 = sub_1E5BCE598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E5BCD640()
{
  v1 = *v0;
  v2 = 0x6570704177656976;
  v3 = 0xD000000000000023;
  if (v1 != 4)
  {
    v3 = 0xD000000000000015;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000020;
  }

  v4 = 0xD000000000000017;
  if (v1 != 1)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1E5BCD710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BCE694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BCD738(uint64_t a1)
{
  v2 = sub_1E5BCE448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD774(uint64_t a1)
{
  v2 = sub_1E5BCE448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCD7B0(uint64_t a1)
{
  v2 = sub_1E5BCE49C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD7EC(uint64_t a1)
{
  v2 = sub_1E5BCE49C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCD828(uint64_t a1)
{
  v2 = sub_1E5BCE544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD864(uint64_t a1)
{
  v2 = sub_1E5BCE544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCD8A0(uint64_t a1)
{
  v2 = sub_1E5BCE4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD8DC(uint64_t a1)
{
  v2 = sub_1E5BCE4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCD918(uint64_t a1)
{
  v2 = sub_1E5BCE5EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD954(uint64_t a1)
{
  v2 = sub_1E5BCE5EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BCD990(uint64_t a1)
{
  v2 = sub_1E5BCE640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BCD9CC(uint64_t a1)
{
  v2 = sub_1E5BCE640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoveLibraryItemAction.encode(to:)(void *a1, uint64_t a2)
{
  v54 = a2;
  v55 = a2 & 0xFFFFFFFFFFFFLL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040478, &qword_1E5C03130);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040480, &qword_1E5C03138);
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040488, &qword_1E5C03140);
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040490, &qword_1E5C03148);
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v38 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040498, &qword_1E5C03150);
  v40 = *(v15 - 8);
  v41 = v15;
  v16 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0404A0, &qword_1E5C03158);
  v39 = *(v19 - 8);
  v20 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0404A8, &qword_1E5C03160);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v38 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BCE448();
  v29 = v54;
  sub_1E5BF7524();
  if ((v29 & 0x1000000000000) == 0)
  {
    v64 = 5;
    sub_1E5BCE49C();
    v30 = v51;
    sub_1E5BF7394();
    v61 = BYTE4(v29);
    v60 = v29;
    v62 = BYTE5(v55) & 1;
    sub_1E5B60FD0();
    v31 = v53;
    sub_1E5BF7424();
    (*(v52 + 8))(v30, v31);
    return (*(v24 + 8))(v27, v23);
  }

  v33 = (v24 + 8);
  if (v55 <= 1)
  {
    if (!v55)
    {
      v56 = 0;
      sub_1E5BCE640();
      sub_1E5BF7394();
      (*(v39 + 8))(v22, v19);
      return (*v33)(v27, v23);
    }

    v57 = 1;
    sub_1E5BCE5EC();
    v34 = v23;
    sub_1E5BF7394();
    (*(v40 + 8))(v18, v41);
  }

  else
  {
    if (v55 == 2)
    {
      v58 = 2;
      sub_1E5BCE598();
      v35 = v42;
      v34 = v23;
      sub_1E5BF7394();
      v37 = v43;
      v36 = v44;
    }

    else
    {
      v34 = v23;
      if (v55 == 3)
      {
        v59 = 3;
        sub_1E5BCE544();
        v35 = v45;
        sub_1E5BF7394();
        v37 = v46;
        v36 = v47;
      }

      else
      {
        v63 = 4;
        sub_1E5BCE4F0();
        v35 = v48;
        sub_1E5BF7394();
        v37 = v49;
        v36 = v50;
      }
    }

    (*(v37 + 8))(v35, v36);
  }

  return (*v33)(v27, v34);
}

uint64_t RemoveLibraryItemAction.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x1000000000000) != 0)
  {
    if ((a2 & 0xFFFFFFFFFFFFuLL) > 1)
    {
      if (v2 != 2)
      {
        if (v2 == 3)
        {
          v5 = 3;
        }

        else
        {
          v5 = 4;
        }

        return MEMORY[0x1E6937C10](v5);
      }

      goto LABEL_10;
    }

    if (v2)
    {
      v5 = 1;
      return MEMORY[0x1E6937C10](v5);
    }

LABEL_12:
    v5 = 0;
    return MEMORY[0x1E6937C10](v5);
  }

  v3 = a2 & 0xFFFFFFFFFFLL;
  MEMORY[0x1E6937C10](5);
  if ((v2 & 0x10000000000) != 0)
  {
    if (v3)
    {
LABEL_10:
      v5 = 2;
      return MEMORY[0x1E6937C10](v5);
    }

    goto LABEL_12;
  }

  MEMORY[0x1E6937C10](1);
  if ((v3 & 0x100000000) != 0)
  {
    return sub_1E5BF74D4();
  }

  sub_1E5BF74D4();
  return sub_1E5BF74E4();
}

uint64_t RemoveLibraryItemAction.hashValue.getter(unint64_t a1)
{
  sub_1E5BF74B4();
  RemoveLibraryItemAction.hash(into:)(v3, a1 & 0xFFFFFFFFFFFFLL | ((HIWORD(a1) & 1) << 48));
  return sub_1E5BF7504();
}

unint64_t sub_1E5BCE1BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E5BCE898(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = WORD2(result);
    *(a2 + 6) = BYTE6(result) & 1;
  }

  return result;
}

uint64_t sub_1E5BCE234()
{
  v1 = *v0 | (*(v0 + 2) << 32);
  v2 = *(v0 + 6);
  sub_1E5BF74B4();
  RemoveLibraryItemAction.hash(into:)(v4, v1 | (v2 << 48));
  return sub_1E5BF7504();
}

uint64_t sub_1E5BCE2B8()
{
  v1 = *v0 | (*(v0 + 2) << 32);
  v2 = *(v0 + 6);
  sub_1E5BF74B4();
  RemoveLibraryItemAction.hash(into:)(v4, v1 | (v2 << 48));
  return sub_1E5BF7504();
}

BOOL sub_1E5BCE354(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFLL;
  v3 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a1 & 0x1000000000000) != 0)
  {
    if ((a1 & 0xFFFFFFFFFFFFuLL) <= 1)
    {
      if (v2)
      {
        return (a2 & 0x1000000000000) != 0 && v3 == 1;
      }

      else
      {
        return (a2 & 0x1000000000000) != 0 && !v3;
      }
    }

    else if (v2 == 2)
    {
      return (a2 & 0x1000000000000) != 0 && v3 == 2;
    }

    else if (v2 == 3)
    {
      return (a2 & 0x1000000000000) != 0 && v3 == 3;
    }

    else
    {
      return (a2 & 0x1000000000000) != 0 && v3 > 3;
    }
  }

  else
  {
    if ((a2 & 0x1000000000000) != 0)
    {
      return 0;
    }

    v5 = a2 & 0xFFFFFFFFFFLL;
    if ((a1 & 0x10000000000) != 0)
    {
      if ((a1 & 0xFFFFFFFFFFLL) != 0)
      {
        if ((a2 & 0x10000000000) == 0)
        {
          return 0;
        }

        return v5 != 0;
      }

      else
      {
        if ((a2 & 0x10000000000) == 0)
        {
          return 0;
        }

        return v5 == 0;
      }
    }

    else
    {
      if ((a2 & 0x10000000000) != 0)
      {
        return 0;
      }

      if ((a1 & 0x100000000) != 0)
      {
        return (a2 & 0x100000000) != 0;
      }

      else
      {
        return (a2 & 0x100000000) == 0 && *&a1 == *&a2;
      }
    }
  }
}

unint64_t sub_1E5BCE448()
{
  result = qword_1ED0404B0;
  if (!qword_1ED0404B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404B0);
  }

  return result;
}

unint64_t sub_1E5BCE49C()
{
  result = qword_1ED0404B8;
  if (!qword_1ED0404B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404B8);
  }

  return result;
}

unint64_t sub_1E5BCE4F0()
{
  result = qword_1ED0404C0;
  if (!qword_1ED0404C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404C0);
  }

  return result;
}

unint64_t sub_1E5BCE544()
{
  result = qword_1ED0404C8;
  if (!qword_1ED0404C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404C8);
  }

  return result;
}

unint64_t sub_1E5BCE598()
{
  result = qword_1ED0404D0;
  if (!qword_1ED0404D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404D0);
  }

  return result;
}

unint64_t sub_1E5BCE5EC()
{
  result = qword_1ED0404D8;
  if (!qword_1ED0404D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404D8);
  }

  return result;
}

unint64_t sub_1E5BCE640()
{
  result = qword_1ED0404E0;
  if (!qword_1ED0404E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404E0);
  }

  return result;
}

uint64_t sub_1E5BCE694(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C08560 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001E5C08580 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E5C07630 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001E5C08510 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5C07660 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

unint64_t sub_1E5BCE898(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040570, &qword_1E5C03890);
  v3 = *(v2 - 8);
  v66 = v2;
  v67 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v68 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040578, &qword_1E5C03898);
  v7 = *(v6 - 8);
  v64 = v6;
  v65 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v55 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040580, &qword_1E5C038A0);
  v63 = *(v60 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v70 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040588, &qword_1E5C038A8);
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040590, &qword_1E5C038B0);
  v58 = *(v15 - 8);
  v59 = v15;
  v16 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040598, &qword_1E5C038B8);
  v57 = *(v19 - 8);
  v20 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405A0, &unk_1E5C038C0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v55 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1E5BCE448();
  v30 = v72;
  sub_1E5BF7514();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v31 = v22;
  v55 = v19;
  v56 = v18;
  v32 = v69;
  v33 = v70;
  v34 = v71;
  v72 = v24;
  v35 = sub_1E5BF7374();
  v36 = (2 * *(v35 + 16)) | 1;
  v74 = v35;
  v75 = v35 + 32;
  v76 = 0;
  v77 = v36;
  v37 = sub_1E5B7E6D0();
  if (v37 == 6 || v76 != v77 >> 1)
  {
    v42 = sub_1E5BF7284();
    swift_allocError();
    v44 = v43;
    v45 = v27;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v44 = &type metadata for RemoveLibraryItemAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    (*(v72 + 8))(v45, v23);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  if (v37 > 2u)
  {
    if (v37 == 3)
    {
      LOBYTE(v78) = 3;
      sub_1E5BCE544();
      sub_1E5BF72C4();
      v49 = v72;
      (*(v63 + 8))(v33, v60);
      (*(v49 + 8))(v27, v23);
      swift_unknownObjectRelease();
      v41 = 1;
      v40 = 3;
    }

    else
    {
      v48 = v72;
      if (v37 == 4)
      {
        LOBYTE(v78) = 4;
        sub_1E5BCE4F0();
        sub_1E5BF72C4();
        (*(v65 + 8))(v34, v64);
        (*(v48 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v41 = 1;
        v40 = 4;
      }

      else
      {
        LOBYTE(v78) = 5;
        sub_1E5BCE49C();
        v52 = v68;
        sub_1E5BF72C4();
        sub_1E5B62934();
        v53 = v66;
        sub_1E5BF7364();
        (*(v67 + 8))(v52, v53);
        (*(v48 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v41 = 0;
        v54 = 0x10000000000;
        if (!v80)
        {
          v54 = 0;
        }

        v40 = v54 | v78 | (v79 << 32);
      }
    }
  }

  else if (v37)
  {
    if (v37 == 1)
    {
      LOBYTE(v78) = 1;
      sub_1E5BCE5EC();
      v38 = v56;
      sub_1E5BF72C4();
      v39 = v72;
      (*(v58 + 8))(v38, v59);
      (*(v39 + 8))(v27, v23);
      swift_unknownObjectRelease();
      v40 = 1;
      v41 = 1;
    }

    else
    {
      LOBYTE(v78) = 2;
      sub_1E5BCE598();
      v50 = v32;
      sub_1E5BF72C4();
      v51 = v72;
      (*(v61 + 8))(v50, v62);
      (*(v51 + 8))(v27, v23);
      swift_unknownObjectRelease();
      v41 = 1;
      v40 = 2;
    }
  }

  else
  {
    LOBYTE(v78) = 0;
    sub_1E5BCE640();
    sub_1E5BF72C4();
    (*(v57 + 8))(v31, v55);
    (*(v72 + 8))(v27, v23);
    swift_unknownObjectRelease();
    v40 = 0;
    v41 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v73);
  return v40 | (v41 << 48);
}

unint64_t sub_1E5BCF238()
{
  result = qword_1ED0404E8;
  if (!qword_1ED0404E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404E8);
  }

  return result;
}

unint64_t sub_1E5BCF310()
{
  result = qword_1ED0404F0;
  if (!qword_1ED0404F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404F0);
  }

  return result;
}

unint64_t sub_1E5BCF368()
{
  result = qword_1ED0404F8;
  if (!qword_1ED0404F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0404F8);
  }

  return result;
}

unint64_t sub_1E5BCF3C0()
{
  result = qword_1ED040500;
  if (!qword_1ED040500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040500);
  }

  return result;
}

unint64_t sub_1E5BCF418()
{
  result = qword_1ED040508;
  if (!qword_1ED040508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040508);
  }

  return result;
}

unint64_t sub_1E5BCF470()
{
  result = qword_1ED040510;
  if (!qword_1ED040510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040510);
  }

  return result;
}

unint64_t sub_1E5BCF4C8()
{
  result = qword_1ED040518;
  if (!qword_1ED040518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040518);
  }

  return result;
}

unint64_t sub_1E5BCF520()
{
  result = qword_1ED040520;
  if (!qword_1ED040520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040520);
  }

  return result;
}

unint64_t sub_1E5BCF578()
{
  result = qword_1ED040528;
  if (!qword_1ED040528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040528);
  }

  return result;
}

unint64_t sub_1E5BCF5D0()
{
  result = qword_1ED040530;
  if (!qword_1ED040530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040530);
  }

  return result;
}

unint64_t sub_1E5BCF628()
{
  result = qword_1ED040538;
  if (!qword_1ED040538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040538);
  }

  return result;
}

unint64_t sub_1E5BCF680()
{
  result = qword_1ED040540;
  if (!qword_1ED040540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040540);
  }

  return result;
}

unint64_t sub_1E5BCF6D8()
{
  result = qword_1ED040548;
  if (!qword_1ED040548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040548);
  }

  return result;
}

unint64_t sub_1E5BCF730()
{
  result = qword_1ED040550;
  if (!qword_1ED040550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040550);
  }

  return result;
}

unint64_t sub_1E5BCF788()
{
  result = qword_1ED040558;
  if (!qword_1ED040558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040558);
  }

  return result;
}

unint64_t sub_1E5BCF7E0()
{
  result = qword_1ED040560;
  if (!qword_1ED040560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040560);
  }

  return result;
}

unint64_t sub_1E5BCF838()
{
  result = qword_1ED040568;
  if (!qword_1ED040568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040568);
  }

  return result;
}

uint64_t sub_1E5BCF88C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for RemoveLibraryItemFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();

  return sub_1E5BF6614();
}

uint64_t RemoveLibraryItemConfirmationDialog.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for RemoveLibraryItemFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6604();
  *a5 = result;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13 & 1;
  return result;
}

uint64_t RemoveLibraryItemConfirmationDialog.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v71 = a3;
  v5 = sub_1E5BF6F94();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1E5BF64B4();
  v60 = *(v61 - 8);
  v8 = *(v60 + 64);
  v9 = MEMORY[0x1EEE9AC00](v61);
  v72 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5BF6F74();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  swift_getWitnessTable();
  v16 = sub_1E5BF6884();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405A8, &qword_1E5C038D0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405B0, &qword_1E5C038D8);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1E5B5FC8C(&qword_1EE2C62A0, &qword_1ED0405A8, &qword_1E5C038D0);
  v21 = sub_1E5BD02E0();
  v62 = v16;
  v84 = v16;
  v85 = v17;
  v69 = v17;
  v68 = v18;
  v86 = v18;
  v87 = WitnessTable;
  v75 = v20;
  v76 = WitnessTable;
  v88 = v20;
  v89 = v21;
  v74 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  v22 = *(v66 + 64);
  v23 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v63 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v64 = &v57 - v25;
  v26 = *v3;
  v27 = *(v3 + 8);
  v28 = *(v3 + 16);
  sub_1E5BF6F64();
  sub_1E5BF6F54();
  v84 = v26;
  v85 = v27;
  LOBYTE(v86) = v28;
  sub_1E5BCF88C(a2);
  v29 = *(a2 + 24);
  v30 = v11;
  v79 = v11;
  v80 = v29;
  swift_getKeyPath();
  v31 = v58;
  sub_1E5BF6E34();

  v81 = v26;
  v82 = v27;
  v83 = v28;
  v65 = a2;
  sub_1E5BCF88C(a2);
  v77 = v30;
  v78 = v29;
  v32 = v30;
  swift_getKeyPath();
  v33 = v72;
  sub_1E5BF6E34();

  (*(v29 + 40))(v33, v32, v29);
  (*(v60 + 8))(v33, v61);
  (*(v59 + 8))(v31, v32);
  sub_1E5BF6F44();

  sub_1E5BF6F54();
  sub_1E5BF6F84();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v84 = v26;
  v85 = v27;
  LOBYTE(v86) = v28;
  v34 = qword_1EE2CD210;
  v35 = v65;
  v36 = sub_1E5BCF88C(v65);
  MEMORY[0x1EEE9AC00](v36);
  swift_getKeyPath();
  sub_1E5BF6E34();

  v37 = sub_1E5BF69D4();
  v72 = v38;
  v73 = v37;
  v40 = v39;
  v61 = v41;
  v81 = v26;
  v82 = v27;
  v83 = v28;
  sub_1E5BCF88C(v35);
  v42 = swift_allocObject();
  *(v42 + 16) = v26;
  *(v42 + 24) = v27;
  *(v42 + 32) = v28;
  sub_1E5B5F5EC();
  v43 = sub_1E5BF6D34();
  v65 = &v57;
  v59 = v85;
  LODWORD(v60) = v86;
  v44 = MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  v62 = swift_checkMetadataState();
  v56[7] = v74;
  v56[6] = v75;
  v56[5] = v76;
  v45 = v68;
  v56[4] = v68;
  v46 = v69;
  v56[2] = v62;
  v56[3] = v69;
  v56[0] = sub_1E5BD2CBC;
  v56[1] = v56;
  v47 = v40;
  v48 = v63;
  v50 = v72;
  v49 = v73;
  sub_1E5BF6AB4();
  sub_1E5B7AD08(v49, v50, v47 & 1);

  v84 = v62;
  v85 = v46;
  v86 = v45;
  v87 = v76;
  v88 = v75;
  v89 = v74;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v64;
  v53 = OpaqueTypeMetadata2;
  sub_1E5B64D48(v48, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v54 = *(v66 + 8);
  v54(v48, v53);
  sub_1E5B64D48(v52, v53, OpaqueTypeConformance2);
  return (v54)(v52, v53);
}

unint64_t sub_1E5BD02E0()
{
  result = qword_1EE2C6330;
  if (!qword_1EE2C6330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405B0, &qword_1E5C038D8);
    sub_1E5BD039C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6330);
  }

  return result;
}

unint64_t sub_1E5BD039C()
{
  result = qword_1EE2C6338;
  if (!qword_1EE2C6338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405B8, &qword_1E5C038E0);
    sub_1E5BD0428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6338);
  }

  return result;
}

unint64_t sub_1E5BD0428()
{
  result = qword_1EE2C6348;
  if (!qword_1EE2C6348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405C0, &qword_1E5C038E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6348);
  }

  return result;
}

uint64_t sub_1E5BD04DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v52 = a5;
  v5 = *a1;
  v6 = sub_1E5BF6494();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  v9 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v43 - v24;
  v26 = *(v5 + *MEMORY[0x1E6999B70]);
  v27 = *(v26 + 16);
  v28 = *(v26 + 24);
  v53 = v27;
  v54 = v28;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v13 + 48))(v25, 1, v12);
  if (result != 1)
  {
    sub_1E5B7AD6C(v25, v21);
    v55 = v46;
    v56 = v47;
    v57 = v48 & 1;
    v31 = type metadata accessor for RemoveLibraryItemConfirmationDialog();
    v32 = sub_1E5BCF88C(v31);
    MEMORY[0x1EEE9AC00](v32);
    *(&v43 - 2) = v27;
    *(&v43 - 1) = v28;
    swift_getKeyPath();
    sub_1E5BF6E34();

    v34 = v50;
    v33 = v51;
    (*(v50 + 56))(v19, 0, 1, v51);
    v35 = *(v49 + 48);
    sub_1E5B5F864(v21, v11, &qword_1ED03E5E8, &unk_1E5BF9600);
    sub_1E5B5F864(v19, &v11[v35], &qword_1ED03E5E8, &unk_1E5BF9600);
    v36 = *(v34 + 48);
    if (v36(v11, 1, v33) == 1)
    {
      sub_1E5B5F804(v19, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v21, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v36(&v11[v35], 1, v33) == 1)
      {
        result = sub_1E5B5F804(v11, &qword_1ED03E5E8, &unk_1E5BF9600);
        v37 = 1;
LABEL_10:
        v30 = v37 & 1;
        goto LABEL_11;
      }
    }

    else
    {
      v38 = v45;
      sub_1E5B5F864(v11, v45, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v36(&v11[v35], 1, v33) != 1)
      {
        v39 = &v11[v35];
        v40 = v44;
        (*(v34 + 32))(v44, v39, v33);
        sub_1E5B7AE4C();
        v41 = v38;
        v37 = sub_1E5BF6F14();
        v42 = *(v34 + 8);
        v42(v40, v33);
        sub_1E5B5F804(v19, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v21, &qword_1ED03E5E8, &unk_1E5BF9600);
        v42(v41, v33);
        result = sub_1E5B5F804(v11, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_10;
      }

      sub_1E5B5F804(v19, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v21, &qword_1ED03E5E8, &unk_1E5BF9600);
      (*(v34 + 8))(v38, v33);
    }

    result = sub_1E5B5F804(v11, &qword_1ED03E790, &qword_1E5BF9150);
    v37 = 0;
    goto LABEL_10;
  }

  v30 = 0;
LABEL_11:
  *v52 = v30;
  return result;
}

_BYTE *sub_1E5BD0A90@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (*result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  *(a2 + 4) = WORD2(v2);
  *(a2 + 6) = 1;
  return result;
}

uint64_t sub_1E5BD0AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v92 = &v81 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  v97 = *(v15 - 8);
  v16 = *(v97 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v89 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v88 = &v81 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v86 = &v81 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v81 - v23;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405F0, &qword_1E5C03A98);
  v24 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v81 - v25;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405F8, &qword_1E5C03AA0);
  v26 = *(*(v85 - 1) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v28 = &v81 - v27;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040600, &qword_1E5C03AA8);
  v29 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v84 = (&v81 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v81 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040608, &qword_1E5C03AB0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v98 = &v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v100 = &v81 - v39;
  v95 = a1;
  v96 = a2;
  v103 = a1;
  v104 = a2;
  v91 = a3;
  v105 = a3 & 1;
  v40 = type metadata accessor for RemoveLibraryItemConfirmationDialog();
  sub_1E5BCF88C(v40);
  v93 = a4;
  v94 = a5;
  v101 = a4;
  v102 = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v90 = a6;
  v87 = v15;
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v42 = v28;
      v43 = *v34 | (v34[4] << 32);
      v44 = v34[5];
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
      v46 = sub_1E5BF6464();
      (*(*(v46 - 8) + 8))(&v34[v45], v46);
      if (!v44)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    sub_1E5B5F804(v34, &qword_1ED03E260, &qword_1E5BF9190);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    sub_1E5BD2E1C();
    sub_1E5BF6864();
    goto LABEL_13;
  }

  v43 = *v34 | (v34[4] << 32);
  v42 = v28;
  if (!v34[5])
  {
LABEL_9:
    v47 = v92;
    sub_1E5BF65C4();
    v48 = sub_1E5BF65E4();
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    v49 = swift_allocObject();
    v50 = v94;
    *(v49 + 16) = v93;
    *(v49 + 24) = v50;
    v51 = v95;
    v52 = v96;
    *(v49 + 32) = v95;
    *(v49 + 40) = v52;
    *(v49 + 48) = v91 & 1;
    v53 = MEMORY[0x1EEE9AC00](v51);
    *(&v81 - 6) = v55;
    *(&v81 - 5) = v54;
    *(&v81 - 4) = v53;
    *(&v81 - 3) = v56;
    *(&v81 - 16) = v57;
    sub_1E5B5F5EC();
    v58 = v99;
    sub_1E5BF6C74();
    v59 = v97;
    (*(v97 + 16))(v82, v58, v15);
    swift_storeEnumTagMultiPayload();
    sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
    sub_1E5BF6864();
    (*(v59 + 8))(v58, v15);
    goto LABEL_10;
  }

LABEL_7:
  if (v43)
  {
    goto LABEL_9;
  }

  swift_storeEnumTagMultiPayload();
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5BF6864();
LABEL_10:
  sub_1E5B5F864(v42, v84, &qword_1ED0405F8, &qword_1E5C03AA0);
  swift_storeEnumTagMultiPayload();
  sub_1E5BD2E1C();
  sub_1E5BF6864();
  sub_1E5B5F804(v42, &qword_1ED0405F8, &qword_1E5C03AA0);
LABEL_13:
  v60 = v92;
  sub_1E5BF65C4();
  v61 = sub_1E5BF65E4();
  v85 = *(*(v61 - 8) + 56);
  (v85)(v60, 0, 1, v61);
  v62 = swift_allocObject();
  v84 = &v81;
  v63 = v93;
  v64 = v94;
  *(v62 + 16) = v93;
  *(v62 + 24) = v64;
  v66 = v95;
  v65 = v96;
  *(v62 + 32) = v95;
  *(v62 + 40) = v65;
  v67 = v91 & 1;
  *(v62 + 48) = v91 & 1;
  MEMORY[0x1EEE9AC00](v62);
  *(&v81 - 6) = v63;
  *(&v81 - 5) = v64;
  *(&v81 - 4) = v66;
  *(&v81 - 3) = v65;
  *(&v81 - 16) = v67;
  sub_1E5B5F5EC();
  sub_1E5BF6C74();
  sub_1E5BF65D4();
  (v85)(v60, 0, 1, v61);
  v68 = swift_allocObject();
  *(v68 + 16) = v63;
  *(v68 + 24) = v64;
  *(v68 + 32) = v66;
  *(v68 + 40) = v65;
  *(v68 + 48) = v67;
  MEMORY[0x1EEE9AC00](v68);
  *(&v81 - 6) = v63;
  *(&v81 - 5) = v64;
  *(&v81 - 4) = v66;
  *(&v81 - 3) = v65;
  *(&v81 - 16) = v67;
  sub_1E5B5F5EC();
  v69 = v86;
  sub_1E5BF6C74();
  v70 = v98;
  sub_1E5B5F864(v100, v98, &qword_1ED040608, &qword_1E5C03AB0);
  v71 = v97;
  v72 = *(v97 + 16);
  v73 = v87;
  v74 = v88;
  v75 = v99;
  v72(v88, v99, v87);
  v76 = v89;
  v72(v89, v69, v73);
  v77 = v90;
  sub_1E5B5F864(v70, v90, &qword_1ED040608, &qword_1E5C03AB0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040610, &unk_1E5C03AB8);
  v72((v77 + *(v78 + 48)), v74, v73);
  v72((v77 + *(v78 + 64)), v76, v73);
  v79 = *(v71 + 8);
  v79(v69, v73);
  v79(v75, v73);
  sub_1E5B5F804(v100, &qword_1ED040608, &qword_1E5C03AB0);
  v79(v76, v73);
  v79(v74, v73);
  return sub_1E5B5F804(v98, &qword_1ED040608, &qword_1E5C03AB0);
}

uint64_t sub_1E5BD15D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5BF64B4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1E5BF6F94();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE2CD210;
  v24[1] = a1;
  v24[2] = a2;
  v25 = a3 & 1;
  v17 = type metadata accessor for RemoveLibraryItemConfirmationDialog();
  v18 = v16;
  v19 = sub_1E5BCF88C(v17);
  MEMORY[0x1EEE9AC00](v19);
  v24[-2] = a4;
  v24[-1] = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a6 = result;
  *(a6 + 8) = v21;
  *(a6 + 16) = v22 & 1;
  *(a6 + 24) = v23;
  return result;
}

uint64_t sub_1E5BD17CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5BF64B4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1E5BF6F94();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE2CD210;
  v24[1] = a1;
  v24[2] = a2;
  v25 = a3 & 1;
  v17 = type metadata accessor for RemoveLibraryItemConfirmationDialog();
  v18 = v16;
  v19 = sub_1E5BCF88C(v17);
  MEMORY[0x1EEE9AC00](v19);
  v24[-2] = a4;
  v24[-1] = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a6 = result;
  *(a6 + 8) = v21;
  *(a6 + 16) = v22 & 1;
  *(a6 + 24) = v23;
  return result;
}

uint64_t sub_1E5BD19C0()
{
  v0 = type metadata accessor for RemoveLibraryItemConfirmationDialog();
  sub_1E5BCF88C(v0);
  sub_1E5BF6E44();
}

uint64_t sub_1E5BD1A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5BF64B4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1E5BF6F94();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE2CD210;
  v24[1] = a1;
  v24[2] = a2;
  v25 = a3 & 1;
  v17 = type metadata accessor for RemoveLibraryItemConfirmationDialog();
  v18 = v16;
  v19 = sub_1E5BCF88C(v17);
  MEMORY[0x1EEE9AC00](v19);
  v24[-2] = a4;
  v24[-1] = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a6 = result;
  *(a6 + 8) = v21;
  *(a6 + 16) = v22 & 1;
  *(a6 + 24) = v23;
  return result;
}

uint64_t sub_1E5BD1C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v137 = a6;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405C8, &qword_1E5C03A40);
  v11 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v135 = v116 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405D0, &qword_1E5C03A48);
  v13 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v120 = v116 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405D8, &qword_1E5C03A50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v131 = v116 - v17;
  v18 = sub_1E5BF64B4();
  v129 = *(v18 - 8);
  v130 = v18;
  v19 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v128 = v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405E0, &qword_1E5C03A58);
  v133 = *(v138 - 8);
  v21 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v132 = v116 - v22;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405C0, &qword_1E5C038E8);
  v23 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v118 = v116 - v24;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405E8, &unk_1E5C03A60);
  v25 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v124 = v116 - v26;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  v27 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = v116 - v28;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0405B8, &qword_1E5C038E0);
  v29 = *(*(v134 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v134);
  v125 = v116 - v31;
  v32 = *(a4 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v35 = v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v141 = a1;
  v142 = a2;
  v117 = a3;
  v37 = a3 & 1;
  v143 = a3 & 1;
  v38 = type metadata accessor for RemoveLibraryItemConfirmationDialog();
  sub_1E5BCF88C(v38);
  v139 = a4;
  v140 = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  LOBYTE(a3) = (*(a5 + 32))(a4, a5);
  v40 = *(v32 + 8);
  v39 = v32 + 8;
  v40(v35, a4);
  v127 = v40;
  if ((a3 & 1) == 0)
  {
    v141 = v36;
    v142 = a2;
    v143 = v37;
    v52 = sub_1E5BCF88C(v38);
    MEMORY[0x1EEE9AC00](v52);
    v116[-2] = a4;
    v116[-1] = a5;
    swift_getKeyPath();
    v126 = a4;
    sub_1E5BF6E34();

    v145 = v36;
    v146 = a2;
    v147 = v37;
    v53 = sub_1E5BCF88C(v38);
    MEMORY[0x1EEE9AC00](v53);
    v54 = v126;
    v116[-2] = v126;
    v116[-1] = a5;
    swift_getKeyPath();
    v55 = v128;
    sub_1E5BF6E34();

    v56 = [objc_opt_self() mainBundle];
    v57 = sub_1E5BF71D4();

    v58 = (*(a5 + 48))(v55, v57 & 1, v54, a5);
    v60 = v59;
    (*(v129 + 8))(v55, v130);
    v127(v35, v54);
    v141 = v58;
    v142 = v60;
    sub_1E5B81070();
    v61 = sub_1E5BF69E4();
    v63 = v62;
    v141 = v61;
    v142 = v62;
    LOBYTE(v54) = v64 & 1;
    v143 = v64 & 1;
    v144 = v65;
    v66 = v131;
    sub_1E5BF68A4();
    v67 = sub_1E5BF68B4();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    v68 = MEMORY[0x1E6981148];
    v69 = MEMORY[0x1E6981138];
    v70 = v132;
    sub_1E5BF6AD4();
    sub_1E5B5F804(v66, &qword_1ED0405D8, &qword_1E5C03A50);
    sub_1E5B7AD08(v61, v63, v54);

    v71 = v133;
    v72 = v138;
    (*(v133 + 16))(v135, v70, v138);
    swift_storeEnumTagMultiPayload();
    sub_1E5BD039C();
    v141 = v68;
    v142 = v69;
    swift_getOpaqueTypeConformance2();
    sub_1E5BF6864();
    return (*(v71 + 8))(v70, v72);
  }

  v116[1] = v39;
  v141 = v36;
  v142 = a2;
  v116[0] = a2;
  v143 = v37;
  v41 = sub_1E5BCF88C(v38);
  MEMORY[0x1EEE9AC00](v41);
  v116[-2] = a4;
  v116[-1] = a5;
  swift_getKeyPath();
  v42 = v121;
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v44 = v36;
    if (!EnumCaseMultiPayload)
    {
      v45 = *v42 | (*(v42 + 4) << 32);
      v46 = *(v42 + 5);
LABEL_8:
      if (!v46 || v45)
      {
        v141 = v44;
        v142 = v116[0];
        v96 = v117 & 1;
        v143 = v117 & 1;
        v97 = v116[0];
        v98 = sub_1E5BCF88C(v38);
        MEMORY[0x1EEE9AC00](v98);
        v116[-2] = a4;
        v116[-1] = a5;
        swift_getKeyPath();
        sub_1E5BF6E34();

        v145 = v44;
        v146 = v97;
        v147 = v96;
        v99 = sub_1E5BCF88C(v38);
        MEMORY[0x1EEE9AC00](v99);
        v116[-2] = a4;
        v116[-1] = a5;
        swift_getKeyPath();
        v100 = v128;
        sub_1E5BF6E34();

        v101 = [objc_opt_self() mainBundle];
        LOBYTE(v97) = sub_1E5BF71D4();

        v102 = (*(a5 + 56))(v100, v97 & 1, a4, a5);
        v104 = v103;
        (*(v129 + 8))(v100, v130);
        v127(v35, a4);
        v141 = v102;
        v142 = v104;
        sub_1E5B81070();
        v105 = sub_1E5BF69E4();
        v107 = v106;
        v141 = v105;
        v142 = v106;
        v109 = v108 & 1;
        v143 = v108 & 1;
        v144 = v110;
        v111 = v131;
        sub_1E5BF68A4();
        v112 = sub_1E5BF68B4();
        (*(*(v112 - 8) + 56))(v111, 0, 1, v112);
        v91 = MEMORY[0x1E6981148];
        v92 = MEMORY[0x1E6981138];
        v93 = v132;
        sub_1E5BF6AD4();
        sub_1E5B5F804(v111, &qword_1ED0405D8, &qword_1E5C03A50);
        sub_1E5B7AD08(v105, v107, v109);

        v94 = v133;
        v95 = v138;
        (*(v133 + 16))(v120, v93, v138);
      }

      else
      {
        v141 = v44;
        v142 = v116[0];
        v74 = v117 & 1;
        v143 = v117 & 1;
        v75 = v116[0];
        v76 = sub_1E5BCF88C(v38);
        MEMORY[0x1EEE9AC00](v76);
        v116[-2] = a4;
        v116[-1] = a5;
        swift_getKeyPath();
        sub_1E5BF6E34();

        v145 = v44;
        v146 = v75;
        v147 = v74;
        v77 = sub_1E5BCF88C(v38);
        MEMORY[0x1EEE9AC00](v77);
        v116[-2] = a4;
        v116[-1] = a5;
        swift_getKeyPath();
        v78 = v128;
        sub_1E5BF6E34();

        v79 = [objc_opt_self() mainBundle];
        LOBYTE(v75) = sub_1E5BF71D4();

        v80 = (*(a5 + 48))(v78, v75 & 1, a4, a5);
        v82 = v81;
        (*(v129 + 8))(v78, v130);
        v127(v35, a4);
        v141 = v80;
        v142 = v82;
        sub_1E5B81070();
        v83 = sub_1E5BF69E4();
        v85 = v84;
        v141 = v83;
        v142 = v84;
        v87 = v86 & 1;
        v143 = v86 & 1;
        v144 = v88;
        v89 = v131;
        sub_1E5BF68A4();
        v90 = sub_1E5BF68B4();
        (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
        v91 = MEMORY[0x1E6981148];
        v92 = MEMORY[0x1E6981138];
        v93 = v132;
        sub_1E5BF6AD4();
        sub_1E5B5F804(v89, &qword_1ED0405D8, &qword_1E5C03A50);
        sub_1E5B7AD08(v83, v85, v87);

        v94 = v133;
        v95 = v138;
        (*(v133 + 16))(v120, v93, v138);
      }

      swift_storeEnumTagMultiPayload();
      v141 = v91;
      v142 = v92;
      swift_getOpaqueTypeConformance2();
      v113 = v118;
      sub_1E5BF6864();
      (*(v94 + 8))(v93, v95);
      sub_1E5B5F864(v113, v124, &qword_1ED0405C0, &qword_1E5C038E8);
      swift_storeEnumTagMultiPayload();
      sub_1E5BD0428();
      v114 = v125;
      sub_1E5BF6864();
      sub_1E5B5F804(v113, &qword_1ED0405C0, &qword_1E5C038E8);
      v115 = v135;
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v45 = *v42 | (*(v42 + 4) << 32);
      v46 = *(v42 + 5);
      v47 = v42;
      v48 = a4;
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
      v50 = sub_1E5BF6464();
      v51 = v47 + v49;
      a4 = v48;
      (*(*(v50 - 8) + 8))(v51, v50);
      goto LABEL_8;
    }

    sub_1E5B5F804(v42, &qword_1ED03E260, &qword_1E5BF9190);
  }

  swift_storeEnumTagMultiPayload();
  sub_1E5BD0428();
  v114 = v125;
  sub_1E5BF6864();
  v115 = v135;
LABEL_15:
  sub_1E5B5F864(v114, v115, &qword_1ED0405B8, &qword_1E5C038E0);
  swift_storeEnumTagMultiPayload();
  sub_1E5BD039C();
  v141 = MEMORY[0x1E6981148];
  v142 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  sub_1E5BF6864();
  return sub_1E5B5F804(v114, &qword_1ED0405B8, &qword_1E5C038E0);
}

uint64_t View.removeLibraryItemConfirmationDialog<A>(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  RemoveLibraryItemConfirmationDialog.init(store:)(a1, a2, a4, a6, &v16);
  v14 = v16;
  v15 = v17;
  v12 = type metadata accessor for RemoveLibraryItemConfirmationDialog();
  MEMORY[0x1E6937280](&v14, a3, v12, a5);
  return sub_1E5B5C0A8();
}

unint64_t sub_1E5BD2E1C()
{
  result = qword_1EE2C6340;
  if (!qword_1EE2C6340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405F8, &qword_1E5C03AA0);
    sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6340);
  }

  return result;
}

uint64_t sub_1E5BD2EDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return sub_1E5BD19C0();
}

uint64_t sub_1E5BD2F54()
{
  if (*v0)
  {
    result = 0x707954616964656DLL;
  }

  else
  {
    result = 0x7669746341776172;
  }

  *v0;
  return result;
}

uint64_t sub_1E5BD2FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7669746341776172 && a2 == 0xEF65707954797469;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BD308C(uint64_t a1)
{
  v2 = sub_1E5BD3C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD30C8(uint64_t a1)
{
  v2 = sub_1E5BD3C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E5BD3104()
{
  v1 = 0x6570704177656976;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000024;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1E5BD3198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BD3FE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BD31C0(uint64_t a1)
{
  v2 = sub_1E5BD3B78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD31FC(uint64_t a1)
{
  v2 = sub_1E5BD3B78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BD3254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5BF7444();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5BD32E4(uint64_t a1)
{
  v2 = sub_1E5BD3C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD3320(uint64_t a1)
{
  v2 = sub_1E5BD3C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BD335C()
{
  if (*v0)
  {
    result = 0x707954616964656DLL;
  }

  else
  {
    result = 0x6465646461;
  }

  *v0;
  return result;
}

uint64_t sub_1E5BD3398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465646461 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BD3478(uint64_t a1)
{
  v2 = sub_1E5BD3BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD34B4(uint64_t a1)
{
  v2 = sub_1E5BD3BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BD34F0(uint64_t a1)
{
  v2 = sub_1E5BD3CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BD352C(uint64_t a1)
{
  v2 = sub_1E5BD3CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StackButtonAction.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v45 = a3;
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040618, &qword_1E5C03B10);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v36 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040620, &qword_1E5C03B18);
  v37 = *(v39 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v36 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040628, &qword_1E5C03B20);
  v38 = *(v40 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040630, &qword_1E5C03B28);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040638, &qword_1E5C03B30);
  v46 = *(v18 - 8);
  v47 = v18;
  v19 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BD3B78();
  v23 = v45;
  sub_1E5BF7524();
  if ((v23 >> 6) > 1u)
  {
    if (v23 >> 6 == 2)
    {
      v59 = 3;
      sub_1E5BD3BCC();
      v28 = v41;
      v29 = v47;
      sub_1E5BF7394();
      v58 = 0;
      v31 = v43;
      v30 = BYTE1(v44);
      v32 = v48;
      sub_1E5BF73F4();
      if (!v32)
      {
        v57 = v30;
        v56 = 1;
        sub_1E5B8D528();
        sub_1E5BF7424();
      }

      (*(v42 + 8))(v28, v31);
      return (*(v46 + 8))(v21, v29);
    }

    else
    {
      v49 = 0;
      sub_1E5BD3CC8();
      v35 = v47;
      sub_1E5BF7394();
      (*(v14 + 8))(v17, v13);
      return (*(v46 + 8))(v21, v35);
    }
  }

  else if (v23 >> 6)
  {
    v55 = 2;
    sub_1E5BD3C20();
    v33 = v47;
    sub_1E5BF7394();
    v54 = v44;
    sub_1E5B8D528();
    v34 = v39;
    sub_1E5BF7424();
    (*(v37 + 8))(v9, v34);
    return (*(v46 + 8))(v21, v33);
  }

  else
  {
    v53 = 1;
    sub_1E5BD3C74();
    v24 = v47;
    sub_1E5BF7394();
    v52 = 0;
    v25 = v40;
    v26 = v48;
    sub_1E5BF7414();
    if (!v26)
    {
      v51 = v23;
      v50 = 1;
      sub_1E5B8D528();
      sub_1E5BF7424();
    }

    (*(v38 + 8))(v12, v25);
    return (*(v46 + 8))(v21, v24);
  }
}

unint64_t sub_1E5BD3B78()
{
  result = qword_1ED040640;
  if (!qword_1ED040640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040640);
  }

  return result;
}

unint64_t sub_1E5BD3BCC()
{
  result = qword_1ED040648;
  if (!qword_1ED040648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040648);
  }

  return result;
}

unint64_t sub_1E5BD3C20()
{
  result = qword_1ED040650;
  if (!qword_1ED040650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040650);
  }

  return result;
}

unint64_t sub_1E5BD3C74()
{
  result = qword_1ED040658;
  if (!qword_1ED040658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040658);
  }

  return result;
}

unint64_t sub_1E5BD3CC8()
{
  result = qword_1ED040660;
  if (!qword_1ED040660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040660);
  }

  return result;
}

unint64_t sub_1E5BD3D34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E5BD4158(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t StackButtonAction.hash(into:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      MEMORY[0x1E6937C10](3);
      sub_1E5BF74D4();
      v5 = BYTE1(a2);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (a3 >> 6)
  {
    MEMORY[0x1E6937C10](2);
    v5 = a2;
  }

  else
  {
    MEMORY[0x1E6937C10](1);
    MEMORY[0x1E6937C10](a2);
    v5 = a3;
  }

  return MEMORY[0x1E6937C10](v5);
}

uint64_t StackButtonAction.hashValue.getter(uint64_t a1, unsigned __int8 a2)
{
  sub_1E5BF74B4();
  if ((a2 >> 6) > 1u)
  {
    v4 = 0;
    if (a2 >> 6 == 2)
    {
      MEMORY[0x1E6937C10](3);
      sub_1E5BF74D4();
      v4 = BYTE1(a1);
    }
  }

  else if (a2 >> 6)
  {
    MEMORY[0x1E6937C10](2);
    v4 = a1;
  }

  else
  {
    MEMORY[0x1E6937C10](1);
    MEMORY[0x1E6937C10](a1);
    v4 = a2;
  }

  MEMORY[0x1E6937C10](v4);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BD3EE8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1E5BF74B4();
  StackButtonAction.hash(into:)(v4, v1, v2);
  return sub_1E5BF7504();
}

BOOL _s14FitnessActions17StackButtonActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 == 2)
    {
      if ((a4 & 0xC0) == 0x80)
      {
        return ((a3 ^ a1) & 1) == 0 && ((a3 ^ a1) & 0xFF00) == 0;
      }
    }

    else if (a4 >= 0xC0u && !a3 && a4 == 192)
    {
      return 1;
    }

    return 0;
  }

  if (a2 >> 6)
  {
    if ((a4 & 0xC0) == 0x40)
    {
      return a3 == a1;
    }

    return 0;
  }

  if (a4 > 0x3Fu)
  {
    return 0;
  }

  return a1 == a3 && a2 == a4;
}

uint64_t sub_1E5BD3FE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5C08640 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5C08660 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001E5C08680 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

unint64_t sub_1E5BD4158(uint64_t *a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0406E0, &qword_1E5C04170);
  v44 = *(v40 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v47 = &v38 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0406E8, &qword_1E5C04178);
  v43 = *(v41 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v38 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0406F0, &qword_1E5C04180);
  v42 = *(v45 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0406F8, &qword_1E5C04188);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040700, &unk_1E5C04190);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1E5BD3B78();
  v20 = v48;
  sub_1E5BF7514();
  if (!v20)
  {
    v21 = v12;
    v38 = v9;
    v48 = v8;
    v23 = v45;
    v22 = v46;
    v24 = v47;
    v25 = sub_1E5BF7374();
    v26 = (2 * *(v25 + 16)) | 1;
    v50 = v25;
    v51 = v25 + 32;
    v52 = 0;
    v53 = v26;
    v27 = sub_1E5B7FB10();
    v28 = v13;
    if (v27 == 4 || v52 != v53 >> 1)
    {
      v29 = sub_1E5BF7284();
      swift_allocError();
      v9 = v30;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
      *v9 = &type metadata for StackButtonAction;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v29 - 8) + 104))(v9, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v14 + 8))(v17, v28);
      swift_unknownObjectRelease();
    }

    else if (v27 > 1u)
    {
      if (v27 == 2)
      {
        v55 = 2;
        sub_1E5BD3C20();
        v33 = v22;
        sub_1E5BF72C4();
        sub_1E5B8D7C8();
        v34 = v41;
        sub_1E5BF7364();
        (*(v43 + 8))(v33, v34);
        (*(v14 + 8))(v17, v28);
        swift_unknownObjectRelease();
        v9 = v55;
      }

      else
      {
        v55 = 3;
        sub_1E5BD3BCC();
        sub_1E5BF72C4();
        v55 = 0;
        v36 = v40;
        v37 = sub_1E5BF7334();
        v54 = 1;
        sub_1E5B8D7C8();
        sub_1E5BF7364();
        (*(v44 + 8))(v24, v36);
        (*(v14 + 8))(v17, v13);
        swift_unknownObjectRelease();
        v9 = v37 & 1 | (v55 << 8);
      }
    }

    else if (v27)
    {
      v55 = 1;
      sub_1E5BD3C74();
      v35 = v48;
      sub_1E5BF72C4();
      v55 = 0;
      v9 = sub_1E5BF7354();
      v54 = 1;
      sub_1E5B8D7C8();
      sub_1E5BF7364();
      (*(v42 + 8))(v35, v23);
      (*(v14 + 8))(v17, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0;
      sub_1E5BD3CC8();
      sub_1E5BF72C4();
      (*(v39 + 8))(v21, v38);
      (*(v14 + 8))(v17, v13);
      swift_unknownObjectRelease();
      v9 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return v9;
}

unint64_t sub_1E5BD4984()
{
  result = qword_1ED040668;
  if (!qword_1ED040668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040668);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StackButtonAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 9))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for StackButtonAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1E5BD4A7C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E5BD4AA8(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

unint64_t sub_1E5BD4B38()
{
  result = qword_1ED040670;
  if (!qword_1ED040670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040670);
  }

  return result;
}

unint64_t sub_1E5BD4B90()
{
  result = qword_1ED040678;
  if (!qword_1ED040678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040678);
  }

  return result;
}

unint64_t sub_1E5BD4BE8()
{
  result = qword_1ED040680;
  if (!qword_1ED040680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040680);
  }

  return result;
}

unint64_t sub_1E5BD4C40()
{
  result = qword_1ED040688;
  if (!qword_1ED040688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040688);
  }

  return result;
}

unint64_t sub_1E5BD4C98()
{
  result = qword_1ED040690;
  if (!qword_1ED040690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040690);
  }

  return result;
}

unint64_t sub_1E5BD4CF0()
{
  result = qword_1ED040698;
  if (!qword_1ED040698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED040698);
  }

  return result;
}

unint64_t sub_1E5BD4D48()
{
  result = qword_1ED0406A0;
  if (!qword_1ED0406A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406A0);
  }

  return result;
}

unint64_t sub_1E5BD4DA0()
{
  result = qword_1ED0406A8;
  if (!qword_1ED0406A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406A8);
  }

  return result;
}

unint64_t sub_1E5BD4DF8()
{
  result = qword_1ED0406B0;
  if (!qword_1ED0406B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406B0);
  }

  return result;
}

unint64_t sub_1E5BD4E50()
{
  result = qword_1ED0406B8;
  if (!qword_1ED0406B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406B8);
  }

  return result;
}

unint64_t sub_1E5BD4EA8()
{
  result = qword_1ED0406C0;
  if (!qword_1ED0406C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406C0);
  }

  return result;
}

unint64_t sub_1E5BD4F00()
{
  result = qword_1ED0406C8;
  if (!qword_1ED0406C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406C8);
  }

  return result;
}

unint64_t sub_1E5BD4F58()
{
  result = qword_1ED0406D0;
  if (!qword_1ED0406D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406D0);
  }

  return result;
}

unint64_t sub_1E5BD4FB0()
{
  result = qword_1ED0406D8;
  if (!qword_1ED0406D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0406D8);
  }

  return result;
}

uint64_t sub_1E5BD504C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E5BD50A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E5BD5124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v55 = a3;
  v4 = sub_1E5BF68D4();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5BF6914();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040708, &qword_1E5C042A0);
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v42 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040710, &qword_1E5C042A8);
  v15 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v17 = &v42 - v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040718, &qword_1E5C042B0);
  v46 = *(v48 - 8);
  v18 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v43 = &v42 - v19;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040720, &qword_1E5C042B8);
  v20 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v22 = &v42 - v21;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040728, &qword_1E5C042C0);
  v50 = *(v51 - 8);
  v23 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v42 - v24;
  (*(v9 + 16))(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = swift_allocObject();
  (*(v9 + 32))(v26 + v25, &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040730, &qword_1E5C042C8);
  sub_1E5BD5D00();
  sub_1E5BF6C84();
  sub_1E5BF6D84();
  sub_1E5BF6704();
  (*(v11 + 32))(v17, v14, v44);
  v27 = &v17[*(v42 + 36)];
  v28 = v62;
  *(v27 + 4) = v61;
  *(v27 + 5) = v28;
  *(v27 + 6) = v63;
  v29 = v58;
  *v27 = v57;
  *(v27 + 1) = v29;
  v30 = v60;
  *(v27 + 2) = v59;
  *(v27 + 3) = v30;
  v31 = v49;
  sub_1E5BF68C4();
  sub_1E5BD5F10();
  sub_1E5BD62D4(&qword_1EE2C62F8, MEMORY[0x1E697CB70]);
  v32 = v43;
  v33 = v52;
  sub_1E5BF6A44();
  (*(v53 + 8))(v31, v33);
  sub_1E5B5F804(v17, &qword_1ED040710, &qword_1E5C042A8);
  v34 = sub_1E5BF6D84();
  v36 = v35;
  (*(v46 + 32))(v22, v32, v48);
  v37 = &v22[*(v45 + 36)];
  *v37 = v54;
  *(v37 + 1) = v34;
  *(v37 + 2) = v36;

  sub_1E5BF6D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040740, &qword_1E5C042E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040748, &qword_1E5C042F0);
  sub_1E5BD5FC8();
  sub_1E5BD610C();
  sub_1E5BD61C4();
  v38 = v47;
  sub_1E5BF6B64();
  sub_1E5B5F804(v22, &qword_1ED040720, &qword_1E5C042B8);
  v39 = sub_1E5BF6BA4();
  v40 = v55;
  (*(v50 + 32))(v55, v38, v51);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040778, &qword_1E5C04310);
  *(v40 + *(result + 36)) = v39;
  return result;
}

uint64_t sub_1E5BD583C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E328, &unk_1E5BFD530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040738, &unk_1E5C042D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  sub_1E5BF68F4();
  sub_1E5BF6974();
  sub_1E5BF6994();
  v10 = sub_1E5BF69A4();

  KeyPath = swift_getKeyPath();
  v12 = &v9[*(v6 + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  v13 = *MEMORY[0x1E697E728];
  v14 = sub_1E5BF66D4();
  (*(*(v14 - 8) + 104))(v5, v13, v14);
  sub_1E5BD62D4(&qword_1EE2C63B0, MEMORY[0x1E697E730]);
  result = sub_1E5BF6F14();
  if (result)
  {
    sub_1E5BD5E28();
    sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530);
    sub_1E5BF6A84();
    sub_1E5B5F804(v5, &qword_1ED03E328, &unk_1E5BFD530);
    sub_1E5B5F804(v9, &qword_1ED040738, &unk_1E5C042D0);
    v16 = sub_1E5BF6954();
    sub_1E5BF65F4();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040730, &qword_1E5C042C8);
    v25 = a1 + *(result + 36);
    *v25 = v16;
    *(v25 + 8) = v18;
    *(v25 + 16) = v20;
    *(v25 + 24) = v22;
    *(v25 + 32) = v24;
    *(v25 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5BD5AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040740, &qword_1E5C042E8) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E5BF6824();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040768, &qword_1E5C04300) + 36)) = 256;

  return sub_1E5B5A898(a1, a2);
}

uint64_t sub_1E5BD5BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040748, &qword_1E5C042F0) + 36));
  v5 = *(sub_1E5BF66F4() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5BF6824();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040770, &qword_1E5C04308) + 36)] = 256;

  return sub_1E5B5A898(a1, a2);
}

uint64_t sub_1E5BD5C9C()
{
  v1 = *(sub_1E5BF6914() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1E5BF6904();
}

unint64_t sub_1E5BD5D00()
{
  result = qword_1EE2C6390;
  if (!qword_1EE2C6390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040730, &qword_1E5C042C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040738, &unk_1E5C042D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E328, &unk_1E5BFD530);
    sub_1E5BD5E28();
    sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6390);
  }

  return result;
}
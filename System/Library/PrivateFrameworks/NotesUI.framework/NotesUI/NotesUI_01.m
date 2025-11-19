uint64_t sub_1D41944CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC118);
  __swift_allocate_value_buffer(v0, qword_1EDE32D48);
  v1 = __swift_project_value_buffer(v0, qword_1EDE32D48);
  v2 = sub_1D4417544();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1D419456C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D41945DC(uint64_t a1)
{
  v2 = sub_1D4417534();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97A0);
    v9 = sub_1D441A994();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D417DFF0(&qword_1EDE33818, MEMORY[0x1E6969AD0]);
      v16 = sub_1D4419B84();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1D417DFF0(&qword_1EDE33810, MEMORY[0x1E6969AD0]);
          v23 = sub_1D4419BE4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D419490C(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v134 = a4;
  v135 = a3;
  v154 = a2;
  v148 = a1;
  v6 = sub_1D44181B4();
  v146 = *(v6 - 8);
  v147 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v145 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v142 = &v132 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v137 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v132 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v136 = &v132 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v132 - v18;
  v20 = sub_1D4417434();
  v150 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v139 = (&v132 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v132 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v138 = &v132 - v29;
  v151 = sub_1D4416F64();
  v149 = *(v151 - 8);
  v30 = MEMORY[0x1EEE9AC00](v151);
  v144 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v141 = &v132 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v143 = &v132 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC118);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v140 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v132 - v38;
  v40 = sub_1D4417544();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v155 = &v132 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE32D40 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v35, qword_1EDE32D48);
  swift_beginAccess();
  sub_1D419456C(v43, v39);
  v44 = *(v41 + 48);
  v45 = v44(v39, 1, v40);
  v152 = v41;
  v153 = v40;
  if (v45 == 1)
  {
    sub_1D4417514();
    if (v44(v39, 1, v40) != 1)
    {
      sub_1D41769C4(v39, &qword_1EC7CC118);
    }
  }

  else
  {
    (*(v41 + 32))(v155, v39, v40);
  }

  sub_1D4417284();
  v47 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC120);
  v48 = sub_1D4417534();
  v49 = *(v48 - 8);
  v50 = *(v49 + 72);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  if (v47 >= a5 && (v47 < INFINITY || v47 > INFINITY))
  {
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1D44364A0;
    v53 = v52 + v51;
    v54 = *(v49 + 104);
    v54(v53, *MEMORY[0x1E6969A78], v48);
    v54(v53 + v50, *MEMORY[0x1E6969A68], v48);
    sub_1D41945DC(v52);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v55 = v143;
    sub_1D44174D4();

    sub_1D44174E4();
    v56 = v150;
    v57 = *(v150 + 48);
    if (v57(v19, 1, v20) == 1)
    {
      v149[1](v55, v151);
      v58 = v19;
LABEL_19:
      sub_1D41769C4(v58, &qword_1EC7C98F0);
LABEL_20:
      v85 = v148;
      v86 = v145;
      v87 = v153;
LABEL_21:
      sub_1D4418154();
      v88 = sub_1D44181A4();
      v89 = sub_1D441A154();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_1D4171000, v88, v89, "Time traveler detected, notify the Time Authority immediately", v90, 2u);
        MEMORY[0x1DA6D8690](v90, -1, -1);
      }

      (*(v146 + 8))(v86, v147);
      v91 = objc_opt_self();
      v92 = sub_1D4419C14();
      v93 = [v91 localizedFrameworkStringForKey:v92 value:0 table:0 allowSiri:1];

      v94 = sub_1D4419C54();
      v96 = v95;

      v97 = *v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_1D438D6EC(0, *(v97 + 2) + 1, 1, v97);
      }

      v99 = *(v97 + 2);
      v98 = *(v97 + 3);
      if (v99 >= v98 >> 1)
      {
        v97 = sub_1D438D6EC((v98 > 1), v99 + 1, 1, v97);
      }

      result = (*(v152 + 8))(v155, v87);
      v101 = 0;
      *(v97 + 2) = v99 + 1;
      v102 = &v97[56 * v99];
      *(v102 + 4) = v94;
      *(v102 + 5) = v96;
      v103 = v102 + 32;
      *(v103 + 2) = 9;
      *(v103 + 3) = 0xFFF0000000000000;
      *(v103 + 4) = 0;
      v104 = 1;
      goto LABEL_28;
    }

    v144 = v28;
    v75 = *(v56 + 32);
    v76 = v20;
    v133 = v20;
    v77 = v138;
    v139 = v75;
    v75(v138, v19, v76);
    (*(v152 + 56))(v140, 1, 1, v153);
    v78 = sub_1D44175E4();
    (*(*(v78 - 8) + 56))(v142, 1, 1, v78);
    v79 = v141;
    sub_1D4416F54();
    v80 = v136;
    sub_1D44174F4();
    v81 = v149[1];
    v82 = v79;
    v72 = v80;
    v83 = v133;
    v84 = v151;
    (v81)(v82, v151);
    if (v57(v72, 1, v83) == 1)
    {
      (*(v56 + 8))(v77, v83);
      (v81)(v143, v84);
      goto LABEL_18;
    }

    v149 = v81;
    v111 = v144;
    v139(v144, v72, v83);
    v112 = v143;
    v113 = sub_1D4416F44();
    v85 = v83;
    if (v114)
    {
      v115 = *(v56 + 8);
      v115(v111, v83);
      v115(v138, v83);
      (v149)(v112, v151);
      goto LABEL_20;
    }

    v105 = v113;
    v124 = v112;
    v117 = Date.formattedDateHeadersMonth.getter();
    v119 = v125;
    v87 = v138;
    sub_1D4417284();
    v121 = v126;
    sub_1D4417284();
    v123 = v127;
    v97 = *(v56 + 8);
    (v97)(v111, v85);
    (v97)(v87, v85);
    (v149)(v124, v151);
    v101 = v135 - v105;
    if (!__OFSUB__(v135, v105))
    {
      v105 = 7;
      goto LABEL_37;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    v97 = sub_1D438D6EC(0, *(v97 + 2) + 1, 1, v97);
    goto LABEL_40;
  }

  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1D4435D40;
  (*(v49 + 104))(v59 + v51, *MEMORY[0x1E6969A68], v48);
  sub_1D41945DC(v59);
  swift_setDeallocating();
  (*(v49 + 8))(v59 + v51, v48);
  swift_deallocClassInstance();
  v60 = v144;
  sub_1D44174D4();

  sub_1D44174E4();
  v61 = v150;
  v62 = *(v150 + 48);
  if (v62(v15, 1, v20) == 1)
  {
    v149[1](v60, v151);
    v58 = v15;
    goto LABEL_19;
  }

  v143 = v23;
  v63 = *(v61 + 32);
  v64 = v20;
  v133 = v20;
  v65 = v139;
  v138 = v63;
  (v63)(v139, v15, v64);
  (*(v152 + 56))(v140, 1, 1, v153);
  v66 = sub_1D44175E4();
  (*(*(v66 - 8) + 56))(v142, 1, 1, v66);
  v67 = v141;
  sub_1D4416F54();
  v68 = v137;
  sub_1D44174F4();
  v69 = (v149 + 1);
  v70 = v149[1];
  v71 = v67;
  v72 = v68;
  v73 = v133;
  v74 = v151;
  (v70)(v71, v151);
  if (v62(v72, 1, v73) == 1)
  {
    (*(v61 + 8))(v65, v73);
    (v70)(v144, v74);
LABEL_18:
    v58 = v72;
    goto LABEL_19;
  }

  v149 = v70;
  v105 = v69;
  v106 = v143;
  (v138)(v143, v72, v73);
  v107 = v144;
  v108 = sub_1D4416F34();
  v85 = v73;
  if (v109)
  {
    v110 = *(v61 + 8);
    v110(v106, v73);
    v110(v139, v73);
    (v149)(v107, v151);
    goto LABEL_20;
  }

  v116 = v108;
  v117 = Date.formattedDateHeadersYear.getter();
  v119 = v118;
  v87 = v139;
  sub_1D4417284();
  v121 = v120;
  sub_1D4417284();
  v123 = v122;
  v97 = *(v61 + 8);
  (v97)(v106, v85);
  (v97)(v87, v85);
  (v149)(v107, v151);
  v101 = v134 - v116;
  if (__OFSUB__(v134, v116))
  {
    __break(1u);
    goto LABEL_45;
  }

  v105 = 8;
LABEL_37:
  v85 = v148;
  v87 = v153;
  sub_1D4417284();
  if (v121 > v128 || v128 >= v123)
  {

    v86 = v145;
    goto LABEL_21;
  }

  v97 = *v85;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_40:
  v130 = *(v97 + 2);
  v129 = *(v97 + 3);
  if (v130 >= v129 >> 1)
  {
    v97 = sub_1D438D6EC((v129 > 1), v130 + 1, 1, v97);
  }

  result = (*(v152 + 8))(v155, v87);
  v104 = 0;
  *(v97 + 2) = v130 + 1;
  v131 = &v97[56 * v130];
  *(v131 + 4) = v117;
  *(v131 + 5) = v119;
  v103 = v131 + 32;
  *(v103 + 2) = v105;
  *(v103 + 3) = v121;
  *(v103 + 4) = v123;
LABEL_28:
  v103[40] = v104;
  *(v103 + 6) = v101;
  *v85 = v97;
  return result;
}

uint64_t sub_1D41959D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v36 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB8);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v33 - v4;
  v6 = sub_1D44175E4();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = sub_1D44174B4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D44172C4();
  v18 = a1;
  v19 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v33 - v24;
  if (*v23 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v17, v36);
  (*(v19 + 16))(v25, v26, v17);
  if (qword_1EDE33878 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v10, qword_1EDE33880);
  swift_beginAccess();
  sub_1D417CF94(v27, v12, &qword_1EC7CABB0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D41769C4(v12, &qword_1EC7CABB0);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_1D44172A4();
    (*(v14 + 8))(v16, v13);
    (*(v19 + 8))(v25, v17);
    (*(v19 + 32))(v25, v22, v17);
  }

  v28 = v38;
  if (qword_1EDE33850 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v37, qword_1EDE33858);
  swift_beginAccess();
  sub_1D417CF94(v29, v5, &qword_1EC7CABB8);
  v30 = v39;
  if ((*(v28 + 48))(v5, 1, v39) == 1)
  {
    sub_1D41769C4(v5, &qword_1EC7CABB8);
  }

  else
  {
    v31 = v34;
    (*(v28 + 32))(v34, v5, v30);
    (*(v28 + 16))(v35, v31, v30);
    sub_1D44172B4();
    (*(v28 + 8))(v31, v30);
  }

  sub_1D41962D0();
  sub_1D4417414();
  (*(v19 + 8))(v25, v17);
  return v40;
}

uint64_t sub_1D4195F7C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void (*a4)(uint64_t), void (*a5)(char *))
{
  v9 = sub_1D4417154();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = a2(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = sub_1D44172C4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v16, a3);
  __swift_project_value_buffer(v14, a3);
  v19 = MEMORY[0x1DA6D2A80]();
  a4(v19);
  a5(v13);
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v18, v14);
  sub_1D4417144();
  return sub_1D4417294();
}

uint64_t sub_1D41961CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  __swift_allocate_value_buffer(v7, a4);
  v8 = __swift_project_value_buffer(v7, a4);
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v8, 1, 1, v9);
}

unint64_t sub_1D41962D0()
{
  result = qword_1EDE338B8;
  if (!qword_1EDE338B8)
  {
    sub_1D44172C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE338B8);
  }

  return result;
}

uint64_t ICHashWithHashKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  if (!a1)
  {
    return 1;
  }

  v9 = a1;
  result = 1;
  do
  {
    result = v9 - result + 32 * result;
    v11 = v12;
    v12 += 8;
    v9 = *v11;
  }

  while (v9);
  return result;
}

__CFString *NSStringFromICNoteSectionType(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"ICNoteSectionTypeTags";
  }

  else
  {
    return off_1E8469828[a1 - 1];
  }
}

uint64_t sub_1D4197364(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D4197384(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

_WORD *sub_1D41973D8@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

void *sub_1D4197424@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1D4197434@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D4197454@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4419C54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4197540(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D4197560(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1D419758C()
{
  type metadata accessor for LockedNotesWelcomeViewController();
  type metadata accessor for LockedNotesSwitchViewController();
  return type metadata accessor for LockedNotesLearnMoreViewController();
}

uint64_t sub_1D41975C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if ((*a1 & 0xC000000000000001) != 0)
  {
    result = sub_1D441A8C4();
  }

  else
  {
    result = *(*a1 + 16);
  }

  *a2 = result;
  return result;
}

uint64_t sub_1D4197608()
{
  v1 = sub_1D4417B14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D4197690()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D41976C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D4197700()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D4197740()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D41977F0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1D41978B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___OutlineController_isAsynchronous;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D4197938()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D4197970()
{
  v1 = sub_1D4417494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D4197A14()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D4197A4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D4197A9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D4197AD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D4197B4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4197C88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D4197CD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4197D10()
{
  v1 = sub_1D4417234();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B68);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1D4197E80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4197EB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D4197F50()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4197F90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D4197FD4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t get_enum_tag_for_layout_string_7NotesUI16AudioAssetWriterC5StateO_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D4198070()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D41981E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4198228()
{
  v1 = sub_1D4417234();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D4198308()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4198354()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419838C()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D41983F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D419845C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D4198524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D41985F4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4198634()
{
  sub_1D44192D4();
  type metadata accessor for PressGestureButtonStyle();
  swift_getWitnessTable();
  sub_1D430C4C0(&qword_1EC7C9CE8, type metadata accessor for PressGestureButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D41986F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D41987C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D4198884()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D41988BC()
{
  v1 = sub_1D4417434();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for PressGestureButtonStyle() - 8);
  v7 = *(v6 + 80);
  v11 = *(v6 + 64);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v9(v0 + v8, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CF0);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v11, v3 | v7 | 7);
}

uint64_t sub_1D4198AC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D4198B08()
{
  MEMORY[0x1DA6D8750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D4198B40()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4198B80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4198BBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D4198C04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4198C44()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D4198CB4()
{
  v1 = (_s13PrerequisitesVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*v1 + 64);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FB0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D4198DE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D4198E1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4198E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D4198F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So28ICAccountDataLockedNotesModeVIegy_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D41990EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D419915C@<X0>(_BYTE *a1@<X8>)
{
  sub_1D431FB38();
  result = sub_1D44188C4();
  *a1 = v3;
  return result;
}

uint64_t sub_1D4199200()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4199238()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA1D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA1D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA1C8);
  sub_1D4418BE4();
  sub_1D417645C(&qword_1EDE32B10, &qword_1EC7CA1C8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D41994B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D41994F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 note];
  *a2 = result;
  return result;
}

id sub_1D4199548@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExpressionFormattingEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_1D41995A0()
{
  v1 = sub_1D4419654();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D4199650()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419968C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D41996C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D4199724()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D4199784()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D41997D4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419980C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D4199854()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419988C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D41998D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D419990C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 folder];
  *a2 = result;
  return result;
}

id sub_1D419995C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPasswordProtected];
  *a2 = result;
  return result;
}

id sub_1D4199990@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSharedViaICloud];
  *a2 = result;
  return result;
}

uint64_t sub_1D41999C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4199A0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D4199B3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D4417434();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D4199BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA7B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ActivityStream.Item(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D4199D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA7B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ActivityStream.Item(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D4199E68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4199EB0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4199F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4199FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityStream(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D419A05C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityStream(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D419A118()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419A168@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4418864();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D419A1F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D4417434();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D419A29C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D4417434();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D419A340()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D419A3A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D419A3F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

id sub_1D419A448@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 note];
  *a2 = result;
  return result;
}

id sub_1D419A498@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textView];
  *a2 = result;
  return result;
}

id sub_1D419A4E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attachmentInsertionController];
  *a2 = result;
  return result;
}

id sub_1D419A538@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 suggestionsDelegate];
  *a2 = result;
  return result;
}

id sub_1D419A588@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 insertsResults];
  *a2 = result;
  return result;
}

id sub_1D419A5D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 previewBehavior];
  *a2 = result;
  return result;
}

uint64_t sub_1D419A618()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419A650()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D419A6A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D419A6F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419A728()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D419A768()
{
  v1 = sub_1D4416E44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D419A7FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1D419A84C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419AA24()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D419AA7C()
{
  MEMORY[0x1DA6D8750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419AAB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D419AAFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1D419AB48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ic_shouldHideModeButtonWhenPresented];
  *a2 = result;
  return result;
}

uint64_t sub_1D419AB90()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D419AC74()
{
  sub_1D4418614();
  sub_1D4418614();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D419AD1C()
{
  type metadata accessor for AbsoluteView();

  return swift_getWitnessTable();
}

uint64_t sub_1D419AD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7CAFF8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D419AE2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7CAFF8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D419AEF0()
{
  v1 = *(type metadata accessor for AbsoluteView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB098);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D44185F4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D419B040()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB088);
  sub_1D4418614();
  sub_1D435C12C();
  swift_getWitnessTable();
  sub_1D44185A4();
  sub_1D4418614();
  sub_1D4418614();
  sub_1D4418614();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D419B194@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D419B200()
{
  MEMORY[0x1DA6D8750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419B238()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419B280()
{
  MEMORY[0x1DA6D8750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419B2BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419B2F4()
{
  MEMORY[0x1DA6D8750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419B32C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D419B380()
{
  MEMORY[0x1DA6D8750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419B3C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB490);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1D419B454@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 range];
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1D419B4A0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1D4419C14();
  [v2 setString_];
}

uint64_t sub_1D419B504()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for HoverView() - 8);
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = (v3 + 32) & ~v3;
  (*(*(v1 - 8) + 8))(v0 + v5, v1);

  if (*(v0 + v5 + v2[13]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1D419B610()
{
  sub_1D4418614();
  sub_1D4418614();
  swift_getWitnessTable();
  sub_1D4369BB4();
  return swift_getWitnessTable();
}

id sub_1D419B6C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 note];
  *a2 = result;
  return result;
}

id sub_1D419B718@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textView];
  *a2 = result;
  return result;
}

id sub_1D419B768@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attachmentInsertionController];
  *a2 = result;
  return result;
}

id sub_1D419B7B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 scrubberController];
  *a2 = result;
  return result;
}

uint64_t sub_1D419B808()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D419B858()
{
  v1 = sub_1D4417234();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB720) - 8);
  v7 = *(v6 + 80);
  v8 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  v10 = sub_1D4419654();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v14 + 8, v3 | v7 | 7);
}

uint64_t sub_1D419BA94()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419BACC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB720) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1D4419654();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v2 | 7);
}

uint64_t sub_1D419BC68()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D419BCC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D419BD20()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D419BD68()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D419BDAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419BDE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419BE84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419BEC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419BF04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D4417434();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D419BFB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D4417434();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D419C058()
{
  v1 = sub_1D441A504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D419C12C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D4416F84();
  result = sub_1D4416F74();
  *a1 = result;
  return result;
}

uint64_t sub_1D419C15C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D419C1B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D419C20C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1D419C268()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1D419C2A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 note];
  *a2 = result;
  return result;
}

uint64_t sub_1D419C300()
{
  type metadata accessor for SizeCategoryLimitModifier();
  sub_1D4418614();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D419C3C0()
{
  type metadata accessor for SizeCategoryLimitModifier();
  swift_getWitnessTable();
  sub_1D4418C14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB908);
  sub_1D4418614();
  swift_getWitnessTable();
  sub_1D439379C();
  return swift_getWitnessTable();
}

uint64_t sub_1D419C494(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D4417434();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D419C540(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D4417434();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D419C5E4()
{
  sub_1D4418614();
  sub_1D4394744();
  return swift_getWitnessTable();
}

uint64_t sub_1D419C648()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB918);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D419C6E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1D419C7D8@<X0>(void **a1@<X1>, void *a2@<X8>)
{
  result = _s7NotesUI19AssetThumbnailCacheCySo22ICThumbnailDescriptionCSgSo0F13ConfigurationCcig_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D419C870()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419C8A8@<X0>(void *a1@<X8>)
{
  result = sub_1D4419514();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1D419C904()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419C94C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 144) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D419CA60()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419CA98()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419CADC()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D419CB24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419CB64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419CB9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 34, 7);
}

uint64_t sub_1D419CBE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419CECC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419CF04()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D419CF3C@<X0>(uint64_t *a1@<X8>)
{
  result = WidgetTimelineReloader.reloadPublisher.getter();
  *a1 = result;
  return result;
}

__n128 sub_1D419CFA0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_1D419CFAC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 objc_reloadsTimelinesAutomatically];
  *a2 = result;
  return result;
}

uint64_t sub_1D419CFF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419D090()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1D419D13C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4417C04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D419D1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4417434();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for GroupedActivityStreamItem.Activities(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D419D2D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D4417434();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for GroupedActivityStreamItem.Activities(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D419D408()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419D474()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D419D4F4()
{
  sub_1D4418614();
  sub_1D43D1470();
  return swift_getWitnessTable();
}

uint64_t sub_1D419D55C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBE40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D419D630@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D419D678(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1D419D710()
{

  if (*(v0 + 64))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D419D77C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1DA6D4230]();
  *a1 = result;
  return result;
}

uint64_t sub_1D419D8AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D419D91C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419D95C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBED0);
  sub_1D417645C(&qword_1EC7CBEE8, &qword_1EC7CBED0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D419D9F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CBEF8);
  sub_1D43D6630();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_1D419DB04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D419DB14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D419DB88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1D419DBC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 note];
  *a2 = result;
  return result;
}

uint64_t sub_1D419DC10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4418804();
  *a1 = result;
  return result;
}

uint64_t sub_1D419DC90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC148);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D419DD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA7B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ActivityStream.Section(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D419DDFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA7B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ActivityStream.Section(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D419DF68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA640);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1D419E0AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA640);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1D419E1F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D419E2AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D419E35C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D4417434();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAFB8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D419E48C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D4417434();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAFB8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D419E5BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D4417434();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D419E6EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D4417434();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D419E820(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1D441A374();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1D4417434();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1D419E950(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_1D441A374();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D4417434();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D419EA78()
{
  sub_1D4418B94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAA10);
  sub_1D4418B94();
  sub_1D4418B94();
  sub_1D4419204();
  sub_1D4418614();
  swift_getWitnessTable();
  sub_1D417645C(&qword_1EC7CAA08, &qword_1EC7CAA10);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D419EC1C()
{
  if (*(v0 + 64))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1D419ECD4()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D419ED28()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419ED64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D419ED9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

uint64_t sub_1D419EDDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419EE14()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419EE54()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D419EE9C()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D419EEEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D419EF2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419F014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC648);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D419F0D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC648);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D419F184()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D419F1CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419F204()
{
  v1 = sub_1D4417884();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 40))
  {
  }

  v5 = (v3 + 56) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1D419F314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4417884();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D419F3D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D4417884();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D419F558@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D4418884();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D419F5BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D44187E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D419F610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4418734();
  *a1 = result;
  return result;
}

uint64_t sub_1D419F6B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419F6EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D419F740()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419F778()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D419F7C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

id sub_1D419F810@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 note];
  *a2 = result;
  return result;
}

uint64_t sub_1D419F860()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419F8A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D419F900()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419F940()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D419F988()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D419F9C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D419FA00()
{

  return MEMORY[0x1EEE6BDD0](v0, 34, 7);
}

void *sub_1D419FA50(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1D419FA9C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1D419FAA8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1D41A09A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL ICCurrentAppearanceType()
{
  v0 = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  v1 = [v0 userInterfaceStyle];

  return v1 == 2;
}

void sub_1D41A62C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41A67D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41A7720(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41A7CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41A840C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1D41A8B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41A8DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41A99F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41AA28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41AAD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1D41AB838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D41AC7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D41AE560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41AEACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1D41AEE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41AF614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41B1FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ICGatherInterestingSubviewsFromViewInArray(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (ICGatherInterestingSubviewsFromViewInArray_onceToken != -1)
  {
    ICGatherInterestingSubviewsFromViewInArray_cold_1();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = ICGatherInterestingSubviewsFromViewInArray_classes;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:v3];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [v3 subviews];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        ICGatherInterestingSubviewsFromViewInArray(*(*(&v15 + 1) + 8 * j), v4);
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

uint64_t __ICGatherInterestingSubviewsFromViewInArray_block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = NSClassFromString(&cfstr_Pdfview.isa);
  v2 = NSClassFromString(&cfstr_Pdfdocumentvie.isa);
  v3 = NSClassFromString(&cfstr_PaperkitPaperd.isa);
  ICGatherInterestingSubviewsFromViewInArray_classes = [v0 setWithObjects:{v1, v2, v3, NSClassFromString(&cfstr_PaperkitAnycan.isa), 0}];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D41B5BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41B6590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_1D41B88FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41B8DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ICNotesContainerAccessibilityLabelForViewMode(uint64_t a1)
{
  v2 = __ICLocalizedFrameworkString_impl(@"My Notes", @"My Notes", 0, 1);
  v3 = v2;
  if (a1 == 1)
  {
    v4 = @" as Gallery";
    goto LABEL_5;
  }

  if (!a1)
  {
    v4 = @" as List";
LABEL_5:
    v5 = [v2 stringByAppendingString:v4];
    goto LABEL_7;
  }

  v5 = v2;
LABEL_7:
  v6 = v5;

  return v6;
}

id ICNotesContainerAccessibilityIdentifierForViewMode(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 == 1)
  {
    v5 = @"_asGallery";
    goto LABEL_5;
  }

  if (!a2)
  {
    v5 = @"_asList";
LABEL_5:
    v6 = [v3 stringByAppendingString:v5];
    goto LABEL_7;
  }

  v6 = v3;
LABEL_7:
  v7 = v6;

  return v7;
}

void sub_1D41BA848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromICFolderListSectionType(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"ICFolderListSectionTypeSystem";
  }

  else
  {
    return off_1E84696A8[a1 - 1];
  }
}

void sub_1D41BBEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ICActivityWaveformProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL VMAudio::ICRingBuffer<float>::allocate(uint64_t a1, int a2, int a3, void *a4)
{
  VMAudio::ICRingBuffer<float>::deallocate(a1);
  v8 = (*MEMORY[0x1E69E9AC8] + 4 * a2 - 1) & -*MEMORY[0x1E69E9AC8];
  *(a1 + 32) = v8 >> 2;
  v9 = malloc_type_calloc(3 * a3, 8uLL, 0x80040B8603338uLL);
  *a1 = &v9[8 * a3];
  *(a1 + 8) = &v9[16 * a3];
  *(a1 + 16) = v9;
  if (a3 < 1)
  {
    return 1;
  }

  **(a1 + 16) = allocatePageAlignedMirroredMemoryRetrying(v8, 10, a4);
  v10 = **(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a3;
    v13 = a3 - 1;
    while (1)
    {
      *(*a1 + 8 * v11) = v10;
      *(*(a1 + 8) + 8 * v11) = *(*(a1 + 16) + 8 * v11);
      *(a1 + 36) = v11 + 1;
      if (v13 == v11)
      {
        return v11 + 1 >= v12;
      }

      *(*(a1 + 16) + 8 * v11 + 8) = allocatePageAlignedMirroredMemoryRetrying(v8, 10, a4);
      v10 = *(*(a1 + 16) + 8 * v11++ + 8);
      if (!v10)
      {
        v14 = v11 >= v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = 0;
LABEL_9:
    VMAudio::ICRingBuffer<float>::deallocate(a1);
  }

  return v14;
}

double VMAudio::ICRingBuffer<float>::deallocate(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*(a1 + 36) >= 1)
    {
      freeMirroredMemory();
    }

    free(v2);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  atomic_store(0, (a1 + 40));
  return result;
}

uint64_t VMAudio::ICRingBuffer<float>::advanceWritePointer(uint64_t result, unsigned int a2)
{
  v2 = *(result + 36);
  v3 = (*(result + 24) + a2) % *(result + 32);
  *(result + 24) = v3;
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 8 * v2;
    do
    {
      *(*(result + 8) + v4) = *(*(result + 16) + v4) + 4 * v3;
      v4 += 8;
    }

    while (v5 != v4);
  }

  atomic_fetch_add((result + 40), a2);
  v6 = atomic_load((result + 40));
  if (v6 > *(result + 32))
  {
    VMAudio::ICRingBuffer<float>::advanceWritePointer();
  }

  return result;
}

double VMRollingSumBuffer::add(VMRollingSumBuffer *this, float a2)
{
  v2 = *(this + 7);
  v3 = *(this + 6);
  if (v2 >= v3)
  {
    v4 = *(this + 4);
    v5 = *this;
    v6 = *(this + 5) - *(*this + 4 * v4);
  }

  else
  {
    *(this + 7) = v2 + 1;
    v4 = *(this + 4);
    v5 = *this;
    v6 = *(this + 5);
  }

  *(v5 + 4 * v4) = a2;
  result = v6 + a2;
  *(this + 5) = result;
  *(this + 4) = (v4 + 1) % v3;
  return result;
}

uint64_t VMAudio::ICRingBuffer<float>::advanceReadPointer(uint64_t result, int a2)
{
  v2 = (*(result + 28) + a2) % *(result + 32);
  *(result + 28) = v2;
  v3 = *(result + 36);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 8 * v3;
    do
    {
      *(*result + v4) = *(*(result + 16) + v4) + 4 * v2;
      v4 += 8;
    }

    while (v5 != v4);
  }

  atomic_fetch_add((result + 40), -a2);
  v6 = atomic_load((result + 40));
  if ((v6 & 0x80000000) != 0)
  {
    VMAudio::ICRingBuffer<float>::advanceReadPointer();
  }

  return result;
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D41BCAF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8468B90, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void sub_1D41BCEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41BDCD0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1D41BFE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41C0150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41C0780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41C129C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Unwind_Resume(a1);
}

void sub_1D41C1DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41C2128(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1D41C25AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1D41C2B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41C2F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41C3D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41C539C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1D41C5ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D41C8364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41C9B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ICContentSizeCategorySystemPreference()
{
  v0 = [MEMORY[0x1E69DC8C0] system];
  v1 = [v0 preferredContentSizeCategory];

  return v1;
}

id ICContentSizeCategories()
{
  v8[12] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDC88];
  v8[0] = *MEMORY[0x1E69DDC68];
  v8[1] = v0;
  v1 = *MEMORY[0x1E69DDC70];
  v8[2] = *MEMORY[0x1E69DDC78];
  v8[3] = v1;
  v2 = *MEMORY[0x1E69DDC58];
  v8[4] = *MEMORY[0x1E69DDC60];
  v8[5] = v2;
  v3 = *MEMORY[0x1E69DDC40];
  v8[6] = *MEMORY[0x1E69DDC50];
  v8[7] = v3;
  v4 = *MEMORY[0x1E69DDC30];
  v8[8] = *MEMORY[0x1E69DDC38];
  v8[9] = v4;
  v5 = *MEMORY[0x1E69DDC20];
  v8[10] = *MEMORY[0x1E69DDC28];
  v8[11] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:12];

  return v6;
}

NSComparisonResult ICContentSizeCategoryCompareSystemPreferenceToCategory(void *a1)
{
  v1 = a1;
  v2 = ICContentSizeCategorySystemPreference();
  v3 = UIContentSizeCategoryCompareToCategory(v2, v1);

  return v3;
}

NSString *ICContentSizeCategoryMax(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (UIContentSizeCategoryCompareToCategory(v4, v3) <= NSOrderedSame)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

NSString *ICContentSizeCategoryMin(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (UIContentSizeCategoryCompareToCategory(v4, v3) <= NSOrderedSame)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

id ICContentSizeCategoryMaxSystemPreferenceAnd(void *a1)
{
  v1 = a1;
  v2 = ICContentSizeCategorySystemPreference();
  v3 = ICContentSizeCategoryMax(v2, v1);

  return v3;
}

id ICContentSizeCategoryMinSystemPreferenceAnd(void *a1)
{
  v1 = a1;
  v2 = ICContentSizeCategorySystemPreference();
  v3 = ICContentSizeCategoryMin(v2, v1);

  return v3;
}

uint64_t ICContentSizeCategoryStepsBetweenCategories(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ICContentSizeCategories();
  v6 = [v5 indexOfObject:v3];

  v7 = [v5 indexOfObject:v4];
  return v6 - v7;
}

void sub_1D41CA8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41CBDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41CC09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *ICExpansionStateItemKey(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"ICExpansionStateItemTypeUnknown";
  }

  else
  {
    return off_1E8469E28[a1];
  }
}

uint64_t ICExpansionStateItemTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ICExpansionStateItemTypeObjectID"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"ICExpansionStateItemTypeSectionIdentifier"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"ICExpansionStateItemTypePersistentIdentifier"])
  {
    v2 = 2;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

void sub_1D41CE694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41CF904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v67 - 160), 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x380], 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41D1420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41D2234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41D30D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ICLocalizedCapitalizationStyleForView(void *a1)
{
  v1 = ICKeyboardLanguageForBaseView(a1);
  v2 = [&unk_1F4FC4398 objectForKey:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 1;
  }

  v5 = __ICLocalizedFrameworkString_impl(@"default", @"default", 0, 1);
  if ([v5 caseInsensitiveCompare:@"default"])
  {
    if ([v5 caseInsensitiveCompare:@"all"])
    {
      if ([v5 caseInsensitiveCompare:@"word"])
      {
        if ([v5 caseInsensitiveCompare:@"none"])
        {
          if (![v5 caseInsensitiveCompare:@"sentence"])
          {
            v4 = 2;
          }
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 3;
    }
  }

  return v4;
}

id ICKeyboardLanguageForBaseView(void *a1)
{
  v1 = a1;
  v2 = [v1 textInputMode];
  if (v2)
  {
    v3 = [v1 textInputMode];
    v4 = [v3 primaryLanguage];
    v5 = [v4 isEqualToString:@"dictation"];

    if (v5)
    {
      v2 = 0;
    }

    else
    {
      v6 = [v1 textInputMode];
      v2 = [v6 primaryLanguage];
    }
  }

  return v2;
}

void sub_1D41D3DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41D3F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41D424C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41D77F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41D79A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41D8064(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D41D8B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41D9954(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x248]);
  objc_destroyWeak(&STACK[0x258]);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromNotePreventLockReason(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"None";
  }

  else
  {
    return off_1E846A7D0[a1 - 1];
  }
}

void sub_1D41DB8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41DBFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D41DC30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41DECBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41DF3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41DF89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41E01AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41E09B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41E1F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D41E22B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D41E2528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D41E2964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41E2B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41E30D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D41E3EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1D41E4AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ICAccessibilityPerformBlockOnMainThreadAfterDelay(void *a1, double a2)
{
  v3 = MEMORY[0x1E69B7A60];
  v4 = a1;
  v5 = [v3 appLifeCycleHandler];
  [v5 dispatchAfter:0 stringIdentifier:v4 withBlock:a2];
}

void ICAccessibilityPostAnnouncementNotificationWithPriority(void *a1, void *a2, uint64_t a3)
{
  v7 = a1;
  v5 = a2;
  v6 = +[ICAccessibility sharedInstance];
  if ([v6 icaxRespondsToSelector:sel_postAnnouncement_withSender_priority_ fromExtrasProtocol:&unk_1F4FF1290])
  {
    [v6 postAnnouncement:v5 withSender:v7 priority:a3];
  }
}

uint64_t ICAccessibilityNeedsAccessibilityElements()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v5 = 0;
  performBlockOnMainThreadAndWait();
  v0 = *(v3 + 24);
  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1D41E9780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ICAccessibilityNeedsAccessibilityElements_block_invoke(uint64_t a1)
{
  v2 = +[ICAccessibility sharedInstance];
  if ([v2 icaxRespondsToSelector:sel_needsAccessibilityElements fromExtrasProtocol:&unk_1F4FF1290])
  {
    *(*(*(a1 + 32) + 8) + 24) = [v2 needsAccessibilityElements];
  }
}

id __ICAccessibilityStringForVariables(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  objc_opt_class();
  objc_opt_class();
  v11 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F4F94F00];
  if (objc_opt_isKindOfClass())
  {
    v12 = v10;
  }

  else
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v12 = [v10 string];
  }

  v13 = v12;
LABEL_7:
  if ([v13 length])
  {
    [v11 appendString:v13];
  }

  v20 = &a9;
  if (a1)
  {
    v14 = @", ";
  }

  else
  {
    v14 = @" ";
  }

  while (1)
  {
    v15 = v20++;
    v16 = *v15;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
LABEL_16:
      v18 = v17;
      goto LABEL_18;
    }

    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 string];
      goto LABEL_16;
    }

    v18 = 0;
LABEL_18:
    if (![v18 length])
    {
      goto LABEL_23;
    }

    if ([v18 isEqualToString:@"__ICAccessibilityStringForVariablesSentinel"])
    {
      break;
    }

    if ([v11 length])
    {
      [v11 appendString:v14];
    }

    [v11 appendString:v18];
LABEL_23:
  }

  return v11;
}

void sub_1D41EA26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41EDD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 40));
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 136), 8);
  objc_destroyWeak((v17 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41F3D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ICHashWithObject(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v2 = ICCheckedDynamicCast();
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 hash];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v37;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v5 = ICHashWithObject(*(*(&v36 + 1) + 8 * i)) - v5 + 32 * v5;
        }

        v8 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v8);
    }

LABEL_36:

    goto LABEL_37;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v11 = ICCheckedDynamicCast();
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v5 = [v13 hash];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v11;
    v14 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v6);
          }

          v18 = *(*(&v36 + 1) + 8 * j);
          v19 = [v6 objectForKeyedSubscript:{v18, v36}];
          v20 = ICHashWithObject(v18);
          v5 = ICHashWithObject(v19) + v5 - v20 + 32 * v20;
        }

        v15 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v15);
    }

    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v21 = ICCheckedDynamicCast();
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v5 = [v23 hash];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v21;
    v24 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v37;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v6);
          }

          v5 += ICHashWithObject(*(*(&v36 + 1) + 8 * k));
        }

        v25 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v25);
    }

    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v28 = ICCheckedDynamicCast();
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v5 = [v30 hash];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v28;
    v31 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v37;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(v6);
          }

          v5 = ICHashWithObject(*(*(&v36 + 1) + 8 * m)) - v5 + 32 * v5;
        }

        v32 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v32);
    }

    goto LABEL_36;
  }

  v5 = [v1 hash];
  if (v5)
  {
    goto LABEL_38;
  }

  v6 = [MEMORY[0x1E695DFB0] null];
  v5 = [v6 hash];
LABEL_37:

LABEL_38:
  return v5;
}

void sub_1D41F704C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1D41F7BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41F8008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41F9FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41FA45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D41FAADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41FAFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D41FE40C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

__CFString *ICNotesImporterBundleIdentifier()
{
  if (ICIsSandboxModeEnabled())
  {
    v0 = @"com.apple.mobilenotesdebug.NotesImporter";
  }

  else
  {
    v0 = @"com.apple.mobilenotes.NotesImporter";
  }

  return v0;
}

void sub_1D4200844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1D42014F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42017B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4201A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4201DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4201F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4202118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4203774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4203D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

vm_address_t allocatePageAlignedMirroredMemoryRetrying(vm_size_t a1, int a2, void *a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = a1 - 1;
    v8 = 2 * a1;
    v9 = MEMORY[0x1E69E9A60];
    v30 = *MEMORY[0x1E696A578];
    v10 = 1;
    while (1)
    {
      if (((v7 + *MEMORY[0x1E69E9AC8]) & -*MEMORY[0x1E69E9AC8]) != a1)
      {
        allocatePageAlignedMirroredMemoryRetrying_cold_1();
      }

      address = 0;
      v11 = vm_allocate(*v9, &address, v8, 1);
      if (v11)
      {
        break;
      }

      v14 = MEMORY[0x1DA6D8810](*v9, address + a1, a1);
      if (v14)
      {
        v15 = v14;
        MEMORY[0x1DA6D8810](*v9, address, a1);
        v13 = @"VMICRingBuffer vm_deallocate failed";
        v12 = v15;
        goto LABEL_10;
      }

      *cur_protection = 0;
      target_address = address + a1;
      v16 = vm_remap(*v9, &target_address, a1, 0, 0, *v9, address, 0, &cur_protection[1], cur_protection, 1u);
      v17 = address;
      if (v16)
      {
        v18 = v16;
        MEMORY[0x1DA6D8810](*v9, address, a1);
        v13 = @"VMICRingBuffer vm_remap failed";
        v12 = v18;
        goto LABEL_10;
      }

      if (target_address != address + a1)
      {
        MEMORY[0x1DA6D8810](*v9, target_address, a1);
        MEMORY[0x1DA6D8810](*v9, address, a1);
        v24 = MEMORY[0x1E696ABC0];
        v34 = v30;
        v35[0] = @"VMICRingBuffer vm_remap failed to map to correct offset";
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        v25 = v29 = a3;
        v19 = [v24 errorWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:0 userInfo:v25];
        v26 = v19;

        a3 = v29;
        goto LABEL_11;
      }

      v19 = 0;
LABEL_12:
      v21 = v19;

      v22 = v17 == 0;
      if (!v17)
      {
        v6 = v21;
        if (v10++ < a2)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v12 = v11;
    v13 = @"VMICRingBuffer vm_allocate failed";
LABEL_10:
    v19 = machError(v13, v12);
    v20 = v19;
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v17 = 0;
  v21 = 0;
  v22 = 1;
LABEL_19:
  if (a3 && v22)
  {
    v27 = v21;
    *a3 = v21;
  }

  return v17;
}

void *allocateMultiDimensionalBuffer(int a1, int a2, uint64_t a3)
{
  v5 = a2;
  result = malloc_type_malloc((a2 * a3 + 8) * a1, 0x100004077774924uLL);
  if (a1 >= 1)
  {
    v7 = &result[a1];
    v8 = result;
    v9 = a1;
    do
    {
      *v8++ = v7;
      v7 += a3 * v5;
      --v9;
    }

    while (v9);
  }

  return result;
}

id machError(void *a1, mach_error_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = [v3 stringWithFormat:@"%@ - %s", v4, mach_error_string(a2)];

  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A5A0];
  v11 = *MEMORY[0x1E696A278];
  v12[0] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v6 errorWithDomain:v7 code:a2 userInfo:v8];

  return v9;
}

double ICVMTimeRangeByConvertingToValidRange(double a1, double a2, double a3)
{
  v3 = fabs(a2 + 1.79769313e308);
  if (fabs(a1 + -1.79769313e308) > 0.00000011920929 || v3 > 0.00000011920929)
  {
    v5 = fabs(a2 + -1.79769313e308);
    if (fabs(a1 + 1.79769313e308) > 0.00000011920929 || v5 > 0.00000011920929)
    {
      return a1;
    }
  }

  return a3;
}

double ICVMTimeRangeDeltaWithFractionalPrecision(uint64_t a1, double a2, double a3)
{
  v3 = a3 - a2;
  if (a1 >= 1)
  {
    v4 = __exp10(a1);
    v5 = v3 * v4;
    return roundf(v5) / v4;
  }

  return v3;
}

double ICVMTimeRangeConstrainTime(double result, double a2, double a3)
{
  if (a2 >= a3)
  {
    a2 = a3;
  }

  if (result < a2)
  {
    return a2;
  }

  return result;
}

double ICVMTimeRangeIntersectTimeRange(double result, double a2, double a3, double a4)
{
  if (result < a3)
  {
    result = a3;
  }

  if (a2 >= a4)
  {
    a2 = a4;
  }

  if (a2 < result)
  {
    return 1.79769313e308;
  }

  return result;
}

id NSStringFromICVMTimeRange(double a1, double a2)
{
  v7 = 0;
  if (a2 == 1.79769313e308)
  {
    v3 = @"MAX";
  }

  else if (a2 == -1.79769313e308)
  {
    v3 = @"-MAX";
  }

  else
  {
    v3 = _ICVMTimeRangeTimeDescription(&v7, a2);
  }

  if (a1 == 1.79769313e308)
  {
    v4 = @"MAX";
  }

  else if (a1 == -1.79769313e308)
  {
    v4 = @"-MAX";
  }

  else
  {
    v4 = _ICVMTimeRangeTimeDescription(&v7, a1);
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ - %@]", v4, v3];

  return v5;
}

id _ICVMTimeRangeTimeDescription(void *a1, double a2)
{
  v2 = a2;
  v3 = a2 - (60 * (a2 / 60));
  v4 = (v2 / 3600);
  v5 = (v2 / 60 - 60 * v4);
  if (v2 > 3599)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!a1)
  {
    if (v5 <= 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%02d:%05.2f", v5, *&v3, v10];
    goto LABEL_18;
  }

  if (*a1 == 3)
  {
LABEL_6:
    *a1 = 3;
LABEL_7:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%02d:%02d:%05.2f", v4, v5, *&v3];
    goto LABEL_18;
  }

  if (v5 > 0 || *a1 == 2)
  {
    *a1 = 2;
    goto LABEL_16;
  }

  *a1 = 1;
LABEL_17:
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%g", *&v3, v9, v10];
  v7 = LABEL_18:;

  return v7;
}

void ICVMTimeRangeEncodeWithKey(void *a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = a1;
  v9 = [v7 stringByAppendingString:@".beginTime"];
  [v8 encodeDouble:v9 forKey:a3];

  v10 = [v7 stringByAppendingString:@".endTime"];

  [v8 encodeDouble:v10 forKey:a4];
}

double ICVMTimeRangeDecodeWithKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 stringByAppendingString:@".beginTime"];
  [v4 decodeDoubleForKey:v5];
  v7 = v6;

  v8 = [v3 stringByAppendingString:@".endTime"];

  [v4 decodeDoubleForKey:v8];
  return v7;
}

CMTimeRange *CMTimeRangeFromICVMTimeRange@<X0>(CMTimeRange *a1@<X8>, Float64 a2@<D0>, double a3@<D1>)
{
  CMTimeMakeWithSeconds(&start, a2, kCMDefaultTimeScale);
  v6 = (a3 - a2) * 10000.0;
  CMTimeMakeWithSeconds(&v8, roundf(v6) / 10000.0, kCMDefaultTimeScale);
  return CMTimeRangeMake(a1, &start, &v8);
}

double ICVMTimeRangeFromCMTimeRange(uint64_t a1)
{
  v4 = *a1;
  Seconds = CMTimeGetSeconds(&v4);
  v4 = *(a1 + 24);
  CMTimeGetSeconds(&v4);
  return Seconds;
}

void sub_1D420BB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D420BEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *ICSymbolImageNameForICFilterType(uint64_t a1)
{
  v1 = @"number";
  if (a1 > 4)
  {
    v2 = @"quicknote";
    v3 = @"quicknote";
    v4 = @"lock.fill";
    if (a1 != 10)
    {
      v4 = @"number";
    }

    if (a1 != 9)
    {
      v3 = v4;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    if (a1 == 7)
    {
      v1 = @"folder.fill";
    }

    if (a1 == 6)
    {
      v1 = @"paperclip";
    }

    if (a1 == 5)
    {
      v1 = @"checklist";
    }

    if (a1 <= 7)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }

  if (a1 > 1)
  {
    v6 = @"pencil";
    if (a1 == 4)
    {
      v1 = @"at";
    }

    if (a1 == 3)
    {
      v1 = @"person.crop.circle.badge.checkmark";
    }

    v7 = a1 == 2;
    goto LABEL_25;
  }

  if (a1 != -1)
  {
    v7 = a1 == 1;
    v6 = @"calendar";
LABEL_25:
    if (v7)
    {
      return v6;
    }

    else
    {
      return v1;
    }
  }

  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    ICSymbolImageNameForICFilterType_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  return &stru_1F4F94F00;
}

id ICLocalizedStringForICFilterType(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          v1 = @"Quick Notes";
          break;
        case 9:
          v1 = @"Pinned";
          break;
        case 10:
          v1 = @"Locked";
          break;
        default:
          goto LABEL_29;
      }
    }

    else if (a1 == 5)
    {
      v1 = @"Checklists";
    }

    else if (a1 == 6)
    {
      v1 = @"Attachments";
    }

    else
    {
      v1 = @"Folders";
    }

    goto LABEL_28;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = @"Edited";
    }

    else if (a1 == 3)
    {
      v1 = @"Shared";
    }

    else
    {
      v1 = @"Mentions";
    }

LABEL_28:
    a1 = __ICLocalizedFrameworkString_impl(v1, v1, 0, 1);
    goto LABEL_29;
  }

  if (a1 != -1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_29;
      }

      v1 = @"Created";
    }

    else
    {
      v1 = @"Tags";
    }

    goto LABEL_28;
  }

  v2 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    ICLocalizedStringForICFilterType_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  a1 = &stru_1F4F94F00;
LABEL_29:

  return a1;
}

id ICTintColorForICFilterType(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (a1 == -1)
      {
        v1 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
        {
          ICTintColorForICFilterType_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
        }
      }

      else if (a1)
      {
        if (a1 == 1)
        {
          a1 = [MEMORY[0x1E69DC888] systemRedColor];
        }

        goto LABEL_22;
      }

LABEL_21:
      a1 = [MEMORY[0x1E69DC888] ICTintColor];
      goto LABEL_22;
    }

    if (a1 == 2)
    {
      a1 = [MEMORY[0x1E69DC888] systemTealColor];
      goto LABEL_22;
    }

    if (a1 == 3)
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemPurpleColor];
    }

    a1 = LABEL_15:;
    goto LABEL_22;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      [MEMORY[0x1E69DC888] ic_colorWith256Red:139.0 green:165.0 blue:194.0 unitAlpha:1.0];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemGrayColor];
    }

    goto LABEL_15;
  }

  if ((a1 - 7) < 2)
  {
    goto LABEL_21;
  }

  if (a1 == 9)
  {
    a1 = [MEMORY[0x1E69DC888] systemOrangeColor];
  }

  else if (a1 == 10)
  {
    a1 = [MEMORY[0x1E69DC888] systemIndigoColor];
  }

LABEL_22:

  return a1;
}

__CFString *ICNoteHTMLConverterBundleIdentifier()
{
  if (ICIsSandboxModeEnabled())
  {
    v0 = @"com.apple.mobilenotesdebug.HTMLConverter";
  }

  else
  {
    v0 = @"com.apple.mobilenotes.HTMLConverter";
  }

  return v0;
}

void sub_1D420D578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D420DB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D420F4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D420FA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D420FCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D420FF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42109B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42129BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D421663C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4217664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D421A050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D421AC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D421AFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D421B620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_1D421BB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D421BDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D421C480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringForSymbolImageNameFromICStyleBIUS(char a1)
{
  v1 = @"italic";
  v2 = @"underline";
  v3 = @"strikethrough";
  v4 = @"highlighter";
  if ((a1 & 0x10) == 0)
  {
    v4 = @"circle.fill";
  }

  if ((a1 & 8) == 0)
  {
    v3 = v4;
  }

  if ((a1 & 4) == 0)
  {
    v2 = v3;
  }

  if ((a1 & 2) == 0)
  {
    v1 = v2;
  }

  if (a1)
  {
    return @"bold";
  }

  else
  {
    return v1;
  }
}

void sub_1D421EBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42208E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4223A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4224770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42262F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4227434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42290B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4229488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4229620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42297B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4229950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _noteStyleSheet()
{
  v0 = [MEMORY[0x1E696AD60] string];
  v1 = [MEMORY[0x1E69DC888] ic_notesDefaultTextColor];
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0;
  v13 = 0.0;
  [v1 getRed:&v15 green:&v14 blue:&v13 alpha:&v12];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rgba(%.0f, %.0f, %.0f, %.2f)", v15 * 255.0, v14 * 255.0, v13 * 255.0, v12];
  v3 = [MEMORY[0x1E69DC888] ic_notesAppYellowColor];
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0;
  v9 = 0.0;
  [v3 getRed:&v11 green:&v10 blue:&v9 alpha:&v8];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rgba(%.0f, %.0f, %.0f, %.2f)", v11 * 255.0, v10 * 255.0, v9 * 255.0, v8];
  [v0 appendString:@":root {\n"];
  [v0 appendFormat:@"\t--accent-color: %@;\n", v4];
  [v0 appendString:@"}\n"];
  [v0 appendString:@"html { height: 100%; }\n"];
  [v0 appendString:@"body {\n"];
  [v0 appendString:@"\tmin-height: 100%;\n"];
  [v0 appendString:@"\tfont: -apple-system-body;\n"];
  if (([MEMORY[0x1E69DC938] ic_isVision] & 1) == 0)
  {
    [v0 appendFormat:@"\tcolor: %@;\n", v2];
  }

  [v0 appendString:@"\tword-wrap: break-word;\n"];
  [v0 appendString:@"\t-khtml-nbsp-mode: space;\n"];
  [v0 appendString:@"\t-khtml-line-break: after-white-space;\n"];
  [v0 appendFormat:@"\tmargin-left: %dpx;\n", 20];
  [v0 appendFormat:@"\tmargin-right: %dpx;\n", 20];
  [v0 appendFormat:@"\tpadding-top: %dpx;\n", 10];
  [v0 appendFormat:@"\tpadding-bottom: %dpx;\n", 10];
  [v0 appendString:{@"\t-webkit-composition-fill-color: rgba(130, 98, 83, 0.1);\n"}];
  [v0 appendString:{@"\t-webkit-composition-frame-color: rgba(191, 107, 82, 0.5);\n"}];
  [v0 appendString:@"\t-webkit-text-size-adjust: none;\n"];
  [v0 appendString:@"}\n"];
  [v0 appendString:@"a {\n"];
  [v0 appendString:@"text-decoration: underline;\n"];
  [v0 appendFormat:@"color: %@;\n", v4];
  [v0 appendString:@"}\n"];
  [v0 appendString:@"span.tab { \nwhite-space:pre;\n}\n"];
  [v0 appendString:{@"ul, ol {\n\tmargin: 0;\n\tpadding-left: 2em;\n}\nul ul, ol ol {\n\tpadding-left: 1em;\n}\nul.Apple-dash-list, ul.Apple-dash-list ul {\n\tlist-style-type: none;\n}\n\tul.Apple-dash-list li {\n\twhite-space: pre-wrap;\n}\nul.Apple-dash-list li:before {\n\tcontent: \\2013;\n\tposition: absolute;\n\tmargin: 0 -1.25em;\n}\n"}];
  if (_noteStyleSheet_onceToken != -1)
  {
    _noteStyleSheet_cold_1();
  }

  v5 = *&_noteStyleSheet_imageSize_0;
  v6 = *&_noteStyleSheet_imageSize_1;
  [v0 appendString:@"object {\n"];
  [v0 appendFormat:@"\tbackground-image: url(file://%@);\n", _noteStyleSheet_paperclipPath];
  [v0 appendFormat:@"\tbackground-size: %dpx %dpx;\n", v5, v6];
  [v0 appendFormat:@"\tmax-width: %dpx;\n", v5];
  [v0 appendFormat:@"\tmin-width: %dpx;\n", v5];
  [v0 appendFormat:@"\tmax-height: %dpx;\n", v6];
  [v0 appendFormat:@"\tmin-height: %dpx;\n", v6];
  [v0 appendString:@"\tbackground-repeat: no-repeat"];
  [v0 appendString:@"}\n"];
  [v0 appendString:@"img {\n"];
  [v0 appendString:@"\tvertical-align: top;\n"];
  [v0 appendString:@"\tmax-width: 100%;\n"];
  [v0 appendString:@"}\n"];
  [v0 appendString:@".-webkit-dictation-result-placeholder {\n"];
  [v0 appendString:@"\tvertical-align: baseline !important;\n"];
  [v0 appendString:@"}\n"];
  [v0 appendString:@"a:link {\n"];
  [v0 appendString:@"\tcolor: var(--accent-color) !important;\n"];
  [v0 appendString:@"\ttext-decoration-color: var(--accent-color) !important;\n"];
  [v0 appendString:@"\t-apple-color-filter: none;\n"];
  [v0 appendString:@"}\n"];
  [v0 appendString:@"a.Apple-detected:link {\n"];
  [v0 appendFormat:@"\tcolor: %@ !important;\n", v2];
  [v0 appendFormat:@"\ttext-decoration-color: rgba(0, 0, 0, 0.25) !important;\n"];
  [v0 appendString:@"}\n"];
  if (([MEMORY[0x1E69DC938] ic_isVision] & 1) == 0)
  {
    [v0 appendString:@"@media (prefers-color-scheme: dark) {\n"];
    [v0 appendString:{@"\tbody, a.Apple-detected:link {\n"}];
    [v0 appendString:@"\t\t-apple-color-filter: apple-invert-lightness();\n"];
    [v0 appendString:@"\t}\n"];
  }

  [v0 appendString:@"}\n"];

  return v0;
}

void sub_1D42302DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D42323BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___noteStyleSheet_block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  v10 = [v0 stringWithFormat:@"attachClip@%1.0fx", v2];

  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 pathForResource:v10 ofType:@"png"];
  v5 = _noteStyleSheet_paperclipPath;
  _noteStyleSheet_paperclipPath = v4;

  v6 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v7 = [v6 initWithContentsOfFile:_noteStyleSheet_paperclipPath];
  [v7 size];
  _noteStyleSheet_imageSize_0 = v8;
  _noteStyleSheet_imageSize_1 = v9;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1D4234C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4235B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v32 - 160), 8);
  _Block_object_dispose((v32 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4235FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1D423680C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4237704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D423AF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D423CF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D423DFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1D423E5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D423E7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D423F304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D423FE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42409C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4240F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42411CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42418B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4241DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4242264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1D42430C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4243498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42446C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_1D424653C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D4247940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D424943C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D424C178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D424CEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1D4250520(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1D42518A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4253AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4253F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4254488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4256B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4258164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D425B124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 176));
  _Unwind_Resume(a1);
}

void sub_1D425C894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1D425CBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D425F284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4261BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4261DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4261F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D426BEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v10 + 56));
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 104), 8);
  objc_destroyWeak((v11 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D426C190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1D426F870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4270670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4270DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_1D427122C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4271E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromICAttachmentType(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_1E846D3C0[a1];
  }
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4274E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ICAccessibilitySystemDarkenedColor(void *a1)
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0.0;
  [a1 getHue:&v6 saturation:&v5 brightness:&v4 alpha:&v3];
  v1 = [MEMORY[0x1E69DC888] colorWithHue:v6 saturation:v5 brightness:v4 * 0.8 alpha:v3];

  return v1;
}

id ICAccessibilitySystemBrightenedColor(void *a1)
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0.0;
  [a1 getHue:&v6 saturation:&v5 brightness:&v4 alpha:&v3];
  v1 = [MEMORY[0x1E69DC888] colorWithHue:v6 saturation:v5 brightness:v4 * 1.2 alpha:v3];

  return v1;
}

id ICAccessibilitySystemAdjustedColorForInterfaceStyle(void *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    ICAccessibilitySystemBrightenedColor(a1);
  }

  else
  {
    ICAccessibilitySystemDarkenedColor(a1);
  }
  v2 = ;

  return v2;
}

id ICAccessibilityContentSizeCategories()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDC38];
  v4[0] = *MEMORY[0x1E69DDC40];
  v4[1] = v0;
  v1 = *MEMORY[0x1E69DDC28];
  v4[2] = *MEMORY[0x1E69DDC30];
  v4[3] = v1;
  v4[4] = *MEMORY[0x1E69DDC20];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];

  return v2;
}

double ICAccessibilityLinearInterpolatedValueForAccessibilityContentSizeCategory(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = ICAccessibilityContentSizeCategories();
  v7 = [v6 indexOfObject:v5];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    a2 = (a3 - a2) * v7 / ([v6 count] - 1) + a2;
  }

  return a2;
}

void sub_1D427AE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *ICStringForCalculateHighlightAttributeType(uint64_t a1)
{
  v1 = @"None";
  if (a1 == 1)
  {
    v1 = @"Variable";
  }

  if (a1 == 2)
  {
    return @"Result";
  }

  else
  {
    return v1;
  }
}

void sub_1D427CF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D427D3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D427E358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ICHasListLanguage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"zh") & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"ko") & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"ar"))
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 hasPrefix:@"he"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t ICHasCJKLanguage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"zh"))
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 hasPrefix:@"ko"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t ICHasNonRomanLanguage(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a1];
  v2 = [v1 objectForKey:*MEMORY[0x1E695D998]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 characterIsMember:97] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id p_arrayByAddingLanguage(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v11 + 1) + 8 * i) hasPrefix:{v3, v11}])
          {

            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [v5 addObject:v3];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithObject:v3];
  }

LABEL_13:

  return v5;
}

id ICFindInputLanguagesWithBlock(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [MEMORY[0x1E69DD0E8] activeInputModes];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) primaryLanguage];
        if (([v8 isEqualToString:@"emoji"] & 1) == 0 && v1[2](v1, v8))
        {
          v9 = p_arrayByAddingLanguage(v8, v5);

          v5 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = [MEMORY[0x1E695DF58] preferredLanguages];
  v11 = [v10 firstObject];
  if (v1[2](v1, v11))
  {
    v12 = p_arrayByAddingLanguage(v11, v5);

    v5 = v12;
  }

  return v5;
}

BOOL ICAnyInputLanguagePassesBlock(void *a1)
{
  v1 = ICFindInputLanguagesWithBlock(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 count] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t ICSystemHasMoreThanOneInputLanguage()
{
  v0 = ICFindInputLanguagesWithBlock(&__block_literal_global_37_0);
  v1 = v0;
  if (!v0)
  {
    goto LABEL_6;
  }

  v2 = [v0 count];
  v3 = v2 - [v1 containsObject:@"emoji"];
  if (v3 <= 1)
  {
    if (v3)
    {
      v5 = [v1 objectAtIndexedSubscript:0];
      v6 = [MEMORY[0x1E695DF58] currentLocale];
      v7 = [v6 objectForKey:*MEMORY[0x1E695D9B0]];
      v4 = [v5 hasPrefix:v7] ^ 1;

      goto LABEL_7;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = 1;
LABEL_7:

  return v4;
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void dispatchMainWithAnimationsInhibited(int a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    performBlockOnMainThreadAndWait();
  }

  else
  {
    performBlockOnMainThreadAndWait();
  }
}

void dispatchMainAfterDelayWithAnimationsInhibited(int a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    dispatchMainAfterDelay();
  }

  else
  {
    dispatchMainAfterDelay();
  }
}

uint64_t performAfterExistingTransaction(void *a1)
{
  v1 = MEMORY[0x1E6979518];
  v2 = a1;
  [v1 begin];
  [MEMORY[0x1E6979518] setCompletionBlock:v2];

  v3 = MEMORY[0x1E6979518];

  return [v3 commit];
}

void sub_1D4281798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D428406C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D428907C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4289BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D428A8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D428B1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void NoteDateUtilitiesClearCachedInfoAboutNow()
{
  v0 = __Calendar;
  __Calendar = 0;

  v1 = __Today;
  __Today = 0;
}

void NoteDateUtilitiesClearCachedDateFormatters()
{
  v0 = __notesDisplayDateFormatterWithYear;
  __notesDisplayDateFormatterWithYear = 0;
}

uint64_t SetTodayToAbsoluteTime()
{
  v0 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  __Today = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void *_dateForDay(void *a1)
{
  v1 = a1;
  v2 = _calendar();
  v8 = 0;
  v3 = [v2 rangeOfUnit:16 startDate:&v8 interval:0 forDate:v1];
  v4 = v8;
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    NSLog(&cfstr_CannotComputeS.isa, v1, v1);
    v5 = v1;
  }

  v6 = v5;

  return v5;
}

id _calendar()
{
  v0 = __Calendar;
  if (!__Calendar)
  {
    v1 = [MEMORY[0x1E695DEE8] currentCalendar];
    v2 = __Calendar;
    __Calendar = v1;

    v0 = __Calendar;
  }

  return v0;
}

void sub_1D428C39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D428C94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D428DC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromAuthenticationResult(uint64_t a1)
{
  v1 = @"Cancel";
  if (a1 == 1)
  {
    v1 = @"Failure";
  }

  if (a1 == 2)
  {
    return @"Success";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromAuthenticationIntent(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"ViewNote";
  }

  else
  {
    return off_1E846D9B8[a1 - 1];
  }
}

__CFString *NSStringFromAuthenticationAction(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Allow";
  }

  else
  {
    return off_1E846D9F8[a1 - 1];
  }
}

__CFString *NSStringFromAuthenticationMechanism(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"None";
  }

  else
  {
    return off_1E846DA10[a1 - 1];
  }
}

void sub_1D4295360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4295E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4296474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4296614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NotesFormattedStringForInteger(uint64_t a1)
{
  if (!__formatter)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v3 = __formatter;
    __formatter = v2;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a1];
  v5 = [__formatter stringFromNumber:v4];

  return v5;
}

void sub_1D4298AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42993B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D429C168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 256), 8);
  _Block_object_dispose((v43 - 208), 8);
  _Block_object_dispose((v43 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__67(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D429CCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D429D024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D429DC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D429E5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42A0428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D42A0DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D42A1120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v15 + 48));
  objc_destroyWeak((v14 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42A1A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

void sub_1D42A2D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D42A5130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__72(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42A5E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42A7954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v19 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D42A7F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42A8EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42A9A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGColor *TSUCreateCGColorFromHSBInColorSpace(double a1, double a2, double a3, double a4)
{
  v4 = [objc_alloc(MEMORY[0x1E69DC888]) initWithHue:a1 saturation:a2 brightness:a3 alpha:a4];
  v5 = [v4 CGColor];
  CGColorRetain(v5);

  return v5;
}

uint64_t TSUPatternColorFromGradient(CGGradient *a1, CGFloat a2, double a3)
{
  v6 = TSUCreateRGBABitmapContext();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v13.x = 0.0;
  v13.y = 0.0;
  v14.x = 0.0;
  v14.y = a2;
  CGContextDrawLinearGradient(v6, a1, v13, v14, 0);
  Image = CGBitmapContextCreateImage(v7);
  CGContextRelease(v7);
  v9 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:a3];
  CGImageRelease(Image);
  if (!v9)
  {
    return 0;
  }

  v10 = MEMORY[0x1E69DC888];

  return [v10 colorWithPatternImage:v9];
}

CGColor *TSUCGColorCreateConvertedToSRGB(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  [objc_msgSend(MEMORY[0x1E69DC888] colorWithCGColor:{a1), "getRed:green:blue:alpha:", &v3, &v4, &v5, v6}];
  v1 = [objc_msgSend(MEMORY[0x1E69DC888] colorWithRed:v3 green:v4 blue:v5 alpha:{v6[0]), "CGColor"}];
  CGColorRetain(v1);
  return v1;
}

CGColorRef TSUCGColorCreateWithUIColor(void *a1)
{
  v1 = [a1 CGColor];

  return CGColorCreateCopy(v1);
}

void sub_1D42AB328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42AF8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D42AFE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D42B0AE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1D42B1C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D42B8FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42B94D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42B9860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42BA3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1D42BAD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42BB994(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__79(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42BC420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42BC610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42C03E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double safeCanvasBoundsForDrawing(void *a1)
{
  v1 = a1;
  [v1 _canvasBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v1 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  if (CGRectIsNull(v19) || (v20.origin.x = v3, v20.origin.y = v5, v20.size.width = v7, v20.size.height = v9, (COERCE_UNSIGNED_INT64(CGRectGetMaxY(v20)) & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000))
  {
    v21.origin.x = v11;
    v21.origin.y = v13;
    v21.size.width = v15;
    v21.size.height = v17;
    CGRectIsNull(v21);
    return 0.0;
  }

  return v3;
}

void sub_1D42C16E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__81(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42C2150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

void sub_1D42C262C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42C3100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__82(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42C4160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42C4CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__83(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42C5010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D42C813C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1D42C82B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D42C85C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D42CAA0C(uint64_t a1, id *a2)
{
  result = sub_1D4419C34();
  *a2 = 0;
  return result;
}

uint64_t sub_1D42CAA84(uint64_t a1, id *a2)
{
  v3 = sub_1D4419C44();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D42CAB04@<X0>(uint64_t *a1@<X8>)
{
  sub_1D4419C54();
  v2 = sub_1D4419C14();

  *a1 = v2;
  return result;
}

uint64_t sub_1D42CAB48()
{
  v1 = *v0;
  sub_1D441AEB4();
  MEMORY[0x1DA6D68D0](v1);
  return sub_1D441AF04();
}

uint64_t sub_1D42CABBC()
{
  v1 = *v0;
  sub_1D441AEB4();
  MEMORY[0x1DA6D68D0](v1);
  return sub_1D441AF04();
}

uint64_t sub_1D42CAC00(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C9488, type metadata accessor for ICError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D42CAC6C(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C9488, type metadata accessor for ICError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D42CACD8(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C94B8, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D42CAD44()
{
  sub_1D441AEB4();
  sub_1D441AEE4();
  return sub_1D441AF04();
}

uint64_t sub_1D42CADB8()
{
  sub_1D441AEB4();
  sub_1D441AEE4();
  return sub_1D441AF04();
}

uint64_t sub_1D42CADFC(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C9448, type metadata accessor for Errors);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D42CAE68(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C9448, type metadata accessor for Errors);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D42CAED4(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C9480, type metadata accessor for Errors);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D42CAF50(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C94B8, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D42CAFBC(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C94B8, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D42CB028(void *a1, uint64_t a2)
{
  v4 = sub_1D4186EE4(&qword_1EC7C94B8, type metadata accessor for ICError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D42CB0B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4186EE4(&qword_1EC7C94B8, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D42CB144(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C9480, type metadata accessor for Errors);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D42CB1B0(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C9480, type metadata accessor for Errors);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D42CB21C(void *a1, uint64_t a2)
{
  v4 = sub_1D4186EE4(&qword_1EC7C9480, type metadata accessor for Errors);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D42CB2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4186EE4(&qword_1EC7C9480, type metadata accessor for Errors);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D42CB328()
{
  sub_1D441AEB4();
  sub_1D4419B94();
  return sub_1D441AF04();
}

uint64_t sub_1D42CB388(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EDE326C0, type metadata accessor for Key);
  v3 = sub_1D4186EE4(&qword_1EC7C94E8, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D42CB444(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C9638, type metadata accessor for URLResourceKey);
  v3 = sub_1D4186EE4(&qword_1EC7C9640, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D42CB500(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C94D0, type metadata accessor for Name);
  v3 = sub_1D4186EE4(&unk_1EC7C94D8, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D42CB5BC(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C94C0, type metadata accessor for CalculateScanKey);
  v3 = sub_1D4186EE4(&qword_1EC7C94C8, type metadata accessor for CalculateScanKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D42CB678@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D4419C14();

  *a1 = v2;
  return result;
}

uint64_t sub_1D42CB6C0(uint64_t a1)
{
  v2 = sub_1D4186EE4(&qword_1EC7C9648, type metadata accessor for CalculateKey);
  v3 = sub_1D4186EE4(&qword_1EC7C9650, type metadata accessor for CalculateKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D42CB77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4186EE4(&qword_1EC7C94B8, type metadata accessor for ICError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D42CB848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4186EE4(&qword_1EC7C9480, type metadata accessor for Errors);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D42CBA34()
{
  v0 = sub_1D4419C54();
  v1 = MEMORY[0x1DA6D57A0](v0);

  return v1;
}

uint64_t sub_1D42CBA70()
{
  sub_1D4419C54();
  sub_1D4419CD4();
}

uint64_t sub_1D42CBAC4()
{
  sub_1D4419C54();
  sub_1D441AEB4();
  sub_1D4419CD4();
  v0 = sub_1D441AF04();

  return v0;
}

uint64_t sub_1D42CBB38()
{
  v0 = sub_1D4419C54();
  v2 = v1;
  if (v0 == sub_1D4419C54() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D441AD84();
  }

  return v5 & 1;
}

unint64_t sub_1D42CBEA4()
{
  result = qword_1EC7C9470;
  if (!qword_1EC7C9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9470);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D42CC1E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D42CC204(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1D42CC4D8(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = sub_1D4416D44();
  v5[1] = 0;
  if ([v1 attribute:*MEMORY[0x1E69B7600] atIndex:a1 effectiveRange:v5])
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1D419070C();
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D418D074(v8);
  }

  return 0;
}

Swift::Bool __swiftcall ICTTTextStorage.isSingleAttachment(range:)(__C::_NSRange range)
{
  v2 = v1;
  length = range.length;
  location = range.location;
  v12 = *MEMORY[0x1E69E9840];
  v7 = sub_1D4416D44();
  v8 = 0;
  if ([v2 attribute:*MEMORY[0x1E69DB5F8] atIndex:location effectiveRange:&v7])
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v5 = 0;
  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1) && v7 == location)
  {
    v5 = v8 == length;
  }

  sub_1D418D074(v11);
  return v5;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Bool __swiftcall ICTTTextStorage.isListItem(at:)(Swift::Int at)
{
  v1 = sub_1D42CC4D8(at);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isList];

  return v3;
}

Swift::Bool __swiftcall ICTTTextStorage.isEmptyLine(at:)(Swift::Int at)
{
  v2 = v1;
  v4 = sub_1D4416E44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 string];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 lineRangeForRange_];
    v12 = v11;
    if (v10 == sub_1D4416D44())
    {

      LOBYTE(v8) = 0;
    }

    else
    {
      v13 = [v9 substringWithRange_];
      v14 = sub_1D4419C54();
      v16 = v15;

      v22[0] = v14;
      v22[1] = v16;
      sub_1D4416DE4();
      sub_1D42CC920();
      v17 = sub_1D441A7C4();
      v19 = v18;

      (*(v5 + 8))(v7, v4);

      v20 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v20 = v17 & 0xFFFFFFFFFFFFLL;
      }

      LOBYTE(v8) = v20 == 0;
    }
  }

  else
  {
    __break(1u);
  }

  return v8;
}

unint64_t sub_1D42CC920()
{
  result = qword_1EDE32A90;
  if (!qword_1EDE32A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32A90);
  }

  return result;
}

Swift::Bool __swiftcall ICTTTextStorage.isSingleItemList(at:)(Swift::Int at)
{
  v2 = sub_1D42CC4D8(at);
  if (v2 && (v3 = v2, v4 = [v2 isList], v3, v4) && !ICTTTextStorage.nextParagraphIsList(at:)(at))
  {
    return !ICTTTextStorage.previousParagraphIsList(at:)(at);
  }

  else
  {
    return 0;
  }
}

Swift::Bool __swiftcall ICTTTextStorage.nextParagraphIsList(at:)(Swift::Int at)
{
  v2 = sub_1D42CC4D8(at);
  if (v2)
  {
    v5 = v2;
    v6 = v3;
    v7 = v4;
    if (![v2 isList] || v6 >= objc_msgSend(v1, sel_length))
    {
      goto LABEL_7;
    }

    v8 = v6 + v7;
    if (__OFADD__(v6, v7))
    {
      __break(1u);
      return v8;
    }

    v9 = sub_1D42CC4D8(v8);
    if (v9)
    {
      v10 = v9;
      v11 = [v9 isList];
    }

    else
    {
LABEL_7:
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(v8) = v11;
  return v8;
}

Swift::Bool __swiftcall ICTTTextStorage.previousParagraphIsList(at:)(Swift::Int at)
{
  v1 = sub_1D42CC4D8(at);
  if (!v1)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  if ([v1 isList])
  {
    v5 = v4 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (v6 = sub_1D42CC4D8(v4 - 1)) == 0)
  {
    v8 = 0;
  }

  else
  {
    v7 = v6;
    v8 = [v6 isList];
  }

  return v8;
}

uint64_t NoteEditActivityEvent.activityItemIdParts.getter()
{
  v0 = sub_1D4417C84();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D4417964();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4417434();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D4435D20;
  sub_1D4417AF4();
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  MEMORY[0x1DA6D5730](0x2865746144, 0xE500000000000000);
  sub_1D44173D4();
  sub_1D441A044();
  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v11 = v28[0];
  v12 = v28[1];
  (*(v7 + 8))(v9, v6);
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1D4417AB4();
  strcpy(v28, "Object(");
  v28[1] = 0xE700000000000000;
  v13 = sub_1D4417914();
  MEMORY[0x1DA6D5730](v13);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v14 = v28[0];
  v15 = v28[1];
  (*(v3 + 8))(v5, v25);
  *(v10 + 48) = v14;
  *(v10 + 56) = v15;
  sub_1D4417A54();
  strcpy(v28, "Participant(");
  BYTE5(v28[1]) = 0;
  HIWORD(v28[1]) = -5120;
  v16 = sub_1D4417C04();
  MEMORY[0x1DA6D5730](v16);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v17 = v28[0];
  v18 = v28[1];
  (*(v26 + 8))(v2, v27);
  *(v10 + 64) = v17;
  *(v10 + 72) = v18;
  v19 = sub_1D4417AA4();
  v20 = sub_1D42CCE6C(v19);
  v22 = v21;

  *(v10 + 80) = v20;
  *(v10 + 88) = v22;
  return v10;
}

uint64_t sub_1D42CCE6C(uint64_t a1)
{
  v48 = sub_1D4417B14();
  v2 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9758);
  v4 = MEMORY[0x1EEE9AC00](v45);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v39 - v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v58 = MEMORY[0x1E69E7CC0];
    sub_1D418BC38(0, v8, 0);
    v9 = v58;
    v10 = a1 + 64;
    v11 = sub_1D441A824();
    v41 = v2 + 32;
    v42 = v2 + 16;
    v43 = a1;
    v40 = a1 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_14;
      }

      v52 = 1 << v11;
      v53 = v11 >> 6;
      v50 = v8;
      v54 = v9;
      v51 = *(a1 + 36);
      v12 = *(a1 + 48);
      v13 = sub_1D4417AC4();
      v14 = *(v13 - 8);
      v15 = v44;
      (*(v14 + 16))(v44, v12 + *(v14 + 72) * v11, v13);
      v16 = *(*(a1 + 56) + 8 * v11);
      (*(v14 + 32))(v6, v15, v13);
      *&v6[*(v45 + 48)] = v16;
      v56 = 40;
      v57 = 0xE100000000000000;

      v17 = v49;
      v18 = sub_1D42CFB70(v6);
      MEMORY[0x1DA6D5730](v18);

      MEMORY[0x1DA6D5730](8250, 0xE200000000000000);
      v19 = v46;
      v20 = v17;
      v21 = v48;
      (*(v2 + 16))(v46, v20, v48);
      v22 = (*(v2 + 80) + 16) & ~*(v2 + 80);
      v23 = swift_allocObject();
      v24 = v2;
      (*(v2 + 32))(v23 + v22, v19, v21);
      sub_1D43CFC90(v16, sub_1D42D7508);
      v26 = v25;

      v55 = v26;

      sub_1D43CE734(&v55);

      v27 = MEMORY[0x1DA6D5890](v55, MEMORY[0x1E69E6158]);
      v29 = v28;

      MEMORY[0x1DA6D5730](v27, v29);

      v31 = v56;
      v30 = v57;
      sub_1D41769C4(v6, &qword_1EC7C9758);
      v9 = v54;
      v58 = v54;
      v33 = *(v54 + 2);
      v32 = *(v54 + 3);
      if (v33 >= v32 >> 1)
      {
        sub_1D418BC38((v32 > 1), v33 + 1, 1);
        v9 = v58;
      }

      *(v9 + 2) = v33 + 1;
      v34 = &v9[16 * v33];
      *(v34 + 4) = v31;
      *(v34 + 5) = v30;
      a1 = v43;
      if (v11 >= -(-1 << *(v43 + 32)))
      {
        goto LABEL_15;
      }

      v10 = v40;
      if ((*(v40 + 8 * v53) & v52) == 0)
      {
        goto LABEL_16;
      }

      if (v51 != *(v43 + 36))
      {
        goto LABEL_17;
      }

      v11 = sub_1D441A844();
      v8 = v50 - 1;
      v2 = v24;
      if (v50 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_12:
    v56 = 0x287374696445;
    v57 = 0xE600000000000000;
    v58 = v9;

    sub_1D43CE734(&v58);

    v35 = MEMORY[0x1DA6D5890](v58, MEMORY[0x1E69E6158]);
    v37 = v36;

    MEMORY[0x1DA6D5730](v35, v37);

    MEMORY[0x1DA6D5730](41, 0xE100000000000000);
    return v56;
  }

  return result;
}

uint64_t NoteEditActivityEvent.activityItemGroupIdParts.getter()
{
  v0 = sub_1D4417A84();
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D4417C84();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4417964();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D4435D30;
  sub_1D4417AB4();
  strcpy(v25, "Object(");
  v25[1] = 0xE700000000000000;
  v11 = sub_1D4417914();
  MEMORY[0x1DA6D5730](v11);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v12 = v25[0];
  v13 = v25[1];
  (*(v7 + 8))(v9, v6);
  *(v10 + 32) = v12;
  *(v10 + 40) = v13;
  sub_1D4417A54();
  strcpy(v25, "Participant(");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  v14 = sub_1D4417C04();
  MEMORY[0x1DA6D5730](v14);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  v15 = v25[0];
  v16 = v25[1];
  (*(v3 + 8))(v5, v22);
  *(v10 + 48) = v15;
  *(v10 + 56) = v16;
  sub_1D4417A64();
  v17 = sub_1D4417A74();
  v19 = v18;
  (*(v23 + 8))(v2, v24);
  *(v10 + 64) = v17;
  *(v10 + 72) = v19;
  return v10;
}

uint64_t NoteEditActivityEvent.grouped(withEarlierActivityItem:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v136 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9730);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v139 = &v133 - v9;
  v10 = sub_1D4417AC4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v151 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v149 = (&v133 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v147 = &v133 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9738);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v144 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v133 - v20;
  v21 = sub_1D4417434();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v135 = sub_1D4417B14();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v23 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v25 = __swift_project_boxed_opaque_existential_1(a1, v24);
  v155[3] = v24;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v155);
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_0Tm, v25, v24);
  sub_1D42CE3B0(v155, v23);
  __swift_destroy_boxed_opaque_existential_0(v155);
  sub_1D4417AF4();
  sub_1D4417B04();
  sub_1D4417AE4();

  v146 = v23;
  v27 = sub_1D4417AD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9740);
  sub_1D4419B74();
  v27(v155, 0);
  v137 = v3;
  v28 = sub_1D4417AE4();
  v29 = 0;
  v31 = v28 + 64;
  v30 = *(v28 + 64);
  v138 = v28;
  v32 = 1 << *(v28 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v30;
  v35 = (v32 + 63) >> 6;
  v150 = (v11 + 16);
  v152 = (v11 + 32);
  v153 = v10;
  v148 = v11;
  v145 = (v11 + 8);
  v36 = &unk_1D4435D68;
  v140 = v8;
  v141 = v35;
  for (i = v28 + 64; ; v31 = i)
  {
    v39 = v36;
    if (!v34)
    {
      if (v35 <= v29 + 1)
      {
        v41 = v29 + 1;
      }

      else
      {
        v41 = v35;
      }

      v42 = v41 - 1;
      v43 = v143;
      v44 = v144;
      while (1)
      {
        v40 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v40 >= v35)
        {
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9748);
          (*(*(v80 - 8) + 56))(v44, 1, 1, v80);
          v34 = 0;
          v29 = v42;
          goto LABEL_17;
        }

        v34 = *(v31 + 8 * v40);
        ++v29;
        if (v34)
        {
          v29 = v40;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    v40 = v29;
LABEL_16:
    v45 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v46 = v45 | (v40 << 6);
    v47 = v138;
    v48 = v147;
    v49 = v148;
    (*(v148 + 16))(v147, *(v138 + 48) + *(v148 + 72) * v46, v10);
    v50 = *(*(v47 + 56) + 8 * v46);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9748);
    v52 = *(v51 + 48);
    v53 = *(v49 + 32);
    v44 = v144;
    v53(v144, v48, v10);
    *(v44 + v52) = v50;
    (*(*(v51 - 8) + 56))(v44, 0, 1, v51);
    v54 = v50;
    v43 = v143;
LABEL_17:
    sub_1D42D742C(v44, v43, &qword_1EC7C9738);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9748);
    if ((*(*(v55 - 8) + 48))(v43, 1, v55) == 1)
    {
      break;
    }

    v36 = v39;
    v56 = *(v43 + *(v55 + 48));
    v57 = v149;
    (*v152)(v149, v43, v10);
    v58 = v56;
    v59 = sub_1D4417AD4();
    v61 = v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154 = *v61;
    v63 = v154;
    *v61 = 0x8000000000000000;
    v65 = sub_1D42D0020(v57);
    v66 = *(v63 + 16);
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_64;
    }

    v69 = v64;
    if (*(v63 + 24) >= v68)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v72 = v154;
        if (v64)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D42D3BDC();
        v72 = v154;
        if (v69)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D42D0924(v68, isUniquelyReferenced_nonNull_native);
      v70 = sub_1D42D0020(v149);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_68;
      }

      v65 = v70;
      v72 = v154;
      if (v69)
      {
LABEL_4:
        v37 = v72[7];
        v38 = *(v37 + 8 * v65);
        *(v37 + 8 * v65) = v58;

        (*v145)(v149, v153);
        goto LABEL_5;
      }
    }

    v73 = v59;
    v72[(v65 >> 6) + 8] |= 1 << v65;
    v75 = v148;
    v74 = v149;
    v76 = v153;
    (*(v148 + 16))(v72[6] + *(v148 + 72) * v65, v149, v153);
    *(v72[7] + 8 * v65) = v58;
    (*(v75 + 8))(v74, v76);
    v77 = v72[2];
    v78 = __OFADD__(v77, 1);
    v79 = v77 + 1;
    if (v78)
    {
      goto LABEL_67;
    }

    v72[2] = v79;
    v59 = v73;
    v36 = &unk_1D4435D68;
LABEL_5:
    *v61 = v72;

    v59(v155, 0);

    v10 = v153;
    v35 = v141;
  }

  v81 = sub_1D4417AA4();
  v82 = sub_1D42CE92C(v81);

  v83 = *(v82 + 16);
  if (!v83)
  {
    v86 = v140;
LABEL_36:

    v88 = sub_1D4417A94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9750);
    sub_1D4419B74();
    v88(v155, 0);
    v89 = sub_1D4417AA4();
    v90 = 0;
    v91 = 0;
    v93 = (v89 + 64);
    v92 = *(v89 + 64);
    v143 = v89;
    v144 = (v89 + 64);
    v94 = 1 << *(v89 + 32);
    v95 = -1;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    v96 = v95 & v92;
    v97 = (v94 + 63) >> 6;
    i = v97;
    while (1)
    {
      v149 = v90;
      if (!v96)
      {
        break;
      }

      v98 = v91;
LABEL_50:
      v101 = __clz(__rbit64(v96));
      v96 &= v96 - 1;
      v102 = v101 | (v98 << 6);
      v103 = v143;
      v105 = v147;
      v104 = v148;
      (*(v148 + 16))(v147, *(v143 + 6) + *(v148 + 72) * v102, v10);
      v106 = *(*(v103 + 7) + 8 * v102);
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9758);
      v108 = *(v107 + 48);
      (*(v104 + 32))(v86, v105, v10);
      *(v86 + v108) = v106;
      (*(*(v107 - 8) + 56))(v86, 0, 1, v107);

      v97 = i;
LABEL_51:
      v109 = v139;
      sub_1D42D742C(v86, v139, &qword_1EC7C9730);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9758);
      if ((*(*(v110 - 8) + 48))(v109, 1, v110) == 1)
      {

        v129 = v136;
        v130 = v135;
        v136[3] = v135;
        v129[4] = &protocol witness table for NoteEditActivityEvent;
        v131 = __swift_allocate_boxed_opaque_existential_0Tm(v129);
        (*(v134 + 32))(v131, v146, v130);
        return sub_1D417BCA0(v149);
      }

      v111 = *(v109 + *(v110 + 48));
      v112 = v151;
      (*v152)(v151, v109, v153);
      v113 = sub_1D4417A94();
      v115 = v114;
      sub_1D417BCA0(v149);
      v116 = swift_isUniquelyReferenced_nonNull_native();
      v154 = *v115;
      v117 = v154;
      *v115 = 0x8000000000000000;
      v119 = sub_1D42D0020(v112);
      v120 = *(v117 + 16);
      v121 = (v118 & 1) == 0;
      v122 = v120 + v121;
      if (__OFADD__(v120, v121))
      {
        goto LABEL_65;
      }

      v123 = v118;
      if (*(v117 + 24) >= v122)
      {
        if ((v116 & 1) == 0)
        {
          sub_1D42D395C();
        }
      }

      else
      {
        sub_1D42D0548(v122, v116);
        v124 = sub_1D42D0020(v151);
        if ((v123 & 1) != (v125 & 1))
        {
          goto LABEL_68;
        }

        v119 = v124;
      }

      v86 = v140;
      *v115 = v154;

      v126 = *v115;
      v10 = v153;
      if ((v123 & 1) == 0)
      {
        sub_1D42CEB98(&v154);
        v127 = v147;
        (*v150)(v147, v151, v10);
        sub_1D42D310C(v119, v127, v154, v126);
      }

      sub_1D42CEC2C(v111);
      (*v145)(v151, v10);
      v113(v155, 0);
      v90 = sub_1D42CEB98;
      v93 = v144;
    }

    if (v97 <= v91 + 1)
    {
      v99 = v91 + 1;
    }

    else
    {
      v99 = v97;
    }

    v100 = v99 - 1;
    while (1)
    {
      v98 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      if (v98 >= v97)
      {
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9758);
        (*(*(v128 - 8) + 56))(v86, 1, 1, v128);
        v96 = 0;
        v91 = v100;
        goto LABEL_51;
      }

      v96 = *&v93[8 * v98];
      ++v91;
      if (v96)
      {
        v91 = v98;
        goto LABEL_50;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v84 = 0;
  v85 = (v82 + 32);
  v86 = v140;
  while (1)
  {
    v87 = *v85++;
    v78 = __OFADD__(v84, v87);
    v84 += v87;
    if (v78)
    {
      break;
    }

    if (!--v83)
    {
      goto LABEL_36;
    }
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_1D441ADE4();
  __break(1u);
  return result;
}

uint64_t sub_1D42CE3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D441AF54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1D42D5D14(a1, v20);
  v11 = sub_1D4417B14();
  v12 = swift_dynamicCast();
  v13 = *(*(v11 - 8) + 56);
  if (v12)
  {
    v14 = *(v11 - 8);
    v13(v10, 0, 1, v11);
    return (*(v14 + 32))(a2, v10, v11);
  }

  else
  {
    v13(v10, 1, 1, v11);
    sub_1D41769C4(v10, &qword_1EC7C98B8);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1D441A9C4();

    strcpy(v19, "Cannot cast ");
    HIBYTE(v19[6]) = 0;
    v19[7] = -5120;
    sub_1D42D5D14(a1, v20);
    sub_1D441AF24();
    v16 = sub_1D441AD44();
    MEMORY[0x1DA6D5730](v16);

    v17 = *(v5 + 8);
    v17(v7, v4);
    MEMORY[0x1DA6D5730](544432416, 0xE400000000000000);
    v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98C0);
    v20[0] = v11;
    sub_1D441AF24();
    v18 = sub_1D441AD44();
    MEMORY[0x1DA6D5730](v18);

    v17(v7, v4);
    result = sub_1D441ABC4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D42CE6D8(uint64_t a1)
{
  v2 = sub_1D441AF54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D42D5D14(a1, v12);
  v6 = sub_1D41766C0(0, &unk_1EDE32770);
  if (swift_dynamicCast())
  {
    return v11[0];
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1D441A9C4();

  strcpy(v11, "Cannot cast ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  sub_1D42D5D14(a1, v12);
  sub_1D441AF24();
  v8 = sub_1D441AD44();
  MEMORY[0x1DA6D5730](v8);

  v9 = *(v3 + 8);
  v9(v5, v2);
  MEMORY[0x1DA6D5730](544432416, 0xE400000000000000);
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97D8);
  v12[0] = v6;
  sub_1D441AF24();
  v10 = sub_1D441AD44();
  MEMORY[0x1DA6D5730](v10);

  v9(v5, v2);
  result = sub_1D441ABC4();
  __break(1u);
  return result;
}

uint64_t sub_1D42CE92C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1D43CF16C(0, v1, 0);
  v2 = v24;
  v3 = a1 + 64;
  result = sub_1D441A824();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(v6 + 36);
    swift_getKeyPath();

    swift_getAtKeyPath();

    v12 = *(v24 + 16);
    v11 = *(v24 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_1D43CF16C((v11 > 1), v12 + 1, 1);
    }

    *(v24 + 16) = v12 + 1;
    *(v24 + 8 * v12 + 32) = v23;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v13 = *(a1 + 64 + 8 * v10);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v8 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v21;
    }

    else
    {
      v15 = v10 << 6;
      v16 = v10 + 1;
      v17 = (a1 + 72 + 8 * v10);
      v9 = v21;
      while (v16 < (v8 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_1D42D74FC(v5, v22, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_1D42D74FC(v5, v22, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1D42CEB98(void *a1@<X8>)
{
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1D441A8C4())
    {
      sub_1D42D5D94(MEMORY[0x1E69E7CC0], &qword_1EC7C98B0, &unk_1D4435E20, &qword_1EC7C9898);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CD0];
    }

    *a1 = v2;
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CD0];
  }
}

void sub_1D42CEC2C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1D441A874();
    sub_1D41766C0(0, &qword_1EC7C9898);
    sub_1D42D7494();
    sub_1D441A0A4();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_1D419FA48();
      return;
    }

    while (1)
    {
      sub_1D43C59C4(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D441A8F4())
      {
        sub_1D41766C0(0, &qword_1EC7C9898);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t NoteEditActivityEvent.activityItemTitle(resolver:)()
{
  v0 = sub_1D4417C84();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D4417C64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D4417A54();
  sub_1D417DFF0(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
  sub_1D4417C74();
  (*(v1 + 8))(v3, v0);
  v8 = sub_1D4350924(v7);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t NoteEditActivityEvent.activityItemSubtitle(resolver:)(char *a1)
{
  v2 = sub_1D4418994();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D4417964();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&a1[OBJC_IVAR___ActivityEventResolver_object])
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 0;
    }

LABEL_9:
    sub_1D4417AB4();
    (*(v4 + 8))(v6, v3);
    sub_1D441ABC4();
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  sub_1D4417AB4();
  a1 = ActivityEventResolver.resolve(_:)();
  (*(v4 + 8))(v6, v3);
  if (!a1)
  {
    return 0;
  }

  v9 = [a1 shareTitle];
  if (!v9)
  {
LABEL_10:

    return 0;
  }

  v10 = v9;
  v11 = sub_1D4419C54();

  v12 = [a1 parentCloudObject];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 shareTitle];
    if (v14)
    {
      v15 = v14;
      sub_1D4419C54();

      sub_1D4418984();
      sub_1D4418974();
      v16 = [v8 systemImageName];
      sub_1D4419C54();

      sub_1D4419224();
      sub_1D4418954();

      sub_1D4418974();
      sub_1D4418964();

      sub_1D4418974();
      sub_1D4418964();

      sub_1D4418974();
      sub_1D44189B4();
      v17 = sub_1D4418F64();

      return v17;
    }
  }

  return v11;
}
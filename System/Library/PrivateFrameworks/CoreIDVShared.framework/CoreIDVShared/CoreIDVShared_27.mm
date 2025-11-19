uint64_t sub_225C07204@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v101 = a1;
  v100 = a3;
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v98 = &v98 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E758);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v98 - v9;
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  (*(v12 + 16))(v15, &v16[v17], v11);
  os_unfair_lock_unlock(&v16[v18]);
  v19 = sub_225CCD934();
  v20 = sub_225CCED04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2259A7000, v19, v20, "Attempting to parse type 2 MRZ", v21, 2u);
    MEMORY[0x22AA6F950](v21, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v23 = v101;
  v22 = v102;
  v106 = v101;
  v107 = v102;
  sub_225CCD814();
  v24 = sub_225B53BA0();
  sub_2259D8B24(&qword_27D73E770, &qword_27D73E758);
  v25 = sub_225CCE364();
  v28 = *(v7 + 8);
  v27 = v7 + 8;
  v26 = v28;
  v28(v10, v6);
  if (v25)
  {
    v29 = sub_225CCE604();
    v31 = sub_225CCE604() >> 14;
    if (v31 < v29 >> 14)
    {
      __break(1u);
    }

    else
    {
      sub_225CCE5E4();
      v32 = sub_225CCE704();
      MEMORY[0x22AA6CD90](v32);

      v22 = sub_225CCE534();
      v24 = v33;

      v26 = v99;
      swift_beginAccess();
      v34 = *(v26 + 88);
      v31 = *(v34 + 16);
      if (v31)
      {

        v35 = sub_2259F18D4(v22, v24);
        if (v36)
        {
          v37 = *(*(v34 + 56) + 8 * v35);
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
      }

      v48 = __OFADD__(v37, 1);
      v29 = v37 + 1;
      if (!v48)
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104[0] = *(v26 + 88);
        *(v26 + 88) = 0x8000000000000000;
        sub_225A04D6C(v29, v22, v24, isUniquelyReferenced_nonNull_native);

        *(v26 + 88) = v104[0];
        swift_endAccess();
        v47 = 0;
LABEL_21:
        result = swift_beginAccess();
        *(v26 + 56) = 1;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v106 = v23;
  v107 = v22;
  sub_225CCD814();
  v38 = sub_225CCE364();
  result = (v26)(v10, v6);
  if ((v38 & 1) == 0)
  {
    v47 = 2;
LABEL_22:
    *v100 = v47;
    return result;
  }

  v29 = sub_225CCE604();
  v31 = sub_225CCE604() >> 14;
  if (v31 < v29 >> 14)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_225CCE5E4();
  v40 = sub_225CCE704();
  v41 = MEMORY[0x22AA6CD90](v40);
  v24 = v42;

  v26 = v99;
  swift_beginAccess();
  v43 = *(v26 + 80);
  v31 = *(v43 + 16);
  if (v31)
  {

    v44 = sub_2259F18D4(v41, v24);
    if (v45)
    {
      v46 = *(*(v43 + 56) + 8 * v44);
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  v48 = __OFADD__(v46, 1);
  v29 = v46 + 1;
  if (v48)
  {
    goto LABEL_62;
  }

  swift_beginAccess();
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = *(v26 + 80);
  *(v26 + 80) = 0x8000000000000000;
  sub_225A04D6C(v29, v41, v24, v50);

  *(v26 + 80) = v104[0];
  swift_endAccess();
  v29 = sub_225CCE604();
  v31 = sub_225CCE604() >> 14;
  if (v31 < v29 >> 14)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  sub_225CCE5E4();
  v51 = sub_225CCE704();
  v52 = MEMORY[0x22AA6CD90](v51);
  v24 = v53;

  v54 = sub_225C06108(v52, v24, 1);

  if ((v54 & 1) == 0)
  {
    v22 = 0x8000000225D25630;
    v63 = MEMORY[0x277D84F90];
    v64 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v24 = v65;
    v66 = sub_225CCE954();
    v67 = *(v66 - 8);
    v68 = v98;
    (*(v67 + 56))(v98, 1, 1, v66);
    LODWORD(v66) = (*(v67 + 48))(v68, 1, v66);
    sub_2259CB640(v68, &unk_27D73B050);
    if (v66)
    {
      LOWORD(v23) = 855;
    }

    else
    {
      LOWORD(v23) = 23;
    }

    v69 = sub_225B2C374(v63);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v105[0] = v69;
    sub_225B2C4A0(v64, sub_225B2AC40, 0, v70, v105);

    v27 = v105[0];
    v30 = sub_225B29AA0(0, 1, 1, v63);
    v26 = *(v30 + 2);
    v31 = *(v30 + 3);
    v29 = v26 + 1;
    if (v26 < v31 >> 1)
    {
      goto LABEL_37;
    }

    goto LABEL_65;
  }

  v29 = sub_225CCE604();
  v31 = sub_225CCE604() >> 14;
  if (v31 < v29 >> 14)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    v30 = sub_225B29AA0((v31 > 1), v29, 1, v30);
LABEL_37:
    v71 = 0xEB00000000424F44;
    *(v30 + 2) = v29;
    v72 = &v30[56 * v26];
    *(v72 + 2) = xmmword_225CFA6E0;
    *(v72 + 6) = 0xD000000000000025;
    *(v72 + 7) = v22;
    strcpy(v72 + 64, "parseTD2(_:)");
    v72[77] = 0;
    *(v72 + 39) = -5120;
    *(v72 + 10) = 240;
    *v24 = v23;
LABEL_53:
    *(v24 + 8) = v30;
    *(v24 + 16) = 0x2064696C61766E69;
    *(v24 + 24) = v71;
    *(v24 + 32) = v27;
    *(v24 + 40) = 0;
    return swift_willThrow();
  }

  sub_225CCE5E4();
  v55 = sub_225CCE704();
  v56 = MEMORY[0x22AA6CD90](v55);
  v24 = v57;

  swift_beginAccess();
  v58 = *(v26 + 64);
  v59 = *(v58 + 16);
  if (v59)
  {

    v60 = sub_2259F18D4(v56, v24);
    if (v61)
    {
      v62 = *(*(v58 + 56) + 8 * v60);
    }

    else
    {
      v62 = 0;
    }
  }

  else
  {
    v62 = 0;
  }

  v48 = __OFADD__(v62, 1);
  v73 = v62 + 1;
  if (v48)
  {
    __break(1u);
    goto LABEL_67;
  }

  swift_beginAccess();
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *(v26 + 64);
  *(v26 + 64) = 0x8000000000000000;
  sub_225A04D6C(v73, v56, v24, v74);

  *(v26 + 64) = v103;
  swift_endAccess();
  v73 = sub_225CCE604();
  v59 = sub_225CCE604() >> 14;
  if (v59 < v73 >> 14)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  sub_225CCE5E4();
  v75 = sub_225CCE704();
  v76 = MEMORY[0x22AA6CD90](v75);
  v24 = v77;

  v78 = sub_225C06108(v76, v24, 0);

  if ((v78 & 1) == 0)
  {
    v22 = 0x8000000225D25630;
    v87 = MEMORY[0x277D84F90];
    v88 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v24 = v89;
    v90 = sub_225CCE954();
    v91 = *(v90 - 8);
    v92 = v98;
    (*(v91 + 56))(v98, 1, 1, v90);
    LODWORD(v90) = (*(v91 + 48))(v92, 1, v90);
    sub_2259CB640(v92, &unk_27D73B050);
    if (v90)
    {
      LOWORD(v23) = 856;
    }

    else
    {
      LOWORD(v23) = 23;
    }

    v93 = sub_225B2C374(v87);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = v93;
    sub_225B2C4A0(v88, sub_225B2AC40, 0, v94, v104);

    v27 = v104[0];
    v30 = sub_225B29AA0(0, 1, 1, v87);
    v26 = *(v30 + 2);
    v59 = *(v30 + 3);
    v73 = v26 + 1;
    if (v26 < v59 >> 1)
    {
      goto LABEL_52;
    }

    goto LABEL_69;
  }

  v73 = sub_225CCE604();
  v59 = sub_225CCE604() >> 14;
  if (v59 < v73 >> 14)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    v30 = sub_225B29AA0((v59 > 1), v73, 1, v30);
LABEL_52:
    *(v30 + 2) = v73;
    v95 = &v30[56 * v26];
    *(v95 + 2) = xmmword_225CFA6F0;
    *(v95 + 6) = 0xD000000000000025;
    *(v95 + 7) = v22;
    strcpy(v95 + 64, "parseTD2(_:)");
    v95[77] = 0;
    *(v95 + 39) = -5120;
    *(v95 + 10) = 246;
    *v24 = v23;
    v71 = 0xEB00000000454F44;
    goto LABEL_53;
  }

  sub_225CCE5E4();
  v79 = sub_225CCE704();
  v80 = MEMORY[0x22AA6CD90](v79);
  v82 = v81;

  result = swift_beginAccess();
  v83 = *(v26 + 72);
  if (*(v83 + 16))
  {

    v84 = sub_2259F18D4(v80, v82);
    if (v85)
    {
      v86 = *(*(v83 + 56) + 8 * v84);
    }

    else
    {
      v86 = 0;
    }
  }

  else
  {
    v86 = 0;
  }

  v48 = __OFADD__(v86, 1);
  v96 = v86 + 1;
  if (!v48)
  {
    swift_beginAccess();
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v108 = *(v26 + 72);
    *(v26 + 72) = 0x8000000000000000;
    sub_225A04D6C(v96, v80, v82, v97);

    *(v26 + 72) = v108;
    swift_endAccess();
    v47 = 1;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_225C08018@<X0>(char *a1@<X8>)
{
  v93 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v92 = &v91 - v5;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v11 = off_28105B918;
  v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v13));
  (*(v7 + 16))(v10, &v11[v12], v6);
  os_unfair_lock_unlock(&v11[v13]);
  v14 = sub_225CCD934();
  v15 = sub_225CCED04();
  if (os_log_type_enabled(v14, v15))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v14, v15, "Attempting to parse type 3 MRZ", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v17 = *(v7 + 8);
  v16 = v7 + 8;
  v17(v10, v6);
  if (sub_225C08D50())
  {
    v18 = sub_225CCE604();
    v20 = sub_225CCE604() >> 14;
    if (v20 >= v18 >> 14)
    {
      sub_225CCE5E4();
      v21 = sub_225CCE704();
      MEMORY[0x22AA6CD90](v21);
      v15 = v22;

      v23 = sub_225CCE534();
      v25 = v24;

      swift_beginAccess();
      v26 = *(v2 + 88);
      v20 = *(v26 + 16);
      if (v20)
      {

        v27 = sub_2259F18D4(v23, v25);
        if (v28)
        {
          v12 = *(*(v26 + 56) + 8 * v27);
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v16 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95[0] = *(v2 + 88);
        *(v2 + 88) = 0x8000000000000000;
        sub_225A04D6C(v12 + 1, v23, v25, isUniquelyReferenced_nonNull_native);

        *(v2 + 88) = v95[0];
        swift_endAccess();
        v37 = 0;
LABEL_20:
        result = swift_beginAccess();
        *(v2 + 56) = 2;
        *v93 = v37;
        return result;
      }

      goto LABEL_59;
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    do
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v19 = sub_225B29AA0((v20 > 1), v12, 1, v19);
LABEL_34:
      v61 = 0xEB00000000424F44;
      *(v19 + 2) = v12;
      v62 = &v19[56 * v15];
      *(v62 + 2) = xmmword_225CFA6E0;
      *(v62 + 6) = 0xD000000000000025;
      *(v62 + 7) = v93;
      strcpy(v62 + 64, "parseTD3(_:)");
      v62[77] = 0;
      *(v62 + 39) = -5120;
      *(v62 + 10) = 277;
      *v2 = v14;
LABEL_50:
      *(v2 + 8) = v19;
      *(v2 + 16) = 0x2064696C61766E69;
      *(v2 + 24) = v61;
      *(v2 + 32) = v16;
      *(v2 + 40) = 0;
      swift_willThrow();
      v12 = sub_225CCE604();
      v20 = sub_225CCE604() >> 14;
    }

    while (v20 < v12 >> 14);
    sub_225CCE5E4();
    v86 = sub_225CCE704();
    v87 = MEMORY[0x22AA6CD90](v86);
    v89 = v88;

    _s13CoreIDVShared11UIAnalyticsC16sendIncorrectMRZ16documentTypeCodeySS_tFZ_0(v87, v89);

    return swift_willThrow();
  }

  v29 = sub_225CCE604();
  v20 = sub_225CCE604() >> 14;
  if (v20 < v29 >> 14)
  {
    goto LABEL_58;
  }

  sub_225CCE5E4();
  v30 = sub_225CCE704();
  v14 = MEMORY[0x22AA6CD90](v30);
  v32 = v31;

  swift_beginAccess();
  v33 = *(v2 + 80);
  v20 = *(v33 + 16);
  if (v20)
  {

    v34 = sub_2259F18D4(v14, v32);
    if (v35)
    {
      v12 = *(*(v33 + 56) + 8 * v34);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v95[0] = *(v2 + 80);
  *(v2 + 80) = 0x8000000000000000;
  sub_225A04D6C(v12 + 1, v14, v32, v39);

  *(v2 + 80) = v95[0];
  swift_endAccess();
  v40 = sub_225CCE604();
  v20 = sub_225CCE604() >> 14;
  if (v20 < v40 >> 14)
  {
    goto LABEL_61;
  }

  sub_225CCE5E4();
  v41 = sub_225CCE704();
  v42 = MEMORY[0x22AA6CD90](v41);
  v15 = v43;

  v12 = sub_225C06108(v42, v15, 1);

  if ((v12 & 1) == 0)
  {
    v93 = 0x8000000225D25630;
    v53 = MEMORY[0x277D84F90];
    v54 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v2 = v55;
    v56 = sub_225CCE954();
    v57 = *(v56 - 8);
    v58 = v92;
    (*(v57 + 56))(v92, 1, 1, v56);
    LODWORD(v56) = (*(v57 + 48))(v58, 1, v56);
    sub_2259CB640(v58, &unk_27D73B050);
    if (v56)
    {
      LOWORD(v14) = 855;
    }

    else
    {
      LOWORD(v14) = 23;
    }

    v59 = sub_225B2C374(v53);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v96[0] = v59;
    sub_225B2C4A0(v54, sub_225B2AC40, 0, v60, v96);

    v16 = v96[0];
    v19 = sub_225B29AA0(0, 1, 1, v53);
    v15 = *(v19 + 2);
    v20 = *(v19 + 3);
    v12 = v15 + 1;
    if (v15 >= v20 >> 1)
    {
      goto LABEL_64;
    }

    goto LABEL_34;
  }

  v44 = sub_225CCE604();
  v20 = sub_225CCE604() >> 14;
  if (v20 < v44 >> 14)
  {
    goto LABEL_63;
  }

  sub_225CCE5E4();
  v45 = sub_225CCE704();
  v14 = MEMORY[0x22AA6CD90](v45);
  v47 = v46;

  swift_beginAccess();
  v48 = *(v2 + 64);
  v49 = *(v48 + 16);
  if (v49)
  {

    v50 = sub_2259F18D4(v14, v47);
    if (v51)
    {
      v52 = *(*(v48 + 56) + 8 * v50);
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = 0;
  }

  v15 = v52 + 1;
  if (__OFADD__(v52, 1))
  {
    __break(1u);
    goto LABEL_66;
  }

  swift_beginAccess();
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *(v2 + 64);
  *(v2 + 64) = 0x8000000000000000;
  sub_225A04D6C(v52 + 1, v14, v47, v63);

  *(v2 + 64) = v94;
  swift_endAccess();
  v64 = sub_225CCE604();
  v49 = sub_225CCE604() >> 14;
  if (v49 < v64 >> 14)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_225CCE5E4();
  v65 = sub_225CCE704();
  v66 = MEMORY[0x22AA6CD90](v65);
  v15 = v67;

  v52 = sub_225C06108(v66, v15, 0);

  if ((v52 & 1) == 0)
  {
    v93 = 0x8000000225D25630;
    v77 = MEMORY[0x277D84F90];
    v78 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v2 = v79;
    v80 = sub_225CCE954();
    v81 = *(v80 - 8);
    v82 = v92;
    (*(v81 + 56))(v92, 1, 1, v80);
    LODWORD(v80) = (*(v81 + 48))(v82, 1, v80);
    sub_2259CB640(v82, &unk_27D73B050);
    if (v80)
    {
      LOWORD(v14) = 856;
    }

    else
    {
      LOWORD(v14) = 23;
    }

    v83 = sub_225B2C374(v77);
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v95[0] = v83;
    sub_225B2C4A0(v78, sub_225B2AC40, 0, v84, v95);

    v16 = v95[0];
    v19 = sub_225B29AA0(0, 1, 1, v77);
    v15 = *(v19 + 2);
    v49 = *(v19 + 3);
    v52 = v15 + 1;
    if (v15 < v49 >> 1)
    {
      goto LABEL_49;
    }

    goto LABEL_68;
  }

  v68 = sub_225CCE604();
  v49 = sub_225CCE604() >> 14;
  if (v49 < v68 >> 14)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    v19 = sub_225B29AA0((v49 > 1), v52, 1, v19);
LABEL_49:
    *(v19 + 2) = v52;
    v85 = &v19[56 * v15];
    *(v85 + 2) = xmmword_225CFA6F0;
    *(v85 + 6) = 0xD000000000000025;
    *(v85 + 7) = v93;
    strcpy(v85 + 64, "parseTD3(_:)");
    v85[77] = 0;
    *(v85 + 39) = -5120;
    *(v85 + 10) = 283;
    *v2 = v14;
    v61 = 0xEB00000000454F44;
    goto LABEL_50;
  }

  sub_225CCE5E4();
  v69 = sub_225CCE704();
  v70 = MEMORY[0x22AA6CD90](v69);
  v72 = v71;

  result = swift_beginAccess();
  v73 = *(v2 + 72);
  if (*(v73 + 16))
  {

    v74 = sub_2259F18D4(v70, v72);
    if (v75)
    {
      v76 = *(*(v73 + 56) + 8 * v74);
    }

    else
    {
      v76 = 0;
    }
  }

  else
  {
    v76 = 0;
  }

  if (!__OFADD__(v76, 1))
  {
    swift_beginAccess();
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(v2 + 72);
    *(v2 + 72) = 0x8000000000000000;
    sub_225A04D6C(v76 + 1, v70, v72, v90);

    *(v2 + 72) = v97;
    swift_endAccess();
    v37 = 1;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_225C08D50()
{

  v0 = sub_225CCE644();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_225CCE644();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_225CCF934();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_225CCE644();
      v3 = v5;
    }

    while (v5);
  }

  sub_225CCE644();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_225C08EAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_225CCD954();
  MEMORY[0x28223BE20](v6, v7);
  result = sub_225CCE5D4();
  v9 = byte_2839000A0;
  if (qword_225CFA9B0[byte_2839000A0] == result || (v9 = byte_2839000A1, qword_225CFA9B0[byte_2839000A1] == result) || (v9 = byte_2839000A2, qword_225CFA9B0[byte_2839000A2] == result))
  {
    if (v9)
    {
      if (v9 == 1)
      {
        return sub_225C07204(a1, a2, a3);
      }

      else
      {
        return sub_225C08018(a3);
      }
    }

    else
    {
      return sub_225C063D4(a1, a2, a3);
    }
  }

  else
  {
    *a3 = 2;
  }

  return result;
}

BOOL sub_225C091E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v101 = a5;
  v106 = a1;
  v107 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v95 = &v94 - v11;
  v12 = sub_225CCD284();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v98 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCCB74();
  v99 = *(v15 - 8);
  v100 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v97 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_225CCD0B4();
  v19 = *(v18 - 8);
  v104 = v18;
  v105 = v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v96 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v108 = &v94 - v24;
  v25 = sub_225CCD954();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
LABEL_45:
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v31 = sub_225CCE444();
    v32 = [v30 BOOLForKey_];

    if (v32)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v33 = off_28105B918;
      v34 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v35 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v35));
      (*(v26 + 16))(v29, &v33[v34], v25);
      os_unfair_lock_unlock(&v33[v35]);
      v36 = sub_225CCD934();
      v37 = sub_225CCED04();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2259A7000, v36, v37, "Internal flag set, skipping age verification", v38, 2u);
        MEMORY[0x22AA6F950](v38, -1, -1);
      }

      (*(v26 + 8))(v29, v25);
      return 0;
    }
  }

  else
  {
  }

  v29 = *(v6 + 48);
  if (!(v29 >> 62))
  {
    v25 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v25 = sub_225CCF144();
  if (!v25)
  {
    return 0;
  }

LABEL_12:
  v26 = 0;
  v6 = v29 & 0xC000000000000001;
  while (1)
  {
    if (v6)
    {
      v39 = MEMORY[0x22AA6DA80](v26, v29);
    }

    else
    {
      if (v26 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v39 = *&v29[8 * v26 + 32];
    }

    v30 = v39;
    v40 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v41 = *&v39[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_countryCode] == a3 && *&v39[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_countryCode + 8] == a4;
    if (v41 || (sub_225CCF934() & 1) != 0)
    {
      break;
    }

    ++v26;
    if (v40 == v25)
    {
      return 0;
    }
  }

  v42 = v30;
  v43 = v108;
  v44 = v109;
  sub_225C0A19C(v106, v107, 1);

  if (v44)
  {

    return v45;
  }

  v109 = 0;
  v46 = v98;
  sub_225CCD244();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8);
  v47 = sub_225CCD264();
  v48 = *(v47 - 8);
  v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_225CD30F0;
  (*(v48 + 104))(v50 + v49, *MEMORY[0x277CC9988], v47);
  sub_2259F4D58(v50);
  swift_setDeallocating();
  (*(v48 + 8))(v50 + v49, v47);
  swift_deallocClassInstance();
  v51 = v101[3];
  v52 = v101[4];
  __swift_project_boxed_opaque_existential_1(v101, v51);
  v53 = v96;
  (*(v52 + 8))(v51, v52);
  v54 = v97;
  sub_225CCD214();

  v55 = v105 + 8;
  v56 = v53;
  v57 = *(v105 + 8);
  v57(v56, v104);
  (*(v102 + 8))(v46, v103);
  v58 = sub_225CCCAF4();
  LOBYTE(v47) = v59;
  (*(v99 + 8))(v54, v100);
  if (v47)
  {
    v105 = v55;
    v60 = 0x8000000225D25660;
    v106 = 0x8000000225D25630;
    v107 = v42;
    v103 = 0x8000000225D25680;
    v61 = MEMORY[0x277D84F90];
    v62 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v64 = v63;
    v65 = sub_225CCE954();
    v66 = *(v65 - 8);
    v67 = v95;
    (*(v66 + 56))(v95, 1, 1, v65);
    LODWORD(v65) = (*(v66 + 48))(v67, 1, v65);
    sub_2259CB640(v67, &unk_27D73B050);
    if (v65)
    {
      v68 = 872;
    }

    else
    {
      v68 = 23;
    }

    v69 = sub_225B2C374(v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = v69;
    sub_225B2C4A0(v62, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v110);

    v71 = v110;
    v72 = sub_225B29AA0(0, 1, 1, v61);
    v74 = *(v72 + 2);
    v73 = *(v72 + 3);
    if (v74 >= v73 >> 1)
    {
      v72 = sub_225B29AA0((v73 > 1), v74 + 1, 1, v72);
    }

    *(v72 + 2) = v74 + 1;
    v75 = &v72[56 * v74];
    *(v75 + 4) = 0xD000000000000017;
    *(v75 + 5) = 0x8000000225D25660;
    v76 = v106;
    v77 = v107;
    *(v75 + 6) = 0xD000000000000025;
    *(v75 + 7) = v76;
    v78 = v103;
    *(v75 + 8) = 0xD00000000000003CLL;
    *(v75 + 9) = v78;
    *(v75 + 10) = 330;
    *v64 = v68;
    *(v64 + 8) = v72;
    *(v64 + 16) = 0xD000000000000017;
  }

  else
  {
    if ((v58 & 0x8000000000000000) == 0)
    {
      v57(v43, v104);
      v79 = *&v42[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_age];

      return v79 >= v58;
    }

    v105 = v55;
    v60 = 0x8000000225D256C0;
    v106 = 0x8000000225D25630;
    v107 = v42;
    v103 = 0x8000000225D25680;
    v80 = MEMORY[0x277D84F90];
    v81 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v64 = v82;
    v83 = sub_225CCE954();
    v84 = *(v83 - 8);
    v85 = v95;
    (*(v84 + 56))(v95, 1, 1, v83);
    LODWORD(v83) = (*(v84 + 48))(v85, 1, v83);
    sub_2259CB640(v85, &unk_27D73B050);
    if (v83)
    {
      v86 = 1018;
    }

    else
    {
      v86 = 23;
    }

    v87 = sub_225B2C374(v80);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v110 = v87;
    sub_225B2C4A0(v81, sub_225B2AC40, 0, v88, &v110);

    v71 = v110;
    v89 = sub_225B29AA0(0, 1, 1, v80);
    v91 = *(v89 + 2);
    v90 = *(v89 + 3);
    if (v91 >= v90 >> 1)
    {
      v89 = sub_225B29AA0((v90 > 1), v91 + 1, 1, v89);
    }

    *(v89 + 2) = v91 + 1;
    v92 = &v89[56 * v91];
    *(v92 + 4) = 0xD00000000000001CLL;
    *(v92 + 5) = 0x8000000225D256C0;
    *(v92 + 6) = 0xD000000000000025;
    v77 = v107;
    *(v92 + 7) = v106;
    *(v92 + 8) = 0xD00000000000003CLL;
    *(v92 + 9) = v103;
    *(v92 + 10) = 334;
    *v64 = v86;
    *(v64 + 8) = v89;
    *(v64 + 16) = 0xD00000000000001CLL;
  }

  *(v64 + 24) = v60;
  *(v64 + 32) = v71;
  *(v64 + 40) = 0;
  swift_willThrow();

  v57(v108, v104);
  return v45;
}

void sub_225C09D7C(uint64_t a1, uint64_t a2)
{
  v5 = sub_225CCD284();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCCB74();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_225CCD0B4();
  v37 = *(v14 - 8);
  v38 = v14;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v34 - v20;
  sub_225C0A19C(a1, a2, 0);
  if (!v2)
  {
    v34[1] = 0;
    sub_225CCD244();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8);
    v22 = sub_225CCD264();
    v23 = *(v22 - 8);
    v36 = v5;
    v24 = v23;
    v25 = *(v23 + 80);
    v35 = v6;
    v26 = (v25 + 32) & ~v25;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_225CD30F0;
    (*(v24 + 104))(v27 + v26, *MEMORY[0x277CC9968], v22);
    sub_2259F4D58(v27);
    swift_setDeallocating();
    (*(v24 + 8))(v27 + v26, v22);
    swift_deallocClassInstance();
    _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
    sub_225CCD214();

    v28 = v38;
    v29 = *(v37 + 8);
    v29(v18, v38);
    (*(v35 + 8))(v9, v36);
    v30 = sub_225CCCAC4();
    v32 = v31;
    (*(v39 + 8))(v13, v40);
    if (v32)
    {
      v29(v21, v28);
      return;
    }

    v33 = floor(v30 / 365.0);
    v29(v21, v28);
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v33 > -9.22337204e18)
    {
      if (v33 < 9.22337204e18)
      {
        return;
      }

LABEL_10:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_10;
  }
}

void sub_225C0A19C(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v40 - v6;

  v8 = sub_225C0B128(1);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x22AA6CD90](v8, v10, v12, v14);
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  v19 = formatPassportDate(date:isBirthDate:)(v18, a3);
  if (v20)
  {
  }

  else
  {

    v21 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v22 = sub_225CCE444();
    [v21 setDateFormat_];

    v42 = v19;
    sub_225CCE6F4();
    v23 = sub_225CCE444();

    v24 = [v21 dateFromString_];

    if (v24)
    {
      sub_225CCD094();
    }

    else
    {
      v43 = 0x8000000225D25630;
      v41 = 0x8000000225D256E0;
      v25 = MEMORY[0x277D84F90];
      v26 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v28 = v27;
      v29 = sub_225CCE954();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v7, 1, 1, v29);
      LODWORD(v29) = (*(v30 + 48))(v7, 1, v29);
      sub_2259CB640(v7, &unk_27D73B050);
      if (v29)
      {
        v31 = 873;
      }

      else
      {
        v31 = 23;
      }

      v32 = sub_225B2C374(v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42._countAndFlagsBits = v32;
      sub_225B2C4A0(v26, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v42._countAndFlagsBits);

      countAndFlagsBits = v42._countAndFlagsBits;
      v35 = sub_225B29AA0(0, 1, 1, v25);
      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[56 * v37];
      *(v38 + 2) = xmmword_225CFA700;
      v39 = v43;
      *(v38 + 6) = 0xD000000000000025;
      *(v38 + 7) = v39;
      *(v38 + 8) = 0xD000000000000017;
      *(v38 + 9) = v41;
      *(v38 + 10) = 359;
      *v28 = v31;
      *(v28 + 8) = v35;
      *(v28 + 16) = xmmword_225CFA700;
      *(v28 + 32) = countAndFlagsBits;
      *(v28 + 40) = 0;
      swift_willThrow();
    }
  }
}

uint64_t PassportMRZParser.deinit()
{

  return v0;
}

uint64_t PassportMRZParser.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_225C0A630(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_225C0A6D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B340);
  result = sub_225CCF584();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    sub_225CCFBD4();

    sub_225CCE5B4();
    result = sub_225CCFC24();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_225C0A92C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B348);
  result = sub_225CCF584();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + 8 * v16);
    sub_225CCFBD4();

    sub_225CCE5B4();
    result = sub_225CCFC24();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_225C0AB68(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) >= *(a4 + 16))
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_225C0A92C(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_225C0A92C(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_225C0AC5C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) >= *(a4 + 24))
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_225C0A92C(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_225C0A92C(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_225C0AD50(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;
  v14 = swift_retain_n();
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v16 = sub_225C0A630(v18, v12, a1, a2, a4);
      MEMORY[0x22AA6F950](v18, -1, -1);

      return v16;
    }
  }

  MEMORY[0x28223BE20](v14, v15);
  bzero(v19 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v13);

  v16 = a3(v19 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v12, a1, a2);

  if (v7)
  {
    swift_willThrow();
  }

  return v16;
}

unint64_t *sub_225C0AF20(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) >= *(a4 + 32))
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_225C0A92C(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_225C0A92C(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_225C0B014(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) >= *(a4 + 40))
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_225C0A92C(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_225C0A92C(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225C0B128(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_225CCE5D4();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_225CCE5F4();

  return sub_225CCE704();
}

unint64_t sub_225C0B1F8()
{
  result = qword_27D740428;
  if (!qword_27D740428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740428);
  }

  return result;
}

unint64_t sub_225C0B250()
{
  result = qword_27D740430;
  if (!qword_27D740430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740430);
  }

  return result;
}

CoreIDVShared::PIIHashKey_optional __swiftcall PIIHashKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PIIHashKey.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7265646C6F68;
  v3 = 0x797269707865;
  v4 = 0x6C616E6F6974616ELL;
  if (v1 != 3)
  {
    v4 = 0x65626D754E636F64;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6451044;
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

uint64_t sub_225C0B910()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225C0B9F0()
{
  sub_225CCE5B4();
}

uint64_t sub_225C0BABC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225C0BBA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x7265646C6F68;
  v5 = 0xE600000000000000;
  v6 = 0x797269707865;
  v7 = 0xEB00000000797469;
  v8 = 0x6C616E6F6974616ELL;
  if (v2 != 3)
  {
    v8 = 0x65626D754E636F64;
    v7 = 0xE900000000000072;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6451044;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t static PassportPIIHashUtility.generatePIIHashes(portrait:holder:dob:doe:nationality:docNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, void *a10, uint64_t a11, unint64_t a12)
{
  v181 = a8;
  v177 = a7;
  v178 = a6;
  v176 = a5;
  v175 = a4;
  v184 = a12;
  v183 = a9;
  v182 = a10;
  v15 = sub_225CCD6B4();
  v17 = MEMORY[0x28223BE20](v15, v16);
  v159 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v164 = &v154 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v169 = &v154 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v173 = &v154 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448);
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v158 = &v154 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v163 = &v154 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v168 = &v154 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v172 = &v154 - v41;
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v154 - v43;
  v185 = sub_225CCD624();
  v179 = *(v185 - 8);
  v46 = MEMORY[0x28223BE20](v185, v45);
  v157 = &v154 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v46, v48);
  v162 = &v154 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v167 = &v154 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v171 = &v154 - v56;
  MEMORY[0x28223BE20](v55, v57);
  v59 = &v154 - v58;
  v186 = type metadata accessor for AlgorithmIdentifier();
  v61 = MEMORY[0x28223BE20](v186, v60);
  v156 = &v154 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v61, v63);
  v161 = &v154 - v65;
  v67 = MEMORY[0x28223BE20](v64, v66);
  v166 = &v154 - v68;
  v70 = MEMORY[0x28223BE20](v67, v69);
  v170 = &v154 - v71;
  MEMORY[0x28223BE20](v70, v72);
  v189 = &v154 - v73;
  v187 = a1;
  v188 = a2;

  MEMORY[0x22AA6CE70](a3, v175);
  v175 = sub_225CCE514();
  v174 = v74;

  v187 = a1;
  v188 = a2;

  MEMORY[0x22AA6CE70](v176, v178);
  v176 = sub_225CCE514();
  v178 = v75;

  v187 = a1;
  v188 = a2;

  MEMORY[0x22AA6CE70](v177, v181);
  v165 = sub_225CCE514();
  v181 = v76;

  v187 = a1;
  v188 = a2;

  MEMORY[0x22AA6CE70](v183, v182);
  v160 = sub_225CCE514();
  v183 = v77;

  v187 = a1;
  v188 = a2;

  MEMORY[0x22AA6CE70](a11, v184);
  v155 = sub_225CCE514();
  v184 = v78;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73C0;
  *(inited + 32) = 0x7265646C6F68;
  v154 = inited + 32;
  v182 = inited;
  *(inited + 40) = 0xE600000000000000;
  sub_225CCD604();
  sub_225CCD6A4();
  v177 = v15;
  v80 = v180;
  sub_225CCD644();
  if (v80)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v81 = sub_225CCD654();
    v82 = *(v81 - 8);
    v83 = *(v82 + 56);
    v84 = v82 + 56;
    (v83)(v44, 0, 1, v81);
    v85 = v179[4];
    v86 = v189;
    v85(v189, v59, v185);
    sub_225C0CB18(v44, v86 + *(v186 + 20));
    v87 = sub_2259D25B0(v175, v174);
    v89 = v88;
    v90 = AlgorithmIdentifier.hash(_:)(v87, v88);
    v174 = v85;
    v175 = v84;
    v179 = v83;
    v180 = v81;
    v91 = v185;
    v92 = v90;
    v94 = v93;
    sub_225C0CB88(v189);
    sub_2259BEF00(v87, v89);
    v95 = sub_225CCCF84();
    v97 = v96;
    sub_2259BEF00(v92, v94);
    v98 = v182;
    v182[6] = v95;
    v98[7] = v97;
    v98[8] = 6451044;
    v98[9] = 0xE300000000000000;
    v99 = v171;
    sub_225CCD604();
    sub_225CCD6A4();
    v100 = v172;
    sub_225CCD644();
    (v179)(v100, 0, 1, v180);
    v101 = v170;
    v174(v170, v99, v91);
    v102 = v186;
    sub_225C0CB18(v100, &v101[*(v186 + 20)]);
    v103 = sub_2259D25B0(v176, v178);
    v105 = v104;
    v106 = AlgorithmIdentifier.hash(_:)(v103, v104);
    v107 = v101;
    v109 = v108;
    sub_225C0CB88(v107);
    sub_2259BEF00(v103, v105);
    v110 = sub_225CCCF84();
    v112 = v111;
    sub_2259BEF00(v106, v109);
    v98[10] = v110;
    v98[11] = v112;
    v98[12] = 0x797269707865;
    v98[13] = 0xE600000000000000;
    v113 = v167;
    sub_225CCD604();
    sub_225CCD6A4();
    v114 = v168;
    sub_225CCD644();
    (v179)(v114, 0, 1, v180);
    v115 = v166;
    v174(v166, v113, v91);
    sub_225C0CB18(v114, &v115[*(v102 + 20)]);
    v116 = sub_2259D25B0(v165, v181);
    v118 = v117;
    v119 = AlgorithmIdentifier.hash(_:)(v116, v117);
    v120 = v115;
    v122 = v121;
    sub_225C0CB88(v120);
    sub_2259BEF00(v116, v118);
    v123 = sub_225CCCF84();
    v125 = v124;
    sub_2259BEF00(v119, v122);
    v98[14] = v123;
    v98[15] = v125;
    v98[16] = 0x6C616E6F6974616ELL;
    v98[17] = 0xEB00000000797469;
    v126 = v162;
    sub_225CCD604();
    sub_225CCD6A4();
    v127 = v163;
    sub_225CCD644();
    (v179)(v127, 0, 1, v180);
    v128 = v161;
    v174(v161, v126, v91);
    sub_225C0CB18(v127, &v128[*(v102 + 20)]);
    v129 = sub_2259D25B0(v160, v183);
    v131 = v130;
    v132 = AlgorithmIdentifier.hash(_:)(v129, v130);
    v133 = v128;
    v135 = v134;
    sub_225C0CB88(v133);
    sub_2259BEF00(v129, v131);
    v136 = sub_225CCCF84();
    v138 = v137;
    sub_2259BEF00(v132, v135);
    v98[18] = v136;
    v98[19] = v138;
    v98[20] = 0x65626D754E636F64;
    v98[21] = 0xE900000000000072;
    v139 = v157;
    sub_225CCD604();
    sub_225CCD6A4();
    v140 = v158;
    sub_225CCD644();
    (v179)(v140, 0, 1, v180);
    v141 = v156;
    v174(v156, v139, v91);
    sub_225C0CB18(v140, &v141[*(v102 + 20)]);
    v142 = sub_2259D25B0(v155, v184);
    v144 = v143;
    v146 = AlgorithmIdentifier.hash(_:)(v142, v143);
    v147 = v141;
    v149 = v148;
    sub_225C0CB88(v147);
    sub_2259BEF00(v142, v144);
    v150 = sub_225CCCF84();
    v152 = v151;
    sub_2259BEF00(v146, v149);
    v98[22] = v150;
    v98[23] = v152;
    v153 = sub_225B2E928(v98);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD70);
    swift_arrayDestroy();
    return v153;
  }

  return result;
}

uint64_t sub_225C0CB18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225C0CB88(uint64_t a1)
{
  v2 = type metadata accessor for AlgorithmIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_225C0CBE8()
{
  result = qword_27D740450;
  if (!qword_27D740450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740450);
  }

  return result;
}

uint64_t sub_225C0CC5C(uint64_t a1)
{
  sub_225C0D790();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  sub_2259CB710(v4, v5);
  v59 = sub_225C0F394(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_225CD73A0;
  *(v6 + 32) = *(a1 + 16);
  v7 = *(a1 + 17);
  *(v6 + 33) = v7;
  v50 = *(a1 + 18);
  *(v6 + 34) = v50;
  v49 = *(a1 + 19);
  *(v6 + 35) = v49;
  v8 = sub_2259D8490(v6);
  v10 = v9;

  sub_2259CB710(v8, v10);
  v51 = sub_225C0F394(v8, v10);
  sub_2259BE4EC(&unk_283900420);
  v11 = v51;
  v12 = *(v51 + 16);
  if ((v12 & 7) != 0)
  {
    while (1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v14 = *(v11 + 24) >> 1, v14 <= v12))
      {
        result = sub_2259BE5D8(result, v12 + 1, 1, v11);
        v11 = result;
        v14 = *(result + 24) >> 1;
      }

      v15 = *(v11 + 16);
      if (v14 <= v15)
      {
        break;
      }

      *(v11 + v15 + 32) = byte_283900468;
      v12 = v15 + 1;
      *(v11 + 16) = v15 + 1;
      if (((v15 + 1) & 7) == 0)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v16 = sub_2259D8490(v11);
    v18 = v17;

    sub_2259BEF00(v8, v10);
    sub_2259CB710(v16, v18);
    v19 = sub_225C0F394(v16, v18);
    sub_2259BE4EC(v19);
    v20 = sub_225C0D2F4(*(a1 + 24), *(a1 + 32));
    if (v2)
    {

      sub_2259BEF00(v16, v18);
    }

    else
    {
      v22 = v20;
      v23 = v21;
      v46 = v7;
      sub_2259CB710(v20, v21);
      v24 = sub_225C0F394(v22, v23);
      sub_2259BE4EC(v24);
      v25 = sub_225C0EC28(*(a1 + 40));
      v27 = v26;
      sub_2259CB710(v25, v26);
      v47 = v25;
      v48 = v27;
      v28 = sub_225C0F394(v25, v27);
      sub_2259BE4EC(v28);
      v29 = sub_2259D8490(v59);
      v31 = v30;

      v32 = sub_225C0D074(v29, v31);
      v44 = v33;
      v45 = v32;
      sub_2259BEF00(v29, v31);
      v55 = v22;
      v56 = v23;
      v53 = MEMORY[0x277CC9318];
      v54 = MEMORY[0x277CC9300];
      v51 = v47;
      v52 = v27;
      v34 = __swift_project_boxed_opaque_existential_1(&v51, MEMORY[0x277CC9318]);
      v36 = *v34;
      v35 = v34[1];
      sub_2259CB710(v22, v23);
      sub_2259CB710(v47, v48);
      sub_225C0EA34(v36, v35);
      __swift_destroy_boxed_opaque_existential_0(&v51);
      v38 = v55;
      v37 = v56;
      v57 = v55;
      v58 = v56;
      v53 = MEMORY[0x277CC9318];
      v54 = MEMORY[0x277CC9300];
      v51 = v45;
      v52 = v44;
      v39 = __swift_project_boxed_opaque_existential_1(&v51, MEMORY[0x277CC9318]);
      v40 = v39[1];
      v43 = *v39;
      sub_2259CB710(v38, v37);
      sub_2259CB710(v45, v44);
      sub_225C0EA34(v43, v40);
      sub_2259BEF00(v38, v37);
      __swift_destroy_boxed_opaque_existential_0(&v51);
      v41 = v57;
      v42 = v58;
      type metadata accessor for PassportCommandAPDU();
      a1 = swift_allocObject();
      *(a1 + 16) = 12;
      *(a1 + 17) = v46;
      *(a1 + 18) = v50;
      *(a1 + 19) = v49;
      *(a1 + 24) = v41;
      *(a1 + 32) = v42;
      sub_2259BEF00(v45, v44);
      sub_2259BEF00(v47, v48);
      sub_2259BEF00(v22, v23);
      sub_2259BEF00(v16, v18);
      *(a1 + 40) = xmmword_225CFAAD0;
      *(a1 + 56) = 0xE000000000000000;
    }

    return a1;
  }

  return result;
}

uint64_t sub_225C0D074(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      return 0;
    }
  }

  else if (v5)
  {
    if (a1 == a1 >> 32)
    {
      return 0;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  sub_2259CB710(a1, a2);
  v28 = sub_225C0F394(a1, a2);
  sub_2259BE4EC(&unk_2839003D0);
  v8 = v28;
  v9 = *(v28 + 16);
  if ((v9 & 7) != 0)
  {
    while (1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v11 = *(v8 + 24) >> 1, v11 <= v9))
      {
        result = sub_2259BE5D8(result, v9 + 1, 1, v8);
        v8 = result;
        v11 = *(result + 24) >> 1;
      }

      v12 = *(v8 + 16);
      if (v11 <= v12)
      {
        break;
      }

      *(v8 + v12 + 32) = byte_283900418;
      v9 = v12 + 1;
      *(v8 + 16) = v12 + 1;
      if (((v12 + 1) & 7) == 0)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_13:
  v13 = sub_2259D8490(v8);
  v15 = v14;

  v16 = sub_225C0187C(v13, v15, *(v4 + 24), *(v4 + 32), 0x10uLL);
  if (v3)
  {
    return sub_2259BEF00(v13, v15);
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18);
  result = swift_allocObject();
  v20 = result;
  *(result + 16) = xmmword_225CD4890;
  *(result + 32) = -114;
  v21 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    if (!v21)
    {
      v22 = HIWORD(v19);
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v21 != 2)
  {
LABEL_29:
    LOBYTE(v22) = 0;
    goto LABEL_30;
  }

  v24 = *(v18 + 16);
  v23 = *(v18 + 24);
  v25 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (v25)
  {
    __break(1u);
LABEL_24:
    LODWORD(v22) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v22 = v22;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v22 > 0xFF)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  *(result + 33) = v22;
  sub_2259CB710(v18, v19);
  v26 = sub_225C0F394(v18, v19);
  sub_2259BE4EC(v26);
  v27 = sub_2259D8490(v20);

  sub_2259BEF00(v18, v19);
  sub_2259BEF00(v13, v15);
  return v27;
}

uint64_t sub_225C0D2F4(uint64_t a1, unint64_t a2)
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
LABEL_9:
      sub_2259B97A8(a1, a2);
      goto LABEL_11;
    }

    if (*(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (!v11)
  {
    if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v7 = v2;
    sub_2259CB710(a1, a2);
    v39 = sub_225C0F394(a1, a2);
    sub_2259BE4EC(&unk_283900380);
    v19 = v39;
    v10 = *(v39 + 16);
    if ((v10 & 7) != 0)
    {
      v6 = &unk_283900000;
      while (1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v21 = *(v19 + 3) >> 1, v21 <= v10))
        {
          v19 = sub_2259BE5D8(isUniquelyReferenced_nonNull_native, v10 + 1, 1, v19);
          v21 = *(v19 + 3) >> 1;
        }

        v22 = *(v19 + 2);
        if (v21 <= v22)
        {
          break;
        }

        v19[v22 + 32] = byte_2839003C8;
        v10 = v22 + 1;
        *(v19 + 2) = v22 + 1;
        if (((v22 + 1) & 7) == 0)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_23:
    v23 = sub_2259D8490(v19);
    v25 = v24;

    result = sub_225C02CA4(v23, v25, *(v7 + 16), 0);
    if (v3)
    {
      sub_2259BEF00(v23, v25);
      return sub_2259B97A8(a1, a2);
    }

    v27 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      if (v27 != 2)
      {
        goto LABEL_37;
      }

      v30 = *(result + 16);
      v29 = *(result + 24);
      v31 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (!v31)
      {
LABEL_34:
        if ((v28 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (v28 <= 0xFF)
        {
LABEL_38:
          v32 = v28 + 1;
          if (((v32 >> 8) & 1) == 0)
          {
            v33 = v26;
            v34 = result;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_225CD73B0;
            *(v35 + 32) = -121;
            *(v35 + 33) = v32;
            *(v35 + 34) = 1;
            sub_2259CB710(v34, v33);
            v36 = sub_225C0F394(v34, v33);
            v39 = v35;
            sub_2259BE4EC(v36);
            v38 = sub_2259D8490(v39);

            sub_2259BEF00(v34, v33);
            sub_2259BEF00(v23, v25);
            sub_2259B97A8(a1, a2);
            return v38;
          }

          goto LABEL_43;
        }

        __break(1u);
LABEL_37:
        LOBYTE(v28) = 0;
        goto LABEL_38;
      }

      __break(1u);
    }

    else if (!v27)
    {
      v28 = HIWORD(v26);
      goto LABEL_38;
    }

    LODWORD(v28) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    v28 = v28;
    goto LABEL_34;
  }

  if (a1 != a1 >> 32)
  {
LABEL_15:
    sub_2259CB6FC(a1, a2);
    goto LABEL_16;
  }

LABEL_11:
  if (qword_28105B910 != -1)
  {
LABEL_41:
    swift_once();
  }

  v12 = off_28105B918;
  v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v14));
  (*(v7 + 16))(v10, &v12[v13], v6);
  os_unfair_lock_unlock(&v12[v14]);
  v15 = sub_225CCD934();
  v16 = sub_225CCED04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2259A7000, v15, v16, "No data to encrypt", v17, 2u);
    MEMORY[0x22AA6F950](v17, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return 0;
}

uint64_t sub_225C0D790()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_2259CB710(v1, v2);
  v3 = sub_225C0F394(v1, v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 + 31;
    while (1)
    {
      v6 = v5 - 31;
      if ((v5 - 31) > *(v3 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(v3 + v5);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v7 != 255)
      {
        break;
      }

      if ((result & 1) == 0)
      {
        v3 = sub_225C0EC14(v3);
      }

      *(v3 + v5--) = 0;
      if (v6 <= 1)
      {
        goto LABEL_13;
      }
    }

    if (result)
    {
      goto LABEL_10;
    }

LABEL_17:
    result = sub_225C0EC14(v3);
    v3 = result;
LABEL_10:
    if (v6 > *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      v9 = *(v3 + v5) + 1;
      if (((v9 >> 8) & 1) == 0)
      {
        *(v3 + v5) = v9;
        goto LABEL_13;
      }
    }

    __break(1u);
    return result;
  }

LABEL_13:

  v11 = sub_2259D8490(v10);
  v13 = v12;

  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  *(v0 + 40) = v11;
  *(v0 + 48) = v13;
  sub_2259BEF00(v14, v15);
}

uint64_t sub_225C0D8B0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v146 - v8;
  if (a2 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_9:
      sub_2259B97A8(a1, a2);
      goto LABEL_11;
    }

    if (*(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_18;
    }

LABEL_11:
    v157 = 0x8000000225D25900;
    v11 = MEMORY[0x277D84F90];
    v12 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v14 = v13;
    v15 = sub_225CCE954();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v9, 1, 1, v15);
    LODWORD(v15) = (*(v16 + 48))(v9, 1, v15);
    sub_2259DB318(v9);
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = 23;
    }

    v18 = sub_225B2C374(v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v160 = v18;
    sub_225B2C4A0(v12, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v160);

    v20 = v160;
    v21 = sub_225B29AA0(0, 1, 1, v11);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_225B29AA0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[56 * v23];
    *(v24 + 4) = 0xD000000000000013;
    *(v24 + 5) = 0x8000000225D258E0;
    v25 = v157;
    *(v24 + 6) = 0xD000000000000023;
    *(v24 + 7) = v25;
    *(v24 + 8) = 0xD000000000000013;
    *(v24 + 9) = 0x8000000225D25930;
    *(v24 + 10) = 122;
    *v14 = v17;
    *(v14 + 8) = v21;
    *(v14 + 16) = 0xD000000000000013;
    *(v14 + 24) = 0x8000000225D258E0;
    *(v14 + 32) = v20;
    *(v14 + 40) = 0;
    swift_willThrow();
    return v23;
  }

  if (v10)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_11;
    }

LABEL_18:
    sub_2259CB6FC(a1, a2);
    goto LABEL_19;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  sub_2259D8718(0, &qword_27D740458);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = sub_225CCCF74();
  v29 = [ObjCClassFromMetadata sequenceOfRecordsFromData_];

  if (!v29)
  {
    v156 = 0x8000000225D25900;
    v157 = 0x8000000225D25950;
    v155 = 0x8000000225D25930;
    v68 = MEMORY[0x277D84F90];
    v69 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v71 = v70;
    v72 = sub_225CCE954();
    v73 = *(v72 - 8);
    (*(v73 + 56))(v9, 1, 1, v72);
    LODWORD(v72) = (*(v73 + 48))(v9, 1, v72);
    sub_2259DB318(v9);
    if (v72)
    {
      v74 = 865;
    }

    else
    {
      v74 = 23;
    }

    v75 = sub_225B2C374(v68);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v160 = v75;
    sub_225B2C4A0(v69, sub_225B2AC40, 0, v76, &v160);

    v77 = v160;
    v78 = sub_225B29AA0(0, 1, 1, v68);
    v80 = *(v78 + 2);
    v79 = *(v78 + 3);
    v23 = v80 + 1;
    if (v80 >= v79 >> 1)
    {
      v78 = sub_225B29AA0((v79 > 1), v80 + 1, 1, v78);
    }

    *(v78 + 2) = v23;
    v81 = &v78[56 * v80];
    v82 = v157;
    *(v81 + 4) = 0xD00000000000001ALL;
    *(v81 + 5) = v82;
    *(v81 + 6) = 0xD000000000000023;
    *(v81 + 7) = v156;
    *(v81 + 8) = 0xD000000000000013;
    *(v81 + 9) = v155;
    *(v81 + 10) = 127;
    *v71 = v74;
    *(v71 + 8) = v78;
    *(v71 + 16) = 0xD00000000000001ALL;
    *(v71 + 24) = v82;
    *(v71 + 32) = v77;
    *(v71 + 40) = 0;
    swift_willThrow();
    goto LABEL_46;
  }

  sub_2259D8718(0, &unk_27D740460);
  v30 = sub_225CCE814();

  v31 = sub_225C0ECBC(v30, 153);
  v23 = v31;
  if (!v31)
  {
LABEL_41:

    v156 = 0x8000000225D25900;
    v157 = 0x8000000225D25970;
    v155 = 0x8000000225D25930;
    v83 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v55 = v84;
    v85 = sub_225CCE954();
    v86 = *(v85 - 8);
    (*(v86 + 56))(v9, 1, 1, v85);
    LODWORD(v85) = (*(v86 + 48))(v9, 1, v85);
    sub_2259DB318(v9);
    if (v85)
    {
      LOWORD(v52) = 865;
    }

    else
    {
      LOWORD(v52) = 23;
    }

    v87 = MEMORY[0x277D84F90];
    v88 = sub_225B2C374(MEMORY[0x277D84F90]);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v160 = v88;
    sub_225B2C4A0(v83, sub_225B2AC40, 0, v89, &v160);

    v9 = v160;
    v57 = sub_225B29AA0(0, 1, 1, v87);
    v3 = *(v57 + 2);
    v58 = *(v57 + 3);
    v54 = v3 + 1;
    if (v3 < v58 >> 1)
    {
      goto LABEL_45;
    }

    goto LABEL_73;
  }

  v32 = v31;
  if ((sub_225C0EDB0(v32) & 1) == 0)
  {

    goto LABEL_41;
  }

  v33 = sub_225C0ECBC(v30, 135);
  v34 = sub_225C0ECBC(v30, 142);

  v156 = v32;
  v157 = v33;
  if (!v34)
  {
    v154 = 0x8000000225D25900;
    v155 = 0x8000000225D25990;
    v153 = 0x8000000225D25930;
    v92 = MEMORY[0x277D84F90];
    v93 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v95 = v94;
    v96 = sub_225CCE954();
    v97 = *(v96 - 8);
    (*(v97 + 56))(v9, 1, 1, v96);
    LODWORD(v96) = (*(v97 + 48))(v9, 1, v96);
    sub_2259DB318(v9);
    if (v96)
    {
      v67 = 865;
    }

    else
    {
      v67 = 23;
    }

    v98 = sub_225B2C374(v92);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v160 = v98;
    sub_225B2C4A0(v93, sub_225B2AC40, 0, v99, &v160);

    v100 = v160;
    v101 = sub_225B29AA0(0, 1, 1, v92);
    v103 = *(v101 + 2);
    v102 = *(v101 + 3);
    v23 = v103 + 1;
    if (v103 < v102 >> 1)
    {
      goto LABEL_51;
    }

    goto LABEL_75;
  }

  v153 = v34;
  v35 = [v34 value];
  v154 = sub_225CCCFA4();
  v155 = v36;

  sub_225C0D790();
  v37 = *(v3 + 40);
  v38 = *(v3 + 48);
  sub_2259CB710(v37, v38);
  v160 = sub_225C0F394(v37, v38);
  if (v33)
  {
    v152 = v33;
    v39 = [v152 data];
    v40 = sub_225CCCFA4();
    v41 = v32;
    v43 = v42;

    v44 = v43;
    v32 = v41;
    v45 = sub_225C0F394(v40, v44);
    sub_2259BE4EC(v45);
  }

  v46 = [v32 data];
  v47 = sub_225CCCFA4();
  v49 = v48;

  v50 = sub_225C0F394(v47, v49);
  sub_2259BE4EC(v50);
  v23 = sub_2259D8490(v160);
  v52 = v51;

  sub_2259CB710(v23, v52);
  v159 = sub_225C0F394(v23, v52);
  sub_2259BE4EC(&unk_283900470);
  v53 = v159;
  v54 = *(v159 + 16);
  if ((v54 & 7) != 0)
  {
    v55 = &unk_283900000;
    while (1)
    {
      v56 = swift_isUniquelyReferenced_nonNull_native();
      if (!v56 || (v58 = *(v53 + 3) >> 1, v58 <= v54))
      {
        v53 = sub_2259BE5D8(v56, v54 + 1, 1, v53);
        v58 = *(v53 + 3) >> 1;
      }

      v59 = *(v53 + 2);
      if (v58 <= v59)
      {
        break;
      }

      v53[v59 + 32] = byte_2839004B8;
      v54 = v59 + 1;
      *(v53 + 2) = v59 + 1;
      if (((v59 + 1) & 7) == 0)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_73:
    v57 = sub_225B29AA0((v58 > 1), v54, 1, v57);
LABEL_45:
    *(v57 + 2) = v54;
    v90 = &v57[56 * v3];
    v91 = v157;
    *(v90 + 4) = 0xD000000000000013;
    *(v90 + 5) = v91;
    *(v90 + 6) = 0xD000000000000023;
    *(v90 + 7) = v156;
    *(v90 + 8) = 0xD000000000000013;
    *(v90 + 9) = v155;
    *(v90 + 10) = 133;
    *v55 = v52;
    v55[1] = v57;
    v55[2] = 0xD000000000000013;
    v55[3] = v91;
    v55[4] = v9;
    v55[5] = 0;
    swift_willThrow();

LABEL_46:
    sub_2259B97A8(a1, a2);
    return v23;
  }

LABEL_32:
  v60 = sub_2259D8490(v53);
  v62 = v61;
  v63 = v60;

  sub_2259BEF00(v23, v52);
  v64 = v158;
  v65 = sub_225C0187C(v63, v62, *(v3 + 24), *(v3 + 32), 0x10uLL);
  v67 = v64;
  if (v64)
  {
    sub_2259B97A8(a1, a2);

    sub_2259BEF00(v154, v155);
    sub_2259BEF00(v63, v62);
    return v23;
  }

  v107 = v66;
  v158 = v65;
  if ((sub_2259D8228(v154, v155, v65, v66) & 1) == 0)
  {
    v151 = v107;
    v152 = v63;
    v150 = v62;
    v147 = 0x8000000225D25900;
    v148 = 0x8000000225D259B0;
    v146 = 0x8000000225D25930;
    v125 = MEMORY[0x277D84F90];
    v126 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v149 = swift_allocError();
    v128 = v127;
    v129 = sub_225CCE954();
    v130 = *(v129 - 8);
    (*(v130 + 56))(v9, 1, 1, v129);
    LODWORD(v129) = (*(v130 + 48))(v9, 1, v129);
    sub_2259DB318(v9);
    if (v129)
    {
      v131 = 867;
    }

    else
    {
      v131 = 23;
    }

    v132 = sub_225B2C374(v125);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v132;
    sub_225B2C4A0(v126, sub_225B2AC40, 0, v133, &v159);

    v134 = v159;
    v135 = sub_225B29AA0(0, 1, 1, v125);
    v137 = *(v135 + 2);
    v136 = *(v135 + 3);
    v23 = v137 + 1;
    if (v137 >= v136 >> 1)
    {
      v135 = sub_225B29AA0((v136 > 1), v137 + 1, 1, v135);
    }

    v138 = v157;
    v139 = v153;
    *(v135 + 2) = v23;
    v140 = &v135[56 * v137];
    v141 = v148;
    *(v140 + 4) = 0xD000000000000014;
    *(v140 + 5) = v141;
    *(v140 + 6) = 0xD000000000000023;
    *(v140 + 7) = v147;
    *(v140 + 8) = 0xD000000000000013;
    *(v140 + 9) = v146;
    *(v140 + 10) = 163;
    *v128 = v131;
    *(v128 + 8) = v135;
    *(v128 + 16) = 0xD000000000000014;
    *(v128 + 24) = v141;
    *(v128 + 32) = v134;
    *(v128 + 40) = 0;
    swift_willThrow();
    sub_2259B97A8(a1, a2);

    sub_2259BEF00(v154, v155);
    sub_2259BEF00(v158, v151);
    sub_2259BEF00(v152, v150);
    return v23;
  }

  v95 = v157;
  if (!v157)
  {
    sub_2259B97A8(a1, a2);
    sub_2259BEF00(v154, v155);

    sub_2259BEF00(v158, v107);
    sub_2259BEF00(v63, v62);
    return 0;
  }

  v151 = v107;
  v152 = v63;
  v150 = v62;
  v108 = [v157 value];
  v109 = sub_225CCCFA4();
  v111 = v110;

  result = sub_225C0F394(v109, v111);
  v112 = *(result + 16);
  if (v112)
  {
    v113 = *(result + 32);
    sub_2259D2AD0(result, (result + 32), 1, (2 * v112) | 1);
    v103 = v114;
    if (v113 == 1)
    {
      v116 = v115;
      sub_2259CB710(v114, v115);
      v149 = v116;
      v159 = sub_225C0F394(v103, v116);
      sub_2259BE4EC(&unk_2839004C0);
      v117 = v159;
      v23 = *(v159 + 16);
      if ((v23 & 7) != 0)
      {
        v100 = &unk_283900000;
        while (1)
        {
          v118 = swift_isUniquelyReferenced_nonNull_native();
          if (!v118 || (v102 = *(v117 + 3) >> 1, v102 <= v23))
          {
            v117 = sub_2259BE5D8(v118, v23 + 1, 1, v117);
            v102 = *(v117 + 3) >> 1;
          }

          v119 = *(v117 + 2);
          if (v102 <= v119)
          {
            break;
          }

          v117[v119 + 32] = byte_283900508;
          v23 = v119 + 1;
          *(v117 + 2) = v119 + 1;
          if (((v119 + 1) & 7) == 0)
          {
            goto LABEL_63;
          }
        }

        __break(1u);
LABEL_75:
        v101 = sub_225B29AA0((v102 > 1), v23, 1, v101);
LABEL_51:
        *(v101 + 2) = v23;
        v104 = &v101[56 * v103];
        v105 = v155;
        *(v104 + 4) = 0xD000000000000013;
        *(v104 + 5) = v105;
        *(v104 + 6) = 0xD000000000000023;
        *(v104 + 7) = v154;
        *(v104 + 8) = 0xD000000000000013;
        *(v104 + 9) = v153;
        *(v104 + 10) = 141;
        *v95 = v67;
        v95[1] = v101;
        v95[2] = 0xD000000000000013;
        v95[3] = v105;
        v95[4] = v100;
        v95[5] = 0;
        swift_willThrow();
        v106 = v156;

        goto LABEL_46;
      }

LABEL_63:
      v120 = sub_2259D8490(v117);
      v122 = v121;

      sub_2259BEF00(v103, v149);
      v103 = v120;
      v115 = v122;
    }

    v123 = *(v3 + 16);
    v124 = v115;
    v142 = sub_225C02CA4(v103, v115, v123, 1);
    v144 = v143;
    sub_225C03A90(v142, v143);
    v23 = v145;
    sub_2259B97A8(a1, a2);
    sub_2259BEF00(v142, v144);

    sub_2259BEF00(v158, v151);
    sub_2259BEF00(v152, v150);
    sub_2259BEF00(v154, v155);

    sub_2259BEF00(v103, v124);
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t SecureMessaging.deinit()
{

  sub_2259BEF00(*(v0 + 24), *(v0 + 32));
  sub_2259BEF00(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t SecureMessaging.__deallocating_deinit()
{

  sub_2259BEF00(*(v0 + 24), *(v0 + 32));
  sub_2259BEF00(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_225C0EA34(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_225CCCF44();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_225C0EB6C(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_225C0EB6C(v3, v4);
  }

  return sub_225CCCF44();
}

uint64_t sub_225C0EB6C(uint64_t a1, uint64_t a2)
{
  result = sub_225CCCA44();
  if (!result || (result = sub_225CCCA74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_225CCCA64();
      return sub_225CCCF44();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_225C0EC28(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_225CD73B0;
  *(v2 + 32) = 407;
  *(v2 + 34) = a1;
  if (a1 < 0)
  {

    return 0;
  }

  else
  {
    v3 = sub_2259D8490(v2);
  }

  return v3;
}

void *sub_225C0ECBC(unint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_225CCF144())
  {
    v5 = 0;
    v6 = v2;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA6DA80](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v2 = v7;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v7 tag] == v6)
      {
        return v2;
      }

      ++v5;
      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return 0;
}

uint64_t sub_225C0EDB0(void *a1)
{
  v2 = [a1 value];
  v3 = sub_225CCCFA4();
  v5 = v4;

  v7 = Data.init(base16Encoded:)();
  v8 = v6;
  if (v5 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      v9 = v3;
      v10 = v5;
LABEL_9:
      sub_2259B97A8(v9, v10);
      return 1;
    }

    goto LABEL_5;
  }

  if (v6 >> 60 == 15)
  {
LABEL_5:
    sub_2259B97A8(v3, v5);
    sub_2259B97A8(v7, v8);
    goto LABEL_6;
  }

  sub_2259CB710(v3, v5);
  sub_2259CB6FC(v7, v8);
  v19 = sub_2259D8228(v3, v5, v7, v8);
  sub_2259B97A8(v7, v8);
  sub_2259B97A8(v7, v8);
  sub_2259BEF00(v3, v5);
  sub_2259B97A8(v3, v5);
  if (v19)
  {
    return 1;
  }

LABEL_6:
  v11 = [a1 value];
  v12 = sub_225CCCFA4();
  v14 = v13;

  v16 = Data.init(base16Encoded:)();
  v17 = v15;
  if (v14 >> 60 == 15)
  {
    if (v15 >> 60 == 15)
    {
      v9 = v12;
      v10 = v14;
      goto LABEL_9;
    }

LABEL_11:
    sub_2259B97A8(v12, v14);
    sub_2259B97A8(v16, v17);
    return 0;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_11;
  }

  sub_2259CB710(v12, v14);
  sub_2259CB6FC(v16, v17);
  v20 = sub_2259D8228(v12, v14, v16, v17);
  sub_2259B97A8(v16, v17);
  sub_2259B97A8(v16, v17);
  sub_2259BEF00(v12, v14);
  sub_2259B97A8(v12, v14);
  return v20 & 1;
}

uint64_t sub_225C0EFD4(int a1)
{
  if (a1 <= 27012)
  {
    if (a1 <= 25535)
    {
      if (a1 <= 25218)
      {
        if (a1 > 25215)
        {
          if (a1 == 25216)
          {
            return 1;
          }

          if (a1 == 25218)
          {
            return 2;
          }
        }

        else
        {
          if (a1 == -1)
          {
            return 38;
          }

          if (a1 == 24832)
          {
            return 0;
          }
        }
      }

      else if (a1 <= 25359)
      {
        if (a1 == 25219)
        {
          return 3;
        }

        if (a1 == 25344)
        {
          return 4;
        }
      }

      else
      {
        switch(a1)
        {
          case 25360:
            return 5;
          case 25376:
            return 6;
          case 25392:
            return 7;
        }
      }

      return 39;
    }

    if (a1 <= 26752)
    {
      if (a1 <= 26131)
      {
        if (a1 == 25536)
        {
          return 8;
        }

        if (a1 == 25601)
        {
          return 9;
        }
      }

      else
      {
        switch(a1)
        {
          case 26132:
            return 10;
          case 26277:
            return 11;
          case 26368:
            return 12;
        }
      }

      return 39;
    }

    if (a1 <= 27009)
    {
      if (a1 == 26753)
      {
        return 13;
      }

      if (a1 == 26756)
      {
        return 14;
      }

      return 39;
    }

    if (a1 == 27010)
    {
      return 15;
    }

    else if (a1 == 27011)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }

  else
  {
    if (a1 > 27268)
    {
      if (a1 > 28159)
      {
        if (a1 <= 28415)
        {
          if (a1 == 28160)
          {
            return 33;
          }

          if (a1 == 28261)
          {
            return 34;
          }
        }

        else
        {
          switch(a1)
          {
            case 28416:
              return 35;
            case 36864:
              return 36;
            case 38021:
              return 37;
          }
        }
      }

      else if (a1 <= 27271)
      {
        if (a1 == 27269)
        {
          return 28;
        }

        if (a1 == 27270)
        {
          return 29;
        }
      }

      else
      {
        switch(a1)
        {
          case 27272:
            return 30;
          case 27392:
            return 31;
          case 27904:
            return 32;
        }
      }

      return 39;
    }

    if (a1 > 27263)
    {
      if (a1 <= 27265)
      {
        if (a1 == 27264)
        {
          return 23;
        }

        else
        {
          return 24;
        }
      }

      else if (a1 == 27266)
      {
        return 25;
      }

      else if (a1 == 27267)
      {
        return 26;
      }

      else
      {
        return 27;
      }
    }

    else
    {
      if (a1 > 27014)
      {
        switch(a1)
        {
          case 27015:
            return 20;
          case 27016:
            return 21;
          case 27033:
            return 22;
        }

        return 39;
      }

      if (a1 == 27013)
      {
        return 18;
      }

      else
      {
        return 19;
      }
    }
  }
}

uint64_t sub_225C0F394(uint64_t a1, unint64_t a2)
{
  v4 = sub_225CCCFE4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_2259BEF00(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_225C0060C(v11, 0);
      v15 = sub_225CCCEF4();
      sub_2259BEF00(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t PassportCommandAPDU.asData.getter()
{
  v1 = v0;
  v28 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73A0;
  *(inited + 32) = *(v0 + 16);
  *(inited + 33) = *(v0 + 17);
  *(inited + 34) = *(v0 + 18);
  *(inited + 35) = *(v0 + 19);
  result = sub_2259BE4EC(inited);
  v4 = *(v0 + 32);
  if (v4 >> 60 == 15)
  {
    v5 = *(v0 + 40);
    if (v5 > 0)
    {
      if (v5 >= 0x101)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

LABEL_56:
    v27 = sub_2259D8490(v28);

    return v27;
  }

  v6 = *(v0 + 24);
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v5 = *(v1 + 40);
      v13 = v5 > 0x100;
      sub_2259B97A8(v6, v4);
      if (v5 <= 0)
      {
        goto LABEL_56;
      }

      v8 = 0;
      goto LABEL_51;
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    v9 = v10 - v11;
    if (__OFSUB__(v10, v11))
    {
      goto LABEL_58;
    }

    v5 = *(v1 + 40);
    v8 = v9 > 255;
  }

  else
  {
    if (!v7)
    {
      v8 = 0;
      v5 = *(v1 + 40);
      v9 = BYTE6(v4);
      goto LABEL_14;
    }

    v12 = HIDWORD(v6) - v6;
    if (__OFSUB__(HIDWORD(v6), v6))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v5 = *(v1 + 40);
    v8 = v12 > 255;
    v9 = v12;
  }

  result = sub_2259CB710(v6, v4);
LABEL_14:
  v13 = v5 > 256;
  if (v9 <= 0)
  {
    sub_2259B97A8(v6, v4);
    if (v5 <= 0)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (v7 == 2)
  {
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    v14 = v15 - v16;
    if (!__OFSUB__(v15, v16))
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    v14 = BYTE6(v4);
    goto LABEL_27;
  }

  if (v7 != 1)
  {
    goto LABEL_26;
  }

  if (__OFSUB__(HIDWORD(v6), v6))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v14 = HIDWORD(v6) - v6;
LABEL_27:
  v17 = v5 > 256 || v8;
  if (v17 == 1)
  {
    result = swift_allocObject();
    *(result + 16) = xmmword_225CD73B0;
    *(result + 32) = 0;
    if (!v7)
    {
      *(result + 33) = 0;
      v20 = HIWORD(v4);
      v21 = (result + 34);
      goto LABEL_47;
    }

    if (v7 == 2)
    {
      v18 = *(v6 + 16);
      v20 = *(v6 + 24);
      v19 = __OFSUB__(v20, v18);
      LOWORD(v20) = v20 - v18;
      if (!v19)
      {
        *(result + 33) = BYTE1(v20);
        v21 = (result + 34);
        goto LABEL_47;
      }

      goto LABEL_61;
    }

    goto LABEL_44;
  }

  result = swift_allocObject();
  *(result + 16) = xmmword_225CD30F0;
  v21 = (result + 32);
  if (v7 == 2)
  {
    v23 = *(v6 + 16);
    v22 = *(v6 + 24);
    v19 = __OFSUB__(v22, v23);
    v20 = v22 - v23;
    if (v19)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }
  }

  else
  {
    if (v7 != 1)
    {
      v20 = HIWORD(v4);
LABEL_47:
      *v21 = v20;
      sub_2259BE4EC(result);
      sub_2259CB710(v6, v4);
      v24 = sub_225C0F394(v6, v4);
      sub_2259BE4EC(v24);
      sub_2259B97A8(v6, v4);
      if (v5 < 1)
      {
        goto LABEL_56;
      }

      if (v14)
      {
        if (v5 <= 256 && !v8)
        {
          goto LABEL_50;
        }

        goto LABEL_54;
      }

LABEL_51:
      if (v13)
      {
LABEL_52:
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_225CD73B0;
        *(v25 + 32) = 0;
        *(v25 + 33) = BYTE1(v5);
        v26 = (v25 + 34);
        goto LABEL_55;
      }

      if (!v8)
      {
LABEL_50:
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_225CD30F0;
        v26 = (v25 + 32);
LABEL_55:
        *v26 = v5;
        sub_2259BE4EC(v25);
        goto LABEL_56;
      }

LABEL_54:
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_225CD4890;
      *(v25 + 32) = BYTE1(v5);
      v26 = (v25 + 33);
      goto LABEL_55;
    }

    LODWORD(v20) = HIDWORD(v6) - v6;
    if (__OFSUB__(HIDWORD(v6), v6))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v20 = v20;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v20 <= 0xFF)
  {
    goto LABEL_47;
  }

  __break(1u);
LABEL_44:
  LOWORD(v20) = WORD2(v6) - v6;
  if (!__OFSUB__(HIDWORD(v6), v6))
  {
    *(result + 33) = BYTE1(v20);
    v21 = (result + 34);
    goto LABEL_47;
  }

LABEL_64:
  __break(1u);
  return result;
}

uint64_t PassportResponseAPDU.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v56 - v4;
  result = Data.init(base16Encoded:)();
  if (v7 >> 60 == 15)
  {
    v8 = MEMORY[0x277D84F90];
    v9 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v11 = v10;
    v12 = sub_225CCE954();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v5, 1, 1, v12);
    LODWORD(v12) = (*(v13 + 48))(v5, 1, v12);
    sub_2259CB640(v5, &unk_27D73B050);
    if (v12)
    {
      v14 = 929;
    }

    else
    {
      v14 = 23;
    }

    v15 = sub_225B2C374(v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v15;
    sub_225B2C4A0(v9, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v57);

    v17 = v57;
    v18 = sub_225B29AA0(0, 1, 1, v8);
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_225B29AA0((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[56 * v20];
    *(v21 + 4) = 0xD00000000000001CLL;
    *(v21 + 5) = 0x8000000225D259D0;
    *(v21 + 6) = 0xD00000000000001DLL;
    *(v21 + 7) = 0x8000000225D259F0;
    *(v21 + 8) = 0x6F72662874696E69;
    *(v21 + 9) = 0xEB00000000293A6DLL;
    *(v21 + 10) = 396;
    *v11 = v14;
    *(v11 + 8) = v18;
    *(v11 + 16) = 0xD00000000000001CLL;
    *(v11 + 24) = 0x8000000225D259D0;
    *(v11 + 32) = v17;
    *(v11 + 40) = 0;
    return swift_willThrow();
  }

  v22 = result;
  v23 = v7;
  v24 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_15;
    }

    v26 = *(result + 16);
    v25 = *(result + 24);
    v27 = __OFSUB__(v25, v26);
    v28 = v25 - v26;
    if (v27)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v28 < 2)
    {
      goto LABEL_15;
    }

LABEL_23:
    if (v24 == 2)
    {
      v46 = *(result + 16);
      v45 = *(result + 24);
      v27 = __OFSUB__(v45, v46);
      v44 = v45 - v46;
      if (!v27)
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    else if (v24 == 1)
    {
      LODWORD(v44) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v44 = v44;
      goto LABEL_31;
    }

    v44 = BYTE6(v7);
LABEL_31:
    if (__OFSUB__(v44, 1))
    {
      __break(1u);
    }

    else
    {
      v47 = v44 - 2;
      if (!__OFSUB__(v44 - 1, 1))
      {
        v48 = sub_225CCCF64();
        result = sub_225CCCF64();
        v49 = result;
        if (v24 == 2)
        {
          v51 = *(v22 + 16);
          v50 = *(v22 + 24);
          v27 = __OFSUB__(v50, v51);
          v52 = v50 - v51;
          if (v27)
          {
LABEL_57:
            __break(1u);
            return result;
          }

          if (v52 < 3)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v24 == 1)
          {
            if (__OFSUB__(HIDWORD(v22), v22))
            {
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            if (HIDWORD(v22) - v22 < 3)
            {
              goto LABEL_44;
            }

            goto LABEL_40;
          }

          if (BYTE6(v23) < 3uLL)
          {
LABEL_44:
            v53 = 0;
            v54 = 0xF000000000000000;
LABEL_49:
            result = sub_2259B97A8(v22, v23);
            *a1 = v53;
            *(a1 + 8) = v54;
            *(a1 + 16) = v48;
            *(a1 + 17) = v49;
            return result;
          }
        }

LABEL_40:
        if (v24)
        {
          if (v24 == 2)
          {
            result = *(v22 + 16);
          }

          else
          {
            result = v22;
          }
        }

        else
        {
          result = 0;
        }

        if (v47 >= result)
        {
          v53 = sub_225CCCF54();
          v54 = v55;
          goto LABEL_49;
        }

        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  if (v24)
  {
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (HIDWORD(result) - result < 2)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  if (BYTE6(v7) >= 2uLL)
  {
    goto LABEL_23;
  }

LABEL_15:
  v56 = 0x8000000225D259F0;
  v29 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v31 = v30;
  v32 = sub_225CCE954();
  v33 = *(v32 - 8);
  (*(v33 + 56))(v5, 1, 1, v32);
  LODWORD(v32) = (*(v33 + 48))(v5, 1, v32);
  sub_2259CB640(v5, &unk_27D73B050);
  if (v32)
  {
    v34 = 871;
  }

  else
  {
    v34 = 23;
  }

  v35 = MEMORY[0x277D84F90];
  v36 = sub_225B2C374(MEMORY[0x277D84F90]);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v36;
  sub_225B2C4A0(v29, sub_225B2AC40, 0, v37, &v57);

  v38 = v57;
  v39 = sub_225B29AA0(0, 1, 1, v35);
  v41 = *(v39 + 2);
  v40 = *(v39 + 3);
  if (v41 >= v40 >> 1)
  {
    v39 = sub_225B29AA0((v40 > 1), v41 + 1, 1, v39);
  }

  *(v39 + 2) = v41 + 1;
  v42 = &v39[56 * v41];
  *(v42 + 4) = 0xD000000000000027;
  *(v42 + 5) = 0x8000000225D25A10;
  v43 = v56;
  *(v42 + 6) = 0xD00000000000001DLL;
  *(v42 + 7) = v43;
  *(v42 + 8) = 0x6F72662874696E69;
  *(v42 + 9) = 0xEB00000000293A6DLL;
  *(v42 + 10) = 400;
  *v31 = v34;
  *(v31 + 8) = v39;
  *(v31 + 16) = 0xD000000000000027;
  *(v31 + 24) = 0x8000000225D25A10;
  *(v31 + 32) = v38;
  *(v31 + 40) = 0;
  swift_willThrow();
  return sub_2259B97A8(v22, v23);
}

uint64_t PassportCommandAPDU.__allocating_init(instructionClass:instructionCode:p1Parameter:p2Parameter:data:expectedResponseLength:description:)(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 17) = a2;
  *(result + 18) = a3;
  *(result + 19) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  if (a9)
  {
    v18 = a8;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (a9)
  {
    v19 = a9;
  }

  *(result + 40) = a7;
  *(result + 48) = v18;
  *(result + 56) = v19;
  return result;
}

id TagHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TagHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id NFCPendingCommandsStatus.__allocating_init(isReady:retryInterval:)(char a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_isReady] = a1;
  v8 = &v7[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval];
  *v8 = a2;
  v8[8] = a3 & 1;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id NFCPendingCommandsStatus.init(isReady:retryInterval:)(char a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_isReady] = a1;
  v8 = &v3[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval];
  *v8 = a2;
  v8[8] = a3 & 1;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id NFCPendingCommandsStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225C13A80(a1);

  return v4;
}

id NFCPendingCommandsStatus.init(coder:)(void *a1)
{
  v2 = sub_225C13A80(a1);

  return v2;
}

Swift::Void __swiftcall NFCPendingCommandsStatus.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_isReady);
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  if ((*(v1 + OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval + 8) & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval);
    v6 = sub_225CCE444();
    [(objc_class *)with.super.isa encodeDouble:v6 forKey:v5];
  }
}

uint64_t NFCPendingCommands.batchId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_batchId);

  return v1;
}

uint64_t NFCPendingCommands.taskId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_taskId);

  return v1;
}

id NFCPendingCommands.__allocating_init(batchId:taskId:commandAPDUs:maxReadSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_batchId];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v15[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_taskId];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v15[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_commandAPDUs] = a5;
  v18 = &v15[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_maxReadSize];
  *v18 = a6;
  v18[8] = a7 & 1;
  v20.receiver = v15;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, sel_init);
}

id NFCPendingCommands.init(batchId:taskId:commandAPDUs:maxReadSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_batchId];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v7[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_taskId];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v7[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_commandAPDUs] = a5;
  v18 = &v7[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_maxReadSize];
  *v18 = a6;
  v18[8] = a7 & 1;
  v20.receiver = v7;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

id NFCPendingCommands.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225C13BD0(a1);

  return v4;
}

id NFCPendingCommands.init(coder:)(void *a1)
{
  v2 = sub_225C13BD0(a1);

  return v2;
}

Swift::Void __swiftcall NFCPendingCommands.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_batchId + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_taskId + 8))
  {
    v5 = sub_225CCE444();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  type metadata accessor for APDURequest();
  v7 = sub_225CCE7F4();
  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  if ((*(v1 + OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_maxReadSize + 8) & 1) == 0)
  {
    v9 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_maxReadSize);
    v10 = sub_225CCE444();
    [(objc_class *)with.super.isa encodeInteger:v9 forKey:v10];
  }
}

uint64_t APDURequest.messageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageName);

  return v1;
}

uint64_t APDURequest.messageId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageId);

  return v1;
}

uint64_t APDURequest.data.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared11APDURequest_data);

  return v1;
}

uint64_t sub_225C10CA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEA00000000006449;
  v4 = 0x617461446BLL;
  if (v2 == 1)
  {
    v4 = 0x6567617373654D6BLL;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6567617373654D6BLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC000000656D614ELL;
  }

  v7 = 0xEA00000000006449;
  v8 = 0x617461446BLL;
  if (*a2 == 1)
  {
    v8 = 0x6567617373654D6BLL;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6567617373654D6BLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC000000656D614ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225C10D90()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225C10E2C()
{
  sub_225CCE5B4();
}

uint64_t sub_225C10EB4()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225C10F4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225C13EC4();
  *a1 = result;
  return result;
}

void sub_225C10F7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656D614ELL;
  v4 = 0xEA00000000006449;
  v5 = 0x6567617373654D6BLL;
  if (v2 != 1)
  {
    v5 = 0x617461446BLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6567617373654D6BLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_225C10FE4()
{
  v1 = 0x617461446BLL;
  if (*v0 == 1)
  {
    v1 = 0x6567617373654D6BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373654D6BLL;
  }
}

uint64_t sub_225C11038@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225C13EC4();
  *a1 = result;
  return result;
}

uint64_t sub_225C11060(uint64_t a1)
{
  v2 = sub_225C140BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225C1109C(uint64_t a1)
{
  v2 = sub_225C140BC();

  return MEMORY[0x2821FE720](a1, v2);
}

id APDURequest.__allocating_init(messageName:messageId:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageName];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageId];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_data];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id APDURequest.init(messageName:messageId:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageName];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageId];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_data];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

id APDURequest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225C13F10();

  return v4;
}

id APDURequest.init(coder:)(void *a1)
{
  v2 = sub_225C13F10();

  return v2;
}

Swift::Void __swiftcall APDURequest.encode(with:)(NSCoder with)
{
  v2 = sub_225CCE444();
  v3 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_225CCE444();
  v5 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = sub_225CCE444();
  v7 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

id APDURequest.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7404C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225C140BC();
  sub_225CCFCA4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = 0;
    v10 = sub_225CCF684();
    v12 = &v1[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageName];
    *v12 = v10;
    v12[1] = v13;
    v25 = 1;
    v14 = sub_225CCF684();
    v15 = &v1[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageId];
    *v15 = v14;
    v15[1] = v16;
    v25 = 2;
    v17 = sub_225CCF684();
    v19 = v18;
    v20 = v17;
    (*(v6 + 8))(v9, v5);
    v21 = &v1[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_data];
    *v21 = v20;
    v21[1] = v19;
    v24.receiver = v1;
    v24.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v24, sel_init);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t APDURequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7404D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225C140BC();
  sub_225CCFCE4();
  v9[15] = 0;
  sub_225CCF784();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v9[14] = 1;
  sub_225CCF784();
  v9[13] = 2;
  sub_225CCF784();
  return (*(v4 + 8))(v7, v3);
}

id APDURequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_225C11A08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = APDURequest.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t PassportCommandAPDU.description.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PassportCommandAPDU.init(instructionClass:instructionCode:p1Parameter:p2Parameter:data:expectedResponseLength:description:)(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v10 = a9;
  *(v9 + 16) = a1;
  *(v9 + 17) = a2;
  *(v9 + 18) = a3;
  *(v9 + 19) = a4;
  *(v9 + 24) = a5;
  *(v9 + 32) = a6;
  if (a9)
  {
    v11 = a8;
  }

  else
  {
    v11 = 0;
  }

  if (!a9)
  {
    v10 = 0xE000000000000000;
  }

  *(v9 + 40) = a7;
  *(v9 + 48) = v11;
  *(v9 + 56) = v10;
  return v9;
}

double sub_225C11AE4()
{
  v0 = sub_2259D8490(&unk_2838FFE90);
  v2 = v1;
  type metadata accessor for PassportCommandAPDU();
  v3 = swift_allocObject();
  *(v3 + 16) = 201630720;
  *(v3 + 24) = v0;
  *(v3 + 32) = v2;
  result = NAN;
  *(v3 + 40) = xmmword_225CFAB30;
  *(v3 + 56) = 0xEE00505041205344;
  off_27D740470 = v3;
  return result;
}

uint64_t static PassportCommandAPDU.selectLDSApp.getter()
{
  if (qword_27D73A0F8 != -1)
  {
    swift_once();
  }
}

uint64_t PassportCommandAPDU.deinit()
{
  sub_2259B97A8(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t PassportCommandAPDU.__deallocating_deinit()
{
  sub_2259B97A8(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t PassportResponseAPDU.data.getter()
{
  v1 = *v0;
  sub_2259CB6FC(*v0, *(v0 + 8));
  return v1;
}

BOOL _s13CoreIDVShared19PassportCommandAPDUC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18) || *(a1 + 19) != *(a2 + 19))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v2 >> 60 != 15)
  {
    if (v4 >> 60 != 15)
    {
      v6 = a1;
      v7 = a2;
      sub_2259CB6FC(*(a1 + 24), v2);
      sub_2259CB6FC(v5, v4);
      v9 = sub_2259D8228(v3, v2, v5, v4);
      sub_2259B97A8(v5, v4);
      sub_2259B97A8(v3, v2);
      if (v9)
      {
        return *(v6 + 40) == *(v7 + 40);
      }

      return 0;
    }

LABEL_10:
    sub_2259CB6FC(*(a1 + 24), v2);
    sub_2259CB6FC(v5, v4);
    sub_2259B97A8(v3, v2);
    sub_2259B97A8(v5, v4);
    return 0;
  }

  if (v4 >> 60 != 15)
  {
    goto LABEL_10;
  }

  v6 = a1;
  v7 = a2;
  sub_2259CB6FC(*(a1 + 24), v2);
  sub_2259CB6FC(v5, v4);
  sub_2259B97A8(v3, v2);
  return *(v6 + 40) == *(v7 + 40);
}

uint64_t sub_225C11E24(uint64_t a1, __int16 a2)
{
  LOWORD(v4) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v162 - v7;
  v9 = Data.init(base16Encoded:)();
  if (v10 >> 60 == 15)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v15 = v14;
    v16 = sub_225CCE954();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v8, 1, 1, v16);
    LODWORD(v16) = (*(v17 + 48))(v8, 1, v16);
    sub_2259CB640(v8, &unk_27D73B050);
    if (v16)
    {
      v18 = 932;
    }

    else
    {
      v18 = 23;
    }

    v19 = sub_225B2C374(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167 = v19;
    sub_225B2C4A0(v13, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v167);

    v8 = v167;
    v21 = sub_225B29AA0(0, 1, 1, v12);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_225B29AA0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[56 * v23];
    *(v24 + 4) = 0xD00000000000001ELL;
    *(v24 + 5) = 0x8000000225D25DD0;
    *(v24 + 6) = 0xD00000000000001DLL;
    *(v24 + 7) = 0x8000000225D259F0;
    *(v24 + 8) = 0x293A5F2874696E69;
    *(v24 + 9) = 0xE800000000000000;
    *(v24 + 10) = 258;
    *v15 = v18;
    *(v15 + 8) = v21;
    *(v15 + 16) = 0xD00000000000001ELL;
    *(v15 + 24) = 0x8000000225D25DD0;
    *(v15 + 32) = v8;
    *(v15 + 40) = 0;
    swift_willThrow();
    return v8;
  }

  v25 = v9;
  v26 = v10;
  v27 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v27 != 2)
    {
      goto LABEL_15;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = __OFSUB__(v28, v29);
    v31 = v28 - v29;
    if (v30)
    {
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    if (v31 < 4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!v27)
    {
      if (BYTE6(v10) >= 4uLL)
      {
        goto LABEL_26;
      }

LABEL_15:
      v165 = v10;
      v166 = v9;
      v32 = MEMORY[0x277D84F90];
      v33 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v2 = v34;
      v35 = sub_225CCE954();
      v36 = *(v35 - 8);
      (*(v36 + 56))(v8, 1, 1, v35);
      LODWORD(v35) = (*(v36 + 48))(v8, 1, v35);
      sub_2259CB640(v8, &unk_27D73B050);
      if (v35)
      {
        v37 = 933;
      }

      else
      {
        v37 = 23;
      }

      v38 = sub_225B2C374(v32);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v38;
      sub_225B2C4A0(v33, sub_225B2AC40, 0, v39, &v167);

      v8 = v167;
      v40 = sub_225B29AA0(0, 1, 1, v32);
      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[56 * v42];
      *(v43 + 4) = 0xD000000000000037;
      *(v43 + 5) = 0x8000000225D25F80;
      *(v43 + 6) = 0xD00000000000001DLL;
      *(v43 + 7) = 0x8000000225D259F0;
      *(v43 + 8) = 0x293A5F2874696E69;
      *(v43 + 9) = 0xE800000000000000;
      *(v43 + 10) = 261;
      *v2 = v37;
      *(v2 + 8) = v40;
      *(v2 + 16) = 0xD000000000000037;
      *(v2 + 24) = 0x8000000225D25F80;
      goto LABEL_21;
    }

    v31 = (HIDWORD(v9) - v9);
    if (__OFSUB__(HIDWORD(v9), v9))
    {
LABEL_195:
      __break(1u);
LABEL_196:
      v11 = sub_225B29AA0((v31 > 1), v26, 1, v11);
LABEL_56:
      *(v11 + 2) = v26;
      v62 = &v11[56 * v3];
      *(v62 + 4) = 0xD00000000000002BLL;
      *(v62 + 5) = v27;
      *(v62 + 6) = 0xD00000000000001DLL;
      *(v62 + 7) = v25;
      *(v62 + 8) = 0x293A5F2874696E69;
      *(v62 + 9) = 0xE800000000000000;
      *(v62 + 10) = 363;
      *v2 = v4;
      *(v2 + 8) = v11;
      *(v2 + 16) = 0xD00000000000002BLL;
      *(v2 + 24) = v27;
      *(v2 + 32) = v8;
      *(v2 + 40) = 0;
      swift_willThrow();
      sub_2259B97A8(v162, v164);
      goto LABEL_22;
    }

    if (v31 < 4)
    {
      goto LABEL_15;
    }
  }

LABEL_26:
  v3 = sub_225CCCF64();
  v45 = sub_225CCCF64();
  v46 = sub_225CCCF64();
  v47 = sub_225CCCF64();
  v2 = v47;
  if (v27 == 2)
  {
    v49 = *(v25 + 16);
    v48 = *(v25 + 24);
    v30 = __OFSUB__(v48, v49);
    v31 = v48 - v49;
    if (!v30)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_33:
    v31 = BYTE6(v26);
    goto LABEL_34;
  }

  if (v27 != 1)
  {
    goto LABEL_33;
  }

  v31 = (HIDWORD(v25) - v25);
  if (__OFSUB__(HIDWORD(v25), v25))
  {
    __break(1u);
    goto LABEL_198;
  }

  v31 = v31;
LABEL_34:
  v4 = v31 - 4;
  if (__OFSUB__(v31, 4))
  {
    __break(1u);
    goto LABEL_194;
  }

  if (v31 == 4)
  {
    LODWORD(v165) = v47;
    v163 = v45;
    v51 = v3;
    v3 = 0;
    v164 = 0xF000000000000000;
    v4 = -1;
    v2 = 4;
LABEL_43:
    if (v27 == 2)
    {
      v53 = *(v25 + 16);
      v52 = *(v25 + 24);
      v30 = __OFSUB__(v52, v53);
      v31 = v52 - v53;
      if (!v30)
      {
        if (v2 != v31)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      goto LABEL_199;
    }

    if (v27 != 1)
    {
      if (v2 != BYTE6(v26))
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v31 = (HIDWORD(v25) - v25);
    if (!__OFSUB__(HIDWORD(v25), v25))
    {
      if (v2 != v31)
      {
LABEL_52:
        v162 = v3;
        v165 = v26;
        v166 = v25;
        v27 = 0x8000000225D25DF0;
        v25 = 0x8000000225D259F0;
        v55 = MEMORY[0x277D84F90];
        v56 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v2 = v57;
        v58 = sub_225CCE954();
        v59 = *(v58 - 8);
        (*(v59 + 56))(v8, 1, 1, v58);
        LODWORD(v58) = (*(v59 + 48))(v8, 1, v58);
        sub_2259CB640(v8, &unk_27D73B050);
        if (v58)
        {
          LOWORD(v4) = 930;
        }

        else
        {
          LOWORD(v4) = 23;
        }

        v60 = sub_225B2C374(v55);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v60;
        sub_225B2C4A0(v56, sub_225B2AC40, 0, v61, &v167);

        v8 = v167;
        v11 = sub_225B29AA0(0, 1, 1, v55);
        v3 = *(v11 + 2);
        v31 = *(v11 + 3);
        v26 = v3 + 1;
        if (v3 < v31 >> 1)
        {
          goto LABEL_56;
        }

        goto LABEL_196;
      }

LABEL_50:
      type metadata accessor for PassportCommandAPDU();
      v8 = swift_allocObject();
      v8[16] = v51;
      v8[17] = v163;
      v8[18] = v46;
      v8[19] = v165;
      v54 = v164;
      *(v8 + 3) = v3;
      *(v8 + 4) = v54;
      *(v8 + 5) = v4;
      sub_2259B97A8(v25, v26);
      *(v8 + 6) = 0;
      *(v8 + 7) = 0xE000000000000000;
      return v8;
    }

LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    v11 = sub_225B29AA0((v31 > 1), v26, 1, v11);
LABEL_62:
    *(v11 + 2) = v26;
    v70 = &v11[56 * v3];
    *(v70 + 4) = 0xD000000000000021;
    *(v70 + 5) = v27;
    *(v70 + 6) = 0xD00000000000001DLL;
    *(v70 + 7) = v25;
    *(v70 + 8) = 0x293A5F2874696E69;
    *(v70 + 9) = 0xE800000000000000;
    *(v70 + 10) = 306;
    *v2 = v4;
    *(v2 + 8) = v11;
    *(v2 + 16) = 0xD000000000000021;
    *(v2 + 24) = v27;
LABEL_21:
    *(v2 + 32) = v8;
    *(v2 + 40) = 0;
    swift_willThrow();
LABEL_22:
    sub_2259B97A8(v166, v165);
    return v8;
  }

  if (sub_225CCCF64())
  {
    v50 = sub_225CCCF64();
    LODWORD(v165) = v2;
    if (v4 == 1)
    {
      v163 = v45;
      v51 = v3;
      v3 = 0;
      if (v50)
      {
        v4 = v50;
      }

      else
      {
        v4 = 256;
      }

      v164 = 0xF000000000000000;
      v2 = 5;
      goto LABEL_43;
    }

    if (v27 == 2)
    {
      v74 = *(v25 + 16);
      v73 = *(v25 + 24);
      v30 = __OFSUB__(v73, v74);
      v71 = v73 - v74;
      if (!v30)
      {
        goto LABEL_74;
      }

      __break(1u);
    }

    else if (v27 == 1)
    {
      v71 = (HIDWORD(v25) - v25);
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        v11 = sub_225B29AA0((v71 > 1), v26, 1, v11);
LABEL_111:
        *(v11 + 2) = v26;
        v85 = &v11[56 * v3];
        *(v85 + 4) = v25;
        *(v85 + 5) = v46;
        *(v85 + 6) = 0xD00000000000001DLL;
        *(v85 + 7) = v164;
        *(v85 + 8) = 0x293A5F2874696E69;
        *(v85 + 9) = 0xE800000000000000;
        v86 = 343;
LABEL_138:
        *(v85 + 10) = v86;
        *v27 = v4;
        *(v27 + 8) = v11;
        *(v27 + 16) = v25;
        *(v27 + 24) = v46;
        *(v27 + 32) = v8;
        *(v27 + 40) = 0;
        swift_willThrow();
        sub_2259B97A8(v166, v165);
        return v8;
      }

      v71 = v71;
LABEL_74:
      v4 = v50;
      v2 = v50 + 5;
      if (v71 < v2)
      {
        v165 = v26;
        v166 = v25;
        v167 = 0;
        v168 = 0xE000000000000000;
        sub_225CCF204();
        MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D25E80);
        v169 = v4;
        v75 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v75);

        MEMORY[0x22AA6CE70](0xD000000000000020, 0x8000000225D25EA0);
        v25 = v167;
        v46 = v168;
        v164 = 0x8000000225D259F0;
        v76 = MEMORY[0x277D84F90];
        v77 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v27 = v78;
        v79 = sub_225CCE954();
        v80 = *(v79 - 8);
        (*(v80 + 56))(v8, 1, 1, v79);
        LODWORD(v79) = (*(v80 + 48))(v8, 1, v79);
        sub_2259CB640(v8, &unk_27D73B050);
        if (v79)
        {
          LOWORD(v4) = 931;
        }

        else
        {
          LOWORD(v4) = 23;
        }

        v81 = sub_225B2C374(v76);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v81;
        sub_225B2C4A0(v77, sub_225B2AC40, 0, v82, &v167);

        v8 = v167;
        v11 = sub_225B29AA0(0, 1, 1, v76);
        v84 = *(v11 + 2);
        v83 = *(v11 + 3);
        if (v84 >= v83 >> 1)
        {
          v11 = sub_225B29AA0((v83 > 1), v84 + 1, 1, v11);
        }

        *(v11 + 2) = v84 + 1;
        v85 = &v11[56 * v84];
        *(v85 + 4) = v25;
        *(v85 + 5) = v46;
        *(v85 + 6) = 0xD00000000000001DLL;
        *(v85 + 7) = v164;
        *(v85 + 8) = 0x293A5F2874696E69;
        *(v85 + 9) = 0xE800000000000000;
        v86 = 289;
        goto LABEL_138;
      }

      v163 = v45;
      v51 = v3;
      v87 = sub_225CCCFD4();
      v3 = v87;
      v164 = v88;
      if (v27 == 2)
      {
        v91 = *(v25 + 16);
        v90 = *(v25 + 24);
        v30 = __OFSUB__(v90, v91);
        v71 = v90 - v91;
        if (!v30)
        {
LABEL_93:
          if (v2 < v71)
          {
            v166 = v25;
            if (v27 == 2)
            {
              v107 = *(v25 + 16);
              v106 = *(v25 + 24);
              v92 = v106 - v107;
              if (!__OFSUB__(v106, v107))
              {
                goto LABEL_120;
              }

              __break(1u);
            }

            else if (v27 == 1)
            {
              v89 = (HIDWORD(v25) - v25);
              if (!__OFSUB__(HIDWORD(v25), v25))
              {
                v92 = v89;
LABEL_120:
                v162 = v87;
                if (v92 == v4 + 6)
                {
                  v108 = v166;
                  v109 = sub_225CCCF64();
                  v110 = v109 == 0;
                  v111 = 256;
LABEL_169:
                  if (v110)
                  {
                    v4 = v111;
                  }

                  else
                  {
                    v4 = v109;
                  }

                  v2 = v92;
                  v25 = v108;
                  v3 = v162;
                  goto LABEL_43;
                }

                v165 = v26;
                v27 = 0x8000000225D25E20;
                v112 = MEMORY[0x277D84F90];
                v113 = sub_225B2C248(MEMORY[0x277D84F90]);
                sub_2259CB5EC();
                swift_allocError();
                v2 = v114;
                v115 = sub_225CCE954();
                v116 = *(v115 - 8);
                (*(v116 + 56))(v8, 1, 1, v115);
                LODWORD(v115) = (*(v116 + 48))(v8, 1, v115);
                sub_2259CB640(v8, &unk_27D73B050);
                if (v115)
                {
                  LOWORD(v4) = 904;
                }

                else
                {
                  LOWORD(v4) = 23;
                }

                v117 = sub_225B2C374(v112);
                v118 = swift_isUniquelyReferenced_nonNull_native();
                v167 = v117;
                sub_225B2C4A0(v113, sub_225B2AC40, 0, v118, &v167);

                v8 = v167;
                v11 = sub_225B29AA0(0, 1, 1, v112);
                v120 = *(v11 + 2);
                v119 = *(v11 + 3);
                if (v120 >= v119 >> 1)
                {
                  v11 = sub_225B29AA0((v119 > 1), v120 + 1, 1, v11);
                }

                *(v11 + 2) = v120 + 1;
                v121 = &v11[56 * v120];
                v122 = 0xD000000000000055;
                *(v121 + 4) = 0xD000000000000055;
                *(v121 + 5) = 0x8000000225D25E20;
                *(v121 + 6) = 0xD00000000000001DLL;
                *(v121 + 7) = 0x8000000225D259F0;
                *(v121 + 8) = 0x293A5F2874696E69;
                *(v121 + 9) = 0xE800000000000000;
                v123 = 296;
LABEL_192:
                *(v121 + 10) = v123;
                *v2 = v4;
                *(v2 + 8) = v11;
                *(v2 + 16) = v122;
                *(v2 + 24) = v27;
                *(v2 + 32) = v8;
                *(v2 + 40) = 0;
                swift_willThrow();
                sub_2259BEF00(v162, v164);
                goto LABEL_22;
              }

              goto LABEL_205;
            }

            v92 = BYTE6(v26);
            goto LABEL_120;
          }

          goto LABEL_152;
        }

        __break(1u);
      }

      else if (v27 == 1)
      {
        v71 = (HIDWORD(v25) - v25);
        if (!__OFSUB__(HIDWORD(v25), v25))
        {
          v71 = v71;
          goto LABEL_93;
        }

        goto LABEL_202;
      }

      v71 = BYTE6(v26);
      goto LABEL_93;
    }

    v71 = BYTE6(v26);
    goto LABEL_74;
  }

  if (v4 < 3)
  {
    v165 = v26;
    v166 = v25;
    v27 = 0x8000000225D25F50;
    v25 = 0x8000000225D259F0;
    v63 = MEMORY[0x277D84F90];
    v64 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v2 = v65;
    v66 = sub_225CCE954();
    v67 = *(v66 - 8);
    (*(v67 + 56))(v8, 1, 1, v66);
    LODWORD(v66) = (*(v67 + 48))(v8, 1, v66);
    sub_2259CB640(v8, &unk_27D73B050);
    if (v66)
    {
      LOWORD(v4) = 934;
    }

    else
    {
      LOWORD(v4) = 23;
    }

    v68 = sub_225B2C374(v63);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v68;
    sub_225B2C4A0(v64, sub_225B2AC40, 0, v69, &v167);

    v8 = v167;
    v11 = sub_225B29AA0(0, 1, 1, v63);
    v3 = *(v11 + 2);
    v31 = *(v11 + 3);
    v26 = v3 + 1;
    if (v3 < v31 >> 1)
    {
      goto LABEL_62;
    }

    goto LABEL_200;
  }

  LODWORD(v165) = v2;
  v2 = sub_225CCCF64();
  v72 = sub_225CCCF64();
  if (v2 | v72)
  {
    if (v27 == 2)
    {
      v95 = *(v25 + 16);
      v94 = *(v25 + 24);
      v30 = __OFSUB__(v94, v95);
      v89 = v94 - v95;
      if (!v30)
      {
        goto LABEL_106;
      }

      __break(1u);
    }

    else if (v27 == 1)
    {
      v89 = (HIDWORD(v25) - v25);
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        v11 = sub_225B29AA0((v89 > 1), v26, 1, v11);
LABEL_137:
        *(v11 + 2) = v26;
        v85 = &v11[56 * v3];
        *(v85 + 4) = v25;
        *(v85 + 5) = v46;
        *(v85 + 6) = 0xD00000000000001DLL;
        *(v85 + 7) = v164;
        *(v85 + 8) = 0x293A5F2874696E69;
        *(v85 + 9) = 0xE800000000000000;
        v86 = 322;
        goto LABEL_138;
      }

      v89 = v89;
LABEL_106:
      v4 = v72 | (v2 << 8);
      v2 = v4 + 7;
      if (v89 < v4 + 7)
      {
        v165 = v26;
        v166 = v25;
        v167 = 0;
        v168 = 0xE000000000000000;
        sub_225CCF204();
        MEMORY[0x22AA6CE70](0xD000000000000016, 0x8000000225D25F30);
        v169 = v4;
        v96 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v96);

        MEMORY[0x22AA6CE70](0xD000000000000020, 0x8000000225D25EA0);
        v25 = v167;
        v46 = v168;
        v164 = 0x8000000225D259F0;
        v97 = MEMORY[0x277D84F90];
        v98 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v27 = v99;
        v100 = sub_225CCE954();
        v101 = *(v100 - 8);
        (*(v101 + 56))(v8, 1, 1, v100);
        LODWORD(v100) = (*(v101 + 48))(v8, 1, v100);
        sub_2259CB640(v8, &unk_27D73B050);
        if (v100)
        {
          LOWORD(v4) = 931;
        }

        else
        {
          LOWORD(v4) = 23;
        }

        v102 = sub_225B2C374(v97);
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v102;
        sub_225B2C4A0(v98, sub_225B2AC40, 0, v103, &v167);

        v8 = v167;
        v11 = sub_225B29AA0(0, 1, 1, v97);
        v3 = *(v11 + 2);
        v71 = *(v11 + 3);
        v26 = v3 + 1;
        if (v3 < v71 >> 1)
        {
          goto LABEL_111;
        }

        goto LABEL_203;
      }

      v163 = v45;
      v51 = v3;
      v104 = sub_225CCCFD4();
      v3 = v104;
      v164 = v105;
      if (v27 == 2)
      {
        v137 = *(v25 + 16);
        v136 = *(v25 + 24);
        v30 = __OFSUB__(v136, v137);
        v93 = v136 - v137;
        if (!v30)
        {
          goto LABEL_147;
        }

        __break(1u);
      }

      else if (v27 == 1)
      {
        v93 = (HIDWORD(v25) - v25);
        if (__OFSUB__(HIDWORD(v25), v25))
        {
LABEL_208:
          __break(1u);
LABEL_209:
          v11 = sub_225B29AA0((v93 > 1), v26, 1, v11);
LABEL_177:
          *(v11 + 2) = v26;
          v121 = &v11[56 * v3];
          v122 = 0xD000000000000054;
          *(v121 + 4) = 0xD000000000000054;
          *(v121 + 5) = v27;
          *(v121 + 6) = 0xD00000000000001DLL;
          *(v121 + 7) = v25;
          *(v121 + 8) = 0x293A5F2874696E69;
          *(v121 + 9) = 0xE800000000000000;
          v123 = 350;
          goto LABEL_192;
        }

        v93 = v93;
LABEL_147:
        if (v2 >= v93)
        {
LABEL_152:
          v4 = -1;
          goto LABEL_43;
        }

        v166 = v25;
        if (v27 == 2)
        {
          v142 = *(v25 + 16);
          v141 = *(v25 + 24);
          v92 = v141 - v142;
          if (!__OFSUB__(v141, v142))
          {
            goto LABEL_167;
          }

          __break(1u);
        }

        else if (v27 == 1)
        {
          v135 = (HIDWORD(v25) - v25);
          if (__OFSUB__(HIDWORD(v25), v25))
          {
            goto LABEL_211;
          }

          v92 = v135;
LABEL_167:
          v162 = v104;
          if (v92 == v4 + 9)
          {
            v108 = v166;
            v143 = sub_225CCCF64();
            v109 = sub_225CCCF64() | (v143 << 8);
            v110 = v109 == 0;
            v111 = 0x10000;
            goto LABEL_169;
          }

          v165 = v26;
          v27 = 0x8000000225D25ED0;
          v25 = 0x8000000225D259F0;
          v144 = MEMORY[0x277D84F90];
          v145 = sub_225B2C248(MEMORY[0x277D84F90]);
          sub_2259CB5EC();
          swift_allocError();
          v2 = v146;
          v147 = sub_225CCE954();
          v148 = *(v147 - 8);
          (*(v148 + 56))(v8, 1, 1, v147);
          LODWORD(v147) = (*(v148 + 48))(v8, 1, v147);
          sub_2259CB640(v8, &unk_27D73B050);
          if (v147)
          {
            LOWORD(v4) = 904;
          }

          else
          {
            LOWORD(v4) = 23;
          }

          v149 = sub_225B2C374(v144);
          v150 = swift_isUniquelyReferenced_nonNull_native();
          v167 = v149;
          sub_225B2C4A0(v145, sub_225B2AC40, 0, v150, &v167);

          v8 = v167;
          v11 = sub_225B29AA0(0, 1, 1, v144);
          v3 = *(v11 + 2);
          v93 = *(v11 + 3);
          v26 = v3 + 1;
          if (v3 < v93 >> 1)
          {
            goto LABEL_177;
          }

          goto LABEL_209;
        }

        v92 = BYTE6(v26);
        goto LABEL_167;
      }

      v93 = BYTE6(v26);
      goto LABEL_147;
    }

    v89 = BYTE6(v26);
    goto LABEL_106;
  }

  if (v4 == 3)
  {
    v163 = v45;
    v51 = v3;
    v3 = 0;
    v164 = 0xF000000000000000;
    v2 = 7;
    v4 = 0x10000;
    goto LABEL_43;
  }

  if (v27 != 2)
  {
    if (v27 == 1)
    {
      v93 = (HIDWORD(v25) - v25);
      if (!__OFSUB__(HIDWORD(v25), v25))
      {
        v93 = v93;
        goto LABEL_132;
      }

      __break(1u);
      goto LABEL_208;
    }

    goto LABEL_131;
  }

  v125 = *(v25 + 16);
  v124 = *(v25 + 24);
  v30 = __OFSUB__(v124, v125);
  v93 = v124 - v125;
  if (v30)
  {
    __break(1u);
LABEL_131:
    v93 = BYTE6(v26);
  }

LABEL_132:
  if (v93 < 7)
  {
    v165 = v26;
    v166 = v25;
    v167 = 0;
    v168 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000016, 0x8000000225D25F30);
    v169 = 0;
    v126 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v126);

    MEMORY[0x22AA6CE70](0xD000000000000020, 0x8000000225D25EA0);
    v25 = v167;
    v46 = v168;
    v164 = 0x8000000225D259F0;
    v127 = MEMORY[0x277D84F90];
    v128 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v27 = v129;
    v130 = sub_225CCE954();
    v131 = *(v130 - 8);
    (*(v131 + 56))(v8, 1, 1, v130);
    LODWORD(v130) = (*(v131 + 48))(v8, 1, v130);
    sub_2259CB640(v8, &unk_27D73B050);
    if (v130)
    {
      LOWORD(v4) = 931;
    }

    else
    {
      LOWORD(v4) = 23;
    }

    v132 = sub_225B2C374(v127);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v132;
    sub_225B2C4A0(v128, sub_225B2AC40, 0, v133, &v167);

    v8 = v167;
    v11 = sub_225B29AA0(0, 1, 1, v127);
    v3 = *(v11 + 2);
    v89 = *(v11 + 3);
    v26 = v3 + 1;
    if (v3 < v89 >> 1)
    {
      goto LABEL_137;
    }

    goto LABEL_206;
  }

  v163 = v45;
  v51 = v3;
  result = sub_225CCCFD4();
  v3 = result;
  if (v27 != 2)
  {
    if (v27 == 1)
    {
      v135 = (HIDWORD(v25) - v25);
      if (!__OFSUB__(HIDWORD(v25), v25))
      {
        v135 = v135;
        goto LABEL_157;
      }

      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      v11 = sub_225B29AA0((v135 > 1), v26, 1, v11);
LABEL_191:
      *(v11 + 2) = v26;
      v121 = &v11[56 * v3];
      v122 = 0xD000000000000054;
      *(v121 + 4) = 0xD000000000000054;
      *(v121 + 5) = v27;
      *(v121 + 6) = 0xD00000000000001DLL;
      *(v121 + 7) = v25;
      *(v121 + 8) = 0x293A5F2874696E69;
      *(v121 + 9) = 0xE800000000000000;
      v123 = 329;
      goto LABEL_192;
    }

    goto LABEL_156;
  }

  v139 = *(v25 + 16);
  v138 = *(v25 + 24);
  v30 = __OFSUB__(v138, v139);
  v135 = v138 - v139;
  if (v30)
  {
    __break(1u);
LABEL_156:
    v135 = BYTE6(v26);
  }

LABEL_157:
  v164 = v134;
  if (v135 < 8)
  {
    v4 = -1;
    v2 = 7;
    goto LABEL_43;
  }

  if (v27 == 2)
  {
    v152 = *(v25 + 16);
    v151 = *(v25 + 24);
    v30 = __OFSUB__(v151, v152);
    v140 = v151 - v152;
    if (!v30)
    {
LABEL_182:
      if (v140 == 9)
      {
        v153 = sub_225CCCF64();
        v154 = sub_225CCCF64();
        if (v154 | (v153 << 8))
        {
          v4 = v154 | (v153 << 8);
        }

        else
        {
          v4 = 0x10000;
        }

        v2 = 9;
        goto LABEL_43;
      }

      v162 = result;
      v165 = v26;
      v166 = v25;
      v27 = 0x8000000225D25ED0;
      v25 = 0x8000000225D259F0;
      v155 = MEMORY[0x277D84F90];
      v156 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v2 = v157;
      v158 = sub_225CCE954();
      v159 = *(v158 - 8);
      (*(v159 + 56))(v8, 1, 1, v158);
      LODWORD(v158) = (*(v159 + 48))(v8, 1, v158);
      sub_2259CB640(v8, &unk_27D73B050);
      if (v158)
      {
        LOWORD(v4) = 904;
      }

      else
      {
        LOWORD(v4) = 23;
      }

      v160 = sub_225B2C374(v155);
      v161 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v160;
      sub_225B2C4A0(v156, sub_225B2AC40, 0, v161, &v167);

      v8 = v167;
      v11 = sub_225B29AA0(0, 1, 1, v155);
      v3 = *(v11 + 2);
      v135 = *(v11 + 3);
      v26 = v3 + 1;
      if (v3 < v135 >> 1)
      {
        goto LABEL_191;
      }

      goto LABEL_212;
    }

    __break(1u);
LABEL_181:
    v140 = BYTE6(v26);
    goto LABEL_182;
  }

  if (v27 != 1)
  {
    goto LABEL_181;
  }

  LODWORD(v140) = HIDWORD(v25) - v25;
  if (!__OFSUB__(HIDWORD(v25), v25))
  {
    v140 = v140;
    goto LABEL_182;
  }

  __break(1u);
  return result;
}

uint64_t _s13CoreIDVShared19PassportCommandAPDUC20externalAuthenticateyAC10Foundation4DataVFZ_0(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
LABEL_11:
    type metadata accessor for PassportCommandAPDU();
    v8 = swift_allocObject();
    *(v8 + 16) = 33280;
    *(v8 + 24) = v3;
    *(v8 + 32) = a2;
    *(v8 + 40) = v5;
    *(v8 + 48) = 0xD000000000000015;
    *(v8 + 56) = 0x8000000225D25DB0;
    sub_2259CB710(v3, a2);
    return v8;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = HIDWORD(result) - result;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_225C13A80(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_225CCE444();
  v5 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_isReady] = v5;
  v6 = sub_225CCE444();
  v7 = [a1 containsValueForKey_];

  if (v7)
  {
    v8 = sub_225CCE444();
    [a1 decodeDoubleForKey_];
    v10 = v9;

    v11 = OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval;
    *&v1[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval] = v10;
  }

  else
  {
    v11 = OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval;
    *&v1[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval] = 0;
  }

  v1[v11 + 8] = v7 ^ 1;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_225C13BD0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_281059A60);
  v5 = sub_225CCEF14();
  if (v5)
  {
    v20 = 0;
    v21 = 0;
    v6 = v5;
    sub_225CCE464();
  }

  v7 = &v2[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_batchId];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  v20 = 0;
  v21 = 0;
  v8 = sub_225CCEF14();
  sub_225CCE464();

  v9 = &v2[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_taskId];
  *v9 = 0;
  *(v9 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_225CD4890;
  *(v10 + 32) = sub_2259D8718(0, &qword_281059AA0);
  *(v10 + 40) = type metadata accessor for APDURequest();
  sub_225CCEF24();

  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7404F8);
    if (swift_dynamicCast())
    {
      v11 = v18;
      goto LABEL_8;
    }
  }

  else
  {
    sub_2259CB640(&v20, &qword_27D73DD90);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_8:
  *&v2[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_commandAPDUs] = v11;
  v12 = sub_225CCE444();
  v13 = [a1 containsValueForKey_];

  if (v13)
  {
    v14 = sub_225CCE444();
    v15 = [a1 decodeIntegerForKey_];
  }

  else
  {
    v15 = 0;
  }

  v16 = &v2[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_maxReadSize];
  *v16 = v15;
  v16[8] = v13 ^ 1;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_225C13EC4()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id sub_225C13F10()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_281059A60);
  v3 = sub_225CCEF14();
  if (v3)
  {
    v13 = 0;
    v4 = v3;
    sub_225CCE464();
  }

  v5 = &v0[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageName];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = sub_225CCEF14();
  if (v6)
  {
    v13 = 0;
    v7 = v6;
    sub_225CCE464();
  }

  v8 = &v0[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageId];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  v9 = sub_225CCEF14();
  if (v9)
  {
    v13 = 0;
    v10 = v9;
    sub_225CCE464();
  }

  v11 = &v1[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_data];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init, v13);
}

unint64_t sub_225C140BC()
{
  result = qword_27D7404D0;
  if (!qword_27D7404D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7404D0);
  }

  return result;
}

uint64_t _s13CoreIDVShared19PassportCommandAPDUC15encryptedSelect6fileID0H4NameAC10Foundation4DataV_SStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_225CCF204();

  MEMORY[0x22AA6CE70](a3, a4);
  type metadata accessor for PassportCommandAPDU();
  v8 = swift_allocObject();
  *(v8 + 16) = 201499660;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = -1;
  *(v8 + 48) = 0xD000000000000012;
  *(v8 + 56) = 0x8000000225D25D90;
  sub_2259CB710(a1, a2);
  return v8;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_225C14384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 18))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_225C143E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_225C14454()
{
  result = qword_27D7404E0;
  if (!qword_27D7404E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7404E0);
  }

  return result;
}

unint64_t sub_225C144AC()
{
  result = qword_27D7404E8;
  if (!qword_27D7404E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7404E8);
  }

  return result;
}

unint64_t sub_225C14504()
{
  result = qword_27D7404F0;
  if (!qword_27D7404F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7404F0);
  }

  return result;
}

__n128 TagOperations.__allocating_init(tag:)(__n128 *a1)
{
  v2 = swift_allocObject();
  result = *a1;
  *(v2 + 16) = *a1;
  *(v2 + 32) = 0;
  return result;
}

uint64_t TagOperations.init(tag:)(_OWORD *a1)
{
  *(v1 + 16) = *a1;
  *(v1 + 32) = 0;
  return v1;
}

void *TagOperations.__allocating_init(with:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = a1;
  result[2] = 0;
  return result;
}

void *TagOperations.init(with:)(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = a1;
  v1[2] = 0;
  return v1;
}

uint64_t sub_225C14620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 196) = a6;
  *(v7 + 152) = a5;
  *(v7 + 160) = v6;
  *(v7 + 136) = a3;
  *(v7 + 144) = a4;
  *(v7 + 120) = a1;
  *(v7 + 128) = a2;

  return MEMORY[0x2822009F8](sub_225C146BC, 0, 0);
}

uint64_t *sub_225C146BC()
{
  v61 = v0;
  v60[2] = *MEMORY[0x277D85DE8];
  v1 = _s13CoreIDVShared19PassportCommandAPDUC15encryptedSelect6fileID0H4NameAC10Foundation4DataV_SStFZ_0(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  sub_225C0CC5C(v1);
  v2 = *(v0 + 196);
  v3 = PassportCommandAPDU.asData.getter();
  v5 = v4;

  v6 = sub_225C15D34(v3, v5, v2);
  v8 = v7;

  sub_2259BEF00(v3, v5);
  sub_2259CB710(v6, v8);
  v9 = sub_225C0D8B0(v6, v8);
  sub_2259BEF00(v9, v10);
  sub_2259BEF00(v6, v8);
  type metadata accessor for PassportCommandAPDU();
  inited = swift_initStackObject();
  *(inited + 16) = 45068;
  *(inited + 24) = xmmword_225CD4150;
  *(inited + 40) = xmmword_225CF2CF0;
  *(inited + 56) = 0xE000000000000000;
  sub_225C0CC5C(inited);
  v12 = PassportCommandAPDU.asData.getter();
  v58 = v13;
  v14 = sub_225C15D34(v12, v13, 1);
  v15 = v12;
  v17 = v16;
  sub_2259BEF00(v15, v58);
  sub_2259CB710(v14, v17);
  v59 = v17;
  v18 = v14;
  v19 = sub_225C0D8B0(v14, v17);
  v20 = v14;
  v22 = v21;
  sub_2259BEF00(v20, v59);
  v57 = v22;
  v23 = sub_225CCCF54();
  v24 = MEMORY[0x277CC9318];
  v25 = MEMORY[0x277CC9300];
  *(v0 + 104) = MEMORY[0x277CC9318];
  *(v0 + 112) = v25;
  *(v0 + 80) = v23;
  *(v0 + 88) = v26;
  result = __swift_project_boxed_opaque_existential_1((v0 + 80), v24);
  v28 = *result;
  v29 = result[1];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 != 2)
    {
      *(v0 + 188) = 0;
      *(v0 + 182) = 0;
      v31 = (v0 + 182);
      v32 = (v0 + 182);
      goto LABEL_19;
    }

    v55 = v19;
    v56 = v18;
    v51 = *(v28 + 24);
    v53 = *(v28 + 16);
    result = sub_225CCCA44();
    if (result)
    {
      v33 = result;
      result = sub_225CCCA74();
      v34 = v53;
      if (__OFSUB__(v53, result))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v50 = v33 + v53 - result;
    }

    else
    {
      v50 = 0;
      v34 = v53;
    }

    v43 = v51 - v34;
    if (!__OFSUB__(v51, v34))
    {
      v44 = sub_225CCCA64();
      if (v44 >= v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = v44;
      }

      v42 = v50;
      v46 = &v50[v45];
      if (v50)
      {
        v41 = v46;
      }

      else
      {
        v41 = 0;
      }

LABEL_28:
      sub_225B3D3E8(v42, v41, v60);

      v19 = v55;
      v18 = v56;
      goto LABEL_29;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v30)
  {
    v55 = v19;
    v56 = v18;
    v35 = v28;
    v36 = v28 >> 32;
    v52 = v35;
    v54 = v36 - v35;
    if (v36 >= v35)
    {
      v37 = sub_225CCCA44();
      if (!v37)
      {
LABEL_12:
        v38 = sub_225CCCA64();
        v39 = v54;
        if (v38 < v54)
        {
          v39 = v38;
        }

        v40 = (v39 + v37);
        if (v37)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v42 = v37;
        goto LABEL_28;
      }

      result = sub_225CCCA74();
      if (!__OFSUB__(v52, result))
      {
        v37 += v52 - result;
        goto LABEL_12;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_33;
  }

  v31 = (v0 + 168);
  *(v0 + 168) = v28;
  *(v0 + 176) = v29;
  *(v0 + 178) = BYTE2(v29);
  *(v0 + 179) = BYTE3(v29);
  *(v0 + 180) = BYTE4(v29);
  *(v0 + 181) = BYTE5(v29);
  v32 = (v0 + 168 + BYTE6(v29));
LABEL_19:
  sub_225B3D3E8(v31, v32, v60);

LABEL_29:
  swift_setDeallocating();
  sub_2259B97A8(*(inited + 24), *(inited + 32));
  sub_2259BEF00(v19, v57);

  sub_2259BEF00(v18, v59);
  sub_2259BEF00(v6, v8);
  v48 = v60[0];
  v47 = v60[1];
  __swift_destroy_boxed_opaque_existential_0(v0 + 80);
  v49 = *(v0 + 8);

  return v49(v48, v47);
}

uint64_t sub_225C14C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 112) = a8;
  *(v9 + 120) = v8;
  *(v9 + 142) = v12;
  *(v9 + 96) = a6;
  *(v9 + 104) = a7;
  *(v9 + 80) = a4;
  *(v9 + 88) = a5;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  *(v9 + 56) = a1;

  return MEMORY[0x2822009F8](sub_225C14D3C, 0, 0);
}

uint64_t *sub_225C14D3C()
{
  v98 = v0;
  v97 = *MEMORY[0x277D85DE8];
  v1 = _s13CoreIDVShared19PassportCommandAPDUC15encryptedSelect6fileID0H4NameAC10Foundation4DataV_SStFZ_0(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_225C0CC5C(v1);
  v2 = PassportCommandAPDU.asData.getter();
  v4 = v3;

  v5 = sub_225C15D34(v2, v4, 1);
  v7 = v6;

  sub_2259BEF00(v2, v4);
  sub_2259CB710(v5, v7);
  v8 = sub_225C0D8B0(v5, v7);
  v9 = *(v0 + 104);
  sub_2259BEF00(v8, v10);
  v93 = v5;
  sub_2259BEF00(v5, v7);
  v94 = xmmword_225CD4150;
  v11 = v9 >> 60;
  v12 = v9 >> 60 == 15;
  if (v9 >> 60 == 15)
  {
    v92 = v7;
    type metadata accessor for PassportCommandAPDU();
    v13 = swift_allocObject();
    *(v13 + 16) = 45068;
    *(v13 + 24) = xmmword_225CD4150;
    *(v13 + 40) = xmmword_225CF2CB0;
    *(v13 + 56) = 0xE000000000000000;

    sub_225C0CC5C(v14);
    v89 = v9 >> 60 == 15;

    v17 = PassportCommandAPDU.asData.getter();
    v19 = v18;
    v43 = sub_225C15D34(v17, v18, 1);
    v45 = v44;
    sub_2259BEF00(v17, v19);
    sub_2259CB710(v43, v45);
    v47 = sub_225C0D8B0(v43, v45);
    v49 = v48;
    sub_2259BEF00(v43, v45);
    v50 = sub_225CCCF54();
    v52 = v51;
    v88 = v47;
    v91 = sub_225C17210(v50, v51);
    v53 = (v0 + 128);
    v54 = MEMORY[0x277CC9318];
    v55 = MEMORY[0x277CC9300];
    *(v0 + 40) = MEMORY[0x277CC9318];
    *(v0 + 48) = v55;
    *(v0 + 16) = v50;
    *(v0 + 24) = v52;
    result = __swift_project_boxed_opaque_existential_1((v0 + 16), v54);
    v57 = *result;
    v58 = result[1];
    v59 = v58 >> 62;
    if ((v58 >> 62) > 1)
    {
      if (v59 != 2)
      {
        *(v0 + 134) = 0;
        *v53 = 0;
        v61 = (v0 + 128);
        v60 = (v0 + 128);
        goto LABEL_57;
      }

      v84 = *(v57 + 24);
      v86 = *(v57 + 16);
      result = sub_225CCCA44();
      v83 = v45;
      if (result)
      {
        v62 = result;
        result = sub_225CCCA74();
        if (__OFSUB__(v86, result))
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v63 = v62 + v86 - result;
      }

      else
      {
        v63 = 0;
      }

      if (!__OFSUB__(v84, v86))
      {
        v72 = sub_225CCCA64();
        if (v72 >= v84 - v86)
        {
          v73 = v84 - v86;
        }

        else
        {
          v73 = v72;
        }

        v74 = &v63[v73];
        if (v63)
        {
          v75 = v74;
        }

        else
        {
          v75 = 0;
        }

        sub_225B3D3E8(v63, v75, &v95);

        sub_2259BEF00(v88, v49);
        v70 = v43;
        v71 = v83;
        goto LABEL_67;
      }
    }

    else
    {
      if (!v59)
      {
        *(v0 + 128) = v57;
        *(v0 + 136) = v58;
        *(v0 + 138) = BYTE2(v58);
        *(v0 + 139) = BYTE3(v58);
        *(v0 + 140) = BYTE4(v58);
        *(v0 + 141) = BYTE5(v58);
        v60 = v53 + BYTE6(v58);
        v61 = (v0 + 128);
LABEL_57:
        sub_225B3D3E8(v61, v60, &v95);

        sub_2259BEF00(v88, v49);
        v70 = v43;
        v71 = v45;
LABEL_67:
        sub_2259BEF00(v70, v71);
        v21 = v95;
        v22 = v96;
        __swift_destroy_boxed_opaque_existential_0(v0 + 16);
        result = sub_2259BEF00(0, 0xC000000000000000);
        *&v94 = v21;
        *(&v94 + 1) = v22;
        v76 = v22 >> 62;
        if ((v22 >> 62) > 1)
        {
          if (v76 != 2)
          {
            v20 = 8;
            v11 = 15;
            v12 = v89;
            goto LABEL_4;
          }

          v79 = *(v21 + 16);
          v78 = *(v21 + 24);
          v42 = __OFSUB__(v78, v79);
          v77 = v78 - v79;
          if (!v42)
          {
LABEL_76:
            if (v77 >= v91)
            {

              sub_2259BEF00(v93, v7);
              goto LABEL_34;
            }

            if (v76 == 2)
            {
              v82 = *(v21 + 16);
              v81 = *(v21 + 24);
              v42 = __OFSUB__(v81, v82);
              v80 = v81 - v82;
              if (!v42)
              {
LABEL_87:
                v20 = 8;
                v11 = 15;
                v12 = v89;
                v23 = &v91[-v80];
                if (__OFSUB__(v91, v80))
                {
                  __break(1u);
LABEL_90:
                  __break(1u);
LABEL_91:
                  __break(1u);
LABEL_92:
                  __break(1u);
LABEL_93:
                  __break(1u);
LABEL_94:
                  __break(1u);
LABEL_95:
                  __break(1u);
                }

                goto LABEL_6;
              }

              __break(1u);
            }

            else if (v76 == 1)
            {
              LODWORD(v80) = HIDWORD(v21) - v21;
              if (!__OFSUB__(HIDWORD(v21), v21))
              {
                v80 = v80;
                goto LABEL_87;
              }

LABEL_101:
              __break(1u);
              return result;
            }

            v80 = BYTE6(v22);
            goto LABEL_87;
          }

          __break(1u);
        }

        else if (!v76)
        {
          v77 = BYTE6(v22);
          goto LABEL_76;
        }

        LODWORD(v77) = HIDWORD(v21) - v21;
        if (!__OFSUB__(HIDWORD(v21), v21))
        {
          v77 = v77;
          goto LABEL_76;
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v64 = v57;
      v65 = v57 >> 32;
      v85 = v64;
      v87 = v65 - v64;
      if (v65 >= v64)
      {
        v66 = sub_225CCCA44();
        if (!v66)
        {
LABEL_50:
          v67 = sub_225CCCA64();
          v68 = v87;
          if (v67 < v87)
          {
            v68 = v67;
          }

          v69 = (v68 + v66);
          if (v66)
          {
            v60 = v69;
          }

          else
          {
            v60 = 0;
          }

          v61 = v66;
          goto LABEL_57;
        }

        result = sub_225CCCA74();
        if (!__OFSUB__(v85, result))
        {
          v66 += v85 - result;
          goto LABEL_50;
        }

LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_98;
  }

  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  sub_2259CB6FC(v16, v15);
  v91 = sub_225C17210(v16, v15);
  v92 = v7;
  sub_2259B97A8(*(v0 + 96), *(v0 + 104));
  v20 = 0;
  v21 = 0;
  v22 = 0xC000000000000000;
LABEL_4:
  if (v91 <= 0)
  {
    goto LABEL_33;
  }

  v23 = v91;
LABEL_6:
  if (v23 >= 1)
  {
    v24 = 160;
    if ((*(v0 + 142) & 1) == 0)
    {
      v24 = *(v0 + 112);
    }

    if (v24 >= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    do
    {
      if (v20 >> 8 > 255)
      {
        goto LABEL_90;
      }

      v90 = v23;
      if (v20 >> 8 < 0)
      {
        goto LABEL_91;
      }

      type metadata accessor for PassportCommandAPDU();
      v26 = swift_allocObject();
      *(v26 + 16) = -20468;
      *(v26 + 18) = BYTE1(v20);
      *(v26 + 19) = v20;
      *(v26 + 24) = xmmword_225CD4150;
      *(v26 + 40) = v25;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0xE000000000000000;
      if (v12)
      {
      }

      sub_225C0CC5C(v27);

      v28 = PassportCommandAPDU.asData.getter();
      v30 = v29;
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_225CCF204();

      v95 = 0xD000000000000016;
      v96 = 0x8000000225D25FC0;
      *(v0 + 16) = v25;
      v31 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v31);

      MEMORY[0x22AA6CE70](0x736574796220, 0xE600000000000000);
      v32 = sub_225C15D34(v28, v30, 1);
      v34 = v33;

      sub_2259BEF00(v28, v30);
      sub_2259CB710(v32, v34);
      v35 = sub_225C0D8B0(v32, v34);
      v37 = v36;
      sub_2259BEF00(v32, v34);
      v38 = v37 >> 62;
      if ((v37 >> 62) > 1)
      {
        if (v38 == 2)
        {
          v41 = *(v35 + 16);
          v40 = *(v35 + 24);
          v39 = v40 - v41;
          if (__OFSUB__(v40, v41))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v39 = 0;
        }
      }

      else if (v38)
      {
        if (__OFSUB__(HIDWORD(v35), v35))
        {
          goto LABEL_95;
        }

        v39 = HIDWORD(v35) - v35;
      }

      else
      {
        v39 = BYTE6(v37);
      }

      sub_225CCCFC4();
      sub_2259BEF00(v32, v34);
      sub_2259BEF00(v35, v37);

      v42 = __OFADD__(v20, v39);
      v20 += v39;
      if (v42)
      {
        goto LABEL_92;
      }

      v23 = v90 - v39;
      if (__OFSUB__(v90, v39))
      {
        goto LABEL_93;
      }

      if (v39 >= v23)
      {
        v25 = v90 - v39;
      }

      else
      {
        v25 = v39;
      }

      v12 = 1;
    }

    while (v23 > 0);

    sub_2259BEF00(v93, v92);
    v22 = *(&v94 + 1);
    v21 = v94;
    sub_2259CB710(v94, *(&v94 + 1));

    goto LABEL_36;
  }

LABEL_33:

  sub_2259BEF00(v93, v92);
  if (v11 < 0xF)
  {
    sub_2259CB710(v21, v22);
    goto LABEL_36;
  }

LABEL_34:
  sub_2259CB710(v21, v22);

LABEL_36:
  sub_2259BEF00(v21, v22);
  v46 = *(v0 + 8);

  return v46(v21, v22);
}

uint64_t TagOperations.deinit()
{
  sub_225C17B38(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t TagOperations.__deallocating_deinit()
{
  sub_225C17B38(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_225C158C0()
{
  v0 = sub_225CCE704();
  v4 = sub_225C15940(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_225C15940(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_225CCEFE4();
    if (!v9 || (v10 = v9, v11 = sub_225C0060C(v9, 0), v12 = sub_225C15A98(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_225CCE5A4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_225CCE5A4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_225CCF354();
LABEL_4:

  return sub_225CCE5A4();
}

unint64_t sub_225C15A98(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_225C15CB8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_225CCE684();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_225CCF354();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_225C15CB8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_225CCE664();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
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
  return result;
}

uint64_t sub_225C15CB8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_225CCE6A4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AA6CEB0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_225C15D34(uint64_t a1, unint64_t a2, int a3)
{
  v5 = v4;
  v203 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v204 = &v190[-v10];
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v190[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = MEMORY[0x28223BE20](v18, v19);
  MEMORY[0x28223BE20](v20, v21);
  v25 = &v190[-v24];
  v26 = v3[4];
  if (!v26)
  {
    v76 = v3[2];
    if (v76)
    {
      v77 = a3;
      v78 = v3[3];
      v79 = v76;
      v80 = v78;
      if ([v80 connectTag_])
      {
        v81 = sub_225CCCF74();
        v82 = [v80 transceive_];

        if (!v82)
        {
          v202 = 0x8000000225D26040;
          v203 = 0x8000000225D260F0;
          v201 = 0x8000000225D260B0;
          v136 = sub_225B2C248(MEMORY[0x277D84F90]);
          sub_2259CB5EC();
          swift_allocError();
          v138 = v137;
          v139 = sub_225CCE954();
          v140 = *(v139 - 8);
          v141 = v204;
          (*(v140 + 56))(v204, 1, 1, v139);
          LODWORD(v139) = (*(v140 + 48))(v141, 1, v139);
          sub_2259DB318(v141);
          if (v139)
          {
            v58 = 871;
          }

          else
          {
            v58 = 23;
          }

          v142 = MEMORY[0x277D84F90];
          v143 = sub_225B2C374(MEMORY[0x277D84F90]);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v205 = v143;
          sub_225B2C4A0(v136, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v205);

          v145 = v205;
          v146 = sub_225B29AA0(0, 1, 1, v142);
          v148 = *(v146 + 2);
          v147 = *(v146 + 3);
          if (v148 >= v147 >> 1)
          {
            v146 = sub_225B29AA0((v147 > 1), v148 + 1, 1, v146);
          }

          *(v146 + 2) = v148 + 1;
          v149 = &v146[56 * v148];
          v151 = v202;
          v150 = v203;
          *(v149 + 4) = 0xD00000000000001CLL;
          *(v149 + 5) = v150;
          *(v149 + 6) = 0xD000000000000021;
          *(v149 + 7) = v151;
          *(v149 + 8) = 0xD000000000000034;
          *(v149 + 9) = v201;
          *(v149 + 10) = 50;
          *v138 = v58;
          *(v138 + 8) = v146;
          *(v138 + 16) = 0xD00000000000001CLL;
          *(v138 + 24) = v150;
          *(v138 + 32) = v145;
          *(v138 + 40) = 0;
          swift_willThrow();

          return v58;
        }

        v194 = v12;
        v202 = v11;
        v58 = sub_225CCCFA4();
        v84 = v83;

        if ((v77 & 1) == 0)
        {
          return v58;
        }

        goto LABEL_42;
      }
    }

    v50 = 0x8000000225D26090;
    v202 = 0x8000000225D260B0;
    v203 = 0x8000000225D26040;
    v100 = MEMORY[0x277D84F90];
    v101 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v54 = v102;
    v103 = sub_225CCE954();
    v104 = *(v103 - 8);
    v105 = v204;
    (*(v104 + 56))(v204, 1, 1, v103);
    LODWORD(v103) = (*(v104 + 48))(v105, 1, v103);
    sub_2259DB318(v105);
    if (v103)
    {
      v58 = 870;
    }

    else
    {
      v58 = 23;
    }

    v106 = sub_225B2C374(v100);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v106;
    sub_225B2C4A0(v101, sub_225B2AC40, 0, v107, &v205);

    v61 = v205;
    v93 = sub_225B29AA0(0, 1, 1, v100);
    v109 = *(v93 + 2);
    v108 = *(v93 + 3);
    if (v109 >= v108 >> 1)
    {
      v93 = sub_225B29AA0((v108 > 1), v109 + 1, 1, v93);
    }

    *(v93 + 2) = v109 + 1;
    v96 = &v93[56 * v109];
    v97 = 0xD000000000000018;
    *(v96 + 4) = 0xD000000000000018;
    *(v96 + 5) = 0x8000000225D26090;
    v110 = v203;
    *(v96 + 6) = 0xD000000000000021;
    *(v96 + 7) = v110;
    v111 = v202;
    *(v96 + 8) = 0xD000000000000034;
    *(v96 + 9) = v111;
    v99 = 47;
LABEL_38:
    *(v96 + 10) = v99;
    *v54 = v58;
    *(v54 + 8) = v93;
    *(v54 + 16) = v97;
LABEL_39:
    *(v54 + 24) = v50;
    *(v54 + 32) = v61;
    *(v54 + 40) = 0;
    swift_willThrow();
    return v58;
  }

  v199 = a2;
  v192 = v16;
  v193 = v23;
  v195 = v22;
  v191 = a3;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v27 = off_28105B918;
  v28 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v29 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v29));
  v196 = *(v12 + 16);
  v197 = v28;
  v196(v25, &v28[v27], v11);
  v198 = v29;
  os_unfair_lock_unlock((v27 + v29));
  v30 = sub_225CCD934();
  v31 = sub_225CCED34();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v194 = v12;
    v33 = v32;
    *v32 = 0;
    _os_log_impl(&dword_2259A7000, v30, v31, "Static APDU transcript initialized, will lookup apdu", v32, 2u);
    v34 = v33;
    v5 = v4;
    v12 = v194;
    MEMORY[0x22AA6F950](v34, -1, -1);
  }

  v35 = *(v12 + 8);
  v201 = v12 + 8;
  v202 = v11;
  v200 = v35;
  v35(v25, v11);
  v36 = sub_225B34448(v203, v199);
  v203 = v5;
  v205 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259CB764();
  sub_225CCE384();

  v37 = sub_225CCE514();
  v39 = v38;

  if (!*(v26 + 16) || (sub_2259F18D4(v37, v39), (v40 & 1) == 0))
  {
    v67 = v198;
    os_unfair_lock_lock((v27 + v198));
    v68 = v195;
    v69 = v202;
    v196(v195, &v197[v27], v202);
    v70 = v68;
    os_unfair_lock_unlock((v27 + v67));

    v71 = sub_225CCD934();
    v72 = sub_225CCED34();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v205 = v74;
      *v73 = 136315138;
      v75 = sub_2259BE198(v37, v39, &v205);

      *(v73 + 4) = v75;
      _os_log_impl(&dword_2259A7000, v71, v72, "Unable to find rapdu for: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x22AA6F950](v74, -1, -1);
      MEMORY[0x22AA6F950](v73, -1, -1);
    }

    else
    {
    }

    v200(v70, v69);
    v50 = 0x8000000225D26170;
    v202 = 0x8000000225D26040;
    v85 = MEMORY[0x277D84F90];
    v86 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v54 = v87;
    v88 = sub_225CCE954();
    v89 = *(v88 - 8);
    v90 = v204;
    (*(v89 + 56))(v204, 1, 1, v88);
    LODWORD(v88) = (*(v89 + 48))(v90, 1, v88);
    sub_2259DB318(v90);
    if (v88)
    {
      v58 = 1001;
    }

    else
    {
      v58 = 23;
    }

    v91 = sub_225B2C374(v85);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v91;
    sub_225B2C4A0(v86, sub_225B2AC40, 0, v92, &v205);

    v61 = v205;
    v93 = sub_225B29AA0(0, 1, 1, v85);
    v95 = *(v93 + 2);
    v94 = *(v93 + 3);
    if (v95 >= v94 >> 1)
    {
      v93 = sub_225B29AA0((v94 > 1), v95 + 1, 1, v93);
    }

    *(v93 + 2) = v95 + 1;
    v96 = &v93[56 * v95];
    v97 = 0xD000000000000025;
    *(v96 + 4) = 0xD000000000000025;
    *(v96 + 5) = 0x8000000225D26170;
    v98 = v202;
    *(v96 + 6) = 0xD000000000000021;
    *(v96 + 7) = v98;
    *(v96 + 8) = 0xD000000000000034;
    *(v96 + 9) = 0x8000000225D260B0;
    v99 = 43;
    goto LABEL_38;
  }

  v194 = v12;

  v41 = v198;
  os_unfair_lock_lock((v27 + v198));
  v42 = v193;
  v43 = v202;
  v196(v193, &v197[v27], v202);
  v44 = v42;
  os_unfair_lock_unlock((v27 + v41));
  v45 = sub_225CCD934();
  v46 = sub_225CCED34();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2259A7000, v45, v46, "Found RAPDU", v47, 2u);
    MEMORY[0x22AA6F950](v47, -1, -1);
  }

  v200(v44, v43);
  v48 = Data.init(base16Encoded:)();
  if (v49 >> 60 == 15)
  {
    v50 = 0x8000000225D261A0;
    v202 = 0x8000000225D26040;
    v51 = MEMORY[0x277D84F90];
    v52 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v54 = v53;
    v55 = sub_225CCE954();
    v56 = *(v55 - 8);
    v57 = v204;
    (*(v56 + 56))(v204, 1, 1, v55);
    LODWORD(v55) = (*(v56 + 48))(v57, 1, v55);
    sub_2259DB318(v57);
    if (v55)
    {
      v58 = 871;
    }

    else
    {
      v58 = 23;
    }

    v59 = sub_225B2C374(v51);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v59;
    sub_225B2C4A0(v52, sub_225B2AC40, 0, v60, &v205);

    v61 = v205;
    v62 = sub_225B29AA0(0, 1, 1, v51);
    v64 = *(v62 + 2);
    v63 = *(v62 + 3);
    if (v64 >= v63 >> 1)
    {
      v62 = sub_225B29AA0((v63 > 1), v64 + 1, 1, v62);
    }

    *(v62 + 2) = v64 + 1;
    v65 = &v62[56 * v64];
    *(v65 + 4) = 0xD00000000000001ELL;
    *(v65 + 5) = 0x8000000225D261A0;
    v66 = v202;
    *(v65 + 6) = 0xD000000000000021;
    *(v65 + 7) = v66;
    *(v65 + 8) = 0xD000000000000034;
    *(v65 + 9) = 0x8000000225D260B0;
    *(v65 + 10) = 56;
    *v54 = v58;
    *(v54 + 8) = v62;
    *(v54 + 16) = 0xD00000000000001ELL;
    goto LABEL_39;
  }

  v58 = v48;
  v84 = v49;
  v5 = v203;
  v16 = v192;
  if ((v191 & 1) == 0)
  {
    return v58;
  }

LABEL_42:
  v203 = v5;
  sub_2259CB710(v58, v84);
  v113 = sub_225C0F394(v58, v84);
  v114 = *(v113 + 16);
  v115 = v114 - 2;
  if (v114 < 2)
  {

    v116 = 0x8000000225D26140;
    v201 = 0x8000000225D260B0;
    v202 = 0x8000000225D26040;
    v117 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v119 = v118;
    v120 = sub_225CCE954();
    v121 = *(v120 - 8);
    v122 = v204;
    (*(v121 + 56))(v204, 1, 1, v120);
    LODWORD(v120) = (*(v121 + 48))(v122, 1, v120);
    sub_2259DB318(v122);
    if (v120)
    {
      v123 = 871;
    }

    else
    {
      v123 = 23;
    }

    v124 = MEMORY[0x277D84F90];
    v125 = sub_225B2C374(MEMORY[0x277D84F90]);
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v125;
    sub_225B2C4A0(v117, sub_225B2AC40, 0, v126, &v205);

    v127 = v205;
    v128 = sub_225B29AA0(0, 1, 1, v124);
    v130 = *(v128 + 2);
    v129 = *(v128 + 3);
    if (v130 >= v129 >> 1)
    {
      v128 = sub_225B29AA0((v129 > 1), v130 + 1, 1, v128);
    }

    *(v128 + 2) = v130 + 1;
    v131 = &v128[56 * v130];
    v132 = 0xD000000000000025;
    *(v131 + 4) = 0xD000000000000025;
    *(v131 + 5) = 0x8000000225D26140;
    v133 = v202;
    *(v131 + 6) = 0xD000000000000021;
    *(v131 + 7) = v133;
    v134 = v201;
    *(v131 + 8) = 0xD000000000000034;
    *(v131 + 9) = v134;
    v135 = 67;
LABEL_69:
    *(v131 + 10) = v135;
    *v119 = v123;
    *(v119 + 8) = v128;
    *(v119 + 16) = v132;
    *(v119 + 24) = v116;
    *(v119 + 32) = v127;
    *(v119 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(v58, v84);
    return v58;
  }

  v201 = v113;
  LODWORD(v200) = *(v113 + 32 + v115);
  v197 = (v113 + 32);
  v198 = v114;
  LODWORD(v199) = *(v113 + 32 + v114 - 1);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v152 = off_28105B918;
  v153 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v154 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v154));
  v155 = v194;
  v156 = v202;
  (*(v194 + 16))(v16, &v152[v153], v202);
  os_unfair_lock_unlock(&v152[v154]);
  v157 = sub_225CCD934();
  v158 = sub_225CCED34();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v195 = v159;
    v196 = swift_slowAlloc();
    v205 = v196;
    *v159 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7B0);
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_225CD4890;
    v161 = MEMORY[0x277D84B78];
    v162 = MEMORY[0x277D84BC0];
    *(v160 + 56) = MEMORY[0x277D84B78];
    *(v160 + 64) = v162;
    LODWORD(v159) = v200;
    *(v160 + 32) = v200;
    *(v160 + 96) = v161;
    *(v160 + 104) = v162;
    v202 = v156;
    v163 = v199;
    *(v160 + 72) = v199;
    v164 = sub_225CCE4A4();
    v192 = v16;
    v166 = sub_2259BE198(v164, v165, &v205);
    v193 = v157;
    v167 = v158;
    v168 = v115;
    v169 = v166;

    v170 = v195;
    *(v195 + 1) = v169;
    v115 = v168;
    v171 = v159;
    v172 = v167;
    v173 = v193;
    v174 = v170;
    _os_log_impl(&dword_2259A7000, v193, v172, "TagOperations response sw = 0x%s", v170, 0xCu);
    v175 = v196;
    __swift_destroy_boxed_opaque_existential_0(v196);
    MEMORY[0x22AA6F950](v175, -1, -1);
    MEMORY[0x22AA6F950](v174, -1, -1);

    (*(v155 + 8))(v192, v202);
  }

  else
  {

    (*(v155 + 8))(v16, v156);
    v171 = v200;
    v163 = v199;
  }

  if (sub_225C0EFD4(v163 | (v171 << 8)) != 36)
  {

    v116 = 0x8000000225D26110;
    v201 = 0x8000000225D260B0;
    v202 = 0x8000000225D26040;
    v177 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v119 = v178;
    v179 = sub_225CCE954();
    v180 = *(v179 - 8);
    v181 = v204;
    (*(v180 + 56))(v204, 1, 1, v179);
    LODWORD(v179) = (*(v180 + 48))(v181, 1, v179);
    sub_2259DB318(v181);
    if (v179)
    {
      v123 = 871;
    }

    else
    {
      v123 = 23;
    }

    v182 = MEMORY[0x277D84F90];
    v183 = sub_225B2C374(MEMORY[0x277D84F90]);
    v184 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v183;
    sub_225B2C4A0(v177, sub_225B2AC40, 0, v184, &v205);

    v127 = v205;
    v128 = sub_225B29AA0(0, 1, 1, v182);
    v186 = *(v128 + 2);
    v185 = *(v128 + 3);
    if (v186 >= v185 >> 1)
    {
      v128 = sub_225B29AA0((v185 > 1), v186 + 1, 1, v128);
    }

    *(v128 + 2) = v186 + 1;
    v131 = &v128[56 * v186];
    v132 = 0xD000000000000026;
    *(v131 + 4) = 0xD000000000000026;
    *(v131 + 5) = 0x8000000225D26110;
    v187 = v202;
    *(v131 + 6) = 0xD000000000000021;
    *(v131 + 7) = v187;
    v188 = v201;
    *(v131 + 8) = 0xD000000000000034;
    *(v131 + 9) = v188;
    v135 = 79;
    goto LABEL_69;
  }

  result = v201;
  if (v198 == 2)
  {

    v176 = 0;
LABEL_72:
    sub_2259BEF00(v58, v84);
    return v176;
  }

  if (*(v201 + 16) >= v115)
  {
    sub_2259D2AD0(v201, v197, 0, (2 * v115) | 1);
    v176 = v189;
    goto LABEL_72;
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_225C17210(uint64_t a1, unint64_t a2)
{
  v6 = v2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v80 - v11;
  sub_2259CB710(a1, a2);
  v13 = sub_225C0F394(a1, a2);
  v15 = *(v13 + 16);
  if (v15 < 2)
  {
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v16 = *(v13 + 33);
  if ((*(v13 + 33) & 0x80000000) == 0)
  {

    return (v16 + 2);
  }

  if (v16 != 130)
  {
    if (v16 != 129)
    {

      v5 = 0x8000000225D26020;
      v82 = 0x8000000225D26070;
      v83 = 0x8000000225D26040;
      v35 = MEMORY[0x277D84F90];
      v36 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      a1 = v37;
      v38 = sub_225CCE954();
      v39 = *(v38 - 8);
      (*(v39 + 56))(v12, 1, 1, v38);
      LODWORD(v38) = (*(v39 + 48))(v12, 1, v38);
      sub_2259DB318(v12);
      if (v38)
      {
        v4 = 865;
      }

      else
      {
        v4 = 23;
      }

      v40 = sub_225B2C374(v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v40;
      sub_225B2C4A0(v36, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v84);

      v12 = v84[0];
      v14 = sub_225B29AA0(0, 1, 1, v35);
      v3 = *(v14 + 2);
      v15 = *(v14 + 3);
      v6 = v3 + 1;
      if (v3 < v15 >> 1)
      {
        goto LABEL_36;
      }

      goto LABEL_111;
    }

    if (v15 != 2)
    {
      v18 = *(v13 + 34);

      return (v18 + 3);
    }

    goto LABEL_109;
  }

  if (v15 < 4)
  {
LABEL_110:
    __break(1u);
LABEL_111:
    v14 = sub_225B29AA0((v15 > 1), v6, 1, v14);
LABEL_36:
    *(v14 + 2) = v6;
    v42 = &v14[56 * v3];
    *(v42 + 4) = 0xD000000000000011;
    *(v42 + 5) = v5;
    v43 = v83;
    *(v42 + 6) = 0xD000000000000021;
    *(v42 + 7) = v43;
    v44 = v82;
    *(v42 + 8) = 0xD000000000000012;
    *(v42 + 9) = v44;
    *(v42 + 10) = 223;
    *a1 = v4;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0xD000000000000011;
    *(a1 + 24) = v5;
    *(a1 + 32) = v12;
    *(a1 + 40) = 0;
    return swift_willThrow();
  }

  sub_2259D2AD0(v13, (v13 + 32), 2, 9);
  v20 = v19;
  v22 = v21;
  v84[0] = sub_225B34448(v19, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259CB764();
  v23 = sub_225CCE384();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  v27 = v23 & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v28 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

LABEL_102:
    v82 = v20;
    v83 = v22;
    v80 = 0x8000000225D26070;
    v81 = 0x8000000225D26040;
    v60 = MEMORY[0x277D84F90];
    v61 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v63 = v62;
    v64 = sub_225CCE954();
    v65 = *(v64 - 8);
    (*(v65 + 56))(v12, 1, 1, v64);
    LODWORD(v64) = (*(v65 + 48))(v12, 1, v64);
    sub_2259DB318(v12);
    if (v64)
    {
      v66 = 865;
    }

    else
    {
      v66 = 23;
    }

    v67 = sub_225B2C374(v60);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v67;
    sub_225B2C4A0(v61, sub_225B2AC40, 0, v68, v84);

    v69 = v84[0];
    v70 = sub_225B29AA0(0, 1, 1, v60);
    v72 = *(v70 + 2);
    v71 = *(v70 + 3);
    if (v72 >= v71 >> 1)
    {
      v70 = sub_225B29AA0((v71 > 1), v72 + 1, 1, v70);
    }

    v74 = v82;
    v73 = v83;
    *(v70 + 2) = v72 + 1;
    v75 = &v70[56 * v72];
    *(v75 + 4) = 0xD000000000000011;
    *(v75 + 5) = 0x8000000225D26020;
    v76 = v81;
    *(v75 + 6) = 0xD000000000000021;
    *(v75 + 7) = v76;
    v77 = v80;
    *(v75 + 8) = 0xD000000000000012;
    *(v75 + 9) = v77;
    *(v75 + 10) = 219;
    *v63 = v66;
    *(v63 + 8) = v70;
    *(v63 + 16) = 0xD000000000000011;
    *(v63 + 24) = 0x8000000225D26020;
    *(v63 + 32) = v69;
    *(v63 + 40) = 0;
    swift_willThrow();
    return sub_2259BEF00(v74, v73);
  }

  if ((v25 & 0x1000000000000000) != 0)
  {
    v30 = sub_2259F3F08(v23, v25, 16);
    v79 = v78;

    if ((v79 & 1) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_102;
  }

  if ((v25 & 0x2000000000000000) == 0)
  {
    if ((v23 & 0x1000000000000000) == 0)
    {
      goto LABEL_117;
    }

    for (result = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_225CCF354())
    {
      v29 = *result;
      if (v29 == 43)
      {
        if (v27 < 1)
        {
          goto LABEL_120;
        }

        v26 = v27 - 1;
        if (v27 != 1)
        {
          if (!result)
          {
            goto LABEL_88;
          }

          v30 = 0;
          v48 = result + 1;
          while (1)
          {
            v49 = *v48;
            v50 = v49 - 48;
            if ((v49 - 48) >= 0xA)
            {
              if ((v49 - 65) < 6)
              {
                v50 = v49 - 55;
              }

              else
              {
                if ((v49 - 97) > 5)
                {
                  break;
                }

                v50 = v49 - 87;
              }
            }

            if ((v30 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v34 = __OFADD__(16 * v30, v50);
            v30 = 16 * v30 + v50;
            if (v34)
            {
              break;
            }

            ++v48;
            if (!--v26)
            {
              goto LABEL_101;
            }
          }
        }
      }

      else if (v29 == 45)
      {
        if (v27 < 1)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        v26 = v27 - 1;
        if (v27 != 1)
        {
          if (!result)
          {
            goto LABEL_88;
          }

          v30 = 0;
          v31 = result + 1;
          while (1)
          {
            v32 = *v31;
            v33 = v32 - 48;
            if ((v32 - 48) >= 0xA)
            {
              if ((v32 - 65) < 6)
              {
                v33 = v32 - 55;
              }

              else
              {
                if ((v32 - 97) > 5)
                {
                  break;
                }

                v33 = v32 - 87;
              }
            }

            if ((v30 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v34 = __OFSUB__(16 * v30, v33);
            v30 = 16 * v30 - v33;
            if (v34)
            {
              break;
            }

            ++v31;
            if (!--v26)
            {
              goto LABEL_101;
            }
          }
        }
      }

      else if (v27)
      {
        if (!result)
        {
LABEL_88:
          v30 = 0;
          LOBYTE(v26) = 0;
          goto LABEL_101;
        }

        v30 = 0;
        while (1)
        {
          v54 = *result;
          v55 = v54 - 48;
          if ((v54 - 48) >= 0xA)
          {
            if ((v54 - 65) < 6)
            {
              v55 = v54 - 55;
            }

            else
            {
              if ((v54 - 97) > 5)
              {
                break;
              }

              v55 = v54 - 87;
            }
          }

          if ((v30 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v34 = __OFADD__(16 * v30, v55);
          v30 = 16 * v30 + v55;
          if (v34)
          {
            break;
          }

          ++result;
          if (!--v27)
          {
            LOBYTE(v26) = 0;
            goto LABEL_101;
          }
        }
      }

LABEL_100:
      v30 = 0;
      LOBYTE(v26) = 1;
LABEL_101:
      v85 = v26;
      v59 = v26;

      if (v59)
      {
        goto LABEL_102;
      }

LABEL_114:
      sub_2259BEF00(v20, v22);
      result = (v30 + 4);
      if (!__OFADD__(v30, 4))
      {
        return result;
      }

      __break(1u);
LABEL_117:
      ;
    }
  }

  v84[0] = v23;
  v84[1] = v25 & 0xFFFFFFFFFFFFFFLL;
  if (v23 != 43)
  {
    if (v23 != 45)
    {
      if (!v26)
      {
        goto LABEL_100;
      }

      v30 = 0;
      v56 = v84;
      while (1)
      {
        v57 = *v56;
        v58 = v57 - 48;
        if ((v57 - 48) >= 0xA)
        {
          if ((v57 - 65) < 6)
          {
            v58 = v57 - 55;
          }

          else
          {
            if ((v57 - 97) > 5)
            {
              goto LABEL_100;
            }

            v58 = v57 - 87;
          }
        }

        if ((v30 - 0x800000000000000) >> 60 != 15)
        {
          goto LABEL_100;
        }

        v34 = __OFADD__(16 * v30, v58);
        v30 = 16 * v30 + v58;
        if (v34)
        {
          goto LABEL_100;
        }

        v56 = (v56 + 1);
        if (!--v26)
        {
          goto LABEL_101;
        }
      }
    }

    if (v26)
    {
      if (!--v26)
      {
        goto LABEL_100;
      }

      v30 = 0;
      v45 = v84 + 1;
      while (1)
      {
        v46 = *v45;
        v47 = v46 - 48;
        if ((v46 - 48) >= 0xA)
        {
          if ((v46 - 65) < 6)
          {
            v47 = v46 - 55;
          }

          else
          {
            if ((v46 - 97) > 5)
            {
              goto LABEL_100;
            }

            v47 = v46 - 87;
          }
        }

        if ((v30 - 0x800000000000000) >> 60 != 15)
        {
          goto LABEL_100;
        }

        v34 = __OFSUB__(16 * v30, v47);
        v30 = 16 * v30 - v47;
        if (v34)
        {
          goto LABEL_100;
        }

        ++v45;
        if (!--v26)
        {
          goto LABEL_101;
        }
      }
    }

    goto LABEL_119;
  }

  if (v26)
  {
    if (!--v26)
    {
      goto LABEL_100;
    }

    v30 = 0;
    v51 = v84 + 1;
    while (1)
    {
      v52 = *v51;
      v53 = v52 - 48;
      if ((v52 - 48) >= 0xA)
      {
        if ((v52 - 65) < 6)
        {
          v53 = v52 - 55;
        }

        else
        {
          if ((v52 - 97) > 5)
          {
            goto LABEL_100;
          }

          v53 = v52 - 87;
        }
      }

      if ((v30 - 0x800000000000000) >> 60 != 15)
      {
        goto LABEL_100;
      }

      v34 = __OFADD__(16 * v30, v53);
      v30 = 16 * v30 + v53;
      if (v34)
      {
        goto LABEL_100;
      }

      ++v51;
      if (!--v26)
      {
        goto LABEL_101;
      }
    }
  }

LABEL_121:
  __break(1u);
  return result;
}

void sub_225C17B38(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t dispatch thunk of TagOperations.encryptedReadCheckSize(for:with:secureMessaging:shouldCheckStatusWords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 120) + **(*v6 + 120));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_225A02EAC;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TagOperations.encryptedRead(for:with:secureMessaging:sizeData:maxReadSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(*v8 + 128) + **(*v8 + 128));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_225A01DDC;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t type metadata accessor for AlgorithmIdentifier()
{
  result = qword_27D740520;
  if (!qword_27D740520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlgorithmIdentifier.hash(_:)(uint64_t a1, unint64_t a2)
{
  v180 = a1;
  v181 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v148 = &v141 - v4;
  v144 = sub_225CCE184();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v5);
  v142 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_225CCDBC4();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v7);
  v145 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_225CCE174();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v9);
  v151 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_225CCDBB4();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v11);
  v154 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_225CCE164();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v13);
  v163 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_225CCDBA4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v15);
  v166 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_225CCE264();
  v173 = *(v17 - 8);
  v174 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v172 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_225CCE254();
  v176 = *(v20 - 8);
  v177 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v175 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_225CCD6B4();
  v24 = MEMORY[0x28223BE20](v189, v23);
  v150 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v160 = &v141 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v171 = &v141 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v162 = &v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v159 = &v141 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v170 = &v141 - v42;
  MEMORY[0x28223BE20](v41, v43);
  v45 = &v141 - v44;
  v46 = sub_225CCD624();
  v47 = *(v46 - 8);
  v49 = MEMORY[0x28223BE20](v46, v48);
  v161 = &v141 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49, v51);
  v158 = &v141 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v169 = &v141 - v56;
  MEMORY[0x28223BE20](v55, v57);
  v59 = &v141 - v58;
  v60 = type metadata accessor for AlgorithmIdentifier();
  v62 = MEMORY[0x28223BE20](v60, v61);
  v149 = &v141 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v62, v64);
  v157 = &v141 - v66;
  v68 = MEMORY[0x28223BE20](v65, v67);
  v70 = &v141 - v69;
  v72 = MEMORY[0x28223BE20](v68, v71);
  v74 = &v141 - v73;
  MEMORY[0x28223BE20](v72, v75);
  v77 = &v141 - v76;
  sub_225C197E0(v183, &v141 - v76);
  sub_225CCD604();
  sub_225CCD6A4();
  v78 = v182;
  sub_225CCD644();
  v182 = v78;
  if (v78)
  {
    swift_unexpectedError();
    __break(1u);
LABEL_22:
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_23;
  }

  v79 = sub_225CCD654();
  v80 = *(v79 - 8);
  v81 = *(v80 + 56);
  v178[1] = v80 + 56;
  v179 = v81;
  v81(v45, 0, 1, v79);
  v178[0] = *(v47 + 32);
  (v178[0])(v74, v59, v46);
  sub_225C0CB18(v45, &v74[*(v60 + 20)]);
  v82 = _s13CoreIDVShared19AlgorithmIdentifierV2eeoiySbAC_ACtFZ_0(v74, v77);
  sub_225C0CB88(v74);
  if (v82)
  {
    sub_225C0CB88(v77);
    sub_225C1AA8C(&qword_27D73ABF8, MEMORY[0x277CC5598]);
    v83 = v172;
    v84 = v174;
    sub_225CCDB94();
    v86 = v180;
    v85 = v181;
    sub_2259CB710(v180, v181);
    sub_2259D7024(v86, v85);
    sub_2259BEF00(v86, v85);
    v87 = v175;
    sub_225CCDB84();
    (*(v173 + 8))(v83, v84);
    v88 = v177;
    v187 = v177;
    v188 = sub_225C1AA8C(&qword_27D740518, MEMORY[0x277CC5578]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
    v90 = v176;
LABEL_13:
    (*(v90 + 16))(boxed_opaque_existential_1, v87, v88);
    __swift_project_boxed_opaque_existential_1(&v185, v187);
    sub_225CCCB84();
    (*(v90 + 8))(v87, v88);
    v121 = v184;
    __swift_destroy_boxed_opaque_existential_0(&v185);
    return v121;
  }

  v91 = v60;
  v177 = v77;
  v92 = v169;
  sub_225CCD604();
  sub_225CCD6A4();
  v93 = v170;
  v94 = v182;
  sub_225CCD644();
  if (v94)
  {
    goto LABEL_22;
  }

  v179(v93, 0, 1, v79);
  (v178[0])(v70, v92, v46);
  v182 = v91;
  sub_225C0CB18(v93, &v70[*(v91 + 20)]);
  v95 = v177;
  v96 = _s13CoreIDVShared19AlgorithmIdentifierV2eeoiySbAC_ACtFZ_0(v70, v177);
  sub_225C0CB88(v70);
  if (v96)
  {
    sub_225C0CB88(v95);
    sub_225C1AA8C(&qword_27D73AE10, MEMORY[0x277CC5540]);
    v97 = v163;
    v98 = v165;
    sub_225CCDB94();
    v100 = v180;
    v99 = v181;
    sub_2259CB710(v180, v181);
    sub_2259DB138(v100, v99);
    sub_2259BEF00(v100, v99);
    v87 = v166;
    sub_225CCDB84();
    (*(v164 + 8))(v97, v98);
    v88 = v168;
    v187 = v168;
    v188 = sub_225C1AA8C(&qword_27D73AE18, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
    v101 = &v190;
LABEL_12:
    v90 = *(v101 - 32);
    goto LABEL_13;
  }

  v102 = v158;
  sub_225CCD604();
  sub_225CCD6A4();
  v103 = v159;
  sub_225CCD644();
  v176 = 0;
  v179(v103, 0, 1, v79);
  v104 = v157;
  (v178[0])(v157, v102, v46);
  sub_225C0CB18(v103, v104 + *(v182 + 20));
  v105 = v177;
  v106 = _s13CoreIDVShared19AlgorithmIdentifierV2eeoiySbAC_ACtFZ_0(v104, v177);
  sub_225C0CB88(v104);
  v107 = v162;
  v108 = v161;
  if (v106)
  {
    sub_225C0CB88(v105);
    sub_225C1AA8C(&qword_27D73AE60, MEMORY[0x277CC5550]);
    v109 = v151;
    v110 = v153;
    sub_225CCDB94();
    v112 = v180;
    v111 = v181;
    sub_2259CB710(v180, v181);
    sub_225A9EC88(v112, v111, v109);
    sub_2259BEF00(v112, v111);
    v87 = v154;
    sub_225CCDB84();
    (*(v152 + 8))(v109, v110);
    v88 = v156;
    v187 = v156;
    v188 = sub_225C1AA8C(&qword_27D740510, MEMORY[0x277CC52C8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
    v101 = &v185;
    goto LABEL_12;
  }

  sub_225CCD604();
  sub_225CCD6A4();
  v113 = v176;
  sub_225CCD644();
  if (!v113)
  {
    v179(v107, 0, 1, v79);
    v114 = v149;
    (v178[0])(v149, v108, v46);
    sub_225C0CB18(v107, v114 + *(v182 + 20));
    v115 = v177;
    v116 = _s13CoreIDVShared19AlgorithmIdentifierV2eeoiySbAC_ACtFZ_0(v114, v177);
    sub_225C0CB88(v114);
    sub_225C0CB88(v115);
    if (!v116)
    {
      v185 = 0;
      v186 = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD000000000000034, 0x8000000225D261C0);
      sub_225C1AA8C(&qword_27D740500, MEMORY[0x277D6A958]);
      v123 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v123);

      v125 = v185;
      v124 = v186;
      v189 = 0x8000000225D25840;
      v126 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v128 = v127;
      v129 = sub_225CCE954();
      v130 = *(v129 - 8);
      v131 = v148;
      (*(v130 + 56))(v148, 1, 1, v129);
      LODWORD(v129) = (*(v130 + 48))(v131, 1, v129);
      sub_2259CB640(v131, &unk_27D73B050);
      if (v129)
      {
        v132 = 0;
      }

      else
      {
        v132 = 23;
      }

      v133 = MEMORY[0x277D84F90];
      v134 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v185 = v134;
      sub_225B2C4A0(v126, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v185);

      v136 = v185;
      v137 = sub_225B29AA0(0, 1, 1, v133);
      v139 = *(v137 + 2);
      v138 = *(v137 + 3);
      v121 = v139 + 1;
      if (v139 >= v138 >> 1)
      {
        v137 = sub_225B29AA0((v138 > 1), v139 + 1, 1, v137);
      }

      *(v137 + 2) = v121;
      v140 = &v137[56 * v139];
      *(v140 + 4) = v125;
      *(v140 + 5) = v124;
      *(v140 + 6) = 0xD000000000000027;
      *(v140 + 7) = v189;
      *(v140 + 8) = 0x293A5F2868736168;
      *(v140 + 9) = 0xE800000000000000;
      *(v140 + 10) = 47;
      *v128 = v132;
      *(v128 + 8) = v137;
      *(v128 + 16) = v125;
      *(v128 + 24) = v124;
      *(v128 + 32) = v136;
      *(v128 + 40) = 0;
      swift_willThrow();
      return v121;
    }

    sub_225C1AA8C(&qword_27D73AE70, MEMORY[0x277CC5560]);
    v117 = v142;
    v118 = v144;
    sub_225CCDB94();
    v120 = v180;
    v119 = v181;
    sub_2259CB710(v180, v181);
    sub_225A9EEAC(v120, v119, v117);
    sub_2259BEF00(v120, v119);
    v87 = v145;
    sub_225CCDB84();
    (*(v143 + 8))(v117, v118);
    v88 = v147;
    v187 = v147;
    v188 = sub_225C1AA8C(&qword_27D740508, MEMORY[0x277CC52E8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
    v101 = v178;
    goto LABEL_12;
  }

LABEL_23:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t AlgorithmIdentifier.algorithm.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_225CCD624();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AlgorithmIdentifier.algorithm.setter(uint64_t a1)
{
  v3 = sub_225CCD624();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AlgorithmIdentifier.parameters.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AlgorithmIdentifier() + 20);

  return sub_225C1A898(a1, v3);
}

uint64_t AlgorithmIdentifier.description.getter()
{
  sub_225CCD624();
  sub_225C1AA8C(&qword_27D740500, MEMORY[0x277D6A958]);

  return sub_225CCF824();
}

uint64_t sub_225C19510()
{
  sub_225CCD624();
  sub_225C1AA8C(&qword_27D740500, MEMORY[0x277D6A958]);

  return sub_225CCF824();
}

uint64_t sub_225C195B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_225CCD6B4();
  MEMORY[0x28223BE20](v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16[-v6];
  v8 = sub_225CCD624();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_225CCD604();
  sub_225CCD6A4();
  sub_225CCD644();
  v13 = sub_225CCD654();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  (*(v9 + 32))(a1, v12, v8);
  v14 = type metadata accessor for AlgorithmIdentifier();
  return sub_225C0CB18(v7, a1 + *(v14 + 20));
}

uint64_t sub_225C197E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlgorithmIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AlgorithmIdentifier.init(derEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_225CCD564();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AlgorithmIdentifier();
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 20);
  v16 = sub_225CCD654();
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  sub_225CCD544();
  sub_225CCD7F4();
  v17 = sub_225CCD694();
  (*(*(v17 - 8) + 8))(a1, v17);
  (*(v6 + 8))(v9, v5);
  if (v2)
  {
    return sub_2259CB640(a2 + v15, &qword_27D740448);
  }

  sub_2259CB640(a2 + v15, &qword_27D740448);
  return sub_225C1A908(v14, a2);
}

uint64_t sub_225C19AB8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_225CCD694();
  v2 = *(v1 - 8);
  v43 = v1;
  v44 = v2;
  v4 = MEMORY[0x28223BE20](v1, v3);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v40 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740538);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v37 - v17;
  v19 = sub_225CCD564();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v21 = sub_225CCD624();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD744();
  v26 = v45;
  result = sub_225CCD754();
  if (!v26)
  {
    v38 = v22;
    v45 = v18;
    v28 = v40;
    sub_225CCD5D4();
    v29 = v41;
    sub_225A0DE54(v14, v41, &qword_27D740538);
    v30 = v43;
    v31 = 1;
    if ((*(v44 + 48))(v29, 1, v43) != 1)
    {
      v32 = v44;
      (*(v44 + 32))(v28, v29, v30);
      (*(v32 + 16))(v39, v28, v30);
      sub_225CCD634();
      (*(v32 + 8))(v28, v30);
      v31 = 0;
    }

    sub_2259CB640(v14, &qword_27D740538);
    v33 = sub_225CCD654();
    v34 = v45;
    (*(*(v33 - 8) + 56))(v45, v31, 1, v33);
    v35 = v42;
    (*(v38 + 32))(v42, v25, v21);
    v36 = type metadata accessor for AlgorithmIdentifier();
    return sub_225C0CB18(v34, v35 + *(v36 + 20));
  }

  return result;
}

uint64_t sub_225C19ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_225CCD564();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 20);
  v17 = sub_225CCD654();
  (*(*(v17 - 8) + 56))(a3 + v16, 1, 1, v17);
  sub_225CCD544();
  sub_225CCD7F4();
  v18 = sub_225CCD694();
  (*(*(v18 - 8) + 8))(a1, v18);
  (*(v8 + 8))(v12, v7);
  if (v3)
  {
    return sub_2259CB640(a3 + v16, &qword_27D740448);
  }

  sub_2259CB640(a3 + v16, &qword_27D740448);
  return sub_225C1A908(v15, a3);
}

uint64_t AlgorithmIdentifier.serialize(into:)()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_225CCD544();
  v8 = v0;
  sub_225CCD784();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_225C1A244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v15 - v6;
  v8 = sub_225CCD654();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD624();
  result = sub_225CCD7A4();
  if (!v2)
  {
    v14 = type metadata accessor for AlgorithmIdentifier();
    sub_225A0DE54(a2 + *(v14 + 20), v7, &qword_27D740448);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_2259CB640(v7, &qword_27D740448);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_225CCD7A4();
      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

uint64_t sub_225C1A43C()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_225CCD544();
  v8 = v0;
  sub_225CCD784();
  return (*(v2 + 8))(v5, v1);
}

BOOL _s13CoreIDVShared19AlgorithmIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCD654();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740540);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v24 - v15;
  if ((sub_225CCD614() & 1) == 0)
  {
    return 0;
  }

  v25 = v8;
  v17 = *(type metadata accessor for AlgorithmIdentifier() + 20);
  v18 = *(v13 + 48);
  sub_225A0DE54(a1 + v17, v16, &qword_27D740448);
  sub_225A0DE54(a2 + v17, &v16[v18], &qword_27D740448);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_2259CB640(v16, &qword_27D740448);
      return 1;
    }

    goto LABEL_7;
  }

  sub_225A0DE54(v16, v12, &qword_27D740448);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_2259CB640(v16, &qword_27D740540);
    return 0;
  }

  v21 = v25;
  (*(v5 + 32))(v25, &v16[v18], v4);
  sub_225C1AA8C(&qword_27D740548, MEMORY[0x277D6A988]);
  v22 = sub_225CCE3C4();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v12, v4);
  sub_2259CB640(v16, &qword_27D740448);
  return (v22 & 1) != 0;
}

uint64_t sub_225C1A898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_225C1A908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlgorithmIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_225C1A9B0()
{
  sub_225CCD624();
  if (v0 <= 0x3F)
  {
    sub_225C1AA34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225C1AA34()
{
  if (!qword_27D740530)
  {
    sub_225CCD654();
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D740530);
    }
  }
}

uint64_t sub_225C1AA8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225C1AB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlgorithmIdentifier();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HashDigest.digest.getter()
{
  v1 = v0 + *(type metadata accessor for HashDigest() + 20);
  v2 = *v1;
  sub_2259CB710(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for HashDigest()
{
  result = qword_27D740550;
  if (!qword_27D740550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HashDigest.digest.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for HashDigest() + 20);
  result = sub_2259BEF00(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t HashDigest.init(derEncoded:)(uint64_t a1)
{
  v2 = sub_225CCD564();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  type metadata accessor for HashDigest();
  sub_225CCD7F4();
  v7 = sub_225CCD694();
  (*(*(v7 - 8) + 8))(a1, v7);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_225C1ADF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_225CCD564();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_225CCD5B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AlgorithmIdentifier();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225C1B644(&qword_27D740568);
  result = sub_225CCD724();
  if (!v1)
  {
    v26 = a1;
    sub_225CCD744();
    sub_225CCD754();
    v15 = v26;
    sub_225C197E0(v13, v26);
    v16 = sub_225CCD5A4();
    sub_2259D2AD0(v16, v17, v18, v19);
    v21 = v20;
    v23 = v22;
    (*(v6 + 8))(v9, v5);
    sub_225C0CB88(v13);
    result = type metadata accessor for HashDigest();
    v24 = (v15 + *(result + 20));
    *v24 = v21;
    v24[1] = v23;
  }

  return result;
}
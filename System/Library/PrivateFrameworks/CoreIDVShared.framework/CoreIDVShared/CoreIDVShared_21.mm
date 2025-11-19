unint64_t sub_225B873AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v74 - v5;
  v77 = sub_225CCD954();
  v7 = *(v77 - 8);
  v9 = MEMORY[0x28223BE20](v77, v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v74 - v13;
  v15 = sub_225CCF8F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[7];
  v86 = v1[6];
  v87 = v20;
  v88 = v1[8];
  v89 = *(v1 + 18);
  v21 = v1[3];
  v82 = v1[2];
  v83 = v21;
  v22 = v1[5];
  v84 = v1[4];
  v85 = v22;
  v23 = v1[1];
  v80 = *v1;
  v81 = v23;
  v24 = [a1 results];
  if (v24)
  {
    v25 = v24;
    sub_2259D8718(0, &qword_27D73E700);
    v26 = sub_225CCE814();

    v27 = sub_225B9193C(v26);

    if (v27)
    {
      v28 = [v27 faceAttributes];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 facemaskCategory];
        v31 = [v30 label];

        v32 = [v31 identifier];
        v33 = sub_225CCE474();
        v35 = v34;

        if (v33 == sub_225CCE474() && v35 == v36)
        {
        }

        else
        {
          v69 = sub_225CCF934();

          v70 = 0.0;
          if ((v69 & 1) == 0)
          {
LABEL_26:
            v78[6] = v86;
            v78[7] = v87;
            v78[8] = v88;
            v79 = v89;
            v78[2] = v82;
            v78[3] = v83;
            v78[4] = v84;
            v78[5] = v85;
            v78[0] = v80;
            v78[1] = v81;
            (*(v16 + 104))(v19, *MEMORY[0x277D84688], v15);
            v72 = sub_225B804A4(13, v19, v70);

            v68 = HIDWORD(v72) & 1;
            (*(v16 + 8))(v19, v15);
            v67 = v72;
            return v67 | (v68 << 32);
          }
        }

        [v31 confidence];
        v70 = v71;
        goto LABEL_26;
      }
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v59 = off_28105B918;
    v60 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v61 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v61));
    v62 = v77;
    (*(v7 + 16))(v14, &v59[v60], v77);
    os_unfair_lock_unlock(&v59[v61]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v63 = sub_225CCD934();
      v64 = sub_225CCED04();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v78[0] = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_2259BE198(0xD00000000000003ALL, 0x8000000225D21520, v78);
        _os_log_impl(&dword_2259A7000, v63, v64, "%s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x22AA6F950](v66, -1, -1);
        MEMORY[0x22AA6F950](v65, -1, -1);
      }
    }

    (*(v7 + 8))(v14, v62);
  }

  else
  {
    v75 = 0x8000000225D21500;
    v76 = 0x8000000225D20DA0;
    v37 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v38 = swift_allocError();
    v40 = v39;
    v41 = sub_225CCE954();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v6, 1, 1, v41);
    LODWORD(v41) = (*(v42 + 48))(v6, 1, v41);
    sub_2259CB640(v6, &unk_27D73B050);
    if (v41)
    {
      v43 = 350;
    }

    else
    {
      v43 = 23;
    }

    v44 = MEMORY[0x277D84F90];
    v45 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v78[0] = v45;
    sub_225B2C4A0(v37, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v78);

    v47 = *&v78[0];
    v48 = sub_225B29AA0(0, 1, 1, v44);
    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    if (v50 >= v49 >> 1)
    {
      v48 = sub_225B29AA0((v49 > 1), v50 + 1, 1, v48);
    }

    *(v48 + 2) = v50 + 1;
    v51 = &v48[56 * v50];
    *(v51 + 4) = 0xD000000000000037;
    *(v51 + 5) = 0x8000000225D214C0;
    v52 = v76;
    *(v51 + 6) = 0xD000000000000029;
    *(v51 + 7) = v52;
    v53 = v75;
    *(v51 + 8) = 0xD00000000000001DLL;
    *(v51 + 9) = v53;
    *(v51 + 10) = 1008;
    *v40 = v43;
    *(v40 + 8) = v48;
    *(v40 + 16) = 0xD000000000000037;
    *(v40 + 24) = 0x8000000225D214C0;
    *(v40 + 32) = v47;
    *(v40 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v54 = off_28105B918;
    v55 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v56 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v56));
    v57 = &v54[v55];
    v58 = v77;
    (*(v7 + 16))(v11, v57, v77);
    os_unfair_lock_unlock(&v54[v56]);
    DIPLogError(_:message:log:)(v38, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v38);
    (*(v7 + 8))(v11, v58);
  }

  v67 = 0;
  LOBYTE(v68) = 1;
  return v67 | (v68 << 32);
}

unint64_t sub_225B87C30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v74 - v5;
  v77 = sub_225CCD954();
  v7 = *(v77 - 8);
  v9 = MEMORY[0x28223BE20](v77, v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v74 - v13;
  v15 = sub_225CCF8F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[7];
  v86 = v1[6];
  v87 = v20;
  v88 = v1[8];
  v89 = *(v1 + 18);
  v21 = v1[3];
  v82 = v1[2];
  v83 = v21;
  v22 = v1[5];
  v84 = v1[4];
  v85 = v22;
  v23 = v1[1];
  v80 = *v1;
  v81 = v23;
  v24 = [a1 results];
  if (!v24)
  {
    v75 = 0x8000000225D21640;
    v76 = 0x8000000225D20DA0;
    v38 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v39 = swift_allocError();
    v41 = v40;
    v42 = sub_225CCE954();
    v43 = *(v42 - 8);
    (*(v43 + 56))(v6, 1, 1, v42);
    LODWORD(v42) = (*(v43 + 48))(v6, 1, v42);
    sub_2259CB640(v6, &unk_27D73B050);
    if (v42)
    {
      v44 = 350;
    }

    else
    {
      v44 = 23;
    }

    v45 = MEMORY[0x277D84F90];
    v46 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v78[0] = v46;
    sub_225B2C4A0(v38, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v78);

    v48 = *&v78[0];
    v49 = sub_225B29AA0(0, 1, 1, v45);
    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_225B29AA0((v50 > 1), v51 + 1, 1, v49);
    }

    *(v49 + 2) = v51 + 1;
    v52 = &v49[56 * v51];
    *(v52 + 4) = 0xD000000000000037;
    *(v52 + 5) = 0x8000000225D21600;
    v53 = v76;
    *(v52 + 6) = 0xD000000000000029;
    *(v52 + 7) = v53;
    v54 = v75;
    *(v52 + 8) = 0xD00000000000001DLL;
    *(v52 + 9) = v54;
    *(v52 + 10) = 1023;
    *v41 = v44;
    *(v41 + 8) = v49;
    *(v41 + 16) = 0xD000000000000037;
    *(v41 + 24) = 0x8000000225D21600;
    *(v41 + 32) = v48;
    *(v41 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v55 = off_28105B918;
    v56 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v57 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v57));
    v58 = &v55[v56];
    v59 = v77;
    (*(v7 + 16))(v11, v58, v77);
    os_unfair_lock_unlock(&v55[v57]);
    DIPLogError(_:message:log:)(v39, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v39);
    (*(v7 + 8))(v11, v59);

    goto LABEL_23;
  }

  v25 = v24;
  sub_2259D8718(0, &qword_27D73E700);
  v26 = sub_225CCE814();

  v27 = sub_225B9193C(v26);

  if (!v27)
  {
LABEL_16:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v60 = off_28105B918;
    v61 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v62 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v62));
    v63 = v77;
    (*(v7 + 16))(v14, &v60[v61], v77);
    os_unfair_lock_unlock(&v60[v62]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v64 = sub_225CCD934();
      v65 = sub_225CCED04();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v78[0] = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_2259BE198(0xD00000000000003ALL, 0x8000000225D21660, v78);
        _os_log_impl(&dword_2259A7000, v64, v65, "%s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x22AA6F950](v67, -1, -1);
        MEMORY[0x22AA6F950](v66, -1, -1);
      }
    }

    (*(v7 + 8))(v14, v63);
LABEL_23:
    v68 = 0;
    LOBYTE(v69) = 1;
    return v68 | (v69 << 32);
  }

  v28 = [v27 faceAttributes];
  if (!v28)
  {

    goto LABEL_16;
  }

  v29 = v28;
  v30 = [v28 VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
  v31 = [v30 label];

  v32 = [v31 identifier];
  v33 = sub_225CCE474();
  v35 = v34;

  if (v33 == sub_225CCE474() && v35 == v36)
  {

    v37 = 0.0;
  }

  else
  {
    v70 = sub_225CCF934();

    v37 = 0.0;
    if ((v70 & 1) == 0)
    {
      [v31 confidence];
      v37 = v71;
    }
  }

  v78[6] = v86;
  v78[7] = v87;
  v78[8] = v88;
  v79 = v89;
  v78[2] = v82;
  v78[3] = v83;
  v78[4] = v84;
  v78[5] = v85;
  v78[0] = v80;
  v78[1] = v81;
  (*(v16 + 104))(v19, *MEMORY[0x277D84688], v15);
  v72 = sub_225B804A4(14, v19, v37);

  v69 = HIDWORD(v72) & 1;
  (*(v16 + 8))(v19, v15);
  v68 = v72;
  return v68 | (v69 << 32);
}

uint64_t sub_225B884B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v78 - v4;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v78 - v13;
  v15 = [a1 results];
  if (!v15)
  {
    v86 = 0x8000000225D215A0;
    v87 = 0x8000000225D20DA0;
    v50 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v51 = swift_allocError();
    v53 = v52;
    v54 = sub_225CCE954();
    v55 = *(v54 - 8);
    (*(v55 + 56))(v5, 1, 1, v54);
    LODWORD(v54) = (*(v55 + 48))(v5, 1, v54);
    sub_2259CB640(v5, &unk_27D73B050);
    if (v54)
    {
      v56 = 350;
    }

    else
    {
      v56 = 23;
    }

    v57 = MEMORY[0x277D84F90];
    v58 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v58;
    sub_225B2C4A0(v50, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v88);

    v60 = v88;
    v61 = sub_225B29AA0(0, 1, 1, v57);
    v63 = *(v61 + 2);
    v62 = *(v61 + 3);
    if (v63 >= v62 >> 1)
    {
      v61 = sub_225B29AA0((v62 > 1), v63 + 1, 1, v61);
    }

    *(v61 + 2) = v63 + 1;
    v64 = &v61[56 * v63];
    *(v64 + 4) = 0xD000000000000038;
    *(v64 + 5) = 0x8000000225D21560;
    v65 = v87;
    *(v64 + 6) = 0xD000000000000029;
    *(v64 + 7) = v65;
    v66 = v86;
    *(v64 + 8) = 0xD00000000000001ELL;
    *(v64 + 9) = v66;
    *(v64 + 10) = 1041;
    *v53 = v56;
    *(v53 + 8) = v61;
    *(v53 + 16) = 0xD000000000000038;
    *(v53 + 24) = 0x8000000225D21560;
    *(v53 + 32) = v60;
    *(v53 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v67 = off_28105B918;
    v68 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v69 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v69));
    (*(v7 + 16))(v11, &v67[v68], v6);
    os_unfair_lock_unlock(&v67[v69]);
    DIPLogError(_:message:log:)(v51, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v51);
    (*(v7 + 8))(v11, v6);

    return 0;
  }

  v16 = v15;
  sub_2259D8718(0, &qword_27D73E700);
  v17 = sub_225CCE814();

  v18 = sub_225B9193C(v17);

  if (!v18)
  {
LABEL_55:
    if (qword_28105B910 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_56;
  }

  v19 = [v18 faceAttributes];
  if (!v19)
  {

    goto LABEL_55;
  }

  v81 = v19;
  v82 = v18;
  v20 = [v19 VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
  v21 = [v20 allLabelsWithConfidences];

  sub_2259D8718(0, &qword_27D73E798);
  v14 = sub_225CCE814();

  v6 = sub_225CCE874();
  *(v6 + 16) = 5;
  *(v6 + 32) = 0;
  v87 = v6 + 32;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  if (v14 >> 62)
  {
    v22 = sub_225CCF144();
    if (v22)
    {
      goto LABEL_6;
    }

LABEL_67:

    return v6;
  }

  v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_67;
  }

LABEL_6:
  v23 = 0;
  v85 = v14 & 0xFFFFFFFFFFFFFF8;
  v86 = v14 & 0xC000000000000001;
  v84 = *MEMORY[0x277CE2E68];
  v83 = *MEMORY[0x277CE3040];
  v80 = *MEMORY[0x277CE2E60];
  v79 = *MEMORY[0x277CE2E70];
  v78 = *MEMORY[0x277CE2E80];
  while (1)
  {
    if (v86)
    {
      v24 = MEMORY[0x22AA6DA80](v23, v14);
    }

    else
    {
      if (v23 >= *(v85 + 16))
      {
        goto LABEL_63;
      }

      v24 = *(v14 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    v27 = [v24 identifier];
    v28 = sub_225CCE474();
    v30 = v29;

    v31 = sub_225CCE474();
    v7 = v32;
    if (v31 == v28 && v32 == v30)
    {
      v35 = 0;
      goto LABEL_18;
    }

    v34 = sub_225CCF934();

    if (v34)
    {
      v35 = 0;
      goto LABEL_19;
    }

    v38 = sub_225CCE474();
    v7 = v39;
    if (v38 == v28 && v39 == v30)
    {
      v35 = 1;
      goto LABEL_18;
    }

    v40 = sub_225CCF934();

    if (v40)
    {
      v35 = 1;
      goto LABEL_19;
    }

    v41 = sub_225CCE474();
    v7 = v42;
    if (v41 == v28 && v42 == v30)
    {
      v35 = 2;
      goto LABEL_18;
    }

    v43 = sub_225CCF934();

    if (v43)
    {
      v35 = 2;
      goto LABEL_19;
    }

    v44 = sub_225CCE474();
    v7 = v45;
    if (v44 == v28 && v45 == v30)
    {
      v35 = 3;
      goto LABEL_18;
    }

    v46 = sub_225CCF934();

    if (v46)
    {
      v35 = 3;
      goto LABEL_19;
    }

    v47 = sub_225CCE474();
    v7 = v48;
    if (v47 == v28 && v48 == v30)
    {
      v35 = 4;
LABEL_18:

LABEL_19:

      goto LABEL_20;
    }

    v49 = sub_225CCF934();

    if ((v49 & 1) == 0)
    {

      goto LABEL_22;
    }

    v35 = 4;
LABEL_20:
    [v25 confidence];
    v37 = v36;

    if (v35 >= *(v6 + 16))
    {
      goto LABEL_64;
    }

    *(v87 + 4 * v35) = v37;
LABEL_22:
    ++v23;
    if (v26 == v22)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  swift_once();
LABEL_56:
  v70 = off_28105B918;
  v71 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v72 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v72));
  (*(v7 + 16))(v14, &v70[v71], v6);
  os_unfair_lock_unlock(&v70[v72]);
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    v73 = sub_225CCD934();
    v74 = sub_225CCED04();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v88 = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_2259BE198(0xD00000000000003BLL, 0x8000000225D215C0, &v88);
      _os_log_impl(&dword_2259A7000, v73, v74, "%s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x22AA6F950](v76, -1, -1);
      MEMORY[0x22AA6F950](v75, -1, -1);
    }
  }

  (*(v7 + 8))(v14, v6);
  return 0;
}

uint64_t sub_225B88E94(void *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v95 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v95 - v13;
  v15 = [a1 results];
  if (!v15)
  {
    v98 = v3;
    v99 = v10;
    v100 = v2;
    v28 = MEMORY[0x277D84F90];
    v29 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v30 = swift_allocError();
    v32 = v31;
    v33 = sub_225CCE954();
    v34 = *(v33 - 8);
    (*(v34 + 56))(v14, 1, 1, v33);
    LODWORD(v33) = (*(v34 + 48))(v14, 1, v33);
    sub_2259CB640(v14, &unk_27D73B050);
    if (v33)
    {
      v35 = 350;
    }

    else
    {
      v35 = 23;
    }

    v36 = sub_225B2C374(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v36;
    sub_225B2C4A0(v29, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v101);

    v38 = v101;
    v39 = sub_225B29AA0(0, 1, 1, v28);
    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    if (v41 >= v40 >> 1)
    {
      v39 = sub_225B29AA0((v40 > 1), v41 + 1, 1, v39);
    }

    *(v39 + 2) = v41 + 1;
    v42 = &v39[56 * v41];
    *(v42 + 4) = 0xD00000000000002ELL;
    *(v42 + 5) = 0x8000000225D216A0;
    *(v42 + 6) = 0xD000000000000029;
    *(v42 + 7) = 0x8000000225D20DA0;
    *(v42 + 8) = 0xD000000000000013;
    *(v42 + 9) = 0x8000000225D216D0;
    *(v42 + 10) = 1064;
    *v32 = v35;
    *(v32 + 8) = v39;
    *(v32 + 16) = 0xD00000000000002ELL;
    *(v32 + 24) = 0x8000000225D216A0;
    *(v32 + 32) = v38;
    *(v32 + 40) = 0;
    v43 = v100;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v44 = off_28105B918;
    v45 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v46 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v46));
    v47 = v98;
    v48 = &v44[v45];
    v49 = v99;
    (*(v98 + 16))(v99, v48, v43);
    os_unfair_lock_unlock(&v44[v46]);
    DIPLogError(_:message:log:)(v30, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v30);
    (*(v47 + 8))(v49, v43);
    v50 = v30;
LABEL_15:

    return 0;
  }

  v16 = v15;
  sub_2259D8718(0, &qword_27D73E700);
  v17 = sub_225CCE814();

  v18 = sub_225B9193C(v17);

  if (!v18)
  {
LABEL_17:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v51 = off_28105B918;
    v52 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v53 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v53));
    (*(v3 + 16))(v7, &v51[v52], v2);
    os_unfair_lock_unlock(&v51[v53]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v54 = sub_225CCD934();
      v55 = sub_225CCED04();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v101 = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_2259BE198(0xD000000000000031, 0x8000000225D216F0, &v101);
        _os_log_impl(&dword_2259A7000, v54, v55, "%s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x22AA6F950](v57, -1, -1);
        MEMORY[0x22AA6F950](v56, -1, -1);
      }
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  v19 = [v18 faceAttributes];
  if (!v19)
  {

    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v19 VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
  v22 = [v21 label];

  v23 = [v22 identifier];
  v24 = sub_225CCE474();
  v26 = v25;

  if (sub_225CCE474() == v24 && v27 == v26)
  {

    return 1;
  }

  v59 = v3;
  v60 = sub_225CCF934();

  if (v60)
  {

    return 1;
  }

  if (sub_225CCE474() == v24 && v61 == v26)
  {

    return 2;
  }

  v62 = sub_225CCF934();

  if (v62)
  {

    return 2;
  }

  if (sub_225CCE474() == v24 && v63 == v26)
  {

    return 3;
  }

  v64 = sub_225CCF934();

  if (v64)
  {

    return 3;
  }

  if (sub_225CCE474() == v24 && v65 == v26)
  {

    return 4;
  }

  v66 = sub_225CCF934();

  if (v66)
  {

    return 4;
  }

  if (sub_225CCE474() == v24 && v67 == v26)
  {

    return 5;
  }

  v68 = sub_225CCF934();

  if (v68)
  {

    return 5;
  }

  if (sub_225CCE474() != v24 || v69 != v26)
  {
    v99 = v10;
    v100 = v2;
    v70 = sub_225CCF934();

    if (v70)
    {

      return 6;
    }

    v97 = 0x8000000225D20DA0;
    v98 = 0x8000000225D21730;
    v96 = 0x8000000225D216D0;
    v71 = MEMORY[0x277D84F90];
    v72 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v73 = swift_allocError();
    v75 = v74;
    v76 = sub_225CCE954();
    v77 = *(v76 - 8);
    (*(v77 + 56))(v14, 1, 1, v76);
    LODWORD(v76) = (*(v77 + 48))(v14, 1, v76);
    sub_2259CB640(v14, &unk_27D73B050);
    if (v76)
    {
      v78 = 363;
    }

    else
    {
      v78 = 23;
    }

    v79 = sub_225B2C374(v71);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v79;
    sub_225B2C4A0(v72, sub_225B2AC40, 0, v80, &v101);

    v81 = v101;
    v82 = sub_225B29AA0(0, 1, 1, v71);
    v84 = *(v82 + 2);
    v83 = *(v82 + 3);
    if (v84 >= v83 >> 1)
    {
      v82 = sub_225B29AA0((v83 > 1), v84 + 1, 1, v82);
    }

    *(v82 + 2) = v84 + 1;
    v85 = &v82[56 * v84];
    v86 = v98;
    *(v85 + 4) = 0xD000000000000033;
    *(v85 + 5) = v86;
    *(v85 + 6) = 0xD000000000000029;
    *(v85 + 7) = v97;
    *(v85 + 8) = 0xD000000000000013;
    *(v85 + 9) = v96;
    *(v85 + 10) = 1094;
    *v75 = v78;
    *(v75 + 8) = v82;
    *(v75 + 16) = 0xD000000000000033;
    *(v75 + 24) = v86;
    *(v75 + 32) = v81;
    *(v75 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v87 = off_28105B918;
    v88 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v89 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v89));
    v90 = v59;
    v91 = *(v59 + 16);
    v92 = &v87[v88];
    v94 = v99;
    v93 = v100;
    v91(v99, v92, v100);
    os_unfair_lock_unlock(&v87[v89]);
    DIPLogError(_:message:log:)(v73, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v73);

    (*(v90 + 8))(v94, v93);
    v50 = v73;
    goto LABEL_15;
  }

  return 6;
}

void sub_225B89B28(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v54 - v6;
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v54 - v15;
  v17 = [a1 results];
  if (!v17)
  {
    *&v57 = 0x8000000225D21770;
    *&v56 = 0x8000000225D20DA0;
    *&v55 = 0x8000000225D217B0;
    v28 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v29 = swift_allocError();
    v31 = v30;
    v32 = sub_225CCE954();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v7, 1, 1, v32);
    LODWORD(v32) = (*(v33 + 48))(v7, 1, v32);
    sub_2259CB640(v7, &unk_27D73B050);
    if (v32)
    {
      v34 = 350;
    }

    else
    {
      v34 = 23;
    }

    v35 = MEMORY[0x277D84F90];
    v36 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v36;
    sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v58);

    v38 = v58;
    v39 = sub_225B29AA0(0, 1, 1, v35);
    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    if (v41 >= v40 >> 1)
    {
      v39 = sub_225B29AA0((v40 > 1), v41 + 1, 1, v39);
    }

    *(v39 + 2) = v41 + 1;
    v42 = &v39[56 * v41];
    v43 = v57;
    *(v42 + 4) = 0xD000000000000030;
    *(v42 + 5) = v43;
    *(v42 + 6) = 0xD000000000000029;
    *(v42 + 7) = v56;
    *(v42 + 8) = 0xD000000000000015;
    *(v42 + 9) = v55;
    *(v42 + 10) = 1101;
    *v31 = v34;
    *(v31 + 8) = v39;
    *(v31 + 16) = 0xD000000000000030;
    *(v31 + 24) = v43;
    *(v31 + 32) = v38;
    *(v31 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v44 = off_28105B918;
    v45 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v46 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v46));
    (*(v9 + 16))(v13, &v44[v45], v8);
    os_unfair_lock_unlock(&v44[v46]);
    DIPLogError(_:message:log:)(v29, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v29);
    (*(v9 + 8))(v13, v8);

    goto LABEL_19;
  }

  v18 = v17;
  sub_2259D8718(0, &qword_27D73E700);
  v19 = sub_225CCE814();

  v20 = sub_225B9193C(v19);

  if (!v20)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v47 = off_28105B918;
    v48 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v49 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v49));
    (*(v9 + 16))(v16, &v47[v48], v8);
    os_unfair_lock_unlock(&v47[v49]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v50 = sub_225CCD934();
      v51 = sub_225CCED04();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v58 = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_2259BE198(0xD000000000000033, 0x8000000225D217D0, &v58);
        _os_log_impl(&dword_2259A7000, v50, v51, "%s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x22AA6F950](v53, -1, -1);
        MEMORY[0x22AA6F950](v52, -1, -1);
      }
    }

    (*(v9 + 8))(v16, v8);
LABEL_19:
    v26 = 0uLL;
    v25 = 1;
    v27 = 0uLL;
    goto LABEL_20;
  }

  [v20 boundingBox];
  v55 = v21;
  v56 = v22;
  v54 = v23;
  v57 = v24;

  *&v27 = v54;
  *&v26 = v55;
  v25 = 0;
  *(&v26 + 1) = v56;
  *(&v27 + 1) = v57;
LABEL_20:
  *a2 = v26;
  *(a2 + 16) = v27;
  *(a2 + 32) = v25;
}

BOOL sub_225B8A19C(void *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v35 - v9;
  v11 = [a1 results];
  if (v11)
  {
    v12 = v11;
    sub_2259D8718(0, &qword_27D73E7A0);
    v13 = sub_225CCE814();

    if (v13 >> 62)
    {
      v14 = sub_225CCF144();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v14 != 0;
  }

  else
  {
    v37 = 0x8000000225D20DA0;
    v38 = 0x8000000225D21810;
    v36 = 0x8000000225D21850;
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v10, 1, 1, v21);
    LODWORD(v21) = (*(v22 + 48))(v10, 1, v21);
    sub_2259CB640(v10, &unk_27D73B050);
    if (v21)
    {
      v23 = 350;
    }

    else
    {
      v23 = 23;
    }

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v39);

    v26 = v39;
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[56 * v29];
    v31 = v38;
    *(v30 + 4) = 0xD000000000000033;
    *(v30 + 5) = v31;
    *(v30 + 6) = 0xD000000000000029;
    *(v30 + 7) = v37;
    *(v30 + 8) = 0xD000000000000019;
    *(v30 + 9) = v36;
    *(v30 + 10) = 1116;
    *v20 = v23;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0xD000000000000033;
    *(v20 + 24) = v31;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v32 = off_28105B918;
    v33 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v34 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v34));
    (*(v3 + 16))(v6, &v32[v33], v2);
    os_unfair_lock_unlock(&v32[v34]);
    DIPLogError(_:message:log:)(v18, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v18);
    (*(v3 + 8))(v6, v2);

    return 0;
  }
}

uint64_t sub_225B8A61C(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v96 - v8;
  v10 = sub_225CCD954();
  v105 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v96 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v96 - v20;
  v22 = [a2 results];
  if (!v22)
  {
    v103 = v10;
    v104 = a1;
    v101 = 0x8000000225D21C70;
    v102 = 0x8000000225D20DA0;
    v33 = MEMORY[0x277D84F90];
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v35 = swift_allocError();
    v37 = v36;
    v38 = sub_225CCE954();
    v39 = *(v38 - 8);
    (*(v39 + 56))(v9, 1, 1, v38);
    LODWORD(v38) = (*(v39 + 48))(v9, 1, v38);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v38)
    {
      v40 = 350;
    }

    else
    {
      v40 = 23;
    }

    v41 = sub_225B2C374(v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = v41;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v124);

    v43 = v124[0];
    v44 = sub_225B29AA0(0, 1, 1, v33);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_225B29AA0((v45 > 1), v46 + 1, 1, v44);
    }

    *(v44 + 2) = v46 + 1;
    v47 = &v44[56 * v46];
    *(v47 + 4) = 0xD00000000000002FLL;
    *(v47 + 5) = 0x8000000225D21C40;
    v48 = v102;
    *(v47 + 6) = 0xD000000000000029;
    *(v47 + 7) = v48;
    v49 = v101;
    *(v47 + 8) = 0xD00000000000002ALL;
    *(v47 + 9) = v49;
    *(v47 + 10) = 1125;
    *v37 = v40;
    *(v37 + 8) = v44;
    *(v37 + 16) = 0xD00000000000002FLL;
    *(v37 + 24) = 0x8000000225D21C40;
    *(v37 + 32) = v43;
    *(v37 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v50 = off_28105B918;
    v51 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v52 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v52));
    v53 = v105;
    v54 = &v50[v51];
    v55 = v103;
    (*(v105 + 16))(v18, v54, v103);
    os_unfair_lock_unlock(&v50[v52]);
    DIPLogError(_:message:log:)(v35, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v35);
    (*(v53 + 8))(v18, v55);

    sub_225B92B84(v124);
    v56 = v104;
    goto LABEL_37;
  }

  v23 = v22;
  sub_2259D8718(0, &qword_27D73E7A0);
  v24 = sub_225CCE814();

  if (v24 >> 62)
  {
    if (!sub_225CCF144())
    {
LABEL_19:

      if (qword_28105B910 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_42;
    }
  }

  else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x22AA6DA80](0, v24);
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_42:
      swift_once();
LABEL_20:
      v57 = off_28105B918;
      v58 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v59 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v59));
      v60 = v105;
      (*(v105 + 16))(v21, &v57[v58], v10);
      os_unfair_lock_unlock(&v57[v59]);
      if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
      {
        v61 = sub_225CCD934();
        v62 = sub_225CCED04();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v104 = a1;
          v65 = v60;
          v66 = v64;
          v124[0] = v64;
          *v63 = 136315138;
          *(v63 + 4) = sub_2259BE198(0xD000000000000047, 0x8000000225D21CA0, v124);
          _os_log_impl(&dword_2259A7000, v61, v62, "%s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v66);
          MEMORY[0x22AA6F950](v66, -1, -1);
          MEMORY[0x22AA6F950](v63, -1, -1);

          (*(v65 + 8))(v21, v10);
          a1 = v104;
LABEL_25:
          sub_225B92B84(v124);
          v56 = a1;
          goto LABEL_37;
        }
      }

      (*(v60 + 8))(v21, v10);
      goto LABEL_25;
    }

    v25 = *(v24 + 32);
  }

  v26 = v25;
  v27 = [v25 payloadStringValue];
  if (!v27)
  {

    goto LABEL_19;
  }

  v102 = v26;
  v28 = v27;
  v29 = sub_225CCE474();
  v31 = v30;

  if (a3)
  {
    v32 = a3;
  }

  else
  {
    if (qword_27D739FA0 != -1)
    {
      swift_once();
    }
  }

  v115 = xmmword_225CF1CF0;
  v116 = vdupq_n_s64(2uLL);
  v117 = v116;
  v118 = vdupq_n_s64(4uLL);
  v119 = xmmword_225CF1CB0;
  *&v120 = 19524;
  *(&v120 + 1) = 0xE200000000000000;
  *&v121 = 17481;
  *(&v121 + 1) = 0xE200000000000000;
  v122 = v32;

  v67._countAndFlagsBits = v29;
  v67._object = v31;
  PDF417Parser.parse(payload:)(&v123, v67);
  if (!v68)
  {
    v111 = v119;
    v112 = v120;
    v113 = v121;
    v114 = v122;
    v107 = v115;
    v108 = v116;
    v109 = v117;
    v110 = v118;
    sub_225B93D3C(&v107);

    v90._countAndFlagsBits = 0x3064663432636337;
    v91._countAndFlagsBits = 0x4F20373134464450;
    v90._object = 0xE800000000000000;
    v91._object = 0xE90000000000004BLL;
    logMilestone(tag:description:)(v90, v91);

    memcpy(v106, &v123, sizeof(v106));
    nullsub_1(v106);
    memcpy(v124, v106, 0x360uLL);
    v124[108] = v29;
    v124[109] = v31;
    nullsub_1(v124);
    memcpy(a1, v124, 0x370uLL);
    return 1;
  }

  v99 = v14;
  v100 = v29;
  v101 = v31;
  v103 = v10;
  v104 = a1;
  v111 = v119;
  v112 = v120;
  v113 = v121;
  v114 = v122;
  v107 = v115;
  v108 = v116;
  v109 = v117;
  v110 = v118;
  sub_225B93D3C(&v107);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v69 = off_28105B918;
  v70 = *off_28105B918;
  v97 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v71 = v97;
  v72 = (*(v70 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v72));
  v73 = v105;
  v74 = *(v105 + 16);
  v75 = &v69[v71];
  v76 = v18;
  v77 = v18;
  v78 = v103;
  v74(v76, v75, v103);
  os_unfair_lock_unlock(&v69[v72]);
  DIPLogError(_:message:log:)(v68, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v68);
  v79 = *(v73 + 8);
  v105 = v73 + 8;
  v98 = v79;
  v79(v77, v78);
  os_unfair_lock_lock(&v69[v72]);
  v80 = v99;
  v74(v99, &v69[v97], v78);
  v81 = v80;
  os_unfair_lock_unlock(&v69[v72]);

  v82 = v68;
  v83 = sub_225CCD934();
  v84 = sub_225CCED14();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v124[0] = v86;
    *v85 = 136446210;
    swift_getErrorValue();
    v87 = sub_225CCFB24();
    v89 = sub_2259BE198(v87, v88, v124);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_2259A7000, v83, v84, "PDF417 Barcode was found but was not decodable: %{public}s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v86);
    MEMORY[0x22AA6F950](v86, -1, -1);
    MEMORY[0x22AA6F950](v85, -1, -1);
  }

  else
  {
  }

  v98(v81, v103);
  v93 = v104;
  v95 = v100;
  v94 = v101;
  sub_225B93D90(v106);
  memcpy(v124, v106, 0x360uLL);
  v124[108] = v95;
  v124[109] = v94;
  nullsub_1(v124);
  v56 = v93;
LABEL_37:
  memcpy(v56, v124, 0x370uLL);
  return 0;
}

uint64_t sub_225B8B1B8(void *a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v76 - v8;
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v76 - v17;
  v19 = [a1 results];
  if (!v19)
  {
    v4 = 0x8000000225D21BB0;
    v76 = 0x8000000225D21BE0;
    v77 = 0x8000000225D20DA0;
    v56 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v20 = swift_allocError();
    v1 = v57;
    v58 = sub_225CCE954();
    v59 = *(v58 - 8);
    (*(v59 + 56))(v9, 1, 1, v58);
    LODWORD(v58) = (*(v59 + 48))(v9, 1, v58);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v58)
    {
      LOWORD(v9) = 350;
    }

    else
    {
      LOWORD(v9) = 23;
    }

    v60 = MEMORY[0x277D84F90];
    v61 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v61;
    sub_225B2C4A0(v56, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v82);

    v3 = v82;
    v21 = sub_225B29AA0(0, 1, 1, v60);
    v2 = *(v21 + 2);
    v22 = *(v21 + 3);
    v18 = (v2 + 1);
    if (v2 < v22 >> 1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v20 = v19;
  sub_2259D8718(0, &qword_27D73E7A8);
  v15 = sub_225CCE814();

  if (v15 >> 62)
  {
    if (sub_225CCF144())
    {
      goto LABEL_4;
    }

LABEL_16:

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v69 = off_28105B918;
    v70 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v71 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v71));
    (*(v11 + 16))(v18, &v69[v70], v10);
    os_unfair_lock_unlock(&v69[v71]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v72 = sub_225CCD934();
      v73 = sub_225CCED04();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v82 = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_2259BE198(0xD000000000000037, 0x8000000225D21C00, &v82);
        _os_log_impl(&dword_2259A7000, v72, v73, "%s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x22AA6F950](v75, -1, -1);
        MEMORY[0x22AA6F950](v74, -1, -1);
      }
    }

    (*(v11 + 8))(v18, v10);
    return MEMORY[0x277D84F90];
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x22AA6DA80](0, v15);
    goto LABEL_7;
  }

  v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
    v23 = *(v15 + 32);
LABEL_7:
    v24 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_225CF1D00;
    [v24 topLeft];
    v27 = v26;
    v29 = v28;
    v30 = type metadata accessor for IQPoint();
    v31 = objc_allocWithZone(v30);
    v32 = v27;
    *&v31[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v32;
    v33 = v29;
    *&v31[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v33;
    v81.receiver = v31;
    v81.super_class = v30;
    *(v25 + 32) = objc_msgSendSuper2(&v81, sel_init);
    [v24 topRight];
    v35 = v34;
    v37 = v36;
    v38 = objc_allocWithZone(v30);
    v39 = v35;
    *&v38[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v39;
    v40 = v37;
    *&v38[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v40;
    v80.receiver = v38;
    v80.super_class = v30;
    *(v25 + 40) = objc_msgSendSuper2(&v80, sel_init);
    [v24 bottomRight];
    v42 = v41;
    v44 = v43;
    v45 = objc_allocWithZone(v30);
    v46 = v42;
    *&v45[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v46;
    v47 = v44;
    *&v45[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v47;
    v79.receiver = v45;
    v79.super_class = v30;
    *(v25 + 48) = objc_msgSendSuper2(&v79, sel_init);
    [v24 bottomLeft];
    v49 = v48;
    v51 = v50;
    v52 = objc_allocWithZone(v30);
    v53 = v49;
    *&v52[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v53;
    v54 = v51;
    *&v52[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v54;
    v78.receiver = v52;
    v78.super_class = v30;
    *(v25 + 56) = objc_msgSendSuper2(&v78, sel_init);

    return v25;
  }

  __break(1u);
LABEL_26:
  v21 = sub_225B29AA0((v22 > 1), v18, 1, v21);
LABEL_12:
  *(v21 + 2) = v18;
  v63 = &v21[56 * v2];
  *(v63 + 4) = 0xD00000000000002ELL;
  *(v63 + 5) = v4;
  v64 = v77;
  *(v63 + 6) = 0xD000000000000029;
  *(v63 + 7) = v64;
  v65 = v76;
  *(v63 + 8) = 0xD000000000000016;
  *(v63 + 9) = v65;
  *(v63 + 10) = 1215;
  *v1 = v9;
  *(v1 + 8) = v21;
  *(v1 + 16) = 0xD00000000000002ELL;
  *(v1 + 24) = v4;
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v66 = off_28105B918;
  v67 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v68 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v68));
  (*(v11 + 16))(v15, &v66[v67], v10);
  os_unfair_lock_unlock(&v66[v68]);
  DIPLogError(_:message:log:)(v20, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v20);
  (*(v11 + 8))(v15, v10);

  return MEMORY[0x277D84F90];
}

void sub_225B8B9B4(unint64_t a1)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v113 - v10;
  v12 = *(v1 + 112);
  v126 = *(v1 + 96);
  v127 = v12;
  v128 = *(v1 + 128);
  v129 = *(v1 + 144);
  v13 = *(v1 + 48);
  v122 = *(v1 + 32);
  v123 = v13;
  v14 = *(v1 + 80);
  v124 = *(v1 + 64);
  v125 = v14;
  v15 = *(v1 + 16);
  v121[0] = *v1;
  v121[1] = v15;
  if (a1 >> 62)
  {
    if (sub_225CCF144())
    {
      v16 = sub_225CCF144();
      goto LABEL_3;
    }

LABEL_61:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v105 = off_28105B918;
    v106 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v107 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v107));
    (*(v4 + 16))(v11, &v105[v106], v3);
    os_unfair_lock_unlock(&v105[v107]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v108 = sub_225CCD934();
      v109 = sub_225CCED04();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v120[0] = v111;
        *v110 = 136315138;
        *(v110 + 4) = sub_2259BE198(0xD000000000000031, 0x8000000225D21B70, v120);
        _os_log_impl(&dword_2259A7000, v108, v109, "%s", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v111);
        MEMORY[0x22AA6F950](v111, -1, -1);
        MEMORY[0x22AA6F950](v110, -1, -1);
      }
    }

    (*(v4 + 8))(v11, v3);
    return;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_61;
  }

LABEL_3:
  v17 = *&v121[0];
  if (v16 == *&v121[0])
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
    inited = swift_initStackObject();
    v20 = inited;
    *(inited + 16) = xmmword_225CF1D00;
    v21 = (inited + 32);
    v22 = *(&v123 + 1);
    v116 = v18;
    v115 = xmmword_225CF1D00;
    if ((a1 & 0xC000000000000001) != 0)
    {
      *(inited + 32) = MEMORY[0x22AA6DA80](*(&v123 + 1), a1);
      v112 = a1;
      a1 = v122;
      *(v20 + 40) = MEMORY[0x22AA6DA80](v122, v112);
      v8 = *(&v122 + 1);
      *(v20 + 48) = MEMORY[0x22AA6DA80](*(&v122 + 1), v112);
      v28 = v123;
      v33 = MEMORY[0x22AA6DA80](v123, v112);
LABEL_11:
      *(v20 + 56) = v33;
      v117 = v20 & 0xC000000000000001;
      v114 = v28;
      if ((v20 & 0xC000000000000001) == 0)
      {
        if ((a1 & 0x8000000000000000) == 0)
        {
          v34 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 < v34)
          {
            if (v8 < v34)
            {
              v35 = v21[v8];
              v36 = v21[a1];
              v37 = v35;
              goto LABEL_16;
            }

LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

LABEL_73:
      v36 = MEMORY[0x22AA6DA80](a1, v20);
      v37 = MEMORY[0x22AA6DA80](v8, v20);
LABEL_16:
      v38 = v37;
      v39 = &v36[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
      swift_beginAccess();
      v40 = *v39;
      v41 = &v38[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
      swift_beginAccess();
      v42 = *v41;
      v43 = &v36[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
      swift_beginAccess();
      v44 = *v43;
      v45 = &v38[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
      swift_beginAccess();
      v46 = *v45;

      v113 = v21;
      if (v117)
      {
        v47 = MEMORY[0x22AA6DA80](a1, v20);
        v48 = MEMORY[0x22AA6DA80](v22, v20);
LABEL_27:
        v57 = v48;
        v58 = sqrtf(((v40 - v42) * (v40 - v42)) + ((v44 - v46) * (v44 - v46)));
        v59 = &v47[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
        swift_beginAccess();
        v60 = *v59;
        v61 = &v57[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
        swift_beginAccess();
        v62 = v60 - *v61;
        v63 = &v47[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
        swift_beginAccess();
        v64 = *v63;
        v65 = &v57[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
        swift_beginAccess();
        v66 = *v65;

        if (v58 >= sqrtf((v62 * v62) + ((v64 - v66) * (v64 - v66))))
        {
          v69 = v20;
LABEL_51:
          v95 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v95)
          {
            v119 = MEMORY[0x277D84F90];
            sub_225CCF394();
            v96 = 0;
            do
            {
              if ((v69 & 0xC000000000000001) != 0)
              {
                v97 = MEMORY[0x22AA6DA80](v96, v69);
              }

              else
              {
                v97 = *(v69 + 8 * v96 + 32);
              }

              v98 = v97;
              ++v96;
              v99 = &v97[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
              swift_beginAccess();
              v100 = *v99;
              v101 = &v98[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
              swift_beginAccess();
              v102 = *v101;
              v103 = type metadata accessor for IQPoint();
              v104 = objc_allocWithZone(v103);
              *&v104[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v100;
              *&v104[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v102;
              v118.receiver = v104;
              v118.super_class = v103;
              objc_msgSendSuper2(&v118, sel_init);

              sub_225CCF364();
              sub_225CCF3A4();
              sub_225CCF3B4();
              sub_225CCF374();
            }

            while (v95 != v96);
          }

          return;
        }

        if (v117)
        {
          v67 = MEMORY[0x22AA6DA80](a1, v20);
          v68 = v113;
        }

        else
        {
          v68 = v113;
          v67 = v113[a1];
        }

        v70 = v114;
        v71 = &v67[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
        swift_beginAccess();
        v72 = *v71;

        if (v117)
        {
          v73 = MEMORY[0x22AA6DA80](v8, v20);
        }

        else
        {
          v73 = v68[v8];
        }

        v74 = v73;
        v75 = &v73[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
        swift_beginAccess();
        v76 = *v75;

        v77 = swift_allocObject();
        v69 = v77;
        *(v77 + 16) = v115;
        if (v76 >= v72)
        {
          if (v117)
          {
            *(v77 + 32) = MEMORY[0x22AA6DA80](v22, v20);
            *(v69 + 40) = MEMORY[0x22AA6DA80](a1, v20);
            *(v69 + 48) = MEMORY[0x22AA6DA80](v8, v20);
            v78 = v70;
            goto LABEL_43;
          }

          v87 = v68[v22];
          *(v77 + 32) = v87;
          v88 = v68[a1];
          *(v77 + 40) = v88;
          v89 = v68[v8];
          *(v77 + 48) = v89;
          if ((v70 & 0x8000000000000000) == 0)
          {
            if (v70 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v90 = v68[v70];
              v91 = v87;
              v92 = v88;
              v93 = v89;
              v79 = v90;
              goto LABEL_50;
            }

LABEL_83:
            __break(1u);
            return;
          }

          goto LABEL_81;
        }

        if (v117)
        {
          *(v77 + 32) = MEMORY[0x22AA6DA80](v8, v20);
          *(v69 + 40) = MEMORY[0x22AA6DA80](v70, v20);
          *(v69 + 48) = MEMORY[0x22AA6DA80](v22, v20);
          v78 = a1;
LABEL_43:
          v79 = MEMORY[0x22AA6DA80](v78, v20);
LABEL_50:
          v94 = v79;

          *(v69 + 56) = v94;
          goto LABEL_51;
        }

        v80 = v68[v8];
        *(v77 + 32) = v80;
        if ((v70 & 0x8000000000000000) == 0)
        {
          if (v70 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v81 = v68[v70];
            *(v77 + 40) = v81;
            v82 = v68[v22];
            *(v77 + 48) = v82;
            v83 = v68[a1];
            v84 = v80;
            v85 = v81;
            v86 = v82;
            v79 = v83;
            goto LABEL_50;
          }

          goto LABEL_82;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      if ((v22 & 0x8000000000000000) == 0)
      {
        if (v22 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v56 = v21[v22];
          v47 = v21[a1];
          v48 = v56;
          goto LABEL_27;
        }

LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if ((*(&v123 + 1) & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (*(&v123 + 1) < v23)
      {
        v24 = a1 + 32;
        v25 = *(a1 + 32 + 8 * *(&v123 + 1));
        *v21 = v25;
        a1 = v122;
        if (v122 < v23)
        {
          v26 = *(v24 + 8 * v122);
          *(inited + 40) = v26;
          v8 = *(&v122 + 1);
          if (*(&v122 + 1) < v23)
          {
            v27 = *(v24 + 8 * *(&v122 + 1));
            *(inited + 48) = v27;
            v28 = v123;
            if (v123 >= v23)
            {
              __break(1u);
              goto LABEL_75;
            }

            v29 = *(v24 + 8 * v123);
            v30 = v25;
            v31 = v26;
            v32 = v27;
            v33 = v29;
            goto LABEL_11;
          }

LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v49 = off_28105B918;
  v50 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v51 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v51));
  (*(v4 + 16))(v8, &v49[v50], v3);
  os_unfair_lock_unlock(&v49[v51]);
  sub_225B92D48(v121, v120);

  v52 = sub_225CCD934();
  v53 = sub_225CCED14();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134218240;
    *(v54 + 4) = v17;
    sub_225B92D80(v121);
    *(v54 + 12) = 2048;
    if (a1 >> 62)
    {
      v55 = sub_225CCF144();
    }

    else
    {
      v55 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v54 + 14) = v55;

    _os_log_impl(&dword_2259A7000, v52, v53, "Could not convert rect corners, expected %ld corners but found %ld", v54, 0x16u);
    MEMORY[0x22AA6F950](v54, -1, -1);
  }

  else
  {

    sub_225B92D80(v121);
  }

  (*(v4 + 8))(v8, v3);
}

uint64_t sub_225B8C4EC(unint64_t a1, double a2, double a3)
{
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v48 - v14;
  v16 = *(v3 + 112);
  v52[6] = *(v3 + 96);
  v52[7] = v16;
  v52[8] = *(v3 + 128);
  v53 = *(v3 + 144);
  v17 = *(v3 + 48);
  v52[2] = *(v3 + 32);
  v52[3] = v17;
  v18 = *(v3 + 80);
  v52[4] = *(v3 + 64);
  v52[5] = v18;
  v19 = *(v3 + 16);
  v52[0] = *v3;
  v52[1] = v19;
  if (!(a1 >> 62))
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v41 = off_28105B918;
    v42 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v43 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v43));
    (*(v8 + 16))(v15, &v41[v42], v7);
    os_unfair_lock_unlock(&v41[v43]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v44 = sub_225CCD934();
      v45 = sub_225CCED04();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v51[0] = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_2259BE198(0xD00000000000002FLL, 0x8000000225D21B40, v51);
        _os_log_impl(&dword_2259A7000, v44, v45, "%s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x22AA6F950](v47, -1, -1);
        MEMORY[0x22AA6F950](v46, -1, -1);
      }
    }

    (*(v8 + 8))(v15, v7);
    return MEMORY[0x277D84F90];
  }

  if (!sub_225CCF144())
  {
    goto LABEL_23;
  }

  v20 = sub_225CCF144();
LABEL_3:
  v21 = *&v52[0];
  if (v20 != *&v52[0])
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v34 = off_28105B918;
    v35 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v36 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v36));
    (*(v8 + 16))(v12, &v34[v35], v7);
    os_unfair_lock_unlock(&v34[v36]);
    sub_225B92D48(v52, v51);

    v37 = sub_225CCD934();
    v38 = sub_225CCED14();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134218240;
      *(v39 + 4) = v21;
      sub_225B92D80(v52);
      *(v39 + 12) = 2048;
      if (a1 >> 62)
      {
        v40 = sub_225CCF144();
      }

      else
      {
        v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v39 + 14) = v40;

      _os_log_impl(&dword_2259A7000, v37, v38, "Could not scale rect corners, expected %ld corners but found %ld", v39, 0x16u);
      MEMORY[0x22AA6F950](v39, -1, -1);
    }

    else
    {

      sub_225B92D80(v52);
    }

    (*(v8 + 8))(v12, v7);
    return MEMORY[0x277D84F90];
  }

  result = MEMORY[0x277D84F90];
  if (v20)
  {
    v50 = MEMORY[0x277D84F90];
    result = sub_225CCF394();
    if (v20 < 0)
    {
      __break(1u);
    }

    else
    {
      v23 = 0;
      v24 = a2;
      v25 = a3;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x22AA6DA80](v23, a1);
        }

        else
        {
          v26 = *(a1 + 8 * v23 + 32);
        }

        v27 = v26;
        ++v23;
        v28 = &v26[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
        swift_beginAccess();
        v29 = *v28 * v24;
        v30 = &v27[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
        swift_beginAccess();
        v31 = *v30 * v25;
        v32 = type metadata accessor for IQPoint();
        v33 = objc_allocWithZone(v32);
        *&v33[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v29;
        *&v33[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v31;
        v49.receiver = v33;
        v49.super_class = v32;
        objc_msgSendSuper2(&v49, sel_init);

        sub_225CCF364();
        sub_225CCF3A4();
        sub_225CCF3B4();
        sub_225CCF374();
      }

      while (v20 != v23);
      return v50;
    }
  }

  return result;
}

void sub_225B8CAE4(unint64_t a1)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v96 - v10;
  v12 = *(v1 + 112);
  v99[6] = *(v1 + 96);
  v99[7] = v12;
  v99[8] = *(v1 + 128);
  v100 = *(v1 + 144);
  v13 = *(v1 + 48);
  v99[2] = *(v1 + 32);
  v99[3] = v13;
  v14 = *(v1 + 80);
  v99[4] = *(v1 + 64);
  v99[5] = v14;
  v15 = *(v1 + 16);
  v99[0] = *v1;
  v99[1] = v15;
  if (!(a1 >> 62))
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_91:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v88 = off_28105B918;
    v89 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v90 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v90));
    (*(v4 + 16))(v11, &v88[v89], v3);
    os_unfair_lock_unlock(&v88[v90]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v91 = sub_225CCD934();
      v92 = sub_225CCED04();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = v3;
        v95 = swift_slowAlloc();
        v98[0] = v95;
        *v93 = 136315138;
        *(v93 + 4) = sub_2259BE198(0xD000000000000030, 0x8000000225D21870, v98);
        _os_log_impl(&dword_2259A7000, v91, v92, "%s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x22AA6F950](v95, -1, -1);
        MEMORY[0x22AA6F950](v93, -1, -1);

        (*(v4 + 8))(v11, v94);
LABEL_98:
        v87 = 1;
LABEL_99:
        LOBYTE(v99[0]) = v87;
        return;
      }
    }

    (*(v4 + 8))(v11, v3);
    goto LABEL_98;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_91;
  }

  v16 = sub_225CCF144();
LABEL_3:
  v17 = *&v99[0];
  if (v16 != *&v99[0])
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v22 = off_28105B918;
    v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v24 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v24));
    (*(v4 + 16))(v8, &v22[v23], v3);
    os_unfair_lock_unlock(&v22[v24]);
    sub_225B92D48(v99, v98);

    v25 = sub_225CCD934();
    v26 = sub_225CCED14();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v3;
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      *(v28 + 4) = v17;
      sub_225B92D80(v99);
      *(v28 + 12) = 2048;
      if (a1 >> 62)
      {
        v29 = sub_225CCF144();
      }

      else
      {
        v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v28 + 14) = v29;

      _os_log_impl(&dword_2259A7000, v25, v26, "Could not calculate quad area, expected %ld corners but found %ld", v28, 0x16u);
      MEMORY[0x22AA6F950](v28, -1, -1);
      v3 = v27;
    }

    else
    {

      sub_225B92D80(v99);
    }

    (*(v4 + 8))(v8, v3);
    goto LABEL_98;
  }

  v18 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x22AA6DA80](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_102;
    }

    v19 = *(a1 + 32);
  }

  v20 = v19;
  swift_beginAccess();

  if (v18)
  {
    v21 = MEMORY[0x22AA6DA80](1, a1);
    goto LABEL_17;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v21 = *(a1 + 40);
LABEL_17:
  v30 = v21;
  swift_beginAccess();

  if (v18)
  {
    v31 = MEMORY[0x22AA6DA80](1, a1);
  }

  else
  {
    v31 = *(a1 + 40);
  }

  v32 = v31;
  swift_beginAccess();

  if (!v18)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v33 = *(a1 + 56);
      goto LABEL_24;
    }

LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v33 = MEMORY[0x22AA6DA80](3, a1);
LABEL_24:
  v34 = v33;
  swift_beginAccess();

  if (v18)
  {
    v35 = MEMORY[0x22AA6DA80](3, a1);
  }

  else
  {
    v35 = *(a1 + 56);
  }

  v36 = v35;
  v37 = &v35[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
  swift_beginAccess();
  v38 = *v37;

  if (v18)
  {
    v39 = MEMORY[0x22AA6DA80](0, a1);
  }

  else
  {
    v39 = *(a1 + 32);
  }

  v40 = v39;
  swift_beginAccess();

  if (v18)
  {
    v41 = MEMORY[0x22AA6DA80](1, a1);
  }

  else
  {
    v41 = *(a1 + 40);
  }

  v42 = v41;
  swift_beginAccess();

  if (v18)
  {
    v43 = MEMORY[0x22AA6DA80](0, a1);
  }

  else
  {
    v43 = *(a1 + 32);
  }

  v44 = v43;
  v45 = &v43[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
  swift_beginAccess();
  v97 = *v45;

  if (v18)
  {
    v46 = MEMORY[0x22AA6DA80](3, a1);
  }

  else
  {
    v46 = *(a1 + 56);
  }

  v47 = v46;
  v48 = &v46[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
  swift_beginAccess();
  v96[10] = *v48;

  if (v18)
  {
    v49 = MEMORY[0x22AA6DA80](1, a1);
  }

  else
  {
    v49 = *(a1 + 40);
  }

  v50 = v49;
  swift_beginAccess();

  if (v18)
  {
    v51 = MEMORY[0x22AA6DA80](0, a1);
  }

  else
  {
    v51 = *(a1 + 32);
  }

  v52 = v51;
  v53 = &v51[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
  swift_beginAccess();
  v96[9] = *v53;

  if (v18)
  {
    v54 = MEMORY[0x22AA6DA80](3, a1);
  }

  else
  {
    v54 = *(a1 + 56);
  }

  v55 = v54;
  v56 = &v54[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
  swift_beginAccess();
  v96[7] = *v56;

  if (v18)
  {
    v57 = MEMORY[0x22AA6DA80](1, a1);
  }

  else
  {
    v57 = *(a1 + 40);
  }

  v58 = v57;
  v59 = &v57[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
  swift_beginAccess();
  v96[8] = *v59;

  if (v18)
  {
    v60 = MEMORY[0x22AA6DA80](2, a1);
LABEL_55:
    v61 = v60;
    v62 = &v60[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
    swift_beginAccess();
    v96[5] = *v62;

    if (v18)
    {
      v63 = MEMORY[0x22AA6DA80](2, a1);
    }

    else
    {
      v63 = *(a1 + 48);
    }

    v64 = v63;
    v65 = &v63[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v96[4] = *v65;

    v96[6] = v38;
    if (v18)
    {
      v66 = MEMORY[0x22AA6DA80](3, a1);
    }

    else
    {
      v66 = *(a1 + 56);
    }

    v67 = v66;
    v68 = &v66[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
    swift_beginAccess();
    v96[2] = *v68;

    if (v18)
    {
      v69 = MEMORY[0x22AA6DA80](3, a1);
    }

    else
    {
      v69 = *(a1 + 56);
    }

    v70 = v69;
    v71 = &v69[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v96[3] = *v71;

    if (v18)
    {
      v72 = MEMORY[0x22AA6DA80](1, a1);
    }

    else
    {
      v72 = *(a1 + 40);
    }

    v73 = v72;
    swift_beginAccess();

    if (v18)
    {
      v74 = MEMORY[0x22AA6DA80](2, a1);
    }

    else
    {
      v74 = *(a1 + 48);
    }

    v75 = v74;
    v76 = &v74[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v97 = *v76;

    if (v18)
    {
      v77 = MEMORY[0x22AA6DA80](1, a1);
    }

    else
    {
      v77 = *(a1 + 40);
    }

    v78 = v77;
    swift_beginAccess();

    if (v18)
    {
      v79 = MEMORY[0x22AA6DA80](3, a1);
    }

    else
    {
      v79 = *(a1 + 56);
    }

    v80 = v79;
    swift_beginAccess();

    if (v18)
    {
      v81 = MEMORY[0x22AA6DA80](2, a1);
    }

    else
    {
      v81 = *(a1 + 48);
    }

    v82 = v81;
    swift_beginAccess();

    if (v18)
    {
      v83 = MEMORY[0x22AA6DA80](1, a1);
    }

    else
    {
      v83 = *(a1 + 40);
    }

    v84 = v83;
    swift_beginAccess();

    if (v18)
    {
      v85 = MEMORY[0x22AA6DA80](3, a1);
    }

    else
    {
      v85 = *(a1 + 56);
    }

    v86 = v85;
    swift_beginAccess();

    v87 = 0;
    goto LABEL_99;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v60 = *(a1 + 48);
    goto LABEL_55;
  }

LABEL_104:
  __break(1u);
}

uint64_t sub_225B8D758(void *a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v76 - v8;
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v76 - v17;
  v19 = [a1 results];
  if (!v19)
  {
    v4 = 0x8000000225D218D0;
    v76 = 0x8000000225D21900;
    v77 = 0x8000000225D20DA0;
    v56 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v20 = swift_allocError();
    v1 = v57;
    v58 = sub_225CCE954();
    v59 = *(v58 - 8);
    (*(v59 + 56))(v9, 1, 1, v58);
    LODWORD(v58) = (*(v59 + 48))(v9, 1, v58);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v58)
    {
      LOWORD(v9) = 350;
    }

    else
    {
      LOWORD(v9) = 23;
    }

    v60 = MEMORY[0x277D84F90];
    v61 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v61;
    sub_225B2C4A0(v56, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v82);

    v3 = v82;
    v21 = sub_225B29AA0(0, 1, 1, v60);
    v2 = *(v21 + 2);
    v22 = *(v21 + 3);
    v18 = (v2 + 1);
    if (v2 < v22 >> 1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v20 = v19;
  sub_2259D8718(0, &qword_27D73E7A8);
  v15 = sub_225CCE814();

  if (v15 >> 62)
  {
    if (sub_225CCF144())
    {
      goto LABEL_4;
    }

LABEL_16:

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v69 = off_28105B918;
    v70 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v71 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v71));
    (*(v11 + 16))(v18, &v69[v70], v10);
    os_unfair_lock_unlock(&v69[v71]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v72 = sub_225CCD934();
      v73 = sub_225CCED04();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v82 = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_2259BE198(0xD000000000000035, 0x8000000225D21920, &v82);
        _os_log_impl(&dword_2259A7000, v72, v73, "%s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x22AA6F950](v75, -1, -1);
        MEMORY[0x22AA6F950](v74, -1, -1);
      }
    }

    (*(v11 + 8))(v18, v10);
    return MEMORY[0x277D84F90];
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x22AA6DA80](0, v15);
    goto LABEL_7;
  }

  v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
    v23 = *(v15 + 32);
LABEL_7:
    v24 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_225CF1D00;
    [v24 topLeft];
    v27 = v26;
    v29 = v28;
    v30 = type metadata accessor for IQPoint();
    v31 = objc_allocWithZone(v30);
    v32 = v27;
    *&v31[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v32;
    v33 = v29;
    *&v31[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v33;
    v81.receiver = v31;
    v81.super_class = v30;
    *(v25 + 32) = objc_msgSendSuper2(&v81, sel_init);
    [v24 topRight];
    v35 = v34;
    v37 = v36;
    v38 = objc_allocWithZone(v30);
    v39 = v35;
    *&v38[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v39;
    v40 = v37;
    *&v38[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v40;
    v80.receiver = v38;
    v80.super_class = v30;
    *(v25 + 40) = objc_msgSendSuper2(&v80, sel_init);
    [v24 bottomRight];
    v42 = v41;
    v44 = v43;
    v45 = objc_allocWithZone(v30);
    v46 = v42;
    *&v45[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v46;
    v47 = v44;
    *&v45[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v47;
    v79.receiver = v45;
    v79.super_class = v30;
    *(v25 + 48) = objc_msgSendSuper2(&v79, sel_init);
    [v24 bottomLeft];
    v49 = v48;
    v51 = v50;
    v52 = objc_allocWithZone(v30);
    v53 = v49;
    *&v52[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v53;
    v54 = v51;
    *&v52[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v54;
    v78.receiver = v52;
    v78.super_class = v30;
    *(v25 + 56) = objc_msgSendSuper2(&v78, sel_init);

    return v25;
  }

  __break(1u);
LABEL_26:
  v21 = sub_225B29AA0((v22 > 1), v18, 1, v21);
LABEL_12:
  *(v21 + 2) = v18;
  v63 = &v21[56 * v2];
  *(v63 + 4) = 0xD00000000000002DLL;
  *(v63 + 5) = v4;
  v64 = v77;
  *(v63 + 6) = 0xD000000000000029;
  *(v63 + 7) = v64;
  v65 = v76;
  *(v63 + 8) = 0xD000000000000015;
  *(v63 + 9) = v65;
  *(v63 + 10) = 1233;
  *v1 = v9;
  *(v1 + 8) = v21;
  *(v1 + 16) = 0xD00000000000002DLL;
  *(v1 + 24) = v4;
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v66 = off_28105B918;
  v67 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v68 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v68));
  (*(v11 + 16))(v15, &v66[v67], v10);
  os_unfair_lock_unlock(&v66[v68]);
  DIPLogError(_:message:log:)(v20, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v20);
  (*(v11 + 8))(v15, v10);

  return MEMORY[0x277D84F90];
}

uint64_t sub_225B8DF54(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v58 - v4;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v58 - v13;
  v15 = [a1 results];
  if (v15)
  {
    v16 = v15;
    sub_2259D8718(0, &qword_27D73E7B0);
    v17 = sub_225CCE814();

    if (v17 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_225CCF144())
    {
      v14 = 0;
      v60 = "collectMRZData(_:)";
      v61 = v17 & 0xC000000000000001;
      v7 = v17 & 0xFFFFFFFFFFFFFF8;
      v6 = MEMORY[0x277D84F90];
      v59 = i;
      while (1)
      {
        if (v61)
        {
          v19 = MEMORY[0x22AA6DA80](v14, v17);
        }

        else
        {
          if (v14 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v19 = *(v17 + 8 * v14 + 32);
        }

        v20 = v19;
        v21 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v77 = v19;
        sub_225B91C60(&v77, 0xD000000000000010, v60 | 0x8000000000000000, &v72);

        if (*(&v72 + 1))
        {
          v69 = v74;
          v70 = v75;
          v71 = v76;
          v67 = v72;
          v68 = v73;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_225B2A91C(0, *(v6 + 16) + 1, 1, v6);
          }

          v23 = *(v6 + 16);
          v22 = *(v6 + 24);
          if (v23 >= v22 >> 1)
          {
            v6 = sub_225B2A91C((v22 > 1), v23 + 1, 1, v6);
          }

          v65 = v70;
          v66 = v71;
          v63 = v68;
          v64 = v69;
          v24 = v67;
          v62 = v67;
          *(v6 + 16) = v23 + 1;
          v25 = (v6 + 80 * v23);
          v25[2] = v24;
          v26 = v63;
          v27 = v64;
          v28 = v66;
          v25[5] = v65;
          v25[6] = v28;
          v25[3] = v26;
          v25[4] = v27;
          i = v59;
        }

        else
        {
          v69 = v74;
          v70 = v75;
          v71 = v76;
          v67 = v72;
          v68 = v73;
          sub_2259CB640(&v67, &qword_27D73E7B8);
        }

        ++v14;
        if (v21 == i)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v50 = off_28105B918;
    v51 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v52 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v52));
    (*(v7 + 16))(v14, &v50[v51], v6);
    os_unfair_lock_unlock(&v50[v52]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v53 = sub_225CCD934();
      v54 = sub_225CCED04();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v72 = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_2259BE198(0xD000000000000019, 0x8000000225D219D0, &v72);
        _os_log_impl(&dword_2259A7000, v53, v54, "%s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x22AA6F950](v56, -1, -1);
        MEMORY[0x22AA6F950](v55, -1, -1);
      }
    }

    (*(v7 + 8))(v14, v6);
  }

  else
  {
    v60 = 0x8000000225D21960;
    v61 = v6;
    v58 = 0x8000000225D21990;
    v59 = 0x8000000225D20DA0;
    v29 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v30 = swift_allocError();
    v32 = v31;
    v33 = sub_225CCE954();
    v34 = *(v33 - 8);
    (*(v34 + 56))(v5, 1, 1, v33);
    LODWORD(v33) = (*(v34 + 48))(v5, 1, v33);
    sub_2259CB640(v5, &unk_27D73B050);
    if (v33)
    {
      v35 = 350;
    }

    else
    {
      v35 = 23;
    }

    v36 = MEMORY[0x277D84F90];
    v37 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v72 = v37;
    sub_225B2C4A0(v29, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v72);

    v39 = v72;
    v40 = sub_225B29AA0(0, 1, 1, v36);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[56 * v42];
    v44 = v60;
    *(v43 + 4) = 0xD00000000000002CLL;
    *(v43 + 5) = v44;
    *(v43 + 6) = 0xD000000000000029;
    *(v43 + 7) = v59;
    *(v43 + 8) = 0xD000000000000012;
    *(v43 + 9) = v58;
    *(v43 + 10) = 1151;
    *v32 = v35;
    *(v32 + 8) = v40;
    *(v32 + 16) = 0xD00000000000002CLL;
    *(v32 + 24) = v44;
    *(v32 + 32) = v39;
    *(v32 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v45 = off_28105B918;
    v46 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v47 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v47));
    v48 = &v45[v46];
    v49 = v61;
    (*(v7 + 16))(v11, v48, v61);
    os_unfair_lock_unlock(&v45[v47]);
    DIPLogError(_:message:log:)(v30, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v30);
    (*(v7 + 8))(v11, v49);
  }

  return MEMORY[0x277D84F90];
}

const char *sub_225B8E74C(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v50 - v7;
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  i = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v50 - v16;
  v51 = *(v1 + 8);
  v18 = [a1 results];
  if (!v18)
  {
    v20 = 0x8000000225D21AC0;
    v50 = 0x8000000225D21AF0;
    v51 = 0x8000000225D20DA0;
    v30 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v1 = swift_allocError();
    v17 = v31;
    v32 = sub_225CCE954();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v8, 1, 1, v32);
    LODWORD(v32) = (*(v33 + 48))(v8, 1, v32);
    sub_2259CB640(v8, &unk_27D73B050);
    if (v32)
    {
      LOWORD(v3) = 350;
    }

    else
    {
      LOWORD(v3) = 23;
    }

    v34 = MEMORY[0x277D84F90];
    v35 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v35;
    sub_225B2C4A0(v30, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v52);

    v2 = v52;
    v21 = sub_225B29AA0(0, 1, 1, v34);
    v19 = *(v21 + 2);
    v22 = *(v21 + 3);
    v8 = (v19 + 1);
    if (v19 < v22 >> 1)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

  v19 = v18;
  sub_2259D8718(0, &qword_27D73E7B0);
  v20 = sub_225CCE814();

  if (v20 >> 62)
  {
    goto LABEL_33;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_225CCF144())
  {
    if (i < 1)
    {
      goto LABEL_51;
    }

    v17 = 0;
    v8 = (v20 & 0xC000000000000001);
    v9 = MEMORY[0x277D84F90];
    v50 = v20;
    while (1)
    {
      v23 = v8 ? MEMORY[0x22AA6DA80](v17, v20) : *(v20 + 8 * v17 + 32);
      v3 = v23;
      v2 = [v23 topCandidates_];
      sub_2259D8718(0, &qword_27D73E7C0);
      v19 = sub_225CCE814();

      if (v19 >> 62)
      {
        break;
      }

      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

LABEL_6:

LABEL_7:
      if (i == ++v17)
      {

        goto LABEL_41;
      }
    }

    if (!sub_225CCF144())
    {
      goto LABEL_6;
    }

LABEL_13:
    if ((v19 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x22AA6DA80](0, v19);
      goto LABEL_16;
    }

    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v19 + 32);
LABEL_16:
      v10 = v24;

      v25 = [v10 string];
      v26 = sub_225CCE474();
      v19 = v27;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_225B29BC8(0, *(v9 + 16) + 1, 1, v9);
      }

      v1 = *(v9 + 16);
      v28 = *(v9 + 24);
      v2 = (v1 + 1);
      if (v1 >= v28 >> 1)
      {
        v9 = sub_225B29BC8((v28 > 1), v1 + 1, 1, v9);
      }

      *(v9 + 16) = v2;
      v29 = v9 + 16 * v1;
      *(v29 + 32) = v26;
      *(v29 + 40) = v19;
      v20 = v50;
      goto LABEL_7;
    }

    __break(1u);
LABEL_33:
    ;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v8 = 0xD00000000000002CLL;
  v1 = off_28105B918;
  v43 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v19));
  (v10[2])(v17, v1 + v43, v9);
  os_unfair_lock_unlock((v1 + v19));
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    v1 = sub_225CCD934();
    v44 = sub_225CCED04();
    if (os_log_type_enabled(v1, v44))
    {
      v8 = "collectOCRText(_:)";
      v19 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v52 = v2;
      *v19 = 136315138;
      *(v19 + 4) = sub_2259BE198(0xD00000000000002CLL, 0x8000000225D21B10, &v52);
      _os_log_impl(&dword_2259A7000, v1, v44, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x22AA6F950](v2, -1, -1);
      MEMORY[0x22AA6F950](v19, -1, -1);
    }
  }

  v45 = v10[1];
  ++v10;
  v45(v17, v9);

  v9 = MEMORY[0x277D84F90];
LABEL_41:
  v52 = MEMORY[0x277D84FA0];
  i = *(v9 + 16);
  if (i)
  {
    v17 = 0;
    v19 = v9 + 40;
    while (1)
    {
      v22 = *(v9 + 16);
      if (v17 >= v22)
      {
        break;
      }

      ++v17;
      v46 = *(v19 - 8);
      v8 = *v19;

      v47 = sub_225B9204C(v46, v8);
      v1 = &v52;
      sub_225B92214(v47);

      v19 += 16;
      if (i == v17)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v21 = sub_225B29AA0((v22 > 1), v8, 1, v21);
LABEL_29:
    *(v21 + 2) = v8;
    v37 = &v21[56 * v19];
    *(v37 + 4) = 0xD00000000000002CLL;
    *(v37 + 5) = v20;
    v38 = v51;
    *(v37 + 6) = 0xD000000000000029;
    *(v37 + 7) = v38;
    v39 = v50;
    *(v37 + 8) = 0xD000000000000012;
    *(v37 + 9) = v39;
    *(v37 + 10) = 1187;
    *v17 = v3;
    *(v17 + 1) = v21;
    *(v17 + 2) = 0xD00000000000002CLL;
    *(v17 + 3) = v20;
    *(v17 + 4) = v2;
    *(v17 + 5) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v40 = off_28105B918;
    v41 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v42 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v42));
    (v10[2])(i, &v40[v41], v9);
    os_unfair_lock_unlock(&v40[v42]);
    DIPLogError(_:message:log:)(v1, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v1);
    v10[1](i, v9);

    return MEMORY[0x277D84F90];
  }

LABEL_45:

  v48 = v52;
  v9 = v52[2];
  if (v9)
  {
    v8 = sub_225C00680(v52[2], 0);
    v1 = sub_225B929C0(&v52, v8 + 4, v9, v48);
    sub_2259D8710();
    if (v1 == v9)
    {
      return v8;
    }

    goto LABEL_52;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_225B8F024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E758);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v41 - v14;
  if (!a2)
  {
    return a2;
  }

  v58 = a1;
  v59 = a2;
  v51 = "trimPostalCode(_:)";
  sub_225CCD814();
  v56 = 0;
  v57 = 0xE000000000000000;
  v16 = sub_225B93B9C();
  v17 = sub_225B93BF0();
  v48 = sub_2259D8B24(&qword_27D73E770, &qword_27D73E758);
  v49 = v17;
  v50 = v16;
  sub_225CCECB4();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v52 = v15;
  v47 = v19;
  v19(v15, v11);
  v53 = sub_225CCE534();
  v54 = v20;

  v21 = *(a3 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v42 = v10;
    v43 = v7;
    v44 = v6;
    v55 = MEMORY[0x277D84F90];
    sub_2259D5304(0, v21, 0);
    v22 = v55;
    v41 = a3;
    v23 = (a3 + 40);
    v45 = v18;
    v46 = v11;
    do
    {
      v24 = *v23;
      v58 = *(v23 - 1);
      v59 = v24;

      v25 = v52;
      sub_225CCD814();
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_225CCECB4();
      v47(v25, v11);
      sub_225CCE534();

      sub_225CCE5D4();
      sub_225CCE5D4();
      sub_225CCE544();
      sub_225CCE544();

      v26 = LevenshteinDistance();

      v55 = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2259D5304((v27 > 1), v28 + 1, 1);
        v22 = v55;
      }

      *(v22 + 16) = v28 + 1;
      *(v22 + 8 * v28 + 32) = v26;
      v23 += 2;
      --v21;
      v11 = v46;
    }

    while (v21);
    v7 = v43;
    v6 = v44;
    a3 = v41;
    v10 = v42;
  }

  v29 = sub_225B7821C(v22);
  a2 = v29;
  v31 = v30;
  v32 = *(v22 + 16);
  if (v32)
  {
    v33 = 0;
    while ((v30 & 1) != 0 || *(v22 + 8 * v33 + 32) != v29)
    {
      if (v32 == ++v33)
      {
        goto LABEL_16;
      }
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v34 = off_28105B918;
    v35 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v36 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v36));
    (*(v7 + 16))(v10, &v34[v35], v6);
    os_unfair_lock_unlock(&v34[v36]);

    sub_225B40E04(v10, v53, v54, a3, v33);

    (*(v7 + 8))(v10, v6);
    goto LABEL_22;
  }

LABEL_16:

  if ((v31 & 1) == 0)
  {

LABEL_22:
    if (a2 >= 3)
    {
      return 3;
    }

    return a2;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v37 = off_28105B918;
  v38 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v39 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v39));
  (*(v7 + 16))(v10, &v37[v38], v6);
  os_unfair_lock_unlock(&v37[v39]);
  sub_225B40E1C(v10, v53, v54);

  (*(v7 + 8))(v10, v6);
  return a2;
}

unint64_t sub_225B8F68C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v61 - v5;
  v64 = sub_225CCD954();
  v7 = *(v64 - 8);
  v9 = MEMORY[0x28223BE20](v64, v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v61 - v13;
  v15 = sub_225CCF8F4();
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[7];
  v73 = v1[6];
  v74 = v20;
  v75 = v1[8];
  v76 = *(v1 + 18);
  v21 = v1[3];
  v69 = v1[2];
  v70 = v21;
  v22 = v1[5];
  v71 = v1[4];
  v72 = v22;
  v23 = v1[1];
  v67 = *v1;
  v68 = v23;
  v24 = [a1 results];
  if (!v24)
  {
    v16 = 0x8000000225D219F0;
    v62 = 0x8000000225D21A20;
    v63 = 0x8000000225D20DA0;
    v36 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v15 = swift_allocError();
    v19 = v37;
    v38 = sub_225CCE954();
    v39 = *(v38 - 8);
    (*(v39 + 56))(v6, 1, 1, v38);
    LODWORD(v38) = (*(v39 + 48))(v6, 1, v38);
    sub_2259CB640(v6, &unk_27D73B050);
    if (v38)
    {
      LOWORD(v6) = 350;
    }

    else
    {
      LOWORD(v6) = 23;
    }

    v40 = MEMORY[0x277D84F90];
    v41 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v65[0] = v41;
    sub_225B2C4A0(v36, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v65);

    v14 = *&v65[0];
    v27 = sub_225B29AA0(0, 1, 1, v40);
    v25 = *(v27 + 2);
    v28 = *(v27 + 3);
    v26 = v25 + 1;
    if (v25 < v28 >> 1)
    {
LABEL_12:
      *(v27 + 2) = v26;
      v43 = &v27[56 * v25];
      *(v43 + 4) = 0xD00000000000002FLL;
      *(v43 + 5) = v16;
      v44 = v63;
      *(v43 + 6) = 0xD000000000000029;
      *(v43 + 7) = v44;
      v45 = v62;
      *(v43 + 8) = 0xD00000000000001FLL;
      *(v43 + 9) = v45;
      *(v43 + 10) = 1251;
      *v19 = v6;
      *(v19 + 1) = v27;
      *(v19 + 2) = 0xD00000000000002FLL;
      *(v19 + 3) = v16;
      *(v19 + 4) = v14;
      *(v19 + 5) = 0;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v46 = off_28105B918;
      v47 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v48 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v48));
      v49 = &v46[v47];
      v50 = v64;
      (*(v7 + 16))(v11, v49, v64);
      os_unfair_lock_unlock(&v46[v48]);
      DIPLogError(_:message:log:)(v15, 0, 0xE000000000000000);
      _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v15);
      (*(v7 + 8))(v11, v50);

LABEL_23:
      v35 = 0;
      LOBYTE(v34) = 1;
      goto LABEL_24;
    }

LABEL_27:
    v27 = sub_225B29AA0((v28 > 1), v26, 1, v27);
    goto LABEL_12;
  }

  v25 = v24;
  sub_2259D8718(0, &qword_27D73E7C8);
  v26 = sub_225CCE814();

  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_16:

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v51 = off_28105B918;
    v52 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v53 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v53));
    v54 = &v51[v52];
    v55 = v64;
    (*(v7 + 16))(v14, v54, v64);
    os_unfair_lock_unlock(&v51[v53]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v56 = sub_225CCD934();
      v57 = sub_225CCED04();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v65[0] = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_2259BE198(0xD000000000000042, 0x8000000225D21A40, v65);
        _os_log_impl(&dword_2259A7000, v56, v57, "%s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x22AA6F950](v59, -1, -1);
        MEMORY[0x22AA6F950](v58, -1, -1);
      }

      (*(v7 + 8))(v14, v64);
    }

    else
    {
      (*(v7 + 8))(v14, v55);
    }

    goto LABEL_23;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x22AA6DA80](0, v26);
    goto LABEL_7;
  }

  v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    __break(1u);
    goto LABEL_27;
  }

  v29 = *(v26 + 32);
LABEL_7:
  v30 = v29;

  v65[6] = v73;
  v65[7] = v74;
  v65[8] = v75;
  v66 = v76;
  v65[2] = v69;
  v65[3] = v70;
  v65[4] = v71;
  v65[5] = v72;
  v65[0] = v67;
  v65[1] = v68;
  [v30 confidence];
  v32 = v31;
  (*(v16 + 104))(v19, *MEMORY[0x277D84688], v15);
  v33 = sub_225B804A4(15, v19, v32);

  v34 = HIDWORD(v33) & 1;
  (*(v16 + 8))(v19, v15);
  v35 = v33;
LABEL_24:
  LOBYTE(v67) = v34;
  return v35 | (v34 << 32);
}

uint64_t sub_225B8FE7C()
{
  v1 = sub_225CCD954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v31 - v8;
  LODWORD(result) = [*(v0 + 136) luxLevel];
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  v33 = 0x8000000225D20DA0;
  v34 = 0x8000000225D21A90;
  v11 = MEMORY[0x277D84F90];
  v12 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v32 = swift_allocError();
  v14 = v13;
  v15 = sub_225CCE954();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v9, 1, 1, v15);
  LODWORD(v15) = (*(v16 + 48))(v9, 1, v15);
  sub_2259CB640(v9, &unk_27D73B050);
  if (v15)
  {
    v17 = 356;
  }

  else
  {
    v17 = 23;
  }

  v18 = sub_225B2C374(v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v18;
  sub_225B2C4A0(v12, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v35);

  v20 = v35;
  v21 = sub_225B29AA0(0, 1, 1, v11);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_225B29AA0((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[56 * v23];
  v25 = v34;
  *(v24 + 4) = 0xD00000000000002DLL;
  *(v24 + 5) = v25;
  v26 = v33;
  *(v24 + 6) = 0xD000000000000029;
  *(v24 + 7) = v26;
  strcpy(v24 + 64, "collectLux()");
  v24[77] = 0;
  *(v24 + 39) = -5120;
  *(v24 + 10) = 1268;
  *v14 = v17;
  *(v14 + 8) = v21;
  *(v14 + 16) = 0xD00000000000002DLL;
  *(v14 + 24) = v25;
  *(v14 + 32) = v20;
  *(v14 + 40) = 0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v27 = off_28105B918;
  v28 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v29 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v29));
  (*(v2 + 16))(v5, &v27[v28], v1);
  os_unfair_lock_unlock(&v27[v29]);
  v30 = v32;
  DIPLogError(_:message:log:)(v32, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v30);
  (*(v2 + 8))(v5, v1);

  return 0;
}

void *sub_225B90284(void *result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  v10 = result;
  if (a2 & 0x100000000) != 0 || (a4 & 1) != 0 || (a6 & 1) != 0 || a5 > 255 || (a8 & 1) != 0 || (a10)
  {
    v11 = MEMORY[0x277D84F90];
    *&v17[24] = MEMORY[0x277D84F90];
    *&v18[8] = xmmword_225CF1D10;
    LODWORD(v16) = 1097859072;
    *(&v16 + 1) = 10;
    v17[0] = -11;
    *&v17[4] = 1036831949;
    *&v17[8] = xmmword_225CF1D20;
    goto LABEL_10;
  }

  if ((a5 & 0x8000000000000000) == 0)
  {
    v11 = MEMORY[0x277D84F90];
    *&v17[16] = a9;
    *&v17[24] = MEMORY[0x277D84F90];
    *&v18[8] = xmmword_225CF1D10;
    LODWORD(v16) = a2;
    *(&v16 + 1) = a3;
    v17[0] = a5;
    *&v17[4] = 1036831949;
    *&v17[8] = a7;
LABEL_10:
    *v18 = sub_225B2E6E4(v11);
    v29 = v16;
    v30 = *v17;
    v31 = *&v17[16];
    v32 = *v18;
    v33 = *&v18[16];
    v34 = *&v17[24];
    v12 = sub_225BDE26C(v10);
    sub_2259CB640(&v34, &qword_27D73E7D0);
    *&v17[24] = v12;
    sub_225BDE590();
    v21 = *&v17[16];
    v22 = *v18;
    v23 = *&v18[16];
    v19 = v16;
    v20 = *v17;
    v26 = *&v17[16];
    v27 = *v18;
    v28 = *&v18[16];
    v24 = v16;
    v25 = *v17;
    sub_225B93C8C(&v19, &v15);
    sub_225B93CE8(&v24);
    v26 = v21;
    v27 = v22;
    v28 = v23;
    v24 = v19;
    v25 = v20;
    sub_225BDDF18();
    v14 = v13;
    sub_225B93CE8(&v19);
    return v14;
  }

  __break(1u);
  return result;
}

id ImageQualityCollector.getFuzzyMatchAssessment(frontID:pdf417Data:)(uint64_t a1, void *a2)
{
  v191 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v167 = v151 - v7;
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v152 = v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v165 = v151 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v170 = v151 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = v151 - v20;
  v22 = a2[14];
  v159 = a2[15];
  v160 = v22;
  v23 = a2[16];
  v157 = a2[17];
  v158 = v23;
  v24 = a2[27];
  v151[1] = a2[26];
  v151[2] = v24;
  v25 = a2[30];
  v161 = a2[31];
  v162 = v25;
  v26 = a2[33];
  v154 = a2[32];
  v155 = v26;
  v27 = a2[39];
  v153 = a2[38];
  v156 = v27;
  v28 = a2[50];
  v163 = a2[51];
  v164 = v28;
  v29 = *v2;
  v30 = v2[2];
  v31 = v2[3];
  v181 = v2[1];
  v182 = v30;
  v180 = v29;
  v32 = v2[7];
  v186 = v2[6];
  v187 = v32;
  v33 = v2[5];
  v184 = v2[4];
  v185 = v33;
  v183 = v31;
  v34 = *(v2 + 128);
  v35 = *(v2 + 129);
  *(v179 + 15) = *(v2 + 18);
  v179[0] = v35;
  sub_225B2E800(MEMORY[0x277D84F90]);
  v36 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_225B93C44(&qword_27D73A9E8, type metadata accessor for VNImageOption);
  v37 = sub_225CCE2B4();

  v176 = [v36 initWithCIImage:a1 options:v37];

  v38 = [objc_allocWithZone(MEMORY[0x277CE2DB8]) init];
  [v38 setRecognitionLevel_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_225CD30F0;
  v166 = v34;
  *(v39 + 32) = qword_225CF29C8[v34];
  *(v39 + 40) = 0xE300000000000000;
  v40 = sub_225CCE7F4();

  [v38 setRecognitionLanguages_];

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v41 = off_28105B918;
  v42 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v43 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v43));
  v44 = *(v9 + 16);
  v173 = v42;
  v174 = v9 + 16;
  v177 = v8;
  v172 = v44;
  v44(v21, &v41[v42], v8);
  v175 = v43;
  os_unfair_lock_unlock(&v41[v43]);
  v45 = sub_225CCD934();
  v46 = sub_225CCED04();
  v47 = os_log_type_enabled(v45, v46);
  v48 = v176;
  if (v47)
  {
    v49 = v176;
    v50 = v9;
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_2259A7000, v45, v46, "Performing fuzzy matching OCR vision request on front ID", v51, 2u);
    v52 = v51;
    v9 = v50;
    v48 = v49;
    MEMORY[0x22AA6F950](v52, -1, -1);
  }

  v55 = *(v9 + 8);
  v53 = v9 + 8;
  v54 = v55;
  v55(v21, v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_225CD7D40;
  *(v56 + 32) = v38;
  sub_2259D8718(0, &qword_27D73E6F8);
  v57 = v38;
  v58 = sub_225CCE7F4();

  *&v188[0] = 0;
  v59 = [v48 performRequests:v58 error:v188];

  v60 = *&v188[0];
  v171 = v55;
  if (!v59)
  {
    v168 = v57;
    v169 = v53;
    v69 = *&v188[0];
    v70 = sub_225CCCCC4();

    swift_willThrow();
    *&v188[0] = 0;
    *(&v188[0] + 1) = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000035, 0x8000000225D20E20);
    v166 = v70;
    swift_getErrorValue();
    v71 = sub_225CCFB24();
    MEMORY[0x22AA6CE70](v71);

    v72 = v188[0];
    v164 = 0x8000000225D20E60;
    v165 = 0x8000000225D20DA0;
    v73 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v74 = swift_allocError();
    v76 = v75;
    v77 = sub_225CCE954();
    v78 = *(v77 - 8);
    v79 = v167;
    (*(v78 + 56))(v167, 1, 1, v77);
    LODWORD(v77) = (*(v78 + 48))(v79, 1, v77);
    sub_2259CB640(v79, &unk_27D73B050);
    if (v77)
    {
      v80 = 349;
    }

    else
    {
      v80 = 23;
    }

    v81 = MEMORY[0x277D84F90];
    v82 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v188[0] = v82;
    sub_225B2C4A0(v73, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v188);

    v84 = *&v188[0];
    v85 = sub_225B29AA0(0, 1, 1, v81);
    v87 = *(v85 + 2);
    v86 = *(v85 + 3);
    if (v87 >= v86 >> 1)
    {
      v85 = sub_225B29AA0((v86 > 1), v87 + 1, 1, v85);
    }

    *(v85 + 2) = v87 + 1;
    v88 = &v85[56 * v87];
    *(v88 + 2) = v72;
    v89 = v165;
    *(v88 + 6) = 0xD000000000000029;
    *(v88 + 7) = v89;
    v90 = v164;
    *(v88 + 8) = 0xD00000000000002CLL;
    *(v88 + 9) = v90;
    *(v88 + 10) = 778;
    *v76 = v80;
    *(v76 + 8) = v85;
    *(v76 + 16) = v72;
    *(v76 + 32) = v84;
    *(v76 + 40) = 0;
    v91 = v175;
    os_unfair_lock_lock(&v41[v175]);
    v92 = v170;
    v93 = v177;
    v172(v170, &v41[v173], v177);
    os_unfair_lock_unlock(&v41[v91]);
    DIPLogError(_:message:log:)(v74, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v74);

    v171(v92, v93);
    return 0;
  }

  v188[4] = v184;
  v188[5] = v185;
  v188[6] = v186;
  v188[7] = v187;
  v188[0] = v180;
  v188[1] = v181;
  v188[2] = v182;
  v188[3] = v183;
  v189 = v166;
  *&v190[15] = *(v179 + 15);
  *v190 = v179[0];
  v61 = v60;
  v62 = sub_225B8E74C(v57);
  if (!*(v62 + 2))
  {

    v94 = v175;
    os_unfair_lock_lock(&v41[v175]);
    v95 = v152;
    v96 = v177;
    v172(v152, &v41[v173], v177);
    os_unfair_lock_unlock(&v41[v94]);
    v97 = sub_225CCD934();
    v98 = sub_225CCED04();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_2259A7000, v97, v98, "OCR could not find any text, returning nil fuzzy match", v99, 2u);
      MEMORY[0x22AA6F950](v99, -1, -1);
    }

    else
    {
    }

    v171(v95, v96);
    return 0;
  }

  v63 = v175;
  os_unfair_lock_lock(&v41[v175]);
  v64 = v170;
  v65 = v177;
  v172(v170, &v41[v173], v177);
  os_unfair_lock_unlock(&v41[v63]);

  sub_225B4105C(v64, v62);

  v54(v64, v65);
  if (v155)
  {
    v66 = v154;
  }

  else
  {
    v66 = 0;
  }

  v67 = 0xE000000000000000;
  if (v155)
  {
    v67 = v155;
  }

  v166 = v67;
  v167 = v66;
  v168 = v57;
  v169 = v53;
  if (v156)
  {
    if (sub_225CCE514() == 29557 && v68 == 0xE200000000000000)
    {

      goto LABEL_16;
    }

    v101 = sub_225CCF934();

    if (v101)
    {
      goto LABEL_28;
    }

    if (sub_225CCE514() == 6386549 && v149 == 0xE300000000000000)
    {
LABEL_16:

LABEL_28:
      v103 = sub_225B913C4(v167, v166);
      v105 = v104;

      v167 = v103;
      v100 = v105;

      v106 = sub_225B917E8();
      v108 = v107;
      v110 = v109;
      v112 = v111;

      v155 = sub_225B8F024(v106, v108, v62);
      LODWORD(v170) = v113;
      swift_bridgeObjectRelease_n();
      v154 = sub_225B8F024(v110, v112, v62);
      LODWORD(v156) = v114;

      goto LABEL_32;
    }

    v150 = sub_225CCF934();

    if (v150)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  LODWORD(v156) = 0;
  LODWORD(v170) = 0;
  v154 = -1;
  v155 = -1;
  v100 = v166;
LABEL_32:
  v115 = sub_225B8F024(v158, v157, v62);
  v117 = v116;
  v118 = sub_225B8F024(v160, v159, v62);
  v120 = v119;
  v121 = sub_225B8F024(v162, v161, v62);
  v123 = v122;
  v166 = sub_225B8F024(v164, v163, v62);
  LODWORD(v164) = v124;
  v167 = sub_225B8F024(v167, v100, v62);
  LODWORD(v163) = v125;

  matched = type metadata accessor for FuzzyMatchAssessment();
  v127 = objc_allocWithZone(matched);
  v128 = &v127[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_firstName];
  *v128 = v115;
  v128[8] = v117 & 1;
  v129 = &v127[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_lastName];
  *v129 = v118;
  v129[8] = v120 & 1;
  v130 = &v127[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_state];
  *v130 = v121;
  v130[8] = v123 & 1;
  v131 = &v127[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_houseNumber];
  *v131 = v155;
  v131[8] = v170 & 1;
  v132 = &v127[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_street];
  *v132 = v154;
  v132[8] = v156 & 1;
  v133 = &v127[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_dob];
  *v133 = v166;
  v133[8] = v164 & 1;
  v134 = &v127[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_postalCode];
  *v134 = v167;
  v134[8] = v163 & 1;
  v178.receiver = v127;
  v178.super_class = matched;
  v135 = objc_msgSendSuper2(&v178, sel_init);
  v136 = v175;
  os_unfair_lock_lock(&v41[v175]);
  v137 = v165;
  v138 = v177;
  v172(v165, &v41[v173], v177);
  os_unfair_lock_unlock(&v41[v136]);

  v139 = v135;
  v140 = sub_225CCD934();
  v141 = sub_225CCED04();
  v142 = v139;

  if (os_log_type_enabled(v140, v141))
  {
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    *&v188[0] = v144;
    *v143 = 136315138;
    v145 = FuzzyMatchAssessment.debugDescription.getter();
    v147 = sub_2259BE198(v145, v146, v188);

    *(v143 + 4) = v147;
    _os_log_impl(&dword_2259A7000, v140, v141, "Fuzzy Match Assessment:\n%s", v143, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v144);
    MEMORY[0x22AA6F950](v144, -1, -1);
    MEMORY[0x22AA6F950](v143, -1, -1);

    v148 = v176;
  }

  else
  {

    v148 = v168;
  }

  v171(v137, v138);
  return v142;
}

uint64_t sub_225B913C4(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v37 - v6;
  v40[4] = 0;
  v40[5] = 0xE000000000000000;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v40[0] = a1;
  v40[1] = a2;
  v40[2] = 0;
  v40[3] = v8;

  v9 = sub_225CCE644();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    do
    {
      v39[0] = v11;
      v39[1] = v12;
      MEMORY[0x28223BE20](v9, v10);
      *(&v37 - 2) = v39;
      if (sub_225B53D04(sub_225AF3BE4, (&v37 - 4), 0x3736353433323130, 0xEA00000000003938))
      {
        MEMORY[0x22AA6CE60](v11, v12);
      }

      v9 = sub_225CCE644();
      v11 = v9;
      v12 = v10;
    }

    while (v10);
  }

  if (sub_225CCE5D4() >= 5)
  {
    sub_225CCE604();
    sub_225CCE5E4();
    v29 = sub_225CCE704();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v22 = MEMORY[0x22AA6CD90](v29, v31, v33, v35);
  }

  else
  {

    v41 = 0x8000000225D20DA0;
    v38 = 0x8000000225D20EE0;
    v13 = MEMORY[0x277D84F90];
    v14 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v16 = v15;
    v17 = sub_225CCE954();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v7, 1, 1, v17);
    LODWORD(v17) = (*(v18 + 48))(v7, 1, v17);
    sub_2259CB640(v7, &unk_27D73B050);
    if (v17)
    {
      v19 = 367;
    }

    else
    {
      v19 = 23;
    }

    v20 = sub_225B2C374(v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = v20;
    sub_225B2C4A0(v14, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v40);

    v22 = v40[0];
    v23 = sub_225B29AA0(0, 1, 1, v13);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_225B29AA0((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[56 * v25];
    *(v26 + 4) = 0xD00000000000004BLL;
    *(v26 + 5) = 0x8000000225D20E90;
    v27 = v41;
    *(v26 + 6) = 0xD000000000000029;
    *(v26 + 7) = v27;
    v28 = v38;
    *(v26 + 8) = 0xD000000000000012;
    *(v26 + 9) = v28;
    *(v26 + 10) = 1531;
    *v16 = v19;
    *(v16 + 8) = v23;
    *(v16 + 16) = 0xD00000000000004BLL;
    *(v16 + 24) = 0x8000000225D20E90;
    *(v16 + 32) = v22;
    *(v16 + 40) = 0;
    swift_willThrow();
  }

  return v22;
}

uint64_t sub_225B917E8()
{
  sub_2259D8654();
  result = sub_225CCF034();
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v1 - 1) > *(v2 + 24) >> 1)
    {
      sub_225B29BC8(isUniquelyReferenced_nonNull_native, v1, 1, v2);
    }

    sub_225C00FBC(0, 1, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
    sub_225CCE384();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_225B9193C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_23;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x22AA6DA80](0, v1);
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v3 = *(v1 + 32);
      }

      v4 = v3;
      if (v2 == 1)
      {
        return v4;
      }

      v6 = 1;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x22AA6DA80](v6, v1);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v7 = *(v1 + 8 * v6 + 32);
        }

        v5 = v7;
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v4 boundingBox];
        x = v21.origin.x;
        y = v21.origin.y;
        width = v21.size.width;
        height = v21.size.height;
        v13 = CGRectGetWidth(v21);
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        v14 = v13 * CGRectGetHeight(v22);
        [v5 boundingBox];
        v15 = v23.origin.x;
        v16 = v23.origin.y;
        v17 = v23.size.width;
        v18 = v23.size.height;
        v19 = CGRectGetWidth(v23);
        v24.origin.x = v15;
        v24.origin.y = v16;
        v24.size.width = v17;
        v24.size.height = v18;
        v20 = v19 * CGRectGetHeight(v24);
        if (v14 < v20)
        {

          v4 = v5;
          ++v6;
          if (v8 == v2)
          {
            return v5;
          }
        }

        else
        {

          ++v6;
          if (v8 == v2)
          {
            return v4;
          }
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      result = sub_225CCF144();
      v2 = result;
    }

    while (result);
  }

  return 0;
}

uint64_t sub_225B91B14(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  strcpy(v7, "Filtered from ");
  HIBYTE(v7[1]) = -18;
  if (a1 >> 62)
  {
    sub_225CCF144();
  }

  v4 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v4);

  MEMORY[0x22AA6CE70](544175136, 0xE400000000000000);
  if (a2 >> 62)
  {
    sub_225CCF144();
  }

  v5 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v5);

  MEMORY[0x22AA6CE70](0x736563616620, 0xE600000000000000);
  return v7[0];
}

void sub_225B91C60(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v49 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB48);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v47 - v8;
  v10 = sub_225CCCA04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [*a1 topCandidates_];
  sub_2259D8718(0, &qword_27D73E7C0);
  v17 = sub_225CCE814();

  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_10;
  }

LABEL_3:
  v47 = v15;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x22AA6DA80](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;

  v48 = v19;
  v20 = [v19 string];
  v21 = sub_225CCE474();
  v23 = v22;

  v52 = v21;
  v53 = v23;
  sub_225CCC9F4();
  sub_2259D8654();
  v24 = sub_225CCF054();
  v26 = v25;
  (*(v11 + 8))(v14, v10);

  v52 = v24;
  v53 = v26;
  v50 = v49;
  v51 = v54;
  v27 = sub_225CCD1C4();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  sub_225CCF074();
  v29 = v28;
  sub_2259CB640(v9, &qword_27D73DB48);
  if (v29)
  {

    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  else
  {
    v30 = v47;
    [v47 topLeft];
    v32 = v31;
    v34 = v33;
    [v30 topRight];
    v36 = v35;
    v38 = v37;
    [v30 bottomLeft];
    v40 = v39;
    v42 = v41;
    [v30 bottomRight];
    v44 = v43;
    v46 = v45;

    *a4 = v24;
    *(a4 + 8) = v26;
    *(a4 + 16) = v32;
    *(a4 + 24) = v34;
    *(a4 + 32) = v36;
    *(a4 + 40) = v38;
    *(a4 + 48) = v40;
    *(a4 + 56) = v42;
    *(a4 + 64) = v44;
    *(a4 + 72) = v46;
  }
}

uint64_t sub_225B9204C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v23 = 32;
  v24 = 0xE100000000000000;
  sub_2259D8654();
  result = sub_225CCF034();
  v3 = result;
  v4 = MEMORY[0x277D84FA0];
  v22 = MEMORY[0x277D84FA0];
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v20 = result;
    v21 = result + 32;
    v7 = (result + 56);
    v8 = -1;
    v19 = *(result + 16);
    while (v6 < *(v3 + 16))
    {
      v9 = (v21 + 16 * v6);
      v10 = v9[1];
      v25 = *v9;
      v11 = v25;
      v26 = v10;
      swift_bridgeObjectRetain_n();
      sub_225B1C618(&v23, v11, v10);

      v12 = *(v3 + 16);
      if (v12 <= v6)
      {
        goto LABEL_14;
      }

      if (++v6 != v12)
      {
        if (v6 >= v12)
        {
          goto LABEL_15;
        }

        v13 = v12 + v8;
        v14 = v7;
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;
          v23 = 32;
          v24 = 0xE100000000000000;

          MEMORY[0x22AA6CE70](v15, v16);

          MEMORY[0x22AA6CE70](v23, v24);

          v18 = v25;
          v17 = v26;

          sub_225B1C618(&v23, v18, v17);

          v14 += 2;
          --v13;
        }

        while (v13);
        v5 = v19;
        v3 = v20;
      }

      --v8;
      v7 += 2;
      if (v6 == v5)
      {
        v4 = v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:

    return v4;
  }

  return result;
}

uint64_t sub_225B92214(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_225B1C618(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

id sub_225B92318(void *a1)
{
  v21 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithValues:&unk_2838FF708 count:9];
  v2 = sub_225CCE444();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = sub_225CCE474();
  *(inited + 72) = MEMORY[0x277D839F8];
  *(inited + 40) = v4;
  *(inited + 48) = 0;
  sub_225B2C92C(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &unk_27D73B090);
  v5 = sub_225CCE2B4();

  v6 = [a1 imageByApplyingFilter:v2 withInputParameters:v5];

  v7 = sub_225CCE444();
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_225CD30F0;
  *(v8 + 32) = sub_225CCE474();
  *(v8 + 40) = v9;
  type metadata accessor for CGAffineTransform(0);
  *(v8 + 72) = v10;
  v11 = swift_allocObject();
  *(v8 + 48) = v11;
  v11[2] = 0x3FF0000000000000;
  v11[3] = 0;
  v11[4] = 0;
  v11[5] = 0x3FF0000000000000;
  v11[6] = 0;
  v11[7] = 0;
  sub_225B2C92C(v8);
  swift_setDeallocating();
  sub_2259CB640(v8 + 32, &unk_27D73B090);
  v12 = sub_225CCE2B4();

  v13 = [v6 imageByApplyingFilter:v7 withInputParameters:v12];

  v14 = sub_225CCE444();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_225CD30F0;
  strcpy((v15 + 32), "inputWeights");
  *(v15 + 45) = 0;
  *(v15 + 46) = -5120;
  *(v15 + 72) = sub_2259D8718(0, &qword_27D73E790);
  *(v15 + 48) = v21;
  v16 = v21;
  sub_225B2C92C(v15);
  swift_setDeallocating();
  sub_2259CB640(v15 + 32, &unk_27D73B090);
  v17 = sub_225CCE2B4();

  v18 = [v13 imageByApplyingFilter:v14 withInputParameters:v17];

  [a1 extent];
  v19 = [v18 imageByCroppingToRect_];

  return v19;
}

uint64_t sub_225B926EC(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = sub_225CCF8F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[7];
  v26 = v1[6];
  v27 = v8;
  v28 = v1[8];
  v29 = *(v1 + 18);
  v9 = v1[3];
  v22 = v1[2];
  v23 = v9;
  v10 = v1[5];
  v24 = v1[4];
  v25 = v10;
  v11 = v1[1];
  v20 = *v1;
  v21 = v11;
  v12 = *(a1 + 16);
  __C = NAN;
  vDSP_meanv((a1 + 32), 1, &__C, v12);
  v13 = __C;
  __C = NAN;
  vDSP_measqv((a1 + 32), 1, &__C, v12);
  v14 = 1.0 - ((logf(__C - (v13 * v13)) + 10.0) / 10.0);
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v15 = fminf(v14, 1.0);
  (*(v4 + 104))(v7, *MEMORY[0x277D84688], v3);
  v16 = sub_225B804A4(1, v7, v15);
  (*(v4 + 8))(v7, v3);
  return v16 | ((HIDWORD(v16) & 1) << 32);
}

uint64_t sub_225B928DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_225CCF204();

  MEMORY[0x22AA6CE70](a1, a2);
  result = MEMORY[0x22AA6CE70](2108704, 0xE300000000000000);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a4)
  {
    v9 = a3 + 16 * a4;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);

    MEMORY[0x22AA6CE70](v10, v11);

    return 0xD000000000000012;
  }

  __break(1u);
  return result;
}

void *sub_225B929C0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL _s13CoreIDVShared17IQTextObservationV6BoundsV2eeoiySbAE_AEtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1])
  {
    v5 = a1[3].f64[1];
    v6 = a1[3].f64[0] == a2[3].f64[0];
    return v5 == a2[3].f64[1] && v6;
  }

  return result;
}

uint64_t sub_225B92B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_225B92BB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    return a1;
  }

  for (i = (a2 + 40); ; i += 2)
  {
    v9 = *(i - 1);
    v8 = *i;

    v10 = sub_225B8F024(v9, v8, a4);
    v12 = (v11 & 1) != 0 ? -1 : v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_2259F18D4(v9, v8);
    v16 = a1[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (a1[3] < v19)
    {
      sub_225A435F8(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_2259F18D4(v9, v8);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v25 = v14;
    sub_225A45BDC();
    v14 = v25;
    if (v20)
    {
LABEL_3:
      *(a1[7] + 8 * v14) = v12;

      goto LABEL_4;
    }

LABEL_14:
    a1[(v14 >> 6) + 8] |= 1 << v14;
    v22 = (a1[6] + 16 * v14);
    *v22 = v9;
    v22[1] = v8;
    *(a1[7] + 8 * v14) = v12;
    v23 = a1[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_20;
    }

    a1[2] = v24;
LABEL_4:
    if (!--v5)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

unint64_t sub_225B92DB4()
{
  result = qword_27D73E708;
  if (!qword_27D73E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E708);
  }

  return result;
}

unint64_t sub_225B92E0C()
{
  result = qword_27D73E710;
  if (!qword_27D73E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E710);
  }

  return result;
}

unint64_t sub_225B92E64()
{
  result = qword_27D73E718;
  if (!qword_27D73E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E718);
  }

  return result;
}

unint64_t sub_225B92EBC()
{
  result = qword_27D73E720;
  if (!qword_27D73E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E720);
  }

  return result;
}

unint64_t sub_225B92F14()
{
  result = qword_27D73E728;
  if (!qword_27D73E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E728);
  }

  return result;
}

unint64_t sub_225B92F6C()
{
  result = qword_27D73E730;
  if (!qword_27D73E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E730);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared16PDF417ParsedDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_225B92FF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 880))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 872);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225B93038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 872) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 880) = 1;
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
      *(result + 872) = (a2 - 1);
      return result;
    }

    *(result + 880) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_225B9318C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_225B931E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_225B93280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_225B932DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_225B9338C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_225B933E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_225B93474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_225B934BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_225B93520(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225B93540(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared10PDF417DataVSg(uint64_t a1)
{
  v1 = *(a1 + 872);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_225B935AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 896))
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

uint64_t sub_225B935F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 888) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 896) = 1;
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

    *(result + 896) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MetricsFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_225B937BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_225B93804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageQualityCollector.BucketKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageQualityCollector.BucketKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_225B939EC()
{
  result = qword_27D73E738;
  if (!qword_27D73E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E738);
  }

  return result;
}

unint64_t sub_225B93A44()
{
  result = qword_27D73E740;
  if (!qword_27D73E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E740);
  }

  return result;
}

unint64_t sub_225B93A9C()
{
  result = qword_27D73E748;
  if (!qword_27D73E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E748);
  }

  return result;
}

unint64_t sub_225B93AF4()
{
  result = qword_27D73E750;
  if (!qword_27D73E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E750);
  }

  return result;
}

uint64_t sub_225B93B48()
{
  v0 = sub_225CCFA64();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_225B93B9C()
{
  result = qword_27D73E760;
  if (!qword_27D73E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E760);
  }

  return result;
}

unint64_t sub_225B93BF0()
{
  result = qword_27D73E768;
  if (!qword_27D73E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E768);
  }

  return result;
}

uint64_t sub_225B93C44(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Bool __swiftcall IQACode.isPassing()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v6 = 0uLL;
  v7 = 2;
  if (_s13CoreIDVShared7IQACodeO2eeoiySbAC_ACtFZ_0(&v8, &v6))
  {
    v4 = 1;
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v10 = v3;
    v6 = xmmword_225CF29F0;
    v7 = 2;
    v4 = _s13CoreIDVShared7IQACodeO2eeoiySbAC_ACtFZ_0(&v8, &v6);
  }

  return v4 & 1;
}

Swift::Bool __swiftcall IQACode.failsPDF417()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v6 = xmmword_225CF2A00;
  v7 = 2;
  if (_s13CoreIDVShared7IQACodeO2eeoiySbAC_ACtFZ_0(&v8, &v6) & 1) != 0 || (v8 = v1, v9 = v2, v10 = v3, v6 = xmmword_225CF2A10, v7 = 2, (_s13CoreIDVShared7IQACodeO2eeoiySbAC_ACtFZ_0(&v8, &v6)))
  {
    v4 = 1;
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v10 = v3;
    v6 = xmmword_225CF2A20;
    v7 = 2;
    v4 = _s13CoreIDVShared7IQACodeO2eeoiySbAC_ACtFZ_0(&v8, &v6);
  }

  return v4 & 1;
}

unint64_t sub_225B93EE4(char a1)
{
  result = 1936941424;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x656E697272756C62;
      break;
    case 3:
    case 4:
      result = 0x426563616C70616CLL;
      break;
    case 5:
      result = 0x657275736F707865;
      break;
    case 6:
      result = 0x657275736F707865;
      break;
    case 7:
    case 39:
    case 48:
    case 53:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
    case 35:
    case 57:
      result = 0xD000000000000013;
      break;
    case 10:
    case 11:
    case 21:
    case 36:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
    case 14:
      result = 0x6374695064616568;
      break;
    case 15:
      result = 0x6C6C6F5264616568;
      break;
    case 16:
      result = 0x6C6C6F5264616568;
      break;
    case 17:
      result = 0x4C77615964616568;
      break;
    case 18:
      result = 0x4877615964616568;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 20:
    case 26:
    case 28:
    case 32:
      result = 0xD000000000000016;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
    case 29:
      result = 0xD000000000000017;
      break;
    case 24:
    case 30:
      result = 0xD000000000000018;
      break;
    case 25:
      result = 0xD000000000000015;
      break;
    case 27:
      result = 0xD000000000000015;
      break;
    case 31:
      result = 0xD000000000000015;
      break;
    case 33:
    case 37:
      result = 0x746E656D75636F64;
      break;
    case 34:
    case 38:
    case 41:
    case 49:
    case 55:
      result = 0xD000000000000010;
      break;
    case 40:
      result = 0x6F54746567726174;
      break;
    case 42:
      result = 0x73656361466D756ELL;
      break;
    case 43:
      result = 0x73656361466D756ELL;
      break;
    case 44:
      result = 0x6C6576654C78756CLL;
      break;
    case 45:
      result = 0x6C6576654C78756CLL;
      break;
    case 46:
      result = 0x6F4E373134666470;
      break;
    case 47:
      result = 0x6F46373134666470;
      break;
    case 50:
      result = 0x73694D6574617473;
      break;
    case 51:
      result = 0x7465446572616C67;
      break;
    case 52:
      result = 0x756C636E6F636E69;
      break;
    case 54:
      result = 0x4464657269707865;
      break;
    case 56:
      result = 0x4D7972746E756F63;
      break;
    case 58:
      result = 0x4B676E697373696DLL;
      break;
    case 59:
      result = 0x78656C706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_225B94488(uint64_t a1)
{
  v2 = sub_225BB28D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B944C4(uint64_t a1)
{
  v2 = sub_225BB28D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94500(uint64_t a1)
{
  v2 = sub_225BB2924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9453C(uint64_t a1)
{
  v2 = sub_225BB2924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94578(uint64_t a1)
{
  v2 = sub_225BB2EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B945B4(uint64_t a1)
{
  v2 = sub_225BB2EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B945F0(uint64_t a1)
{
  v2 = sub_225BB2F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9462C(uint64_t a1)
{
  v2 = sub_225BB2F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94668(uint64_t a1)
{
  v2 = sub_225BB2CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B946A4(uint64_t a1)
{
  v2 = sub_225BB2CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B946E0(uint64_t a1)
{
  v2 = sub_225BB2D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9471C(uint64_t a1)
{
  v2 = sub_225BB2D14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225BBA360(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225B94794(uint64_t a1)
{
  v2 = sub_225BB1BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B947D0(uint64_t a1)
{
  v2 = sub_225BB1BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94818(uint64_t a1)
{
  v2 = sub_225BB1C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94854(uint64_t a1)
{
  v2 = sub_225BB1C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94890(uint64_t a1)
{
  v2 = sub_225BB1D00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B948CC(uint64_t a1)
{
  v2 = sub_225BB1D00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94908(uint64_t a1)
{
  v2 = sub_225BB23E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94944(uint64_t a1)
{
  v2 = sub_225BB23E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94980(uint64_t a1)
{
  v2 = sub_225BB2390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B949BC(uint64_t a1)
{
  v2 = sub_225BB2390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B949F8(uint64_t a1)
{
  v2 = sub_225BB2438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94A34(uint64_t a1)
{
  v2 = sub_225BB2438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94A70(uint64_t a1)
{
  v2 = sub_225BB248C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94AAC(uint64_t a1)
{
  v2 = sub_225BB248C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94AE8(uint64_t a1)
{
  v2 = sub_225BB233C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94B24(uint64_t a1)
{
  v2 = sub_225BB233C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94B60(uint64_t a1)
{
  v2 = sub_225BB1DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94B9C(uint64_t a1)
{
  v2 = sub_225BB1DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94BD8(uint64_t a1)
{
  v2 = sub_225BB2D68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94C14(uint64_t a1)
{
  v2 = sub_225BB2D68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94C50(uint64_t a1)
{
  v2 = sub_225BB2DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94C8C(uint64_t a1)
{
  v2 = sub_225BB2DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94CC8(uint64_t a1)
{
  v2 = sub_225BB24E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94D04(uint64_t a1)
{
  v2 = sub_225BB24E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94D40(uint64_t a1)
{
  v2 = sub_225BB2534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94D7C(uint64_t a1)
{
  v2 = sub_225BB2534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94DB8(uint64_t a1)
{
  v2 = sub_225BB2B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94DF4(uint64_t a1)
{
  v2 = sub_225BB2B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94E30(uint64_t a1)
{
  v2 = sub_225BB2BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94E6C(uint64_t a1)
{
  v2 = sub_225BB2BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94EA8(uint64_t a1)
{
  v2 = sub_225BB2C18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94EE4(uint64_t a1)
{
  v2 = sub_225BB2C18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94F20(uint64_t a1)
{
  v2 = sub_225BB2C6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94F5C(uint64_t a1)
{
  v2 = sub_225BB2C6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94F98(uint64_t a1)
{
  v2 = sub_225BB26D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94FD4(uint64_t a1)
{
  v2 = sub_225BB26D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95010(uint64_t a1)
{
  v2 = sub_225BB272C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9504C(uint64_t a1)
{
  v2 = sub_225BB272C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95088(uint64_t a1)
{
  v2 = sub_225BB1EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B950C4(uint64_t a1)
{
  v2 = sub_225BB1EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95100(uint64_t a1)
{
  v2 = sub_225BB2828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9513C(uint64_t a1)
{
  v2 = sub_225BB2828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95178(uint64_t a1)
{
  v2 = sub_225BB287C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B951B4(uint64_t a1)
{
  v2 = sub_225BB287C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B951F0(uint64_t a1)
{
  v2 = sub_225BB2AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9522C(uint64_t a1)
{
  v2 = sub_225BB2AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95268(uint64_t a1)
{
  v2 = sub_225BB2B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B952A4(uint64_t a1)
{
  v2 = sub_225BB2B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B952E0(uint64_t a1)
{
  v2 = sub_225BB2A20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9531C(uint64_t a1)
{
  v2 = sub_225BB2A20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95358(uint64_t a1)
{
  v2 = sub_225BB2A74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95394(uint64_t a1)
{
  v2 = sub_225BB2A74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B953D0(uint64_t a1)
{
  v2 = sub_225BB2978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9540C(uint64_t a1)
{
  v2 = sub_225BB2978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95448(uint64_t a1)
{
  v2 = sub_225BB29CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95484(uint64_t a1)
{
  v2 = sub_225BB29CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B954C0(uint64_t a1)
{
  v2 = sub_225BB2630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B954FC(uint64_t a1)
{
  v2 = sub_225BB2630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95538(uint64_t a1)
{
  v2 = sub_225BB2684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95574(uint64_t a1)
{
  v2 = sub_225BB2684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B955B0(uint64_t a1)
{
  v2 = sub_225BB1E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B955EC(uint64_t a1)
{
  v2 = sub_225BB1E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95628(uint64_t a1)
{
  v2 = sub_225BB1F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95664(uint64_t a1)
{
  v2 = sub_225BB1F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B956A0(uint64_t a1)
{
  v2 = sub_225BB2E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B956DC(uint64_t a1)
{
  v2 = sub_225BB2E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95718(uint64_t a1)
{
  v2 = sub_225BB2E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95754(uint64_t a1)
{
  v2 = sub_225BB2E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95790(uint64_t a1)
{
  v2 = sub_225BB2588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B957CC(uint64_t a1)
{
  v2 = sub_225BB2588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95808(uint64_t a1)
{
  v2 = sub_225BB25DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95844(uint64_t a1)
{
  v2 = sub_225BB25DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95880(uint64_t a1)
{
  v2 = sub_225BB209C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B958BC(uint64_t a1)
{
  v2 = sub_225BB209C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B958F8(uint64_t a1)
{
  v2 = sub_225BB20F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95934(uint64_t a1)
{
  v2 = sub_225BB20F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95970(uint64_t a1)
{
  v2 = sub_225BB1C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B959AC(uint64_t a1)
{
  v2 = sub_225BB1C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B959E8(uint64_t a1)
{
  v2 = sub_225BB1FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95A24(uint64_t a1)
{
  v2 = sub_225BB1FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95A60(uint64_t a1)
{
  v2 = sub_225BB2144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95A9C(uint64_t a1)
{
  v2 = sub_225BB2144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95AD8(uint64_t a1)
{
  v2 = sub_225BB2198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95B14(uint64_t a1)
{
  v2 = sub_225BB2198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95B50(uint64_t a1)
{
  v2 = sub_225BB2F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95B8C(uint64_t a1)
{
  v2 = sub_225BB2F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95BC8(uint64_t a1)
{
  v2 = sub_225BB1CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95C04(uint64_t a1)
{
  v2 = sub_225BB1CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95C40(uint64_t a1)
{
  v2 = sub_225BB1FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95C7C(uint64_t a1)
{
  v2 = sub_225BB1FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95CB8(uint64_t a1)
{
  v2 = sub_225BB2048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95CF4(uint64_t a1)
{
  v2 = sub_225BB2048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95D30(uint64_t a1)
{
  v2 = sub_225BB1EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95D6C(uint64_t a1)
{
  v2 = sub_225BB1EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95DA8(uint64_t a1)
{
  v2 = sub_225BB2780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95DE4(uint64_t a1)
{
  v2 = sub_225BB2780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95E20(uint64_t a1)
{
  v2 = sub_225BB27D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95E5C(uint64_t a1)
{
  v2 = sub_225BB27D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95E98(uint64_t a1)
{
  v2 = sub_225BB21EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95ED4(uint64_t a1)
{
  v2 = sub_225BB21EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95F10(uint64_t a1)
{
  v2 = sub_225BB22E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95F4C(uint64_t a1)
{
  v2 = sub_225BB22E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95F88(uint64_t a1)
{
  v2 = sub_225BB2294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95FC4(uint64_t a1)
{
  v2 = sub_225BB2294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B96000(uint64_t a1)
{
  v2 = sub_225BB2240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9603C(uint64_t a1)
{
  v2 = sub_225BB2240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B96078(uint64_t a1)
{
  v2 = sub_225BB1D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B960B4(uint64_t a1)
{
  v2 = sub_225BB1D54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B960F0(uint64_t a1)
{
  v2 = sub_225BB1DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9612C(uint64_t a1)
{
  v2 = sub_225BB1DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IQACode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E7D8);
  v384 = *(v3 - 8);
  v385 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v383 = &v207 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E7E0);
  v381 = *(v6 - 8);
  v382 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v380 = &v207 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E7E8);
  v378 = *(v9 - 8);
  v379 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v377 = &v207 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E7F0);
  v375 = *(v12 - 8);
  v376 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v374 = &v207 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E7F8);
  v372 = *(v15 - 8);
  v373 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v371 = &v207 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E800);
  v369 = *(v18 - 8);
  v370 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v368 = &v207 - v20;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E808);
  v366 = *(v367 - 8);
  MEMORY[0x28223BE20](v367, v21);
  v365 = &v207 - v22;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E810);
  v363 = *(v364 - 8);
  MEMORY[0x28223BE20](v364, v23);
  v362 = &v207 - v24;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E818);
  v360 = *(v361 - 8);
  MEMORY[0x28223BE20](v361, v25);
  v359 = &v207 - v26;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E820);
  v357 = *(v358 - 8);
  MEMORY[0x28223BE20](v358, v27);
  v356 = &v207 - v28;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E828);
  v354 = *(v355 - 8);
  MEMORY[0x28223BE20](v355, v29);
  v353 = &v207 - v30;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E830);
  v351 = *(v352 - 8);
  MEMORY[0x28223BE20](v352, v31);
  v350 = &v207 - v32;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E838);
  v348 = *(v349 - 8);
  MEMORY[0x28223BE20](v349, v33);
  v347 = &v207 - v34;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E840);
  v345 = *(v346 - 8);
  MEMORY[0x28223BE20](v346, v35);
  v344 = &v207 - v36;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E848);
  v342 = *(v343 - 8);
  MEMORY[0x28223BE20](v343, v37);
  v341 = &v207 - v38;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E850);
  v339 = *(v340 - 8);
  MEMORY[0x28223BE20](v340, v39);
  v338 = &v207 - v40;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E858);
  v336 = *(v337 - 8);
  MEMORY[0x28223BE20](v337, v41);
  v335 = &v207 - v42;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E860);
  v333 = *(v334 - 8);
  MEMORY[0x28223BE20](v334, v43);
  v332 = &v207 - v44;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E868);
  v330 = *(v331 - 8);
  MEMORY[0x28223BE20](v331, v45);
  v329 = &v207 - v46;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E870);
  v327 = *(v328 - 8);
  MEMORY[0x28223BE20](v328, v47);
  v326 = &v207 - v48;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E878);
  v324 = *(v325 - 8);
  MEMORY[0x28223BE20](v325, v49);
  v323 = &v207 - v50;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E880);
  v321 = *(v322 - 8);
  MEMORY[0x28223BE20](v322, v51);
  v320 = &v207 - v52;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E888);
  v318 = *(v319 - 8);
  MEMORY[0x28223BE20](v319, v53);
  v317 = &v207 - v54;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E890);
  v315 = *(v316 - 8);
  MEMORY[0x28223BE20](v316, v55);
  v314 = &v207 - v56;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E898);
  v312 = *(v313 - 8);
  MEMORY[0x28223BE20](v313, v57);
  v311 = &v207 - v58;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8A0);
  v309 = *(v310 - 8);
  MEMORY[0x28223BE20](v310, v59);
  v308 = &v207 - v60;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8A8);
  v306 = *(v307 - 8);
  MEMORY[0x28223BE20](v307, v61);
  v305 = &v207 - v62;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8B0);
  v303 = *(v304 - 8);
  MEMORY[0x28223BE20](v304, v63);
  v302 = &v207 - v64;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8B8);
  v300 = *(v301 - 8);
  MEMORY[0x28223BE20](v301, v65);
  v299 = &v207 - v66;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8C0);
  v297 = *(v298 - 8);
  MEMORY[0x28223BE20](v298, v67);
  v296 = &v207 - v68;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8C8);
  v294 = *(v295 - 8);
  MEMORY[0x28223BE20](v295, v69);
  v293 = &v207 - v70;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8D0);
  v291 = *(v292 - 8);
  MEMORY[0x28223BE20](v292, v71);
  v290 = &v207 - v72;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8D8);
  v288 = *(v289 - 8);
  MEMORY[0x28223BE20](v289, v73);
  v287 = &v207 - v74;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8E0);
  v285 = *(v286 - 8);
  MEMORY[0x28223BE20](v286, v75);
  v284 = &v207 - v76;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8E8);
  v282 = *(v283 - 8);
  MEMORY[0x28223BE20](v283, v77);
  v281 = &v207 - v78;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8F0);
  v279 = *(v280 - 8);
  MEMORY[0x28223BE20](v280, v79);
  v278 = &v207 - v80;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8F8);
  v276 = *(v277 - 8);
  MEMORY[0x28223BE20](v277, v81);
  v275 = &v207 - v82;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E900);
  v273 = *(v274 - 8);
  MEMORY[0x28223BE20](v274, v83);
  v272 = &v207 - v84;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E908);
  v270 = *(v271 - 8);
  MEMORY[0x28223BE20](v271, v85);
  v269 = &v207 - v86;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E910);
  v267 = *(v268 - 8);
  MEMORY[0x28223BE20](v268, v87);
  v266 = &v207 - v88;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E918);
  v264 = *(v265 - 8);
  MEMORY[0x28223BE20](v265, v89);
  v263 = &v207 - v90;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E920);
  v261 = *(v262 - 8);
  MEMORY[0x28223BE20](v262, v91);
  v260 = &v207 - v92;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E928);
  v258 = *(v259 - 8);
  MEMORY[0x28223BE20](v259, v93);
  v257 = &v207 - v94;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E930);
  v255 = *(v256 - 8);
  MEMORY[0x28223BE20](v256, v95);
  v254 = &v207 - v96;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E938);
  v252 = *(v253 - 8);
  MEMORY[0x28223BE20](v253, v97);
  v251 = &v207 - v98;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E940);
  v249 = *(v250 - 8);
  MEMORY[0x28223BE20](v250, v99);
  v248 = &v207 - v100;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E948);
  v246 = *(v247 - 8);
  MEMORY[0x28223BE20](v247, v101);
  v245 = &v207 - v102;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E950);
  v243 = *(v244 - 8);
  MEMORY[0x28223BE20](v244, v103);
  v242 = &v207 - v104;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E958);
  v240 = *(v241 - 8);
  MEMORY[0x28223BE20](v241, v105);
  v239 = &v207 - v106;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E960);
  v237 = *(v238 - 8);
  MEMORY[0x28223BE20](v238, v107);
  v236 = &v207 - v108;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E968);
  v234 = *(v235 - 8);
  MEMORY[0x28223BE20](v235, v109);
  v233 = &v207 - v110;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E970);
  v231 = *(v232 - 8);
  MEMORY[0x28223BE20](v232, v111);
  v230 = &v207 - v112;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E978);
  v228 = *(v229 - 8);
  MEMORY[0x28223BE20](v229, v113);
  v227 = &v207 - v114;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E980);
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226, v115);
  v224 = &v207 - v116;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E988);
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223, v117);
  v221 = &v207 - v118;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E990);
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220, v119);
  v218 = &v207 - v120;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E998);
  v216 = *(v217 - 8);
  MEMORY[0x28223BE20](v217, v121);
  v215 = &v207 - v122;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E9A0);
  v213 = *(v214 - 8);
  MEMORY[0x28223BE20](v214, v123);
  v212 = &v207 - v124;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E9A8);
  v210 = *(v211 - 8);
  MEMORY[0x28223BE20](v211, v125);
  v209 = &v207 - v126;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E9B0);
  v208 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v128);
  v130 = &v207 - v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E9B8);
  v132 = *(v131 - 8);
  v387 = v131;
  v388 = v132;
  MEMORY[0x28223BE20](v131, v133);
  v135 = &v207 - v134;
  v136 = *v1;
  v137 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BB1BB0();
  v386 = v135;
  sub_225CCFCE4();
  if (!v137)
  {
    v390 = 58;
    sub_225BB1C58();
    v138 = v380;
    v140 = v386;
    v139 = v387;
    sub_225CCF724();
    v141 = v382;
    sub_225CCF784();
    v142 = v381;
    goto LABEL_5;
  }

  if (v137 == 1)
  {
    v390 = 59;
    sub_225BB1C04();
    v138 = v383;
    v140 = v386;
    v139 = v387;
    sub_225CCF724();
    v141 = v385;
    sub_225CCF784();
    v142 = v384;
LABEL_5:
    (*(v142 + 8))(v138, v141);
    return (*(v388 + 8))(v140, v139);
  }

  switch(v136)
  {
    case 1:
      v390 = 1;
      sub_225BB2F0C();
      v180 = v209;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v210 + 8);
      v150 = v180;
      v151 = &v243;
      goto LABEL_66;
    case 2:
      v390 = 2;
      sub_225BB2EB8();
      v176 = v212;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v213 + 8);
      v150 = v176;
      v151 = &v246;
      goto LABEL_66;
    case 3:
      v390 = 3;
      sub_225BB2E64();
      v178 = v215;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v216 + 8);
      v150 = v178;
      v151 = &v249;
      goto LABEL_66;
    case 4:
      v390 = 4;
      sub_225BB2E10();
      v170 = v218;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v219 + 8);
      v150 = v170;
      v151 = &v252;
      goto LABEL_66;
    case 5:
      v390 = 5;
      sub_225BB2DBC();
      v185 = v221;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v222 + 8);
      v150 = v185;
      v151 = &v255;
      goto LABEL_66;
    case 6:
      v390 = 6;
      sub_225BB2D68();
      v188 = v224;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v225 + 8);
      v150 = v188;
      v151 = &v258;
      goto LABEL_66;
    case 7:
      v390 = 7;
      sub_225BB2D14();
      v179 = v227;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v228 + 8);
      v150 = v179;
      v151 = &v261;
      goto LABEL_66;
    case 8:
      v390 = 8;
      sub_225BB2CC0();
      v191 = v230;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v231 + 8);
      v150 = v191;
      v151 = &v264;
      goto LABEL_66;
    case 9:
      v390 = 9;
      sub_225BB2C6C();
      v173 = v233;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v234 + 8);
      v150 = v173;
      v151 = &v267;
      goto LABEL_66;
    case 10:
      v390 = 10;
      sub_225BB2C18();
      v190 = v236;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v237 + 8);
      v150 = v190;
      v151 = &v270;
      goto LABEL_66;
    case 11:
      v390 = 11;
      sub_225BB2BC4();
      v168 = v239;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v240 + 8);
      v150 = v168;
      v151 = &v273;
      goto LABEL_66;
    case 12:
      v390 = 12;
      sub_225BB2B70();
      v172 = v242;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v243 + 8);
      v150 = v172;
      v151 = &v276;
      goto LABEL_66;
    case 13:
      v390 = 13;
      sub_225BB2B1C();
      v187 = v245;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v246 + 8);
      v150 = v187;
      v151 = &v279;
      goto LABEL_66;
    case 14:
      v390 = 14;
      sub_225BB2AC8();
      v165 = v248;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v249 + 8);
      v150 = v165;
      v151 = &v282;
      goto LABEL_66;
    case 15:
      v390 = 15;
      sub_225BB2A74();
      v177 = v251;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v252 + 8);
      v150 = v177;
      v151 = &v285;
      goto LABEL_66;
    case 16:
      v390 = 16;
      sub_225BB2A20();
      v163 = v254;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v255 + 8);
      v150 = v163;
      v151 = &v288;
      goto LABEL_66;
    case 17:
      v390 = 17;
      sub_225BB29CC();
      v182 = v257;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v258 + 8);
      v150 = v182;
      v151 = &v291;
      goto LABEL_66;
    case 18:
      v390 = 18;
      sub_225BB2978();
      v189 = v260;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v261 + 8);
      v150 = v189;
      v151 = &v294;
      goto LABEL_66;
    case 19:
      v390 = 19;
      sub_225BB2924();
      v197 = v263;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v264 + 8);
      v150 = v197;
      v151 = &v297;
      goto LABEL_66;
    case 20:
      v390 = 20;
      sub_225BB28D0();
      v184 = v266;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v267 + 8);
      v150 = v184;
      v151 = &v300;
      goto LABEL_66;
    case 21:
      v390 = 21;
      sub_225BB287C();
      v186 = v269;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v270 + 8);
      v150 = v186;
      v151 = &v303;
      goto LABEL_66;
    case 22:
      v390 = 22;
      sub_225BB2828();
      v195 = v272;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v273 + 8);
      v150 = v195;
      v151 = &v306;
      goto LABEL_66;
    case 23:
      v390 = 23;
      sub_225BB27D4();
      v199 = v275;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v276 + 8);
      v150 = v199;
      v151 = &v309;
      goto LABEL_66;
    case 24:
      v390 = 24;
      sub_225BB2780();
      v175 = v278;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v279 + 8);
      v150 = v175;
      v151 = &v312;
      goto LABEL_66;
    case 25:
      v390 = 25;
      sub_225BB272C();
      v174 = v281;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v282 + 8);
      v150 = v174;
      v151 = &v315;
      goto LABEL_66;
    case 26:
      v390 = 26;
      sub_225BB26D8();
      v203 = v284;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v285 + 8);
      v150 = v203;
      v151 = &v318;
      goto LABEL_66;
    case 27:
      v390 = 27;
      sub_225BB2684();
      v161 = v287;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v288 + 8);
      v150 = v161;
      v151 = &v321;
      goto LABEL_66;
    case 28:
      v390 = 28;
      sub_225BB2630();
      v200 = v290;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v291 + 8);
      v150 = v200;
      v151 = &v324;
      goto LABEL_66;
    case 29:
      v390 = 29;
      sub_225BB25DC();
      v201 = v293;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v294 + 8);
      v150 = v201;
      v151 = &v327;
      goto LABEL_66;
    case 30:
      v390 = 30;
      sub_225BB2588();
      v192 = v296;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v297 + 8);
      v150 = v192;
      v151 = &v330;
      goto LABEL_66;
    case 31:
      v390 = 31;
      sub_225BB2534();
      v181 = v299;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v300 + 8);
      v150 = v181;
      v151 = &v333;
      goto LABEL_66;
    case 32:
      v390 = 32;
      sub_225BB24E0();
      v193 = v302;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v303 + 8);
      v150 = v193;
      v151 = &v336;
      goto LABEL_66;
    case 33:
      v390 = 33;
      sub_225BB248C();
      v166 = v305;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v306 + 8);
      v150 = v166;
      v151 = &v339;
      goto LABEL_66;
    case 34:
      v390 = 34;
      sub_225BB2438();
      v162 = v308;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v309 + 8);
      v150 = v162;
      v151 = &v342;
      goto LABEL_66;
    case 35:
      v390 = 35;
      sub_225BB23E4();
      v159 = v311;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v312 + 8);
      v150 = v159;
      v151 = &v345;
      goto LABEL_66;
    case 36:
      v390 = 36;
      sub_225BB2390();
      v160 = v314;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v315 + 8);
      v150 = v160;
      v151 = &v348;
      goto LABEL_66;
    case 37:
      v390 = 37;
      sub_225BB233C();
      v153 = v317;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v318 + 8);
      v150 = v153;
      v151 = &v351;
      goto LABEL_66;
    case 38:
      v390 = 38;
      sub_225BB22E8();
      v202 = v320;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v321 + 8);
      v150 = v202;
      v151 = &v354;
      goto LABEL_66;
    case 39:
      v390 = 39;
      sub_225BB2294();
      v196 = v323;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v324 + 8);
      v150 = v196;
      v151 = &v357;
      goto LABEL_66;
    case 40:
      v390 = 40;
      sub_225BB2240();
      v171 = v326;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v327 + 8);
      v150 = v171;
      v151 = &v360;
      goto LABEL_66;
    case 41:
      v390 = 41;
      sub_225BB21EC();
      v183 = v329;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v330 + 8);
      v150 = v183;
      v151 = &v363;
      goto LABEL_66;
    case 42:
      v390 = 42;
      sub_225BB2198();
      v198 = v332;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v333 + 8);
      v150 = v198;
      v151 = &v366;
      goto LABEL_66;
    case 43:
      v390 = 43;
      sub_225BB2144();
      v152 = v335;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v336 + 8);
      v150 = v152;
      v151 = &v369;
      goto LABEL_66;
    case 44:
      v390 = 44;
      sub_225BB20F0();
      v164 = v338;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v339 + 8);
      v150 = v164;
      v151 = &v372;
      goto LABEL_66;
    case 45:
      v390 = 45;
      sub_225BB209C();
      v194 = v341;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v342 + 8);
      v150 = v194;
      v151 = &v375;
      goto LABEL_66;
    case 46:
      v390 = 46;
      sub_225BB2048();
      v205 = v344;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v345 + 8);
      v150 = v205;
      v151 = &v378;
      goto LABEL_66;
    case 47:
      v390 = 47;
      sub_225BB1FF4();
      v155 = v347;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v348 + 8);
      v150 = v155;
      v151 = &v381;
      goto LABEL_66;
    case 48:
      v390 = 48;
      sub_225BB1FA0();
      v167 = v350;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v351 + 8);
      v150 = v167;
      v151 = &v384;
      goto LABEL_66;
    case 49:
      v390 = 49;
      sub_225BB1F4C();
      v169 = v353;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v354 + 8);
      v150 = v169;
      v151 = &v387;
      goto LABEL_66;
    case 50:
      v390 = 50;
      sub_225BB1EF8();
      v146 = v356;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v357 + 8);
      v150 = v146;
      v151 = &v389;
      goto LABEL_66;
    case 51:
      v390 = 51;
      sub_225BB1EA4();
      v206 = v359;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v360 + 8);
      v150 = v206;
      v151 = &v391;
      goto LABEL_66;
    case 52:
      v390 = 52;
      sub_225BB1E50();
      v204 = v362;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v363 + 8);
      v150 = v204;
      v151 = &v392;
      goto LABEL_66;
    case 53:
      v390 = 53;
      sub_225BB1DFC();
      v154 = v365;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v149 = *(v366 + 8);
      v150 = v154;
      v151 = &v393;
LABEL_66:
      v149(v150, *(v151 - 32));
      goto LABEL_67;
    case 54:
      v390 = 54;
      sub_225BB1DA8();
      v156 = v368;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v158 = v369;
      v157 = v370;
      goto LABEL_62;
    case 55:
      v390 = 55;
      sub_225BB1D54();
      v156 = v371;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v158 = v372;
      v157 = v373;
      goto LABEL_62;
    case 56:
      v390 = 56;
      sub_225BB1D00();
      v156 = v374;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v158 = v375;
      v157 = v376;
      goto LABEL_62;
    case 57:
      v390 = 57;
      sub_225BB1CAC();
      v156 = v377;
      v148 = v386;
      v147 = v387;
      sub_225CCF724();
      v158 = v378;
      v157 = v379;
LABEL_62:
      (*(v158 + 8))(v156, v157);
LABEL_67:
      result = (*(v388 + 8))(v148, v147);
      break;
    default:
      v390 = 0;
      sub_225BB2F60();
      v144 = v386;
      v145 = v387;
      sub_225CCF724();
      (*(v208 + 8))(v130, v127);
      result = (*(v388 + 8))(v144, v145);
      break;
  }

  return result;
}

uint64_t IQACode.hash(into:)()
{
  if (!*(v0 + 16))
  {
    v1 = 58;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v1 = 59;
LABEL_5:
    MEMORY[0x22AA6E420](v1);

    return sub_225CCE5B4();
  }

  switch(*v0)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 0xALL:
      v3 = 10;
      break;
    case 0xBLL:
      v3 = 11;
      break;
    case 0xCLL:
      v3 = 12;
      break;
    case 0xDLL:
      v3 = 13;
      break;
    case 0xELL:
      v3 = 14;
      break;
    case 0xFLL:
      v3 = 15;
      break;
    case 0x10:
      v3 = 16;
      break;
    case 0x11:
      v3 = 17;
      break;
    case 0x12:
      v3 = 18;
      break;
    case 0x13:
      v3 = 19;
      break;
    case 0x14:
      v3 = 20;
      break;
    case 0x15:
      v3 = 21;
      break;
    case 0x16:
      v3 = 22;
      break;
    case 0x17:
      v3 = 23;
      break;
    case 0x18:
      v3 = 24;
      break;
    case 0x19:
      v3 = 25;
      break;
    case 0x1ALL:
      v3 = 26;
      break;
    case 0x1BLL:
      v3 = 27;
      break;
    case 0x1CLL:
      v3 = 28;
      break;
    case 0x1DLL:
      v3 = 29;
      break;
    case 0x1ELL:
      v3 = 30;
      break;
    case 0x1FLL:
      v3 = 31;
      break;
    case 0x20:
      v3 = 32;
      break;
    case 0x21:
      v3 = 33;
      break;
    case 0x22:
      v3 = 34;
      break;
    case 0x23:
      v3 = 35;
      break;
    case 0x24:
      v3 = 36;
      break;
    case 0x25:
      v3 = 37;
      break;
    case 0x26:
      v3 = 38;
      break;
    case 0x27:
      v3 = 39;
      break;
    case 0x28:
      v3 = 40;
      break;
    case 0x29:
      v3 = 41;
      break;
    case 0x2ALL:
      v3 = 42;
      break;
    case 0x2BLL:
      v3 = 43;
      break;
    case 0x2CLL:
      v3 = 44;
      break;
    case 0x2DLL:
      v3 = 45;
      break;
    case 0x2ELL:
      v3 = 46;
      break;
    case 0x2FLL:
      v3 = 47;
      break;
    case 0x30:
      v3 = 48;
      break;
    case 0x31:
      v3 = 49;
      break;
    case 0x32:
      v3 = 50;
      break;
    case 0x33:
      v3 = 51;
      break;
    case 0x34:
      v3 = 52;
      break;
    case 0x35:
      v3 = 53;
      break;
    case 0x36:
      v3 = 54;
      break;
    case 0x37:
      v3 = 55;
      break;
    case 0x38:
      v3 = 56;
      break;
    case 0x39:
      v3 = 57;
      break;
    default:
      v3 = 0;
      break;
  }

  return MEMORY[0x22AA6E420](v3);
}

uint64_t IQACode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v456 = a2;
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBA8);
  v396 = *(v455 - 8);
  MEMORY[0x28223BE20](v455, v3);
  v451 = &v274 - v4;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBB0);
  v394 = *(v395 - 8);
  MEMORY[0x28223BE20](v395, v5);
  v450 = &v274 - v6;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBB8);
  v392 = *(v393 - 8);
  MEMORY[0x28223BE20](v393, v7);
  v449 = &v274 - v8;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBC0);
  v390 = *(v391 - 8);
  MEMORY[0x28223BE20](v391, v9);
  v448 = &v274 - v10;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBC8);
  v388 = *(v389 - 8);
  MEMORY[0x28223BE20](v389, v11);
  v447 = &v274 - v12;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBD0);
  v386 = *(v387 - 8);
  MEMORY[0x28223BE20](v387, v13);
  v446 = &v274 - v14;
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBD8);
  v384 = *(v385 - 8);
  MEMORY[0x28223BE20](v385, v15);
  v445 = &v274 - v16;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBE0);
  v382 = *(v383 - 8);
  MEMORY[0x28223BE20](v383, v17);
  v444 = &v274 - v18;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBE8);
  v380 = *(v381 - 8);
  MEMORY[0x28223BE20](v381, v19);
  v443 = &v274 - v20;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBF0);
  v378 = *(v379 - 8);
  MEMORY[0x28223BE20](v379, v21);
  v442 = &v274 - v22;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBF8);
  v376 = *(v377 - 8);
  MEMORY[0x28223BE20](v377, v23);
  v441 = &v274 - v24;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC00);
  v374 = *(v375 - 8);
  MEMORY[0x28223BE20](v375, v25);
  v440 = &v274 - v26;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC08);
  v372 = *(v373 - 8);
  MEMORY[0x28223BE20](v373, v27);
  v439 = &v274 - v28;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC10);
  v370 = *(v371 - 8);
  MEMORY[0x28223BE20](v371, v29);
  v438 = &v274 - v30;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC18);
  v368 = *(v369 - 8);
  MEMORY[0x28223BE20](v369, v31);
  v437 = &v274 - v32;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC20);
  v366 = *(v367 - 8);
  MEMORY[0x28223BE20](v367, v33);
  v436 = &v274 - v34;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC28);
  v364 = *(v365 - 8);
  MEMORY[0x28223BE20](v365, v35);
  v435 = &v274 - v36;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC30);
  v362 = *(v363 - 8);
  MEMORY[0x28223BE20](v363, v37);
  v434 = &v274 - v38;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC38);
  v360 = *(v361 - 8);
  MEMORY[0x28223BE20](v361, v39);
  v433 = &v274 - v40;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC40);
  v358 = *(v359 - 8);
  MEMORY[0x28223BE20](v359, v41);
  v432 = &v274 - v42;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC48);
  v356 = *(v357 - 8);
  MEMORY[0x28223BE20](v357, v43);
  v431 = &v274 - v44;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC50);
  v354 = *(v355 - 8);
  MEMORY[0x28223BE20](v355, v45);
  v430 = &v274 - v46;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC58);
  v352 = *(v353 - 8);
  MEMORY[0x28223BE20](v353, v47);
  v429 = &v274 - v48;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC60);
  v350 = *(v351 - 8);
  MEMORY[0x28223BE20](v351, v49);
  v428 = &v274 - v50;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC68);
  v348 = *(v349 - 8);
  MEMORY[0x28223BE20](v349, v51);
  v427 = &v274 - v52;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC70);
  v346 = *(v347 - 8);
  MEMORY[0x28223BE20](v347, v53);
  v426 = &v274 - v54;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC78);
  v344 = *(v345 - 8);
  MEMORY[0x28223BE20](v345, v55);
  v425 = &v274 - v56;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC80);
  v342 = *(v343 - 8);
  MEMORY[0x28223BE20](v343, v57);
  v424 = &v274 - v58;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC88);
  v340 = *(v341 - 8);
  MEMORY[0x28223BE20](v341, v59);
  v423 = &v274 - v60;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC90);
  v338 = *(v339 - 8);
  MEMORY[0x28223BE20](v339, v61);
  v422 = &v274 - v62;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC98);
  v336 = *(v337 - 8);
  MEMORY[0x28223BE20](v337, v63);
  v421 = &v274 - v64;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECA0);
  v334 = *(v335 - 8);
  MEMORY[0x28223BE20](v335, v65);
  v420 = &v274 - v66;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECA8);
  v332 = *(v333 - 8);
  MEMORY[0x28223BE20](v333, v67);
  v419 = &v274 - v68;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECB0);
  v330 = *(v331 - 8);
  MEMORY[0x28223BE20](v331, v69);
  v418 = &v274 - v70;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECB8);
  v328 = *(v329 - 8);
  MEMORY[0x28223BE20](v329, v71);
  v417 = &v274 - v72;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECC0);
  v326 = *(v327 - 8);
  MEMORY[0x28223BE20](v327, v73);
  v416 = &v274 - v74;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECC8);
  v324 = *(v325 - 8);
  MEMORY[0x28223BE20](v325, v75);
  v415 = &v274 - v76;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECD0);
  v322 = *(v323 - 8);
  MEMORY[0x28223BE20](v323, v77);
  v414 = &v274 - v78;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECD8);
  v320 = *(v321 - 8);
  MEMORY[0x28223BE20](v321, v79);
  v413 = &v274 - v80;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECE0);
  v318 = *(v319 - 8);
  MEMORY[0x28223BE20](v319, v81);
  v412 = &v274 - v82;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECE8);
  v316 = *(v317 - 8);
  MEMORY[0x28223BE20](v317, v83);
  v411 = &v274 - v84;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECF0);
  v314 = *(v315 - 8);
  MEMORY[0x28223BE20](v315, v85);
  v410 = &v274 - v86;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECF8);
  v312 = *(v313 - 8);
  MEMORY[0x28223BE20](v313, v87);
  v409 = &v274 - v88;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED00);
  v310 = *(v311 - 8);
  MEMORY[0x28223BE20](v311, v89);
  v408 = &v274 - v90;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED08);
  v308 = *(v309 - 8);
  MEMORY[0x28223BE20](v309, v91);
  v407 = &v274 - v92;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED10);
  v306 = *(v307 - 8);
  MEMORY[0x28223BE20](v307, v93);
  v406 = &v274 - v94;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED18);
  v304 = *(v305 - 8);
  MEMORY[0x28223BE20](v305, v95);
  v403 = &v274 - v96;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED20);
  v302 = *(v303 - 8);
  MEMORY[0x28223BE20](v303, v97);
  v454 = &v274 - v98;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED28);
  v300 = *(v301 - 8);
  MEMORY[0x28223BE20](v301, v99);
  v453 = &v274 - v100;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED30);
  v298 = *(v299 - 8);
  MEMORY[0x28223BE20](v299, v101);
  v405 = &v274 - v102;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED38);
  v296 = *(v297 - 8);
  MEMORY[0x28223BE20](v297, v103);
  v404 = &v274 - v104;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED40);
  v294 = *(v295 - 8);
  MEMORY[0x28223BE20](v295, v105);
  v452 = &v274 - v106;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED48);
  v292 = *(v293 - 8);
  MEMORY[0x28223BE20](v293, v107);
  v402 = &v274 - v108;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED50);
  v290 = *(v291 - 8);
  MEMORY[0x28223BE20](v291, v109);
  v401 = &v274 - v110;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED58);
  v288 = *(v289 - 8);
  MEMORY[0x28223BE20](v289, v111);
  v400 = &v274 - v112;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED60);
  v286 = *(v287 - 8);
  MEMORY[0x28223BE20](v287, v113);
  v399 = &v274 - v114;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED68);
  v284 = *(v285 - 8);
  MEMORY[0x28223BE20](v285, v115);
  v398 = &v274 - v116;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED70);
  v282 = *(v283 - 8);
  MEMORY[0x28223BE20](v283, v117);
  v397 = &v274 - v118;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED78);
  v280 = *(v281 - 8);
  MEMORY[0x28223BE20](v281, v119);
  v121 = &v274 - v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED80);
  v279 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v123);
  v125 = &v274 - v124;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED88);
  v127 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v128);
  v130 = &v274 - v129;
  v131 = a1[3];
  v457 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v131);
  sub_225BB1BB0();
  v132 = v458;
  sub_225CCFCA4();
  if (v132)
  {
LABEL_8:
    v148 = v457;
    return __swift_destroy_boxed_opaque_existential_0(v148);
  }

  v276 = v125;
  v275 = v122;
  v277 = v121;
  v133 = v452;
  v134 = v453;
  v135 = v454;
  v278 = 0;
  v137 = v455;
  v136 = v456;
  v458 = v127;
  v138 = sub_225CCF6F4();
  v139 = (2 * *(v138 + 16)) | 1;
  v459 = v138;
  v460 = v138 + 32;
  v461 = 0;
  v462 = v139;
  v140 = sub_225B76738();
  if (v461 != v462 >> 1)
  {
LABEL_6:
    v145 = sub_225CCF2D4();
    swift_allocError();
    v147 = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D741FA0);
    *v147 = &type metadata for IQACode;
    sub_225CCF614();
    sub_225CCF294();
    (*(*(v145 - 8) + 104))(v147, *MEMORY[0x277D84160], v145);
    swift_willThrow();
LABEL_7:
    (*(v458 + 8))(v130, v126);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v140)
  {
    case 0:
      v463 = 0;
      sub_225BB2F60();
      v141 = v276;
      v142 = v278;
      sub_225CCF604();
      if (v142)
      {
        goto LABEL_7;
      }

      (*(v279 + 8))(v141, v275);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v143 = 0;
      v144 = 0;
      goto LABEL_60;
    case 1:
      v463 = 1;
      sub_225BB2F0C();
      v209 = v277;
      v210 = v278;
      sub_225CCF604();
      if (v210)
      {
        goto LABEL_7;
      }

      (*(v280 + 8))(v209, v281);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 1;
      v148 = v457;
      goto LABEL_130;
    case 2:
      v463 = 2;
      sub_225BB2EB8();
      v201 = v397;
      v202 = v278;
      sub_225CCF604();
      if (v202)
      {
        goto LABEL_7;
      }

      (*(v282 + 8))(v201, v283);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v143 = 2;
LABEL_60:
      v152 = 2;
      v148 = v457;
      goto LABEL_130;
    case 3:
      v463 = 3;
      sub_225BB2E64();
      v205 = v398;
      v206 = v278;
      sub_225CCF604();
      if (v206)
      {
        goto LABEL_7;
      }

      (*(v284 + 8))(v205, v285);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 3;
      v148 = v457;
      goto LABEL_130;
    case 4:
      v463 = 4;
      sub_225BB2E10();
      v190 = v399;
      v191 = v278;
      sub_225CCF604();
      if (v191)
      {
        goto LABEL_7;
      }

      (*(v286 + 8))(v190, v287);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 4;
      v148 = v457;
      goto LABEL_130;
    case 5:
      v463 = 5;
      sub_225BB2DBC();
      v219 = v400;
      v220 = v278;
      sub_225CCF604();
      if (v220)
      {
        goto LABEL_7;
      }

      (*(v288 + 8))(v219, v289);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 5;
      v148 = v457;
      goto LABEL_130;
    case 6:
      v463 = 6;
      sub_225BB2D68();
      v225 = v401;
      v226 = v278;
      sub_225CCF604();
      if (v226)
      {
        goto LABEL_7;
      }

      (*(v290 + 8))(v225, v291);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 6;
      v148 = v457;
      goto LABEL_130;
    case 7:
      v463 = 7;
      sub_225BB2D14();
      v207 = v402;
      v208 = v278;
      sub_225CCF604();
      if (v208)
      {
        goto LABEL_7;
      }

      (*(v292 + 8))(v207, v293);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 7;
      v148 = v457;
      goto LABEL_130;
    case 8:
      v463 = 8;
      sub_225BB2CC0();
      v231 = v278;
      sub_225CCF604();
      if (v231)
      {
        goto LABEL_7;
      }

      (*(v294 + 8))(v133, v295);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 8;
      v148 = v457;
      goto LABEL_130;
    case 9:
      v463 = 9;
      sub_225BB2C6C();
      v195 = v404;
      v196 = v278;
      sub_225CCF604();
      if (v196)
      {
        goto LABEL_7;
      }

      (*(v296 + 8))(v195, v297);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 9;
      v148 = v457;
      goto LABEL_130;
    case 10:
      v463 = 10;
      sub_225BB2C18();
      v229 = v405;
      v230 = v278;
      sub_225CCF604();
      if (v230)
      {
        goto LABEL_7;
      }

      (*(v298 + 8))(v229, v299);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 10;
      v148 = v457;
      goto LABEL_130;
    case 11:
      v463 = 11;
      sub_225BB2BC4();
      v187 = v278;
      sub_225CCF604();
      if (v187)
      {
        goto LABEL_7;
      }

      (*(v300 + 8))(v134, v301);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 11;
      v148 = v457;
      goto LABEL_130;
    case 12:
      v463 = 12;
      sub_225BB2B70();
      v194 = v278;
      sub_225CCF604();
      if (v194)
      {
        goto LABEL_7;
      }

      (*(v302 + 8))(v135, v303);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 12;
      v148 = v457;
      goto LABEL_130;
    case 13:
      v463 = 13;
      sub_225BB2B1C();
      v223 = v403;
      v224 = v278;
      sub_225CCF604();
      if (v224)
      {
        goto LABEL_7;
      }

      (*(v304 + 8))(v223, v305);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 13;
      v148 = v457;
      goto LABEL_130;
    case 14:
      v463 = 14;
      sub_225BB2AC8();
      v175 = v406;
      v176 = v278;
      sub_225CCF604();
      if (v176)
      {
        goto LABEL_7;
      }

      (*(v306 + 8))(v175, v307);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 14;
      v148 = v457;
      goto LABEL_130;
    case 15:
      v463 = 15;
      sub_225BB2A74();
      v203 = v407;
      v204 = v278;
      sub_225CCF604();
      if (v204)
      {
        goto LABEL_7;
      }

      (*(v308 + 8))(v203, v309);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 15;
      v148 = v457;
      goto LABEL_130;
    case 16:
      v463 = 16;
      sub_225BB2A20();
      v171 = v408;
      v172 = v278;
      sub_225CCF604();
      if (v172)
      {
        goto LABEL_7;
      }

      (*(v310 + 8))(v171, v311);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 16;
      v148 = v457;
      goto LABEL_130;
    case 17:
      v463 = 17;
      sub_225BB29CC();
      v213 = v409;
      v214 = v278;
      sub_225CCF604();
      if (v214)
      {
        goto LABEL_7;
      }

      (*(v312 + 8))(v213, v313);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 17;
      v148 = v457;
      goto LABEL_130;
    case 18:
      v463 = 18;
      sub_225BB2978();
      v227 = v410;
      v228 = v278;
      sub_225CCF604();
      if (v228)
      {
        goto LABEL_7;
      }

      (*(v314 + 8))(v227, v315);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 18;
      v148 = v457;
      goto LABEL_130;
    case 19:
      v463 = 19;
      sub_225BB2924();
      v242 = v411;
      v243 = v278;
      sub_225CCF604();
      if (v243)
      {
        goto LABEL_7;
      }

      (*(v316 + 8))(v242, v317);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 19;
      v148 = v457;
      goto LABEL_130;
    case 20:
      v463 = 20;
      sub_225BB28D0();
      v217 = v412;
      v218 = v278;
      sub_225CCF604();
      if (v218)
      {
        goto LABEL_7;
      }

      (*(v318 + 8))(v217, v319);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 20;
      v148 = v457;
      goto LABEL_130;
    case 21:
      v463 = 21;
      sub_225BB287C();
      v221 = v413;
      v222 = v278;
      sub_225CCF604();
      if (v222)
      {
        goto LABEL_7;
      }

      (*(v320 + 8))(v221, v321);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 21;
      v148 = v457;
      goto LABEL_130;
    case 22:
      v463 = 22;
      sub_225BB2828();
      v238 = v414;
      v239 = v278;
      sub_225CCF604();
      if (v239)
      {
        goto LABEL_7;
      }

      (*(v322 + 8))(v238, v323);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 22;
      v148 = v457;
      goto LABEL_130;
    case 23:
      v463 = 23;
      sub_225BB27D4();
      v252 = v415;
      v253 = v278;
      sub_225CCF604();
      if (v253)
      {
        goto LABEL_7;
      }

      (*(v324 + 8))(v252, v325);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 23;
      v148 = v457;
      goto LABEL_130;
    case 24:
      v463 = 24;
      sub_225BB2780();
      v199 = v416;
      v200 = v278;
      sub_225CCF604();
      if (v200)
      {
        goto LABEL_7;
      }

      (*(v326 + 8))(v199, v327);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 24;
      v148 = v457;
      goto LABEL_130;
    case 25:
      v463 = 25;
      sub_225BB272C();
      v197 = v417;
      v198 = v278;
      sub_225CCF604();
      if (v198)
      {
        goto LABEL_7;
      }

      (*(v328 + 8))(v197, v329);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 25;
      v148 = v457;
      goto LABEL_130;
    case 26:
      v463 = 26;
      sub_225BB26D8();
      v260 = v418;
      v261 = v278;
      sub_225CCF604();
      if (v261)
      {
        goto LABEL_7;
      }

      (*(v330 + 8))(v260, v331);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 26;
      v148 = v457;
      goto LABEL_130;
    case 27:
      v463 = 27;
      sub_225BB2684();
      v167 = v419;
      v168 = v278;
      sub_225CCF604();
      if (v168)
      {
        goto LABEL_7;
      }

      (*(v332 + 8))(v167, v333);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 27;
      v148 = v457;
      goto LABEL_130;
    case 28:
      v463 = 28;
      sub_225BB2630();
      v254 = v420;
      v255 = v278;
      sub_225CCF604();
      if (v255)
      {
        goto LABEL_7;
      }

      (*(v334 + 8))(v254, v335);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 28;
      v148 = v457;
      goto LABEL_130;
    case 29:
      v463 = 29;
      sub_225BB25DC();
      v256 = v421;
      v257 = v278;
      sub_225CCF604();
      if (v257)
      {
        goto LABEL_7;
      }

      (*(v336 + 8))(v256, v337);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 29;
      v148 = v457;
      goto LABEL_130;
    case 30:
      v463 = 30;
      sub_225BB2588();
      v232 = v422;
      v233 = v278;
      sub_225CCF604();
      if (v233)
      {
        goto LABEL_7;
      }

      (*(v338 + 8))(v232, v339);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 30;
      v148 = v457;
      goto LABEL_130;
    case 31:
      v463 = 31;
      sub_225BB2534();
      v211 = v423;
      v212 = v278;
      sub_225CCF604();
      if (v212)
      {
        goto LABEL_7;
      }

      (*(v340 + 8))(v211, v341);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 31;
      v148 = v457;
      goto LABEL_130;
    case 32:
      v463 = 32;
      sub_225BB24E0();
      v234 = v424;
      v235 = v278;
      sub_225CCF604();
      if (v235)
      {
        goto LABEL_7;
      }

      (*(v342 + 8))(v234, v343);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 32;
      v148 = v457;
      goto LABEL_130;
    case 33:
      v463 = 33;
      sub_225BB248C();
      v177 = v425;
      v178 = v278;
      sub_225CCF604();
      if (v178)
      {
        goto LABEL_7;
      }

      (*(v344 + 8))(v177, v345);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 33;
      v148 = v457;
      goto LABEL_130;
    case 34:
      v463 = 34;
      sub_225BB2438();
      v169 = v426;
      v170 = v278;
      sub_225CCF604();
      if (v170)
      {
        goto LABEL_7;
      }

      (*(v346 + 8))(v169, v347);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 34;
      v148 = v457;
      goto LABEL_130;
    case 35:
      v463 = 35;
      sub_225BB23E4();
      v163 = v427;
      v164 = v278;
      sub_225CCF604();
      if (v164)
      {
        goto LABEL_7;
      }

      (*(v348 + 8))(v163, v349);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 35;
      v148 = v457;
      goto LABEL_130;
    case 36:
      v463 = 36;
      sub_225BB2390();
      v165 = v428;
      v166 = v278;
      sub_225CCF604();
      if (v166)
      {
        goto LABEL_7;
      }

      (*(v350 + 8))(v165, v351);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 36;
      v148 = v457;
      goto LABEL_130;
    case 37:
      v463 = 37;
      sub_225BB233C();
      v155 = v429;
      v156 = v278;
      sub_225CCF604();
      if (v156)
      {
        goto LABEL_7;
      }

      (*(v352 + 8))(v155, v353);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 37;
      v148 = v457;
      goto LABEL_130;
    case 38:
      v463 = 38;
      sub_225BB22E8();
      v258 = v430;
      v259 = v278;
      sub_225CCF604();
      if (v259)
      {
        goto LABEL_7;
      }

      (*(v354 + 8))(v258, v355);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 38;
      v148 = v457;
      goto LABEL_130;
    case 39:
      v463 = 39;
      sub_225BB2294();
      v240 = v431;
      v241 = v278;
      sub_225CCF604();
      if (v241)
      {
        goto LABEL_7;
      }

      (*(v356 + 8))(v240, v357);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 39;
      v148 = v457;
      goto LABEL_130;
    case 40:
      v463 = 40;
      sub_225BB2240();
      v192 = v432;
      v193 = v278;
      sub_225CCF604();
      if (v193)
      {
        goto LABEL_7;
      }

      (*(v358 + 8))(v192, v359);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 40;
      v148 = v457;
      goto LABEL_130;
    case 41:
      v463 = 41;
      sub_225BB21EC();
      v215 = v433;
      v216 = v278;
      sub_225CCF604();
      if (v216)
      {
        goto LABEL_7;
      }

      (*(v360 + 8))(v215, v361);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 41;
      v148 = v457;
      goto LABEL_130;
    case 42:
      v463 = 42;
      sub_225BB2198();
      v246 = v434;
      v247 = v278;
      sub_225CCF604();
      if (v247)
      {
        goto LABEL_7;
      }

      (*(v362 + 8))(v246, v363);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 42;
      v148 = v457;
      goto LABEL_130;
    case 43:
      v463 = 43;
      sub_225BB2144();
      v153 = v435;
      v154 = v278;
      sub_225CCF604();
      if (v154)
      {
        goto LABEL_7;
      }

      (*(v364 + 8))(v153, v365);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 43;
      v148 = v457;
      goto LABEL_130;
    case 44:
      v463 = 44;
      sub_225BB20F0();
      v173 = v436;
      v174 = v278;
      sub_225CCF604();
      if (v174)
      {
        goto LABEL_7;
      }

      (*(v366 + 8))(v173, v367);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 44;
      v148 = v457;
      goto LABEL_130;
    case 45:
      v463 = 45;
      sub_225BB209C();
      v236 = v437;
      v237 = v278;
      sub_225CCF604();
      if (v237)
      {
        goto LABEL_7;
      }

      (*(v368 + 8))(v236, v369);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 45;
      v148 = v457;
      goto LABEL_130;
    case 46:
      v463 = 46;
      sub_225BB2048();
      v268 = v438;
      v269 = v278;
      sub_225CCF604();
      if (v269)
      {
        goto LABEL_7;
      }

      (*(v370 + 8))(v268, v371);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 46;
      v148 = v457;
      goto LABEL_130;
    case 47:
      v463 = 47;
      sub_225BB1FF4();
      v159 = v439;
      v160 = v278;
      sub_225CCF604();
      if (v160)
      {
        goto LABEL_7;
      }

      (*(v372 + 8))(v159, v373);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 47;
      v148 = v457;
      goto LABEL_130;
    case 48:
      v463 = 48;
      sub_225BB1FA0();
      v179 = v440;
      v180 = v278;
      sub_225CCF604();
      if (v180)
      {
        goto LABEL_7;
      }

      (*(v374 + 8))(v179, v375);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 48;
      v148 = v457;
      goto LABEL_130;
    case 49:
      v463 = 49;
      sub_225BB1F4C();
      v188 = v441;
      v189 = v278;
      sub_225CCF604();
      if (v189)
      {
        goto LABEL_7;
      }

      (*(v376 + 8))(v188, v377);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 49;
      v148 = v457;
      goto LABEL_130;
    case 50:
      v463 = 50;
      sub_225BB1EF8();
      v150 = v442;
      v151 = v278;
      sub_225CCF604();
      if (v151)
      {
        goto LABEL_7;
      }

      (*(v378 + 8))(v150, v379);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 50;
      v148 = v457;
      goto LABEL_130;
    case 51:
      v463 = 51;
      sub_225BB1EA4();
      v270 = v443;
      v271 = v278;
      sub_225CCF604();
      if (v271)
      {
        goto LABEL_7;
      }

      (*(v380 + 8))(v270, v381);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 51;
      v148 = v457;
      goto LABEL_130;
    case 52:
      v463 = 52;
      sub_225BB1E50();
      v266 = v444;
      v267 = v278;
      sub_225CCF604();
      if (v267)
      {
        goto LABEL_7;
      }

      (*(v382 + 8))(v266, v383);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 52;
      v148 = v457;
      goto LABEL_130;
    case 53:
      v463 = 53;
      sub_225BB1DFC();
      v157 = v445;
      v158 = v278;
      sub_225CCF604();
      if (v158)
      {
        goto LABEL_7;
      }

      (*(v384 + 8))(v157, v385);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 53;
      v148 = v457;
      goto LABEL_130;
    case 54:
      v463 = 54;
      sub_225BB1DA8();
      v262 = v446;
      v263 = v278;
      sub_225CCF604();
      if (v263)
      {
        goto LABEL_7;
      }

      (*(v386 + 8))(v262, v387);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 54;
      v148 = v457;
      goto LABEL_130;
    case 55:
      v463 = 55;
      sub_225BB1D54();
      v264 = v447;
      v265 = v278;
      sub_225CCF604();
      if (v265)
      {
        goto LABEL_7;
      }

      (*(v388 + 8))(v264, v389);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 55;
      v148 = v457;
      goto LABEL_130;
    case 56:
      v463 = 56;
      sub_225BB1D00();
      v161 = v448;
      v162 = v278;
      sub_225CCF604();
      if (v162)
      {
        goto LABEL_7;
      }

      (*(v390 + 8))(v161, v391);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 56;
      v148 = v457;
      goto LABEL_130;
    case 57:
      v463 = 57;
      sub_225BB1CAC();
      v244 = v449;
      v245 = v278;
      sub_225CCF604();
      if (v245)
      {
        goto LABEL_7;
      }

      (*(v392 + 8))(v244, v393);
      (*(v458 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v144 = 0;
      v152 = 2;
      v143 = 57;
      v148 = v457;
      goto LABEL_130;
    case 58:
      v463 = 58;
      sub_225BB1C58();
      v181 = v450;
      v182 = v278;
      sub_225CCF604();
      if (v182)
      {
        goto LABEL_7;
      }

      v183 = v395;
      v143 = sub_225CCF684();
      v184 = v181;
      v185 = v457;
      v186 = v458;
      v144 = v272;
      (*(v394 + 8))(v184, v183);
      (*(v186 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v152 = 0;
      goto LABEL_129;
    case 59:
      v463 = 59;
      sub_225BB1C04();
      v248 = v451;
      v249 = v278;
      sub_225CCF604();
      if (v249)
      {
        goto LABEL_7;
      }

      v143 = sub_225CCF684();
      v250 = v248;
      v185 = v457;
      v251 = v458;
      v144 = v273;
      (*(v396 + 8))(v250, v137);
      (*(v251 + 8))(v130, v126);
      swift_unknownObjectRelease();
      v152 = 1;
LABEL_129:
      v148 = v185;
LABEL_130:
      *v136 = v143;
      *(v136 + 8) = v144;
      *(v136 + 16) = v152;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v148);
}
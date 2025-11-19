uint64_t sub_258CFECD0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void))
{
  v76 = a5;
  v77 = a6;
  v74 = a3;
  v75 = a4;
  v73 = a2;
  v89[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v67 - v10;
  v11 = sub_258D176E4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258D177F4();
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = *(v79 + 64);
  MEMORY[0x28223BE20](v14);
  v78 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_258D16A84();
  v83 = *(v17 - 8);
  v84 = v17;
  v18 = *(v83 + 64);
  MEMORY[0x28223BE20](v17);
  v82 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_258D16B54();
  v85 = *(v20 - 8);
  v21 = *(v85 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_258D17764();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v71 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v67 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v67 - v33;
  MEMORY[0x28223BE20](v32);
  v86 = &v67 - v35;
  v88 = swift_allocObject();
  *(v88 + 16) = a7;
  v36 = objc_opt_self();
  _Block_copy(a7);
  v37 = sub_258D17854();
  v89[0] = 0;
  v38 = [v36 dataWithPropertyList:v37 format:200 options:0 error:v89];

  v39 = v89[0];
  if (!v38)
  {
    v43 = v39;
    v44 = sub_258D16A14();

    swift_willThrow();
LABEL_7:
    sub_258D17824();
    sub_258D021FC(&qword_280BCBE28, MEMORY[0x277CF30A0]);
    v62 = swift_allocError();
    v63 = v44;
    sub_258D17834();
    v64 = sub_258D16A04();
    (a7)[2](a7, 0, v64);

    goto LABEL_8;
  }

  v87 = v25;
  v40 = sub_258D16AF4();
  v42 = v41;

  sub_258D17714();
  sub_258D17754();
  v68 = v40;
  v69 = v42;
  v45 = v87 + 8;
  v70 = *(v87 + 8);
  v70(v31, v24);
  sub_258D16B44();
  sub_258D16B24();
  (*(v85 + 8))(v23, v20);
  v46 = v86;
  sub_258D17754();
  v70(v34, v24);

  v47 = [objc_opt_self() defaultManager];
  v48 = v82;
  sub_258D17734();
  v49 = sub_258D16A34();
  (*(v83 + 8))(v48, v84);
  v89[0] = 0;
  LOBYTE(v48) = [v47 createDirectoryAtURL:v49 withIntermediateDirectories:1 attributes:0 error:v89];

  v50 = v89[0];
  v51 = v24;
  if ((v48 & 1) == 0)
  {
    v61 = v89[0];
    v44 = sub_258D16A14();

    swift_willThrow();
    sub_258CD7210(v68, v69);
    v70(v46, v24);
    goto LABEL_7;
  }

  (*(v87 + 16))(v71, v46, v24);
  v52 = v50;
  sub_258CDBA34(v73, v74);

  sub_258D176C4();
  v53 = v78;
  sub_258D177E4();
  v54 = *(v77 + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
  sub_258D17804();
  v55 = sub_258D17224();
  v56 = v81;
  (*(*(v55 - 8) + 56))(v81, 1, 1, v55);
  v57 = swift_allocObject();
  v87 = v45;
  v58 = v88;
  *(v57 + 16) = sub_258D02304;
  *(v57 + 24) = v58;
  sub_258D021FC(&qword_27F9808F8, MEMORY[0x277CF3098]);

  v59 = v68;
  v60 = v69;
  sub_258D16D64();
  sub_258CD7210(v59, v60);

  sub_258CD7264(v56, &qword_27F980810, &unk_258D190E0);
  (*(v79 + 8))(v53, v80);
  v70(v46, v51);
LABEL_8:

  v66 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_258CFF618(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, char *a12, void (**a13)(void, void, void), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v87 = a7;
  v88 = a8;
  v85 = a5;
  v86 = a6;
  v83 = a3;
  v84 = a4;
  v82 = a2;
  v100[1] = *MEMORY[0x277D85DE8];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v92 = v75 - v19;
  v20 = sub_258D176E4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v81 = v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_258D177F4();
  v90 = *(v23 - 8);
  v91 = v23;
  v24 = *(v90 + 64);
  MEMORY[0x28223BE20](v23);
  v89 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_258D16A84();
  v94 = *(v26 - 8);
  v95 = v26;
  v27 = *(v94 + 64);
  MEMORY[0x28223BE20](v26);
  v93 = v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_258D16B54();
  v96 = *(v29 - 8);
  v30 = *(v96 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_258D17764();
  v98 = *(v33 - 8);
  v34 = *(v98 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = v75 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = v75 - v42;
  MEMORY[0x28223BE20](v41);
  v97 = v75 - v44;
  v99 = swift_allocObject();
  *(v99 + 16) = a13;
  v45 = objc_opt_self();
  _Block_copy(a13);
  v46 = sub_258D17854();
  v100[0] = 0;
  v47 = [v45 dataWithPropertyList:v46 format:200 options:0 error:v100];

  v48 = v100[0];
  if (!v47)
  {
    v52 = v48;
    v53 = sub_258D16A14();

    swift_willThrow();
LABEL_7:
    sub_258D17824();
    sub_258D021FC(&qword_280BCBE28, MEMORY[0x277CF30A0]);
    v70 = swift_allocError();
    v71 = v53;
    sub_258D17834();
    v72 = sub_258D16A04();
    (a13)[2](a13, 0, v72);

    goto LABEL_8;
  }

  v80 = v37;
  v49 = sub_258D16AF4();
  v51 = v50;

  sub_258D17714();
  sub_258D17754();
  v77 = v49;
  v78 = v51;
  v54 = v98 + 8;
  v79 = *(v98 + 8);
  v79(v40, v33);
  sub_258D16B44();
  sub_258D16B24();
  (*(v96 + 8))(v32, v29);
  v55 = v97;
  sub_258D17754();
  v79(v43, v33);

  v56 = [objc_opt_self() defaultManager];
  v57 = v93;
  sub_258D17734();
  v58 = sub_258D16A34();
  (*(v94 + 8))(v57, v95);
  v100[0] = 0;
  LOBYTE(v57) = [v56 createDirectoryAtURL:v58 withIntermediateDirectories:1 attributes:0 error:v100];

  v59 = v100[0];
  if ((v57 & 1) == 0)
  {
    v69 = v100[0];
    v53 = sub_258D16A14();

    swift_willThrow();
    sub_258CD7210(v77, v78);
    v79(v55, v33);
    goto LABEL_7;
  }

  v96 = a17;
  v76 = v33;
  v94 = a15;
  v95 = a16;
  v93 = a12;
  v75[1] = a9;
  (*(v98 + 16))(v80, v55, v33);
  v60 = v59;
  sub_258CDBA34(v82, v83);

  sub_258CFA9D0(v86, v87);
  v98 = v54;
  sub_258CFA9D0(v88, a9);
  sub_258CFA9D0(a10, a11);
  sub_258D176C4();
  v61 = v89;
  sub_258D177E4();
  v62 = *&v93[OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd];
  sub_258D17804();
  v63 = sub_258D17224();
  v64 = v92;
  (*(*(v63 - 8) + 56))(v92, 1, 1, v63);
  v65 = swift_allocObject();
  v66 = v99;
  *(v65 + 16) = v95;
  *(v65 + 24) = v66;
  sub_258D021FC(&qword_27F9808F8, MEMORY[0x277CF3098]);

  v67 = v77;
  v68 = v78;
  sub_258D16D64();
  sub_258CD7210(v67, v68);

  sub_258CD7264(v64, &qword_27F980810, &unk_258D190E0);
  (*(v90 + 8))(v61, v91);
  v79(v97, v76);
LABEL_8:

  v74 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_258CFFFA4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14, uint64_t a15, void (**a16)(void, void, void))
{
  v84 = a7;
  v85 = a8;
  v82 = a5;
  v83 = a6;
  v80 = a3;
  v81 = a4;
  v93 = a2;
  v98[1] = *MEMORY[0x277D85DE8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v89 = &v74 - v18;
  v19 = sub_258D176E4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v79 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_258D177F4();
  v87 = *(v22 - 8);
  v88 = v22;
  v23 = *(v87 + 64);
  MEMORY[0x28223BE20](v22);
  v86 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_258D16A84();
  v91 = *(v25 - 8);
  v92 = v25;
  v26 = *(v91 + 64);
  MEMORY[0x28223BE20](v25);
  v90 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_258D16B54();
  v94 = *(v28 - 8);
  v29 = *(v94 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_258D17764();
  v96 = *(v32 - 8);
  v33 = *(v96 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v74 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v74 - v41;
  MEMORY[0x28223BE20](v40);
  v95 = &v74 - v43;
  v97 = swift_allocObject();
  *(v97 + 16) = a16;
  v44 = objc_opt_self();
  _Block_copy(a16);
  v45 = sub_258D17854();
  v98[0] = 0;
  v46 = [v44 dataWithPropertyList:v45 format:200 options:0 error:v98];

  v47 = v98[0];
  if (!v46)
  {
    v51 = v47;
    v52 = sub_258D16A14();

    swift_willThrow();
LABEL_7:
    sub_258D17824();
    sub_258D021FC(&qword_280BCBE28, MEMORY[0x277CF30A0]);
    v69 = swift_allocError();
    v70 = v52;
    sub_258D17834();
    v71 = sub_258D16A04();
    (a16)[2](a16, 0, v71);

    goto LABEL_8;
  }

  v78 = v36;
  v48 = sub_258D16AF4();
  v50 = v49;

  sub_258D17714();
  sub_258D17754();
  v75 = v48;
  v76 = v50;
  v53 = v96 + 8;
  v77 = *(v96 + 8);
  v77(v39, v32);
  sub_258D16B44();
  sub_258D16B24();
  (*(v94 + 8))(v31, v28);
  v54 = v95;
  sub_258D17754();
  v77(v42, v32);

  v55 = [objc_opt_self() defaultManager];
  v56 = v90;
  sub_258D17734();
  v57 = sub_258D16A34();
  (*(v91 + 8))(v56, v92);
  v98[0] = 0;
  LOBYTE(v56) = [v55 createDirectoryAtURL:v57 withIntermediateDirectories:1 attributes:0 error:v98];

  v58 = v98[0];
  if ((v56 & 1) == 0)
  {
    v68 = v98[0];
    v52 = sub_258D16A14();

    swift_willThrow();
    sub_258CD7210(v75, v76);
    v77(v54, v32);
    goto LABEL_7;
  }

  v92 = a15;
  LODWORD(v91) = a14;
  v90 = a13;
  v74 = a9;
  (*(v96 + 16))(v78, v54, v32);
  v59 = v58;
  sub_258CDBA34(v93, v80);

  v96 = v32;
  sub_258CFA9D0(v83, v84);
  v94 = v53;
  sub_258CFA9D0(v85, a9);
  sub_258CFA9D0(a10, a11);
  sub_258D176C4();
  sub_258CFA9D0(a12, v90);
  v60 = v86;
  sub_258D177E4();
  v61 = *(v92 + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
  sub_258D17804();
  v62 = sub_258D17224();
  v63 = v89;
  (*(*(v62 - 8) + 56))(v89, 1, 1, v62);
  v64 = swift_allocObject();
  v65 = v97;
  *(v64 + 16) = sub_258D019B0;
  *(v64 + 24) = v65;
  sub_258D021FC(&qword_27F9808F8, MEMORY[0x277CF3098]);

  v66 = v75;
  v67 = v76;
  sub_258D16D64();

  sub_258CD7210(v66, v67);
  sub_258CD7264(v63, &qword_27F980810, &unk_258D190E0);
  (*(v87 + 8))(v60, v88);
  v77(v95, v96);
LABEL_8:

  v73 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_258D00964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v106 = a3;
  v89 = a2;
  v107[2] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = &v81 - v5;
  v95 = sub_258D16DD4();
  v88 = *(v95 - 8);
  v6 = *(v88 + 64);
  MEMORY[0x28223BE20](v95);
  v91 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258D16DC4();
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  MEMORY[0x28223BE20](v8);
  v90 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_258D16A84();
  v97 = *(v105 - 8);
  v11 = *(v97 + 64);
  MEMORY[0x28223BE20](v105);
  v96 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258D16B54();
  v99 = *(v13 - 8);
  v100 = v13;
  v14 = *(v99 + 64);
  MEMORY[0x28223BE20](v13);
  v98 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258D176E4();
  v101 = *(v16 - 8);
  v102 = v16;
  v17 = *(v101 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v103 = &v81 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9808D0, &qword_258D190F8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v81 - v24;
  v26 = sub_258D17764();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v104 = &v81 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v81 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v81 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v81 - v40;
  sub_258D16A74();
  sub_258D17724();
  v85 = v20;
  v86 = v36;
  (*(v27 + 56))(v25, 0, 1, v26);
  (*(v27 + 32))(v41, v25, v26);
  v42 = *(v27 + 16);
  v87 = v26;
  v42(v39, v41, v26);
  sub_258D176C4();
  sub_258D17714();
  sub_258D17754();
  v82 = v42;
  v83 = v27 + 16;
  v84 = v39;
  v43 = v31;
  v44 = *(v27 + 8);
  v45 = v87;
  v44(v43, v87);
  v46 = v98;
  sub_258D16B44();
  sub_258D16B24();
  (*(v99 + 8))(v46, v100);
  v47 = v86;
  sub_258D17754();
  v100 = 0;
  v44(v104, v45);

  v48 = objc_opt_self();
  v49 = [v48 defaultManager];
  v50 = v96;
  sub_258D17734();
  v51 = sub_258D16A34();
  (*(v97 + 8))(v50, v105);
  v107[0] = 0;
  v52 = v47;
  LOBYTE(v47) = [v49 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:0 error:v107];

  if (v47)
  {
    v53 = v107[0];
    v54 = [v48 defaultManager];
    v55 = v84;
    v56 = v103;
    sub_258D176D4();
    sub_258D176F4();
    v44(v55, v45);
    v57 = sub_258D17884();

    v58 = [v54 fileExistsAtPath_];

    if ((v58 & 1) == 0)
    {
      v44(v86, v45);
      (*(v101 + 8))(v56, v102);
      v44(v41, v45);
      goto LABEL_7;
    }

    v104 = v44;
    v105 = v41;
    v82(v55, v86, v45);
    sub_258D176C4();
    v59 = v90;
    sub_258D16DB4();
    v60 = *(v89 + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
    v61 = sub_258D17224();
    v62 = v92;
    (*(*(v61 - 8) + 56))(v92, 1, 1, v61);
    sub_258D021FC(&qword_27F980900, MEMORY[0x277CF1CA0]);
    v63 = v91;
    v64 = v56;
    v65 = v95;
    v66 = v100;
    sub_258D16D04();
    v67 = v101;
    if (!v66)
    {
      sub_258CD7264(v62, &qword_27F980810, &unk_258D190E0);
      v79 = sub_258D16DA4();
      (*(v106 + 16))(v106, v79, 0);

      (*(v88 + 8))(v63, v65);
      (*(v93 + 8))(v59, v94);
      v80 = v104;
      (v104)(v86, v45);
      (*(v67 + 8))(v64, v102);
      v80(v105, v45);
      goto LABEL_7;
    }

    v68 = v66;
    sub_258CD7264(v62, &qword_27F980810, &unk_258D190E0);
    (*(v93 + 8))(v59, v94);
    v69 = v104;
    (v104)(v86, v45);
    (*(v67 + 8))(v64, v102);
    v69(v105, v45);
    v70 = v106;
    v71 = v68;
  }

  else
  {
    v72 = v107[0];
    v73 = sub_258D16A14();

    swift_willThrow();
    v74 = v52;
    v71 = v73;
    v44(v74, v45);
    (*(v101 + 8))(v103, v102);
    v44(v41, v45);
    v70 = v106;
  }

  sub_258D17824();
  sub_258D021FC(&qword_280BCBE28, MEMORY[0x277CF30A0]);
  v75 = swift_allocError();
  v76 = v71;
  sub_258D17834();
  v77 = sub_258D16A04();
  (*(v70 + 16))(v70, 0, v77);

LABEL_7:
  v78 = *MEMORY[0x277D85DE8];
}

uint64_t sub_258D01634(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980810, &unk_258D190E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v28 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  _Block_copy(a3);
  v11 = sub_258D17854();
  v28[0] = 0;
  v12 = [v10 dataWithPropertyList:v11 format:200 options:0 error:v28];

  v13 = v28[0];
  if (v12)
  {
    v14 = sub_258D16AF4();
    v16 = v15;

    v17 = *(a2 + OBJC_IVAR___IMMessagesBlastDoorInterfaceInternal_bd);
    sub_258D17684();
    v18 = sub_258D17224();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_258D02304;
    *(v19 + 24) = v9;
    sub_258D021FC(&qword_27F980908, MEMORY[0x277CF2A28]);

    sub_258D16D14();

    sub_258CD7210(v14, v16);
    sub_258CD7264(v8, &qword_27F980810, &unk_258D190E0);
  }

  else
  {
    v20 = v13;
    v21 = sub_258D16A14();

    swift_willThrow();
    sub_258D17824();
    sub_258D021FC(&qword_280BCBE28, MEMORY[0x277CF30A0]);
    v22 = swift_allocError();
    v23 = v21;
    sub_258D17834();
    v24 = sub_258D16A04();
    (a3)[2](a3, 0, v24);
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_258D0199C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258CD7210(a1, a2);
  }

  return a1;
}

uint64_t sub_258D01B4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258D0230C;

  return sub_258CF5A48(a1, v5);
}

uint64_t sub_258D01C04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258CFAC90;

  return sub_258CF5A48(a1, v5);
}

uint64_t objectdestroy_300Tm()
{
  v1 = sub_258D16E64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_258D01E28()
{
  v0 = *(*(sub_258D16E64() - 8) + 80);

  return sub_258CE651C();
}

uint64_t objectdestroy_303Tm()
{
  v1 = sub_258D16C04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_258D16A84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 16) & ~v9;
  v16 = v3 | v9;
  v11 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  v13 = *(v0 + v6 + 8);

  (*(v8 + 8))(v0 + v10, v7);
  v14 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v16 | 7);
}

void sub_258D02020(void (*a1)(_BYTE *, _BYTE *, uint64_t))
{
  v3 = *(sub_258D16C04() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_258D16A84() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  sub_258CE663C(a1, v1 + v4, v9, v10, v11, v1 + v8, v13, v14);
}

uint64_t sub_258D0214C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258D021B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_258D021FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258D02244()
{
  result = qword_280BCBE58;
  if (!qword_280BCBE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F980B30, &qword_258D192E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBE58);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t RelayGroupMutationMessageUnpacker.unpack(from:)@<X0>(uint64_t a1@<X8>)
{
  v142 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B38, &qword_258D19300);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v160 = &v137 - v3;
  v4 = sub_258D17824();
  v162 = *(v4 - 8);
  v163 = v4;
  v5 = v162[8];
  MEMORY[0x28223BE20](v4);
  v161 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_258D17784();
  v157 = *(v159 - 8);
  v7 = *(v157 + 64);
  v8 = MEMORY[0x28223BE20](v159);
  v146 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v145 = &v137 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v156 = &v137 - v13;
  MEMORY[0x28223BE20](v12);
  v158 = &v137 - v14;
  v144 = sub_258D175F4();
  v148 = *(v144 - 8);
  v15 = *(v148 + 64);
  MEMORY[0x28223BE20](v144);
  v152 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B40, &qword_258D19308);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v151 = &v137 - v19;
  v20 = sub_258D17644();
  v154 = *(v20 - 8);
  v155 = v20;
  v21 = *(v154 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v147 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v143 = &v137 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B48, &unk_258D19310);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v149 = &v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v153 = &v137 - v29;
  v30 = sub_258D17354();
  v164 = *(v30 - 8);
  v165 = v30;
  v31 = *(v164 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v141 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v140 = &v137 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v150 = &v137 - v37;
  MEMORY[0x28223BE20](v36);
  v168 = &v137 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v166 = &v137 - v41;
  v42 = sub_258D16B54();
  v167 = *(v42 - 8);
  v43 = *(v167 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v137 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v137 - v47;
  v49 = sub_258D169F4();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v52 = sub_258D169E4();
  v53 = sub_258D16AE4();
  v54 = [v53 _imOptionallyDecompressData];

  v55 = sub_258D16AF4();
  v57 = v56;

  sub_258D03614();
  v58 = v186;
  sub_258D169D4();
  if (v58)
  {

    return sub_258CD7210(v55, v57);
  }

  v138 = v46;
  v186 = v52;
  v139 = v48;
  sub_258CD7210(v55, v57);
  v172 = v182;
  v173 = v183;
  v174 = v184;
  v175 = v185;
  v169[2] = v178;
  v169[3] = v179;
  v170 = v180;
  v171 = v181;
  v169[0] = v176;
  v169[1] = v177;
  v60 = v166;
  sub_258D16B14();
  v61 = v167;
  if ((*(v167 + 48))(v60, 1, v42) == 1)
  {
    sub_258D03668(v169);
    sub_258CD7264(v60, &qword_27F980B50, &qword_258D198C0);
    v62 = v161;
    sub_258D17814();
    sub_258D036BC();
    v167 = sub_258D17B14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980818, &qword_258D19320);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_258D19090;
    v65 = v162;
    v64 = v163;
    v168 = v162[2];
    v66 = v160;
    (v168)(v160, v62, v163);
    (v65[7])(v66, 0, 1, v64);
    v67 = sub_258D17604();
    v69 = v68;
    sub_258CD7264(v66, &qword_27F980B38, &qword_258D19300);
    *(v63 + 56) = MEMORY[0x277D837D0];
    *(v63 + 64) = sub_258CF695C();
    *(v63 + 32) = v67;
    *(v63 + 40) = v69;
    sub_258D17A74();
    v70 = v167;
    sub_258D16B94();

    sub_258D03C4C(&qword_280BCBE28, MEMORY[0x277CF30A0]);
    swift_allocError();
    (v168)(v71, v62, v64);
    swift_willThrow();

    return (v65[1])(v62, v64);
  }

  v163 = 0;
  v72 = *(v61 + 32);
  v166 = v42;
  v72(v139, v60, v42);
  v73 = *MEMORY[0x277CF2390];
  v74 = v164;
  v75 = v165;
  v76 = *(v164 + 104);
  v77 = v168;
  v76(v168, v73, v165);
  if (*&v169[0] != 1)
  {
    if (!*&v169[0])
    {
      v78 = v173;
      if (v173)
      {
        v79 = *(&v172 + 1);

        v81 = sub_258D03B68(1024, v79, v78, v80);
        v83 = v82;
        v85 = v84;
        v87 = v86;

        MEMORY[0x259C99B20](v81, v83, v85, v87);
        v89 = v88;

        if (v89)
        {

          v90 = v163;
          sub_258D17204();
          v91 = v165;
          v92 = v139;
          v77 = v168;
          v163 = v90;
          v93 = v150;
          if (v90)
          {

            sub_258D03668(v169);
            (*(v164 + 8))(v77, v91);
            return (*(v61 + 8))(v92, v166);
          }

          v74 = v164;
        }

        else
        {
          v74 = v164;
          v77 = v168;
          v93 = v150;
        }
      }

      else
      {
        v93 = v150;
      }

      v120 = sub_258D17214();
      v121 = v153;
      (*(*(v120 - 8) + 56))();
      sub_258D039EC(v121, v149);
      v122 = v163;
      sub_258D17654();
      v163 = v122;
      if (v122)
      {

        sub_258D03668(v169);
        sub_258CD7264(v121, &qword_27F980B48, &unk_258D19310);
        (*(v74 + 8))(v77, v165);
        return (*(v61 + 8))(v139, v166);
      }

      sub_258CD7264(v121, &qword_27F980B48, &unk_258D19310);
      v75 = v165;
      (*(v74 + 8))(v77, v165);
      v76(v93, *MEMORY[0x277CF2380], v75);
      (*(v74 + 32))(v77, v93, v75);
    }

    goto LABEL_37;
  }

  if (v174)
  {
    (*(v74 + 8))(v77, v75);
    v94 = v151;
    (*(v154 + 56))(v151, 1, 1, v155);
LABEL_15:
    sub_258CD7264(v94, &qword_27F980B40, &qword_258D19308);
    v76(v77, v73, v75);
    goto LABEL_37;
  }

  v161 = v76;
  v94 = v151;
  sub_258D17634();
  v96 = v154;
  v95 = v155;
  if ((*(v154 + 48))(v94, 1, v155) == 1)
  {
    v77 = v168;
    (*(v74 + 8))(v168, v75);
    v76 = v161;
    goto LABEL_15;
  }

  (*(v96 + 32))(v143, v94, v95);
  if (!*(&v174 + 1))
  {
    (*(v96 + 8))(v143, v95);
    v135 = v168;
    (*(v74 + 8))(v168, v75);
    (v161)(v135, v73, v75);
LABEL_37:

    v123 = v158;
    v124 = v163;
    sub_258D17774();
    v125 = v159;
    v126 = v157;
    if (v124)
    {

      sub_258D03668(v169);
      (*(v74 + 8))(v168, v75);
      return (*(v61 + 8))(v139, v166);
    }

    else
    {

      sub_258D17774();
      v127 = *(v126 + 16);
      v127(v145, v123, v125);
      v127(v146, v156, v125);
      (*(v61 + 16))(v138, v139, v166);
      v162 = *(&v171 + 1);
      v163 = *(&v170 + 1);
      (*(v164 + 16))(v141, v168, v75);

      sub_258D17574();

      sub_258D03668(v169);
      v128 = *(v126 + 8);
      v129 = v159;
      v128(v156, v159);
      v128(v158, v129);
      (*(v164 + 8))(v168, v165);
      return (*(v167 + 8))(v139, v166);
    }
  }

  v97 = *(&v174 + 1) + 64;
  v98 = 1 << *(*(&v174 + 1) + 32);
  v99 = -1;
  if (v98 < 64)
  {
    v99 = ~(-1 << v98);
  }

  v100 = v99 & *(*(&v174 + 1) + 64);
  v101 = (v98 + 63) >> 6;
  v153 = (v148 + 32);

  v102 = 0;
  v162 = MEMORY[0x277D84F90];
  v103 = v139;
  v160 = v97;
  v104 = v147;
  if (!v100)
  {
    while (1)
    {
LABEL_21:
      v105 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        __break(1u);
        return result;
      }

      if (v105 >= v101)
      {
        break;
      }

      v100 = *(v97 + 8 * v105);
      ++v102;
      if (v100)
      {
        v102 = v105;
        goto LABEL_25;
      }
    }

    v130 = v154;
    v131 = v155;
    v132 = v143;
    (*(v154 + 16))(v104, v143, v155);
    v133 = v140;
    v134 = v163;
    sub_258D17664();
    v163 = v134;
    if (v134)
    {

      sub_258D03668(v169);
      (*(v130 + 8))(v132, v131);
      (*(v164 + 8))(v168, v75);
      return (*(v167 + 8))(v103, v166);
    }

    (*(v130 + 8))(v132, v131);
    v74 = v164;
    v136 = v168;
    (*(v164 + 8))(v168, v75);
    (v161)(v133, *MEMORY[0x277CF2388], v75);
    (*(v74 + 32))(v136, v133, v75);
    v61 = v167;
    goto LABEL_37;
  }

LABEL_25:
  while (1)
  {
    v106 = (v102 << 10) | (16 * __clz(__rbit64(v100)));
    v107 = result;
    v108 = (*(result + 48) + v106);
    v109 = *v108;
    v110 = v108[1];
    v111 = (*(result + 56) + v106);
    v112 = *v111;
    v113 = v111[1];

    v114 = v163;
    sub_258D175E4();
    if (v114)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163 = 0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v162 = sub_258D03814(0, v162[2] + 1, 1, v162);
    }

    v116 = v148;
    v118 = v162[2];
    v117 = v162[3];
    if (v118 >= v117 >> 1)
    {
      v162 = sub_258D03814(v117 > 1, v118 + 1, 1, v162);
    }

    v100 &= v100 - 1;
    v119 = v162;
    v162[2] = v118 + 1;
    (*(v116 + 32))(v119 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v118);
    v75 = v165;
    v103 = v139;
    result = v107;
    v97 = v160;
    v104 = v147;
    if (!v100)
    {
      goto LABEL_21;
    }
  }

  sub_258D03668(v169);
  (*(v154 + 8))(v143, v155);
  (*(v164 + 8))(v168, v165);
  (*(v167 + 8))(v139, v166);
}

unint64_t sub_258D03614()
{
  result = qword_27F980B58;
  if (!qword_27F980B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980B58);
  }

  return result;
}

unint64_t sub_258D036BC()
{
  result = qword_280BCBE18;
  if (!qword_280BCBE18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BCBE18);
  }

  return result;
}

char *sub_258D03708(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B68, &unk_258D193B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_258D03814(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B60, &qword_258D193A8);
  v10 = *(sub_258D175F4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_258D175F4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_258D039EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B48, &unk_258D19310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_258D03A5C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980988, &qword_258D19160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_258D03B68(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_258D17934();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_258D03C4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for RelayGroupMutationMessageUnpacker(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RelayGroupMutationMessageUnpacker(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_258D03D74(unint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = result;
    if (!result)
    {
LABEL_10:
      v7 = sub_258D10DE0(v2);

      return v7;
    }

    while (1)
    {
      result = sub_258D03F18(8);
      if (v1)
      {
      }

      v4 = result;
      if (result > 0xFF)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_258CF6078(0, *(v2 + 2) + 1, 1, v2);
      }

      v6 = *(v2 + 2);
      v5 = *(v2 + 3);
      if (v6 >= v5 >> 1)
      {
        v2 = sub_258CF6078((v5 > 1), v6 + 1, 1, v2);
      }

      *(v2 + 2) = v6 + 1;
      v2[v6 + 32] = v4;
      if (!--v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s24MessagesBlastDoorSupport14LiteTextMarkerO9hashValueSivg_0()
{
  sub_258D17EC4();
  MEMORY[0x259C9A0F0](0);
  return sub_258D17EF4();
}

uint64_t sub_258D03ED8()
{
  sub_258D17EC4();
  MEMORY[0x259C9A0F0](0);
  return sub_258D17EF4();
}

uint64_t sub_258D03F18(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(*v1 + 16);
  v5 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
    goto LABEL_48;
  }

  if ((v5 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v6 = v1[2];
  v7 = 8 * v5;
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if (v8)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v9 < result)
  {
    sub_258D04260();
    swift_allocError();
    swift_willThrow();
    return v10;
  }

  if (v6 < 1)
  {
    v10 = 0;
    if (result >= 8)
    {
LABEL_27:
      if (v4 >= v3)
      {
        v18 = v4 - v3;
      }

      else
      {
        v18 = 0;
      }

      v19 = result - 15;
      if (result < 0xF)
      {
        v19 = 0;
      }

      v20 = v19 + 7;
      v21 = (v19 + 7) >> 3;
      if (v21 >= v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = v21;
      }

      if (v22 >= (v3 ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v23 = v3 ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      if (v18 == v23)
      {
        goto LABEL_53;
      }

      if ((v3 ^ 0x7FFFFFFFFFFFFFFFLL) <= v22)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v16 = v3 + v21 + 1;
      v24 = v20 & 0xFFFFFFFFFFFFFFF8;
      v25 = (v3 + v2 + 32);
      v26 = result + 8;
      do
      {
        v27 = *v25++;
        v10 = v27 | (v10 << 8);
        v26 -= 8;
      }

      while (v26 > 0xF);
      result = result - v24 - 8;
      v1[1] = v16;
      if (result < 1)
      {
        return v10;
      }

LABEL_43:
      if (v16 < v4)
      {
        v28 = v10 << result;
        v29 = *(v2 + v16 + 32) >> (8 - result);
        v30 = __CFADD__(v28, v29);
        v10 = v28 + v29;
        if (!v30)
        {
          v1[2] = result;
          return v10;
        }

        goto LABEL_52;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_19:
    v16 = v3;
    if (result < 1)
    {
      return v10;
    }

    goto LABEL_43;
  }

  v11 = v6 + result;
  if (__OFADD__(v6, result))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v11 > 7)
  {
    if (v3 >= v4)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v8 = __OFSUB__(result, 8 - v6);
    result -= 8 - v6;
    if (v8)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v6 <= 0x3F)
    {
      v17 = 0xFFuLL >> v6;
    }

    else
    {
      LOBYTE(v17) = 0;
    }

    v10 = v17 & *(v2 + v3++ + 32);
    v1[1] = v3;
    v1[2] = 0;
    if (result >= 8)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (v3 >= v4)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v12 = 0xFFuLL >> v6;
  if (v6 > 0x3F)
  {
    LOBYTE(v12) = 0;
  }

  v13 = 8 - v6;
  v8 = __OFSUB__(v13, result);
  v14 = v13 - result;
  if (v8)
  {
    goto LABEL_57;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = (v12 & *(v2 + v3 + 32)) >> v14;
    if (v14 <= 0x3F)
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }

    v1[2] = v11;
    return v10;
  }

LABEL_59:
  __break(1u);
  return result;
}

unint64_t sub_258D04144(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = sub_258D03F18(1);
    if (v1)
    {
      return v5;
    }

    v7 = v6;
    result = sub_258D03F18(a1);
    v9 = result << v4;
    if (v4 >= 0x40)
    {
      v9 = 0;
    }

    v10 = result >> v3;
    if (v4 <= 0xFFFFFFFFFFFFFFC0)
    {
      v10 = 0;
    }

    if (v4 < 0)
    {
      v9 = v10;
    }

    v11 = (v4 - 65) >= 0xFFFFFFFFFFFFFF7FLL ? v9 : 0;
    if (__OFADD__(v4, a1))
    {
      break;
    }

    v5 |= v11;
    v4 += a1;
    v3 -= a1;
    if (!v7)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void *sub_258D041EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980A50, &qword_258D193A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_258D04260()
{
  result = qword_27F980B70;
  if (!qword_27F980B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980B70);
  }

  return result;
}

uint64_t sub_258D042B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_258D16B04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_258CD7210(a1, a2);
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
      v14 = sub_258D041EC(v11, 0);
      v15 = sub_258D16AB4();
      sub_258CD7210(a1, a2);
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

unint64_t sub_258D04454()
{
  result = qword_27F980B78;
  if (!qword_27F980B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980B78);
  }

  return result;
}

BOOL sub_258D045D0(void *a1, uint64_t *a2)
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

void *sub_258D04600@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_258D0462C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_258D04704@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_258D04738@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t IncomingPushPayload.messageGUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUIDData();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258D056D4(v1, v6, type metadata accessor for UUIDData);
  v7 = sub_258D16B54();
  return (*(*(v7 - 8) + 32))(a1, v6, v7);
}

uint64_t sub_258D0485C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUIDData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258D056D4(a1, v7, type metadata accessor for UUIDData);
  v8 = sub_258D16B54();
  return (*(*(v8 - 8) + 32))(a2, v7, v8);
}

uint64_t IncomingPushPayload.messageGUID.setter(uint64_t a1)
{
  v3 = sub_258D16B54();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IncomingPushPayload.timestamp.getter()
{
  v1 = (v0 + *(type metadata accessor for IncomingPushPayload() + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t type metadata accessor for IncomingPushPayload()
{
  result = qword_280BCBDB0;
  if (!qword_280BCBDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IncomingPushPayload.timestamp.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for IncomingPushPayload();
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t IncomingPushPayload.originalTimestamp.getter()
{
  v1 = (v0 + *(type metadata accessor for IncomingPushPayload() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t IncomingPushPayload.originalTimestamp.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for IncomingPushPayload();
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t IncomingPushPayload.command.setter(char a1)
{
  result = type metadata accessor for IncomingPushPayload();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t IncomingPushPayload.wantsDeliveryReceipt.setter(char a1)
{
  result = type metadata accessor for IncomingPushPayload();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t IncomingPushPayload.wantsCheckpointing.setter(char a1)
{
  result = type metadata accessor for IncomingPushPayload();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t IncomingPushPayload.storageContext.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for IncomingPushPayload();
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t IncomingPushPayload.storageContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for IncomingPushPayload();
  v5 = v1 + *(result + 40);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t IncomingPushPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B80, &qword_258D19480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D05114();
  sub_258D17F34();
  LOBYTE(v25) = 0;
  type metadata accessor for UUIDData();
  sub_258D055D8(&qword_27F980B88);
  sub_258D17DE4();
  if (!v2)
  {
    v11 = type metadata accessor for IncomingPushPayload();
    v12 = *(v3 + v11[7]);
    LOBYTE(v25) = 1;
    sub_258D17DF4();
    v13 = (v3 + v11[5]);
    v14 = *v13;
    v15 = *(v13 + 8);
    LOBYTE(v25) = 2;
    sub_258D17DB4();
    v16 = (v3 + v11[6]);
    v17 = *v16;
    v18 = *(v16 + 8);
    LOBYTE(v25) = 3;
    sub_258D17DB4();
    v19 = *(v3 + v11[8]);
    LOBYTE(v25) = 4;
    sub_258D17D84();
    v20 = *(v3 + v11[9]);
    LOBYTE(v25) = 5;
    sub_258D17D84();
    v21 = (v3 + v11[10]);
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 8);
    v25 = v22;
    v26 = v21;
    v24[15] = 6;
    sub_258D05168();
    sub_258D17DA4();
  }

  return (*(v6 + 8))(v9, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_258D05114()
{
  result = qword_280BCBDE0;
  if (!qword_280BCBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBDE0);
  }

  return result;
}

unint64_t sub_258D05168()
{
  result = qword_27F980B90;
  if (!qword_27F980B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980B90);
  }

  return result;
}

uint64_t IncomingPushPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for UUIDData();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B98, &qword_258D19488);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for IncomingPushPayload();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v15[*(v13 + 40)];
  *v16 = 0;
  v16[8] = 1;
  v18 = a1[3];
  v17 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_258D05114();
  v35 = v10;
  v19 = v36;
  sub_258D17F14();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0(v37);
  }

  v20 = v11;
  v21 = v33;
  LOBYTE(v38) = 0;
  sub_258D055D8(qword_280BCBD68);
  v22 = v34;
  sub_258D17D34();
  sub_258D0561C(v6, v15);
  LOBYTE(v38) = 1;
  v15[v20[7]] = sub_258D17D44();
  LOBYTE(v38) = 2;
  v23 = sub_258D17D04();
  v24 = &v15[v20[5]];
  *v24 = v23;
  v24[8] = v25 & 1;
  LOBYTE(v38) = 3;
  v26 = sub_258D17D04();
  v27 = &v15[v20[6]];
  *v27 = v26;
  v27[8] = v28 & 1;
  LOBYTE(v38) = 4;
  v15[v20[8]] = sub_258D17CD4();
  LOBYTE(v38) = 5;
  v15[v20[9]] = sub_258D17CD4();
  v40 = 6;
  sub_258D05680();
  v30 = v35;
  sub_258D17CF4();
  (*(v21 + 8))(v30, v22);
  v31 = v39;
  *v16 = v38;
  v16[8] = v31;
  sub_258D056D4(v15, v32, type metadata accessor for IncomingPushPayload);
  __swift_destroy_boxed_opaque_existential_0(v37);
  return sub_258D0573C(v15, type metadata accessor for IncomingPushPayload);
}

uint64_t sub_258D055D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUIDData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258D0561C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUIDData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258D05680()
{
  result = qword_280BCBDC8;
  if (!qword_280BCBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBDC8);
  }

  return result;
}

uint64_t sub_258D056D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258D0573C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

MessagesBlastDoorSupport::IncomingPushPayload::CodingKeys_optional __swiftcall IncomingPushPayload.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258D17C94();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

MessagesBlastDoorSupport::IncomingPushPayload::CodingKeys_optional __swiftcall IncomingPushPayload.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = IncomingPushPayload.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t IncomingPushPayload.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 85;
  v3 = 25453;
  if (v1 != 5)
  {
    v3 = 72;
  }

  v4 = 25967;
  if (v1 != 3)
  {
    v4 = 68;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 99;
  if (v1 != 1)
  {
    v5 = 101;
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

unint64_t sub_258D05900()
{
  result = qword_27F980BA0;
  if (!qword_27F980BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980BA0);
  }

  return result;
}

unint64_t sub_258D05958()
{
  result = qword_27F980BA8;
  if (!qword_27F980BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980BA8);
  }

  return result;
}

unint64_t sub_258D059B0()
{
  result = qword_27F980BB0;
  if (!qword_27F980BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980BB0);
  }

  return result;
}

unint64_t sub_258D05A08()
{
  result = qword_27F980BB8;
  if (!qword_27F980BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980BB8);
  }

  return result;
}

unint64_t sub_258D05A6C()
{
  result = qword_27F980BC0;
  if (!qword_27F980BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980BC0);
  }

  return result;
}

uint64_t sub_258D05ACC()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_258D17914();
}

uint64_t sub_258D05B8C()
{
  sub_258D17EC4();
  sub_258D17914();

  return sub_258D17EF4();
}

void sub_258D05C64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 85;
  v5 = 0xE200000000000000;
  v6 = 25453;
  if (v2 != 5)
  {
    v6 = 72;
    v5 = 0xE100000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 25967;
  if (v2 != 3)
  {
    v8 = 68;
    v7 = 0xE100000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 99;
  if (v2 != 1)
  {
    v9 = 101;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE100000000000000;
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

unint64_t sub_258D05CF0()
{
  result = qword_280BCBDD0;
  if (!qword_280BCBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBDD0);
  }

  return result;
}

unint64_t sub_258D05D48()
{
  result = qword_280BCBDD8;
  if (!qword_280BCBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBDD8);
  }

  return result;
}

uint64_t sub_258D05D9C()
{
  v1 = *v0;
  v2 = 85;
  v3 = 25453;
  if (v1 != 5)
  {
    v3 = 72;
  }

  v4 = 25967;
  if (v1 != 3)
  {
    v4 = 68;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 99;
  if (v1 != 1)
  {
    v5 = 101;
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

uint64_t sub_258D05E70(uint64_t a1)
{
  v2 = sub_258D05114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D05EAC(uint64_t a1)
{
  v2 = sub_258D05114();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_258D05F10()
{
  type metadata accessor for UUIDData();
  if (v0 <= 0x3F)
  {
    sub_258D06004(319, &qword_27F980BC8);
    if (v1 <= 0x3F)
    {
      sub_258D06004(319, &qword_27F980BD0);
      if (v2 <= 0x3F)
      {
        sub_258D06004(319, &qword_27F980BD8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_258D06004(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_258D17B34();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for IncomingPushPayload.StorageContext(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IncomingPushPayload.StorageContext(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for IncomingPushPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IncomingPushPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t LiteTextMessageUnpacker.unpack(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a2;
  v124 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BE0, &qword_258D198B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v113 = &v103 - v6;
  v7 = sub_258D16B54();
  v122 = *(v7 - 8);
  v123 = v7;
  v8 = *(v122 + 64);
  MEMORY[0x28223BE20](v7);
  v112 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258D16EF4();
  v120 = *(v10 - 8);
  v121 = v10;
  v11 = *(v120 + 64);
  MEMORY[0x28223BE20](v10);
  v114 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for LiteAcknowledgmentMessageContent(0);
  v13 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v118 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for LiteReplyMessageContent(0);
  v15 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v119 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BE8, &qword_258D198B8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v109 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v106 = &v103 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v116 = &v103 - v24;
  MEMORY[0x28223BE20](v23);
  v126 = &v103 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v108 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v107 = &v103 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v115 = &v103 - v33;
  MEMORY[0x28223BE20](v32);
  v125 = &v103 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BF0, &qword_258D198C8);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v110 = &v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v105 = &v103 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v103 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v103 - v44;
  v46 = type metadata accessor for LiteTextMessageContent(0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v103 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_258D17174();
  v127 = *(v50 - 8);
  v51 = *(v127 + 64);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v103 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = &v103 - v55;
  v57 = v128;
  sub_258CDBA34(a1, v128);
  v129[4] = sub_258D042B4(a1, v57);
  v129[5] = v58;
  v129[6] = v59;
  v60 = v130;
  result = sub_258D04144(3);
  if (v60)
  {
  }

  v104 = v43;
  v128 = v54;
  v63 = v125;
  v62 = v126;
  v130 = v56;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_258D17164();
    v64 = v127;
    v65 = v50;
    v66 = v128;
    (*(v127 + 16))();
    v67 = (*(v64 + 88))(v66, v65);
    if (v67 == *MEMORY[0x277CF2148])
    {
      sub_258D11C40(v49);
      v128 = v65;

      v79 = *v49;
      v80 = v49[1];
      sub_258D06EFC(v49 + *(v46 + 20), v45);
      (*(v122 + 56))(v63, 1, 1, v123);
      (*(v120 + 56))(v62, 1, 1, v121);

      sub_258D17194();
      v81 = v130;
      sub_258D06F6C(v49, type metadata accessor for LiteTextMessageContent);
      return (*(v127 + 8))(v81, v128);
    }

    else if (v67 == *MEMORY[0x277CF2150])
    {
      v68 = v119;
      sub_258D11D80(v119);
      v69 = v130;

      v84 = *(v117 + 24);
      v85 = &v68[*(v117 + 20)];
      v86 = v85[1];
      v128 = *v85;
      sub_258D06EFC(&v68[v84], v104);
      v88 = v122;
      v87 = v123;
      v89 = v115;
      (*(v122 + 16))(v115, v68, v123);
      (*(v88 + 56))(v89, 0, 1, v87);
      (*(v120 + 56))(v116, 1, 1, v121);

      sub_258D17194();
      sub_258D06F6C(v68, type metadata accessor for LiteReplyMessageContent);
      return (*(v127 + 8))(v69, v65);
    }

    else if (v67 == *MEMORY[0x277CF2140])
    {
      v70 = v118;
      sub_258D120AC(v118);

      v71 = v111;
      (*(v122 + 16))(v112, v70 + *(v111 + 20), v123);
      v72 = sub_258D16ED4();
      v73 = *(v72 - 8);
      v74 = v113;
      (*(v73 + 16))(v113, v70, v72);
      (*(v73 + 56))(v74, 0, 1, v72);
      v75 = (v70 + *(v71 + 24));
      v76 = *v75;
      v77 = v75[1];

      v78 = v114;
      sub_258D16EE4();
      v97 = sub_258D171B4();
      (*(*(v97 - 8) + 56))(v105, 1, 1, v97);
      (*(v122 + 56))(v107, 1, 1, v123);
      v98 = v120;
      v99 = v106;
      v100 = v78;
      v101 = v121;
      (*(v120 + 16))(v106, v100, v121);
      (*(v98 + 56))(v99, 0, 1, v101);
      sub_258D17194();
      v102 = v127;
      (*(v98 + 8))(v114, v101);
      sub_258D06F6C(v70, type metadata accessor for LiteAcknowledgmentMessageContent);
      return (*(v102 + 8))(v130, v65);
    }

    else
    {
      v82 = sub_258CDB2E4();
      v83 = v130;
      v90 = v82;
      v92 = v91;

      v93 = HIBYTE(v92) & 0xF;
      v129[0] = v90;
      v129[1] = v92;
      if ((v92 & 0x2000000000000000) == 0)
      {
        v93 = v90 & 0xFFFFFFFFFFFFLL;
      }

      v129[2] = 0;
      v129[3] = v93;
      v94 = sub_258D0C5F8(v129);

      Array<A>.spansAsPlainText.getter(v94);

      v95 = sub_258D171B4();
      (*(*(v95 - 8) + 56))(v110, 1, 1, v95);
      (*(v122 + 56))(v108, 1, 1, v123);
      (*(v120 + 56))(v109, 1, 1, v121);
      sub_258D17194();
      v96 = *(v127 + 8);
      v96(v83, v65);
      return (v96)(v128, v65);
    }
  }

  return result;
}

uint64_t sub_258D06EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BF0, &qword_258D198C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258D06F6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_258D06FD0()
{
  result = qword_27F980940;
  if (!qword_27F980940)
  {
    sub_258D171C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980940);
  }

  return result;
}

uint64_t Data._imOptionallyDecompress()()
{
  v0 = sub_258D16AE4();
  v1 = [v0 _imOptionallyDecompressData];

  v2 = sub_258D16AF4();
  return v2;
}

uint64_t LiteMessageCompressor.decode(_:codecID:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v3;
  if (v7 >> 62)
  {
    goto LABEL_43;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    return v8;
  }

LABEL_3:
  v9 = 0;
  while ((v7 & 0xC000000000000001) == 0)
  {
    if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_43:
      v8 = sub_258D17C54();
      if (!v8)
      {
        return v8;
      }

      goto LABEL_3;
    }

    v10 = *(v7 + 8 * v9 + 32);

    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v12 = *(v10 + 16);
    if (cosl_codec_get_id() == a3)
    {
      goto LABEL_13;
    }

    ++v9;
    if (v11 == v8)
    {
      return 0;
    }
  }

  v10 = MEMORY[0x259C99DC0](v9, v7);
  v11 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  sub_258D08CC8(a1, a2, v10, &v28);
  v13 = *(&v28 + 1);
  v8 = v28;
  if (qword_27F9807B8 != -1)
  {
    swift_once();
  }

  v14 = sub_258D16C84();
  __swift_project_value_buffer(v14, qword_27F980BF8);
  sub_258CDBA34(a1, a2);
  sub_258CFA9D0(v8, v13);
  v15 = sub_258D16C64();
  v16 = sub_258D17A54();
  if (!os_log_type_enabled(v15, v16))
  {
    sub_258D0199C(v8, v13);
    sub_258CD7210(a1, a2);
LABEL_31:

    return v8;
  }

  result = swift_slowAlloc();
  v18 = result;
  *result = 134218496;
  v19 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v19 == 2)
    {
      v22 = *(a1 + 16);
      v21 = *(a1 + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (v23)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_28:
    *(result + 4) = v20;
    result = sub_258CD7210(a1, a2);
    *(v18 + 12) = 2048;
    if (v13 >> 60 == 15)
    {
      goto LABEL_29;
    }

    v25 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v25 != 2)
      {
LABEL_29:
        v24 = 0;
LABEL_30:
        *(v18 + 14) = v24;
        sub_258D0199C(v8, v13);
        *(v18 + 22) = 2048;
        *(v18 + 24) = a3;
        _os_log_impl(&dword_258CD3000, v15, v16, "Decompressed %ld bytes to %ld using codec %ld", v18, 0x20u);
        MEMORY[0x259C9A940](v18, -1, -1);
        goto LABEL_31;
      }

      v27 = *(v8 + 16);
      v26 = *(v8 + 24);
      v23 = __OFSUB__(v26, v27);
      v24 = v26 - v27;
      if (!v23)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (!v25)
    {
      v24 = BYTE6(v13);
      goto LABEL_30;
    }

    LODWORD(v24) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      goto LABEL_46;
    }

    v24 = v24;
    goto LABEL_30;
  }

  if (!v19)
  {
    v20 = BYTE6(a2);
    goto LABEL_28;
  }

LABEL_25:
  LODWORD(v20) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v20 = v20;
    goto LABEL_28;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_258D073A4()
{
  v0 = sub_258D16C84();
  __swift_allocate_value_buffer(v0, qword_27F980BF8);
  __swift_project_value_buffer(v0, qword_27F980BF8);
  return sub_258D16C74();
}

uint64_t sub_258D07428@<X0>(uint64_t *a1@<X8>)
{
  result = cosl_codec_map();
  *a1 = result;
  return result;
}

uint64_t sub_258D07458(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return cosl_codec_map();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C28, ">");
  result = sub_258D17B84();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_258D0751C()
{
  v1 = *(v0 + 16);
  cosl_codec_unmap();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_258D07554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v8 = *(a3 + 16);
  result = cosl_codec_get_decoded_size();
  if (result <= 100000)
  {
    v11 = sub_258D09774(result);
    v12 = v10;
    sub_258D08F1C(&v11, 0);

    sub_258D08898(&v11, a3, a1, a2, MEMORY[0x277D82928], a4);
    return sub_258CD7210(v11, v12);
  }

  else
  {
    *a4 = xmmword_258D19940;
  }

  return result;
}

uint64_t sub_258D07638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, __int128 *a7@<X8>)
{
  v10 = *(a3 + 16);
  if (a1)
  {
    v11 = a2 - a1;
  }

  else
  {
    v11 = 0;
  }

  if (a4)
  {
    v12 = a5 - a4;
  }

  else
  {
    v12 = 0;
  }

  result = a6(v10, a1, v11, a4, v12);
  if (!result)
  {
    v18 = xmmword_258D19940;
    goto LABEL_11;
  }

  v14 = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C18, ">>");
    v22[3] = v15;
    v22[4] = sub_258D09694();
    v16 = swift_allocObject();
    v22[0] = v16;
    v16[2] = 0;
    v16[3] = v14;
    v16[4] = a1;
    v16[5] = a2;
    v17 = __swift_project_boxed_opaque_existential_1(v22, v15);
    v19 = *v17;
    v20 = v17[1];
    sub_258D17EA4();
    result = __swift_destroy_boxed_opaque_existential_0(v22);
    v18 = v21;
LABEL_11:
    *a7 = v18;
    return result;
  }

  __break(1u);
  return result;
}

MessagesBlastDoorSupport::LiteMessageCompressor __swiftcall LiteMessageCompressor.init()()
{
  v1 = v0;
  v9 = MEMORY[0x277D84F90];
  v2 = 10;
  sub_258D17C04();
  v3 = &unk_286A0EAB0;
  do
  {
    v4 = *v3;
    v7[0] = *(v3 - 1);
    v7[1] = v4;

    sub_258D0785C(v7, &v8);

    sub_258D17BE4();
    v5 = *(v9 + 16);
    sub_258D17C14();
    sub_258D17C24();
    result.codecs._rawValue = sub_258D17BF4();
    v3 += 2;
    --v2;
  }

  while (v2);
  *v1 = v9;
  return result;
}

uint64_t sub_258D0785C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_258D16A84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = *a1;
  v15 = a1[1];
  v31 = type metadata accessor for LiteMessageCompressor.Codec();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v29 = v15;
  v30 = v14;
  v18 = sub_258D17884();
  v19 = sub_258D17884();
  v20 = [v17 URLForResource:v18 withExtension:v19];

  if (v20)
  {
    sub_258D16A54();

    (*(v4 + 32))(v13, v11, v3);
    (*(v4 + 16))(v8, v13, v3);
    v21 = swift_allocObject();
    v22 = sub_258D16A64();
    v23 = v32;
    v25 = sub_258D07458(v22, v24);
    v20 = v23;
    if (!v23)
    {
      v26 = v25;

      v27 = *(v4 + 8);
      v27(v8, v3);
      result = (v27)(v13, v3);
      *(v21 + 16) = v26;
      *v35 = v21;
      return result;
    }
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_258D17B94();

    v33 = 0xD000000000000015;
    v34 = 0x8000000258D1C150;
    MEMORY[0x259C99B70](v30, v29);
    sub_258D17C44();
    __break(1u);
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t LiteMessageCompressor.encode(_:)(uint64_t id, unint64_t a2)
{
  v133 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  if (*v2 >> 62)
  {
    goto LABEL_158;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_159:
    v7 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_160;
  }

LABEL_3:
  v6 = 0;
  v7 = 0;
  v118 = 0;
  v119 = id;
  v128 = 0;
  v124 = v4 & 0xC000000000000001;
  v8 = a2 >> 62;
  v115 = v4 & 0xFFFFFFFFFFFFFF8;
  v116 = id;
  v113 = (id >> 32) - id;
  v114 = id >> 32;
  v9 = BYTE6(a2);
  v108 = BYTE6(a2) << 32;
  v109 = BYTE6(a2) << 48;
  v10 = 0xF000000000000000;
  v11 = MEMORY[0x277D84F98];
  v122 = BYTE6(a2);
  v123 = v4;
  v125 = a2 >> 62;
  v121 = v5;
  v117 = a2;
  while (1)
  {
    if (v124)
    {
      id = MEMORY[0x259C99DC0](v6, v4);
      v129 = id;
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_140;
      }
    }

    else
    {
      if (v6 >= *(v115 + 16))
      {
        goto LABEL_143;
      }

      v129 = *(v4 + 8 * v6 + 32);

      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
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
        __break(1u);
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
        v95 = id;
        v5 = sub_258D17C54();
        id = v95;
        if (!v5)
        {
          goto LABEL_159;
        }

        goto LABEL_3;
      }
    }

    v16 = v11;
    v126 = v15;
    v127 = v6;
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        memset(v130, 0, 14);
        *&v132 = v119;
        *(&v132 + 1) = a2;
        v32 = v128;
        sub_258D08F1C(&v132, 0);
        v131 = v132;
        v26 = v129;

        v33 = MEMORY[0x277D82930];
        v34 = v130;
        v35 = v129;
LABEL_55:
        sub_258D08898(&v131, v35, v130, v34, v33, &v132);
        sub_258CD7210(v131, *(&v131 + 1));
        goto LABEL_61;
      }

      v22 = v7;
      v23 = *(v119 + 16);
      v24 = *(v119 + 24);
      id = sub_258D16984();
      v25 = id;
      v26 = v129;
      if (id)
      {
        id = sub_258D169B4();
        if (__OFSUB__(v23, id))
        {
          goto LABEL_148;
        }

        v25 += v23 - id;
      }

      v27 = __OFSUB__(v24, v23);
      v28 = v24 - v23;
      if (v27)
      {
        goto LABEL_145;
      }

      v29 = sub_258D169A4();
      id = 0;
      if (v29 >= v28)
      {
        v4 = v28;
      }

      else
      {
        v4 = v29;
      }

      if (v25)
      {
        v30 = v4 + v25;
      }

      else
      {
        v30 = 0;
      }

      v31 = 0xC000000000000000;
      v7 = v22;
      if (v25 && v4)
      {
        v32 = v128;
        if (v4 <= 14)
        {
          if (v4 < 0)
          {
            goto LABEL_154;
          }

          id = 0;
          v31 = v110 & 0xF00000000000000 | (v4 << 48);
          v110 = v31;
          goto LABEL_60;
        }

        goto LABEL_51;
      }

      v32 = v128;
    }

    else
    {
      if (!v8)
      {
        v130[0] = v119;
        LOWORD(v130[1]) = a2;
        BYTE2(v130[1]) = BYTE2(a2);
        BYTE3(v130[1]) = BYTE3(a2);
        BYTE4(v130[1]) = BYTE4(a2);
        BYTE5(v130[1]) = BYTE5(a2);
        if (v9)
        {
          if (v9 <= 0xE)
          {
            v21 = 0;
            v20 = v112 & 0xF00000000000000 | v109;
            v112 = v20;
          }

          else
          {
            v17 = sub_258D169C4();
            v18 = *(v17 + 48);
            v19 = *(v17 + 52);
            swift_allocObject();
            v20 = sub_258D16994() | 0x4000000000000000;
            v21 = v108;
          }
        }

        else
        {
          v21 = 0;
          v20 = 0xC000000000000000;
        }

        *&v132 = v21;
        *(&v132 + 1) = v20;
        v32 = v128;
        sub_258D08F1C(&v132, 0);
        v131 = v132;

        v33 = MEMORY[0x277D82930];
        v34 = v130 + v9;
        v26 = v129;
        v35 = v129;
        goto LABEL_55;
      }

      if (v114 < v116)
      {
        goto LABEL_144;
      }

      v25 = sub_258D16984();
      if (v25)
      {
        id = sub_258D169B4();
        v26 = v129;
        if (__OFSUB__(v116, id))
        {
          goto LABEL_149;
        }

        v25 += v116 - id;
      }

      else
      {
        v26 = v129;
      }

      v36 = sub_258D169A4();
      id = 0;
      if (v36 >= v113)
      {
        v4 = v113;
      }

      else
      {
        v4 = v36;
      }

      if (v25)
      {
        v30 = v4 + v25;
      }

      else
      {
        v30 = 0;
      }

      v31 = 0xC000000000000000;
      v32 = v128;
      if (v25 && v4)
      {
        if (v4 <= 14)
        {
          if (v4 < 0)
          {
            goto LABEL_155;
          }

          id = 0;
          v31 = v111 & 0xF00000000000000 | (v4 << 48);
          v111 = v31;
          goto LABEL_60;
        }

LABEL_51:
        v37 = sub_258D169C4();
        v38 = *(v37 + 48);
        v39 = *(v37 + 52);
        swift_allocObject();
        v40 = sub_258D16994();
        if (v4 >= 0x7FFFFFFF)
        {
          sub_258D16AD4();
          id = swift_allocObject();
          *(id + 16) = 0;
          *(id + 24) = v4;
          v31 = v40 | 0x8000000000000000;
        }

        else
        {
          id = v4 << 32;
          v31 = v40 | 0x4000000000000000;
        }

        v11 = v16;
      }
    }

LABEL_60:
    *&v132 = id;
    *(&v132 + 1) = v31;
    sub_258D08F1C(&v132, 0);
    v131 = v132;

    sub_258D08898(&v131, v26, v25, v30, MEMORY[0x277D82930], &v132);
    sub_258CD7210(v131, *(&v131 + 1));
    v4 = v123;
LABEL_61:
    v42 = *(&v132 + 1);
    v41 = v132;
    v43 = *(v26 + 16);
    id = cosl_codec_get_id();
    v128 = v32;
    if (v42 >> 60 == 15)
    {
      v44 = id;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v132 = v11;
      id = sub_258CF61E4(v44);
      v47 = v16[2];
      v48 = (v46 & 1) == 0;
      v27 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v27)
      {
        goto LABEL_141;
      }

      v50 = v46;
      if (v16[3] >= v49)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v76 = v7;
          v77 = id;
          sub_258D09490();
          id = v77;
          v7 = v76;
        }
      }

      else
      {
        sub_258D0922C(v49, isUniquelyReferenced_nonNull_native);
        id = sub_258CF61E4(v44);
        if ((v50 & 1) != (v51 & 1))
        {
          goto LABEL_168;
        }
      }

      v9 = v122;
      v11 = v132;
      if ((v50 & 1) == 0)
      {
        *(v132 + 8 * (id >> 6) + 64) |= 1 << id;
        *(v11[6] + 8 * id) = v44;
        *(v11[7] + 8 * id) = -1;

        v56 = v11[2];
        v27 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v27)
        {
          goto LABEL_146;
        }

        v11[2] = v57;
        goto LABEL_6;
      }

      *(*(v132 + 56) + 8 * id) = -1;
      goto LABEL_111;
    }

    a2 = v42 >> 62;
    v120 = v7;
    if ((v42 >> 62) > 1)
    {
      if (a2 == 2)
      {
        v55 = *(v41 + 16);
        v54 = *(v41 + 24);
        v53 = v54 - v55;
        if (__OFSUB__(v54, v55))
        {
          goto LABEL_150;
        }

        v52 = v10;
      }

      else
      {
        v52 = v10;
        v53 = 0;
      }
    }

    else if (a2)
    {
      if (__OFSUB__(HIDWORD(v41), v41))
      {
        goto LABEL_151;
      }

      v52 = v10;
      v53 = HIDWORD(v41) - v41;
    }

    else
    {
      v52 = v10;
      v53 = BYTE6(v42);
    }

    v4 = id;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    *&v132 = v11;
    v59 = sub_258CF61E4(v4);
    v61 = v16;
    v62 = v59;
    v63 = v16[2];
    v64 = (v60 & 1) == 0;
    id = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_142;
    }

    v65 = v60;
    if (v61[3] < id)
    {
      break;
    }

    if ((v58 & 1) == 0)
    {
      id = sub_258D09490();
    }

LABEL_87:
    v10 = v52;
    v11 = v132;
    if (v65)
    {
      *(*(v132 + 56) + 8 * v62) = v53;
    }

    else
    {
      *(v132 + 8 * (v62 >> 6) + 64) |= 1 << v62;
      *(v11[6] + 8 * v62) = v4;
      *(v11[7] + 8 * v62) = v53;
      v67 = v11[2];
      v27 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v27)
      {
        goto LABEL_147;
      }

      v11[2] = v68;
    }

    v7 = v120;
    v9 = v122;
    v4 = v123;
    if (v52 >> 60 == 15)
    {
      v69 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v71 = v52 >> 62;
      if ((v52 >> 62) > 1)
      {
        if (v71 == 2)
        {
          v75 = *(v120 + 16);
          v74 = *(v120 + 24);
          v27 = __OFSUB__(v74, v75);
          v69 = v74 - v75;
          if (v27)
          {
            goto LABEL_157;
          }
        }

        else
        {
          v69 = 0;
        }
      }

      else if (v71)
      {
        LODWORD(v69) = HIDWORD(v120) - v120;
        if (__OFSUB__(HIDWORD(v120), v120))
        {
          goto LABEL_156;
        }

        v69 = v69;
      }

      else
      {
        v69 = BYTE6(v52);
      }
    }

    if (a2 > 1)
    {
      if (a2 != 2)
      {
        a2 = v117;
        if (v69 <= 0)
        {
          goto LABEL_110;
        }

        goto LABEL_5;
      }

      v73 = *(v41 + 16);
      v72 = *(v41 + 24);
      v27 = __OFSUB__(v72, v73);
      v70 = v72 - v73;
      if (v27)
      {
        goto LABEL_152;
      }
    }

    else if (a2)
    {
      LODWORD(v70) = HIDWORD(v41) - v41;
      if (__OFSUB__(HIDWORD(v41), v41))
      {
        goto LABEL_153;
      }

      v70 = v70;
    }

    else
    {
      v70 = BYTE6(v42);
    }

    a2 = v117;
    if (v70 >= v69)
    {
LABEL_110:
      sub_258D0199C(v41, v42);
LABEL_111:

      goto LABEL_6;
    }

LABEL_5:
    v12 = *(v129 + 16);
    v13 = v11;
    v14 = cosl_codec_get_id();

    id = sub_258D0199C(v120, v10);
    v7 = v41;
    v10 = v42;
    v118 = v14;
    v11 = v13;
LABEL_6:
    v6 = v127 + 1;
    LODWORD(v8) = v125;
    if (v126 == v121)
    {
      if (v10 >> 60 != 15)
      {
        sub_258CDBA34(v7, v10);
        if (qword_27F9807B8 != -1)
        {
          swift_once();
        }

        v78 = sub_258D16C84();
        __swift_project_value_buffer(v78, qword_27F980BF8);
        sub_258CFA9D0(v7, v10);
        sub_258CDBA34(v119, a2);
        v79 = sub_258D16C64();
        v80 = sub_258D17A54();
        if (!os_log_type_enabled(v79, v80))
        {
          sub_258D0199C(v7, v10);
          sub_258CD7210(v119, a2);
          sub_258D0199C(v7, v10);

LABEL_165:
          sub_258CFA9D0(v7, v10);

          sub_258D0199C(v7, v10);
          v106 = *MEMORY[0x277D85DE8];
          return v7;
        }

        v81 = v7;
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v132 = v83;
        *v82 = 134218754;
        if (v125 > 1)
        {
          if (v125 == 2)
          {
            v85 = *(v119 + 16);
            v84 = *(v119 + 24);
            v9 = v84 - v85;
            if (!__OFSUB__(v84, v85))
            {
              goto LABEL_129;
            }

            __break(1u);
          }

          v9 = 0;
        }

        else if (v125)
        {
          if (__OFSUB__(HIDWORD(v119), v119))
          {
            __break(1u);
            goto LABEL_167;
          }

          v9 = HIDWORD(v119) - v119;
        }

LABEL_129:
        *(v82 + 4) = v9;
        sub_258CD7210(v119, a2);
        *(v82 + 12) = 2048;
        v86 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          if (v86 != 2)
          {
            v87 = 0;
            goto LABEL_139;
          }

          v89 = *(v81 + 16);
          v88 = *(v81 + 24);
          v27 = __OFSUB__(v88, v89);
          v87 = v88 - v89;
          if (!v27)
          {
            goto LABEL_139;
          }

          __break(1u);
        }

        else if (!v86)
        {
          v87 = BYTE6(v10);
LABEL_139:
          *(v82 + 14) = v87;
          *(v82 + 22) = 2048;
          *(v82 + 24) = v118;
          sub_258D0199C(v81, v10);
          *(v82 + 32) = 2080;

          v90 = sub_258D17874();
          v92 = v91;

          v93 = sub_258CF5C38(v90, v92, &v132);

          *(v82 + 34) = v93;
          _os_log_impl(&dword_258CD3000, v79, v80, "Compressed %ld bytes to %ld (codec: %ld) (all results: %s)", v82, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v83);
          v94 = v83;
          v7 = v81;
          MEMORY[0x259C9A940](v94, -1, -1);
          MEMORY[0x259C9A940](v82, -1, -1);
          sub_258D0199C(v81, v10);
LABEL_164:

          goto LABEL_165;
        }

        LODWORD(v87) = HIDWORD(v81) - v81;
        if (!__OFSUB__(HIDWORD(v81), v81))
        {
          v87 = v87;
          goto LABEL_139;
        }

LABEL_167:
        __break(1u);
      }

LABEL_160:
      if (qword_27F9807B8 != -1)
      {
        swift_once();
      }

      v96 = sub_258D16C84();
      __swift_project_value_buffer(v96, qword_27F980BF8);
      v79 = sub_258D16C64();
      v97 = sub_258D17A54();
      if (os_log_type_enabled(v79, v97))
      {
        v98 = swift_slowAlloc();
        v99 = v7;
        v100 = swift_slowAlloc();
        *&v132 = v100;
        *v98 = 136315138;

        v101 = sub_258D17874();
        v103 = v102;

        v104 = sub_258CF5C38(v101, v103, &v132);

        *(v98 + 4) = v104;
        _os_log_impl(&dword_258CD3000, v79, v97, "Did not compress data, no results were better than original size (all results: %s)", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v100);
        v105 = v100;
        v7 = v99;
        MEMORY[0x259C9A940](v105, -1, -1);
        MEMORY[0x259C9A940](v98, -1, -1);
      }

      goto LABEL_164;
    }
  }

  sub_258D0922C(id, v58);
  id = sub_258CF61E4(v4);
  if ((v65 & 1) == (v66 & 1))
  {
    v62 = id;
    goto LABEL_87;
  }

LABEL_168:
  result = sub_258D17E54();
  __break(1u);
  return result;
}

uint64_t sub_258D08898@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, __int128 *a6@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v11 = a1[1];
  v13 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (v13)
    {

      sub_258CDBA34(v12, v11);
      sub_258CD7210(v12, v11);
      *&v37 = v12;
      *(&v37 + 1) = v11 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_258D19950;
      sub_258CD7210(0, 0xC000000000000000);
      sub_258D08BD4(&v37, a2, a3, a4, a5, a6);

      v28 = *(&v37 + 1) | 0x4000000000000000;
      *a1 = v37;
      a1[1] = v28;
    }

    else
    {

      sub_258CD7210(v12, v11);
      *&v37 = v12;
      WORD4(v37) = v11;
      BYTE10(v37) = BYTE2(v11);
      BYTE11(v37) = BYTE3(v11);
      BYTE12(v37) = BYTE4(v11);
      BYTE13(v37) = BYTE5(v11);
      BYTE14(v37) = BYTE6(v11);
      sub_258D07638(&v37, &v37 + BYTE6(v11), a2, a3, a4, a5, a6);
      v14 = v37;
      v15 = DWORD2(v37) | ((WORD6(v37) | (BYTE14(v37) << 16)) << 32);

      *a1 = v14;
      a1[1] = v15;
    }

    goto LABEL_14;
  }

  if (v13 != 2)
  {
    *(&v37 + 7) = 0;
    *&v37 = 0;
    sub_258D07638(&v37, &v37, a2, a3, a4, a5, a6);

LABEL_14:
    v29 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_258CD7210(v12, v11);
  *&v37 = v12;
  *(&v37 + 1) = v11 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_258D19950;
  sub_258CD7210(0, 0xC000000000000000);
  sub_258D16A94();
  v17 = *(&v37 + 1);
  v19 = *(v37 + 16);
  v18 = *(v37 + 24);
  v20 = sub_258D16984();
  if (v20)
  {
    v21 = v20;
    v22 = sub_258D169B4();
    v23 = v19 - v22;
    if (__OFSUB__(v19, v22))
    {
      __break(1u);
    }

    else
    {
      v24 = __OFSUB__(v18, v19);
      v25 = v18 - v19;
      if (!v24)
      {
        v26 = sub_258D169A4();
        if (v26 >= v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

        sub_258D07638(v21 + v23, v21 + v23 + v27, a2, a3, a4, a5, a6);

        *a1 = v37;
        a1[1] = v17 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_258D08BD4@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, __int128 *a6@<X8>)
{
  result = sub_258D16AA4();
  v14 = *a1;
  v13 = a1[1];
  if (v13 < v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = a6;
  v22 = a3;
  v15 = *(a1 + 1);

  result = sub_258D16984();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v16 = result;
  result = sub_258D169B4();
  v17 = v14 - result;
  if (__OFSUB__(v14, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = v13 - v14;
  v19 = sub_258D169A4();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  sub_258D07638(v16 + v17, v16 + v17 + v20, a2, v22, a4, a5, v21);
}

uint64_t sub_258D08CC8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v12, 0, 14);
      v6 = v12;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
      v6 = v12 + BYTE6(a2);
LABEL_9:
      sub_258D07554(v12, v6, a3, a4);
      goto LABEL_10;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_258D08E68(v7, v8, a3, a4);
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_258D08E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, __int128 *a4@<X8>)
{
  result = sub_258D16984();
  v9 = result;
  if (result)
  {
    result = sub_258D169B4();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_258D169A4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_258D07554(v9, v15, a3, a4);
}

uint64_t *sub_258D08F1C(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_258CD7210(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_258D19950;
      sub_258CD7210(0, 0xC000000000000000);
      result = sub_258D09184(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_258CD7210(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *result;

  sub_258CD7210(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_258D19950;
  sub_258CD7210(0, 0xC000000000000000);
  sub_258D16A94();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_258D16984();
  if (result)
  {
    v13 = result;
    v14 = sub_258D169B4();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_258D169A4();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_258D09184(int *a1, int a2)
{
  result = sub_258D16AA4();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_258D16984();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_258D169B4();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_258D169A4();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_258D0922C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C10, ":>");
  result = sub_258D17C74();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_258D17EB4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_258D09490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C10, ":>");
  v2 = *v0;
  v3 = sub_258D17C64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_258D095DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_258D09624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_258D09694()
{
  result = qword_27F980C20;
  if (!qword_27F980C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F980C18, ">>");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C20);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_258D09774(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_258D10C08(result);
    }

    else
    {
      v2 = sub_258D169C4();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_258D16994();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_258D16AD4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t LiteRelayTextMessageUnpacker.unpack(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BE0, &qword_258D198B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v67 - v6;
  v7 = sub_258D16B54();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v7);
  v72 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258D16EF4();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v10);
  v74 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for LiteRelayAcknowledgmentMessageContent();
  v13 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BE8, &qword_258D198B8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v67 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v67 - v24;
  v26 = sub_258D17384();
  v78 = *(v26 - 8);
  v27 = *(v78 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  v33 = v80;
  sub_258CDBA34(a1, v80);
  v82[0] = sub_258D042B4(a1, v33);
  v82[1] = v34;
  v82[2] = v35;
  v36 = v83;
  result = sub_258D04144(3);
  if (v36)
  {
  }

  v68 = v23;
  v69 = v25;
  v67 = v20;
  v38 = v78;
  v39 = v79;
  v83 = v32;
  v80 = v26;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v40 = v83;
    sub_258D17374();
    v41 = v38;
    v42 = *(v38 + 16);
    v43 = v80;
    v42(v30, v40, v80);
    v44 = (*(v41 + 88))(v30, v43);
    if (v44 == *MEMORY[0x277CF23F8])
    {
      sub_258D12E3C();

      (*(v75 + 56))(v69, 1, 1, v76);
      sub_258D173A4();
      return (*(v41 + 8))(v83, v80);
    }

    else if (v44 == *MEMORY[0x277CF23F0])
    {
      sub_258D12830(v82, v15);

      (*(v70 + 16))(v72, &v15[*(v39 + 20)], v71);
      v45 = sub_258D16ED4();
      v46 = *(v45 - 8);
      v47 = v73;
      (*(v46 + 16))(v73, v15, v45);
      (*(v46 + 56))(v47, 0, 1, v45);
      v48 = v39;
      v49 = &v15[*(v39 + 24)];
      v51 = *v49;
      v50 = *(v49 + 1);

      v52 = v74;
      sub_258D16EE4();
      v53 = v75;
      v54 = v68;
      v55 = v48;
      v56 = v76;
      (*(v75 + 16))(v68, v52, v76);
      (*(v53 + 56))(v54, 0, 1, v56);
      v57 = &v15[*(v55 + 28)];
      v59 = *v57;
      v58 = *(v57 + 1);

      sub_258D173A4();
      (*(v53 + 8))(v52, v56);
      sub_258D0A04C(v15);
      return (*(v41 + 8))(v83, v43);
    }

    else
    {
      sub_258D14780();
      v60 = sub_258CDB2E4();
      v62 = v61;

      v63 = HIBYTE(v62) & 0xF;
      v81[0] = v60;
      v81[1] = v62;
      if ((v62 & 0x2000000000000000) == 0)
      {
        v63 = v60 & 0xFFFFFFFFFFFFLL;
      }

      v81[2] = 0;
      v81[3] = v63;
      v64 = sub_258D0C5F8(v81);

      Array<A>.spansAsPlainText.getter(v64);

      (*(v75 + 56))(v67, 1, 1, v76);
      sub_258D173A4();
      v65 = *(v41 + 8);
      v66 = v80;
      v65(v83, v80);
      return (v65)(v30, v66);
    }
  }

  return result;
}

uint64_t sub_258D0A04C(uint64_t a1)
{
  v2 = type metadata accessor for LiteRelayAcknowledgmentMessageContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258D0A0AC()
{
  result = qword_27F980950;
  if (!qword_27F980950)
  {
    sub_258D173B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980950);
  }

  return result;
}

char *LiteTextParser.parse(_:)(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v5[0] = a1;
  v5[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5[2] = 0;
  v5[3] = v2;

  v3 = sub_258D0C5F8(v5);

  return v3;
}

uint64_t Array<A>.spansAsPlainText.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    while (1)
    {
      v8 = *v2++;
      v7 = v8;
      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        if (v9 == 1)
        {
          goto LABEL_5;
        }

        v10 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        v5 = Array<A>.spansAsPlainText.getter(v10);
      }

      else
      {
        v4 = *(v7 + 16);
        v3 = *(v7 + 24);

        v5 = v4;
        v6 = v3;
      }

      MEMORY[0x259C99B70](v5, v6);

LABEL_5:
      if (!--v1)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_258D0A258(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      v8 = v6 >> 62;
      v9 = *v4 >> 62;
      if (v6 >> 62)
      {
        if (v8 == 1)
        {
          if (v9 != 1)
          {
            return 0;
          }
        }

        else
        {
          if (v9 != 2)
          {
            return 0;
          }

          v10 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();
          swift_retain_n();
          LOBYTE(v10) = sub_258D0A258(v10, v11);

          if ((v10 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v9)
        {
          return 0;
        }

        v12 = *(v5 + 16) == *(v7 + 16) && *(v5 + 24) == *(v7 + 24);
        if (!v12 && (sub_258D17E14() & 1) == 0)
        {
          return 0;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_258D0A394()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_258D0A3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_258D17E14() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258D17E14();

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

uint64_t sub_258D0A488(uint64_t a1)
{
  v2 = sub_258D0D290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0A4C4(uint64_t a1)
{
  v2 = sub_258D0D290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258D0A500()
{
  v1 = 0x72656B72616DLL;
  if (*v0 != 1)
  {
    v1 = 0x7475626972747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865546E69616C70;
  }
}

uint64_t sub_258D0A568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258D0E284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258D0A59C(uint64_t a1)
{
  v2 = sub_258D0D23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0A5D8(uint64_t a1)
{
  v2 = sub_258D0D23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258D0A620(uint64_t a1)
{
  v2 = sub_258D0D38C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0A65C(uint64_t a1)
{
  v2 = sub_258D0D38C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258D0A698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_258D17E14();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_258D0A718(uint64_t a1)
{
  v2 = sub_258D0D434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0A754(uint64_t a1)
{
  v2 = sub_258D0D434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiteTextSpan.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C38, &qword_258D19A20);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C40, &qword_258D19A28);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C48, &qword_258D19A30);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C50, &qword_258D19A38);
  v37 = *(v15 - 8);
  v38 = v15;
  v16 = *(v37 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v19 = *v2;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D23C();
  sub_258D17F34();
  if (!(v19 >> 62))
  {
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v40 = 0;
    sub_258D0D434();

    v21 = v38;
    sub_258D17D64();
    sub_258D17DC4();

    (*(v31 + 8))(v14, v11);
    return (*(v37 + 8))(v18, v21);
  }

  if (v19 >> 62 == 1)
  {
    v41 = 1;
    sub_258D0D38C();
    v21 = v38;
    sub_258D17D64();
    sub_258D0D3E0();
    sub_258D17DE4();
    (*(v32 + 8))(v10, v7);
    return (*(v37 + 8))(v18, v21);
  }

  v25 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v44 = 2;
  sub_258D0D290();
  v26 = v33;
  v27 = v38;
  sub_258D17D64();
  v43 = 0;
  sub_258D0D2E4();
  v29 = v35;
  v28 = v36;
  sub_258D17DE4();
  if (v28)
  {
    (*(v34 + 8))(v26, v29);
    return (*(v37 + 8))(v18, v27);
  }

  else
  {
    v39 = v25;
    v42 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C70, &qword_258D19A40);
    sub_258D0D4DC(&qword_27F980C78, sub_258D0D338);
    sub_258D17DE4();
    (*(v34 + 8))(v26, v29);
    return (*(v37 + 8))(v18, v27);
  }
}

uint64_t LiteTextSpan.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CA0, &qword_258D19A48);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v56 = &v49 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CA8, &qword_258D19A50);
  v52 = *(v50 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CB0, &qword_258D19A58);
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CB8, &qword_258D19A60);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_258D0D23C();
  v21 = v57;
  sub_258D17F14();
  if (!v21)
  {
    v22 = v56;
    v49 = v15;
    v57 = v18;
    v23 = sub_258D17D54();
    v24 = v23;
    v25 = *(v23 + 16);
    if (v25)
    {
      v26 = *(v23 + 32);
      if (v25 == 1 && v26 != 3)
      {
        if (*(v23 + 32))
        {
          if (v26 != 1)
          {
            v63 = 2;
            sub_258D0D290();
            v38 = v22;
            v39 = v57;
            sub_258D17CA4();
            v40 = v55;
            v52 = v24;
            v41 = swift_allocObject();
            v62 = 0;
            sub_258D0D488();
            v42 = v53;
            v43 = v38;
            sub_258D17D34();
            v44 = v49;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980C70, &qword_258D19A40);
            v61 = 1;
            sub_258D0D4DC(&qword_27F980CD0, sub_258D0D554);
            sub_258D17D34();
            (*(v54 + 8))(v43, v42);
            (*(v44 + 8))(v39, v14);
            swift_unknownObjectRelease();
            v37 = v41 | 0x8000000000000000;
LABEL_15:
            *v40 = v37;
            return __swift_destroy_boxed_opaque_existential_0(v58);
          }

          v60 = 1;
          sub_258D0D38C();
          v33 = v9;
          v34 = v57;
          sub_258D17CA4();
          v35 = swift_allocEmptyBox();
          sub_258D0D5A8();
          v36 = v50;
          sub_258D17D34();
          (*(v52 + 8))(v33, v36);
          (*(v49 + 8))(v34, v14);
          swift_unknownObjectRelease();
          v37 = v35 | 0x4000000000000000;
        }

        else
        {
          v59 = 0;
          sub_258D0D434();
          sub_258D17CA4();
          v52 = v24;
          v37 = swift_allocObject();
          v45 = sub_258D17D14();
          v47 = v46;
          (*(v51 + 8))(v13, v10);
          (*(v49 + 8))(v57, v14);
          swift_unknownObjectRelease();
          *(v37 + 16) = v45;
          *(v37 + 24) = v47;
        }

        v40 = v55;
        goto LABEL_15;
      }
    }

    v28 = sub_258D17BC4();
    swift_allocError();
    v30 = v29;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CC0, &qword_258D19A68) + 48);
    *v30 = &type metadata for LiteTextSpan;
    v32 = v57;
    sub_258D17CB4();
    sub_258D17BB4();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    (*(v49 + 8))(v32, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t sub_258D0B464(uint64_t a1)
{
  v2 = sub_258D0D5FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0B4A0(uint64_t a1)
{
  v2 = sub_258D0D5FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258D0B4E8(uint64_t a1)
{
  v2 = sub_258D0D650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0B524(uint64_t a1)
{
  v2 = sub_258D0D650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiteTextAttribute.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CE8, &qword_258D19A70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CF0, &qword_258D19A78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D5FC();
  sub_258D17F34();
  sub_258D0D650();
  sub_258D17D64();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t LiteTextAttribute.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D08, &qword_258D19A80);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D10, &qword_258D19A88);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D5FC();
  sub_258D17F14();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(sub_258D17D54() + 16) == 1)
    {
      sub_258D0D650();
      sub_258D17CA4();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = sub_258D17BC4();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CC0, &qword_258D19A68) + 48);
      *v16 = &type metadata for LiteTextAttribute;
      sub_258D17CB4();
      sub_258D17BB4();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_258D0BA44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CE8, &qword_258D19A70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CF0, &qword_258D19A78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D5FC();
  sub_258D17F34();
  sub_258D0D650();
  sub_258D17D64();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_258D0BC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_258D17E14();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_258D0BCA4(uint64_t a1)
{
  v2 = sub_258D0D6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0BCE0(uint64_t a1)
{
  v2 = sub_258D0D6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258D0BD1C(uint64_t a1)
{
  v2 = sub_258D0D6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0BD58(uint64_t a1)
{
  v2 = sub_258D0D6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiteTextMarker.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D18, &qword_258D19A90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D20, &qword_258D19A98);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D6A4();
  sub_258D17F34();
  sub_258D0D6F8();
  sub_258D17D64();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t LiteTextMarker.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D38, &qword_258D19AA0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D40, &qword_258D19AA8);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D6A4();
  sub_258D17F14();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(sub_258D17D54() + 16) == 1)
    {
      sub_258D0D6F8();
      sub_258D17CA4();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = sub_258D17BC4();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980CC0, &qword_258D19A68) + 48);
      *v16 = &type metadata for LiteTextMarker;
      sub_258D17CB4();
      sub_258D17BB4();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_258D0C2A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D18, &qword_258D19A90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980D20, &qword_258D19A98);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0D6A4();
  sub_258D17F34();
  sub_258D0D6F8();
  sub_258D17D64();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t static LiteControlCharacters.all.setter(void *a1)
{
  swift_beginAccess();
  off_27F980C30 = a1;
}

uint64_t sub_258D0C5A0(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_27F980C30 = v1;
}

char *sub_258D0C5F8(uint64_t a1)
{
  v51 = 0;
  v52 = 0xE000000000000000;
  v50 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v2 = sub_258D17964();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v46 = xmmword_258D19090;
    do
    {
      if (v4 == 1 && v5 == 0xE100000000000000 || (sub_258D17E14() & 1) != 0)
      {

        v8 = *(a1 + 8);
        v47 = *a1;
        v48 = v8;
        v49 = *(a1 + 16);

        v4 = sub_258D17964();
        v5 = v9;

        if (v5)
        {
          v10 = swift_beginAccess();
          v11 = off_27F980C30;
          v47 = v4;
          v48 = v5;
          MEMORY[0x28223BE20](v10);
          v45 = &v47;

          v12 = sub_258D0D0B4(sub_258D0E4BC, v44, v11);

          if (v12)
          {
            sub_258D17964();

            goto LABEL_13;
          }
        }

        sub_258D0CEB4(a1, &v47);
        sub_258D0CCBC(&v47, &v51, &v50);
        v6 = v47;
      }

      else
      {
        if ((v4 != 2 || v5 != 0xE100000000000000) && (sub_258D17E14() & 1) == 0)
        {
          if (v4 == 3 && v5 == 0xE100000000000000 || (sub_258D17E14() & 1) != 0)
          {

            break;
          }

          if (v4 == 25 && v5 == 0xE100000000000000 || (sub_258D17E14() & 1) != 0)
          {

            swift_beginAccess();
            MEMORY[0x259C99B70](2570, 0xE200000000000000);
            swift_endAccess();
            v34 = v51;
            v33 = v52;
            v35 = HIBYTE(v52) & 0xF;
            if ((v52 & 0x2000000000000000) == 0)
            {
              v35 = v51 & 0xFFFFFFFFFFFFLL;
            }

            if (!v35)
            {
              goto LABEL_6;
            }

            v36 = swift_allocObject();
            *(v36 + 16) = v34;
            *(v36 + 24) = v33;
            swift_beginAccess();
            v37 = v50;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_258D03708(0, *(v37 + 2) + 1, 1, v37);
            }

            v39 = *(v37 + 2);
            v38 = *(v37 + 3);
            if (v39 >= v38 >> 1)
            {
              v37 = sub_258D03708((v38 > 1), v39 + 1, 1, v37);
            }

            *(v37 + 2) = v39 + 1;
            *&v37[8 * v39 + 32] = v36;
            v50 = v37;
            swift_endAccess();
            v51 = 0;
            v52 = 0xE000000000000000;
            goto LABEL_14;
          }

          v40 = swift_beginAccess();
          v41 = off_27F980C30;
          v47 = v4;
          v48 = v5;
          MEMORY[0x28223BE20](v40);
          v45 = &v47;

          v42 = sub_258D0D0B4(sub_258D0E3A8, v44, v41);

          if (v42)
          {
LABEL_14:

            goto LABEL_6;
          }

LABEL_13:
          swift_beginAccess();
          MEMORY[0x259C99B60](v4, v5);
          swift_endAccess();
          goto LABEL_14;
        }

        v13 = sub_258D17964();
        if (v14)
        {
          v15 = v13;
          v16 = v14;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980E08, &qword_258D1A5B0);
          v17 = swift_allocObject();
          *(v17 + 16) = v46;
          *(v17 + 32) = v15;
          *(v17 + 40) = v16;
          v47 = v17;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980E10, &qword_258D1A5B8);
          sub_258D0E3DC();
          v18 = sub_258D17994();
          v20 = HIBYTE(v19) & 0xF;
          v47 = v18;
          v48 = v19;
          if ((v19 & 0x2000000000000000) == 0)
          {
            v20 = v18 & 0xFFFFFFFFFFFFLL;
          }

          *&v49 = 0;
          *(&v49 + 1) = v20;
          sub_258D17964();

          v21 = swift_allocObject();
          *(v21 + 16) = sub_258D0C5F8(a1);
          v22 = v21 | 0x8000000000000000;
        }

        else
        {
          v22 = 0xF000000000000007;
        }

        v24 = v51;
        v23 = v52;
        v25 = HIBYTE(v52) & 0xF;
        if ((v52 & 0x2000000000000000) == 0)
        {
          v25 = v51 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          v26 = swift_allocObject();
          *(v26 + 16) = v24;
          *(v26 + 24) = v23;
          swift_beginAccess();
          v27 = v50;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_258D03708(0, *(v27 + 2) + 1, 1, v27);
          }

          v29 = *(v27 + 2);
          v28 = *(v27 + 3);
          if (v29 >= v28 >> 1)
          {
            v27 = sub_258D03708((v28 > 1), v29 + 1, 1, v27);
          }

          *(v27 + 2) = v29 + 1;
          *&v27[8 * v29 + 32] = v26;
          v50 = v27;
          swift_endAccess();
          v51 = 0;
          v52 = 0xE000000000000000;
        }

        if ((~v22 & 0xF000000000000007) == 0)
        {
          goto LABEL_6;
        }

        swift_beginAccess();
        v30 = v50;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_258D03708(0, *(v30 + 2) + 1, 1, v30);
        }

        v32 = *(v30 + 2);
        v31 = *(v30 + 3);
        if (v32 >= v31 >> 1)
        {
          v30 = sub_258D03708((v31 > 1), v32 + 1, 1, v30);
        }

        *(v30 + 2) = v32 + 1;
        *&v30[8 * v32 + 32] = v22;
        v50 = v30;
        swift_endAccess();
        v6 = v22;
      }

      sub_258D0E3C4(v6);
LABEL_6:
      v4 = sub_258D17964();
      v5 = v7;
    }

    while (v7);
  }

  v47 = 0xF000000000000007;
  sub_258D0CCBC(&v47, &v51, &v50);

  swift_beginAccess();
  return v50;
}

uint64_t sub_258D0CCBC(uint64_t *a1, uint64_t *a2, char **a3)
{
  v5 = *a1;
  result = swift_beginAccess();
  v7 = *a2;
  v8 = a2[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v8;
    swift_beginAccess();
    v11 = *a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_258D03708(0, *(v11 + 2) + 1, 1, v11);
      *a3 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_258D03708((v13 > 1), v14 + 1, 1, v11);
      *a3 = v11;
    }

    *(v11 + 2) = v14 + 1;
    *&v11[8 * v14 + 32] = v10;
    swift_endAccess();
    swift_beginAccess();
    v15 = a2[1];
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }

  if ((~v5 & 0xF000000000000007) != 0)
  {
    swift_beginAccess();
    v16 = *a3;

    v17 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v16;
    if ((v17 & 1) == 0)
    {
      v16 = sub_258D03708(0, *(v16 + 2) + 1, 1, v16);
      *a3 = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_258D03708((v18 > 1), v19 + 1, 1, v16);
      *a3 = v16;
    }

    *(v16 + 2) = v19 + 1;
    *&v16[8 * v19 + 32] = v5;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_258D0CEB4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_258D17964();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = 0;
    do
    {
      if (v6 == 1 && v7 == 0xE100000000000000 || (sub_258D17E14() & 1) != 0)
      {
        v11 = __OFADD__(v8++, 1);
        if (v11)
        {
          __break(1u);
          break;
        }
      }

      else if (v6 == 2 && v7 == 0xE100000000000000 || (result = sub_258D17E14(), (result & 1) != 0))
      {
        if (!v8)
        {

          sub_258D17964();

          v13 = swift_allocObject();
          result = sub_258D0C5F8(a1);
          *(v13 + 16) = result;
          v12 = v13 | 0x8000000000000000;
          goto LABEL_23;
        }
      }

      else if (v6 == 3 && v7 == 0xE100000000000000 || (result = sub_258D17E14(), (result & 1) != 0))
      {
        if (!v8)
        {

          sub_258D17964();

          result = swift_allocEmptyBox();
          v12 = result | 0x4000000000000000;
          goto LABEL_23;
        }

        v11 = __OFSUB__(v8--, 1);
        if (v11)
        {
          __break(1u);
          return result;
        }
      }

      MEMORY[0x259C99B60](v6, v7);

      v6 = sub_258D17964();
      v7 = v9;
    }

    while (v9);
  }

  v12 = 0xF000000000000007;
LABEL_23:
  *a2 = v12;
  return result;
}

uint64_t sub_258D0D0B4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t _s24MessagesBlastDoorSupport12LiteTextSpanO2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1 >> 62;
  if (v5)
  {
    if (v5 == 1)
    {
      if (v4 >> 62 == 1)
      {
        return 1;
      }
    }

    else if (v4 >> 62 == 2)
    {
      v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      LOBYTE(v8) = sub_258D0A258(v8, v9);

      return v8 & 1;
    }

    return 0;
  }

  if (v4 >> 62)
  {
    return 0;
  }

  if (*(v3 + 16) == *(v4 + 16) && *(v3 + 24) == *(v4 + 24))
  {
    return 1;
  }

  return sub_258D17E14();
}

unint64_t sub_258D0D23C()
{
  result = qword_27F980C58;
  if (!qword_27F980C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C58);
  }

  return result;
}

unint64_t sub_258D0D290()
{
  result = qword_27F980C60;
  if (!qword_27F980C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C60);
  }

  return result;
}

unint64_t sub_258D0D2E4()
{
  result = qword_27F980C68;
  if (!qword_27F980C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C68);
  }

  return result;
}

unint64_t sub_258D0D338()
{
  result = qword_27F980C80;
  if (!qword_27F980C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C80);
  }

  return result;
}

unint64_t sub_258D0D38C()
{
  result = qword_27F980C88;
  if (!qword_27F980C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C88);
  }

  return result;
}

unint64_t sub_258D0D3E0()
{
  result = qword_27F980C90;
  if (!qword_27F980C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C90);
  }

  return result;
}

unint64_t sub_258D0D434()
{
  result = qword_27F980C98;
  if (!qword_27F980C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980C98);
  }

  return result;
}

unint64_t sub_258D0D488()
{
  result = qword_27F980CC8;
  if (!qword_27F980CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980CC8);
  }

  return result;
}

uint64_t sub_258D0D4DC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F980C70, &qword_258D19A40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258D0D554()
{
  result = qword_27F980CD8;
  if (!qword_27F980CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980CD8);
  }

  return result;
}

unint64_t sub_258D0D5A8()
{
  result = qword_27F980CE0;
  if (!qword_27F980CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980CE0);
  }

  return result;
}

unint64_t sub_258D0D5FC()
{
  result = qword_27F980CF8;
  if (!qword_27F980CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980CF8);
  }

  return result;
}

unint64_t sub_258D0D650()
{
  result = qword_27F980D00;
  if (!qword_27F980D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D00);
  }

  return result;
}

unint64_t sub_258D0D6A4()
{
  result = qword_27F980D28;
  if (!qword_27F980D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D28);
  }

  return result;
}

unint64_t sub_258D0D6F8()
{
  result = qword_27F980D30;
  if (!qword_27F980D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D30);
  }

  return result;
}

unint64_t sub_258D0D750()
{
  result = qword_27F980D48;
  if (!qword_27F980D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D48);
  }

  return result;
}

unint64_t sub_258D0D7A8()
{
  result = qword_27F980D50;
  if (!qword_27F980D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D50);
  }

  return result;
}

uint64_t sub_258D0D808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_258D0D864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiteTextSpan.AttributedSpansCodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteTextSpan.AttributedSpansCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258D0DAF8()
{
  result = qword_27F980D58;
  if (!qword_27F980D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D58);
  }

  return result;
}

unint64_t sub_258D0DB50()
{
  result = qword_27F980D60;
  if (!qword_27F980D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D60);
  }

  return result;
}

unint64_t sub_258D0DBA8()
{
  result = qword_27F980D68;
  if (!qword_27F980D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D68);
  }

  return result;
}

unint64_t sub_258D0DC00()
{
  result = qword_27F980D70;
  if (!qword_27F980D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D70);
  }

  return result;
}

unint64_t sub_258D0DC58()
{
  result = qword_27F980D78;
  if (!qword_27F980D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D78);
  }

  return result;
}

unint64_t sub_258D0DCB0()
{
  result = qword_27F980D80;
  if (!qword_27F980D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D80);
  }

  return result;
}

unint64_t sub_258D0DD08()
{
  result = qword_27F980D88;
  if (!qword_27F980D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D88);
  }

  return result;
}

unint64_t sub_258D0DD60()
{
  result = qword_27F980D90;
  if (!qword_27F980D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D90);
  }

  return result;
}

unint64_t sub_258D0DDB8()
{
  result = qword_27F980D98;
  if (!qword_27F980D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980D98);
  }

  return result;
}

unint64_t sub_258D0DE10()
{
  result = qword_27F980DA0;
  if (!qword_27F980DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DA0);
  }

  return result;
}

unint64_t sub_258D0DE68()
{
  result = qword_27F980DA8;
  if (!qword_27F980DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DA8);
  }

  return result;
}

unint64_t sub_258D0DEC0()
{
  result = qword_27F980DB0;
  if (!qword_27F980DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DB0);
  }

  return result;
}

unint64_t sub_258D0DF18()
{
  result = qword_27F980DB8;
  if (!qword_27F980DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DB8);
  }

  return result;
}

unint64_t sub_258D0DF70()
{
  result = qword_27F980DC0;
  if (!qword_27F980DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DC0);
  }

  return result;
}

unint64_t sub_258D0DFC8()
{
  result = qword_27F980DC8;
  if (!qword_27F980DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DC8);
  }

  return result;
}

unint64_t sub_258D0E020()
{
  result = qword_27F980DD0;
  if (!qword_27F980DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DD0);
  }

  return result;
}

unint64_t sub_258D0E078()
{
  result = qword_27F980DD8;
  if (!qword_27F980DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DD8);
  }

  return result;
}

unint64_t sub_258D0E0D0()
{
  result = qword_27F980DE0;
  if (!qword_27F980DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DE0);
  }

  return result;
}

unint64_t sub_258D0E128()
{
  result = qword_27F980DE8;
  if (!qword_27F980DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DE8);
  }

  return result;
}

unint64_t sub_258D0E180()
{
  result = qword_27F980DF0;
  if (!qword_27F980DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DF0);
  }

  return result;
}

unint64_t sub_258D0E1D8()
{
  result = qword_27F980DF8;
  if (!qword_27F980DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980DF8);
  }

  return result;
}

unint64_t sub_258D0E230()
{
  result = qword_27F980E00;
  if (!qword_27F980E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E00);
  }

  return result;
}

uint64_t sub_258D0E284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865546E69616C70 && a2 == 0xE900000000000074;
  if (v4 || (sub_258D17E14() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656B72616DLL && a2 == 0xE600000000000000 || (sub_258D17E14() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF736E6170536465)
  {

    return 2;
  }

  else
  {
    v6 = sub_258D17E14();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_258D0E3C4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_258D0E3DC()
{
  result = qword_27F980E18;
  if (!qword_27F980E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F980E10, &qword_258D1A5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E18);
  }

  return result;
}

uint64_t sub_258D0E440(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_258D17E14() & 1;
  }
}

uint64_t sub_258D0E508@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258D0E60C(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t PreviewType.init(rawValue:)(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 1u) << 8);
}

uint64_t sub_258D0E564()
{
  v1 = *v0;
  sub_258D17EC4();
  sub_258D17EE4();
  return sub_258D17EF4();
}

uint64_t sub_258D0E5AC()
{
  v1 = *v0;
  sub_258D17EC4();
  sub_258D17EE4();
  return sub_258D17EF4();
}

unsigned __int8 *sub_258D0E5F0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 1;
  if (v2 > 1)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_258D0E60C(unsigned __int8 a1)
{
  v1 = 0;
  switch(a1)
  {
    case 0x64u:
    case 0x65u:
    case 0x66u:
    case 0x68u:
    case 0x69u:
    case 0x6Au:
    case 0x6Bu:
    case 0x6Cu:
    case 0x6Fu:
    case 0x70u:
    case 0x71u:
    case 0x74u:
    case 0x76u:
    case 0x77u:
    case 0x78u:
    case 0x7Au:
    case 0x7Cu:
    case 0x7Du:
    case 0x7Eu:
    case 0x7Fu:
    case 0x83u:
    case 0x86u:
    case 0x87u:
    case 0x8Au:
    case 0x8Bu:
    case 0xAAu:
    case 0xB4u:
    case 0xB5u:
    case 0xBEu:
    case 0xC3u:
    case 0xC4u:
      return a1 | (v1 << 8);
    default:
      a1 = 0;
      v1 = 1;
      break;
  }

  return a1 | (v1 << 8);
}

unint64_t sub_258D0E664()
{
  result = qword_27F980E20;
  if (!qword_27F980E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E20);
  }

  return result;
}

unint64_t sub_258D0E6BC()
{
  result = qword_27F980E28;
  if (!qword_27F980E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E28);
  }

  return result;
}

uint64_t sub_258D0E780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomingPushPayload();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TopLevelDictionary.decryptedData.getter()
{
  v1 = v0 + *(type metadata accessor for TopLevelDictionary() + 20);
  v2 = *v1;
  sub_258CFA9D0(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for TopLevelDictionary()
{
  result = qword_280BCBDE8;
  if (!qword_280BCBDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TopLevelDictionary.decryptedData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TopLevelDictionary() + 20);
  result = sub_258D0199C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t TopLevelDictionary.shouldShowPeerErrors.setter(char a1)
{
  result = type metadata accessor for TopLevelDictionary();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TopLevelDictionary.encryptionTypeString.getter()
{
  v1 = (v0 + *(type metadata accessor for TopLevelDictionary() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TopLevelDictionary.encryptionTypeString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TopLevelDictionary() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TopLevelDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980E30, &qword_258D1A740);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0ECBC();
  sub_258D17F34();
  LOBYTE(v20) = 0;
  type metadata accessor for IncomingPushPayload();
  sub_258D0F124(&qword_27F980E38);
  sub_258D17DE4();
  if (!v2)
  {
    v11 = type metadata accessor for TopLevelDictionary();
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v20 = *v12;
    v21 = v13;
    v19[15] = 1;
    sub_258CFA9D0(v20, v13);
    sub_258D0ED10();
    sub_258D17DA4();
    sub_258D0199C(v20, v21);
    v14 = *(v3 + v11[6]);
    LOBYTE(v20) = 2;
    sub_258D17D84();
    v15 = (v3 + v11[7]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v20) = 3;
    sub_258D17D74();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_258D0ECBC()
{
  result = qword_280BCBE08;
  if (!qword_280BCBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBE08);
  }

  return result;
}

unint64_t sub_258D0ED10()
{
  result = qword_27F980E40;
  if (!qword_27F980E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E40);
  }

  return result;
}

uint64_t TopLevelDictionary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for IncomingPushPayload();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980E48, &qword_258D1A748);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for TopLevelDictionary();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = &v16[*(v14 + 20)];
  v35 = a1;
  *v34 = xmmword_258D19940;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D0ECBC();
  sub_258D17F14();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v35);
    return sub_258D0199C(*v34, *(v34 + 1));
  }

  else
  {
    v18 = v32;
    LOBYTE(v36) = 0;
    sub_258D0F124(&qword_280BCBDC0);
    v19 = v33;
    sub_258D17D34();
    v20 = v7;
    v21 = v16;
    sub_258D0F168(v20, v16);
    v38 = 1;
    sub_258D0F1CC();
    sub_258D17CF4();
    v22 = v36;
    v23 = v37;
    v24 = v34;
    sub_258D0199C(*v34, *(v34 + 1));
    *v24 = v22;
    *(v24 + 1) = v23;
    LOBYTE(v36) = 2;
    *(v21 + *(v12 + 24)) = sub_258D17CD4();
    LOBYTE(v36) = 3;
    v25 = sub_258D17CC4();
    v27 = v26;
    v28 = (v21 + *(v12 + 28));
    (*(v18 + 8))(v11, v19);
    *v28 = v25;
    v28[1] = v27;
    sub_258D0F220(v21, v31, type metadata accessor for TopLevelDictionary);
    __swift_destroy_boxed_opaque_existential_0(v35);
    return sub_258D0F288(v21, type metadata accessor for TopLevelDictionary);
  }
}

uint64_t sub_258D0F124(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IncomingPushPayload();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258D0F168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomingPushPayload();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258D0F1CC()
{
  result = qword_280BCBE10;
  if (!qword_280BCBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBE10);
  }

  return result;
}

uint64_t sub_258D0F220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258D0F288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

MessagesBlastDoorSupport::TopLevelDictionary::CodingKeys_optional __swiftcall TopLevelDictionary.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_258D17C94();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TopLevelDictionary.CodingKeys.stringValue.getter()
{
  v1 = 0xD00000000000001DLL;
  v2 = 0xD000000000000026;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000028;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_258D0F40C()
{
  v1 = *v0;
  sub_258D17EC4();
  sub_258D17914();

  return sub_258D17EF4();
}

uint64_t sub_258D0F4C4()
{
  *v0;
  *v0;
  *v0;
  sub_258D17914();
}

uint64_t sub_258D0F568()
{
  v1 = *v0;
  sub_258D17EC4();
  sub_258D17914();

  return sub_258D17EF4();
}

void sub_258D0F628(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001DLL;
  v3 = "e";
  v4 = "IDSIncomingMessageDecryptedData";
  v5 = 0xD000000000000026;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000028;
    v4 = "geShouldShowPeerErrors";
  }

  if (*v1)
  {
    v2 = 0xD00000000000001FLL;
    v3 = "IDSIncomingMessagePushPayload";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_258D0F6A0()
{
  v1 = 0xD00000000000001DLL;
  v2 = 0xD000000000000026;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000028;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_258D0F758(uint64_t a1)
{
  v2 = sub_258D0ECBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258D0F794(uint64_t a1)
{
  v2 = sub_258D0ECBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TopLevelDictionary.encrypted.getter()
{
  v1 = (v0 + *(type metadata accessor for TopLevelDictionary() + 28));
  v2 = v1[1];
  if (!v2 || (*v1 == 1701736302 ? (v3 = v2 == 0xE400000000000000) : (v3 = 0), v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_258D17E14() ^ 1;
  }

  return v4 & 1;
}

unint64_t sub_258D0F840()
{
  result = qword_27F980E50;
  if (!qword_27F980E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E50);
  }

  return result;
}

unint64_t sub_258D0F898()
{
  result = qword_280BCBDF8;
  if (!qword_280BCBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBDF8);
  }

  return result;
}

unint64_t sub_258D0F8F0()
{
  result = qword_280BCBE00;
  if (!qword_280BCBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBE00);
  }

  return result;
}

void sub_258D0F96C()
{
  type metadata accessor for IncomingPushPayload();
  if (v0 <= 0x3F)
  {
    sub_258D06004(319, &qword_27F980E58);
    if (v1 <= 0x3F)
    {
      sub_258D06004(319, &qword_27F980BD0);
      if (v2 <= 0x3F)
      {
        sub_258D06004(319, &qword_27F980E60);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for TopLevelDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TopLevelDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_258D0FBA8(double a1, double a2)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  DeviceRGB = CGImageGetColorSpace(v2);
  if (!DeviceRGB)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  BitmapInfo = CGImageGetBitmapInfo(v2);
  v7 = CGBitmapContextCreate(0, a1, a2, 8uLL, 0, DeviceRGB, BitmapInfo);

  if (v7)
  {
    CGContextSetInterpolationQuality(v7, kCGInterpolationHigh);
    sub_258D17A44();
    if (!CGBitmapContextCreateImage(v7))
    {
      sub_258D0FD78();
      swift_allocError();
      *v9 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_258D0FD78();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }
}

unint64_t sub_258D0FD78()
{
  result = qword_27F980E68;
  if (!qword_27F980E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E68);
  }

  return result;
}

unint64_t sub_258D0FDE0()
{
  result = qword_27F980E70;
  if (!qword_27F980E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E70);
  }

  return result;
}

uint64_t sub_258D0FE34@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v5)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v5 != 2)
    {
      if (v5 != 1)
      {
        v11 = a1;
        goto LABEL_23;
      }

      v10 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_29;
      }

      v11 = a1;
      v12 = sub_258D16984();
      if (!v12)
      {
        goto LABEL_34;
      }

      v13 = v12;
      v14 = sub_258D169B4();
      if (__OFSUB__(v10, v14))
      {
        goto LABEL_31;
      }

      v15 = (v10 - v14 + v13);
      a1 = sub_258D169A4();
      if (v15)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_28;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v11 = a1;
    v17 = *(a1 + 16);
    v18 = sub_258D16984();
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18;
    v20 = sub_258D169B4();
    if (!__OFSUB__(v17, v20))
    {
      v15 = (v17 - v20 + v19);
      sub_258D169A4();
      if (!v15)
      {
        goto LABEL_33;
      }

LABEL_21:
      v21 = *v15;
      v22 = v15[1];
      v23 = v15[2];
      v24 = v15[3];
      v25 = v15[4];
      v26 = v15[5];
      v27 = v15[6];
      v28 = v15[7];
      v29 = v15[8];
      v30 = v15[9];
      v31 = v15[10];
      v32 = v15[11];
      v33 = v15[12];
      v34 = v15[13];
      v35 = v15[14];
      v36 = v15[15];
LABEL_23:
      sub_258D16B34();
      v16 = 0;
      a1 = v11;
      goto LABEL_24;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_258D169A4();
LABEL_33:
    __break(1u);
LABEL_34:
    result = sub_258D169A4();
    __break(1u);
    return result;
  }

  if (v5 != 2)
  {
    goto LABEL_17;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9 == 16)
  {
    goto LABEL_8;
  }

LABEL_17:
  v16 = 1;
LABEL_24:
  sub_258CD7210(a1, a2);
  v37 = sub_258D16B54();
  v38 = *(*(v37 - 8) + 56);

  return v38(a3, v16, 1, v37);
}

uint64_t sub_258D10084(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_258D10C28(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_258D10CE0(v3, v4);
    }

    else
    {
      v6 = sub_258D10D5C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t UUIDData.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258D16B54();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UUIDData.wrappedValue.setter(uint64_t a1)
{
  v3 = sub_258D16B54();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UUIDData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v46 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = v43 - v7;
  v8 = sub_258D16B54();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v43 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v43 - v16;
  v18 = type metadata accessor for UUIDData();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = v50;
  sub_258D17F04();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v43[1] = v12;
  v44 = v17;
  v43[0] = v15;
  v45 = v21;
  v24 = v49;
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  sub_258D0F1CC();
  sub_258D17E34();
  v26 = v51;
  v25 = v52;
  sub_258CDBA34(v51, v52);
  v27 = v47;
  sub_258D0FE34(v26, v25, v47);
  v28 = v48;
  if ((*(v48 + 48))(v27, 1, v8) != 1)
  {
    sub_258CD7210(v26, v25);
    v35 = *(v28 + 32);
    v36 = v44;
    v35(v44, v27, v8);
    v37 = v45;
    v35(v45, v36, v8);
    v38 = v50;
    __swift_destroy_boxed_opaque_existential_0(v53);
    sub_258D0561C(v37, v24);
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  sub_258D10908(v27);
  v29 = sub_258D17BC4();
  swift_allocError();
  v31 = v30;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_258D17B94();
  result = MEMORY[0x259C99B70](0xD000000000000035, 0x8000000258D1C1C0);
  v33 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    v34 = 0;
    if (v33 != 2)
    {
      goto LABEL_13;
    }

    v40 = *(v26 + 16);
    v39 = *(v26 + 24);
    v41 = __OFSUB__(v39, v40);
    v34 = v39 - v40;
    if (!v41)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v33)
  {
    v34 = BYTE6(v25);
LABEL_13:
    v53[6] = v34;
    v42 = sub_258D17E04();
    MEMORY[0x259C99B70](v42);

    MEMORY[0x259C99B70](11817, 0xE200000000000000);
    sub_258D17BB4();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84168], v29);
    swift_willThrow();
    sub_258CD7210(v26, v25);
    __swift_destroy_boxed_opaque_existential_0(v53);
    a1 = v50;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LODWORD(v34) = HIDWORD(v26) - v26;
  if (!__OFSUB__(HIDWORD(v26), v26))
  {
    v34 = v34;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for UUIDData()
{
  result = qword_280BCBD58;
  if (!qword_280BCBD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258D10908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UUIDData.encode(to:)(void *a1)
{
  v3 = sub_258D16B54();
  v4 = sub_258D10084(v1, v1 + *(*(v3 - 8) + 64));
  v6 = v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258D17F24();
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_258D0ED10();
  sub_258D17E44();
  sub_258CD7210(v4, v6);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_258D10B08()
{
  result = sub_258D16B54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_258D10B74@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_258D10C28(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_258D10CE0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_258D10D5C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_258D10C08(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_258D10C28(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_258D10CE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_258D169C4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_258D16974();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_258D16AD4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_258D10D5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_258D169C4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_258D16974();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_258D10DE0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980E78, "60");
  v10 = sub_258D10E90();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_258D10B74(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

unint64_t sub_258D10E90()
{
  result = qword_27F980E80;
  if (!qword_27F980E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F980E78, "60");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E80);
  }

  return result;
}

uint64_t TopLevelDictionary.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_258D177C4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258D16B54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUIDData();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v52 - v16;
  v18 = type metadata accessor for IncomingPushPayload();
  v19 = v18;
  v20 = v1 + v18[10];
  v21 = *v20;
  *(v20 + 8);
  v22 = v1 + v18[5];
  v23 = *v22;
  v59 = *(v22 + 8);
  if ((v59 & 1) == 0)
  {
    v24 = v1 + v18[6];
    if ((*(v24 + 8) & 1) == 0)
    {
      v58 = v6;
      v25 = *v24;
      if (*v24)
      {
        v26 = *v24;
        v27 = v64;
        result = sub_258D114A0();
        if (v27)
        {
          return result;
        }

        v57 = v25;
        v64 = 0;
        v53 = result;
        sub_258D036BC();
        v56 = v1;
        v29 = sub_258D17B04();
        v1 = v56;
        v55 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980818, &qword_258D19320);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_258D190B0;
        sub_258D1143C(v1, v13);
        (*(v58 + 32))(v17, v13, v5);
        (*(v58 + 56))(v17, 0, 1, v5);
        v54 = sub_258D17604();
        v52 = v31;
        sub_258D10908(v17);
        *(v30 + 56) = MEMORY[0x277D837D0];
        v32 = sub_258CF695C();
        *(v30 + 64) = v32;
        v33 = v54;
        v54 = v30;
        v34 = v52;
        *(v30 + 32) = v33;
        *(v30 + 40) = v34;
        if ((v53 & 1) == 0)
        {
          v62 = v57;
          v63 = 0;
          v45 = sub_258D17604();
          v46 = v54;
          v47 = MEMORY[0x277D837D0];
          *(v54 + 96) = MEMORY[0x277D837D0];
          v46[13] = v32;
          v46[9] = v45;
          v46[10] = v48;
          v62 = v23;
          v63 = 0;
          v49 = sub_258D17604();
          v46[17] = v47;
          v46[18] = v32;
          v46[14] = v49;
          v46[15] = v50;
          sub_258D17A74();
          v51 = v55;
          sub_258D16B94();

          sub_258D17824();
          sub_258D1157C();
          swift_allocError();
          sub_258D17814();
          return swift_willThrow();
        }

        v62 = v57;
        v63 = 0;
        v35 = sub_258D17604();
        v36 = v54;
        *(v54 + 96) = MEMORY[0x277D837D0];
        v36[13] = v32;
        v36[9] = v35;
        v36[10] = v37;
        v62 = v23;
        v63 = 0;
        v38 = sub_258D17604();
        v36[17] = MEMORY[0x277D837D0];
        v36[18] = v32;
        v36[14] = v38;
        v36[15] = v39;
        sub_258D17A74();
        v40 = v55;
        sub_258D16B94();
      }

      v6 = v58;
    }
  }

  sub_258D1143C(v1, v13);
  (*(v6 + 32))(v9, v13, v5);
  v41 = v19[9];
  v42 = *(v1 + v19[8]);
  v43 = *(v1 + v41);
  v44 = v64;
  sub_258D177B4();
  if (v44)
  {
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    return sub_258D177D4();
  }
}

uint64_t sub_258D1143C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUIDData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_258D114A0()
{
  sub_258D115D4();
  sub_258D17694();
  if (!v0)
  {
    sub_258D17694();
    sub_258D176A4();
    return v3 < 0x274A48A78001;
  }

  return v1;
}

unint64_t sub_258D1157C()
{
  result = qword_280BCBE28;
  if (!qword_280BCBE28)
  {
    sub_258D17824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BCBE28);
  }

  return result;
}

unint64_t sub_258D115D4()
{
  result = qword_27F980E88;
  if (!qword_27F980E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980E88);
  }

  return result;
}

void *sub_258D11628(void *result, void *a2)
{
  if (result)
  {
    v14 = *(v2 + OBJC_IVAR___BlastDoorLiteMessageCompressor_compressor);
    v4 = result;

    v5 = sub_258D16AF4();
    v7 = v6;
    v8 = LiteMessageCompressor.encode(_:)(v5, v6);
    v10 = v9;
    v12 = v11;
    sub_258CD7210(v5, v7);

    if (v10 >> 60 == 15)
    {

      return 0;
    }

    else
    {
      if (a2)
      {
        *a2 = v12;
      }

      sub_258CDBA34(v8, v10);
      v13 = sub_258D16AE4();
      sub_258D0199C(v8, v10);
      sub_258D0199C(v8, v10);

      return v13;
    }
  }

  return result;
}

id BlastDoorLiteMessageCompressor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlastDoorLiteMessageCompressor.init()()
{
  LiteMessageCompressor.init()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlastDoorLiteMessageCompressor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BlastDoorLiteMessageCompressor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlastDoorLiteMessageCompressor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_258D1192C()
{
  sub_258D119A8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_258D119A8()
{
  if (!qword_27F980EA8)
  {
    sub_258D171B4();
    v0 = sub_258D17B34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F980EA8);
    }
  }
}

void sub_258D11A48()
{
  sub_258D16B54();
  if (v0 <= 0x3F)
  {
    sub_258D119A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258D11B1C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258D11B54()
{
  sub_258D16ED4();
  if (v0 <= 0x3F)
  {
    sub_258D16B54();
    if (v1 <= 0x3F)
    {
      sub_258D11BF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258D11BF0()
{
  if (!qword_27F980E60)
  {
    v0 = sub_258D17B34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F980E60);
    }
  }
}

uint64_t sub_258D11C40@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BF0, &qword_258D198C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  result = sub_258CDB2E4();
  if (!v1)
  {
    v9 = HIBYTE(v8) & 0xF;
    v15[0] = result;
    v15[1] = v8;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = result & 0xFFFFFFFFFFFFLL;
    }

    v15[2] = 0;
    v15[3] = v9;
    v10 = sub_258D0C5F8(v15);

    v11 = Array<A>.spansAsPlainText.getter(v10);
    v13 = v12;

    *a1 = v11;
    a1[1] = v13;
    result = sub_258D04144(3);
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      sub_258D171A4();
      v14 = type metadata accessor for LiteTextMessageContent(0);
      return sub_258D12650(v6, a1 + *(v14 + 20));
    }
  }

  return result;
}

unint64_t sub_258D11D80@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BF0, &qword_258D198C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = sub_258D16B54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_258CDB2E4();
  if (!v1)
  {
    v38 = v6;
    v39 = v12;
    v18 = HIBYTE(v17) & 0xF;
    v40[0] = result;
    v40[1] = v17;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = result & 0xFFFFFFFFFFFFLL;
    }

    v40[2] = 0;
    v40[3] = v18;
    v19 = sub_258D0C5F8(v40);

    v20 = a1;
    v21 = Array<A>.spansAsPlainText.getter(v19);
    v23 = v22;

    v24 = type metadata accessor for LiteReplyMessageContent(0);
    v25 = &v20[*(v24 + 20)];
    *v25 = v21;
    v25[1] = v23;
    v26 = sub_258D03D74(0x10uLL);
    v41 = 0;
    v27 = v26;
    v29 = v28;
    v36 = v23;
    v37 = v20;
    sub_258CDBA34(v26, v28);
    sub_258D0FE34(v27, v29, v10);
    v30 = v39;
    if ((*(v39 + 48))(v10, 1, v11) == 1)
    {
      sub_258D10908(v10);
      sub_258CDB9E0();
      swift_allocError();
      *v31 = 2;
      swift_willThrow();
      sub_258CD7210(v27, v29);
    }

    sub_258CD7210(v27, v29);
    v32 = *(v30 + 32);
    v32(v15, v10, v11);
    v33 = v37;
    v32(v37, v15, v11);
    v34 = v41;
    result = sub_258D04144(3);
    if (v34)
    {
    }

    else if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v35 = v38;
    sub_258D171A4();
    return sub_258D12650(v35, &v33[*(v24 + 24)]);
  }

  return result;
}

uint64_t sub_258D120AC@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = sub_258D178E4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v58 - v7;
  v9 = sub_258D16B54();
  v63 = *(v9 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258D16ED4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v58 - v19;
  v21 = v65;
  result = sub_258D03F18(4);
  if (!v21)
  {
    v59 = v12;
    v60 = v18;
    v61 = v8;
    v58[1] = v4;
    v65 = v14;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      sub_258D16EC4();
      v23 = v13;
      (*(v65 + 32))(v64, v20, v13);
      v24 = sub_258D03D74(0x10uLL);
      v62 = 0;
      v25 = v24;
      v27 = v26;
      sub_258CDBA34(v24, v26);
      v28 = v61;
      sub_258D0FE34(v25, v27, v61);
      v29 = v63;
      v30 = v9;
      if ((*(v63 + 48))(v28, 1, v9) == 1)
      {
        sub_258D10908(v28);
        sub_258CDB9E0();
        v31 = swift_allocError();
        *v32 = 2;
        v62 = v31;
        swift_willThrow();
        sub_258CD7210(v25, v27);
        v33 = 0;
LABEL_5:
        v34 = v65;
LABEL_6:
        v35 = v64;
        result = (*(v34 + 8))(v64, v23);
        if (v33)
        {
          v36 = type metadata accessor for LiteAcknowledgmentMessageContent(0);
          return (*(v29 + 8))(v35 + *(v36 + 20), v30);
        }

        return result;
      }

      sub_258CD7210(v25, v27);
      v37 = *(v29 + 32);
      v38 = v59;
      v37(v59, v28, v9);
      v58[0] = type metadata accessor for LiteAcknowledgmentMessageContent(0);
      v39 = v64;
      v37((v64 + *(v58[0] + 20)), v38, v9);
      v40 = *MEMORY[0x277CF1F18];
      v41 = v65;
      v42 = v60;
      v61 = *(v65 + 104);
      (v61)(v60, v40, v23);
      sub_258D126C0();
      sub_258D179B4();
      v43 = v42;
      sub_258D179B4();
      v44 = *(v41 + 8);
      v44(v43, v23);
      if (v67 != v66)
      {
        (v61)(v43, *MEMORY[0x277CF1F10], v23);
        sub_258D179B4();
        sub_258D179B4();
        result = (v44)(v43, v23);
        if (v67 != v66)
        {
          v48 = (v39 + *(v58[0] + 24));
          *v48 = 0;
          v48[1] = 0;
          return result;
        }
      }

      v45 = v62;
      result = sub_258D04144(3);
      if (v45)
      {
        v62 = v45;
        v33 = 1;
        v30 = v9;
        v29 = v63;
        goto LABEL_5;
      }

      v34 = v65;
      if ((result & 0x8000000000000000) == 0)
      {
        v46 = sub_258D03D74(result);
        v62 = 0;
        v49 = v46;
        v50 = v47;
        sub_258D178D4();
        v51 = sub_258D178C4();
        if (v52)
        {
          v53 = v51;
          v54 = v52;
          result = sub_258CD7210(v49, v50);
          v55 = (v64 + *(v58[0] + 24));
          *v55 = v53;
          v55[1] = v54;
          return result;
        }

        sub_258CDB9E0();
        v56 = swift_allocError();
        *v57 = 0;
        v62 = v56;
        swift_willThrow();
        sub_258CD7210(v49, v50);
        v33 = 1;
        v30 = v9;
        v29 = v63;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258D12650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980BF0, &qword_258D198C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258D126C0()
{
  result = qword_27F980ED0;
  if (!qword_27F980ED0)
  {
    sub_258D16ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980ED0);
  }

  return result;
}

uint64_t type metadata accessor for LiteRelayAcknowledgmentMessageContent()
{
  result = qword_27F980ED8;
  if (!qword_27F980ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258D1278C()
{
  sub_258D16ED4();
  if (v0 <= 0x3F)
  {
    sub_258D16B54();
    if (v1 <= 0x3F)
    {
      sub_258D11BF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258D12830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_258D178E4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B50, &qword_258D198C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v66 - v9;
  v11 = sub_258D16B54();
  v74 = *(v11 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258D16ED4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;
  v23 = v76;
  result = sub_258D03F18(4);
  if (v23)
  {
    return result;
  }

  v69 = v14;
  v70 = v20;
  v71 = v10;
  v72 = a1;
  v68 = v6;
  v76 = v16;
  if (result < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_258D16EC4();
  v25 = v15;
  (*(v76 + 32))(v75, v22, v15);
  v26 = sub_258D03D74(0x10uLL);
  v73 = 0;
  v27 = v26;
  v29 = v28;
  sub_258CDBA34(v26, v28);
  v30 = v71;
  sub_258D0FE34(v27, v29, v71);
  v31 = v74;
  v32 = v11;
  if ((*(v74 + 48))(v30, 1, v11) != 1)
  {
    sub_258CD7210(v27, v29);
    v41 = *(v31 + 32);
    v42 = v69;
    v41(v69, v30, v11);
    v67 = type metadata accessor for LiteRelayAcknowledgmentMessageContent();
    v43 = v75;
    v41((v75 + *(v67 + 20)), v42, v11);
    v44 = *MEMORY[0x277CF1F18];
    v45 = v76;
    v46 = v70;
    v71 = *(v76 + 104);
    (v71)(v70, v44, v25);
    sub_258D126C0();
    sub_258D179B4();
    v47 = v46;
    sub_258D179B4();
    v48 = *(v45 + 8);
    v48(v47, v25);
    if (v78 != v77)
    {
      (v71)(v47, *MEMORY[0x277CF1F10], v25);
      sub_258D179B4();
      sub_258D179B4();
      v48(v47, v25);
      if (v78 != v77)
      {
        v52 = v67;
        v53 = (v43 + *(v67 + 24));
        *v53 = 0;
        v53[1] = 0;
        v37 = v43;
        v38 = v76;
        goto LABEL_19;
      }
    }

    v49 = v73;
    result = sub_258D04144(3);
    if (v49)
    {
      v73 = v49;
      v36 = 0;
      v35 = 1;
      v31 = v74;
      v37 = v75;
      v32 = v11;
      v38 = v76;
      goto LABEL_5;
    }

    v37 = v75;
    v38 = v76;
    if ((result & 0x8000000000000000) == 0)
    {
      v50 = sub_258D03D74(result);
      v73 = 0;
      v54 = v50;
      v55 = v51;
      sub_258D178D4();
      v56 = sub_258D178C4();
      if (!v57)
      {
        sub_258CDB9E0();
        v64 = swift_allocError();
        *v65 = 0;
        v73 = v64;
        swift_willThrow();
        sub_258CD7210(v54, v55);
        v36 = 0;
        v35 = 1;
        v32 = v11;
        v31 = v74;
        goto LABEL_5;
      }

      v58 = v56;
      v59 = v57;
      sub_258CD7210(v54, v55);
      v52 = v67;
      v60 = (v37 + *(v67 + 24));
      *v60 = v58;
      v60[1] = v59;
LABEL_19:
      v61 = v73;
      result = sub_258D14780();
      v31 = v74;
      if (!v61)
      {
        v63 = (v37 + *(v52 + 28));
        *v63 = result;
        v63[1] = v62;
        return result;
      }

      v32 = v11;
      v73 = v61;
      v35 = 1;
      v36 = 1;
      goto LABEL_5;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  sub_258D10908(v30);
  sub_258CDB9E0();
  v33 = swift_allocError();
  *v34 = 2;
  v73 = v33;
  swift_willThrow();
  sub_258CD7210(v27, v29);
  v35 = 0;
  v36 = 0;
  v37 = v75;
  v38 = v76;
LABEL_5:
  result = (*(v38 + 8))(v37, v25);
  if (v35)
  {
    v39 = type metadata accessor for LiteRelayAcknowledgmentMessageContent();
    result = (*(v31 + 8))(v37 + *(v39 + 20), v32);
  }

  if (v36)
  {
    v40 = *(v37 + *(type metadata accessor for LiteRelayAcknowledgmentMessageContent() + 24) + 8);
  }

  return result;
}

uint64_t sub_258D12E3C()
{
  v2 = sub_258CDB2E4();
  if (!v0)
  {
    v4 = HIBYTE(v3) & 0xF;
    v7[0] = v2;
    v7[1] = v3;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v7[2] = 0;
    v7[3] = v4;
    v5 = sub_258D0C5F8(v7);

    v1 = Array<A>.spansAsPlainText.getter(v5);

    sub_258D14780();
  }

  return v1;
}

unint64_t sub_258D12F08()
{
  result = qword_27F980EE8;
  if (!qword_27F980EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F980EE8);
  }

  return result;
}

uint64_t SatelliteSMSTextMessageUnpacker.unpack(from:)@<X0>(unint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980B38, &qword_258D19300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v51 - v5;
  v7 = sub_258D17824();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258D178E4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_258D169F4();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_258D169E4();
  sub_258D137D0();
  sub_258D169D4();
  if (v1)
  {
  }

  v56 = v16;
  v18 = v57;
  v19 = v58;
  if (v60)
  {
    v20 = 0;
  }

  else
  {
    v20 = v59;
  }

  v55 = v57;
  if (v58 >> 60 != 15)
  {
    sub_258CFA9D0(v57, v58);
    if (v20)
    {
      v54 = a1;
      if (qword_27F9807C0 != -1)
      {
        swift_once();
      }

      v57 = qword_27F984420;

      v30 = LiteMessageCompressor.decode(_:codecID:)(v18, v19, v20);
      v32 = v31;

      if (v32 >> 60 == 15)
      {
        sub_258D17814();
        sub_258D036BC();
        v53 = sub_258D17B24();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980818, &qword_258D19320);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_258D19090;
        v23 = v61;
        v54 = v19;
        v34 = *(v61 + 16);
        v34(v6, v10, v7);
        (*(v23 + 56))(v6, 0, 1, v7);
        v35 = sub_258D17604();
        v37 = v36;
        sub_258D13AA0(v6);
        *(v33 + 56) = MEMORY[0x277D837D0];
        *(v33 + 64) = sub_258CF695C();
        *(v33 + 32) = v35;
        *(v33 + 40) = v37;
        sub_258D17A74();
        v38 = v53;
        sub_258D16B94();

        sub_258D13B50(&qword_280BCBE28, MEMORY[0x277CF30A0]);
        swift_allocError();
        v34(v39, v10, v7);
        swift_willThrow();
LABEL_18:

        v50 = v54;
        v49 = v55;
        sub_258D0199C(v55, v54);
        v28 = v49;
        v29 = v50;
        goto LABEL_19;
      }

      v52 = v30;
      v53 = v32;
    }

    else
    {
      sub_258CDBA34(v18, v19);
      v52 = v18;
      v53 = v19;
    }

    sub_258D178D4();
    sub_258D178C4();
    if (v40)
    {
      sub_258D13824();

      sub_258D17474();
      sub_258CD7210(v52, v53);
      v41 = v55;
      sub_258D0199C(v55, v19);
      sub_258D0199C(v41, v19);
    }

    sub_258D17814();
    sub_258D036BC();
    v51 = sub_258D17B24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980818, &qword_258D19320);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_258D19090;
    v23 = v61;
    v54 = v19;
    v43 = *(v61 + 16);
    v43(v6, v10, v7);
    (*(v23 + 56))(v6, 0, 1, v7);
    v44 = sub_258D17604();
    v46 = v45;
    sub_258D13AA0(v6);
    *(v42 + 56) = MEMORY[0x277D837D0];
    *(v42 + 64) = sub_258CF695C();
    *(v42 + 32) = v44;
    *(v42 + 40) = v46;
    sub_258D17A74();
    v47 = v51;
    sub_258D16B94();

    sub_258D13B50(&qword_280BCBE28, MEMORY[0x277CF30A0]);
    swift_allocError();
    v43(v48, v10, v7);
    swift_willThrow();
    sub_258CD7210(v52, v53);
    goto LABEL_18;
  }

  sub_258D17814();
  sub_258D036BC();
  v21 = sub_258D17B24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F980818, &qword_258D19320);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_258D19090;
  v54 = v19;
  v23 = v61;
  v53 = *(v61 + 16);
  v53(v6, v10, v7);
  (*(v23 + 56))(v6, 0, 1, v7);
  v24 = sub_258D17604();
  v26 = v25;
  sub_258D13AA0(v6);
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_258CF695C();
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  sub_258D17A74();
  sub_258D16B94();

  sub_258D13B50(&qword_280BCBE28, MEMORY[0x277CF30A0]);
  swift_allocError();
  v53(v27, v10, v7);
  swift_willThrow();

  v29 = v54;
  v28 = v55;
LABEL_19:
  sub_258D0199C(v28, v29);
  return (*(v23 + 8))(v10, v7);
}
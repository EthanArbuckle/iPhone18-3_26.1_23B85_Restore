uint64_t sub_20D8A6CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = sub_20D9742D8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A148, &qword_20D97B2C0);
  return sub_20D8A6D18(a1, a2, a3, &a4[*(v8 + 44)]);
}

uint64_t sub_20D8A6D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a2;
  v67 = a4;
  v62 = sub_20D974C78();
  v59 = *(v62 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A150, &qword_20D97B2C8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v54 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A158, &qword_20D97B2D0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v58 = &v54 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A160, &qword_20D97B2D8);
  v17 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A168, &qword_20D97B2E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v66 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v65 = &v54 - v23;
  v24 = type metadata accessor for FeaturedInterval();
  v25 = *(a1 + *(v24 + 28));
  KeyPath = swift_getKeyPath();
  v26 = *(type metadata accessor for FeaturedHoursChart(0) + 24);
  v55 = a3;
  v27 = *(a3 + v26);
  v28 = (v12 + *(v9 + 44));
  v29 = type metadata accessor for PinnedDynamicSize(0);
  v30 = v29[6];
  v31 = *MEMORY[0x277CDF9D8];
  v32 = sub_20D973D58();
  (*(*(v32 - 8) + 104))(v28 + v30, v31, v32);
  *v28 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  *(v28 + v29[5]) = v27;
  *(v28 + v29[7]) = 1;
  v56 = v24;
  v33 = *(a1 + *(v24 + 32));
  v34 = KeyPath;
  v35 = v58;
  *v12 = v25;
  v12[1] = v34;
  v36 = v60;
  v37 = v59;
  v38 = *(v59 + 104);
  v39 = MEMORY[0x277CE13C0];
  v12[2] = v61;
  if (!v33)
  {
    v39 = MEMORY[0x277CE13D8];
  }

  v40 = v62;
  v38(v36, *v39, v62);
  (*(v37 + 32))(v35 + *(v14 + 44), v36, v40);
  sub_20D7EAF18(v12, v35, &qword_27C83A150, &qword_20D97B2C8);
  if (v33)
  {

    v41 = sub_20D974958();
LABEL_11:
    v43 = v41;
    goto LABEL_12;
  }

  v42 = type metadata accessor for FeaturedHoursInfo();
  if (*(a1 + *(v56 + 52)) != 1)
  {
    v44 = *(v55 + *(v42 + 64));
    v45 = objc_opt_self();

    if (v44 == 1)
    {
      v46 = [v45 systemBlackColor];
    }

    else
    {
      v46 = [v45 systemWhiteColor];
    }

    v47 = v46;
    v41 = sub_20D974888();
    goto LABEL_11;
  }

  v43 = *(a1 + *(v56 + 56));

LABEL_12:
  v48 = v63;
  sub_20D7EAF18(v35, v63, &qword_27C83A158, &qword_20D97B2D0);
  *(v48 + *(v64 + 36)) = v43;
  sub_20D8ADBCC();
  v49 = v65;
  sub_20D9747D8();
  sub_20D7E3944(v48, &qword_27C83A160, &qword_20D97B2D8);
  v50 = sub_20D9748F8();
  v51 = v66;
  sub_20D7EB7E8(v49, v66, &qword_27C83A168, &qword_20D97B2E0);
  v52 = v67;
  sub_20D7EB7E8(v51, v67, &qword_27C83A168, &qword_20D97B2E0);
  *(v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A180, &unk_20D97B330) + 48)) = v50;

  sub_20D7E3944(v49, &qword_27C83A168, &qword_20D97B2E0);

  return sub_20D7E3944(v51, &qword_27C83A168, &qword_20D97B2E0);
}

uint64_t sub_20D8A72B8(uint64_t a1)
{
  v2 = sub_20D972628();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1.0;
  sub_20D972558();
  v8 = COERCE_DOUBLE(sub_20D973528());
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  if ((v10 & 1) == 0)
  {
    v7 = v8;
  }

  v11 = (a1 + *(type metadata accessor for FeaturedHoursChart(0) + 32));
  v12 = *v11;
  v13 = v11[1];
  *&v15[1] = v7;
  v15[2] = v12;
  v15[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0B0, &qword_20D97B1A8);
  return sub_20D974A58();
}

uint64_t sub_20D8A740C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FC0, &qword_20D97AFC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  v10 = type metadata accessor for FeaturedHoursChart(0);
  v11 = 1.0;
  if (*(a3 + *(v10 + 24)) == 1)
  {
    v12 = *(v10 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
    v11 = *v18;
  }

  v13 = v11 * *(a2 + 16);
  sub_20D974C48();
  sub_20D973C18();
  v14 = sub_20D973748();
  (*(*(v14 - 8) + 16))(v9, a1, v14);
  v15 = &v9[*(v6 + 36)];
  v16 = v18[1];
  *v15 = v18[0];
  *(v15 + 1) = v16;
  *(v15 + 2) = v18[2];
  sub_20D8ABCB4();
  sub_20D9746B8();
  return sub_20D7E3944(v9, &qword_27C839FC0, &qword_20D97AFC0);
}

uint64_t sub_20D8A75A8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v114 = a4;
  v120 = a3;
  v128 = a2;
  v125 = a5;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A010, &unk_20D97B0F8);
  v6 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v123 = &v101 - v7;
  v116 = sub_20D972408();
  v115 = *(v116 - 8);
  v8 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v112 = v9;
  v113 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v108 = &v101 - v12;
  v109 = sub_20D9727B8();
  v107 = *(v109 - 8);
  v13 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v106 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D9736A8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v132 = (&v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FE8, &qword_20D97AFE8);
  v118 = *(v18 - 8);
  v119 = v18;
  v19 = *(v118 + 64);
  MEMORY[0x28223BE20](v18);
  v117 = &v101 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A018, &qword_20D97B108);
  v121 = *(v21 - 8);
  v122 = v21;
  v22 = *(v121 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v133 = &v101 - v25;
  v26 = sub_20D973688();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v130 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FeaturedHoursChart(0);
  v102 = *(v29 - 8);
  v30 = *(v102 + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v126 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v31;
  v32 = sub_20D973738();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FD0, &qword_20D97AFD0);
  v103 = *(v104 - 8);
  v37 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v39 = &v101 - v38;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A020, &unk_20D97B110);
  v110 = *(v111 - 8);
  v40 = *(v110 + 64);
  v41 = MEMORY[0x28223BE20](v111);
  v131 = &v101 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v135 = &v101 - v43;
  v44 = *(a1 + *(type metadata accessor for FeaturedHoursInfo() + 56));
  v129 = v36;
  if (v44 == 1)
  {
    sub_20D973718();
  }

  else
  {
    sub_20D973728();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A028, &qword_20D97D0A0);
  v45 = sub_20D972628();
  v46 = *(v45 - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_20D979110;
  (*(v46 + 16))(v49 + v48, a1, v45);
  v105 = a1;
  v50 = v126;
  sub_20D8AC45C(a1, v126, type metadata accessor for FeaturedHoursChart);
  v51 = *(v102 + 80);
  v101 = ~v51;
  v102 = v51 | 7;
  v52 = swift_allocObject();
  v53 = v128;
  v54 = v128[7];
  *(v52 + 112) = v128[6];
  *(v52 + 128) = v54;
  *(v52 + 144) = *(v53 + 16);
  v55 = v53[3];
  *(v52 + 48) = v53[2];
  *(v52 + 64) = v55;
  v56 = v53[5];
  *(v52 + 80) = v53[4];
  *(v52 + 96) = v56;
  v57 = v53[1];
  *(v52 + 16) = *v53;
  *(v52 + 32) = v57;
  sub_20D8AC4C4(v50, v52 + ((v51 + 152) & ~v51), type metadata accessor for FeaturedHoursChart);
  sub_20D973678();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A030, &qword_20D97B120);
  sub_20D8AC824();
  sub_20D9739A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FD8, &qword_20D97AFD8);
  sub_20D7EBC4C(&qword_281127070, &qword_27C839FD0, &qword_20D97AFD0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FE0, &qword_20D97AFE0);
  v59 = sub_20D7EBC4C(&qword_281126F70, &qword_27C839FE0, &qword_20D97AFE0);
  v136 = v58;
  v137 = v59;
  swift_getOpaqueTypeConformance2();
  v60 = v104;
  sub_20D973558();
  (*(v103 + 8))(v39, v60);
  if (v44)
  {
    sub_20D973718();
  }

  else
  {
    sub_20D973728();
  }

  v61 = v107;
  v62 = v106;
  v63 = v109;
  (*(v107 + 104))(v106, *MEMORY[0x277CC9980], v109);
  v64 = sub_20D9727D8();
  v65 = v108;
  (*(*(v64 - 8) + 56))(v108, 1, 1, v64);
  sub_20D973698();
  sub_20D7E3944(v65, &qword_27C839548, &unk_20D979C20);
  (*(v61 + 8))(v62, v63);
  v66 = v126;
  sub_20D8AC45C(v105, v126, type metadata accessor for FeaturedHoursChart);
  v67 = v115;
  v68 = v113;
  v69 = v116;
  (*(v115 + 16))(v113, v114, v116);
  v70 = (v51 + 16) & v101;
  v71 = (v127 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + *(v67 + 80) + 136) & ~*(v67 + 80);
  v74 = swift_allocObject();
  sub_20D8AC4C4(v66, v74 + v70, type metadata accessor for FeaturedHoursChart);
  *(v74 + v71) = v120;
  v75 = v74 + v72;
  v76 = v128;
  v77 = v128[3];
  *(v75 + 32) = v128[2];
  *(v75 + 48) = v77;
  v78 = v76[1];
  *v75 = *v76;
  *(v75 + 16) = v78;
  *(v75 + 128) = *(v76 + 16);
  v79 = v76[7];
  *(v75 + 96) = v76[6];
  *(v75 + 112) = v79;
  v80 = v76[5];
  *(v75 + 64) = v76[4];
  *(v75 + 80) = v80;
  (*(v67 + 32))(v74 + v73, v68, v69);

  sub_20D973678();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A040, &qword_20D97B130);
  sub_20D8ACC38(&qword_2811270A0, &qword_27C83A040, &qword_20D97B130, sub_20D8ACA28);
  v81 = v117;
  sub_20D973988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FF0, &qword_20D97AFF0);
  sub_20D7EBC4C(&qword_281127068, &qword_27C839FE8, &qword_20D97AFE8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FF8, &qword_20D97AFF8);
  v83 = sub_20D7EBC4C(&qword_281126F68, &qword_27C839FF8, &qword_20D97AFF8);
  v136 = v82;
  v137 = v83;
  swift_getOpaqueTypeConformance2();
  v84 = v133;
  v85 = v119;
  sub_20D973558();
  (*(v118 + 8))(v81, v85);
  v86 = v110;
  v132 = *(v110 + 16);
  v87 = v131;
  v88 = v111;
  v132(v131, v135, v111);
  v89 = v121;
  v90 = *(v121 + 16);
  v91 = v134;
  v92 = v84;
  v93 = v122;
  v90(v134, v92, v122);
  v94 = v123;
  v132(v123, v87, v88);
  v95 = v124;
  v96 = *(v124 + 48);
  v90(&v94[v96], v91, v93);
  v97 = v125;
  (*(v86 + 32))(v125, v94, v88);
  (*(v89 + 32))(v97 + *(v95 + 48), &v94[v96], v93);
  v98 = *(v89 + 8);
  v98(v133, v93);
  v99 = *(v86 + 8);
  v99(v135, v88);
  v98(v134, v93);
  return (v99)(v131, v88);
}

uint64_t sub_20D8A83A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0C8, &qword_20D97B1F0);
  v5 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v59 - v6;
  v7 = sub_20D9737E8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D973858();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A038, &qword_20D97B128);
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v73 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = &v59 - v17;
  v18 = sub_20D973918();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_20D973938();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0D0, &qword_20D97B1F8);
  v63 = *(v65 - 8);
  v25 = *(v63 + 64);
  v26 = MEMORY[0x28223BE20](v65);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v59 - v29;
  v31 = type metadata accessor for FeaturedHoursChart(0);
  if (*(a2 + *(v31 + 24)) == 1)
  {
    v32 = *(v31 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
  }

  v33 = a1[14];
  sub_20D9738F8();
  v34 = type metadata accessor for FeaturedHoursInfo();
  v35 = (a2 + *(v34 + 52));
  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  v38 = *(v35 + 4);
  v75 = *v35;
  v76 = v37;
  v77 = v36;
  v78 = v38;

  sub_20D973928();
  v74 = *(a2 + *(v34 + 48));
  v61 = v30;
  sub_20D9738C8();
  (*(v21 + 8))(v24, v20);
  v39 = sub_20D973828();
  v62 = &v59;
  v41 = a1[11];
  v40 = a1[12];
  MEMORY[0x28223BE20](v39);
  sub_20D9737D8();
  v58[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0D8, &qword_20D97B200);
  v58[3] = sub_20D8ACFA0(&qword_281126F90, &qword_27C83A0D8, &qword_20D97B200, sub_20D8AD024);
  v58[0] = sub_20D8ACF98;
  v58[1] = v58;
  v42 = v72;
  sub_20D9736B8();
  v43 = v63;
  v44 = *(v63 + 16);
  v45 = v28;
  v46 = v28;
  v60 = v28;
  v47 = v65;
  v44(v46, v30, v65);
  v49 = v67;
  v48 = v68;
  v50 = *(v67 + 16);
  v50(v73, v42, v68);
  v51 = v69;
  v44(v69, v45, v47);
  sub_20D7EBC4C(&qword_281127090, &qword_27C83A038, &qword_20D97B128);
  v52 = v70;
  v53 = *(v70 + 48);
  v50(&v51[v53], v73, v48);
  v54 = v71;
  (*(v43 + 32))(v71, v51, v47);
  (*(v49 + 32))(v54 + *(v52 + 48), &v51[v53], v48);
  v55 = *(v49 + 8);
  v55(v72, v48);
  v56 = *(v43 + 8);
  v56(v61, v47);
  v55(v73, v48);
  return (v56)(v60, v47);
}

uint64_t sub_20D8A8A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for FeaturedHoursChart(0);
  v4 = v3 - 8;
  v68 = *(v3 - 8);
  v67 = *(v68 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A100, &qword_20D97B228);
  v6 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v8 = &v60 - v7;
  v64 = type metadata accessor for FeaturedHoursInfo();
  v9 = (a1 + *(v64 + 40));
  v10 = v9[1];
  v69 = *v9;
  v70 = v10;
  sub_20D7E1EF8();

  v11 = sub_20D9745C8();
  v13 = v12;
  v15 = v14;
  sub_20D974488();
  v61 = sub_20D974558();
  v62 = v16;
  v18 = v17;
  v20 = v19;

  sub_20D7EADC0(v11, v13, v15 & 1);

  LOBYTE(v4) = *(a1 + *(v4 + 32));
  v21 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0C0, &qword_20D97B1B8) + 36)];
  v22 = type metadata accessor for PinnedDynamicSize(0);
  v23 = v22[6];
  v24 = *MEMORY[0x277CDFA10];
  v25 = sub_20D973D58();
  (*(*(v25 - 8) + 104))(v21 + v23, v24, v25);
  *v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  *(v21 + v22[5]) = v4;
  *(v21 + v22[7]) = 0;
  *v8 = v61;
  *(v8 + 1) = v18;
  v8[16] = v20 & 1;
  v26 = v63;
  *(v8 + 3) = v62;
  v27 = &v8[*(v26 + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v29 = *MEMORY[0x277CE0B48];
  v30 = sub_20D974538();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v27 + v28, v29, v30);
  (*(v31 + 56))(v27 + v28, 0, 1, v30);
  *v27 = swift_getKeyPath();
  sub_20D8AD2E8();
  v32 = v65;
  sub_20D9747F8();
  sub_20D7E3944(v8, &qword_27C83A100, &qword_20D97B228);
  v33 = *(a1 + *(v64 + 44));
  *(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0F8, &qword_20D97B220) + 36)) = v33;

  LOBYTE(v33) = sub_20D974348();
  sub_20D973AD8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0F0, &qword_20D97B218) + 36);
  *v42 = v33;
  *(v42 + 8) = v35;
  *(v42 + 16) = v37;
  *(v42 + 24) = v39;
  *(v42 + 32) = v41;
  *(v42 + 40) = 0;
  LOBYTE(v33) = sub_20D974368();
  sub_20D973AD8();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0E8, &qword_20D97B210) + 36);
  *v51 = v33;
  *(v51 + 8) = v44;
  *(v51 + 16) = v46;
  *(v51 + 24) = v48;
  *(v51 + 32) = v50;
  *(v51 + 40) = 0;
  v52 = sub_20D974C48();
  v54 = v53;
  v55 = v66;
  sub_20D8AC45C(a1, v66, type metadata accessor for FeaturedHoursChart);
  v56 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v57 = swift_allocObject();
  sub_20D8AC4C4(v55, v57 + v56, type metadata accessor for FeaturedHoursChart);
  v58 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0E0, &qword_20D97B208) + 36));
  *v58 = sub_20D8AD5DC;
  v58[1] = v57;
  v58[2] = v52;
  v58[3] = v54;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0D8, &qword_20D97B200);
  *(v32 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_20D8A8F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v24 = a4;
  v25 = a5;
  v22 = a2;
  v23 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for FeaturedHoursChart(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D9748F8();
  sub_20D8AC45C(v22, v15, type metadata accessor for FeaturedHoursChart);
  (*(v8 + 16))(v11, v23, v7);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_20D8AC4C4(v15, v19 + v17, type metadata accessor for FeaturedHoursChart);
  result = (*(v8 + 32))(v19 + v18, v11, v7);
  v21 = v25;
  *a6 = v16;
  a6[1] = v21;
  a6[3] = 0;
  a6[4] = 0;
  a6[2] = v19;
  return result;
}

uint64_t sub_20D8A9150(uint64_t a1)
{
  sub_20D973C38();
  v2 = (a1 + *(type metadata accessor for FeaturedHoursChart(0) + 36));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0B0, &qword_20D97B1A8);
  return sub_20D974A58();
}

uint64_t sub_20D8A91EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v169 = a4;
  v199 = a3;
  v196 = a2;
  v200 = a1;
  v205 = a5;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A088, &qword_20D97B178);
  v5 = *(*(v187 - 8) + 64);
  MEMORY[0x28223BE20](v187);
  v185 = v153 - v6;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A048, &qword_20D97B138);
  v203 = *(v204 - 8);
  v7 = *(v203 + 64);
  MEMORY[0x28223BE20](v204);
  v186 = v153 - v8;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A090, &qword_20D97B180);
  v9 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v170 = v153 - v10;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A070, &qword_20D97B160);
  v183 = *(v184 - 8);
  v11 = *(v183 + 64);
  MEMORY[0x28223BE20](v184);
  v171 = v153 - v12;
  v13 = sub_20D9737E8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v163 = v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D973858();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v162 = v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A080, &qword_20D97B170);
  v165 = *(v166 - 8);
  v19 = *(v165 + 64);
  MEMORY[0x28223BE20](v166);
  v164 = v153 - v20;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A098, &qword_20D97B188);
  v167 = *(v168 - 8);
  v21 = *(v167 + 64);
  v22 = MEMORY[0x28223BE20](v168);
  v178 = v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v177 = v153 - v24;
  v25 = sub_20D973918();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v153[1] = v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_20D973938();
  v155 = *(v157 - 8);
  v28 = *(v155 + 64);
  MEMORY[0x28223BE20](v157);
  v154 = v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A078, &qword_20D97B168);
  v158 = *(v159 - 8);
  v30 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v156 = v153 - v31;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0A0, &qword_20D97B190);
  v160 = *(v161 - 8);
  v32 = *(v160 + 64);
  v33 = MEMORY[0x28223BE20](v161);
  v176 = v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v197 = v153 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A068, &qword_20D97B158);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v182 = v153 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v179 = v153 - v40;
  v195 = sub_20D9727B8();
  v194 = *(v195 - 8);
  v41 = *(v194 + 8);
  MEMORY[0x28223BE20](v195);
  v43 = v153 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_20D9727D8();
  v192 = *(v193 - 8);
  v44 = *(v192 + 64);
  MEMORY[0x28223BE20](v193);
  v191 = v153 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_20D973578();
  v46 = *(v188 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v188);
  v49 = v153 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A058, &qword_20D97B148);
  v174 = *(v175 - 8);
  v50 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v52 = v153 - v51;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0A8, &unk_20D97B198);
  v189 = *(v190 - 1);
  v53 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v173 = v153 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A050, &qword_20D97B140);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v181 = v153 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v202 = v153 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8);
  v63 = v153 - v62;
  v64 = sub_20D972628();
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  v67 = MEMORY[0x28223BE20](v64);
  v69 = v153 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v71 = v153 - v70;
  sub_20D9739B8();
  if ((*(v65 + 48))(v63, 1, v64) == 1)
  {
    sub_20D7E3944(v63, &qword_27C8389E8, &qword_20D9768D0);
    return (*(v203 + 56))(v205, 1, 1, v204);
  }

  v201 = v65;
  v73 = *(v65 + 32);
  v180 = v64;
  v73(v71, v63, v64);
  v198 = v71;
  v74 = v200;
  if (sub_20D8AA9C0(v71, v196))
  {
    v75 = v43;
    v76 = 1;
    v77 = v202;
    v78 = v195;
    v79 = v194;
    v80 = v190;
    v81 = v189;
  }

  else
  {
    sub_20D973B38();
    v219 = v210;
    v220 = v211;
    v221 = v212;
    sub_20D973568();
    *&v216 = sub_20D9748D8();
    *(&v216 + 1) = 1;
    LODWORD(v217) = 1056964608;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A060, &qword_20D97B150);
    v83 = sub_20D7EBC4C(&qword_281126F88, &qword_27C83A060, &qword_20D97B150);
    v84 = v188;
    sub_20D9738C8();
    v74 = v200;

    (*(v46 + 8))(v49, v84);
    v85 = type metadata accessor for FeaturedHoursInfo();
    v78 = v195;
    if (*(v74 + *(v85 + 60)) == 1)
    {
      v86 = *(v74 + *(v85 + 52)) * 0.5 + 1.0;
    }

    v75 = v43;
    *&v216 = v188;
    *(&v216 + 1) = v82;
    *&v217 = MEMORY[0x277CBB200];
    *(&v217 + 1) = v83;
    swift_getOpaqueTypeConformance2();
    v87 = v173;
    v88 = v175;
    sub_20D9738E8();
    (*(v174 + 8))(v52, v88);
    v81 = v189;
    v77 = v202;
    v80 = v190;
    (*(v189 + 32))(v202, v87, v190);
    v76 = 0;
    v79 = v194;
  }

  (*(v81 + 56))(v77, v76, 1, v80);
  v89 = type metadata accessor for FeaturedHoursChart(0);
  v90 = (v74 + *(v89 + 36));
  v91 = *v90;
  v92 = v90[1];
  *&v216 = v91;
  *(&v216 + 1) = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0B0, &qword_20D97B1A8);
  sub_20D974A48();
  v93 = *&v213 + 1.0 + *(v199 + 104);
  v94 = (v74 + *(v89 + 32));
  v95 = *v94;
  v96 = v94[1];
  *&v216 = v95;
  *(&v216 + 1) = v96;
  sub_20D974A48();
  v97 = v191;
  sub_20D972778();
  v98 = *(v79 + 13);
  LODWORD(v195) = *MEMORY[0x277CC9980];
  v194 = v98;
  v98(v75);
  sub_20D972558();
  v196 = sub_20D9727C8();
  v99 = v201 + 8;
  v190 = *(v201 + 8);
  (v190)(v69, v180);
  v100 = *(v79 + 1);
  v100(v75, v78);
  v101 = *(v192 + 8);
  v102 = v193;
  result = v101(v97, v193);
  if (__OFADD__(v196, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v201 = v196 + 1;
  sub_20D972778();
  (v194)(v75, v195, v78);
  v103 = sub_20D9727C8();
  v100(v75, v78);
  result = v101(v97, v102);
  v104 = v103 - v201;
  if (__OFSUB__(v103, v201))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v201 = v99;
  if (0xAAAAAAAAAAAAAAABLL * v104 + 0x2AAAAAAAAAAAAAAALL <= 0x5555555555555554)
  {
    v107 = *(v199 + 48);
    sub_20D9738F8();
    sub_20D973B38();
    v216 = v213;
    v217 = v214;
    v218 = v215;
    v108 = v154;
    sub_20D973928();
    v206 = sub_20D9748D8();
    v207 = 1;
    LODWORD(v208) = 1056964608;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A060, &qword_20D97B150);
    v110 = sub_20D7EBC4C(&qword_281126F88, &qword_27C83A060, &qword_20D97B150);
    v111 = MEMORY[0x277CBB428];
    v112 = v156;
    v113 = v157;
    sub_20D9738C8();

    (*(v155 + 8))(v108, v113);
    v114 = type metadata accessor for FeaturedHoursInfo();
    v115 = v200;
    LODWORD(v196) = *(v200 + *(v114 + 60));
    if (v196 == 1)
    {
      v116 = *(v200 + *(v114 + 52)) * 0.5 + 1.0;
    }

    v195 = v114;
    v206 = v113;
    v207 = v109;
    v208 = v111;
    v209 = v110;
    swift_getOpaqueTypeConformance2();
    v117 = v159;
    sub_20D9738E8();
    (*(v158 + 8))(v112, v117);
    v118 = sub_20D973828();
    v119 = *(v199 + 88);
    v120 = *(v199 + 96);
    MEMORY[0x28223BE20](v118);
    sub_20D9737D8();
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0B8, &qword_20D97B1B0);
    v152 = sub_20D8ACFA0(&qword_281126FD8, &qword_27C83A0B8, &qword_20D97B1B0, sub_20D8ACE7C);
    v149 = sub_20D8ACE70;
    v150 = &v147;
    v148 = 0;
    v147 = v120;
    v121 = v164;
    sub_20D9736B8();
    if (v196)
    {
      v122 = *(v115 + *(v195 + 52)) * 0.5 + 1.0;
    }

    sub_20D7EBC4C(&qword_281127098, &qword_27C83A080, &qword_20D97B170);
    v123 = v177;
    v124 = v166;
    sub_20D9738E8();
    (*(v165 + 8))(v121, v124);
    v125 = v160;
    v126 = *(v160 + 16);
    v127 = v176;
    v128 = v161;
    v126(v176, v197, v161);
    v129 = v167;
    v130 = *(v167 + 16);
    v131 = v168;
    v130(v178, v123, v168);
    v132 = v170;
    v126(v170, v127, v128);
    v133 = v172;
    v134 = *(v172 + 48);
    v135 = v178;
    v130(&v132[v134], v178, v131);
    v136 = v171;
    (*(v125 + 32))(v171, v132, v128);
    (*(v129 + 32))(v136 + *(v133 + 48), &v132[v134], v131);
    v137 = *(v129 + 8);
    v137(v177, v131);
    v138 = *(v125 + 8);
    v138(v197, v128);
    v137(v135, v131);
    v138(v176, v128);
    v106 = v179;
    sub_20D7EAF18(v136, v179, &qword_27C83A070, &qword_20D97B160);
    v105 = 0;
  }

  else
  {
    v105 = 1;
    v106 = v179;
  }

  (*(v183 + 56))(v106, v105, 1, v184);
  v139 = v202;
  v140 = v181;
  sub_20D7EB7E8(v202, v181, &qword_27C83A050, &qword_20D97B140);
  v141 = v182;
  sub_20D7EB7E8(v106, v182, &qword_27C83A068, &qword_20D97B158);
  sub_20D8ACAE8();
  v142 = v185;
  sub_20D7EB7E8(v140, v185, &qword_27C83A050, &qword_20D97B140);
  sub_20D8ACC38(&qword_2811270B0, &qword_27C83A068, &qword_20D97B158, sub_20D8ACCB4);
  v143 = v187;
  v144 = *(v187 + 48);
  sub_20D7EB7E8(v141, v142 + v144, &qword_27C83A068, &qword_20D97B158);
  v145 = v186;
  sub_20D7EAF18(v142, v186, &qword_27C83A050, &qword_20D97B140);
  sub_20D7EAF18(v142 + v144, v145 + *(v143 + 48), &qword_27C83A068, &qword_20D97B158);
  sub_20D7E3944(v106, &qword_27C83A068, &qword_20D97B158);
  sub_20D7E3944(v139, &qword_27C83A050, &qword_20D97B140);
  sub_20D7E3944(v141, &qword_27C83A068, &qword_20D97B158);
  sub_20D7E3944(v140, &qword_27C83A050, &qword_20D97B140);
  v146 = v205;
  sub_20D7EAF18(v145, v205, &qword_27C83A048, &qword_20D97B138);
  (*(v203 + 56))(v146, 0, 1, v204);
  return (v190)(v198, v180);
}

BOOL sub_20D8AA9C0(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v26 = sub_20D972628();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20D971D98();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v25);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FeaturedInterval();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v24);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v28 = a2;
  v16 = *(a2 + 16);
  v17 = (v3 + 16);
  v18 = (v7 + 8);
  do
  {
    v19 = v15;
    if (v16 == v15)
    {
      break;
    }

    sub_20D8AC45C(v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15++, v14, type metadata accessor for FeaturedInterval);
    (*v17)(v6, v14, v26);
    v20 = *&v14[*(v24 + 20)];
    sub_20D971D68();
    v21 = sub_20D971D88();
    (*v18)(v10, v25);
    sub_20D8ACF38(v14, type metadata accessor for FeaturedInterval);
  }

  while ((v21 & 1) == 0);
  return v16 != v19;
}

uint64_t sub_20D8AAC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v7 = sub_20D972408();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D972628();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  (*(v15 + 16))(&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v8 + 16))(v11, a2, v7);
  sub_20D8AC52C(&unk_281127750, MEMORY[0x277CC9428]);
  sub_20D8AC52C(&qword_281127740, MEMORY[0x277CC9578]);
  v16 = sub_20D974598();
  v18 = v17;
  LOBYTE(a2) = v19;
  sub_20D974488();
  v20 = sub_20D974558();
  v22 = v21;
  v24 = v23;

  sub_20D7EADC0(v16, v18, a2 & 1);

  sub_20D9743E8();
  v25 = sub_20D9744F8();
  v27 = v26;
  LOBYTE(v18) = v28;
  sub_20D7EADC0(v20, v22, v24 & 1);

  v42 = sub_20D974258();
  v29 = sub_20D974518();
  v31 = v30;
  LOBYTE(a1) = v32;
  v34 = v33;
  sub_20D7EADC0(v25, v27, v18 & 1);

  LOBYTE(v25) = *(v41 + *(type metadata accessor for FeaturedHoursChart(0) + 24));
  v35 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0C0, &qword_20D97B1B8) + 36));
  v36 = type metadata accessor for PinnedDynamicSize(0);
  v37 = v36[6];
  v38 = *MEMORY[0x277CDFA10];
  v39 = sub_20D973D58();
  (*(*(v39 - 8) + 104))(v35 + v37, v38, v39);
  *v35 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  *(v35 + v36[5]) = v25;
  *(v35 + v36[7]) = 0;
  *a4 = v29;
  *(a4 + 8) = v31;
  *(a4 + 16) = a1 & 1;
  *(a4 + 24) = v34;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0B8, &qword_20D97B1B0);
  *(a4 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_20D8AB060(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_20D7EBC4C(a4, a2, a3);
  return sub_20D9746B8();
}

uint64_t sub_20D8AB0F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D974048();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_20D7EB7E8(v2, &v17 - v11, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973D58();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_20D8AB2F0()
{
  v1 = sub_20D973D58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PinnedDynamicSize(0);
  if (*(v0 + *(v6 + 20)) == 1)
  {
    sub_20D8AB0F0(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A008, &qword_20D97B0F0);
    sub_20D7EBC4C(&qword_281126F78, &qword_27C83A008, &qword_20D97B0F0);
    sub_20D974768();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v8 = v6;
    if (*(v0 + *(v6 + 28)) & 1) != 0 || (sub_20D8AB0F0(v5), v9 = *(v8 + 24), sub_20D8AC52C(&qword_281127038, MEMORY[0x277CDFA28]), v10 = sub_20D974FA8(), v11 = *(v2 + 8), v11(v5, v1), (v10))
    {
      v12 = *(v8 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A008, &qword_20D97B0F0);
      sub_20D7EBC4C(&qword_281126F78, &qword_27C83A008, &qword_20D97B0F0);
      return sub_20D974768();
    }

    else
    {
      sub_20D8AB0F0(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A008, &qword_20D97B0F0);
      sub_20D7EBC4C(&qword_281126F78, &qword_27C83A008, &qword_20D97B0F0);
      sub_20D974768();
      return v11(v5, v1);
    }
  }
}

double sub_20D8AB5C4@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *MEMORY[0x277D76940];
  v7 = 12.0;
  if (a1)
  {
    v8 = [objc_opt_self() preferredFontForTextStyle_];
    [v8 pointSize];
    v7 = v9;
  }

  v10 = objc_opt_self();
  v11 = [v10 preferredFontForTextStyle_];
  [v11 descender];
  v13 = v12;

  if (a2)
  {
    _Q1 = xmmword_20D97AF00;
    v15 = 5.0;
    v16 = 0.0;
    v17 = 38.0;
  }

  else
  {
    v16 = 17.0;
    if (a1)
    {
      v18 = [v10 preferredFontForTextStyle_];
      [v18 pointSize];
      v16 = v19;
    }

    v17 = v16 + 9.0 + 10.0;
    v15 = 7.0;
    __asm { FMOV            V1.2D, #3.0 }

    *&_Q1 = v7 + 7.0;
  }

  *a3 = a2 & 1;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v7;
  *(a3 + 32) = _Q1;
  *(a3 + 48) = v13;
  *(a3 + 56) = xmmword_20D97AF10;
  *(a3 + 72) = xmmword_20D97AF20;
  *(a3 + 88) = 0x4010000000000000;
  *(a3 + 96) = v15;
  *(a3 + 104) = xmmword_20D97AF30;
  result = 17.0;
  *(a3 + 120) = xmmword_20D97AF40;
  return result;
}

unint64_t sub_20D8AB77C()
{
  result = qword_2811270C8;
  if (!qword_2811270C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F68, &qword_20D97AF68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F70, &qword_20D97AF70);
    sub_20D973648();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20D8AB914();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FA8, &unk_20D97E110);
    sub_20D973978();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811270C8);
  }

  return result;
}

unint64_t sub_20D8AB914()
{
  result = qword_281126EF8;
  if (!qword_281126EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F78, &qword_20D97AF78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F80, &qword_20D97AF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F88, &qword_20D97AF88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F90, &qword_20D97AF90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F98, &qword_20D97AF98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FA0, &unk_20D97AFA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F70, &qword_20D97AF70);
    sub_20D973648();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281127040, &qword_27C839F98, &qword_20D97AF98);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126EF8);
  }

  return result;
}

unint64_t sub_20D8ABBAC()
{
  result = qword_281126FF8;
  if (!qword_281126FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FB0, &qword_20D97AFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FF8);
  }

  return result;
}

uint64_t sub_20D8ABC30(uint64_t a1)
{
  v3 = *(type metadata accessor for FeaturedHoursChart(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 152) & ~*(v3 + 80));

  return sub_20D8A740C(a1, v1 + 16, v4);
}

unint64_t sub_20D8ABCB4()
{
  result = qword_281127020;
  if (!qword_281127020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FC0, &qword_20D97AFC0);
    sub_20D8AC52C(&qword_281127088, MEMORY[0x277CBB360]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127020);
  }

  return result;
}

unint64_t sub_20D8ABD7C()
{
  result = qword_2811270D0;
  if (!qword_2811270D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FC8, &qword_20D97AFC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FD0, &qword_20D97AFD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FD8, &qword_20D97AFD8);
    sub_20D7EBC4C(&qword_281127070, &qword_27C839FD0, &qword_20D97AFD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FE0, &qword_20D97AFE0);
    sub_20D7EBC4C(&qword_281126F70, &qword_27C839FE0, &qword_20D97AFE0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FE8, &qword_20D97AFE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FF0, &qword_20D97AFF0);
    sub_20D7EBC4C(&qword_281127068, &qword_27C839FE8, &qword_20D97AFE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FF8, &qword_20D97AFF8);
    sub_20D7EBC4C(&qword_281126F68, &qword_27C839FF8, &qword_20D97AFF8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811270D0);
  }

  return result;
}

void sub_20D8AC02C()
{
  type metadata accessor for FeaturedHoursInfo();
  if (v0 <= 0x3F)
  {
    sub_20D7F8490();
    if (v1 <= 0x3F)
    {
      sub_20D7E63C4();
      if (v2 <= 0x3F)
      {
        sub_20D8AC0E8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D8AC0E8()
{
  if (!qword_281126F00)
  {
    v0 = sub_20D974A78();
    if (!v1)
    {
      atomic_store(v0, &qword_281126F00);
    }
  }
}

unint64_t sub_20D8AC138()
{
  result = qword_281127008;
  if (!qword_281127008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A000, &qword_20D97B000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F60, &qword_20D97AF60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FC8, &qword_20D97AFC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F58, &qword_20D97AF58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FB8, &qword_20D97AFB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F50, &qword_20D97AF50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FB0, &qword_20D97AFB0);
    sub_20D7EBC4C(&qword_281127080, &qword_27C839F50, &qword_20D97AF50);
    sub_20D8ABBAC();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FC0, &qword_20D97AFC0);
    sub_20D8ABCB4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20D8ABD7C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127008);
  }

  return result;
}

void sub_20D8AC3B4()
{
  sub_20D7F8490();
  if (v0 <= 0x3F)
  {
    sub_20D973D58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20D8AC45C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8AC4C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8AC52C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for FeaturedHoursChart(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 152) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_20D972628();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for FeaturedHoursInfo();
  v8 = *(v0 + v3 + v7[6]);

  v9 = *(v0 + v3 + v7[7]);

  v10 = *(v0 + v3 + v7[8] + 8);

  v11 = *(v0 + v3 + v7[9] + 8);

  v12 = *(v0 + v3 + v7[10] + 8);

  v13 = *(v0 + v3 + v7[11]);

  v14 = *(v0 + v3 + v7[12]);

  v15 = *(v0 + v3 + v7[13] + 24);

  v16 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_20D973D58();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = v1[7];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v20 - 8) + 8))(v5 + v19, v20);
  v21 = *(v5 + v1[8] + 8);

  v22 = *(v5 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D8AC7B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeaturedHoursChart(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 152) & ~*(v3 + 80));

  return sub_20D8A83A8((v1 + 16), v4, a1);
}

unint64_t sub_20D8AC824()
{
  result = qword_2811270C0;
  if (!qword_2811270C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A030, &qword_20D97B120);
    sub_20D973938();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281127090, &qword_27C83A038, &qword_20D97B128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811270C0);
  }

  return result;
}

uint64_t sub_20D8AC928@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeaturedHoursChart(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_20D972408() - 8);
  v8 = *(v1 + v5);
  v9 = v1 + ((v6 + *(v7 + 80) + 136) & ~*(v7 + 80));

  return sub_20D8A91EC(v1 + v4, v8, v1 + v6, v9, a1);
}

unint64_t sub_20D8ACA28()
{
  result = qword_2811270A8;
  if (!qword_2811270A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A048, &qword_20D97B138);
    sub_20D8ACAE8();
    sub_20D8ACC38(&qword_2811270B0, &qword_27C83A068, &qword_20D97B158, sub_20D8ACCB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811270A8);
  }

  return result;
}

unint64_t sub_20D8ACAE8()
{
  result = qword_281127078;
  if (!qword_281127078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A050, &qword_20D97B140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A058, &qword_20D97B148);
    sub_20D973578();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A060, &qword_20D97B150);
    sub_20D7EBC4C(&qword_281126F88, &qword_27C83A060, &qword_20D97B150);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127078);
  }

  return result;
}

uint64_t sub_20D8ACC38(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D8ACCB4()
{
  result = qword_2811270B8;
  if (!qword_2811270B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A070, &qword_20D97B160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A078, &qword_20D97B168);
    sub_20D973938();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A060, &qword_20D97B150);
    sub_20D7EBC4C(&qword_281126F88, &qword_27C83A060, &qword_20D97B150);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A080, &qword_20D97B170);
    sub_20D7EBC4C(&qword_281127098, &qword_27C83A080, &qword_20D97B170);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811270B8);
  }

  return result;
}

unint64_t sub_20D8ACE7C()
{
  result = qword_281127018;
  if (!qword_281127018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A0C0, &qword_20D97B1B8);
    sub_20D8AC52C(&qword_2811274D8, type metadata accessor for PinnedDynamicSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127018);
  }

  return result;
}

uint64_t sub_20D8ACF38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D8ACFA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D8AD024()
{
  result = qword_281126FA0;
  if (!qword_281126FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A0E0, &qword_20D97B208);
    sub_20D8AD0DC();
    sub_20D7EBC4C(&qword_281126F80, &qword_27C83A118, &qword_20D97B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FA0);
  }

  return result;
}

unint64_t sub_20D8AD0DC()
{
  result = qword_281126FB0;
  if (!qword_281126FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A0E8, &qword_20D97B210);
    sub_20D8AD168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FB0);
  }

  return result;
}

unint64_t sub_20D8AD168()
{
  result = qword_281126FC8;
  if (!qword_281126FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A0F0, &qword_20D97B218);
    sub_20D8AD1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FC8);
  }

  return result;
}

unint64_t sub_20D8AD1F4()
{
  result = qword_281127000;
  if (!qword_281127000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A0F8, &qword_20D97B220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A100, &qword_20D97B228);
    sub_20D8AD2E8();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F60, &qword_27C83A110, &qword_20D97CC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127000);
  }

  return result;
}

unint64_t sub_20D8AD2E8()
{
  result = qword_281126FD0;
  if (!qword_281126FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A100, &qword_20D97B228);
    sub_20D8ACE7C();
    sub_20D7EBC4C(&qword_281126F50, &qword_27C83A108, &unk_20D97B230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FD0);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for FeaturedHoursChart(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_20D972628();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for FeaturedHoursInfo();
  v8 = *(v0 + v3 + v7[6]);

  v9 = *(v0 + v3 + v7[7]);

  v10 = *(v0 + v3 + v7[8] + 8);

  v11 = *(v0 + v3 + v7[9] + 8);

  v12 = *(v0 + v3 + v7[10] + 8);

  v13 = *(v0 + v3 + v7[11]);

  v14 = *(v0 + v3 + v7[12]);

  v15 = *(v0 + v3 + v7[13] + 24);

  v16 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_20D973D58();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = v1[7];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v20 - 8) + 8))(v5 + v19, v20);
  v21 = *(v5 + v1[8] + 8);

  v22 = *(v5 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_44Tm(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for FeaturedHoursChart(0);
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v31 = *(v8 + 64);
  v10 = v1 + v5;
  v11 = sub_20D972628();
  (*(*(v11 - 8) + 8))(v1 + v5, v11);
  v12 = type metadata accessor for FeaturedHoursInfo();
  v13 = *(v1 + v5 + v12[6]);

  v14 = *(v1 + v5 + v12[7]);

  v15 = *(v1 + v5 + v12[8] + 8);

  v16 = *(v1 + v5 + v12[9] + 8);

  v17 = *(v1 + v5 + v12[10] + 8);

  v18 = *(v1 + v5 + v12[11]);

  v19 = *(v1 + v5 + v12[12]);

  v20 = *(v1 + v5 + v12[13] + 24);

  v21 = v3[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_20D973D58();
    (*(*(v22 - 8) + 8))(v10 + v21, v22);
  }

  else
  {
    v23 = *(v10 + v21);
  }

  v24 = v4 | v9;
  v25 = (v5 + v6 + v9) & ~v9;
  v26 = v3[7];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v27 - 8) + 8))(v10 + v26, v27);
  v28 = *(v10 + v3[8] + 8);

  v29 = *(v10 + v3[9] + 8);

  (*(v8 + 8))(v1 + v25, v7);

  return MEMORY[0x2821FE8E8](v1, v25 + v31, v24 | 7);
}

uint64_t sub_20D8AD9D4(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FeaturedHoursChart(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a1(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(v2 + v5, v8);
}

unint64_t sub_20D8ADABC()
{
  result = qword_281126E90;
  if (!qword_281126E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281126E90);
  }

  return result;
}

uint64_t sub_20D8ADB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FeaturedHoursChart(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + ((v7 + 143) & 0xFFFFFFFFFFFFFFF8));

  return sub_20D8A60E4(a1, v2 + v6, v2 + v7, v8, a2);
}

unint64_t sub_20D8ADBCC()
{
  result = qword_281126F98;
  if (!qword_281126F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A160, &qword_20D97B2D8);
    sub_20D8ADC84();
    sub_20D7EBC4C(&qword_281126F60, &qword_27C83A110, &qword_20D97CC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126F98);
  }

  return result;
}

unint64_t sub_20D8ADC84()
{
  result = qword_281126FA8;
  if (!qword_281126FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A158, &qword_20D97B2D0);
    sub_20D8ADD10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FA8);
  }

  return result;
}

unint64_t sub_20D8ADD10()
{
  result = qword_281126FB8;
  if (!qword_281126FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A150, &qword_20D97B2C8);
    sub_20D8ADDCC();
    sub_20D8AC52C(&qword_2811274D8, type metadata accessor for PinnedDynamicSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FB8);
  }

  return result;
}

unint64_t sub_20D8ADDCC()
{
  result = qword_281126FE0;
  if (!qword_281126FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A170, &qword_20D97B318);
    sub_20D8ADE84();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FE0);
  }

  return result;
}

unint64_t sub_20D8ADE84()
{
  result = qword_281126F08;
  if (!qword_281126F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A178, &unk_20D97B320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126F08);
  }

  return result;
}

unint64_t sub_20D8ADF00(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = *v3;
    result = sub_20D8D4AC0(a3);
    if (v8)
    {
      v9 = result;
      v10 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v4;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_20D8D60B4();
        v12 = v16;
      }

      result = sub_20D8D4E40(v9, v12);
      *v4 = v12;
    }
  }

  else
  {
    v14 = *v3;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    result = sub_20D8D5428(a3, v15, *&a1);
    *v3 = v17;
  }

  return result;
}

uint64_t sub_20D8ADFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_20D8D5550(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_20D8D4A48(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_20D8D644C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_20D8D4FB0(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_20D8AE0DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v316 = a1;
  v245 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v258 = &v237 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v256 = &v237 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v255 = &v237 - v10;
  v244 = sub_20D971EA8();
  v243 = *(v244 - 8);
  v11 = *(v243 + 64);
  MEMORY[0x28223BE20](v244);
  v257 = &v237 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_20D972E88();
  v253 = *(v254 - 8);
  v13 = *(v253 + 64);
  MEMORY[0x28223BE20](v254);
  v252 = &v237 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v15 = *(*(v251 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v251);
  v250 = &v237 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v249 = &v237 - v18;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v19 = *(*(v248 - 8) + 64);
  MEMORY[0x28223BE20](v248);
  v260 = &v237 - v20;
  v273 = type metadata accessor for HistoricalUsageSnapshot();
  v21 = *(*(v273 - 1) + 64);
  MEMORY[0x28223BE20](v273);
  v265 = (&v237 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v315 = sub_20D972C58();
  v295 = *(v315 - 1);
  v23 = *(v295 + 64);
  v24 = MEMORY[0x28223BE20](v315);
  v298 = &v237 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v310 = &v237 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v241 = &v237 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v240 = &v237 - v31;
  MEMORY[0x28223BE20](v30);
  v275 = &v237 - v32;
  v272 = sub_20D972AF8();
  v270 = *(v272 - 8);
  v33 = *(v270 + 64);
  v34 = MEMORY[0x28223BE20](v272);
  v259 = &v237 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v267 = &v237 - v37;
  MEMORY[0x28223BE20](v36);
  v269 = &v237 - v38;
  v287 = sub_20D9727B8();
  v290 = *(v287 - 8);
  v39 = *(v290 + 64);
  MEMORY[0x28223BE20](v287);
  v314 = &v237 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20D972838();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41);
  v266 = &v237 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v289 = &v237 - v46;
  v47 = sub_20D9726F8();
  v48 = *(v47 - 8);
  v49 = v48[8];
  MEMORY[0x28223BE20](v47);
  v51 = &v237 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20D9727D8();
  v53 = *(v52 - 1);
  v54 = *(v53 + 8);
  MEMORY[0x28223BE20](v52);
  v56 = &v237 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = sub_20D972628();
  v271 = *(v313 - 8);
  v57 = *(v271 + 64);
  v58 = MEMORY[0x28223BE20](v313);
  v284 = &v237 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v311 = &v237 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v239 = &v237 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v262 = &v237 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v238 = &v237 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v261 = &v237 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v264 = &v237 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v312 = &v237 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v268 = &v237 - v75;
  MEMORY[0x28223BE20](v74);
  v77 = &v237 - v76;
  v78 = v48[13];
  v302 = *MEMORY[0x277CC9830];
  v301 = v48 + 13;
  v286 = v78;
  v78(v51);
  sub_20D972708();
  v79 = v48[1];
  v80 = v51;
  v81 = v51;
  v82 = v47;
  v303 = v48 + 1;
  v285 = v79;
  v79(v81, v47);
  if (qword_281126470 != -1)
  {
LABEL_91:
    swift_once();
  }

  v305 = __swift_project_value_buffer(v41, qword_281126478);
  v247 = v42;
  v83 = v41;
  v292 = v41;
  v306 = *(v42 + 16);
  v84 = v289;
  v306(v289, v305, v83);
  sub_20D972798();
  v85 = v77;
  sub_20D972718();
  v246 = v53;
  v86 = *(v53 + 1);
  v53 += 8;
  v288 = v86;
  v87 = v52;
  v86(v56, v52);
  v88 = v290;
  v89 = *(v290 + 104);
  v279 = *MEMORY[0x277CC9968];
  v90 = v287;
  v278 = v290 + 104;
  v277 = v89;
  v89(v314);
  v286(v80, v302, v82);
  sub_20D972708();
  v280 = v80;
  v281 = v82;
  v285(v80, v82);
  v304 = v42 + 16;
  v306(v84, v305, v292);
  sub_20D972798();
  v91 = v268;
  v242 = v85;
  v92 = v314;
  sub_20D9730D8();
  v283 = v56;
  v299 = v53;
  v300 = v87;
  v288(v56, v87);
  v93 = *(v88 + 8);
  v290 = v88 + 8;
  v276 = v93;
  v93(v92, v90);
  (*(v270 + 104))(v269, *MEMORY[0x277D075B8], v272);
  v263 = 0x800000020D9898A0;
  v94 = v271 + 16;
  v296 = *(v271 + 16);
  v296(v312, v91, v313);
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
  v274 = 0;
  v80 = 0;
  v52 = (v94 - 8);
  v297 = v94;
  v291 = (v94 + 16);
  v307 = (v295 + 16);
  v308 = v295 + 8;
  v293 = v295 + 32;
  v316 = MEMORY[0x277D84F90];
  v77 = v298;
  v282 = (v94 - 8);
  do
  {
    v95 = *(&unk_282497518 + v80 + 4);
    v82 = v313;
    v96 = v311;
    v309 = v80;
    if (v80)
    {
      v97 = v280;
      v98 = v281;
      v99 = v286;
      v286(v280, v302, v281);
      v100 = v283;
      sub_20D972708();
      v101 = v285;
      v285(v97, v98);
      v80 = v289;
      v102 = v292;
      v306(v289, v305, v292);
      sub_20D972798();
      v103 = v284;
      sub_20D972718();
      v104 = v288;
      v288(v100, v300);
      v105 = v92;
      v106 = v287;
      v277(v105, v279, v287);
      v99(v97, v302, v98);
      sub_20D972708();
      v107 = v98;
      v96 = v311;
      v101(v97, v107);
      v108 = v102;
      v109 = v312;
      v306(v80, v305, v108);
      v110 = v313;
      v77 = v298;
      sub_20D972798();
      sub_20D9730D8();
      v104(v100, v300);
      v82 = v110;
      v52 = v291;
      v276(v314, v106);
      v53 = v282;
      v111 = *v282;
      (*v282)(v103, v82);
      v111(v109, v82);
      (*v52)(v109, v96, v82);
    }

    if (v95 != 0.0)
    {
      v118 = sub_20D8D6850(&unk_282499B30);
      v119 = sub_20D8D4AC0(0);
      v41 = v294;
      v42 = 1;
      if (v120)
      {
        v121 = v119;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v317 = v118;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_20D8D60B4();
          v118 = v317;
        }

        sub_20D8D4E40(v121, v118);
      }

      v123 = swift_isUniquelyReferenced_nonNull_native();
      v317 = v118;
      sub_20D8D5428(1, v123, 0.3);
      v124 = v317;
      v125 = sub_20D8D4AC0(2);
      if (v126)
      {
        v127 = v125;
        v128 = swift_isUniquelyReferenced_nonNull_native();
        v317 = v124;
        if (!v128)
        {
          sub_20D8D60B4();
          v124 = v317;
        }

        sub_20D8D4E40(v127, v124);
      }

      v129 = swift_isUniquelyReferenced_nonNull_native();
      v317 = v124;
      sub_20D8D5428(3, v129, 0.7);
      v53 = v317;
      v130 = sub_20D8D4AC0(4);
      if (v131)
      {
        v132 = v96;
        v133 = v130;
        v134 = swift_isUniquelyReferenced_nonNull_native();
        v317 = v53;
        if (!v134)
        {
          sub_20D8D60B4();
          v53 = v317;
        }

        sub_20D8D4E40(v133, v53);
        v82 = v313;
        v96 = v132;
      }

      v56 = v41;
      v135 = sub_20D975758();
      v136 = 0;
      v137 = 1 << v53[32];
      if (v137 < 64)
      {
        v138 = ~(-1 << v137);
      }

      else
      {
        v138 = -1;
      }

      for (i = v138 & *(v53 + 8); i; v135[2] = v147)
      {
        v140 = __clz(__rbit64(i));
        i &= i - 1;
        v141 = v140 | (v136 << 6);
LABEL_31:
        v144 = *(*(v53 + 6) + 8 * v141);
        v145 = *(*(v53 + 7) + 8 * v141);
        *(v135 + ((v141 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v141;
        *(v135[6] + 8 * v141) = v144;
        *(v135[7] + 8 * v141) = v95 * v145;
        v146 = v135[2];
        v116 = __OFADD__(v146, 1);
        v147 = v146 + 1;
        if (v116)
        {
          goto LABEL_80;
        }
      }

      v142 = v136;
      while (1)
      {
        v136 = v142 + 1;
        if (__OFADD__(v142, 1))
        {
          break;
        }

        if (v136 >= ((v137 + 63) >> 6))
        {

          goto LABEL_35;
        }

        v143 = *&v53[8 * v136 + 64];
        ++v142;
        if (v143)
        {
          i = (v143 - 1) & v143;
          v141 = __clz(__rbit64(v143)) | (v136 << 6);
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v41 = v294;
    v112 = sub_20D975778();
    v56 = v112;
    v113 = sub_20D8D4AC0(0);
    v42 = 1;
    if (v114)
    {
      goto LABEL_86;
    }

    v112[(v113 >> 6) + 8] |= 1 << v113;
    *(v112[6] + 8 * v113) = 0;
    *(v112[7] + 8 * v113) = 0;
    v115 = v112[2];
    v116 = __OFADD__(v115, 1);
    v117 = v115 + 1;
    if (v116)
    {
      goto LABEL_87;
    }

    v112[2] = v117;
LABEL_35:
    v53 = sub_20D975778();
    v56 = v53;
    v148 = sub_20D8D4AC0(0);
    if (v149)
    {
      goto LABEL_82;
    }

    *&v53[8 * (v148 >> 6) + 64] |= 1 << v148;
    *(*(v53 + 6) + 8 * v148) = 0;
    *(*(v53 + 7) + 8 * v148) = 0;
    v150 = *(v53 + 2);
    v116 = __OFADD__(v150, 1);
    v151 = v150 + 1;
    if (v116)
    {
      goto LABEL_83;
    }

    *(v53 + 2) = v151;
    if (v95 != 0.0)
    {
      v52 = v96;
      v156 = sub_20D8D6850(&unk_282499BA0);
      v56 = v41;
      v157 = sub_20D975758();
      v82 = v157;
      v158 = 0;
      v159 = 1 << *(v156 + 32);
      if (v159 < 64)
      {
        v160 = ~(-1 << v159);
      }

      else
      {
        v160 = -1;
      }

      for (j = v160 & *(v156 + 64); j; v157[2] = v169)
      {
        v162 = __clz(__rbit64(j));
        j &= j - 1;
        v163 = v162 | (v158 << 6);
LABEL_51:
        v166 = *(*(v156 + 48) + 8 * v163);
        v167 = *(*(v156 + 56) + 8 * v163);
        *(v157 + ((v163 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v163;
        *(v157[6] + 8 * v163) = v166;
        *(v157[7] + 8 * v163) = v95 * v167;
        v168 = v157[2];
        v116 = __OFADD__(v168, 1);
        v169 = v168 + 1;
        if (v116)
        {
          goto LABEL_81;
        }
      }

      v164 = v158;
      while (1)
      {
        v158 = v164 + 1;
        if (__OFADD__(v164, 1))
        {
          goto LABEL_79;
        }

        if (v158 >= ((v159 + 63) >> 6))
        {

          v274 = 1;
          v77 = v313;
          v96 = v52;
          v52 = v298;
          goto LABEL_55;
        }

        v165 = *(v156 + 64 + 8 * v158);
        ++v164;
        if (v165)
        {
          j = (v165 - 1) & v165;
          v163 = __clz(__rbit64(v165)) | (v158 << 6);
          goto LABEL_51;
        }
      }
    }

    v52 = v77;
    v77 = v82;
    v82 = sub_20D975778();
    v56 = v82;
    v152 = sub_20D8D4AC0(0);
    if (v153)
    {
      goto LABEL_88;
    }

    *(v82 + 8 * (v152 >> 6) + 64) |= 1 << v152;
    *(*(v82 + 48) + 8 * v152) = 0;
    *(*(v82 + 56) + 8 * v152) = 0;
    v154 = *(v82 + 16);
    v116 = __OFADD__(v154, 1);
    v155 = v154 + 1;
    if (v116)
    {
      goto LABEL_89;
    }

    *(v82 + 16) = v155;
LABEL_55:
    v56 = sub_20D975778();
    v170 = sub_20D8D4AC0(0);
    if (v171)
    {
      goto LABEL_84;
    }

    *(v56 + 8 * (v170 >> 6) + 64) |= 1 << v170;
    *(*(v56 + 48) + 8 * v170) = 0;
    *(*(v56 + 56) + 8 * v170) = 0;
    v172 = *(v56 + 16);
    v116 = __OFADD__(v172, 1);
    v173 = v172 + 1;
    if (v116)
    {
      goto LABEL_85;
    }

    *(v56 + 16) = v173;
    v296(v96, v312, v77);
    v174 = v310;
    sub_20D972BF8();
    v53 = *v307;
    v77 = v52;
    (*v307)(v52, v174, v315);
    v175 = v316;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v175 = sub_20D8D486C(0, v175[2] + 1, 1, v175, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
    }

    v177 = v175[2];
    v176 = v175[3];
    v178 = v309;
    if (v177 >= v176 >> 1)
    {
      v185 = sub_20D8D486C(v176 > 1, v177 + 1, 1, v175, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      v178 = v309;
      v175 = v185;
    }

    v80 = (v178 + 1);
    v179 = v295;
    v180 = *(v295 + 8);
    v181 = v315;
    v180(v310, v315);
    v175[2] = v177 + 1;
    v182 = v179;
    v183 = (*(v179 + 80) + 32) & ~*(v179 + 80);
    v316 = v175;
    v184 = v175 + v183;
    v82 = *(v182 + 72);
    (*(v182 + 32))(&v184[v82 * v177], v52, v181);
    v92 = v314;
  }

  while (v80 != 1215);
  v42 = v311;
  if (v274)
  {
    v309 = sub_20D84B7B0(&unk_282499BF0);
  }

  else
  {
    v309 = MEMORY[0x277D84FA0];
  }

  v52 = v292;
  v296(v264, v268, v313);
  v306(v266, v305, v52);
  v186 = *(v270 + 16);
  v314 = (v270 + 16);
  v310 = v186;
  (v186)(v267, v269, v272);
  v56 = v316[2];
  v187 = ( + v183);
  v77 = -v56;
  v41 = -1;
  do
  {
    v80 = (v77 + v41);
    if (v77 + v41 == -1)
    {
      break;
    }

    if (++v41 >= v316[2])
    {
      goto LABEL_90;
    }

    v52 = &v187[v82];
    v56 = v275;
    v188 = v315;
    (v53)(v275);
    sub_20D972BE8();
    v190 = v189;
    v191 = v188;
    v42 = v311;
    v180(v56, v191);
    v187 = v52;
  }

  while (v190 == 0.0);

  v192 = v265;
  *v265 = 0xD00000000000003ALL;
  v192[1] = v263;
  v193 = v273;
  *(v192 + v273[16]) = 6;
  *(v192 + v193[11]) = v80 != -1;
  (v310)(v259, v267, v272);
  v306(v289, v266, v292);
  v194 = v193[12];

  sub_20D972E28();
  v314 = v194;
  v195 = sub_20D972E38();
  if (*(v195 + 16))
  {
    v196 = v240;
    v197 = v315;
    (v53)(v240, v195 + v183, v315);

    v199 = v238;
    MEMORY[0x20F320DF0](v198);
    v180(v196, v197);
    (*v291)(v261, v199, v313);
  }

  else
  {

    v296(v261, v264, v313);
  }

  v200 = v273[9];
  sub_20D972DA8();
  v201 = sub_20D972E38();
  v202 = *(v201 + 16);
  if (v202)
  {
    v203 = v201 + v183 + (v202 - 1) * v82;
    v204 = v241;
    v205 = v315;
    (v53)(v241, v203, v315);

    v207 = v239;
    MEMORY[0x20F320DF0](v206);
    v180(v204, v205);
    v208 = v313;
    (*v291)(v262, v207, v313);
  }

  else
  {

    v208 = v313;
    v296(v262, v264, v313);
  }

  v209 = v273;
  v210 = v273[10];
  v211 = v265;
  sub_20D972DA8();
  v212 = v211 + v209[5];
  sub_20D971D78();
  v213 = v211 + v209[6];
  sub_20D971D78();
  v214 = v211 + v209[7];
  sub_20D971D78();
  v215 = v211 + v209[8];
  sub_20D971D78();
  sub_20D971D78();
  v216 = v284;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if (result)
  {
    v218 = *(v271 + 32);
    v219 = v249;
    v218(v249, v42, v208);
    v220 = v251;
    v218((v219 + *(v251 + 48)), v216, v208);
    v221 = v250;
    sub_20D7EB7E8(v219, v250, &unk_27C83C750, &unk_20D978DD0);
    v222 = *(v220 + 48);
    v218(v260, v221, v208);
    v223 = *(v271 + 8);
    v223(v221 + v222, v208);
    sub_20D829514(v219, v221);
    v224 = v260;
    v225 = &v260[*(v248 + 36)];
    v226 = v221 + *(v220 + 48);
    v315 = v218;
    v218(v225, v226, v208);
    v310 = v223;
    v223(v221, v208);
    v227 = v252;
    (*(v253 + 16))(v252, &v314[v211], v254);
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v224, v227, v42, v211 + v273[13]);
    v228 = v300;
    v246[7](v255, 1, 1, v300);
    v229 = v247;
    (*(v247 + 56))(v256, 1, 1, v292);
    v230 = v257;
    sub_20D971E98();
    v231 = v283;
    sub_20D972E48();
    v232 = v258;
    sub_20D972748();
    v288(v231, v228);
    result = (*(v271 + 48))(v232, 1, v208);
    if (result != 1)
    {

      (*(v243 + 8))(v230, v244);
      v233 = v310;
      (v310)(v262, v208);
      v233(v261, v208);
      v234 = *(v270 + 8);
      v235 = v272;
      v234(v267, v272);
      (*(v229 + 8))(v266, v292);
      v233(v264, v208);
      v233(v312, v208);
      v234(v269, v235);
      v233(v268, v208);
      v233(v242, v208);
      v236 = v273;
      (v315)(v211 + v273[14], v232, v208);
      *(v211 + v236[15]) = v309;
      return sub_20D8D6C58(v211, v245, type metadata accessor for HistoricalUsageSnapshot);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t static HistoricalUsageSnapshot.staticMock_WidgetPlaceholderData_8dFrom06102024_Import_Week_Snapshot(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v243 = a2;
  v289 = sub_20D9727B8();
  v307 = *(v289 - 8);
  v3 = v307[8];
  MEMORY[0x28223BE20](v289);
  v288 = &v236 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_20D972E88();
  v261 = *(v262 - 8);
  v5 = *(v261 + 64);
  MEMORY[0x28223BE20](v262);
  v260 = &v236 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v7 = *(*(v259 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v259);
  v258 = &v236 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v256 = &v236 - v10;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v11 = *(*(v255 - 8) + 64);
  MEMORY[0x28223BE20](v255);
  v257 = &v236 - v12;
  v280 = type metadata accessor for HistoricalUsageSnapshot();
  v13 = *(*(v280 - 1) + 64);
  MEMORY[0x28223BE20](v280);
  v273 = (&v236 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v306 = sub_20D972C58();
  v295 = *(v306 - 1);
  v15 = *(v295 + 64);
  v16 = MEMORY[0x28223BE20](v306);
  v305 = &v236 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v304 = &v236 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v240 = &v236 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v239 = &v236 - v23;
  MEMORY[0x28223BE20](v22);
  v284 = &v236 - v24;
  v282 = sub_20D972838();
  v279 = *(v282 - 8);
  v25 = v279[8];
  v26 = MEMORY[0x28223BE20](v282);
  v265 = &v236 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v275 = &v236 - v29;
  MEMORY[0x28223BE20](v28);
  v278 = &v236 - v30;
  v281 = sub_20D972AF8();
  v277 = *(v281 - 8);
  v31 = *(v277 + 64);
  v32 = MEMORY[0x28223BE20](v281);
  v264 = &v236 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v274 = &v236 - v35;
  MEMORY[0x28223BE20](v34);
  v276 = &v236 - v36;
  v37 = sub_20D9727D8();
  v38 = *(v37 - 8);
  v39 = v38[8];
  v40 = MEMORY[0x28223BE20](v37);
  v253 = &v236 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v298 = &v236 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v267 = &v236 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v48 = &v236 - v47;
  v49 = sub_20D972628();
  v299 = *(v49 - 8);
  v300 = v49;
  v50 = v299[8];
  v51 = MEMORY[0x28223BE20](v49);
  v290 = &v236 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v297 = &v236 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v238 = &v236 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v269 = &v236 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v237 = &v236 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v268 = &v236 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v272 = &v236 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v301 = &v236 - v66;
  MEMORY[0x28223BE20](v65);
  v68 = &v236 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69 - 8);
  v72 = &v236 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  v76 = &v236 - v75;
  v266 = sub_20D971EA8();
  v242 = *(v266 - 8);
  v77 = *(v242 + 64);
  v78 = MEMORY[0x28223BE20](v266);
  v252 = &v236 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v81 = &v236 - v80;
  v82 = v38[2];
  v82(v76, a1, v37);
  v254 = v38;
  v83 = v38[7];
  v271 = v37;
  v247 = v38 + 7;
  v246 = v83;
  v83(v76, 0, 1, v37);
  v84 = v279[7];
  v85 = v300;
  v245 = v279 + 7;
  v244 = v84;
  v84(v72, 1, 1, v282);
  v250 = v76;
  v251 = v72;
  sub_20D971E98();
  v241 = v81;
  v86 = v299;
  sub_20D972748();
  v87 = v86[6];
  v249 = v86 + 6;
  v248 = v87;
  result = v87(v48, 1, v85);
  if (result != 1)
  {
    v292 = v86[4];
    v293 = v86 + 4;
    v292(v68, v48, v85);
    v82(v298, a1, v271);
    (*(v277 + 104))(v276, *MEMORY[0x277D075B8], v281);
    sub_20D972788();
    v263 = 0x800000020D988FA0;
    v89 = v86[2];
    v270 = v68;
    v296 = v89;
    v89(v301, v68, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
    v283 = 0;
    v90 = 0;
    v287 = *MEMORY[0x277CC9968];
    v286 = (v307 + 13);
    v285 = (v307 + 1);
    v299 = v86 + 2;
    v291 = (v86 + 1);
    v302 = (v295 + 16);
    v303 = v295 + 8;
    v294 = (v295 + 32);
    v307 = MEMORY[0x277D84F90];
    while (1)
    {
      v91 = dbl_28249A058[v90 + 4];
      v92 = v297;
      v93 = v301;
      if (v90)
      {
        v94 = v290;
        sub_20D972718();
        v95 = v288;
        v96 = v289;
        (*v286)(v288, v287, v289);
        sub_20D9730D8();
        (*v285)(v95, v96);
        v97 = *v291;
        (*v291)(v94, v85);
        (v97)(v93, v85);
        v292(v93, v92, v85);
      }

      if (v91 != 0.0)
      {
        break;
      }

      v98 = sub_20D975778();
      result = sub_20D8D4AC0(0);
      if (v99)
      {
        goto LABEL_86;
      }

      v98[(result >> 6) + 8] |= 1 << result;
      *(v98[6] + 8 * result) = 0;
      *(v98[7] + 8 * result) = 0;
      v100 = v98[2];
      v101 = __OFADD__(v100, 1);
      v102 = v100 + 1;
      if (v101)
      {
        goto LABEL_87;
      }

      v98[2] = v102;
LABEL_35:
      v132 = sub_20D975778();
      result = sub_20D8D4AC0(0);
      if (v133)
      {
        goto LABEL_82;
      }

      v132[(result >> 6) + 8] |= 1 << result;
      *(v132[6] + 8 * result) = 0;
      *(v132[7] + 8 * result) = 0;
      v134 = v132[2];
      v101 = __OFADD__(v134, 1);
      v135 = v134 + 1;
      if (v101)
      {
        goto LABEL_83;
      }

      v132[2] = v135;
      if (v91 != 0.0)
      {
        v140 = sub_20D8D6850(&unk_28249A128);
        result = sub_20D975758();
        v141 = 0;
        v142 = 1 << *(v140 + 32);
        if (v142 < 64)
        {
          v143 = ~(-1 << v142);
        }

        else
        {
          v143 = -1;
        }

        v144 = v143 & *(v140 + 64);
        if (v144)
        {
          while (1)
          {
            v145 = __clz(__rbit64(v144));
            v144 &= v144 - 1;
            v146 = v145 | (v141 << 6);
LABEL_51:
            v149 = *(*(v140 + 48) + 8 * v146);
            v150 = *(*(v140 + 56) + 8 * v146);
            *(result + 64 + ((v146 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v146;
            *(*(result + 48) + 8 * v146) = v149;
            *(*(result + 56) + 8 * v146) = v91 * v150;
            v151 = *(result + 16);
            v101 = __OFADD__(v151, 1);
            v152 = v151 + 1;
            if (v101)
            {
              break;
            }

            *(result + 16) = v152;
            if (!v144)
            {
              goto LABEL_46;
            }
          }

LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

LABEL_46:
        v147 = v141;
        while (1)
        {
          v141 = v147 + 1;
          if (__OFADD__(v147, 1))
          {
            break;
          }

          if (v141 >= ((v142 + 63) >> 6))
          {

            v283 = 1;
            v93 = v301;
            goto LABEL_55;
          }

          v148 = *(v140 + 64 + 8 * v141);
          ++v147;
          if (v148)
          {
            v144 = (v148 - 1) & v148;
            v146 = __clz(__rbit64(v148)) | (v141 << 6);
            goto LABEL_51;
          }
        }

LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v136 = sub_20D975778();
      result = sub_20D8D4AC0(0);
      if (v137)
      {
        goto LABEL_88;
      }

      v136[(result >> 6) + 8] |= 1 << result;
      *(v136[6] + 8 * result) = 0;
      *(v136[7] + 8 * result) = 0;
      v138 = v136[2];
      v101 = __OFADD__(v138, 1);
      v139 = v138 + 1;
      if (v101)
      {
        goto LABEL_89;
      }

      v136[2] = v139;
LABEL_55:
      v153 = sub_20D975778();
      result = sub_20D8D4AC0(0);
      if (v154)
      {
        goto LABEL_84;
      }

      v153[(result >> 6) + 8] |= 1 << result;
      *(v153[6] + 8 * result) = 0;
      *(v153[7] + 8 * result) = 0;
      v155 = v153[2];
      v101 = __OFADD__(v155, 1);
      v156 = v155 + 1;
      if (v101)
      {
        goto LABEL_85;
      }

      v153[2] = v156;
      v296(v92, v93, v85);
      v157 = v304;
      sub_20D972BF8();
      v158 = *v302;
      (*v302)(v305, v157, v306);
      v159 = v307;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v159 = sub_20D8D486C(0, v159[2] + 1, 1, v159, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      }

      v161 = v159[2];
      v160 = v159[3];
      if (v161 >= v160 >> 1)
      {
        v159 = sub_20D8D486C(v160 > 1, v161 + 1, 1, v159, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      }

      ++v90;
      v162 = v295;
      v163 = *(v295 + 8);
      v164 = v306;
      v163(v304, v306);
      v159[2] = v161 + 1;
      v165 = v162;
      v166 = (*(v162 + 80) + 32) & ~*(v162 + 80);
      v307 = v159;
      v167 = v159 + v166;
      v168 = *(v165 + 72);
      (*(v165 + 32))(&v167[v168 * v161], v305, v164);
      v85 = v300;
      if (v90 == 8)
      {
        if (v283)
        {
          v289 = sub_20D84B7B0(&unk_28249A178);
        }

        else
        {
          v289 = MEMORY[0x277D84FA0];
        }

        v169 = v282;
        v170 = v277;
        v171 = v276;
        v296(v272, v270, v85);
        v304 = v279[2];
        v305 = (v279 + 2);
        (v304)(v275, v278, v169);
        v294 = *(v170 + 16);
        v295 = v170 + 16;
        v294(v274, v171, v281);
        v172 = v307[2];

        v173 = result + v166;
        v174 = -v172;
        v175 = -1;
        do
        {
          v176 = v174 + v175;
          if (v174 + v175 == -1)
          {
            break;
          }

          if (++v175 >= v307[2])
          {
            goto LABEL_90;
          }

          v177 = v173 + v168;
          v178 = v284;
          v179 = v306;
          v158(v284);
          sub_20D972BE8();
          v181 = v180;
          result = (v163)(v178, v179);
          v173 = v177;
        }

        while (v181 == 0.0);

        v182 = v273;
        *v273 = 0xD00000000000004BLL;
        v182[1] = v263;
        v183 = v280;
        *(v182 + v280[16]) = 6;
        *(v182 + v183[11]) = v176 != -1;
        v294(v264, v274, v281);
        (v304)(v265, v275, v282);
        v184 = v183[12];

        sub_20D972E28();
        v185 = sub_20D972E38();
        if (*(v185 + 16))
        {
          v186 = v184;
          v187 = v239;
          v188 = v306;
          (v158)(v239, v185 + v166, v306);

          v190 = v237;
          MEMORY[0x20F320DF0](v189);
          v191 = v187;
          v184 = v186;
          v163(v191, v188);
          v292(v268, v190, v300);
        }

        else
        {

          v296(v268, v272, v300);
        }

        v192 = v280;
        v193 = v280[9];
        sub_20D972DA8();
        v194 = sub_20D972E38();
        v195 = *(v194 + 16);
        if (v195)
        {
          v196 = v194 + v166 + (v195 - 1) * v168;
          v197 = v184;
          v198 = v240;
          v199 = v306;
          (v158)(v240, v196, v306);

          v201 = v238;
          MEMORY[0x20F320DF0](v200);
          v202 = v198;
          v184 = v197;
          v163(v202, v199);
          v203 = v201;
          v204 = v300;
          v292(v269, v203, v300);
        }

        else
        {

          v204 = v300;
          v296(v269, v272, v300);
        }

        v205 = v192;
        v206 = v192[10];
        v207 = v273;
        sub_20D972DA8();
        v208 = v207 + v205[5];
        sub_20D971D78();
        v209 = v207 + v205[6];
        sub_20D971D78();
        v210 = v207 + v205[7];
        sub_20D971D78();
        v211 = v207 + v205[8];
        sub_20D971D78();
        v212 = v297;
        sub_20D971D78();
        v213 = v184;
        v214 = v290;
        sub_20D971D48();
        sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
        result = sub_20D974FC8();
        if (result)
        {
          v215 = v256;
          v216 = v292;
          v292(v256, v212, v204);
          v306 = v213;
          v217 = v259;
          v216(v215 + *(v259 + 48), v214, v204);
          v218 = v258;
          sub_20D7EB7E8(v215, v258, &unk_27C83C750, &unk_20D978DD0);
          v219 = *(v217 + 48);
          v220 = v257;
          v216(v257, v218, v300);
          v221 = *v291;
          (*v291)(v218 + v219, v300);
          sub_20D829514(v215, v218);
          v216(v220 + *(v255 + 36), (v218 + *(v217 + 48)), v300);
          v222 = v218;
          v223 = v300;
          v305 = v221;
          (v221)(v222, v300);
          v224 = v260;
          (*(v261 + 16))(v260, v306 + v207, v262);
          v225 = v297;
          sub_20D9725C8();
          HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v220, v224, v225, v207 + v280[13]);
          v226 = v271;
          v246(v250, 1, 1, v271);
          v244(v251, 1, 1, v282);
          v227 = v252;
          sub_20D971E98();
          v228 = v253;
          sub_20D972E48();
          v229 = v267;
          sub_20D972748();
          v230 = v254[1];
          v230(v228, v226);
          v230(v298, v226);
          result = v248(v229, 1, v223);
          if (result == 1)
          {
            goto LABEL_93;
          }

          v307 = *(v242 + 8);
          (v307)(v227, v266);
          v231 = v305;
          (v305)(v269, v223);
          (v231)(v268, v223);
          v306 = *(v277 + 8);
          v232 = v281;
          (v306)(v274, v281);
          v233 = v279[1];
          v234 = v282;
          v233(v275, v282);
          (v231)(v272, v223);
          (v231)(v301, v223);
          v233(v278, v234);
          (v306)(v276, v232);
          (v231)(v270, v223);
          (v307)(v241, v266);
          v235 = v280;
          v292((v207 + v280[14]), v267, v223);
          *(v207 + v235[15]) = v289;
          return sub_20D8D6C58(v207, v243, type metadata accessor for HistoricalUsageSnapshot);
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }
    }

    v103 = sub_20D8D6850(&unk_28249A0B8);
    v104 = sub_20D8D4AC0(0);
    if (v105)
    {
      v106 = v104;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v308 = v103;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_20D8D60B4();
        v103 = v308;
      }

      sub_20D8D4E40(v106, v103);
    }

    v108 = swift_isUniquelyReferenced_nonNull_native();
    v308 = v103;
    sub_20D8D5428(1, v108, 0.3);
    v109 = v308;
    v110 = sub_20D8D4AC0(2);
    if (v111)
    {
      v112 = v110;
      v113 = swift_isUniquelyReferenced_nonNull_native();
      v308 = v109;
      if (!v113)
      {
        sub_20D8D60B4();
        v109 = v308;
      }

      sub_20D8D4E40(v112, v109);
    }

    v114 = swift_isUniquelyReferenced_nonNull_native();
    v308 = v109;
    sub_20D8D5428(3, v114, 0.7);
    v115 = v308;
    v116 = sub_20D8D4AC0(4);
    if (v117)
    {
      v118 = v116;
      v119 = swift_isUniquelyReferenced_nonNull_native();
      v308 = v115;
      if (!v119)
      {
        sub_20D8D60B4();
        v115 = v308;
      }

      sub_20D8D4E40(v118, v115);
    }

    result = sub_20D975758();
    v120 = 0;
    v121 = 1 << *(v115 + 32);
    if (v121 < 64)
    {
      v122 = ~(-1 << v121);
    }

    else
    {
      v122 = -1;
    }

    v123 = v122 & *(v115 + 64);
    if (!v123)
    {
LABEL_26:
      v126 = v120;
      while (1)
      {
        v120 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          break;
        }

        if (v120 >= ((v121 + 63) >> 6))
        {

          goto LABEL_35;
        }

        v127 = *(v115 + 64 + 8 * v120);
        ++v126;
        if (v127)
        {
          v123 = (v127 - 1) & v127;
          v125 = __clz(__rbit64(v127)) | (v120 << 6);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_79;
    }

    while (1)
    {
      v124 = __clz(__rbit64(v123));
      v123 &= v123 - 1;
      v125 = v124 | (v120 << 6);
LABEL_31:
      v128 = *(*(v115 + 48) + 8 * v125);
      v129 = *(*(v115 + 56) + 8 * v125);
      *(result + 64 + ((v125 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v125;
      *(*(result + 48) + 8 * v125) = v128;
      *(*(result + 56) + 8 * v125) = v91 * v129;
      v130 = *(result + 16);
      v101 = __OFADD__(v130, 1);
      v131 = v130 + 1;
      if (v101)
      {
        break;
      }

      *(result + 16) = v131;
      if (!v123)
      {
        goto LABEL_26;
      }
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t sub_20D8B1D48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A368, &unk_20D97B460);
  v0 = *(type metadata accessor for HistoricalUsageSnapshot() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D97A6F0;
  if (qword_27C8385E8 != -1)
  {
    swift_once();
  }

  v4 = v3 + v2;
  v5 = sub_20D972628();
  v6 = __swift_project_value_buffer(v5, qword_27C83A190);
  static HistoricalUsageSnapshot.mock_ImportsUpData_13of14d_Import_Week_Snapshot_StartingOn(_:)(v6, v4);
  static HistoricalUsageSnapshot.mock_SimpleData_12of14d_Import_Week_Snapshot_StartingOn(_:)(v6, v4 + v1);
  result = static HistoricalUsageSnapshot.mock_ImportsDownData_13of14d_Import_Week_Snapshot_StartingOn(_:)(v6, v4 + 2 * v1);
  off_27C83A188 = v3;
  return result;
}

uint64_t static HistoricalUsageSnapshot.severalMocks.getter()
{
  if (qword_27C8385D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_20D8B1F14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_20D972838();
  __swift_allocate_value_buffer(v4, qword_281126478);
  v5 = __swift_project_value_buffer(v4, qword_281126478);
  sub_20D9727E8();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D8B2044()
{
  v0 = sub_20D972838();
  v34 = *(v0 - 8);
  v35 = v0;
  v1 = *(v34 + 64);
  MEMORY[0x28223BE20](v0);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20D9726F8();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D9727D8();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9727B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D972628();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v19, qword_27C83A190);
  __swift_project_value_buffer(v16, qword_27C83A190);
  sub_20D9725C8();
  v22 = *MEMORY[0x277CC9968];
  v23 = *(v12 + 104);
  v30 = v11;
  v23(v15, v22, v11);
  v24 = v29;
  (*(v3 + 104))(v6, *MEMORY[0x277CC9830], v29);
  sub_20D972708();
  (*(v3 + 8))(v6, v24);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v25 = v35;
  v26 = __swift_project_value_buffer(v35, qword_281126478);
  (*(v34 + 16))(v33, v26, v25);
  sub_20D972798();
  sub_20D9730D8();
  (*(v31 + 8))(v10, v32);
  (*(v12 + 8))(v15, v30);
  return (*(v17 + 8))(v21, v16);
}

uint64_t sub_20D8B2450()
{
  v136 = sub_20D9727D8();
  v133 = *(v136 - 8);
  v0 = *(v133 + 64);
  MEMORY[0x28223BE20](v136);
  v135 = &v113 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v137 = &v113 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v134 = &v113 - v7;
  v122 = sub_20D971EA8();
  v121 = *(v122 - 8);
  v8 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v132 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_20D972E88();
  v130 = *(v131 - 8);
  v10 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v129 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v12 = *(*(v128 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v128);
  v127 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v125 = &v113 - v15;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v16 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v126 = &v113 - v17;
  v18 = sub_20D972C58();
  v140 = *(v18 - 8);
  v141 = v18;
  v19 = *(v140 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v116 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v115 = &v113 - v22;
  v23 = sub_20D972838();
  v148 = *(v23 - 8);
  v24 = *(v148 + 64);
  MEMORY[0x28223BE20](v23);
  v138 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for HistoricalUsageSnapshot();
  v27 = *(*(v26 - 1) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_20D972AF8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v113 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v123 = &v113 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v113 - v42;
  v147 = sub_20D972628();
  v151 = *(v147 - 8);
  v44 = *(v151 + 64);
  v45 = MEMORY[0x28223BE20](v147);
  v139 = &v113 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v146 = &v113 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v114 = &v113 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v145 = &v113 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v113 = &v113 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v144 = &v113 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v113 - v57;
  __swift_allocate_value_buffer(v26, qword_27C83A1A8);
  v120 = __swift_project_value_buffer(v26, qword_27C83A1A8);
  v142 = v58;
  v59 = v148;
  sub_20D9725C8();
  sub_20D9727E8();
  result = (*(v59 + 48))(v43, 1, v23);
  if (result == 1)
  {
    goto LABEL_12;
  }

  (*(v31 + 104))(v37, *MEMORY[0x277D075B8], v30);
  *v29 = 0xD000000000000017;
  v29[1] = 0x800000020D989880;
  *(v29 + v26[16]) = 6;
  *(v29 + v26[11]) = 0;
  v118 = v31;
  v61 = *(v31 + 16);
  v119 = v30;
  v61(v35, v37, v30);
  v62 = *(v59 + 16);
  v117 = v43;
  v143 = v23;
  v62(v138, v43, v23);
  v63 = v26[12];
  sub_20D972E28();
  v150 = v63;
  v64 = sub_20D972E38();
  v65 = *(v64 + 16);
  v66 = v26;
  v138 = v37;
  if (v65)
  {
    v68 = v140;
    v67 = v141;
    v69 = v115;
    (*(v140 + 16))(v115, v64 + ((*(v68 + 80) + 32) & ~*(v68 + 80)), v141);

    v71 = v113;
    MEMORY[0x20F320DF0](v70);
    (*(v68 + 8))(v69, v67);
    v72 = v147;
    (*(v151 + 32))(v144, v71, v147);
    v73 = v145;
  }

  else
  {

    v72 = v147;
    (*(v151 + 16))(v144, v142, v147);
    v73 = v145;
    v68 = v140;
    v67 = v141;
  }

  v149 = v66;
  v74 = v66[9];
  sub_20D972DA8();
  v75 = sub_20D972E38();
  v76 = *(v75 + 16);
  if (v76)
  {
    v77 = v116;
    (*(v68 + 16))(v116, v75 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * (v76 - 1), v67);

    v79 = v114;
    MEMORY[0x20F320DF0](v78);
    (*(v68 + 8))(v77, v67);
    (*(v151 + 32))(v73, v79, v72);
  }

  else
  {

    (*(v151 + 16))(v73, v142, v72);
  }

  v80 = v149;
  v81 = v149[10];
  sub_20D972DA8();
  v82 = v29 + v80[5];
  sub_20D971D78();
  v83 = v29 + v80[6];
  sub_20D971D78();
  v84 = v29 + v80[7];
  sub_20D971D78();
  v85 = v29 + v80[8];
  sub_20D971D78();
  v86 = v146;
  sub_20D971D78();
  v87 = v139;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v88 = v151;
  v141 = v29;
  v89 = v151 + 32;
  v90 = *(v151 + 32);
  v116 = v90;
  v91 = v125;
  (v90)(v125, v86, v72);
  v92 = v128;
  (v90)(v91 + *(v128 + 48), v87, v72);
  v93 = v127;
  sub_20D7EB7E8(v91, v127, &unk_27C83C750, &unk_20D978DD0);
  v94 = *(v92 + 48);
  v95 = v126;
  (v90)(v126, v93, v72);
  v96 = (v88 + 8);
  v97 = *(v88 + 8);
  v97(v93 + v94, v72);
  sub_20D829514(v91, v93);
  v98 = v95 + *(v124 + 36);
  v99 = v93 + *(v92 + 48);
  v140 = v89;
  (v90)(v98, v99, v72);
  v100 = v97;
  v101 = v141;
  v139 = v96;
  v97(v93, v72);
  v102 = v129;
  (*(v130 + 16))(v129, v101 + v150, v131);
  v103 = v146;
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v95, v102, v103, v101 + v149[13]);
  v104 = v133;
  v105 = v136;
  (*(v133 + 56))(v134, 1, 1, v136);
  v106 = v148;
  (*(v148 + 56))(v123, 1, 1, v143);
  v107 = v132;
  sub_20D971E98();
  v108 = v107;
  v109 = v135;
  sub_20D972E48();
  v110 = v137;
  sub_20D972748();
  (*(v104 + 8))(v109, v105);
  v111 = v147;
  result = (*(v151 + 48))(v110, 1, v147);
  if (result != 1)
  {
    (*(v121 + 8))(v108, v122);
    v100(v145, v111);
    v100(v144, v111);
    (*(v118 + 8))(v138, v119);
    v100(v142, v111);
    (*(v106 + 8))(v117, v143);
    v112 = v149;
    (v116)(v101 + v149[14], v110, v111);
    *(v101 + v112[15]) = MEMORY[0x277D84FA0];
    return sub_20D8D6C58(v101, v120, type metadata accessor for HistoricalUsageSnapshot);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_20D8B33B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for HistoricalUsageSnapshot();
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_20D8D6CC0(v6, a3, type metadata accessor for HistoricalUsageSnapshot);
}

uint64_t sub_20D8B341C()
{
  v142 = sub_20D9727D8();
  v137 = *(v142 - 8);
  v0 = *(v137 + 64);
  MEMORY[0x28223BE20](v142);
  v141 = &v119 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v143 = &v119 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v140 = &v119 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v138 = &v119 - v10;
  v127 = sub_20D971EA8();
  v126 = *(v127 - 8);
  v11 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v139 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_20D972E88();
  v135 = *(v136 - 8);
  v13 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v134 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v15 = *(*(v133 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v133);
  v132 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v130 = &v119 - v18;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v19 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v131 = &v119 - v20;
  v21 = sub_20D972C58();
  v148 = *(v21 - 8);
  v149 = v21;
  v22 = *(v148 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v122 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v121 = &v119 - v25;
  v26 = type metadata accessor for HistoricalUsageSnapshot();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v160 = (&v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_20D972AF8();
  v157 = *(v29 - 8);
  v158 = v29;
  v30 = *(v157 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v145 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v156 = &v119 - v33;
  v34 = sub_20D972838();
  v35 = *(v34 - 8);
  v36 = v35[8];
  v37 = MEMORY[0x28223BE20](v34);
  v155 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v119 - v39;
  v161 = sub_20D972628();
  v41 = *(v161 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v161);
  v146 = &v119 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v120 = &v119 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v154 = &v119 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v119 = &v119 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v153 = &v119 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v119 - v54;
  MEMORY[0x28223BE20](v53);
  v163 = &v119 - v56;
  __swift_allocate_value_buffer(v26, qword_27C83A1D8);
  v159 = v26;
  v125 = __swift_project_value_buffer(v26, qword_27C83A1D8);
  sub_20D9725C8();
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v34, qword_281126478);
  v58 = v35[2];
  v59 = v40;
  v58(v40, v57, v34);
  v144 = v58;
  sub_20D973088();
  v128 = v35;
  v60 = v35[1];
  v124 = v35 + 1;
  v123 = v60;
  v60(v40, v34);
  v162 = v41;
  v61 = *(v41 + 8);
  v147 = v55;
  v150 = v61;
  v151 = v41 + 8;
  v61(v55, v161);
  v62 = v155;
  v58(v155, v57, v34);
  v63 = v156;
  v64 = v157;
  v65 = v158;
  (*(v157 + 104))(v156, *MEMORY[0x277D075B8], v158);
  v66 = v160;
  *v160 = 0xD000000000000017;
  v66[1] = 0x800000020D989880;
  v67 = v159;
  *(v66 + v159[16]) = 6;
  *(v66 + v67[11]) = 0;
  (*(v64 + 16))(v145, v63, v65);
  v152 = v34;
  v144(v59, v62, v34);
  v68 = v67[12];
  sub_20D972E28();
  v69 = sub_20D972E38();
  v70 = v162;
  if (*(v69 + 16))
  {
    v72 = v148;
    v71 = v149;
    v73 = v121;
    (*(v148 + 16))(v121, v69 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v149);

    v75 = v119;
    MEMORY[0x20F320DF0](v74);
    (*(v72 + 8))(v73, v71);
    v76 = v75;
    v77 = v161;
    (*(v70 + 32))(v153, v76, v161);
    v78 = v70;
    v79 = v154;
    v80 = v163;
  }

  else
  {

    v80 = v163;
    v77 = v161;
    (*(v70 + 16))(v153, v163, v161);
    v78 = v70;
    v79 = v154;
  }

  v81 = v67[9];
  sub_20D972DA8();
  v82 = sub_20D972E38();
  v83 = *(v82 + 16);
  if (v83)
  {
    v84 = v68;
    v85 = v79;
    v86 = v148;
    v87 = v149;
    v88 = v122;
    (*(v148 + 16))(v122, v82 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * (v83 - 1), v149);

    v90 = v120;
    MEMORY[0x20F320DF0](v89);
    (*(v86 + 8))(v88, v87);
    v91 = v85;
    v68 = v84;
    v78 = v162;
    (*(v162 + 32))(v91, v90, v77);
  }

  else
  {

    (*(v78 + 16))(v79, v80, v77);
  }

  v92 = v67[10];
  sub_20D972DA8();
  v93 = v66 + v67[5];
  sub_20D971D78();
  v94 = v66 + v67[6];
  sub_20D971D78();
  v95 = v66 + v67[7];
  sub_20D971D78();
  v96 = v66 + v67[8];
  sub_20D971D78();
  v97 = v147;
  sub_20D971D78();
  v98 = v146;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if (result)
  {
    v161 = v68;
    v100 = *(v78 + 32);
    v148 = v78 + 32;
    v101 = v130;
    v100(v130, v97, v77);
    v102 = v133;
    v100((v101 + *(v133 + 48)), v98, v77);
    v103 = v132;
    sub_20D7EB7E8(v101, v132, &unk_27C83C750, &unk_20D978DD0);
    v104 = *(v102 + 48);
    v105 = v131;
    v100(v131, v103, v77);
    v106 = v150;
    v150(v103 + v104, v77);
    sub_20D829514(v101, v103);
    v107 = v105 + *(v129 + 36);
    v108 = v103 + *(v102 + 48);
    v149 = v100;
    v100(v107, v108, v77);
    v109 = v160;
    v106(v103, v77);
    v110 = v134;
    (*(v135 + 16))(v134, v109 + v161, v136);
    sub_20D9725C8();
    v111 = v159;
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v105, v110, v97, v109 + v159[13]);
    v112 = v137;
    v113 = v111;
    v114 = v142;
    (*(v137 + 56))(v138, 1, 1, v142);
    (v128[7])(v140, 1, 1, v152);
    v115 = v139;
    sub_20D971E98();
    v116 = v141;
    sub_20D972E48();
    v117 = v143;
    sub_20D972748();
    (*(v112 + 8))(v116, v114);
    result = (*(v162 + 48))(v117, 1, v77);
    if (result != 1)
    {
      (*(v126 + 8))(v115, v127);
      v118 = v150;
      v150(v154, v77);
      v118(v153, v77);
      (*(v157 + 8))(v156, v158);
      v123(v155, v152);
      v118(v163, v77);
      v149(v109 + v113[14], v117, v77);
      *(v109 + v113[15]) = MEMORY[0x277D84FA0];
      return sub_20D8D6C58(v109, v125, type metadata accessor for HistoricalUsageSnapshot);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D8B4424(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for HistoricalUsageSnapshot();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v7, a4);
  return sub_20D8D6CC0(v9, v8, type metadata accessor for HistoricalUsageSnapshot);
}

uint64_t static HistoricalUsageSnapshot.mock_SimpleData_12of14d_Import_Week_Snapshot_StartingOn(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v305 = a1;
  v236 = a2;
  v291 = sub_20D9727B8();
  v303 = *(v291 - 8);
  v2 = v303[8];
  MEMORY[0x28223BE20](v291);
  v273 = &v230 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v248 = &v230 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v246 = &v230 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v245 = &v230 - v12;
  v235 = sub_20D971EA8();
  v234 = *(v235 - 8);
  v13 = *(v234 + 64);
  MEMORY[0x28223BE20](v235);
  v247 = &v230 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_20D972E88();
  v243 = *(v244 - 8);
  v15 = *(v243 + 64);
  MEMORY[0x28223BE20](v244);
  v242 = &v230 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v17 = *(*(v241 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v241);
  v240 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v238 = &v230 - v20;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v21 = *(*(v237 - 8) + 64);
  MEMORY[0x28223BE20](v237);
  v239 = &v230 - v22;
  v262 = type metadata accessor for HistoricalUsageSnapshot();
  v23 = *(*(v262 - 1) + 64);
  MEMORY[0x28223BE20](v262);
  v257 = (&v230 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v302 = sub_20D972C58();
  v276 = *(v302 - 1);
  v25 = *(v276 + 8);
  v26 = MEMORY[0x28223BE20](v302);
  v301 = &v230 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v300 = &v230 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v233 = &v230 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v232 = &v230 - v33;
  MEMORY[0x28223BE20](v32);
  v266 = &v230 - v34;
  v264 = sub_20D972AF8();
  v261 = *(v264 - 8);
  v35 = *(v261 + 64);
  v36 = MEMORY[0x28223BE20](v264);
  v250 = &v230 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v259 = &v230 - v39;
  MEMORY[0x28223BE20](v38);
  v260 = &v230 - v40;
  v41 = sub_20D972838();
  v255 = *(v41 - 1);
  v42 = *(v255 + 64);
  v43 = MEMORY[0x28223BE20](v41);
  v258 = &v230 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = &v230 - v45;
  v47 = sub_20D9726F8();
  v48 = *(v47 - 8);
  v49 = v48[8];
  MEMORY[0x28223BE20](v47);
  v51 = &v230 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20D9727D8();
  v254 = *(v52 - 8);
  v53 = *(v254 + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v230 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_20D972628();
  v263 = *(v56 - 8);
  v57 = *(v263 + 64);
  v58 = MEMORY[0x28223BE20](v56);
  v275 = &v230 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v298 = &v230 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v231 = &v230 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v252 = &v230 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v230 = &v230 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v251 = &v230 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v256 = &v230 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v74 = &v230 - v73;
  MEMORY[0x28223BE20](v72);
  v76 = &v230 - v75;
  v77 = v48[13];
  v289 = *MEMORY[0x277CC9830];
  v288 = v48 + 13;
  v287 = v77;
  v77(v51);
  sub_20D972708();
  v78 = v48[1];
  v271 = v51;
  v272 = v47;
  v290 = v48 + 1;
  v270 = v78;
  v78(v51, v47);
  if (qword_281126470 != -1)
  {
LABEL_92:
    swift_once();
  }

  v79 = __swift_project_value_buffer(v41, qword_281126478);
  v80 = *(v255 + 16);
  v295 = v79;
  v280 = v41;
  v278 = v255 + 16;
  v277 = v80;
  (v80)(v46);
  v285 = v46;
  sub_20D972798();
  sub_20D972718();
  v81 = *(v254 + 8);
  v282 = v55;
  v293 = v254 + 8;
  v294 = v52;
  v292 = v81;
  v81(v55, v52);
  (*(v261 + 104))(v260, *MEMORY[0x277D075B8], v264);
  v249 = 0x800000020D988FF0;
  v83 = v263 + 16;
  v82 = *(v263 + 16);
  v304 = v74;
  v253 = v76;
  v283 = v82;
  v82(v74, v76, v56);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
  v265 = 0;
  v76 = 0;
  v269 = *MEMORY[0x277CC9968];
  v268 = (v303 + 13);
  v267 = (v303 + 1);
  v274 = (v83 - 8);
  v284 = v83;
  v279 = (v83 + 16);
  v46 = v276;
  v296 = (v276 + 16);
  v297 = v276 + 8;
  v281 = v276 + 32;
  v303 = MEMORY[0x277D84F90];
  v52 = v56;
  v299 = v56;
  do
  {
    v84 = dbl_28249A310[v76 + 4];
    v85 = v282;
    if (v76)
    {
      v86 = v271;
      v87 = v272;
      v287(v271, v289, v272);
      sub_20D972708();
      v88 = v270;
      v270(v86, v87);
      v89 = v285;
      v90 = v280;
      v286 = v76;
      v91 = v277;
      v277(v285, v295, v280);
      sub_20D972798();
      v92 = v275;
      sub_20D972718();
      v292(v85, v294);
      v93 = v273;
      (*v268)(v273, v269, v291);
      v287(v86, v289, v87);
      sub_20D972708();
      v88(v86, v87);
      v91(v89, v295, v90);
      v76 = v286;
      v52 = v299;
      sub_20D972798();
      v74 = v298;
      sub_20D9730D8();
      v292(v85, v294);
      v94 = v274;
      (*v267)(v93, v291);
      v95 = *v94;
      v96 = v92;
      v97 = v279;
      (*v94)(v96, v52);
      v56 = v304;
      v95(v304, v52);
      (*v97)(v56, v74, v52);
      v46 = v276;
    }

    if (v84 != 0.0)
    {
      v103 = sub_20D8D6850(&unk_28249A390);
      v104 = sub_20D8D4AC0(0);
      if (v105)
      {
        v106 = v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v306 = v103;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_20D8D60B4();
          v103 = v306;
        }

        sub_20D8D4E40(v106, v103);
      }

      v108 = swift_isUniquelyReferenced_nonNull_native();
      v306 = v103;
      sub_20D8D5428(1, v108, 0.3);
      v109 = v306;
      v110 = sub_20D8D4AC0(2);
      if (v111)
      {
        v112 = v110;
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v306 = v109;
        if (!v113)
        {
          sub_20D8D60B4();
          v109 = v306;
        }

        sub_20D8D4E40(v112, v109);
      }

      v114 = swift_isUniquelyReferenced_nonNull_native();
      v306 = v109;
      sub_20D8D5428(3, v114, 0.7);
      v74 = v306;
      v115 = sub_20D8D4AC0(4);
      if (v116)
      {
        v117 = v115;
        v118 = swift_isUniquelyReferenced_nonNull_native();
        v306 = v74;
        if (!v118)
        {
          sub_20D8D60B4();
          v74 = v306;
        }

        sub_20D8D4E40(v117, v74);
      }

      v55 = v305;
      v119 = sub_20D975758();
      v41 = v119;
      v120 = 0;
      v121 = 1 << *(v74 + 32);
      if (v121 < 64)
      {
        v122 = ~(-1 << v121);
      }

      else
      {
        v122 = -1;
      }

      for (i = v122 & *(v74 + 64); i; *(v119 + 2) = v131)
      {
        v124 = __clz(__rbit64(i));
        i &= i - 1;
        v125 = v124 | (v120 << 6);
LABEL_31:
        v128 = *(*(v74 + 48) + 8 * v125);
        v129 = *(*(v74 + 56) + 8 * v125);
        *&v119[((v125 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64] |= 1 << v125;
        *(*(v119 + 6) + 8 * v125) = v128;
        *(*(v119 + 7) + 8 * v125) = v84 * v129;
        v130 = *(v119 + 2);
        v101 = __OFADD__(v130, 1);
        v131 = v130 + 1;
        if (v101)
        {
          goto LABEL_81;
        }
      }

      v126 = v120;
      while (1)
      {
        v120 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          break;
        }

        if (v120 >= ((v121 + 63) >> 6))
        {

          goto LABEL_35;
        }

        v127 = *(v74 + 64 + 8 * v120);
        ++v126;
        if (v127)
        {
          i = (v127 - 1) & v127;
          v125 = __clz(__rbit64(v127)) | (v120 << 6);
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v41 = sub_20D975778();
    v55 = v41;
    v98 = sub_20D8D4AC0(0);
    if (v99)
    {
      goto LABEL_87;
    }

    *&v41[8 * (v98 >> 6) + 64] |= 1 << v98;
    *(*(v41 + 6) + 8 * v98) = 0;
    *(*(v41 + 7) + 8 * v98) = 0;
    v100 = *(v41 + 2);
    v101 = __OFADD__(v100, 1);
    v102 = v100 + 1;
    if (v101)
    {
      goto LABEL_88;
    }

    *(v41 + 2) = v102;
LABEL_35:
    v56 = sub_20D975778();
    v55 = v56;
    v132 = sub_20D8D4AC0(0);
    if (v133)
    {
      goto LABEL_83;
    }

    *(v56 + 8 * (v132 >> 6) + 64) |= 1 << v132;
    *(*(v56 + 48) + 8 * v132) = 0;
    *(*(v56 + 56) + 8 * v132) = 0;
    v134 = *(v56 + 16);
    v101 = __OFADD__(v134, 1);
    v135 = v134 + 1;
    if (v101)
    {
      goto LABEL_84;
    }

    *(v56 + 16) = v135;
    if (v84 != 0.0)
    {
      v140 = sub_20D8D6850(&unk_28249A400);
      v55 = v305;
      v141 = sub_20D975758();
      v74 = v141;
      v142 = 0;
      v143 = 1 << *(v140 + 32);
      if (v143 < 64)
      {
        v144 = ~(-1 << v143);
      }

      else
      {
        v144 = -1;
      }

      for (j = v144 & *(v140 + 64); j; v141[2] = v153)
      {
        v146 = __clz(__rbit64(j));
        j &= j - 1;
        v147 = v146 | (v142 << 6);
LABEL_51:
        v150 = *(*(v140 + 48) + 8 * v147);
        v151 = *(*(v140 + 56) + 8 * v147);
        *(v141 + ((v147 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v147;
        *(v141[6] + 8 * v147) = v150;
        *(v141[7] + 8 * v147) = v84 * v151;
        v152 = v141[2];
        v101 = __OFADD__(v152, 1);
        v153 = v152 + 1;
        if (v101)
        {
          goto LABEL_82;
        }
      }

      v148 = v142;
      while (1)
      {
        v142 = v148 + 1;
        if (__OFADD__(v148, 1))
        {
          goto LABEL_80;
        }

        if (v142 >= ((v143 + 63) >> 6))
        {

          v265 = 1;
          goto LABEL_55;
        }

        v149 = *(v140 + 64 + 8 * v142);
        ++v148;
        if (v149)
        {
          j = (v149 - 1) & v149;
          v147 = __clz(__rbit64(v149)) | (v142 << 6);
          goto LABEL_51;
        }
      }
    }

    v74 = sub_20D975778();
    v55 = v74;
    v136 = sub_20D8D4AC0(0);
    if (v137)
    {
      goto LABEL_89;
    }

    *(v74 + 8 * (v136 >> 6) + 64) |= 1 << v136;
    *(*(v74 + 48) + 8 * v136) = 0;
    *(*(v74 + 56) + 8 * v136) = 0;
    v138 = *(v74 + 16);
    v101 = __OFADD__(v138, 1);
    v139 = v138 + 1;
    if (v101)
    {
      goto LABEL_90;
    }

    *(v74 + 16) = v139;
LABEL_55:
    v55 = sub_20D975778();
    v154 = sub_20D8D4AC0(0);
    if (v155)
    {
      goto LABEL_85;
    }

    *(v55 + 8 * (v154 >> 6) + 64) |= 1 << v154;
    *(*(v55 + 48) + 8 * v154) = 0;
    *(*(v55 + 56) + 8 * v154) = 0;
    v156 = *(v55 + 16);
    v101 = __OFADD__(v156, 1);
    v157 = v156 + 1;
    if (v101)
    {
      goto LABEL_86;
    }

    *(v55 + 16) = v157;
    v283(v298, v304, v52);
    v158 = v300;
    sub_20D972BF8();
    v159 = *v296;
    (*v296)(v301, v158, v302);
    v160 = v303;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v160 = sub_20D8D486C(0, *(v160 + 16) + 1, 1, v160, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
    }

    v162 = *(v160 + 16);
    v161 = *(v160 + 24);
    if (v162 >= v161 >> 1)
    {
      v160 = sub_20D8D486C(v161 > 1, v162 + 1, 1, v160, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
    }

    v163 = v76 + 1;
    v56 = *(v46 + 1);
    v164 = v302;
    (v56)(v300, v302);
    *(v160 + 16) = v162 + 1;
    v41 = ((v46[80] + 32) & ~v46[80]);
    v303 = v160;
    v165 = &v41[v160];
    v74 = *(v46 + 9);
    v166 = v164;
    v76 = v163;
    (*(v46 + 4))(&v165[v74 * v162], v301, v166);
    v167 = v163 == 12;
    v52 = v299;
  }

  while (!v167);
  if (v265)
  {
    v300 = sub_20D84B7B0(&unk_28249A450);
  }

  else
  {
    v300 = MEMORY[0x277D84FA0];
  }

  v46 = v280;
  v76 = v285;
  v283(v256, v253, v52);
  v277(v258, v295, v46);
  v168 = *(v261 + 16);
  v305 = v261 + 16;
  v301 = v168;
  (v168)(v259, v260, v264);
  v55 = v303[2];
  v169 = &v41[];
  v52 = -v55;
  v170 = -1;
  do
  {
    v171 = v52 + v170;
    if (v52 + v170 == -1)
    {
      break;
    }

    if (++v170 >= v303[2])
    {
      goto LABEL_91;
    }

    v46 = &v169[v74];
    v55 = v266;
    v172 = v302;
    v159(v266);
    sub_20D972BE8();
    v174 = v173;
    v175 = v172;
    v76 = v285;
    (v56)(v55, v175);
    v169 = v46;
  }

  while (v174 == 0.0);

  v176 = v257;
  *v257 = 0xD00000000000003BLL;
  v176[1] = v249;
  v177 = v262;
  *(v176 + v262[16]) = 6;
  *(v176 + v177[11]) = v171 != -1;
  (v301)(v250, v259, v264);
  v277(v76, v258, v280);
  v178 = v177[12];

  v179 = v178;
  sub_20D972E28();
  v180 = sub_20D972E38();
  if (*(v180 + 16))
  {
    v181 = v232;
    v182 = v302;
    (v159)(v232, &v41[v180], v302);

    v184 = v230;
    MEMORY[0x20F320DF0](v183);
    (v56)(v181, v182);
    (*v279)(v251, v184, v299);
  }

  else
  {

    v283(v251, v256, v299);
  }

  v185 = v262;
  v186 = v262[9];
  sub_20D972DA8();
  v187 = sub_20D972E38();
  v188 = *(v187 + 16);
  if (v188)
  {
    v189 = &v41[v187 + (v188 - 1) * v74];
    v190 = v233;
    v191 = v302;
    (v159)(v233, v189, v302);

    v193 = v231;
    MEMORY[0x20F320DF0](v192);
    (v56)(v190, v191);
    v194 = v299;
    (*v279)(v252, v193, v299);
  }

  else
  {

    v194 = v299;
    v283(v252, v256, v299);
  }

  v195 = v263;
  v196 = v185[10];
  v197 = v257;
  sub_20D972DA8();
  v198 = v197 + v185[5];
  sub_20D971D78();
  v199 = v197 + v185[6];
  sub_20D971D78();
  v200 = v197 + v185[7];
  sub_20D971D78();
  v201 = v197 + v185[8];
  sub_20D971D78();
  v202 = v298;
  sub_20D971D78();
  v203 = v202;
  v204 = v179;
  v205 = v275;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if (result)
  {
    v207 = v194;
    v208 = *(v195 + 32);
    v209 = v238;
    v208(v238, v203, v207);
    v305 = v204;
    v210 = v241;
    v208((v209 + *(v241 + 48)), v205, v299);
    v211 = v240;
    sub_20D7EB7E8(v209, v240, &unk_27C83C750, &unk_20D978DD0);
    v212 = *(v210 + 48);
    v213 = v239;
    v208(v239, v211, v299);
    v214 = v203;
    v215 = *(v263 + 8);
    v215(v211 + v212, v299);
    sub_20D829514(v209, v211);
    v216 = v213 + *(v237 + 36);
    v217 = v211 + *(v210 + 48);
    v302 = v208;
    v208(v216, v217, v299);
    v301 = v215;
    v215(v211, v299);
    v218 = v242;
    (*(v243 + 16))(v242, v197 + v305, v244);
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v213, v218, v214, v197 + v262[13]);
    v219 = v294;
    (*(v254 + 56))(v245, 1, 1, v294);
    v220 = v255;
    (*(v255 + 56))(v246, 1, 1, v280);
    v221 = v247;
    v222 = v299;
    sub_20D971E98();
    v223 = v282;
    sub_20D972E48();
    v224 = v248;
    sub_20D972748();
    v292(v223, v219);
    result = (*(v263 + 48))(v224, 1, v222);
    if (result != 1)
    {

      (*(v234 + 8))(v221, v235);
      v225 = v301;
      (v301)(v252, v222);
      (v225)(v251, v222);
      v226 = v222;
      v227 = *(v261 + 8);
      v228 = v264;
      v227(v259, v264);
      (*(v220 + 8))(v258, v280);
      (v225)(v256, v226);
      (v225)(v304, v226);
      v227(v260, v228);
      (v225)(v253, v226);
      v229 = v262;
      (v302)(v197 + v262[14], v224, v226);
      *(v197 + v229[15]) = v300;
      return sub_20D8D6C58(v197, v236, type metadata accessor for HistoricalUsageSnapshot);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D8B62C8@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11)
{
  v262 = a7;
  v269 = a6;
  v285 = a5;
  v271 = a2;
  v263 = a1;
  v15 = sub_20D9727D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v257 = &v238 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v258 = &v238 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v255 = &v238 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v254 = &v238 - v27;
  v246 = sub_20D971EA8();
  v245 = *(v246 - 8);
  v28 = *(v245 + 64);
  MEMORY[0x28223BE20](v246);
  v256 = &v238 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_20D972E88();
  v252 = *(v253 - 8);
  v30 = *(v252 + 64);
  MEMORY[0x28223BE20](v253);
  v251 = &v238 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v32 = *(*(v250 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v250);
  v249 = &v238 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v248 = &v238 - v35;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v36 = *(*(v247 - 8) + 64);
  MEMORY[0x28223BE20](v247);
  v265 = &v238 - v37;
  v280 = type metadata accessor for HistoricalUsageSnapshot();
  v38 = *(*(v280 - 1) + 64);
  MEMORY[0x28223BE20](v280);
  v268 = (&v238 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_20D972C58();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v40);
  v300 = &v238 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v299 = &v238 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v244 = &v238 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v243 = &v238 - v50;
  MEMORY[0x28223BE20](v49);
  v292 = &v238 - v51;
  v275 = sub_20D972AF8();
  v270 = *(v275 - 8);
  v52 = *(v270 + 64);
  v53 = MEMORY[0x28223BE20](v275);
  v260 = &v238 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v274 = &v238 - v55;
  v277 = sub_20D972838();
  v276 = *(v277 - 8);
  v56 = *(v276 + 64);
  v57 = MEMORY[0x28223BE20](v277);
  v259 = &v238 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v273 = &v238 - v59;
  v296 = sub_20D972628();
  v279 = *(v296 - 1);
  v60 = *(v279 + 64);
  v61 = MEMORY[0x28223BE20](v296);
  v261 = &v238 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v297 = &v238 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v66 = MEMORY[0x28223BE20](v65);
  v267 = &v238 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v69 = MEMORY[0x28223BE20](v68);
  v266 = &v238 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v272 = (&v238 - v72);
  MEMORY[0x28223BE20](v71);
  v298 = (&v238 - v76);
  v77 = a8[3];
  v304 = a8[2];
  *v305 = v77;
  *&v305[9] = *(a8 + 57);
  v78 = *a8;
  v303 = a8[1];
  v302 = v78;
  v79 = a10[2];
  *v309 = a10[3];
  *&v309[9] = *(a10 + 57);
  v80 = *a10;
  v307 = a10[1];
  v308 = v79;
  v306 = v80;
  v291 = a4;
  v295 = a3;
  if (a3)
  {
    if (a4)
    {
      v81 = *(v73 + 16);
      v82 = *(a4 + 16);
      v83 = v276;
      if (v81 == v82)
      {
        v239 = v75;
        v240 = v74;
        v84 = v73;
        a4 = v291;
        goto LABEL_9;
      }

      if (qword_2811250E8 != -1)
      {
        swift_once();
      }

      v189 = sub_20D9734F8();
      __swift_project_value_buffer(v189, qword_28112AB90);

      v190 = sub_20D9734D8();
      v191 = sub_20D975458();
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        v301 = v193;
        *v192 = 136315650;
        *(v192 + 4) = sub_20D7F4DC8(0xD000000000000085, 0x800000020D9897F0, &v301);
        *(v192 + 12) = 2048;
        *(v192 + 14) = v81;

        *(v192 + 22) = 2048;
        *(v192 + 24) = v82;

        _os_log_impl(&dword_20D7C9000, v190, v191, "%s num imports %ld & exports %ld don't match", v192, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v193);
        MEMORY[0x20F324260](v193, -1, -1);
        MEMORY[0x20F324260](v192, -1, -1);
      }

      else
      {
      }

LABEL_121:
      v89 = v280;
      if (qword_27C838600 == -1)
      {
LABEL_122:
        v236 = __swift_project_value_buffer(v89, qword_27C83A1D8);
        return sub_20D8D6CC0(v236, a9, type metadata accessor for HistoricalUsageSnapshot);
      }

LABEL_143:
      v237 = v89;
      swift_once();
      v89 = v237;
      goto LABEL_122;
    }

    v239 = v75;
    v240 = v74;
    v84 = v73;
  }

  else
  {
    if (!a4)
    {
      if (qword_2811250E8 != -1)
      {
        swift_once();
      }

      v231 = sub_20D9734F8();
      __swift_project_value_buffer(v231, qword_28112AB90);
      v232 = sub_20D9734D8();
      v233 = sub_20D975458();
      if (os_log_type_enabled(v232, v233))
      {
        v234 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        v301 = v235;
        *v234 = 136315138;
        *(v234 + 4) = sub_20D7F4DC8(0xD000000000000085, 0x800000020D9897F0, &v301);
        _os_log_impl(&dword_20D7C9000, v232, v233, "%s given no input values", v234, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v235);
        MEMORY[0x20F324260](v235, -1, -1);
        MEMORY[0x20F324260](v234, -1, -1);
      }

      goto LABEL_121;
    }

    v239 = v75;
    v240 = v74;
    v84 = a4;
  }

  v83 = v276;
LABEL_9:
  v242 = v16;
  v264 = v15;
  v241 = a9;
  v85 = *(v84 + 16);
  v86 = v279;
  v87 = *(v279 + 16);
  i = v296;
  v294 = v279 + 16;
  v293 = v87;
  v89 = (v87)(v298, v271, v296);
  v290 = v85;
  if (v85)
  {
    v278 = 0;
    v90 = 0;
    v238 = a11;
    v91 = v295;
    v284 = v295 + 32;
    v281 = a4 + 32;
    v283 = (v86 + 8);
    v282 = (v86 + 32);
    v288 = (v41 + 16);
    v287 = v41 + 8;
    v286 = v41 + 32;
    v92 = MEMORY[0x277D84F90];
    v289 = v40;
    while (1)
    {
      v93 = 0.0;
      v94 = 0.0;
      if (v91)
      {
        if (v90 >= *(v91 + 2))
        {
          goto LABEL_132;
        }

        v94 = *&v284[8 * v90];
      }

      if (a4)
      {
        if (v90 >= *(a4 + 16))
        {
          goto LABEL_133;
        }

        v93 = *(v281 + 8 * v90);
      }

      if (v90)
      {
        v95 = v297;
        v96 = v298;
        sub_20D8B96B8(v298, v297);
        (*v283)(v96, i);
        (*v282)(v96, v95, i);
      }

      if (v94 != 0.0)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
      v97 = sub_20D975778();
      v89 = sub_20D8D4AC0(0);
      if (v98)
      {
        goto LABEL_134;
      }

      v97[(v89 >> 6) + 8] |= 1 << v89;
      *(v97[6] + 8 * v89) = 0;
      *(v97[7] + 8 * v89) = 0;
      v99 = v97[2];
      v100 = __OFADD__(v99, 1);
      v101 = v99 + 1;
      if (v100)
      {
        goto LABEL_135;
      }

      v97[2] = v101;
      if (v93 != 0.0)
      {
        goto LABEL_46;
      }

LABEL_23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
      a9 = sub_20D975778();
      v89 = sub_20D8D4AC0(0);
      if (v102)
      {
        goto LABEL_136;
      }

      *(a9 + 8 * (v89 >> 6) + 64) |= 1 << v89;
      *(*(a9 + 48) + 8 * v89) = 0;
      *(*(a9 + 56) + 8 * v89) = 0;
      v103 = *(a9 + 16);
      v100 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v100)
      {
        goto LABEL_137;
      }

      *(a9 + 16) = v104;
      if (v94 != 0.0)
      {
LABEL_60:
        v140 = sub_20D8D3D44();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
        v89 = sub_20D975758();
        v141 = 0;
        v142 = 1 << *(v140 + 32);
        if (v142 < 64)
        {
          v143 = ~(-1 << v142);
        }

        else
        {
          v143 = -1;
        }

        v144 = v143 & *(v140 + 64);
        if (v144)
        {
          while (1)
          {
            v145 = __clz(__rbit64(v144));
            v144 &= v144 - 1;
            v146 = v145 | (v141 << 6);
LABEL_70:
            v149 = *(*(v140 + 48) + 8 * v146);
            v150 = *(*(v140 + 56) + 8 * v146);
            *(v89 + 64 + ((v146 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v146;
            *(*(v89 + 48) + 8 * v146) = v149;
            *(*(v89 + 56) + 8 * v146) = v94 * v150;
            v151 = *(v89 + 16);
            v100 = __OFADD__(v151, 1);
            v152 = v151 + 1;
            if (v100)
            {
              break;
            }

            *(v89 + 16) = v152;
            if (!v144)
            {
              goto LABEL_65;
            }
          }

LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
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
          goto LABEL_142;
        }

LABEL_65:
        v147 = v141;
        while (1)
        {
          v141 = v147 + 1;
          if (__OFADD__(v147, 1))
          {
            break;
          }

          if (v141 >= ((v142 + 63) >> 6))
          {

            v278 = 1;
            if (v93 == 0.0)
            {
              goto LABEL_29;
            }

            goto LABEL_74;
          }

          v148 = *(v140 + 64 + 8 * v141);
          ++v147;
          if (v148)
          {
            v144 = (v148 - 1) & v148;
            v146 = __clz(__rbit64(v148)) | (v141 << 6);
            goto LABEL_70;
          }
        }

LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

LABEL_26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
      v105 = sub_20D975778();
      v89 = sub_20D8D4AC0(0);
      if (v106)
      {
        goto LABEL_138;
      }

      v105[(v89 >> 6) + 8] |= 1 << v89;
      *(v105[6] + 8 * v89) = 0;
      *(v105[7] + 8 * v89) = 0;
      v107 = v105[2];
      v100 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v100)
      {
        goto LABEL_139;
      }

      v105[2] = v108;
      if (v93 != 0.0)
      {
LABEL_74:
        v153 = sub_20D8D3D44();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
        v154 = sub_20D975758();
        v89 = v153;
        v155 = 0;
        v156 = v153 + 64;
        v157 = 1 << *(v153 + 32);
        if (v157 < 64)
        {
          v158 = ~(-1 << v157);
        }

        else
        {
          v158 = -1;
        }

        v159 = v158 & *(v153 + 64);
        for (i = v296; v159; v154[2] = v167)
        {
          v160 = __clz(__rbit64(v159));
          v159 &= v159 - 1;
          v161 = v160 | (v155 << 6);
LABEL_84:
          v164 = *(*(v89 + 48) + 8 * v161);
          v165 = *(*(v89 + 56) + 8 * v161);
          *(v154 + ((v161 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v161;
          *(v154[6] + 8 * v161) = v164;
          *(v154[7] + 8 * v161) = v93 * v165;
          v166 = v154[2];
          v100 = __OFADD__(v166, 1);
          v167 = v166 + 1;
          if (v100)
          {
            goto LABEL_130;
          }
        }

        v162 = v155;
        while (1)
        {
          v155 = v162 + 1;
          if (__OFADD__(v162, 1))
          {
            goto LABEL_126;
          }

          if (v155 >= ((v157 + 63) >> 6))
          {
            v113 = v92;

            goto LABEL_88;
          }

          v163 = *(v156 + 8 * v155);
          ++v162;
          if (v163)
          {
            v159 = (v163 - 1) & v163;
            v161 = __clz(__rbit64(v163)) | (v155 << 6);
            goto LABEL_84;
          }
        }
      }

LABEL_29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
      v109 = sub_20D975778();
      v89 = sub_20D8D4AC0(0);
      if (v110)
      {
        goto LABEL_140;
      }

      v109[(v89 >> 6) + 8] |= 1 << v89;
      *(v109[6] + 8 * v89) = 0;
      *(v109[7] + 8 * v89) = 0;
      v111 = v109[2];
      v100 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (v100)
      {
        goto LABEL_141;
      }

      v113 = v92;
      v109[2] = v112;
      i = v296;
LABEL_88:
      v293(v297, v298, i);
      v168 = v299;
      sub_20D972BF8();
      v40 = v289;
      (*v288)(v300, v168, v289);
      v92 = v113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = sub_20D8D486C(0, v113[2] + 1, 1, v113, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      }

      v170 = v92[2];
      v169 = v92[3];
      if (v170 >= v169 >> 1)
      {
        v92 = sub_20D8D486C(v169 > 1, v170 + 1, 1, v92, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      }

      ++v90;
      (*(v41 + 8))(v299, v40);
      v92[2] = v170 + 1;
      v89 = (*(v41 + 32))(v92 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v170, v300, v40);
      a4 = v291;
      v91 = v295;
      if (v90 == v290)
      {
        v83 = v276;
        if ((v278 & 1) == 0)
        {
          goto LABEL_97;
        }

        v291 = sub_20D84B7B0(v238);
        goto LABEL_98;
      }
    }

    v114 = sub_20D8D3D44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
    v89 = sub_20D975758();
    v115 = 0;
    v116 = 1 << *(v114 + 32);
    if (v116 < 64)
    {
      v117 = ~(-1 << v116);
    }

    else
    {
      v117 = -1;
    }

    for (j = v117 & *(v114 + 64); j; *(v89 + 16) = v126)
    {
      v119 = __clz(__rbit64(j));
      j &= j - 1;
      v120 = v119 | (v115 << 6);
LABEL_42:
      v123 = *(*(v114 + 48) + 8 * v120);
      v124 = *(*(v114 + 56) + 8 * v120);
      *(v89 + 64 + ((v120 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v120;
      *(*(v89 + 48) + 8 * v120) = v123;
      *(*(v89 + 56) + 8 * v120) = v94 * v124;
      v125 = *(v89 + 16);
      v100 = __OFADD__(v125, 1);
      v126 = v125 + 1;
      if (v100)
      {
        goto LABEL_127;
      }
    }

    v121 = v115;
    while (1)
    {
      v115 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        __break(1u);
        goto LABEL_124;
      }

      if (v115 >= ((v116 + 63) >> 6))
      {
        break;
      }

      v122 = *(v114 + 64 + 8 * v115);
      ++v121;
      if (v122)
      {
        j = (v122 - 1) & v122;
        v120 = __clz(__rbit64(v122)) | (v115 << 6);
        goto LABEL_42;
      }
    }

    if (v93 == 0.0)
    {
      goto LABEL_23;
    }

LABEL_46:
    v127 = sub_20D8D3D44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
    v89 = sub_20D975758();
    a9 = v89;
    v128 = 0;
    v129 = 1 << *(v127 + 32);
    if (v129 < 64)
    {
      v130 = ~(-1 << v129);
    }

    else
    {
      v130 = -1;
    }

    v131 = v130 & *(v127 + 64);
    if (!v131)
    {
LABEL_51:
      v134 = v128;
      while (1)
      {
        v128 = v134 + 1;
        if (__OFADD__(v134, 1))
        {
          break;
        }

        if (v128 >= ((v129 + 63) >> 6))
        {

          if (v94 == 0.0)
          {
            goto LABEL_26;
          }

          goto LABEL_60;
        }

        v135 = *(v127 + 64 + 8 * v128);
        ++v134;
        if (v135)
        {
          v131 = (v135 - 1) & v135;
          v133 = __clz(__rbit64(v135)) | (v128 << 6);
          goto LABEL_56;
        }
      }

LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    while (1)
    {
      v132 = __clz(__rbit64(v131));
      v131 &= v131 - 1;
      v133 = v132 | (v128 << 6);
LABEL_56:
      v136 = *(*(v127 + 48) + 8 * v133);
      v137 = *(*(v127 + 56) + 8 * v133);
      *(v89 + 64 + ((v133 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v133;
      *(*(v89 + 48) + 8 * v133) = v136;
      *(*(v89 + 56) + 8 * v133) = v93 * v137;
      v138 = *(v89 + 16);
      v100 = __OFADD__(v138, 1);
      v139 = v138 + 1;
      if (v100)
      {
        break;
      }

      *(v89 + 16) = v139;
      if (!v131)
      {
        goto LABEL_51;
      }
    }

LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v92 = MEMORY[0x277D84F90];
LABEL_97:
  v291 = MEMORY[0x277D84FA0];
LABEL_98:
  v293(v272, v271, i);
  v171 = *(v83 + 16);
  v300 = (v83 + 16);
  v299 = v171;
  (v171)(v273, v285, v277);
  v295 = *(v270 + 16);
  (v295)(v274, v263, v275);
  v172 = v92[2];
  a9 = v41 + 16;

  v173 = 0;
  do
  {
    v174 = v173;
    if (v172 == v173)
    {
      break;
    }

    if (v173 >= v92[2])
    {
      goto LABEL_131;
    }

    v175 = v292;
    (*(v41 + 16))(v292, v92 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v173++, v40);
    sub_20D972BE8();
    v177 = v176;
    v89 = (*(v41 + 8))(v175, v40);
  }

  while (v177 == 0.0);
  v178 = v172 != v174;

  v179 = v268;
  v180 = v262;
  *v268 = v269;
  v179[1] = v180;
  v181 = v280;
  *(v179 + v280[16]) = 6;
  *(v179 + v181[11]) = v178;
  (v295)(v260, v274, v275);
  (v299)(v259, v273, v277);
  v182 = v181[12];
  swift_bridgeObjectRetain_n();

  sub_20D972E28();
  v183 = sub_20D972E38();
  if (*(v183 + 16))
  {
    v184 = v243;
    (*(v41 + 16))(v243, v183 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v40);

    v186 = v182;
    v187 = v239;
    MEMORY[0x20F320DF0](v185);
    (*(v41 + 8))(v184, v40);
    v188 = v187;
    v182 = v186;
    (*(v279 + 32))(v266, v188, v296);
  }

  else
  {

    v293(v266, v272, v296);
  }

  v194 = v280[9];
  sub_20D972DA8();
  v300 = v182;
  v195 = sub_20D972E38();
  v196 = *(v195 + 16);
  if (v196)
  {
    v197 = v244;
    (*(v41 + 16))(v244, v195 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * (v196 - 1), v40);

    v199 = v240;
    MEMORY[0x20F320DF0](v198);
    (*(v41 + 8))(v197, v40);
    v200 = v296;
    (*(v279 + 32))(v267, v199, v296);
  }

  else
  {

    v200 = v296;
    v293(v267, v272, v296);
  }

  a9 = v280;
  v201 = v280[10];
  sub_20D972DA8();
  v202 = v179 + *(a9 + 20);
  sub_20D971D78();
  v203 = v179 + *(a9 + 24);
  sub_20D971D78();
  v204 = v179 + *(a9 + 28);
  sub_20D971D78();
  v205 = v179 + *(a9 + 32);
  sub_20D971D78();
  v206 = v297;
  sub_20D971D78();
  v207 = v261;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  v89 = sub_20D974FC8();
  if ((v89 & 1) == 0)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v208 = v200;
  v209 = (v279 + 32);
  v210 = *(v279 + 32);
  v211 = v206;
  v212 = v248;
  (v210)(v248, v211, v200);
  v213 = v250;
  (v210)(v212 + *(v250 + 48), v207, v208);
  v214 = v249;
  sub_20D7EB7E8(v212, v249, &unk_27C83C750, &unk_20D978DD0);
  v299 = *(v213 + 48);
  (v210)(v265, v214, v208);
  v216 = (v279 + 8);
  v215 = *(v279 + 8);
  v215(&v299[v214], v208);
  sub_20D829514(v212, v214);
  v217 = v265;
  v218 = &v265[*(v247 + 36)];
  v219 = v214 + *(v213 + 48);
  v299 = v209;
  v296 = v210;
  (v210)(v218, v219, v208);
  v295 = v216;
  v215(v214, v208);
  v220 = v215;
  v221 = v251;
  (*(v252 + 16))(v251, &v300[v179], v253);
  v222 = v297;
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v217, v221, v222, v179 + v280[13]);
  v223 = v242;
  (*(v242 + 56))(v254, 1, 1, v264);
  v224 = v276;
  (*(v276 + 56))(v255, 1, 1, v277);
  v225 = v256;
  v226 = v268;
  sub_20D971E98();
  v227 = v257;
  sub_20D972E48();
  v228 = v258;
  sub_20D972748();
  (*(v223 + 8))(v227, v264);
  result = (*(v279 + 48))(v228, 1, v208);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v245 + 8))(v225, v246);
    v220(v267, v208);
    v220(v266, v208);
    (*(v270 + 8))(v274, v275);
    (*(v224 + 8))(v273, v277);
    v220(v272, v208);
    v220(v298, v208);
    v230 = v280;
    (v296)(v226 + v280[14], v228, v208);
    *(v226 + v230[15]) = v291;
    return sub_20D8D6C58(v226, v241, type metadata accessor for HistoricalUsageSnapshot);
  }

  return result;
}

uint64_t static HistoricalUsageSnapshot.mock_StaleData_3of14d_ImportExport_Week_Snapshot_StartingOn(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v34 = sub_20D972AF8();
  v33 = *(v34 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D9726F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D9727D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20D972628();
  v28 = *(v29 - 8);
  v19 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 104))(v13, *MEMORY[0x277CC9830], v9);
  sub_20D972708();
  (*(v10 + 8))(v13, v9);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_281126478);
  (*(v5 + 16))(v8, v22, v4);
  sub_20D972798();
  sub_20D972718();
  (*(v15 + 8))(v18, v14);
  v23 = v33;
  v24 = v31;
  v25 = v34;
  (*(v33 + 104))(v31, *MEMORY[0x277D075B8], v34);
  v52 = 1;
  v51 = 0;
  v50 = 1;
  v49 = 0;
  v48 = 1;
  *&v39 = 0;
  *(&v39 + 1) = 1;
  v40 = 0x3FD3333333333333;
  v41 = 0;
  v42 = 0;
  v43 = 1;
  v44 = 0x3FE6666666666666;
  v45 = 0;
  v46 = 0;
  v47 = 1;
  v35[0] = xmmword_20D97B340;
  v35[1] = xmmword_20D97B350;
  v36 = 0;
  v37 = 0;
  v38 = 64;
  sub_20D8B62C8(v24, v21, byte_28249A8A8, &unk_28249A8E0, v22, 0xD00000000000003FLL, 0x800000020D989030, &v39, v32, v35, &unk_28249A830);
  (*(v23 + 8))(v24, v25);
  return (*(v28 + 8))(v21, v29);
}

uint64_t static HistoricalUsageSnapshot.mock_SimpleData_10of14d_ImportExport_Week_Snapshot_StartingOn(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v34 = sub_20D972AF8();
  v33 = *(v34 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D9726F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D9727D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20D972628();
  v28 = *(v29 - 8);
  v19 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 104))(v13, *MEMORY[0x277CC9830], v9);
  sub_20D972708();
  (*(v10 + 8))(v13, v9);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_281126478);
  (*(v5 + 16))(v8, v22, v4);
  sub_20D972798();
  sub_20D972718();
  (*(v15 + 8))(v18, v14);
  v23 = v33;
  v24 = v31;
  v25 = v34;
  (*(v33 + 104))(v31, *MEMORY[0x277D075B8], v34);
  v52 = 1;
  v51 = 0;
  v50 = 1;
  v49 = 0;
  v48 = 1;
  *&v39 = 0;
  *(&v39 + 1) = 1;
  v40 = 0x3FD3333333333333;
  v41 = 0;
  v42 = 0;
  v43 = 1;
  v44 = 0x3FE6666666666666;
  v45 = 0;
  v46 = 0;
  v47 = 1;
  v35[0] = xmmword_20D97B340;
  v35[1] = xmmword_20D97B350;
  v36 = 0;
  v37 = 0;
  v38 = 64;
  sub_20D8B62C8(v24, v21, byte_282497220, &unk_282497290, v22, 0xD000000000000041, 0x800000020D989070, &v39, v32, v35, &unk_2824971F8);
  (*(v23 + 8))(v24, v25);
  return (*(v28 + 8))(v21, v29);
}

uint64_t static HistoricalUsageSnapshot.mock_UpAndDownData_13of14d_ImportExport_Week_Snapshot_StartingOn(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v34 = sub_20D972AF8();
  v33 = *(v34 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D9726F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D9727D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20D972628();
  v28 = *(v29 - 8);
  v19 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 104))(v13, *MEMORY[0x277CC9830], v9);
  sub_20D972708();
  (*(v10 + 8))(v13, v9);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_281126478);
  (*(v5 + 16))(v8, v22, v4);
  sub_20D972798();
  sub_20D972718();
  (*(v15 + 8))(v18, v14);
  v23 = v33;
  v24 = v31;
  v25 = v34;
  (*(v33 + 104))(v31, *MEMORY[0x277D075B8], v34);
  v52 = 1;
  v51 = 0;
  v50 = 1;
  v49 = 0;
  v48 = 1;
  *&v39 = 0;
  *(&v39 + 1) = 1;
  v40 = 0x3FD3333333333333;
  v41 = 0;
  v42 = 0;
  v43 = 1;
  v44 = 0x3FE6666666666666;
  v45 = 0;
  v46 = 0;
  v47 = 1;
  v35[0] = xmmword_20D97B340;
  v35[1] = xmmword_20D97B350;
  v36 = 0;
  v37 = 0;
  v38 = 64;
  sub_20D8B62C8(v24, v21, byte_28249A918, &unk_28249A9A0, v22, 0xD000000000000018, 0x800000020D9890C0, &v39, v32, v35, &unk_28249A858);
  (*(v23 + 8))(v24, v25);
  return (*(v28 + 8))(v21, v29);
}

uint64_t static HistoricalUsageSnapshot.mock_SurplusDownData_13of14d_ImportExport_Week_Snapshot_StartingOn(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v34 = sub_20D972AF8();
  v33 = *(v34 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D9726F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D9727D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20D972628();
  v28 = *(v29 - 8);
  v19 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 104))(v13, *MEMORY[0x277CC9830], v9);
  sub_20D972708();
  (*(v10 + 8))(v13, v9);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_281126478);
  (*(v5 + 16))(v8, v22, v4);
  sub_20D972798();
  sub_20D972718();
  (*(v15 + 8))(v18, v14);
  v23 = v33;
  v24 = v31;
  v25 = v34;
  (*(v33 + 104))(v31, *MEMORY[0x277D075B8], v34);
  v52 = 1;
  v51 = 0;
  v50 = 1;
  v49 = 0;
  v48 = 1;
  *&v39 = 0;
  *(&v39 + 1) = 1;
  v40 = 0x3FD3333333333333;
  v41 = 0;
  v42 = 0;
  v43 = 1;
  v44 = 0x3FE6666666666666;
  v45 = 0;
  v46 = 0;
  v47 = 1;
  v35[0] = xmmword_20D97B340;
  v35[1] = xmmword_20D97B350;
  v36 = 0;
  v37 = 0;
  v38 = 64;
  sub_20D8B62C8(v24, v21, byte_28249AA28, &unk_28249AAB0, v22, 0xD000000000000046, 0x800000020D9890E0, &v39, v32, v35, &unk_28249A880);
  (*(v23 + 8))(v24, v25);
  return (*(v28 + 8))(v21, v29);
}

uint64_t sub_20D8B96B8@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v47 = a2;
  v46 = sub_20D9727B8();
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D9726F8();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_20D9727D8();
  v14 = *(v48 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v48);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20D972628();
  v39 = *(v18 - 8);
  v40 = v18;
  v19 = *(v39 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v10[13];
  v38 = *MEMORY[0x277CC9830];
  v37 = v22;
  v22(v13);
  sub_20D972708();
  v23 = v10[1];
  v44 = v9;
  v42 = v10 + 1;
  v36 = v23;
  v23(v13, v9);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v4, qword_281126478);
  v33 = *(v5 + 16);
  v34 = v24;
  v33(v8, v24, v4);
  sub_20D972798();
  v35 = v21;
  sub_20D972718();
  v32 = v4;
  v45 = *(v14 + 8);
  v45(v17, v48);
  v25 = v41;
  v26 = v43;
  v27 = v46;
  (*(v41 + 104))(v43, *MEMORY[0x277CC9968], v46);
  v28 = v44;
  v37(v13, v38, v44);
  sub_20D972708();
  v36(v13, v28);
  v33(v8, v34, v32);
  sub_20D972798();
  v29 = v35;
  sub_20D9730D8();
  v45(v17, v48);
  (*(v25 + 8))(v26, v27);
  return (*(v39 + 8))(v29, v40);
}

uint64_t sub_20D8B9B74(uint64_t (*a1)(uint64_t))
{
  if (qword_27C8385E8 != -1)
  {
    swift_once();
  }

  v1 = sub_20D972628();
  v2 = __swift_project_value_buffer(v1, qword_27C83A190);

  return a1(v2);
}

uint64_t static HistoricalUsageSnapshot.mock_ImportsDownData_13of14d_Import_Week_Snapshot_StartingOn(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v305 = a1;
  v236 = a2;
  v291 = sub_20D9727B8();
  v303 = *(v291 - 8);
  v2 = v303[8];
  MEMORY[0x28223BE20](v291);
  v273 = &v230 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v248 = &v230 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v246 = &v230 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v245 = &v230 - v12;
  v235 = sub_20D971EA8();
  v234 = *(v235 - 8);
  v13 = *(v234 + 64);
  MEMORY[0x28223BE20](v235);
  v247 = &v230 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_20D972E88();
  v243 = *(v244 - 8);
  v15 = *(v243 + 64);
  MEMORY[0x28223BE20](v244);
  v242 = &v230 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v17 = *(*(v241 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v241);
  v240 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v238 = &v230 - v20;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v21 = *(*(v237 - 8) + 64);
  MEMORY[0x28223BE20](v237);
  v239 = &v230 - v22;
  v262 = type metadata accessor for HistoricalUsageSnapshot();
  v23 = *(*(v262 - 1) + 64);
  MEMORY[0x28223BE20](v262);
  v257 = (&v230 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v302 = sub_20D972C58();
  v276 = *(v302 - 1);
  v25 = *(v276 + 8);
  v26 = MEMORY[0x28223BE20](v302);
  v301 = &v230 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v300 = &v230 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v233 = &v230 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v232 = &v230 - v33;
  MEMORY[0x28223BE20](v32);
  v266 = &v230 - v34;
  v264 = sub_20D972AF8();
  v261 = *(v264 - 8);
  v35 = *(v261 + 64);
  v36 = MEMORY[0x28223BE20](v264);
  v250 = &v230 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v259 = &v230 - v39;
  MEMORY[0x28223BE20](v38);
  v260 = &v230 - v40;
  v41 = sub_20D972838();
  v255 = *(v41 - 1);
  v42 = *(v255 + 64);
  v43 = MEMORY[0x28223BE20](v41);
  v258 = &v230 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = &v230 - v45;
  v47 = sub_20D9726F8();
  v48 = *(v47 - 8);
  v49 = v48[8];
  MEMORY[0x28223BE20](v47);
  v51 = &v230 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20D9727D8();
  v254 = *(v52 - 8);
  v53 = *(v254 + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v230 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_20D972628();
  v263 = *(v56 - 8);
  v57 = *(v263 + 64);
  v58 = MEMORY[0x28223BE20](v56);
  v275 = &v230 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v298 = &v230 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v231 = &v230 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v252 = &v230 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v230 = &v230 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v251 = &v230 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v256 = &v230 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v74 = &v230 - v73;
  MEMORY[0x28223BE20](v72);
  v76 = &v230 - v75;
  v77 = v48[13];
  v289 = *MEMORY[0x277CC9830];
  v288 = v48 + 13;
  v287 = v77;
  v77(v51);
  sub_20D972708();
  v78 = v48[1];
  v271 = v51;
  v272 = v47;
  v290 = v48 + 1;
  v270 = v78;
  v78(v51, v47);
  if (qword_281126470 != -1)
  {
LABEL_92:
    swift_once();
  }

  v79 = __swift_project_value_buffer(v41, qword_281126478);
  v80 = *(v255 + 16);
  v295 = v79;
  v280 = v41;
  v278 = v255 + 16;
  v277 = v80;
  (v80)(v46);
  v285 = v46;
  sub_20D972798();
  sub_20D972718();
  v81 = *(v254 + 8);
  v282 = v55;
  v293 = v254 + 8;
  v294 = v52;
  v292 = v81;
  v81(v55, v52);
  (*(v261 + 104))(v260, *MEMORY[0x277D075B8], v264);
  v249 = 0x800000020D989130;
  v83 = v263 + 16;
  v82 = *(v263 + 16);
  v304 = v74;
  v253 = v76;
  v283 = v82;
  v82(v74, v76, v56);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
  v265 = 0;
  v76 = 0;
  v269 = *MEMORY[0x277CC9968];
  v268 = (v303 + 13);
  v267 = (v303 + 1);
  v274 = (v83 - 8);
  v284 = v83;
  v279 = (v83 + 16);
  v46 = v276;
  v296 = (v276 + 16);
  v297 = v276 + 8;
  v281 = v276 + 32;
  v303 = MEMORY[0x277D84F90];
  v52 = v56;
  v299 = v56;
  do
  {
    v84 = dbl_28249A478[v76 + 4];
    v85 = v282;
    if (v76)
    {
      v86 = v271;
      v87 = v272;
      v287(v271, v289, v272);
      sub_20D972708();
      v88 = v270;
      v270(v86, v87);
      v89 = v285;
      v90 = v280;
      v286 = v76;
      v91 = v277;
      v277(v285, v295, v280);
      sub_20D972798();
      v92 = v275;
      sub_20D972718();
      v292(v85, v294);
      v93 = v273;
      (*v268)(v273, v269, v291);
      v287(v86, v289, v87);
      sub_20D972708();
      v88(v86, v87);
      v91(v89, v295, v90);
      v76 = v286;
      v52 = v299;
      sub_20D972798();
      v74 = v298;
      sub_20D9730D8();
      v292(v85, v294);
      v94 = v274;
      (*v267)(v93, v291);
      v95 = *v94;
      v96 = v92;
      v97 = v279;
      (*v94)(v96, v52);
      v56 = v304;
      v95(v304, v52);
      (*v97)(v56, v74, v52);
      v46 = v276;
    }

    if (v84 != 0.0)
    {
      v103 = sub_20D8D6850(&unk_28249A500);
      v104 = sub_20D8D4AC0(0);
      if (v105)
      {
        v106 = v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v306 = v103;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_20D8D60B4();
          v103 = v306;
        }

        sub_20D8D4E40(v106, v103);
      }

      v108 = swift_isUniquelyReferenced_nonNull_native();
      v306 = v103;
      sub_20D8D5428(1, v108, 0.3);
      v109 = v306;
      v110 = sub_20D8D4AC0(2);
      if (v111)
      {
        v112 = v110;
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v306 = v109;
        if (!v113)
        {
          sub_20D8D60B4();
          v109 = v306;
        }

        sub_20D8D4E40(v112, v109);
      }

      v114 = swift_isUniquelyReferenced_nonNull_native();
      v306 = v109;
      sub_20D8D5428(3, v114, 0.7);
      v74 = v306;
      v115 = sub_20D8D4AC0(4);
      if (v116)
      {
        v117 = v115;
        v118 = swift_isUniquelyReferenced_nonNull_native();
        v306 = v74;
        if (!v118)
        {
          sub_20D8D60B4();
          v74 = v306;
        }

        sub_20D8D4E40(v117, v74);
      }

      v55 = v305;
      v119 = sub_20D975758();
      v41 = v119;
      v120 = 0;
      v121 = 1 << *(v74 + 32);
      if (v121 < 64)
      {
        v122 = ~(-1 << v121);
      }

      else
      {
        v122 = -1;
      }

      for (i = v122 & *(v74 + 64); i; *(v119 + 2) = v131)
      {
        v124 = __clz(__rbit64(i));
        i &= i - 1;
        v125 = v124 | (v120 << 6);
LABEL_31:
        v128 = *(*(v74 + 48) + 8 * v125);
        v129 = *(*(v74 + 56) + 8 * v125);
        *&v119[((v125 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64] |= 1 << v125;
        *(*(v119 + 6) + 8 * v125) = v128;
        *(*(v119 + 7) + 8 * v125) = v84 * v129;
        v130 = *(v119 + 2);
        v101 = __OFADD__(v130, 1);
        v131 = v130 + 1;
        if (v101)
        {
          goto LABEL_81;
        }
      }

      v126 = v120;
      while (1)
      {
        v120 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          break;
        }

        if (v120 >= ((v121 + 63) >> 6))
        {

          goto LABEL_35;
        }

        v127 = *(v74 + 64 + 8 * v120);
        ++v126;
        if (v127)
        {
          i = (v127 - 1) & v127;
          v125 = __clz(__rbit64(v127)) | (v120 << 6);
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v41 = sub_20D975778();
    v55 = v41;
    v98 = sub_20D8D4AC0(0);
    if (v99)
    {
      goto LABEL_87;
    }

    *&v41[8 * (v98 >> 6) + 64] |= 1 << v98;
    *(*(v41 + 6) + 8 * v98) = 0;
    *(*(v41 + 7) + 8 * v98) = 0;
    v100 = *(v41 + 2);
    v101 = __OFADD__(v100, 1);
    v102 = v100 + 1;
    if (v101)
    {
      goto LABEL_88;
    }

    *(v41 + 2) = v102;
LABEL_35:
    v56 = sub_20D975778();
    v55 = v56;
    v132 = sub_20D8D4AC0(0);
    if (v133)
    {
      goto LABEL_83;
    }

    *(v56 + 8 * (v132 >> 6) + 64) |= 1 << v132;
    *(*(v56 + 48) + 8 * v132) = 0;
    *(*(v56 + 56) + 8 * v132) = 0;
    v134 = *(v56 + 16);
    v101 = __OFADD__(v134, 1);
    v135 = v134 + 1;
    if (v101)
    {
      goto LABEL_84;
    }

    *(v56 + 16) = v135;
    if (v84 != 0.0)
    {
      v140 = sub_20D8D6850(&unk_28249A570);
      v55 = v305;
      v141 = sub_20D975758();
      v74 = v141;
      v142 = 0;
      v143 = 1 << *(v140 + 32);
      if (v143 < 64)
      {
        v144 = ~(-1 << v143);
      }

      else
      {
        v144 = -1;
      }

      for (j = v144 & *(v140 + 64); j; v141[2] = v153)
      {
        v146 = __clz(__rbit64(j));
        j &= j - 1;
        v147 = v146 | (v142 << 6);
LABEL_51:
        v150 = *(*(v140 + 48) + 8 * v147);
        v151 = *(*(v140 + 56) + 8 * v147);
        *(v141 + ((v147 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v147;
        *(v141[6] + 8 * v147) = v150;
        *(v141[7] + 8 * v147) = v84 * v151;
        v152 = v141[2];
        v101 = __OFADD__(v152, 1);
        v153 = v152 + 1;
        if (v101)
        {
          goto LABEL_82;
        }
      }

      v148 = v142;
      while (1)
      {
        v142 = v148 + 1;
        if (__OFADD__(v148, 1))
        {
          goto LABEL_80;
        }

        if (v142 >= ((v143 + 63) >> 6))
        {

          v265 = 1;
          goto LABEL_55;
        }

        v149 = *(v140 + 64 + 8 * v142);
        ++v148;
        if (v149)
        {
          j = (v149 - 1) & v149;
          v147 = __clz(__rbit64(v149)) | (v142 << 6);
          goto LABEL_51;
        }
      }
    }

    v74 = sub_20D975778();
    v55 = v74;
    v136 = sub_20D8D4AC0(0);
    if (v137)
    {
      goto LABEL_89;
    }

    *(v74 + 8 * (v136 >> 6) + 64) |= 1 << v136;
    *(*(v74 + 48) + 8 * v136) = 0;
    *(*(v74 + 56) + 8 * v136) = 0;
    v138 = *(v74 + 16);
    v101 = __OFADD__(v138, 1);
    v139 = v138 + 1;
    if (v101)
    {
      goto LABEL_90;
    }

    *(v74 + 16) = v139;
LABEL_55:
    v55 = sub_20D975778();
    v154 = sub_20D8D4AC0(0);
    if (v155)
    {
      goto LABEL_85;
    }

    *(v55 + 8 * (v154 >> 6) + 64) |= 1 << v154;
    *(*(v55 + 48) + 8 * v154) = 0;
    *(*(v55 + 56) + 8 * v154) = 0;
    v156 = *(v55 + 16);
    v101 = __OFADD__(v156, 1);
    v157 = v156 + 1;
    if (v101)
    {
      goto LABEL_86;
    }

    *(v55 + 16) = v157;
    v283(v298, v304, v52);
    v158 = v300;
    sub_20D972BF8();
    v159 = *v296;
    (*v296)(v301, v158, v302);
    v160 = v303;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v160 = sub_20D8D486C(0, *(v160 + 16) + 1, 1, v160, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
    }

    v162 = *(v160 + 16);
    v161 = *(v160 + 24);
    if (v162 >= v161 >> 1)
    {
      v160 = sub_20D8D486C(v161 > 1, v162 + 1, 1, v160, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
    }

    v163 = v76 + 1;
    v56 = *(v46 + 1);
    v164 = v302;
    (v56)(v300, v302);
    *(v160 + 16) = v162 + 1;
    v41 = ((v46[80] + 32) & ~v46[80]);
    v303 = v160;
    v165 = &v41[v160];
    v74 = *(v46 + 9);
    v166 = v164;
    v76 = v163;
    (*(v46 + 4))(&v165[v74 * v162], v301, v166);
    v167 = v163 == 13;
    v52 = v299;
  }

  while (!v167);
  if (v265)
  {
    v300 = sub_20D84B7B0(&unk_28249A5C0);
  }

  else
  {
    v300 = MEMORY[0x277D84FA0];
  }

  v46 = v280;
  v76 = v285;
  v283(v256, v253, v52);
  v277(v258, v295, v46);
  v168 = *(v261 + 16);
  v305 = v261 + 16;
  v301 = v168;
  (v168)(v259, v260, v264);
  v55 = v303[2];
  v169 = &v41[];
  v52 = -v55;
  v170 = -1;
  do
  {
    v171 = v52 + v170;
    if (v52 + v170 == -1)
    {
      break;
    }

    if (++v170 >= v303[2])
    {
      goto LABEL_91;
    }

    v46 = &v169[v74];
    v55 = v266;
    v172 = v302;
    v159(v266);
    sub_20D972BE8();
    v174 = v173;
    v175 = v172;
    v76 = v285;
    (v56)(v55, v175);
    v169 = v46;
  }

  while (v174 == 0.0);

  v176 = v257;
  *v257 = 0xD000000000000040;
  v176[1] = v249;
  v177 = v262;
  *(v176 + v262[16]) = 6;
  *(v176 + v177[11]) = v171 != -1;
  (v301)(v250, v259, v264);
  v277(v76, v258, v280);
  v178 = v177[12];

  v179 = v178;
  sub_20D972E28();
  v180 = sub_20D972E38();
  if (*(v180 + 16))
  {
    v181 = v232;
    v182 = v302;
    (v159)(v232, &v41[v180], v302);

    v184 = v230;
    MEMORY[0x20F320DF0](v183);
    (v56)(v181, v182);
    (*v279)(v251, v184, v299);
  }

  else
  {

    v283(v251, v256, v299);
  }

  v185 = v262;
  v186 = v262[9];
  sub_20D972DA8();
  v187 = sub_20D972E38();
  v188 = *(v187 + 16);
  if (v188)
  {
    v189 = &v41[v187 + (v188 - 1) * v74];
    v190 = v233;
    v191 = v302;
    (v159)(v233, v189, v302);

    v193 = v231;
    MEMORY[0x20F320DF0](v192);
    (v56)(v190, v191);
    v194 = v299;
    (*v279)(v252, v193, v299);
  }

  else
  {

    v194 = v299;
    v283(v252, v256, v299);
  }

  v195 = v263;
  v196 = v185[10];
  v197 = v257;
  sub_20D972DA8();
  v198 = v197 + v185[5];
  sub_20D971D78();
  v199 = v197 + v185[6];
  sub_20D971D78();
  v200 = v197 + v185[7];
  sub_20D971D78();
  v201 = v197 + v185[8];
  sub_20D971D78();
  v202 = v298;
  sub_20D971D78();
  v203 = v202;
  v204 = v179;
  v205 = v275;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if (result)
  {
    v207 = v194;
    v208 = *(v195 + 32);
    v209 = v238;
    v208(v238, v203, v207);
    v305 = v204;
    v210 = v241;
    v208((v209 + *(v241 + 48)), v205, v299);
    v211 = v240;
    sub_20D7EB7E8(v209, v240, &unk_27C83C750, &unk_20D978DD0);
    v212 = *(v210 + 48);
    v213 = v239;
    v208(v239, v211, v299);
    v214 = v203;
    v215 = *(v263 + 8);
    v215(v211 + v212, v299);
    sub_20D829514(v209, v211);
    v216 = v213 + *(v237 + 36);
    v217 = v211 + *(v210 + 48);
    v302 = v208;
    v208(v216, v217, v299);
    v301 = v215;
    v215(v211, v299);
    v218 = v242;
    (*(v243 + 16))(v242, v197 + v305, v244);
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v213, v218, v214, v197 + v262[13]);
    v219 = v294;
    (*(v254 + 56))(v245, 1, 1, v294);
    v220 = v255;
    (*(v255 + 56))(v246, 1, 1, v280);
    v221 = v247;
    v222 = v299;
    sub_20D971E98();
    v223 = v282;
    sub_20D972E48();
    v224 = v248;
    sub_20D972748();
    v292(v223, v219);
    result = (*(v263 + 48))(v224, 1, v222);
    if (result != 1)
    {

      (*(v234 + 8))(v221, v235);
      v225 = v301;
      (v301)(v252, v222);
      (v225)(v251, v222);
      v226 = v222;
      v227 = *(v261 + 8);
      v228 = v264;
      v227(v259, v264);
      (*(v220 + 8))(v258, v280);
      (v225)(v256, v226);
      (v225)(v304, v226);
      v227(v260, v228);
      (v225)(v253, v226);
      v229 = v262;
      (v302)(v197 + v262[14], v224, v226);
      *(v197 + v229[15]) = v300;
      return sub_20D8D6C58(v197, v236, type metadata accessor for HistoricalUsageSnapshot);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static HistoricalUsageSnapshot.mock_ImportsUpData_13of14d_Import_Week_Snapshot_StartingOn(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v305 = a1;
  v236 = a2;
  v291 = sub_20D9727B8();
  v303 = *(v291 - 8);
  v2 = v303[8];
  MEMORY[0x28223BE20](v291);
  v273 = &v230 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v248 = &v230 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v246 = &v230 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v245 = &v230 - v12;
  v235 = sub_20D971EA8();
  v234 = *(v235 - 8);
  v13 = *(v234 + 64);
  MEMORY[0x28223BE20](v235);
  v247 = &v230 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_20D972E88();
  v243 = *(v244 - 8);
  v15 = *(v243 + 64);
  MEMORY[0x28223BE20](v244);
  v242 = &v230 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v17 = *(*(v241 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v241);
  v240 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v238 = &v230 - v20;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v21 = *(*(v237 - 8) + 64);
  MEMORY[0x28223BE20](v237);
  v239 = &v230 - v22;
  v262 = type metadata accessor for HistoricalUsageSnapshot();
  v23 = *(*(v262 - 1) + 64);
  MEMORY[0x28223BE20](v262);
  v257 = (&v230 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v302 = sub_20D972C58();
  v276 = *(v302 - 1);
  v25 = *(v276 + 8);
  v26 = MEMORY[0x28223BE20](v302);
  v301 = &v230 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v300 = &v230 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v233 = &v230 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v232 = &v230 - v33;
  MEMORY[0x28223BE20](v32);
  v266 = &v230 - v34;
  v264 = sub_20D972AF8();
  v261 = *(v264 - 8);
  v35 = *(v261 + 64);
  v36 = MEMORY[0x28223BE20](v264);
  v250 = &v230 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v259 = &v230 - v39;
  MEMORY[0x28223BE20](v38);
  v260 = &v230 - v40;
  v41 = sub_20D972838();
  v255 = *(v41 - 1);
  v42 = *(v255 + 64);
  v43 = MEMORY[0x28223BE20](v41);
  v258 = &v230 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = &v230 - v45;
  v47 = sub_20D9726F8();
  v48 = *(v47 - 8);
  v49 = v48[8];
  MEMORY[0x28223BE20](v47);
  v51 = &v230 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20D9727D8();
  v254 = *(v52 - 8);
  v53 = *(v254 + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v230 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_20D972628();
  v263 = *(v56 - 8);
  v57 = *(v263 + 64);
  v58 = MEMORY[0x28223BE20](v56);
  v275 = &v230 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v298 = &v230 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v231 = &v230 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v252 = &v230 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v230 = &v230 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v251 = &v230 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v256 = &v230 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v74 = &v230 - v73;
  MEMORY[0x28223BE20](v72);
  v76 = &v230 - v75;
  v77 = v48[13];
  v289 = *MEMORY[0x277CC9830];
  v288 = v48 + 13;
  v287 = v77;
  v77(v51);
  sub_20D972708();
  v78 = v48[1];
  v271 = v51;
  v272 = v47;
  v290 = v48 + 1;
  v270 = v78;
  v78(v51, v47);
  if (qword_281126470 != -1)
  {
LABEL_92:
    swift_once();
  }

  v79 = __swift_project_value_buffer(v41, qword_281126478);
  v80 = *(v255 + 16);
  v295 = v79;
  v280 = v41;
  v278 = v255 + 16;
  v277 = v80;
  (v80)(v46);
  v285 = v46;
  sub_20D972798();
  sub_20D972718();
  v81 = *(v254 + 8);
  v282 = v55;
  v293 = v254 + 8;
  v294 = v52;
  v292 = v81;
  v81(v55, v52);
  (*(v261 + 104))(v260, *MEMORY[0x277D075B8], v264);
  v249 = 0x800000020D989180;
  v83 = v263 + 16;
  v82 = *(v263 + 16);
  v304 = v74;
  v253 = v76;
  v283 = v82;
  v82(v74, v76, v56);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
  v265 = 0;
  v76 = 0;
  v269 = *MEMORY[0x277CC9968];
  v268 = (v303 + 13);
  v267 = (v303 + 1);
  v274 = (v83 - 8);
  v284 = v83;
  v279 = (v83 + 16);
  v46 = v276;
  v296 = (v276 + 16);
  v297 = v276 + 8;
  v281 = v276 + 32;
  v303 = MEMORY[0x277D84F90];
  v52 = v56;
  v299 = v56;
  do
  {
    v84 = dbl_28249A1A0[v76 + 4];
    v85 = v282;
    if (v76)
    {
      v86 = v271;
      v87 = v272;
      v287(v271, v289, v272);
      sub_20D972708();
      v88 = v270;
      v270(v86, v87);
      v89 = v285;
      v90 = v280;
      v286 = v76;
      v91 = v277;
      v277(v285, v295, v280);
      sub_20D972798();
      v92 = v275;
      sub_20D972718();
      v292(v85, v294);
      v93 = v273;
      (*v268)(v273, v269, v291);
      v287(v86, v289, v87);
      sub_20D972708();
      v88(v86, v87);
      v91(v89, v295, v90);
      v76 = v286;
      v52 = v299;
      sub_20D972798();
      v74 = v298;
      sub_20D9730D8();
      v292(v85, v294);
      v94 = v274;
      (*v267)(v93, v291);
      v95 = *v94;
      v96 = v92;
      v97 = v279;
      (*v94)(v96, v52);
      v56 = v304;
      v95(v304, v52);
      (*v97)(v56, v74, v52);
      v46 = v276;
    }

    if (v84 != 0.0)
    {
      v103 = sub_20D8D6850(&unk_28249A228);
      v104 = sub_20D8D4AC0(0);
      if (v105)
      {
        v106 = v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v306 = v103;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_20D8D60B4();
          v103 = v306;
        }

        sub_20D8D4E40(v106, v103);
      }

      v108 = swift_isUniquelyReferenced_nonNull_native();
      v306 = v103;
      sub_20D8D5428(1, v108, 0.3);
      v109 = v306;
      v110 = sub_20D8D4AC0(2);
      if (v111)
      {
        v112 = v110;
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v306 = v109;
        if (!v113)
        {
          sub_20D8D60B4();
          v109 = v306;
        }

        sub_20D8D4E40(v112, v109);
      }

      v114 = swift_isUniquelyReferenced_nonNull_native();
      v306 = v109;
      sub_20D8D5428(3, v114, 0.7);
      v74 = v306;
      v115 = sub_20D8D4AC0(4);
      if (v116)
      {
        v117 = v115;
        v118 = swift_isUniquelyReferenced_nonNull_native();
        v306 = v74;
        if (!v118)
        {
          sub_20D8D60B4();
          v74 = v306;
        }

        sub_20D8D4E40(v117, v74);
      }

      v55 = v305;
      v119 = sub_20D975758();
      v41 = v119;
      v120 = 0;
      v121 = 1 << *(v74 + 32);
      if (v121 < 64)
      {
        v122 = ~(-1 << v121);
      }

      else
      {
        v122 = -1;
      }

      for (i = v122 & *(v74 + 64); i; *(v119 + 2) = v131)
      {
        v124 = __clz(__rbit64(i));
        i &= i - 1;
        v125 = v124 | (v120 << 6);
LABEL_31:
        v128 = *(*(v74 + 48) + 8 * v125);
        v129 = *(*(v74 + 56) + 8 * v125);
        *&v119[((v125 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64] |= 1 << v125;
        *(*(v119 + 6) + 8 * v125) = v128;
        *(*(v119 + 7) + 8 * v125) = v84 * v129;
        v130 = *(v119 + 2);
        v101 = __OFADD__(v130, 1);
        v131 = v130 + 1;
        if (v101)
        {
          goto LABEL_81;
        }
      }

      v126 = v120;
      while (1)
      {
        v120 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          break;
        }

        if (v120 >= ((v121 + 63) >> 6))
        {

          goto LABEL_35;
        }

        v127 = *(v74 + 64 + 8 * v120);
        ++v126;
        if (v127)
        {
          i = (v127 - 1) & v127;
          v125 = __clz(__rbit64(v127)) | (v120 << 6);
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v41 = sub_20D975778();
    v55 = v41;
    v98 = sub_20D8D4AC0(0);
    if (v99)
    {
      goto LABEL_87;
    }

    *&v41[8 * (v98 >> 6) + 64] |= 1 << v98;
    *(*(v41 + 6) + 8 * v98) = 0;
    *(*(v41 + 7) + 8 * v98) = 0;
    v100 = *(v41 + 2);
    v101 = __OFADD__(v100, 1);
    v102 = v100 + 1;
    if (v101)
    {
      goto LABEL_88;
    }

    *(v41 + 2) = v102;
LABEL_35:
    v56 = sub_20D975778();
    v55 = v56;
    v132 = sub_20D8D4AC0(0);
    if (v133)
    {
      goto LABEL_83;
    }

    *(v56 + 8 * (v132 >> 6) + 64) |= 1 << v132;
    *(*(v56 + 48) + 8 * v132) = 0;
    *(*(v56 + 56) + 8 * v132) = 0;
    v134 = *(v56 + 16);
    v101 = __OFADD__(v134, 1);
    v135 = v134 + 1;
    if (v101)
    {
      goto LABEL_84;
    }

    *(v56 + 16) = v135;
    if (v84 != 0.0)
    {
      v140 = sub_20D8D6850(&unk_28249A298);
      v55 = v305;
      v141 = sub_20D975758();
      v74 = v141;
      v142 = 0;
      v143 = 1 << *(v140 + 32);
      if (v143 < 64)
      {
        v144 = ~(-1 << v143);
      }

      else
      {
        v144 = -1;
      }

      for (j = v144 & *(v140 + 64); j; v141[2] = v153)
      {
        v146 = __clz(__rbit64(j));
        j &= j - 1;
        v147 = v146 | (v142 << 6);
LABEL_51:
        v150 = *(*(v140 + 48) + 8 * v147);
        v151 = *(*(v140 + 56) + 8 * v147);
        *(v141 + ((v147 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v147;
        *(v141[6] + 8 * v147) = v150;
        *(v141[7] + 8 * v147) = v84 * v151;
        v152 = v141[2];
        v101 = __OFADD__(v152, 1);
        v153 = v152 + 1;
        if (v101)
        {
          goto LABEL_82;
        }
      }

      v148 = v142;
      while (1)
      {
        v142 = v148 + 1;
        if (__OFADD__(v148, 1))
        {
          goto LABEL_80;
        }

        if (v142 >= ((v143 + 63) >> 6))
        {

          v265 = 1;
          goto LABEL_55;
        }

        v149 = *(v140 + 64 + 8 * v142);
        ++v148;
        if (v149)
        {
          j = (v149 - 1) & v149;
          v147 = __clz(__rbit64(v149)) | (v142 << 6);
          goto LABEL_51;
        }
      }
    }

    v74 = sub_20D975778();
    v55 = v74;
    v136 = sub_20D8D4AC0(0);
    if (v137)
    {
      goto LABEL_89;
    }

    *(v74 + 8 * (v136 >> 6) + 64) |= 1 << v136;
    *(*(v74 + 48) + 8 * v136) = 0;
    *(*(v74 + 56) + 8 * v136) = 0;
    v138 = *(v74 + 16);
    v101 = __OFADD__(v138, 1);
    v139 = v138 + 1;
    if (v101)
    {
      goto LABEL_90;
    }

    *(v74 + 16) = v139;
LABEL_55:
    v55 = sub_20D975778();
    v154 = sub_20D8D4AC0(0);
    if (v155)
    {
      goto LABEL_85;
    }

    *(v55 + 8 * (v154 >> 6) + 64) |= 1 << v154;
    *(*(v55 + 48) + 8 * v154) = 0;
    *(*(v55 + 56) + 8 * v154) = 0;
    v156 = *(v55 + 16);
    v101 = __OFADD__(v156, 1);
    v157 = v156 + 1;
    if (v101)
    {
      goto LABEL_86;
    }

    *(v55 + 16) = v157;
    v283(v298, v304, v52);
    v158 = v300;
    sub_20D972BF8();
    v159 = *v296;
    (*v296)(v301, v158, v302);
    v160 = v303;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v160 = sub_20D8D486C(0, *(v160 + 16) + 1, 1, v160, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
    }

    v162 = *(v160 + 16);
    v161 = *(v160 + 24);
    if (v162 >= v161 >> 1)
    {
      v160 = sub_20D8D486C(v161 > 1, v162 + 1, 1, v160, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
    }

    v163 = v76 + 1;
    v56 = *(v46 + 1);
    v164 = v302;
    (v56)(v300, v302);
    *(v160 + 16) = v162 + 1;
    v41 = ((v46[80] + 32) & ~v46[80]);
    v303 = v160;
    v165 = &v41[v160];
    v74 = *(v46 + 9);
    v166 = v164;
    v76 = v163;
    (*(v46 + 4))(&v165[v74 * v162], v301, v166);
    v167 = v163 == 13;
    v52 = v299;
  }

  while (!v167);
  if (v265)
  {
    v300 = sub_20D84B7B0(&unk_28249A2E8);
  }

  else
  {
    v300 = MEMORY[0x277D84FA0];
  }

  v46 = v280;
  v76 = v285;
  v283(v256, v253, v52);
  v277(v258, v295, v46);
  v168 = *(v261 + 16);
  v305 = v261 + 16;
  v301 = v168;
  (v168)(v259, v260, v264);
  v55 = v303[2];
  v169 = &v41[];
  v52 = -v55;
  v170 = -1;
  do
  {
    v171 = v52 + v170;
    if (v52 + v170 == -1)
    {
      break;
    }

    if (++v170 >= v303[2])
    {
      goto LABEL_91;
    }

    v46 = &v169[v74];
    v55 = v266;
    v172 = v302;
    v159(v266);
    sub_20D972BE8();
    v174 = v173;
    v175 = v172;
    v76 = v285;
    (v56)(v55, v175);
    v169 = v46;
  }

  while (v174 == 0.0);

  v176 = v257;
  *v257 = 0xD00000000000003ELL;
  v176[1] = v249;
  v177 = v262;
  *(v176 + v262[16]) = 6;
  *(v176 + v177[11]) = v171 != -1;
  (v301)(v250, v259, v264);
  v277(v76, v258, v280);
  v178 = v177[12];

  v179 = v178;
  sub_20D972E28();
  v180 = sub_20D972E38();
  if (*(v180 + 16))
  {
    v181 = v232;
    v182 = v302;
    (v159)(v232, &v41[v180], v302);

    v184 = v230;
    MEMORY[0x20F320DF0](v183);
    (v56)(v181, v182);
    (*v279)(v251, v184, v299);
  }

  else
  {

    v283(v251, v256, v299);
  }

  v185 = v262;
  v186 = v262[9];
  sub_20D972DA8();
  v187 = sub_20D972E38();
  v188 = *(v187 + 16);
  if (v188)
  {
    v189 = &v41[v187 + (v188 - 1) * v74];
    v190 = v233;
    v191 = v302;
    (v159)(v233, v189, v302);

    v193 = v231;
    MEMORY[0x20F320DF0](v192);
    (v56)(v190, v191);
    v194 = v299;
    (*v279)(v252, v193, v299);
  }

  else
  {

    v194 = v299;
    v283(v252, v256, v299);
  }

  v195 = v263;
  v196 = v185[10];
  v197 = v257;
  sub_20D972DA8();
  v198 = v197 + v185[5];
  sub_20D971D78();
  v199 = v197 + v185[6];
  sub_20D971D78();
  v200 = v197 + v185[7];
  sub_20D971D78();
  v201 = v197 + v185[8];
  sub_20D971D78();
  v202 = v298;
  sub_20D971D78();
  v203 = v202;
  v204 = v179;
  v205 = v275;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if (result)
  {
    v207 = v194;
    v208 = *(v195 + 32);
    v209 = v238;
    v208(v238, v203, v207);
    v305 = v204;
    v210 = v241;
    v208((v209 + *(v241 + 48)), v205, v299);
    v211 = v240;
    sub_20D7EB7E8(v209, v240, &unk_27C83C750, &unk_20D978DD0);
    v212 = *(v210 + 48);
    v213 = v239;
    v208(v239, v211, v299);
    v214 = v203;
    v215 = *(v263 + 8);
    v215(v211 + v212, v299);
    sub_20D829514(v209, v211);
    v216 = v213 + *(v237 + 36);
    v217 = v211 + *(v210 + 48);
    v302 = v208;
    v208(v216, v217, v299);
    v301 = v215;
    v215(v211, v299);
    v218 = v242;
    (*(v243 + 16))(v242, v197 + v305, v244);
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v213, v218, v214, v197 + v262[13]);
    v219 = v294;
    (*(v254 + 56))(v245, 1, 1, v294);
    v220 = v255;
    (*(v255 + 56))(v246, 1, 1, v280);
    v221 = v247;
    v222 = v299;
    sub_20D971E98();
    v223 = v282;
    sub_20D972E48();
    v224 = v248;
    sub_20D972748();
    v292(v223, v219);
    result = (*(v263 + 48))(v224, 1, v222);
    if (result != 1)
    {

      (*(v234 + 8))(v221, v235);
      v225 = v301;
      (v301)(v252, v222);
      (v225)(v251, v222);
      v226 = v222;
      v227 = *(v261 + 8);
      v228 = v264;
      v227(v259, v264);
      (*(v220 + 8))(v258, v280);
      (v225)(v256, v226);
      (v225)(v304, v226);
      v227(v260, v228);
      (v225)(v253, v226);
      v229 = v262;
      (v302)(v197 + v262[14], v224, v226);
      *(v197 + v229[15]) = v300;
      return sub_20D8D6C58(v197, v236, type metadata accessor for HistoricalUsageSnapshot);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static HistoricalUsageSnapshot.mock_SimpleData_13of14d_ImportExport_Week_Snapshot_StartingOn(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v262 = a1;
  v231 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v216 = &v197 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v214 = &v197 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v213 = &v197 - v10;
  v203 = sub_20D971EA8();
  v202 = *(v203 - 8);
  v11 = *(v202 + 64);
  MEMORY[0x28223BE20](v203);
  v215 = &v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_20D972E88();
  v211 = *(v212 - 8);
  v13 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v210 = &v197 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v15 = *(*(v208 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v208);
  v207 = &v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v204 = &v197 - v18;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v19 = *(*(v205 - 8) + 64);
  MEMORY[0x28223BE20](v205);
  v206 = &v197 - v20;
  v226 = sub_20D972C58();
  v233 = *(v226 - 8);
  v21 = *(v233 + 64);
  v22 = MEMORY[0x28223BE20](v226);
  v200 = &v197 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v199 = &v197 - v24;
  v254 = sub_20D9727B8();
  v257 = *(v254 - 8);
  v25 = *(v257 + 64);
  MEMORY[0x28223BE20](v254);
  v219 = &v197 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_20D972AF8();
  v237 = *(v238 - 8);
  v27 = *(v237 + 64);
  v28 = MEMORY[0x28223BE20](v238);
  v223 = &v197 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v236 = &v197 - v30;
  v31 = sub_20D972838();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v235 = &v197 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = (&v197 - v36);
  v38 = sub_20D9726F8();
  v39 = *(v38 - 8);
  v40 = v39[8];
  MEMORY[0x28223BE20](v38);
  v42 = &v197 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_20D9727D8();
  v230 = *(v263 - 8);
  v43 = *(v230 + 64);
  MEMORY[0x28223BE20](v263);
  v45 = &v197 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_20D972628();
  v239 = *(v232 - 8);
  v46 = *(v239 + 64);
  v47 = MEMORY[0x28223BE20](v232);
  v224 = &v197 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v198 = &v197 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v229 = &v197 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v197 = &v197 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v228 = &v197 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v248 = &v197 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v234 = &v197 - v60;
  MEMORY[0x28223BE20](v59);
  v62 = &v197 - v61;
  v63 = v39[13];
  LODWORD(v256) = *MEMORY[0x277CC9830];
  v245 = v39 + 13;
  v244 = v63;
  v63(v42);
  sub_20D972708();
  v64 = v39[1];
  v220 = v42;
  v253 = v38;
  v246 = v39 + 1;
  v255 = v64;
  v64(v42, v38);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v65 = __swift_project_value_buffer(v31, qword_281126478);
  v209 = v32;
  v66 = *(v32 + 16);
  v260 = v37;
  v249 = v65;
  v66(v37, v65, v31);
  v250 = v32 + 16;
  v251 = v66;
  v258 = v31;
  sub_20D972798();
  v67 = v62;
  sub_20D972718();
  v259 = *(v230 + 8);
  v262 = v230 + 8;
  v259(v45, v263);
  v221 = 0x800000020D9891C0;
  v68 = v239 + 16;
  v69 = *(v239 + 16);
  v70 = v232;
  v69(v234, v67, v232);
  v66(v235, v65, v31);
  (*(v237 + 104))(v236, *MEMORY[0x277D075B8], v238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A328, &qword_20D97B3D0);
  v242 = *(v233 + 72);
  v71 = (*(v233 + 80) + 32) & ~*(v233 + 80);
  v72 = swift_allocObject();
  v227 = v72;
  *(v72 + 16) = xmmword_20D97B360;
  v225 = v71;
  v243 = v72 + v71;
  v247 = v67;
  v222 = v68;
  v201 = v69;
  v69(v248, v67, v70);
  sub_20D972C08();
  v73 = *MEMORY[0x277CC9968];
  v74 = v257;
  v75 = *(v257 + 104);
  v241 = v257 + 104;
  v240 = v75;
  v76 = v219;
  v252 = v73;
  v77 = v254;
  (v75)(v219, v73);
  v78 = v220;
  v79 = v253;
  v244(v220, v256, v253);
  sub_20D972708();
  v255(v78, v79);
  v251(v260, v249, v258);
  sub_20D972798();
  sub_20D9730D8();
  v259(v45, v263);
  v80 = *(v74 + 8);
  v257 = v74 + 8;
  v261 = v80;
  (v80)(v76, v77);
  v81 = v242;
  sub_20D972C08();
  v218 = 2 * v81;
  v82 = v73;
  v83 = v77;
  v240(v76, v82, v77);
  v84 = v244;
  (v244)(v78, v256);
  sub_20D972708();
  v255(v78, v79);
  v85 = v258;
  v251(v260, v249, v258);
  sub_20D972798();
  sub_20D9730D8();
  v259(v45, v263);
  v86 = v83;
  (v261)(v76, v83);
  v87 = v218;
  sub_20D972C08();
  v88 = v242;
  v218 = v87 + v242;
  v89 = v240;
  v240(v76, v252, v86);
  v90 = v253;
  v84(v78, v256, v253);
  sub_20D972708();
  v255(v78, v90);
  v251(v260, v249, v85);
  sub_20D972798();
  sub_20D9730D8();
  v91 = v263;
  v259(v45, v263);
  v92 = v254;
  (v261)(v76, v254);
  sub_20D972C08();
  v218 = 4 * v88;
  v89(v76, v252, v92);
  v93 = v45;
  v94 = v253;
  v244(v78, v256, v253);
  sub_20D972708();
  v255(v78, v94);
  v95 = v249;
  v251(v260, v249, v258);
  sub_20D972798();
  sub_20D9730D8();
  v259(v93, v91);
  v96 = v254;
  (v261)(v76, v254);
  v97 = v218;
  sub_20D972C08();
  v218 = v97 + v242;
  v240(v76, v252, v96);
  v98 = v253;
  v244(v78, v256, v253);
  sub_20D972708();
  v255(v78, v98);
  v99 = v260;
  v251(v260, v95, v258);
  v100 = v99;
  sub_20D972798();
  sub_20D9730D8();
  v101 = v259;
  v259(v93, v263);
  v102 = v254;
  (v261)(v76, v254);
  v103 = v243;
  sub_20D972C08();
  v218 = v103 + 6 * v242;
  v104 = v102;
  v105 = v240;
  v240(v76, v252, v104);
  v106 = v253;
  v244(v78, v256, v253);
  sub_20D972708();
  v255(v78, v106);
  v107 = v100;
  v108 = v249;
  v109 = v251;
  v251(v107, v249, v258);
  sub_20D972798();
  sub_20D9730D8();
  v101(v93, v263);
  v110 = v254;
  (v261)(v76, v254);
  sub_20D972C08();
  v218 = 8 * v242;
  v217 = 7 * v242;
  v105(v76, v252, v110);
  v111 = v256;
  v112 = v253;
  v113 = v244;
  v244(v78, v256, v253);
  sub_20D972708();
  v255(v78, v112);
  v114 = v108;
  v115 = v258;
  v109(v260, v114, v258);
  sub_20D972798();
  sub_20D9730D8();
  v116 = v263;
  v117 = v259;
  v259(v93, v263);
  v118 = v254;
  (v261)(v76, v254);
  sub_20D972C08();
  v240(v76, v252, v118);
  v119 = v253;
  v113(v78, v111, v253);
  sub_20D972708();
  v120 = v255;
  v255(v78, v119);
  v251(v260, v249, v115);
  sub_20D972798();
  sub_20D9730D8();
  v117(v93, v116);
  v121 = v254;
  (v261)(v76, v254);
  v122 = v218;
  sub_20D972C08();
  v218 = v122 + v242;
  v240(v76, v252, v121);
  v123 = v253;
  v244(v78, v256, v253);
  sub_20D972708();
  v120(v78, v123);
  v251(v260, v249, v258);
  sub_20D972798();
  sub_20D9730D8();
  v259(v93, v263);
  v124 = v254;
  (v261)(v76, v254);
  v125 = v243;
  sub_20D972C08();
  v218 = v125 + 10 * v242;
  v126 = v240;
  v240(v76, v252, v124);
  v127 = v253;
  v244(v78, v256, v253);
  sub_20D972708();
  v255(v78, v127);
  v128 = v258;
  v251(v260, v249, v258);
  sub_20D972798();
  sub_20D9730D8();
  v259(v93, v263);
  v129 = v254;
  (v261)(v76, v254);
  sub_20D972C08();
  v218 = v243 + 11 * v242;
  v126(v76, v252, v129);
  v130 = v256;
  v131 = v253;
  v132 = v244;
  v244(v78, v256, v253);
  sub_20D972708();
  v255(v78, v131);
  v251(v260, v249, v128);
  sub_20D972798();
  sub_20D9730D8();
  v259(v93, v263);
  v133 = v254;
  (v261)(v76, v254);
  sub_20D972C08();
  v218 = v243 + 12 * v242;
  v240(v76, v252, v133);
  v134 = v130;
  v135 = v253;
  v132(v78, v134, v253);
  v136 = v93;
  sub_20D972708();
  v137 = v135;
  v138 = v255;
  v255(v78, v135);
  v139 = v251;
  v251(v260, v249, v258);
  sub_20D972798();
  sub_20D9730D8();
  v259(v136, v263);
  v140 = v254;
  (v261)(v76, v254);
  sub_20D972C08();
  v240(v76, v252, v140);
  v244(v78, v256, v137);
  sub_20D972708();
  v138(v78, v137);
  v141 = v260;
  v142 = v258;
  v139(v260, v249, v258);
  sub_20D972798();
  sub_20D9730D8();
  v256 = v136;
  v259(v136, v263);
  (v261)(v76, v140);
  sub_20D972C08();
  v143 = v231;
  *v231 = 0xD000000000000041;
  v143[1] = v221;
  v144 = type metadata accessor for HistoricalUsageSnapshot();
  *(v143 + v144[16]) = 6;
  *(v143 + v144[11]) = 1;
  (*(v237 + 16))(v223, v236, v238);
  v139(v141, v235, v142);
  v261 = v144;
  v145 = v144[12];

  sub_20D972E28();
  v257 = v145;
  v146 = sub_20D972E38();
  if (*(v146 + 16))
  {
    v147 = v233;
    v148 = v199;
    v149 = v226;
    (*(v233 + 16))(v199, v146 + v225, v226);

    v151 = v197;
    MEMORY[0x20F320DF0](v150);
    v152 = v147;
    (*(v147 + 8))(v148, v149);
    v153 = v239;
    v154 = v232;
    (*(v239 + 32))(v228, v151, v232);
    v155 = v229;
  }

  else
  {
    v152 = v233;

    v154 = v232;
    v201(v228, v234, v232);
    v155 = v229;
    v153 = v239;
  }

  v156 = v261[9];
  sub_20D972DA8();
  v157 = sub_20D972E38();
  v158 = *(v157 + 16);
  if (v158)
  {
    v159 = v152;
    v160 = *(v152 + 16);
    v161 = v200;
    v162 = v226;
    v160(v200, v157 + v225 + (v158 - 1) * v242, v226);

    v164 = v198;
    MEMORY[0x20F320DF0](v163);
    (*(v159 + 8))(v161, v162);
    v165 = v153;
    (*(v153 + 32))(v155, v164, v154);
  }

  else
  {
    v165 = v153;

    v201(v155, v234, v154);
  }

  v166 = v261;
  v167 = v261[10];
  sub_20D972DA8();
  v168 = v143 + v166[5];
  sub_20D971D78();
  v169 = v143 + v166[6];
  sub_20D971D78();
  v170 = v143 + v166[7];
  sub_20D971D78();
  v171 = v143 + v166[8];
  sub_20D971D78();
  v172 = v248;
  sub_20D971D78();
  v173 = v224;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if (result)
  {
    v175 = v172;
    v176 = v154;
    v177 = v165;
    v178 = *(v165 + 32);
    v255 = (v165 + 32);
    v179 = v204;
    v178(v204, v175, v176);
    v180 = v208;
    v178((v179 + *(v208 + 48)), v173, v176);
    v181 = v207;
    sub_20D7EB7E8(v179, v207, &unk_27C83C750, &unk_20D978DD0);
    v182 = *(v180 + 48);
    v183 = v206;
    v178(v206, v181, v176);
    v184 = *(v177 + 8);
    v184(v181 + v182, v176);
    sub_20D829514(v179, v181);
    v185 = v183 + *(v205 + 36);
    v186 = v181 + *(v180 + 48);
    v260 = v178;
    v178(v185, v186, v176);
    v187 = v231;
    v254 = v177 + 8;
    v184(v181, v176);
    v188 = v184;
    v189 = v210;
    (*(v211 + 16))(v210, &v187[v257], v212);
    v190 = v248;
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v183, v189, v190, &v187[v261[13]]);
    v191 = v263;
    (*(v230 + 56))(v213, 1, 1, v263);
    v192 = v209;
    (*(v209 + 56))(v214, 1, 1, v258);
    v193 = v215;
    sub_20D971E98();
    v194 = v256;
    sub_20D972E48();
    v195 = v216;
    sub_20D972748();
    v259(v194, v191);
    result = (*(v239 + 48))(v195, 1, v176);
    if (result != 1)
    {

      (*(v202 + 8))(v193, v203);
      v188(v229, v176);
      v188(v228, v176);
      (*(v237 + 8))(v236, v238);
      (*(v192 + 8))(v235, v258);
      v188(v234, v176);
      v188(v247, v176);
      v196 = v261;
      result = (v260)(&v187[v261[14]], v195, v176);
      *&v187[v196[15]] = MEMORY[0x277D84FA0];
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static HistoricalUsageSnapshot.mock_SimpleData_12of24h_ImportExport_Day_Snapshot_StartingOn(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v250 = a1;
  v225 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v211 = &v191 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v209 = &v191 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v208 = &v191 - v10;
  v197 = sub_20D971EA8();
  v196 = *(v197 - 8);
  v11 = *(v196 + 64);
  MEMORY[0x28223BE20](v197);
  v210 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_20D972E88();
  v206 = *(v207 - 8);
  v13 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v205 = &v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v15 = *(*(v203 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v203);
  v202 = &v191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v199 = &v191 - v18;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v19 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v201 = &v191 - v20;
  v221 = sub_20D972C58();
  v227 = *(v221 - 8);
  v21 = *(v227 + 64);
  v22 = MEMORY[0x28223BE20](v221);
  v194 = &v191 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v193 = &v191 - v24;
  v248 = sub_20D9727B8();
  v255 = *(v248 - 8);
  v25 = *(v255 + 8);
  MEMORY[0x28223BE20](v248);
  v215 = &v191 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_20D972AF8();
  v231 = *(v232 - 8);
  v27 = *(v231 + 64);
  v28 = MEMORY[0x28223BE20](v232);
  v218 = &v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v230 = &v191 - v30;
  v31 = sub_20D972838();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v229 = &v191 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v191 - v36;
  v38 = sub_20D9726F8();
  v39 = *(v38 - 8);
  v40 = v39[8];
  MEMORY[0x28223BE20](v38);
  v42 = &v191 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_20D9727D8();
  v43 = *(v251 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v251);
  v46 = &v191 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_20D972628();
  v233 = *(v226 - 8);
  v47 = *(v233 + 64);
  v48 = MEMORY[0x28223BE20](v226);
  v219 = &v191 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v192 = &v191 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v224 = &v191 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v191 = &v191 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v223 = &v191 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v240 = &v191 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v228 = &v191 - v61;
  MEMORY[0x28223BE20](v60);
  v63 = &v191 - v62;
  v64 = v39[13];
  v249 = *MEMORY[0x277CC9830];
  v253 = (v39 + 13);
  v238 = v64;
  v64(v42);
  sub_20D972708();
  v65 = v39[1];
  v214 = v42;
  v252 = v38;
  v254 = (v39 + 1);
  v237 = v65;
  v65(v42, v38);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v31, qword_281126478);
  v204 = v32;
  v67 = *(v32 + 16);
  v243 = v66;
  v67(v37, v66, v31);
  v236 = v67;
  v244 = v32 + 16;
  v256 = v37;
  v257 = v31;
  sub_20D972798();
  v68 = v63;
  sub_20D972718();
  v198 = v43;
  v241 = *(v43 + 8);
  v242 = v43 + 8;
  v241(v46, v251);
  v216 = 0x800000020D989210;
  v69 = v233 + 16;
  v70 = *(v233 + 16);
  v71 = v226;
  v70(v228, v68, v226);
  v67(v229, v66, v31);
  (*(v231 + 104))(v230, *MEMORY[0x277D075B0], v232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A328, &qword_20D97B3D0);
  v250 = *(v227 + 72);
  v72 = (*(v227 + 80) + 32) & ~*(v227 + 80);
  v73 = swift_allocObject();
  v222 = v73;
  *(v73 + 16) = xmmword_20D97B370;
  v220 = v72;
  v247 = v73 + v72;
  v239 = v68;
  v217 = v69;
  v195 = v70;
  v70(v240, v68, v71);
  sub_20D972C08();
  v246 = *MEMORY[0x277CC9980];
  v74 = v255;
  v75 = *(v255 + 13);
  v245 = v255 + 26;
  v76 = v215;
  v75(v215);
  v235 = v75;
  v77 = v214;
  v78 = v252;
  v238(v214, v249, v252);
  sub_20D972708();
  v79 = v237;
  v237(v77, v78);
  v80 = v236;
  v236(v256, v243, v257);
  sub_20D972798();
  sub_20D9730D8();
  v241(v46, v251);
  v81 = *(v74 + 1);
  v255 = v74 + 2;
  v234 = v81;
  v82 = v248;
  v81(v76, v248);
  v83 = v250;
  sub_20D972C08();
  (v75)(v76, v246, v82);
  v84 = v252;
  v85 = v238;
  v238(v77, v249, v252);
  sub_20D972708();
  v79(v77, v84);
  v86 = v243;
  v80(v256, v243, v257);
  sub_20D972798();
  sub_20D9730D8();
  v87 = v251;
  v241(v46, v251);
  v88 = v248;
  v234(v76, v248);
  sub_20D972C08();
  v213 = 2 * v83 + v250;
  (v235)(v76, v246, v88);
  v89 = v249;
  v90 = v252;
  v85(v77, v249, v252);
  sub_20D972708();
  v79(v77, v90);
  v91 = v236;
  v236(v256, v86, v257);
  sub_20D972798();
  sub_20D9730D8();
  v92 = v241;
  v241(v46, v87);
  v93 = v248;
  v234(v76, v248);
  sub_20D972C08();
  v213 = 4 * v250;
  (v235)(v76, v246, v93);
  v94 = v252;
  v238(v77, v89, v252);
  sub_20D972708();
  v237(v77, v94);
  v95 = v257;
  v91(v256, v243, v257);
  sub_20D972798();
  sub_20D9730D8();
  v92(v46, v251);
  v96 = v93;
  v97 = v234;
  v234(v76, v93);
  v98 = v213;
  sub_20D972C08();
  v213 = v98 + v250;
  v99 = v96;
  (v235)(v76, v246, v96);
  v100 = v252;
  v238(v77, v249, v252);
  sub_20D972708();
  v237(v77, v100);
  v236(v256, v243, v95);
  sub_20D972798();
  sub_20D9730D8();
  v101 = v251;
  v102 = v241;
  v241(v46, v251);
  v97(v76, v96);
  v103 = v247;
  sub_20D972C08();
  v213 = v103 + 6 * v250;
  v104 = v99;
  v105 = v235;
  (v235)(v76, v246, v104);
  v106 = v252;
  v238(v77, v249, v252);
  sub_20D972708();
  v237(v77, v106);
  v107 = v243;
  v236(v256, v243, v257);
  sub_20D972798();
  sub_20D9730D8();
  v102(v46, v101);
  v108 = v248;
  v97(v76, v248);
  sub_20D972C08();
  v213 = 8 * v250;
  v212 = 7 * v250;
  v109 = v246;
  (v105)(v76, v246, v108);
  v110 = v252;
  v238(v77, v249, v252);
  sub_20D972708();
  v237(v77, v110);
  v236(v256, v107, v257);
  sub_20D972798();
  sub_20D9730D8();
  v241(v46, v251);
  v111 = v248;
  v234(v76, v248);
  sub_20D972C08();
  v112 = v109;
  v113 = v235;
  (v235)(v76, v112, v111);
  v114 = v252;
  v115 = v238;
  v238(v77, v249, v252);
  sub_20D972708();
  v116 = v237;
  v237(v77, v114);
  v236(v256, v243, v257);
  sub_20D972798();
  sub_20D9730D8();
  v241(v46, v251);
  v117 = v248;
  v118 = v234;
  v234(v76, v248);
  v119 = v213;
  sub_20D972C08();
  v213 = v119 + v250;
  (v113)(v76, v246, v117);
  v120 = v249;
  v121 = v252;
  v115(v77, v249, v252);
  sub_20D972708();
  v116(v77, v121);
  v236(v256, v243, v257);
  sub_20D972798();
  sub_20D9730D8();
  v122 = v251;
  v241(v46, v251);
  v123 = v248;
  v118(v76, v248);
  v124 = v247;
  sub_20D972C08();
  v213 = v124 + 10 * v250;
  (v235)(v76, v246, v123);
  v125 = v252;
  v126 = v238;
  v238(v77, v120, v252);
  sub_20D972708();
  v237(v77, v125);
  v127 = v236;
  v236(v256, v243, v257);
  sub_20D972798();
  sub_20D9730D8();
  v128 = v241;
  v241(v46, v122);
  v129 = v248;
  v234(v76, v248);
  sub_20D972C08();
  v213 = v247 + 11 * v250;
  (v235)(v76, v246, v129);
  v130 = v252;
  v126(v77, v249, v252);
  sub_20D972708();
  v237(v77, v130);
  v127(v256, v243, v257);
  sub_20D972798();
  sub_20D9730D8();
  v128(v46, v251);
  v131 = v248;
  v132 = v234;
  v234(v76, v248);
  sub_20D972C08();
  v247 += 12 * v250;
  v133 = v131;
  (v235)(v76, v246, v131);
  v238(v77, v249, v130);
  sub_20D972708();
  v237(v77, v130);
  v135 = v256;
  v134 = v257;
  v136 = v236;
  v236(v256, v243, v257);
  sub_20D972798();
  sub_20D9730D8();
  v253 = v46;
  v241(v46, v251);
  v132(v76, v133);
  sub_20D972C08();
  v137 = v225;
  *v225 = 0xD000000000000040;
  v137[1] = v216;
  v138 = type metadata accessor for HistoricalUsageSnapshot();
  *(v137 + v138[16]) = 6;
  *(v137 + v138[11]) = 1;
  (*(v231 + 16))(v218, v230, v232);
  v136(v135, v229, v134);
  v255 = v138;
  v139 = v138[12];

  sub_20D972E28();
  v254 = v139;
  v140 = sub_20D972E38();
  if (*(v140 + 16))
  {
    v141 = v227;
    v142 = v193;
    v143 = v221;
    (*(v227 + 16))(v193, v140 + v220, v221);

    v145 = v191;
    MEMORY[0x20F320DF0](v144);
    v146 = v141;
    (*(v141 + 8))(v142, v143);
    v147 = v233;
    v148 = v226;
    (*(v233 + 32))(v223, v145, v226);
    v149 = v224;
  }

  else
  {
    v146 = v227;

    v148 = v226;
    v195(v223, v228, v226);
    v149 = v224;
    v147 = v233;
  }

  v150 = v255[9];
  sub_20D972DA8();
  v151 = sub_20D972E38();
  v152 = *(v151 + 16);
  if (v152)
  {
    v153 = v146;
    v154 = *(v146 + 16);
    v155 = v194;
    v156 = v221;
    v154(v194, v151 + v220 + (v152 - 1) * v250, v221);

    v158 = v192;
    MEMORY[0x20F320DF0](v157);
    (*(v153 + 8))(v155, v156);
    v159 = v147;
    (*(v147 + 32))(v149, v158, v148);
  }

  else
  {
    v159 = v147;

    v195(v149, v228, v148);
  }

  v160 = v255;
  v161 = v255[10];
  sub_20D972DA8();
  v162 = v137 + v160[5];
  sub_20D971D78();
  v163 = v137 + v160[6];
  sub_20D971D78();
  v164 = v137 + v160[7];
  sub_20D971D78();
  v165 = v137 + v160[8];
  sub_20D971D78();
  v166 = v240;
  sub_20D971D78();
  v167 = v219;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if (result)
  {
    v169 = v166;
    v170 = v148;
    v171 = v159;
    v172 = *(v159 + 32);
    v252 = v159 + 32;
    v173 = v199;
    v172(v199, v169, v170);
    v174 = v203;
    v172((v173 + *(v203 + 48)), v167, v170);
    v175 = v202;
    sub_20D7EB7E8(v173, v202, &unk_27C83C750, &unk_20D978DD0);
    v176 = *(v174 + 48);
    v177 = v201;
    v172(v201, v175, v170);
    v178 = *(v171 + 8);
    v178(v175 + v176, v170);
    sub_20D829514(v173, v175);
    v179 = v177 + *(v200 + 36);
    v180 = v175 + *(v174 + 48);
    v256 = v172;
    v172(v179, v180, v170);
    v181 = v225;
    v250 = v171 + 8;
    v178(v175, v170);
    v182 = v178;
    v183 = v205;
    (*(v206 + 16))(v205, &v254[v181], v207);
    v184 = v240;
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v177, v183, v184, v181 + v255[13]);
    v185 = v251;
    (*(v198 + 56))(v208, 1, 1, v251);
    v186 = v204;
    (*(v204 + 56))(v209, 1, 1, v257);
    v187 = v210;
    sub_20D971E98();
    v188 = v253;
    sub_20D972E48();
    v189 = v211;
    sub_20D972748();
    v241(v188, v185);
    result = (*(v233 + 48))(v189, 1, v170);
    if (result != 1)
    {

      (*(v196 + 8))(v187, v197);
      v182(v224, v170);
      v182(v223, v170);
      (*(v231 + 8))(v230, v232);
      (*(v186 + 8))(v229, v257);
      v182(v228, v170);
      v182(v239, v170);
      v190 = v255;
      result = (v256)(v181 + v255[14], v189, v170);
      *(v181 + v190[15]) = MEMORY[0x277D84FA0];
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static HistoricalUsageSnapshot.mock_SmallUsageData_12of24h_Import_Day_Snapshot_StartingOn(_:)@<X0>(void (*a1)(char *)@<X0>, void *a2@<X8>)
{
  v239 = a1;
  v214 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v200 = &v180 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v198 = &v180 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v197 = &v180 - v10;
  v186 = sub_20D971EA8();
  v185 = *(v186 - 8);
  v11 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v199 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_20D972E88();
  v195 = *(v196 - 8);
  v13 = *(v195 + 64);
  MEMORY[0x28223BE20](v196);
  v194 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v15 = *(*(v192 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v192);
  v191 = &v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v188 = &v180 - v18;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v19 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v190 = &v180 - v20;
  v210 = sub_20D972C58();
  v216 = *(v210 - 8);
  v21 = *(v216 + 64);
  v22 = MEMORY[0x28223BE20](v210);
  v183 = &v180 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v182 = &v180 - v24;
  v223 = sub_20D9727B8();
  v235 = *(v223 - 8);
  v25 = *(v235 + 64);
  MEMORY[0x28223BE20](v223);
  v203 = &v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_20D972AF8();
  v220 = *(v221 - 8);
  v27 = *(v220 + 64);
  v28 = MEMORY[0x28223BE20](v221);
  v207 = &v180 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v219 = &v180 - v30;
  v31 = sub_20D972838();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v218 = &v180 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v180 - v36;
  v38 = sub_20D9726F8();
  v39 = *(v38 - 8);
  v40 = v39[8];
  MEMORY[0x28223BE20](v38);
  v42 = &v180 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_20D9727D8();
  v43 = *(v244 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v244);
  v46 = &v180 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_20D972628();
  v222 = *(v215 - 8);
  v47 = *(v222 + 64);
  v48 = MEMORY[0x28223BE20](v215);
  v208 = &v180 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v181 = &v180 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v213 = &v180 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v180 = &v180 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v212 = &v180 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v230 = &v180 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v217 = &v180 - v61;
  MEMORY[0x28223BE20](v60);
  v63 = &v180 - v62;
  v64 = v39[13];
  LODWORD(v243) = *MEMORY[0x277CC9830];
  v233 = v39 + 13;
  v242 = v64;
  (v64)(v42);
  sub_20D972708();
  v65 = v39[1];
  v204 = v42;
  v240 = v38;
  v241 = v65;
  v234 = v39 + 1;
  v65(v42, v38);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v31, qword_281126478);
  v193 = v32;
  v67 = v32 + 16;
  v68 = *(v32 + 16);
  v69 = v66;
  v238 = v66;
  v68(v37);
  v227 = v68;
  v228 = v67;
  v245 = v37;
  v246 = v31;
  v70 = v31;
  sub_20D972798();
  v71 = v63;
  sub_20D972718();
  v187 = v43;
  v72 = *(v43 + 8);
  v237 = v43 + 8;
  v225 = v72;
  v72(v46, v244);
  v205 = 0x800000020D989260;
  v73 = v222 + 16;
  v74 = *(v222 + 16);
  v75 = v215;
  v74(v217, v71, v215);
  (v68)(v218, v69, v70);
  (*(v220 + 104))(v219, *MEMORY[0x277D075B0], v221);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A328, &qword_20D97B3D0);
  v236 = *(v216 + 72);
  v76 = (*(v216 + 80) + 32) & ~*(v216 + 80);
  v77 = swift_allocObject();
  v211 = v77;
  *(v77 + 16) = xmmword_20D97B380;
  v209 = v76;
  v231 = v77 + v76;
  v224 = v71;
  v206 = v73;
  v184 = v74;
  v74(v230, v71, v75);
  sub_20D972C08();
  v229 = *MEMORY[0x277CC9980];
  v78 = v235;
  v239 = *(v235 + 104);
  v232 = v235 + 104;
  v79 = v203;
  v80 = v223;
  v239(v203);
  v81 = v204;
  v82 = v240;
  (v242)(v204, v243, v240);
  sub_20D972708();
  v241(v81, v82);
  v83 = v227;
  (v227)(v245, v238, v246);
  sub_20D972798();
  sub_20D9730D8();
  v84 = v244;
  v225(v46, v244);
  v226 = *(v78 + 8);
  v235 = v78 + 8;
  v85 = v80;
  v226(v79, v80);
  v86 = v236;
  sub_20D972C08();
  v87 = 2 * v86;
  v88 = v229;
  (v239)(v79, v229, v85);
  v89 = v240;
  (v242)(v81, v243, v240);
  sub_20D972708();
  v241(v81, v89);
  v90 = v246;
  (v83)(v245, v238, v246);
  sub_20D972798();
  sub_20D9730D8();
  v225(v46, v84);
  v91 = v223;
  v226(v79, v223);
  sub_20D972C08();
  v202 = v87 + v236;
  (v239)(v79, v88, v91);
  v92 = v243;
  v93 = v240;
  (v242)(v81, v243, v240);
  sub_20D972708();
  v241(v81, v93);
  v94 = v238;
  (v227)(v245, v238, v90);
  sub_20D972798();
  sub_20D9730D8();
  v95 = v46;
  v96 = v225;
  v225(v46, v244);
  v97 = v223;
  v226(v79, v223);
  sub_20D972C08();
  v202 = 4 * v236;
  (v239)(v79, v229, v97);
  v98 = v240;
  (v242)(v81, v92, v240);
  sub_20D972708();
  v241(v81, v98);
  v99 = v227;
  (v227)(v245, v94, v246);
  sub_20D972798();
  sub_20D9730D8();
  v96(v95, v244);
  v100 = v223;
  v226(v79, v223);
  v101 = v202;
  sub_20D972C08();
  v202 = v101 + v236;
  (v239)(v79, v229, v100);
  v102 = v240;
  (v242)(v81, v243, v240);
  sub_20D972708();
  v241(v81, v102);
  (v99)(v245, v238, v246);
  sub_20D972798();
  sub_20D9730D8();
  v103 = v225;
  v225(v95, v244);
  v104 = v226;
  v226(v79, v100);
  v105 = v231;
  sub_20D972C08();
  v202 = v105 + 6 * v236;
  (v239)(v79, v229, v100);
  v106 = v240;
  (v242)(v81, v243, v240);
  sub_20D972708();
  v241(v81, v106);
  (v227)(v245, v238, v246);
  sub_20D972798();
  sub_20D9730D8();
  v103(v95, v244);
  v104(v79, v100);
  sub_20D972C08();
  v202 = 8 * v236;
  v201 = 7 * v236;
  v107 = v229;
  (v239)(v79, v229, v100);
  v108 = v240;
  (v242)(v81, v243, v240);
  sub_20D972708();
  v241(v81, v108);
  v109 = v227;
  (v227)(v245, v238, v246);
  sub_20D972798();
  sub_20D9730D8();
  v110 = v244;
  v103(v95, v244);
  v111 = v223;
  v226(v79, v223);
  sub_20D972C08();
  (v239)(v79, v107, v111);
  v112 = v240;
  (v242)(v81, v243, v240);
  sub_20D972708();
  v113 = v241;
  v241(v81, v112);
  (v109)(v245, v238, v246);
  sub_20D972798();
  sub_20D9730D8();
  v114 = v225;
  v225(v95, v110);
  v115 = v223;
  v226(v79, v223);
  v116 = v202;
  sub_20D972C08();
  v202 = v116 + v236;
  (v239)(v79, v229, v115);
  v117 = v240;
  (v242)(v81, v243, v240);
  sub_20D972708();
  v113(v81, v117);
  (v227)(v245, v238, v246);
  sub_20D972798();
  sub_20D9730D8();
  v114(v95, v244);
  v118 = v226;
  v226(v79, v115);
  v119 = v231;
  sub_20D972C08();
  v202 = v119 + 10 * v236;
  (v239)(v79, v229, v115);
  v120 = v240;
  v121 = v242;
  (v242)(v81, v243, v240);
  sub_20D972708();
  v241(v81, v120);
  (v227)(v245, v238, v246);
  sub_20D972798();
  sub_20D9730D8();
  v225(v95, v244);
  v122 = v223;
  v118(v79, v223);
  sub_20D972C08();
  v231 += 11 * v236;
  (v239)(v79, v229, v122);
  v121(v81, v243, v120);
  sub_20D972708();
  v241(v81, v120);
  v124 = v245;
  v123 = v246;
  v125 = v227;
  (v227)(v245, v238, v246);
  sub_20D972798();
  sub_20D9730D8();
  v241 = v95;
  v225(v95, v244);
  v226(v79, v122);
  sub_20D972C08();
  v126 = v214;
  *v214 = 0xD00000000000003ELL;
  v126[1] = v205;
  v127 = type metadata accessor for HistoricalUsageSnapshot();
  *(v126 + v127[16]) = 6;
  *(v126 + v127[11]) = 0;
  (*(v220 + 16))(v207, v219, v221);
  (v125)(v124, v218, v123);
  v243 = v127;
  v128 = v127[12];

  sub_20D972E28();
  v242 = v128;
  v129 = sub_20D972E38();
  if (*(v129 + 16))
  {
    v130 = v216;
    v131 = v182;
    v132 = v210;
    (*(v216 + 16))(v182, v129 + v209, v210);

    v134 = v180;
    MEMORY[0x20F320DF0](v133);
    v135 = v130;
    (*(v130 + 8))(v131, v132);
    v136 = v222;
    v137 = v215;
    (*(v222 + 32))(v212, v134, v215);
    v138 = v213;
  }

  else
  {
    v135 = v216;

    v137 = v215;
    v184(v212, v217, v215);
    v138 = v213;
    v136 = v222;
  }

  v139 = v243[9];
  sub_20D972DA8();
  v140 = sub_20D972E38();
  v141 = *(v140 + 16);
  if (v141)
  {
    v142 = v135;
    v143 = *(v135 + 16);
    v144 = v183;
    v145 = v210;
    v143(v183, v140 + v209 + (v141 - 1) * v236, v210);

    v147 = v181;
    MEMORY[0x20F320DF0](v146);
    (*(v142 + 8))(v144, v145);
    v148 = v136;
    (*(v136 + 32))(v138, v147, v137);
  }

  else
  {
    v148 = v136;

    v184(v138, v217, v137);
  }

  v149 = v243;
  v150 = v243[10];
  sub_20D972DA8();
  v151 = v126 + v149[5];
  sub_20D971D78();
  v152 = v126 + v149[6];
  sub_20D971D78();
  v153 = v126 + v149[7];
  sub_20D971D78();
  v154 = v126 + v149[8];
  sub_20D971D78();
  v155 = v230;
  sub_20D971D78();
  v156 = v208;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if (result)
  {
    v158 = v155;
    v159 = v137;
    v160 = v148;
    v161 = *(v148 + 32);
    v240 = v148 + 32;
    v162 = v188;
    v161(v188, v158, v159);
    v163 = v192;
    v161((v162 + *(v192 + 48)), v156, v159);
    v164 = v191;
    sub_20D7EB7E8(v162, v191, &unk_27C83C750, &unk_20D978DD0);
    v165 = *(v163 + 48);
    v166 = v190;
    v161(v190, v164, v159);
    v167 = *(v160 + 8);
    v167(v164 + v165, v159);
    sub_20D829514(v162, v164);
    v168 = v166 + *(v189 + 36);
    v169 = v164 + *(v163 + 48);
    v245 = v161;
    v161(v168, v169, v159);
    v170 = v214;
    v239 = (v160 + 8);
    v167(v164, v159);
    v171 = v167;
    v172 = v194;
    (*(v195 + 16))(v194, &v242[v170], v196);
    v173 = v230;
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v166, v172, v173, v170 + v243[13]);
    v174 = v244;
    (*(v187 + 56))(v197, 1, 1, v244);
    v175 = v193;
    (*(v193 + 56))(v198, 1, 1, v246);
    v176 = v199;
    sub_20D971E98();
    v177 = v241;
    sub_20D972E48();
    v178 = v200;
    sub_20D972748();
    v225(v177, v174);
    result = (*(v222 + 48))(v178, 1, v159);
    if (result != 1)
    {

      (*(v185 + 8))(v176, v186);
      v171(v213, v159);
      v171(v212, v159);
      (*(v220 + 8))(v219, v221);
      (*(v175 + 8))(v218, v246);
      v171(v217, v159);
      v171(v224, v159);
      v179 = v243;
      result = (v245)(v170 + v243[14], v178, v159);
      *(v170 + v179[15]) = MEMORY[0x277D84FA0];
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static HistoricalUsageSnapshot.mock_PendingData_8of14d_ImportExport_Week_Snapshot_StartingOn(_:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X8>)
{
  v231 = a1;
  v200 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v186 = &v166 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v184 = &v166 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v183 = &v166 - v10;
  v173 = sub_20D971EA8();
  v172 = *(v173 - 8);
  v11 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v185 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_20D972E88();
  v181 = *(v182 - 8);
  v13 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v180 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v15 = *(*(v178 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v178);
  v177 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v174 = &v166 - v18;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v19 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v176 = &v166 - v20;
  v195 = sub_20D972C58();
  v202 = *(v195 - 8);
  v21 = *(v202 + 64);
  v22 = MEMORY[0x28223BE20](v195);
  v169 = &v166 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v168 = &v166 - v24;
  v232 = sub_20D9727B8();
  v228 = *(v232 - 1);
  v25 = *(v228 + 64);
  MEMORY[0x28223BE20](v232);
  v190 = &v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_20D972AF8();
  v206 = *(v207 - 8);
  v27 = *(v206 + 64);
  v28 = MEMORY[0x28223BE20](v207);
  v192 = &v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v205 = &v166 - v30;
  v31 = sub_20D972838();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v204 = &v166 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v166 - v36;
  v38 = sub_20D9726F8();
  v39 = *(v38 - 8);
  v40 = v39[8];
  MEMORY[0x28223BE20](v38);
  v42 = &v166 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_20D9727D8();
  v199 = *(v230 - 8);
  v43 = *(v199 + 64);
  MEMORY[0x28223BE20](v230);
  v45 = &v166 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_20D972628();
  v208 = *(v201 - 8);
  v46 = *(v208 + 64);
  v47 = MEMORY[0x28223BE20](v201);
  v193 = &v166 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v167 = &v166 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v198 = &v166 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v166 = &v166 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v197 = &v166 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v59 = &v166 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v203 = &v166 - v61;
  MEMORY[0x28223BE20](v60);
  v63 = &v166 - v62;
  v64 = v39[13];
  LODWORD(v223) = *MEMORY[0x277CC9830];
  v221 = v64;
  v222 = v39 + 13;
  v64(v42);
  sub_20D972708();
  v65 = v39[1];
  v188 = v42;
  v214 = v38;
  v215 = v39 + 1;
  v220 = v65;
  v65(v42, v38);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v31, qword_281126478);
  v179 = v32;
  v67 = *(v32 + 16);
  v213 = v66;
  v67(v37, v66, v31);
  v212 = v67;
  v226 = v37;
  v227 = (v32 + 16);
  v68 = v31;
  v229 = v31;
  sub_20D972798();
  sub_20D972718();
  v231 = *(v199 + 8);
  v217 = v199 + 8;
  v231(v45, v230);
  v191 = 0x800000020D9892A0;
  v70 = v208 + 16;
  v69 = *(v208 + 16);
  v71 = v63;
  v72 = v63;
  v73 = v201;
  v69(v203, v71, v201);
  v67(v204, v66, v68);
  (*(v206 + 104))(v205, *MEMORY[0x277D075B8], v207);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A328, &qword_20D97B3D0);
  v224 = *(v202 + 72);
  v74 = (*(v202 + 80) + 32) & ~*(v202 + 80);
  v189 = 8 * v224;
  v75 = swift_allocObject();
  v196 = v75;
  *(v75 + 16) = xmmword_20D97B390;
  v194 = v74;
  v219 = v75 + v74;
  v216 = v72;
  v171 = v70;
  v170 = v69;
  v69(v59, v72, v73);
  sub_20D972C08();
  v209 = *MEMORY[0x277CC9968];
  v76 = v228;
  v218 = *(v228 + 104);
  v210 = v228 + 104;
  v77 = v190;
  v218(v190);
  v78 = v188;
  v79 = v214;
  v221(v188, v223, v214);
  sub_20D972708();
  v220(v78, v79);
  v80 = v59;
  v81 = v213;
  v212(v226, v213, v229);
  sub_20D972798();
  v225 = v80;
  sub_20D9730D8();
  v231(v45, v230);
  v211 = *(v76 + 8);
  v228 = v76 + 8;
  v82 = v232;
  v211(v77, v232);
  v83 = v45;
  v84 = v224;
  sub_20D972C08();
  v187 = 2 * v84;
  v85 = v209;
  (v218)(v77, v209, v82);
  v221(v78, v223, v79);
  sub_20D972708();
  v220(v78, v79);
  v86 = v229;
  v87 = v212;
  v212(v226, v81, v229);
  sub_20D972798();
  sub_20D9730D8();
  v231(v83, v230);
  v88 = v232;
  v211(v77, v232);
  v89 = v187;
  sub_20D972C08();
  v187 = v89 + v224;
  (v218)(v77, v85, v88);
  v90 = v223;
  v91 = v214;
  v221(v78, v223, v214);
  sub_20D972708();
  v220(v78, v91);
  v87(v226, v213, v86);
  sub_20D972798();
  sub_20D9730D8();
  v92 = v230;
  v231(v83, v230);
  v93 = v232;
  v211(v77, v232);
  sub_20D972C08();
  v187 = 4 * v224;
  (v218)(v77, v209, v93);
  v94 = v90;
  v95 = v214;
  v96 = v221;
  v221(v78, v94, v214);
  sub_20D972708();
  v97 = v220;
  v220(v78, v95);
  v212(v226, v213, v229);
  sub_20D972798();
  sub_20D9730D8();
  v231(v83, v92);
  v98 = v232;
  v211(v77, v232);
  v99 = v187;
  sub_20D972C08();
  v187 = v99 + v224;
  v100 = v209;
  (v218)(v77, v209, v98);
  v101 = v214;
  v96(v78, v223, v214);
  sub_20D972708();
  v97(v78, v101);
  v212(v226, v213, v229);
  sub_20D972798();
  sub_20D9730D8();
  v231(v83, v230);
  v102 = v232;
  v103 = v211;
  v211(v77, v232);
  v104 = v219;
  sub_20D972C08();
  v187 = v104 + 6 * v224;
  (v218)(v77, v100, v102);
  v105 = v214;
  v221(v78, v223, v214);
  sub_20D972708();
  v220(v78, v105);
  v106 = v213;
  v107 = v212;
  v212(v226, v213, v229);
  sub_20D972798();
  sub_20D9730D8();
  v231(v83, v230);
  v108 = v232;
  v103(v77, v232);
  sub_20D972C08();
  v189 -= v224;
  (v218)(v77, v209, v108);
  v221(v78, v223, v105);
  sub_20D972708();
  v220(v78, v105);
  v109 = v83;
  v110 = v226;
  v111 = v229;
  v107(v226, v106, v229);
  sub_20D972798();
  sub_20D9730D8();
  v223 = v109;
  v231(v109, v230);
  v211(v77, v232);
  sub_20D972C08();
  v112 = v200;
  *v200 = 0xD000000000000041;
  v112[1] = v191;
  v113 = type metadata accessor for HistoricalUsageSnapshot();
  *(v112 + v113[16]) = 6;
  *(v112 + v113[11]) = 1;
  (*(v206 + 16))(v192, v205, v207);
  v107(v110, v204, v111);
  v232 = v113;
  v114 = v113[12];

  sub_20D972E28();
  v228 = v114;
  v115 = sub_20D972E38();
  if (*(v115 + 16))
  {
    v116 = v202;
    v117 = v168;
    v118 = v195;
    (*(v202 + 16))(v168, v115 + v194, v195);

    v120 = v166;
    MEMORY[0x20F320DF0](v119);
    v121 = v116;
    (*(v116 + 8))(v117, v118);
    v122 = v208;
    v123 = v201;
    (*(v208 + 32))(v197, v120, v201);
    v124 = v198;
    v125 = v203;
  }

  else
  {
    v121 = v202;

    v125 = v203;
    v123 = v201;
    v170(v197, v203, v201);
    v124 = v198;
    v122 = v208;
  }

  v126 = v232[9];
  sub_20D972DA8();
  v127 = sub_20D972E38();
  v128 = *(v127 + 16);
  if (v128)
  {
    v129 = v169;
    v130 = v195;
    (*(v121 + 16))(v169, v127 + v194 + (v128 - 1) * v224, v195);

    v132 = v167;
    MEMORY[0x20F320DF0](v131);
    (*(v121 + 8))(v129, v130);
    (*(v122 + 32))(v124, v132, v123);
  }

  else
  {

    v170(v124, v125, v123);
  }

  v133 = v232;
  v134 = v232[10];
  sub_20D972DA8();
  v135 = v112 + v133[5];
  sub_20D971D78();
  v136 = v112 + v133[6];
  sub_20D971D78();
  v137 = v112 + v133[7];
  sub_20D971D78();
  v138 = v112 + v133[8];
  sub_20D971D78();
  v139 = v225;
  sub_20D971D78();
  v140 = v193;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if (result)
  {
    v142 = v122;
    v143 = v122 + 32;
    v144 = *(v122 + 32);
    v145 = v174;
    v144(v174, v139, v123);
    v146 = v178;
    v144((v145 + *(v178 + 48)), v140, v123);
    v147 = v177;
    sub_20D7EB7E8(v145, v177, &unk_27C83C750, &unk_20D978DD0);
    v148 = *(v146 + 48);
    v149 = v176;
    v144(v176, v147, v123);
    v150 = v123;
    v151 = v142;
    v152 = v150;
    v153 = *(v151 + 8);
    v153(v147 + v148, v150);
    sub_20D829514(v145, v147);
    v154 = v149 + *(v175 + 36);
    v155 = v147 + *(v146 + 48);
    v227 = v144;
    v224 = v143;
    v144(v154, v155, v152);
    v226 = v153;
    v153(v147, v152);
    v156 = v200;
    v157 = v180;
    (*(v181 + 16))(v180, v200 + v228, v182);
    v158 = v225;
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v149, v157, v158, &v156[v232[13]]);
    v159 = v230;
    (*(v199 + 56))(v183, 1, 1, v230);
    v160 = v179;
    (*(v179 + 56))(v184, 1, 1, v229);
    v161 = v185;
    sub_20D971E98();
    v162 = v223;
    sub_20D972E48();
    v163 = v186;
    sub_20D972748();
    v231(v162, v159);
    result = (*(v208 + 48))(v163, 1, v152);
    if (result != 1)
    {

      (*(v172 + 8))(v161, v173);
      v164 = v226;
      v226(v198, v152);
      v164(v197, v152);
      (*(v206 + 8))(v205, v207);
      (*(v160 + 8))(v204, v229);
      v164(v203, v152);
      v164(v216, v152);
      v165 = v232;
      result = v227(&v156[v232[14]], v163, v152);
      *&v156[v165[15]] = MEMORY[0x277D84FA0];
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static HistoricalUsageSnapshot.mock_SparseData_9of14d_ImportExport_Week_Snapshot_StartingOn(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v233 = a1;
  v200 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v187 = &v167 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v185 = &v167 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v184 = &v167 - v10;
  v173 = sub_20D971EA8();
  v172 = *(v173 - 8);
  v11 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v186 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_20D972E88();
  v182 = *(v183 - 8);
  v13 = *(v182 + 64);
  MEMORY[0x28223BE20](v183);
  v181 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v15 = *(*(v179 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v179);
  v178 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v175 = &v167 - v18;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v19 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v177 = &v167 - v20;
  v195 = sub_20D972C58();
  v202 = *(v195 - 8);
  v21 = *(v202 + 64);
  v22 = MEMORY[0x28223BE20](v195);
  v170 = &v167 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v169 = &v167 - v24;
  v217 = sub_20D9727B8();
  v231 = *(v217 - 8);
  v25 = *(v231 + 8);
  MEMORY[0x28223BE20](v217);
  v190 = &v167 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_20D972AF8();
  v206 = *(v207 - 8);
  v27 = *(v206 + 64);
  v28 = MEMORY[0x28223BE20](v207);
  v193 = &v167 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v205 = &v167 - v30;
  v31 = sub_20D972838();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v204 = &v167 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v167 - v36;
  v38 = sub_20D9726F8();
  v39 = *(v38 - 8);
  v40 = v39[8];
  MEMORY[0x28223BE20](v38);
  v42 = &v167 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20D9727D8();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v167 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_20D972628();
  v209 = *(v208 - 8);
  v48 = *(v209 + 64);
  v49 = MEMORY[0x28223BE20](v208);
  v194 = &v167 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v168 = &v167 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v199 = &v167 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v167 = &v167 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v198 = &v167 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v227 = &v167 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v203 = &v167 - v62;
  MEMORY[0x28223BE20](v61);
  v64 = &v167 - v63;
  v65 = v39[13];
  LODWORD(v229) = *MEMORY[0x277CC9830];
  v224 = v65;
  v225 = v39 + 13;
  v65(v42);
  sub_20D972708();
  v66 = v39[1];
  v189 = v42;
  v214 = v38;
  v226 = (v39 + 1);
  v216 = v66;
  v66(v42, v38);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v67 = __swift_project_value_buffer(v31, qword_281126478);
  v180 = v32;
  v68 = *(v32 + 16);
  v223 = v67;
  v215 = v32 + 16;
  v230 = v68;
  (v68)(v37);
  sub_20D972798();
  sub_20D972718();
  v174 = v44;
  v69 = *(v44 + 8);
  v232 = v44 + 8;
  v220 = v69;
  v69(v47, v43);
  v191 = 0x800000020D9892F0;
  v221 = v43;
  v70 = v64;
  v228 = v37;
  if (qword_27C8385E8 != -1)
  {
    swift_once();
  }

  v71 = v208;
  v72 = __swift_project_value_buffer(v208, qword_27C83A190);
  v74 = v209 + 16;
  v73 = *(v209 + 16);
  v73(v203, v72, v71);
  (v230)(v204, v223, v31);
  (*(v206 + 104))(v205, *MEMORY[0x277D075B8], v207);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A328, &qword_20D97B3D0);
  v218 = *(v202 + 72);
  v75 = (*(v202 + 80) + 32) & ~*(v202 + 80);
  v201 = 8 * v218;
  v76 = swift_allocObject();
  v197 = v76;
  *(v76 + 16) = xmmword_20D97B3A0;
  v196 = v75;
  v211 = v76 + v75;
  v192 = v74;
  v171 = v73;
  v73(v227, v70, v71);
  sub_20D972C08();
  v213 = *MEMORY[0x277CC9968];
  v233 = v31;
  v77 = v231;
  v212 = *(v231 + 13);
  v222 = v231 + 26;
  v78 = v190;
  v219 = v70;
  v212(v190);
  v79 = v189;
  v80 = v214;
  v224(v189, v229, v214);
  sub_20D972708();
  v216(v79, v80);
  (v230)(v228, v223, v233);
  sub_20D972798();
  sub_20D9730D8();
  v81 = v221;
  v220(v47, v221);
  v210 = *(v77 + 1);
  v231 = v77 + 2;
  v82 = v217;
  v210(v78, v217);
  v83 = v218;
  sub_20D972C08();
  v188 = 2 * v83;
  (v212)(v78, v213, v82);
  v224(v79, v229, v80);
  sub_20D972708();
  v216(v79, v80);
  v84 = v223;
  (v230)(v228, v223, v233);
  sub_20D972798();
  sub_20D9730D8();
  v220(v47, v81);
  v85 = v79;
  v86 = v210;
  v210(v78, v82);
  v87 = v188;
  sub_20D972C08();
  v188 = v87 + v218;
  v88 = v82;
  (v212)(v78, v213, v82);
  v89 = v214;
  v224(v85, v229, v214);
  sub_20D972708();
  v216(v85, v89);
  (v230)(v228, v84, v233);
  sub_20D972798();
  sub_20D9730D8();
  v90 = v221;
  v220(v47, v221);
  v86(v78, v82);
  sub_20D972C08();
  v188 = 4 * v218;
  v91 = v213;
  v92 = v212;
  (v212)(v78, v213, v88);
  v93 = v214;
  v224(v85, v229, v214);
  sub_20D972708();
  v216(v85, v93);
  (v230)(v228, v223, v233);
  sub_20D972798();
  sub_20D9730D8();
  v94 = v220;
  v220(v47, v90);
  v95 = v217;
  v210(v78, v217);
  v96 = v188;
  sub_20D972C08();
  v188 = v96 + v218;
  v97 = v91;
  v98 = v47;
  v92(v78, v97, v95);
  v99 = v214;
  v224(v85, v229, v214);
  sub_20D972708();
  v100 = v216;
  v216(v85, v99);
  v101 = v223;
  (v230)(v228, v223, v233);
  sub_20D972798();
  sub_20D9730D8();
  v94(v98, v221);
  v102 = v210;
  v210(v78, v95);
  v103 = v211;
  sub_20D972C08();
  v188 = v103 + 6 * v218;
  (v212)(v78, v213, v95);
  v104 = v214;
  v105 = v224;
  v224(v85, v229, v214);
  sub_20D972708();
  v100(v85, v104);
  v106 = v101;
  v107 = v230;
  (v230)(v228, v106, v233);
  sub_20D972798();
  sub_20D9730D8();
  v108 = v220;
  v220(v98, v221);
  v109 = v217;
  v102(v78, v217);
  sub_20D972C08();
  v188 = v201 - v218;
  (v212)(v78, v213, v109);
  v110 = v214;
  v105(v85, v229, v214);
  sub_20D972708();
  v111 = v216;
  v216(v85, v110);
  v107(v228, v223, v233);
  sub_20D972798();
  sub_20D9730D8();
  v108(v98, v221);
  v112 = v217;
  v210(v78, v217);
  sub_20D972C08();
  (v212)(v78, v213, v112);
  v224(v85, v229, v110);
  sub_20D972708();
  v111(v85, v110);
  v113 = v228;
  v114 = v230;
  (v230)(v228, v223, v233);
  sub_20D972798();
  sub_20D9730D8();
  v229 = v98;
  v220(v98, v221);
  v210(v78, v217);
  sub_20D972C08();
  v115 = v200;
  *v200 = 0xD000000000000040;
  v115[1] = v191;
  v116 = type metadata accessor for HistoricalUsageSnapshot();
  *(v115 + v116[16]) = 6;
  *(v115 + v116[11]) = 1;
  (*(v206 + 16))(v193, v205, v207);
  v114(v113, v204, v233);
  v231 = v116;
  v117 = v116[12];

  sub_20D972E28();
  v118 = sub_20D972E38();
  if (*(v118 + 16))
  {
    v119 = v202;
    v120 = v169;
    v121 = v195;
    (*(v202 + 16))(v169, v118 + v196, v195);

    v123 = v167;
    MEMORY[0x20F320DF0](v122);
    (*(v119 + 8))(v120, v121);
    v124 = v208;
    (*(v209 + 32))(v198, v123, v208);
    v125 = v199;
    v126 = v203;
  }

  else
  {

    v126 = v203;
    v124 = v208;
    v171(v198, v203, v208);
    v125 = v199;
    v121 = v195;
  }

  v127 = v231[9];
  sub_20D972DA8();
  v128 = sub_20D972E38();
  v129 = *(v128 + 16);
  if (v129)
  {
    v130 = v202;
    v131 = v170;
    (*(v202 + 16))(v170, v128 + v196 + (v129 - 1) * v218, v121);

    v133 = v168;
    MEMORY[0x20F320DF0](v132);
    (*(v130 + 8))(v131, v121);
    (*(v209 + 32))(v125, v133, v124);
  }

  else
  {

    v171(v125, v126, v124);
  }

  v134 = v231;
  v135 = v231[10];
  sub_20D972DA8();
  v136 = v115 + v134[5];
  sub_20D971D78();
  v137 = v115 + v134[6];
  sub_20D971D78();
  v138 = v115 + v134[7];
  sub_20D971D78();
  v139 = v115 + v134[8];
  sub_20D971D78();
  v140 = v227;
  sub_20D971D78();
  v141 = v194;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if (result)
  {
    v230 = v117;
    v143 = v209;
    v144 = (v209 + 32);
    v145 = *(v209 + 32);
    v146 = v175;
    v145(v175, v140, v124);
    v147 = v124;
    v148 = v179;
    v149 = v147;
    (v145)(v146 + *(v179 + 48), v141);
    v150 = v178;
    sub_20D7EB7E8(v146, v178, &unk_27C83C750, &unk_20D978DD0);
    v151 = *(v148 + 48);
    v152 = v177;
    v145(v177, v150, v149);
    v153 = *(v143 + 8);
    v153(v150 + v151, v149);
    sub_20D829514(v146, v150);
    v154 = v152 + *(v176 + 36);
    v155 = v150 + *(v148 + 48);
    v228 = v144;
    v226 = v145;
    v145(v154, v155, v149);
    v156 = v153;
    v157 = v200;
    v153(v150, v149);
    v158 = v181;
    (*(v182 + 16))(v181, &v230[v157], v183);
    v159 = v227;
    sub_20D9725C8();
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v152, v158, v159, &v157[v231[13]]);
    v160 = v221;
    (*(v174 + 56))(v184, 1, 1, v221);
    v161 = v180;
    (*(v180 + 56))(v185, 1, 1, v233);
    v162 = v186;
    sub_20D971E98();
    v163 = v229;
    sub_20D972E48();
    v164 = v187;
    sub_20D972748();
    v165 = v208;
    v220(v163, v160);
    result = (*(v209 + 48))(v164, 1, v165);
    if (result != 1)
    {

      (*(v172 + 8))(v162, v173);
      v156(v199, v165);
      v156(v198, v165);
      (*(v206 + 8))(v205, v207);
      (*(v161 + 8))(v204, v233);
      v156(v203, v165);
      v156(v219, v165);
      v166 = v231;
      result = v226(&v157[v231[14]], v164, v165);
      *&v157[v166[15]] = MEMORY[0x277D84FA0];
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}
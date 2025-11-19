uint64_t sub_24FEA0D48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a1;
  v42 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6918, &qword_24FEE60D8);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6848, &qword_24FEE6000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6920, &unk_24FEE60E0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = *(sub_24FEDD284() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24FEDD4E4();
  (*(*(v23 - 8) + 104))(&v12[v21], v22, v23);
  __asm { FMOV            V0.2D, #16.0 }

  *v12 = _Q0;
  sub_24FEDDC24();
  v29 = sub_24FEDDC64();

  *&v12[*(v9 + 36)] = v29;
  sub_24FEA4B60();
  v39 = v20;
  sub_24FEDDA54();
  sub_24FE58B7C(v12, &qword_27F3A6848, &qword_24FEE6000);
  *v8 = sub_24FEDD434();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6930, &qword_24FEE60F0);
  sub_24FEA10E8(v40, &v8[*(v30 + 44)]);
  v31 = sub_24FEDD744();
  v32 = &v8[*(v3 + 44)];
  *v32 = v31;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  v33 = v14[2];
  v33(v17, v20, v13);
  v34 = v41;
  sub_24FE58B14(v8, v41, &qword_27F3A6918, &qword_24FEE60D8);
  v35 = v42;
  v33(v42, v17, v13);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6938, &unk_24FEE60F8);
  sub_24FE58B14(v34, &v35[*(v36 + 48)], &qword_27F3A6918, &qword_24FEE60D8);
  sub_24FE58B7C(v8, &qword_27F3A6918, &qword_24FEE60D8);
  v37 = v14[1];
  v37(v39, v13);
  sub_24FE58B7C(v34, &qword_27F3A6918, &qword_24FEE60D8);
  return (v37)(v17, v13);
}

void sub_24FEA10E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v130 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F60, &unk_24FEE45B0);
  v3 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v127 = &v110 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F68, &qword_24FEE5350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v116 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v132 = &v110 - v9;
  MEMORY[0x28223BE20](v10);
  v133 = &v110 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v120 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v136 = &v110 - v16;
  v125 = type metadata accessor for ShareButton();
  v17 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v129 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v110 - v20);
  MEMORY[0x28223BE20](v22);
  v135 = &v110 - v23;
  v24 = type metadata accessor for FileAttachmentDetailsView(0);
  v25 = (v24 - 8);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v128 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v110 - v29);
  MEMORY[0x28223BE20](v31);
  v33 = &v110 - v32;
  v34 = sub_24FEDCE94();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DocumentFileView(0);
  v40 = v39[6];
  v131 = v35;
  v41 = *(v35 + 16);
  v121 = v34;
  v115 = v35 + 16;
  v114 = v41;
  v41(v38, a1 + v40, v34);
  v110 = v38;
  v42 = sub_24FEA4C48(v38);
  v44 = v43;
  v124 = v42;
  v126 = v45;
  v123 = v46;
  v47 = a1;
  v48 = (a1 + v39[5]);
  v49 = v48[1];
  v134 = *v48;
  v50 = *(a1 + v39[9]);

  v51 = sub_24FEDCE14();
  if (v52)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0x206E776F6E6B6E55;
  }

  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = 0xEC00000065707954;
  }

  *v30 = swift_getKeyPath();
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  swift_storeEnumTagMultiPayload();
  v55 = (v30 + v25[7]);
  *v55 = v134;
  v55[1] = v49;
  *(v30 + v25[8]) = v50;
  v56 = (v30 + v25[9]);
  *v56 = v53;
  v56[1] = v54;
  v134 = v33;
  v57 = v136;
  sub_24FEA4F08(v30, v33, type metadata accessor for FileAttachmentDetailsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66A8, &unk_24FEE5760);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_24FEE0740;
  v59 = sub_24FEDC9E4();
  *(v58 + 56) = v59;
  *(v58 + 64) = &protocol witness table for URL;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v58 + 32));
  (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v47, v59);
  sub_24FEA4F70(v47 + v39[8], v57, type metadata accessor for ShareSheetMetadata);
  v61 = type metadata accessor for ShareSheetMetadata();
  v62 = *(v61 - 8);
  (*(v62 + 56))(v57, 0, 1, v61);
  *v21 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v63 = v125;
  v64 = *(v125 + 20);
  v140 = 0x403C000000000000;
  sub_24FE85C8C();
  sub_24FEDD0B4();
  v65 = v63[6];
  sub_24FEDDC74();
  v66 = sub_24FEDDC64();

  v113 = v65;
  v112 = v66;
  *(v21 + v65) = v66;
  v111 = v21 + v63[7];
  *v111 = 0;
  v119 = v21 + v63[8];
  *v119 = 0;
  v67 = (v21 + v63[9]);
  sub_24FEDE134();
  sub_24FEA5038(&qword_27F3A5C08, MEMORY[0x277D63F60]);
  *v67 = sub_24FEDD2C4();
  v67[1] = v68;
  v69 = (v21 + v63[10]);
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for LaTeXMathTracker();
  sub_24FEA5038(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker);

  *v69 = sub_24FEDD1B4();
  v69[1] = v70;
  v71 = v21 + v63[11];
  v137 = 0;
  sub_24FEDDD34();
  v72 = v139;
  *v71 = v138;
  *(v71 + 1) = v72;
  *(v21 + v63[12]) = 0;
  *(v21 + v63[13]) = v58;
  v73 = v136;
  sub_24FE58B14(v136, v21 + v63[14], &qword_27F3A5F70, &qword_24FEE45C0);
  v74 = v63[15];
  v125 = v21;
  *(v21 + v74) = 0;
  v75 = v73;
  v76 = v120;
  sub_24FE58B14(v75, v120, &qword_27F3A5F70, &qword_24FEE45C0);
  v117 = *(v62 + 48);
  v77 = v117(v76, 1, v61);
  v118 = v61;
  if (v77 == 1)
  {
    sub_24FE58B7C(v76, &qword_27F3A5F70, &qword_24FEE45C0);
    v78 = 1;
    v79 = v127;
    v80 = v132;
    v81 = v133;
    v82 = v121;
  }

  else
  {
    v83 = v76 + *(v61 + 24);
    v81 = v133;
    v84 = v76;
    v82 = v121;
    v114(v133, v83, v121);
    sub_24FEA4FD8(v84, type metadata accessor for ShareSheetMetadata);
    v78 = 0;
    v79 = v127;
    v80 = v132;
  }

  v85 = v131;
  v86 = *(v131 + 56);
  v86(v81, v78, 1, v82);
  sub_24FEDCE64();
  v86(v80, 0, 1, v82);
  v87 = *(v122 + 48);
  sub_24FE58B14(v81, v79, &qword_27F3A5F68, &qword_24FEE5350);
  sub_24FE58B14(v80, v79 + v87, &qword_27F3A5F68, &qword_24FEE5350);
  v88 = *(v85 + 48);
  if (v88(v79, 1, v82) != 1)
  {
    v89 = v116;
    sub_24FE58B14(v79, v116, &qword_27F3A5F68, &qword_24FEE5350);
    if (v88(v79 + v87, 1, v82) != 1)
    {
      v94 = v131;
      v95 = v110;
      (*(v131 + 32))(v110, v79 + v87, v82);
      sub_24FEA5038(&qword_27F3A5FC0, MEMORY[0x277D85578]);
      v96 = v89;
      v97 = sub_24FEDE194();
      v98 = *(v94 + 8);
      v98(v95, v82);
      sub_24FE58B7C(v132, &qword_27F3A5F68, &qword_24FEE5350);
      sub_24FE58B7C(v133, &qword_27F3A5F68, &qword_24FEE5350);
      v98(v96, v82);
      sub_24FE58B7C(v79, &qword_27F3A5F68, &qword_24FEE5350);
      v90 = v118;
      if (v97)
      {
        goto LABEL_21;
      }

LABEL_18:
      v91 = v117(v136, 1, v90);
      v92 = v125;
      v93 = v119;
      if (v91 == 1)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    sub_24FE58B7C(v132, &qword_27F3A5F68, &qword_24FEE5350);
    sub_24FE58B7C(v133, &qword_27F3A5F68, &qword_24FEE5350);
    (*(v131 + 8))(v89, v82);
LABEL_17:
    sub_24FE58B7C(v79, &qword_27F3A5F60, &unk_24FEE45B0);
    v90 = v118;
    goto LABEL_18;
  }

  sub_24FE58B7C(v80, &qword_27F3A5F68, &qword_24FEE5350);
  sub_24FE58B7C(v81, &qword_27F3A5F68, &qword_24FEE5350);
  if (v88(v79 + v87, 1, v82) != 1)
  {
    goto LABEL_17;
  }

  sub_24FE58B7C(v79, &qword_27F3A5F68, &qword_24FEE5350);
LABEL_21:
  v99 = sub_24FEDDC54();

  v92 = v125;
  *(v125 + v113) = v99;
  v93 = v111;
LABEL_22:
  *v93 = 1;
LABEL_23:
  v100 = v135;
  sub_24FEA4F70(v92, v135, type metadata accessor for ShareButton);
  sub_24FE58B7C(v136, &qword_27F3A5F70, &qword_24FEE45C0);
  sub_24FEA4FD8(v92, type metadata accessor for ShareButton);
  v101 = v128;
  sub_24FEA4F70(v134, v128, type metadata accessor for FileAttachmentDetailsView);
  v102 = v129;
  sub_24FEA4F70(v100, v129, type metadata accessor for ShareButton);
  v103 = v130;
  *v130 = v44;
  v104 = v124;
  v105 = v126;
  v103[1] = v124;
  v103[2] = v105;
  v106 = v123;
  v103[3] = v123;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6940, &qword_24FEE6138);
  sub_24FEA4F70(v101, v103 + *(v107 + 48), type metadata accessor for FileAttachmentDetailsView);
  sub_24FEA4F70(v102, v103 + *(v107 + 64), type metadata accessor for ShareButton);

  v108 = v106;
  v109 = v104;
  sub_24FEA4FD8(v135, type metadata accessor for ShareButton);
  sub_24FEA4FD8(v134, type metadata accessor for FileAttachmentDetailsView);
  sub_24FEA4FD8(v102, type metadata accessor for ShareButton);
  sub_24FEA4FD8(v101, type metadata accessor for FileAttachmentDetailsView);
}

void sub_24FEA1E30(uint64_t a1)
{
  v2 = type metadata accessor for DocumentFileView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = a1 + *(v5 + 48);
  if (*v6)
  {
    v7 = *v6;
    sub_24FEDE0E4();

    sub_24FEA4F70(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DocumentFileView);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    sub_24FEA4F08(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DocumentFileView);
    v10 = v7;
    sub_24FEDE104();
  }

  else
  {
    v11 = *(v6 + 8);
    sub_24FEDE134();
    sub_24FEA5038(&qword_27F3A5C08, MEMORY[0x277D63F60]);
    sub_24FEDD2B4();
    __break(1u);
  }
}

void sub_24FEA1FE8()
{
  v1 = *(type metadata accessor for DocumentFileView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_24FEA1E30(v2);
}

unint64_t sub_24FEA2048()
{
  result = qword_27F3A6800;
  if (!qword_27F3A6800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A67D8, &qword_24FEE5D98);
    sub_24FE58928(&unk_27F3A6808, &qword_27F3A67D0, &qword_24FEE5D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6800);
  }

  return result;
}

uint64_t sub_24FEA2100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A67E0, &qword_24FEE5DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FEA2184(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = (a2 + *(type metadata accessor for DocumentFileView(0) + 28));
    v3 = *v2;
    v4 = *(v2 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6500, &qword_24FEE5418);
    return sub_24FEDDD54();
  }

  return result;
}

uint64_t sub_24FEA2218(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24FEDC9E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_24FEDCE94();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = type metadata accessor for ShareSheetMetadata();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24FEA23A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24FEDC9E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_24FEDCE94();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for ShareSheetMetadata();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_24FEA251C()
{
  sub_24FEDC9E4();
  if (v0 <= 0x3F)
  {
    sub_24FEDCE94();
    if (v1 <= 0x3F)
    {
      sub_24FE9B424();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ShareSheetMetadata();
        if (v3 <= 0x3F)
        {
          sub_24FE9B390();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24FEA25F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A67E8, &qword_24FEE5DA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A67E0, &qword_24FEE5DA0);
  sub_24FEA4304(&qword_27F3A67F8, &qword_27F3A67E0, &qword_24FEE5DA0, sub_24FEA2048);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FEA26F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24FEA27D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24FEA28B8()
{
  sub_24FE8A340();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24FEA2964@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C20, &unk_24FEE3E10);
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6898, &qword_24FEE6070);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  sub_24FEA2E68(a1, a2, &v40 - v16);
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v18 = &v17[*(v14 + 36)];
  v19 = v51;
  *v18 = v50;
  *(v18 + 1) = v19;
  *(v18 + 2) = v52;
  sub_24FEA4508();
  v44 = v13;
  sub_24FEDDA54();
  sub_24FE58B7C(v17, &qword_27F3A6898, &qword_24FEE6070);
  sub_24FEDE3E4();

  v20 = a3;
  v21 = a1;
  v22 = sub_24FEDE3D4();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *(v23 + 32) = a5;
  *(v23 + 40) = a1;
  *(v23 + 48) = a2;
  *(v23 + 56) = v20;
  v25 = sub_24FEDE414();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v40 - v28;
  sub_24FEDE3F4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v42 = sub_24FEDD214();
    v43 = &v40;
    v41 = *(v42 - 8);
    v30 = *(v41 + 64);
    MEMORY[0x28223BE20](v42);
    v40 = &v40 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_24FEDE624();

    v48 = 0xD000000000000034;
    v49 = 0x800000024FEEA160;
    v47 = 128;
    v32 = sub_24FEDE824();
    MEMORY[0x25305A470](v32);

    v34 = MEMORY[0x28223BE20](v33);
    (*(v26 + 16))(&v40 - v28, &v40 - v28, v25, v34);
    v35 = v40;
    sub_24FEDD204();
    (*(v26 + 8))(v29, v25);
    (*(v45 + 32))(a4, v44, v46);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C28, &unk_24FEE60B0);
    return (*(v41 + 32))(a4 + *(v36 + 36), v35, v42);
  }

  else
  {
    v38 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C30, &qword_24FEE3E20) + 36));
    v39 = sub_24FEDD174();
    (*(v26 + 32))(&v38[*(v39 + 20)], &v40 - v28, v25);
    *v38 = &unk_24FEE60A8;
    *(v38 + 1) = v23;
    return (*(v45 + 32))(a4, v44, v46);
  }
}

uint64_t sub_24FEA2E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24FEDDCD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A68D0, &qword_24FEE6088);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6910, &qword_24FEE60D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v34 = a1;
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6908, &qword_24FEE60C8);
  sub_24FEDDD44();
  if (v33)
  {
    v19 = v33;
    sub_24FEDDCA4();
    (*(v7 + 104))(v10, *MEMORY[0x277CE0FE0], v6);
    v20 = sub_24FEDDD04();
    v32 = a3;
    v21 = v20;

    (*(v7 + 8))(v10, v6);
    v22 = &v14[*(v11 + 36)];
    v23 = *(sub_24FEDD284() + 20);
    v24 = *MEMORY[0x277CE0118];
    v25 = sub_24FEDD4E4();
    (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
    __asm { FMOV            V0.2D, #5.0 }

    *v22 = _Q0;
    *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A68F0, &qword_24FEE6098) + 36)] = 256;
    *v14 = v21;
    *(v14 + 1) = 0;
    *(v14 + 8) = 1;
    sub_24FE58B14(v14, v18, &qword_27F3A68D0, &qword_24FEE6088);
    swift_storeEnumTagMultiPayload();
    sub_24FEA46A4();
    sub_24FEA47E0();
    sub_24FEDD5F4();

    return sub_24FE58B7C(v14, &qword_27F3A68D0, &qword_24FEE6088);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24FEA46A4();
    sub_24FEA47E0();
    return sub_24FEDD5F4();
  }
}

uint64_t sub_24FEA31C4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 168) = a5;
  *(v6 + 176) = a6;
  *(v6 + 160) = a4;
  *(v6 + 152) = a1;
  sub_24FEDE3E4();
  *(v6 + 184) = sub_24FEDE3D4();
  v8 = sub_24FEDE3C4();
  *(v6 + 192) = v8;
  *(v6 + 200) = v7;

  return MEMORY[0x2822009F8](sub_24FEA3264, v8, v7);
}

uint64_t sub_24FEA3264()
{
  v1 = *(v0 + 22);
  v2 = v0[19];
  v3 = [objc_opt_self() mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v2 scale:{v2, v5}];
  *(v0 + 26) = v6;
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = sub_24FEA33FC;
  v7 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6900, &qword_24FEE60C0);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_24FEA36A4;
  *(v0 + 13) = &block_descriptor_2;
  *(v0 + 14) = v7;
  [v1 getImageForImageDescriptor:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24FEA33FC()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24FEA3504, v2, v1);
}

id sub_24FEA3504()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
    v8 = *(v0 + 184);

LABEL_7:

    goto LABEL_8;
  }

  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 80) = v3;
  *(v0 + 88) = v2;

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6908, &qword_24FEE60C8);
  sub_24FEDDD44();
  v5 = *(v0 + 144);
  if (!v5)
  {
    result = [v1 CGImage];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = *(v0 + 184);
    v12 = *(v0 + 160);
    v16 = *(v0 + 168);
    v17 = *(v0 + 208);

    v13 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    *(v0 + 80) = v12;
    *(v0 + 88) = v16;
    *(v0 + 144) = v13;
    v14 = v13;
    sub_24FEDDD54();

    goto LABEL_7;
  }

  v6 = *(v0 + 208);
  v7 = *(v0 + 184);

LABEL_8:
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24FEA36A4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_24FEA3734()
{
  v1 = v0;
  v2 = sub_24FEDD514();
  v12 = 1;
  sub_24FEA3954(v1, __dst);
  v16 = __dst[2];
  v17 = __dst[3];
  v18 = __dst[4];
  v19 = *&__dst[5];
  v14 = __dst[0];
  v15 = __dst[1];
  v21 = *&__dst[5];
  v20[2] = __dst[2];
  v20[3] = __dst[3];
  v20[4] = __dst[4];
  v20[0] = __dst[0];
  v20[1] = __dst[1];
  sub_24FE58B14(&v14, __src, &qword_27F3A6860, &qword_24FEE6018);
  sub_24FE58B7C(v20, &qword_27F3A6860, &qword_24FEE6018);
  *&v11[39] = v16;
  *&v11[55] = v17;
  *&v11[71] = v18;
  *&v11[87] = v19;
  *&v11[7] = v14;
  *&v11[23] = v15;
  v3 = v12;
  sub_24FEDDF44();
  sub_24FEDD294();
  LOBYTE(v1) = sub_24FEDD774();
  sub_24FEDD014();
  v13 = 0;
  __src[0] = v2;
  LOBYTE(__src[1]) = v3;
  *(&__src[3] + 1) = *&v11[32];
  *(&__src[4] + 1) = *&v11[48];
  *(&__src[5] + 1) = *&v11[64];
  *(&__src[1] + 1) = *v11;
  *(&__src[2] + 1) = *&v11[16];
  __src[8] = __src[18];
  __src[9] = __src[19];
  __src[6] = *&v11[79];
  __src[7] = __src[17];
  __src[12] = __src[22];
  __src[13] = __src[23];
  __src[10] = __src[20];
  __src[11] = __src[21];
  LOBYTE(__src[14]) = v1;
  *(&__src[14] + 1) = v4;
  *&__src[15] = v5;
  *(&__src[15] + 1) = v6;
  *&__src[16] = v7;
  BYTE8(__src[16]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6868, &qword_24FEE6020);
  sub_24FEA4304(&qword_27F3A6870, &qword_27F3A6868, &qword_24FEE6020, sub_24FEA4388);
  sub_24FEDDA54();
  memcpy(__dst, __src, 0x109uLL);
  return sub_24FE58B7C(__dst, &qword_27F3A6868, &qword_24FEE6020);
}

uint64_t sub_24FEA3954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24FEDD054();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v62 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = v59 - v8;
  v9 = sub_24FEDD4A4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24FEDD494();
  sub_24FEDD484();
  v11 = type metadata accessor for FileAttachmentDetailsView(0);
  v12 = (a1 + v11[5]);
  v13 = *v12;
  v14 = v12[1];
  sub_24FEDD474();
  sub_24FEDD484();
  sub_24FEDD4C4();
  v15 = sub_24FEDD9D4();
  v17 = v16;
  v19 = v18;
  sub_24FEDD8B4();
  v20 = sub_24FEDD994();
  v66 = v21;
  v67 = v20;
  v61 = v22;
  v68 = v23;

  sub_24FE56B94(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  sub_24FEDD494();
  sub_24FEDD484();
  v24 = *(a1 + v11[6]);
  v25 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v25 setCountStyle_];
  [v25 setIncludesUnit_];
  v26 = [v25 stringFromByteCount_];
  sub_24FEDE1F4();

  sub_24FEDD474();

  sub_24FEDD484();
  v27 = (a1 + v11[7]);
  v28 = *v27;
  v29 = v27[1];
  sub_24FEDD474();
  sub_24FEDD484();
  sub_24FEDD4C4();
  v30 = sub_24FEDD9D4();
  v32 = v31;
  v34 = v33;
  sub_24FEDD7C4();
  v35 = sub_24FEDD994();
  v37 = v36;
  v39 = v38;
  v59[1] = v40;

  sub_24FE56B94(v30, v32, v34 & 1);

  v41 = v60;
  sub_24FE9A750(v60);
  v43 = v62;
  v42 = v63;
  v44 = v64;
  (*(v63 + 104))(v62, *MEMORY[0x277CDF3C0], v64);
  LOBYTE(v30) = sub_24FEDD044();
  v45 = *(v42 + 8);
  v45(v43, v44);
  v45(v41, v44);
  if (v30)
  {
    sub_24FEDDC24();
  }

  else
  {
    v46 = [objc_opt_self() darkGrayColor];
    sub_24FEDDC94();
  }

  v47 = sub_24FEDD964();
  v49 = v48;
  v51 = v50;
  v53 = v52;

  sub_24FE56B94(v35, v37, v39 & 1);

  v54 = v61 & 1;
  v72 = v61 & 1;
  v71 = v61 & 1;
  v70 = 0;
  v69 = v51 & 1;
  v56 = v66;
  v55 = v67;
  *a2 = v67;
  *(a2 + 8) = v56;
  *(a2 + 16) = v54;
  v57 = KeyPath;
  *(a2 + 24) = v68;
  *(a2 + 32) = v57;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v47;
  *(a2 + 64) = v49;
  *(a2 + 72) = v51 & 1;
  *(a2 + 80) = v53;
  sub_24FE629DC(v55, v56, v54);

  sub_24FE629DC(v47, v49, v51 & 1);

  sub_24FE56B94(v47, v49, v51 & 1);

  sub_24FE56B94(v55, v56, v72);
}

uint64_t sub_24FEA3EA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24FEDDCD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6848, &qword_24FEE6000);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v38[-v13];
  v15 = *(sub_24FEDD284() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24FEDD4E4();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #8.0 }

  *v14 = _Q0;
  sub_24FEDDC24();
  v23 = sub_24FEDDC64();

  *&v14[*(v8 + 44)] = v23;
  sub_24FEDDCB4();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v24 = sub_24FEDDD04();

  (*(v3 + 8))(v6, v2);
  v25 = sub_24FEDDC54();
  LOBYTE(v6) = sub_24FEDD744();
  sub_24FEDD014();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  LOBYTE(v46[0]) = 1;
  LOBYTE(v42[0]) = 0;
  sub_24FE58B14(v14, v11, &qword_27F3A6848, &qword_24FEE6000);
  sub_24FE58B14(v11, a1, &qword_27F3A6848, &qword_24FEE6000);
  v34 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6850, &qword_24FEE6008) + 48));
  v42[0] = v24;
  v42[1] = 0;
  LOWORD(v43) = 1;
  *(&v43 + 2) = v40;
  WORD3(v43) = v41;
  *(&v43 + 1) = v25;
  LOBYTE(v44) = v6;
  *(&v44 + 1) = *v39;
  DWORD1(v44) = *&v39[3];
  *(&v44 + 1) = v27;
  *v45 = v29;
  *&v45[8] = v31;
  *&v45[16] = v33;
  v45[24] = 0;
  v35 = v43;
  *(v34 + 57) = *&v45[9];
  v36 = *v45;
  v34[2] = v44;
  v34[3] = v36;
  *v34 = v24;
  v34[1] = v35;
  sub_24FE58B14(v42, v46, &qword_27F3A6858, &qword_24FEE6010);
  sub_24FE58B7C(v14, &qword_27F3A6848, &qword_24FEE6000);
  v46[0] = v24;
  v46[1] = 0;
  v47 = 1;
  v48 = v40;
  v49 = v41;
  v50 = v25;
  v51 = v6;
  *v52 = *v39;
  *&v52[3] = *&v39[3];
  v53 = v27;
  v54 = v29;
  v55 = v31;
  v56 = v33;
  v57 = 0;
  sub_24FE58B7C(v46, &qword_27F3A6858, &qword_24FEE6010);
  return sub_24FE58B7C(v11, &qword_27F3A6848, &qword_24FEE6000);
}

uint64_t sub_24FEA42BC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24FEDDF34();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6840, &qword_24FEE5FF8);
  return sub_24FEA3EA8(a1 + *(v3 + 44));
}

uint64_t sub_24FEA4304(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24FEA4388()
{
  result = qword_27F3A6878;
  if (!qword_27F3A6878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6880, &qword_24FEE6028);
    sub_24FE58928(&qword_27F3A6888, &qword_27F3A6890, &qword_24FEE6030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6878);
  }

  return result;
}

uint64_t sub_24FEA4440@<X0>(uint64_t a1@<X8>)
{
  result = sub_24FEDD3B4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24FEA4474@<X0>(uint64_t a1@<X8>)
{
  result = sub_24FEDD3B4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24FEA44A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24FEDD3C4();
}

uint64_t sub_24FEA44D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24FEDD3C4();
}

unint64_t sub_24FEA4508()
{
  result = qword_27F3A68A0;
  if (!qword_27F3A68A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6898, &qword_24FEE6070);
    sub_24FEA4594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A68A0);
  }

  return result;
}

unint64_t sub_24FEA4594()
{
  result = qword_27F3A68A8;
  if (!qword_27F3A68A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A68B0, &qword_24FEE6078);
    sub_24FEA4618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A68A8);
  }

  return result;
}

unint64_t sub_24FEA4618()
{
  result = qword_27F3A68B8;
  if (!qword_27F3A68B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A68C0, &qword_24FEE6080);
    sub_24FEA46A4();
    sub_24FEA47E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A68B8);
  }

  return result;
}

unint64_t sub_24FEA46A4()
{
  result = qword_27F3A68C8;
  if (!qword_27F3A68C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A68D0, &qword_24FEE6088);
    sub_24FEA475C();
    sub_24FE58928(&qword_27F3A68E8, &qword_27F3A68F0, &qword_24FEE6098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A68C8);
  }

  return result;
}

unint64_t sub_24FEA475C()
{
  result = qword_27F3A68D8;
  if (!qword_27F3A68D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A68E0, &qword_24FEE6090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A68D8);
  }

  return result;
}

unint64_t sub_24FEA47E0()
{
  result = qword_27F3A68F8;
  if (!qword_27F3A68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A68F8);
  }

  return result;
}

uint64_t sub_24FEA4834()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24FEA4884()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24FE7DF78;

  return sub_24FEA31C4(v4, v2, v3, v5, v6, v7);
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for DocumentFileView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_24FEDC9E4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  v7 = v1[8];
  v8 = sub_24FEDCE94();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v10 = *(v0 + v3 + v1[9] + 8);

  v11 = v0 + v3 + v1[10];
  v12 = *(v11 + 8);

  v13 = *(v11 + 24);

  v14 = type metadata accessor for ShareSheetMetadata();
  v9(v11 + *(v14 + 24), v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FEA4AF0(uint64_t a1)
{
  v3 = *(type metadata accessor for DocumentFileView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24FEA2184(a1, v4);
}

unint64_t sub_24FEA4B60()
{
  result = qword_27F3A6928;
  if (!qword_27F3A6928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6848, &qword_24FEE6000);
    sub_24FEA5038(&qword_27F3A6100, MEMORY[0x277CDFC08]);
    sub_24FE58928(&qword_27F3A6300, &qword_27F3A62F8, &unk_24FEE4E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6928);
  }

  return result;
}

id sub_24FEA4C48(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6948, &qword_24FEE6140);
  sub_24FEDDD34();
  sub_24FEDCDF4();
  v2 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v3 = sub_24FEDE1C4();

  v4 = [v2 initWithType_];

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v9}];
  v11 = [v6 imageForDescriptor_];

  if (!v11)
  {
    v13 = sub_24FEDCE94();
    (*(*(v13 - 8) + 8))(a1, v13);

    return v19;
  }

  if ([v11 placeholder])
  {
    v12 = 0;
LABEL_7:
    v16 = v12;
    v17 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6908, &qword_24FEE60C8);
    sub_24FEDDD54();

    v18 = sub_24FEDCE94();
    (*(*(v18 - 8) + 8))(a1, v18);

    return v19;
  }

  result = [v11 CGImage];
  if (result)
  {
    v15 = result;
    v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_24FEA4F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FEA4F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FEA4FD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24FEA5038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FEA50C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6868, &qword_24FEE6020);
  sub_24FEA4304(&qword_27F3A6870, &qword_27F3A6868, &qword_24FEE6020, sub_24FEA4388);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FEA515C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5C20, &unk_24FEE3E10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6898, &qword_24FEE6070);
  sub_24FEA4508();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_24FEA5308()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FileQuickLookPreview.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24FEA5378()
{
  result = sub_24FEDC9E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24FEA541C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDC9E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FEA549C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDC9E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_24FEA552C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CDAA58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6A00, &unk_24FEE6260);
  sub_24FEDD704();
  [v0 setDataSource_];

  return v0;
}

uint64_t sub_24FEA55AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEA57E8(v2, v6);
  v7 = type metadata accessor for FileQuickLookPreview.Coordinator(0);
  v8 = objc_allocWithZone(v7);
  sub_24FEA57E8(v6, v8 + OBJC_IVAR____TtCV16MarkdownDocument20FileQuickLookPreview11Coordinator_parent);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_24FEA584C(v6);
  *a2 = v9;
  return result;
}

uint64_t sub_24FEA5670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEA58A8(&qword_27F3A6A08);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24FEA56F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEA58A8(&qword_27F3A6A08);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24FEA5770()
{
  sub_24FEA58A8(&qword_27F3A6A08);
  sub_24FEDD6E4();
  __break(1u);
}

uint64_t sub_24FEA57E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileQuickLookPreview(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEA584C(uint64_t a1)
{
  v2 = type metadata accessor for FileQuickLookPreview(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FEA58A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileQuickLookPreview(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GlossaryLinkAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *static GlossaryLinkAttribute.name;

  return v0;
}

uint64_t static GlossaryLinkAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static GlossaryLinkAttribute.name = a1;
  *&static GlossaryLinkAttribute.name[8] = a2;
}

unint64_t sub_24FEA5A04()
{
  result = qword_27F3A6A20;
  if (!qword_27F3A6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6A20);
  }

  return result;
}

uint64_t sub_24FEA5AB8()
{
  swift_beginAccess();
  v0 = *static GlossaryLinkAttribute.name;

  return v0;
}

unint64_t sub_24FEA5B1C()
{
  result = qword_27F3A6A28;
  if (!qword_27F3A6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6A28);
  }

  return result;
}

uint64_t InlineElementGlossaryLinkParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - v7;
  v8 = sub_24FEDC9E4();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24FEDC8E4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6A30, &unk_24FEE63A8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v51 - v15;
  v17 = sub_24FEDC504();
  v61 = *(v17 - 8);
  v62 = v17;
  v18 = *(v61 + 64);
  MEMORY[0x28223BE20](v17);
  v59 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v20 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - v24;
  v26 = sub_24FEDC774();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v29);
  v63 = &v51 - v30;
  sub_24FEA5A04();
  sub_24FEDC6D4();
  if (!v65[1])
  {
    return (*(v27 + 16))(a2, v60, v26);
  }

  v53 = a2;
  (*(v27 + 16))(v63, v60, v26);
  sub_24FEDC6B4();
  sub_24FEDC4F4();
  if ((*(v61 + 48))(v16, 1, v62) == 1)
  {
    sub_24FE58B7C(v25, &qword_27F3A6160, &unk_24FEE4A80);

    sub_24FE58B7C(v16, &qword_27F3A6A30, &unk_24FEE63A8);
    return (*(v27 + 32))(v53, v63, v26);
  }

  else
  {
    v51 = v25;
    v60 = v26;
    v32 = v59;
    (*(v61 + 32))(v59, v16, v62);
    sub_24FEA63A0();
    sub_24FEDC6B4();
    sub_24FE8BF90();
    sub_24FEDC7A4();
    sub_24FE58B7C(v22, &qword_27F3A6160, &unk_24FEE4A80);
    sub_24FEDC7C4();
    v33 = sub_24FEDE524();
    v34 = [v33 string];

    sub_24FEDE1F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6A38, &qword_24FEE63B8);
    v35 = *(sub_24FEDC4A4() - 8);
    v36 = *(v35 + 72);
    v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    *(swift_allocObject() + 16) = xmmword_24FEE0830;
    sub_24FEDC474();

    v38 = v32;
    sub_24FEDC474();

    sub_24FEDC4C4();
    v39 = v54;
    sub_24FEDC4E4();
    v41 = v56;
    v40 = v57;
    if ((*(v56 + 48))(v39, 1, v57) == 1)
    {
      (*(v61 + 8))(v38, v62);
      sub_24FE58B7C(v51, &qword_27F3A6160, &unk_24FEE4A80);
      sub_24FE58B7C(v39, &qword_27F3A64B8, &qword_24FEE63A0);
      v42 = *(v27 + 32);
      v43 = v53;
      v44 = v63;
    }

    else
    {
      v45 = v55;
      (*(v41 + 32))(v55, v39, v40);
      v46 = v52;
      (*(v41 + 16))(v52, v45, v40);
      (*(v41 + 56))(v46, 0, 1, v40);
      v47 = v51;
      v48 = v63;
      v49 = sub_24FEDC794();
      sub_24FEA63EC();
      sub_24FEDC8F4();
      v49(v65, 0);
      v64 = sub_24FEDDC04();
      v50 = sub_24FEDC794();
      sub_24FEA6440();
      sub_24FEDC8F4();
      v50(v65, 0);
      (*(v41 + 8))(v55, v40);
      (*(v61 + 8))(v59, v62);
      sub_24FE58B7C(v47, &qword_27F3A6160, &unk_24FEE4A80);
      v42 = *(v27 + 32);
      v43 = v53;
      v44 = v48;
    }

    return v42(v43, v44, v60);
  }
}

unint64_t sub_24FEA63A0()
{
  result = qword_27F3A63D8;
  if (!qword_27F3A63D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F3A63D8);
  }

  return result;
}

unint64_t sub_24FEA63EC()
{
  result = qword_27F3A6A40;
  if (!qword_27F3A6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6A40);
  }

  return result;
}

unint64_t sub_24FEA6440()
{
  result = qword_27F3A6A48;
  if (!qword_27F3A6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6A48);
  }

  return result;
}

uint64_t DocumentElementHeadingParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v83 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v2 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v72 - v3;
  v84 = sub_24FEDC8E4();
  v76 = *(v84 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v84);
  v77 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_24FEDC6C4();
  v90 = *(v88 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24FEDC774();
  v78 = *(v8 - 8);
  v9 = *(v78 + 64);
  MEMORY[0x28223BE20](v8);
  v91 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_24FEDC884();
  v81 = *(v97 - 1);
  v11 = *(v81 + 64);
  MEMORY[0x28223BE20](v97);
  v80 = (&v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  v82 = sub_24FEDC854();
  v16 = *(v82 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v82);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v79 = &v72 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v72 - v27;
  v29 = sub_24FEDC894();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE8B614();
  sub_24FEDC6D4();
  v34 = v29;
  v35 = v30;
  if ((*(v30 + 48))(v28, 1, v34) == 1)
  {
    sub_24FE58B7C(v28, &qword_27F3A6138, &unk_24FEE4A10);
LABEL_9:
    v46 = v83;
    v47 = type metadata accessor for DocumentHeadingElement();
    return (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
  }

  v73 = v24;
  v72 = v8;
  v36 = *(v30 + 32);
  v75 = v34;
  v36(v33, v28, v34);
  v74 = v33;
  result = sub_24FEDC864();
  v38 = result;
  v39 = v82;
  v95 = *(result + 16);
  if (!v95)
  {
LABEL_8:

    (*(v35 + 8))(v74, v75);
    goto LABEL_9;
  }

  v40 = 0;
  v92 = v16 + 16;
  v41 = (v81 + 88);
  LODWORD(v96) = *MEMORY[0x277CC8D30];
  v42 = (v81 + 8);
  v93 = (v16 + 8);
  v94 = v35;
  while (1)
  {
    if (v40 >= *(v38 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v16 + 16))(v19, v38 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v40, v39);
    sub_24FEDC834();
    v43 = *v41;
    v44 = v97;
    v45 = (*v41)(v15, v97);
    if (v45 == v96)
    {
      break;
    }

    ++v40;
    (*v42)(v15, v44);
    result = (*v93)(v19, v39);
    v35 = v94;
    if (v95 == v40)
    {
      goto LABEL_8;
    }
  }

  v48 = *(v16 + 32);
  v49 = v79;
  v48(v79, v19, v39);
  v50 = v73;
  v48(v73, v49, v39);
  v51 = v80;
  sub_24FEDC834();
  v52 = v97;
  v53 = v43(v51, v97);
  if (v53 != v96)
  {
    (*v93)(v50, v39);
    (*(v94 + 8))(v74, v75);
    (*v42)(v51, v52);
    goto LABEL_9;
  }

  (*(v81 + 96))(v51, v52);
  v95 = *v51;
  v54 = sub_24FEDC844();
  v55 = sub_24FED5384(v54);
  sub_24FEDC764();
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = *(v90 + 16);
    v58 = *(v90 + 80);
    v92 = v55;
    v59 = v55 + ((v58 + 32) & ~v58);
    v96 = *(v90 + 72);
    v97 = v57;
    v60 = (v76 + 8);
    v90 += 16;
    v61 = (v90 - 8);
    v62 = v77;
    (v57)(v87, v59, v88);
    while (1)
    {
      sub_24FEA6FA4();
      sub_24FEDC6D4();
      v66 = v98;
      v67 = v99;
      v68 = v85;
      sub_24FEDC6B4();
      sub_24FE8BF90();
      sub_24FEDC7A4();
      sub_24FE58B7C(v68, &qword_27F3A6160, &unk_24FEE4A80);
      if ((v67 & 1) == 0 && v66 == 4 && v95 <= 3)
      {
        type metadata accessor for MarkdownFont();
        swift_initStaticObject();
        sub_24FE82000(v100);
        v69 = v100[4];
        v105 = v100[0];

        sub_24FE8A8D0(&v105);
        v104 = v100[1];
        sub_24FE8A8D0(&v104);
        v103 = v100[2];
        sub_24FE8A8D0(&v103);
        v102 = v100[3];
        sub_24FE8A8D0(&v102);

        v101 = v100[5];
        sub_24FE8A8D0(&v101);
        v98 = v69;
        sub_24FEA7000();
        sub_24FEDC8F4();
      }

      sub_24FEA709C(&unk_27F3A6150, MEMORY[0x277CC8D88]);
      v63 = v84;
      sub_24FEDC694();
      (*v60)(v62, v63);
      v64 = v87;
      v65 = v88;
      (*v61)(v87, v88);
      v59 += v96;
      if (!--v56)
      {
        break;
      }

      (v97)(v64, v59, v65);
    }

    v50 = v73;
  }

  else
  {
  }

  v70 = v83;
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  (*v93)(v50, v82);
  (*(v94 + 8))(v74, v75);
  v71 = type metadata accessor for DocumentHeadingElement();
  (*(v78 + 32))(v70 + *(v71 + 20), v91, v72);
  *(v70 + *(v71 + 24)) = v95;
  return (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
}

unint64_t sub_24FEA6FA4()
{
  result = qword_27F3A6A50;
  if (!qword_27F3A6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6A50);
  }

  return result;
}

unint64_t sub_24FEA7000()
{
  result = qword_27F3A6A58;
  if (!qword_27F3A6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6A58);
  }

  return result;
}

uint64_t sub_24FEA709C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DocumentHeadingElement.init(id:text:level:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24FEDCA64();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for DocumentHeadingElement();
  v10 = *(v9 + 20);
  v11 = sub_24FEDC774();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for DocumentHeadingElement()
{
  result = qword_27F3A6A90;
  if (!qword_27F3A6A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentHeadingElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentHeadingElement.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentHeadingElement() + 20);
  v4 = sub_24FEDC774();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DocumentHeadingElement.makeView(textWrapOffset:)@<X0>(char *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = type metadata accessor for DocumentHeadingElement();
  v8 = *(v7 + 20);
  v9 = *(v3 + *(v7 + 24));
  v10 = type metadata accessor for DocumentHeadingView();
  v11 = *(v10 + 24);
  v12 = sub_24FEDC774();
  result = (*(*(v12 - 8) + 16))(&a1[v11], v3 + v8, v12);
  *a1 = v9;
  *(a1 + 1) = 0x4020000000000000;
  v14 = &a1[*(v10 + 28)];
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t DocumentHeadingElement.makeView()@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for DocumentHeadingElement();
  v4 = *(v3 + 20);
  v5 = *(v1 + *(v3 + 24));
  v6 = type metadata accessor for DocumentHeadingView();
  v7 = *(v6 + 24);
  v8 = sub_24FEDC774();
  result = (*(*(v8 - 8) + 16))(&a1[v7], v1 + v4, v8);
  *a1 = v5;
  *(a1 + 1) = 0x4020000000000000;
  v10 = &a1[*(v6 + 28)];
  *v10 = 0;
  *(v10 + 1) = 0;
  return result;
}

BOOL static DocumentHeadingElement.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) != 0 && (v4 = type metadata accessor for DocumentHeadingElement(), v5 = *(v4 + 20), (sub_24FEDC684()))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24FEA7530@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = *(v2 + *(a1 + 24));
  v6 = type metadata accessor for DocumentHeadingView();
  v7 = *(v6 + 24);
  v8 = sub_24FEDC774();
  result = (*(*(v8 - 8) + 16))(&a2[v7], v2 + v4, v8);
  *a2 = v5;
  *(a2 + 1) = 0x4020000000000000;
  v10 = &a2[*(v6 + 28)];
  *v10 = 0;
  *(v10 + 1) = 0;
  return result;
}

uint64_t sub_24FEA75C8@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *(a1 + 20);
  v9 = *(v4 + *(a1 + 24));
  v10 = type metadata accessor for DocumentHeadingView();
  v11 = *(v10 + 24);
  v12 = sub_24FEDC774();
  result = (*(*(v12 - 8) + 16))(&a2[v11], v4 + v8, v12);
  *a2 = v9;
  *(a2 + 1) = 0x4020000000000000;
  v14 = &a2[*(v10 + 28)];
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t sub_24FEA7670(uint64_t a1)
{
  *(a1 + 8) = sub_24FEA773C(&qword_27F3A6A78, type metadata accessor for DocumentHeadingElement);
  result = sub_24FEA773C(&unk_27F3A6A80, type metadata accessor for DocumentHeadingElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FEA773C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_24FEA7784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) != 0 && (v6 = *(a3 + 20), (sub_24FEDC684()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24FEA7800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24FEDC774();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FEA7904(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24FEDCA64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24FEDC774();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24FEA7A00()
{
  result = sub_24FEDCA64();
  if (v1 <= 0x3F)
  {
    result = sub_24FEDC774();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double DocumentHeadingView.topPadding(previousElement:)(uint64_t a1)
{
  v3 = type metadata accessor for DocumentCodeBlockElement();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE81980(a1, &v9);
  if (v10)
  {
    sub_24FE71ADC(&v9, v11);
    if (*v1 > 3)
    {
      sub_24FE71ADC(v11, &v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
      v8 = swift_dynamicCast();
      result = 10.0;
      if (v8)
      {
        sub_24FE819F0(v6);
        return 16.0;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
      return *(v1 + 8) + 10.0;
    }
  }

  else
  {
    sub_24FEA7BA4(&v9);
    return 0.0;
  }

  return result;
}

uint64_t sub_24FEA7BA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DD8, &unk_24FEE42C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DocumentHeadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_24FEDC774();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6AA0, &qword_24FEE6530);
  v27 = *(v29 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v27 - v9;
  v11 = type metadata accessor for DocumentHeadingView();
  (*(v4 + 16))(v7, v2 + *(v11 + 24), v3);
  v12 = sub_24FEDD9E4();
  v14 = v13;
  v16 = v15;
  v28 = v17;
  v18 = *v2;
  type metadata accessor for MarkdownFont();
  swift_initStaticObject();
  sub_24FE82000(v37);
  if (v18 > 3)
  {
    v19 = v37[0];
  }

  else
  {
    v19 = v37[1];
  }

  v42 = v19;
  sub_24FE8A8D0(&v42);
  v41 = v37[2];
  sub_24FE8A8D0(&v41);
  v40 = v37[3];
  sub_24FE8A8D0(&v40);
  v39 = v37[4];
  sub_24FE8A8D0(&v39);
  v38 = v37[5];
  sub_24FE8A8D0(&v38);
  sub_24FEDD804();
  v20 = sub_24FEDD864();

  KeyPath = swift_getKeyPath();
  v31 = v12;
  v32 = v14;
  v22 = v16 & 1;
  v33 = v22;
  v34 = v28;
  v35 = KeyPath;
  v36 = v20;
  v23 = v2 + *(v11 + 28);
  v24 = *(v23 + 1);
  LODWORD(v23) = *v23 != 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6AA8, &qword_24FEE6568);
  sub_24FEA7FEC();
  sub_24FEDDB84();
  sub_24FE56B94(v12, v14, v22);

  LODWORD(v20) = sub_24FEDD634();
  v25 = v30;
  (*(v27 + 32))(v30, v10, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6AB8, &qword_24FEE6570);
  *(v25 + *(result + 36)) = v20;
  return result;
}

uint64_t type metadata accessor for DocumentHeadingView()
{
  result = qword_27F3A6AC8;
  if (!qword_27F3A6AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FEA7F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDD374();
  *a1 = result;
  return result;
}

uint64_t sub_24FEA7FC0(uint64_t *a1)
{
  v1 = *a1;

  return sub_24FEDD384();
}

unint64_t sub_24FEA7FEC()
{
  result = qword_27F3A6AB0;
  if (!qword_27F3A6AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6AA8, &qword_24FEE6568);
    sub_24FE8A700();
    sub_24FE58928(&qword_27F3A6298, &qword_27F3A62A0, &qword_24FEE4DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6AB0);
  }

  return result;
}

uint64_t sub_24FEA80D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_24FEDC774();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24FEA8160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_24FEDC774();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_24FEA81DC()
{
  sub_24FEDC774();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24FEA827C()
{
  result = qword_27F3A6AD8;
  if (!qword_27F3A6AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F3A6AB8, &qword_24FEE6570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6AA8, &qword_24FEE6568);
    sub_24FEA7FEC();
    swift_getOpaqueTypeConformance2();
    sub_24FE58928(&qword_27F3A6698, &qword_27F3A66A0, &unk_24FEE7C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6AD8);
  }

  return result;
}

void *sub_24FEA8370(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6AF0, &unk_24FEE6680);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v28 = type metadata accessor for ListImageItem();
  v10 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v26 = &v23 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = (a3 + 32);
  v24 = v13;
  v17 = (v13 + 48);
  v18 = MEMORY[0x277D84F90];
  v25 = a1;
  while (1)
  {
    v29 = *v16;

    a1(&v29);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v28) == 1)
    {
      sub_24FE58B7C(v9, &qword_27F3A6AF0, &unk_24FEE6680);
    }

    else
    {
      v19 = v26;
      sub_24FEA99EC(v9, v26);
      sub_24FEA99EC(v19, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_24FEBB068(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_24FEBB068(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_24FEA99EC(v27, v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21);
      a1 = v25;
    }

    ++v16;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t DocumentElementListImageParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32[0] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6140, &qword_24FEE79D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v32 - v11;
  v13 = sub_24FEDC854();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE8B614();
  sub_24FEDC6D4();
  v18 = sub_24FEDC894();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v8, 1, v18) == 1)
  {
    sub_24FE58B7C(v8, &qword_27F3A6138, &unk_24FEE4A10);
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_4:
    sub_24FE58B7C(v12, &qword_27F3A6140, &qword_24FEE79D0);
    v22 = type metadata accessor for DocumentListImageElement();
    return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }

  v20 = sub_24FEDC864();
  v21 = (*(v19 + 8))(v8, v18);
  MEMORY[0x28223BE20](v21);
  v32[-2] = a2;
  sub_24FE8B440(sub_24FEA8B70, v20, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_4;
  }

  (*(v14 + 32))(v17, v12, v13);
  v24 = sub_24FEDC844();
  v25 = v32[0];
  v26 = sub_24FED5384(v24);
  v27 = sub_24FEA8B90(v26);

  MEMORY[0x28223BE20](v28);
  v32[-2] = v25;
  v29 = sub_24FEA8370(sub_24FEA9894, &v32[-4], v27);

  v30 = type metadata accessor for DocumentListImageElement();
  v31 = a3 + *(v30 + 20);
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  (*(v14 + 8))(v17, v13);
  *a3 = v29;
  return (*(*(v30 - 8) + 56))(a3, 0, 1, v30);
}

uint64_t sub_24FEA8A2C()
{
  v0 = sub_24FEDC884();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24FEDC834();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277CC8D18])
  {
    sub_24FEA9A50();
    sub_24FEDC6D4();
    result = v7;
    if (v7)
    {

      return 1;
    }
  }

  else
  {
    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return result;
}

uint64_t sub_24FEA8B90(uint64_t a1)
{
  v2 = sub_24FEDC884();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24FEDC854();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v52 - v14;
  v15 = sub_24FEDC6C4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v69 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - v19;
  v55 = *(a1 + 16);
  if (!v55)
  {
    return MEMORY[0x277D84F90];
  }

  v22 = 0;
  v24 = *(v20 + 16);
  v23 = v20 + 16;
  v74 = v24;
  v63 = *(v23 + 64);
  v65 = (v63 + 32) & ~v63;
  v54 = a1 + v65;
  v73 = *(v23 + 56);
  v78 = v8 + 16;
  v52 = v8;
  v76 = (v3 + 88);
  v77 = (v8 + 8);
  v75 = *MEMORY[0x277CC8D38];
  v67 = (v3 + 96);
  v68 = (v3 + 8);
  v59 = (v23 + 16);
  v53 = (v23 - 8);
  v62 = xmmword_24FEE0740;
  v79 = MEMORY[0x277D84F90];
  v60 = v11;
  v66 = v15;
  v61 = v7;
  v71 = &v52 - v19;
  v72 = v23;
  v64 = v6;
  while (1)
  {
    v57 = v22;
    v74(v21, v54 + v73 * v22, v15);
    sub_24FE8B614();
    sub_24FEDC6D4();
    v25 = v58;
    v26 = sub_24FEDC894();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v25, 1, v26) != 1)
    {
      break;
    }

    sub_24FE58B7C(v25, &qword_27F3A6138, &unk_24FEE4A10);
    v28 = MEMORY[0x277D84F90];
    v29 = *(MEMORY[0x277D84F90] + 16);
    if (v29)
    {
      goto LABEL_6;
    }

LABEL_3:

    v22 = v57 + 1;
    v21 = v71;
    (*v53)(v71, v15);
    if (v22 == v55)
    {
      return v79;
    }
  }

  v28 = sub_24FEDC864();
  (*(v27 + 8))(v58, v26);
  v29 = *(v28 + 16);
  if (!v29)
  {
    goto LABEL_3;
  }

LABEL_6:
  v30 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v56 = v28;
  v31 = v28 + v30;
  v32 = *(v52 + 72);
  v70 = *(v52 + 16);
  v33 = v70;
  v70(v11, v31, v7);
  while (1)
  {
    sub_24FEDC834();
    (*v77)(v11, v7);
    v34 = (*v76)(v6, v2);
    if (v34 != v75)
    {
      (*v68)(v6, v2);
      goto LABEL_8;
    }

    result = (*v67)(v6, v2);
    v36 = *v6 - 1;
    if (__OFSUB__(*v6, 1))
    {
      break;
    }

    v37 = v7;
    v38 = v2;
    v39 = v15;
    v40 = v79;
    if (v36 < 0 || v36 >= v79[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6B00, &unk_24FEE6690);
      v47 = v65;
      v48 = swift_allocObject();
      *(v48 + 16) = v62;
      v74((v48 + v47), v71, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_24FEBB044(0, v40[2] + 1, 1, v40);
      }

      v2 = v38;
      v50 = v40[2];
      v49 = v40[3];
      v79 = v40;
      v7 = v37;
      if (v50 >= v49 >> 1)
      {
        v79 = sub_24FEBB044((v49 > 1), v50 + 1, 1, v79);
      }

      v6 = v64;
      v51 = v79;
      v79[2] = v50 + 1;
      v51[v50 + 4] = v48;
      v15 = v66;
      v33 = v70;
    }

    else
    {
      v74(v69, v71, v39);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24FEBB818(v40);
        v40 = result;
      }

      if (v36 >= v40[2])
      {
        goto LABEL_32;
      }

      v41 = v40 + 4;
      v42 = v40[v36 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40[v36 + 4] = v42;
      v79 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_24FEBB01C(0, *(v42 + 2) + 1, 1, v42);
        v41[v36] = v42;
      }

      v6 = v64;
      v45 = *(v42 + 2);
      v44 = *(v42 + 3);
      if (v45 >= v44 >> 1)
      {
        v42 = sub_24FEBB01C(v44 > 1, v45 + 1, 1, v42);
        v41[v36] = v42;
      }

      v2 = v38;
      v46 = v69;
      v33 = v70;
      *(v42 + 2) = v45 + 1;
      v15 = v66;
      (*v59)(&v42[v65 + v45 * v73], v46, v66);
      v11 = v60;
      v7 = v61;
    }

LABEL_8:
    v31 += v32;
    if (!--v29)
    {
      goto LABEL_3;
    }

    v33(v11, v31, v7);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_24FEA92F8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v54 = sub_24FEDC8E4();
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24FEDC774();
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v48 - v13;
  MEMORY[0x28223BE20](v15);
  v57 = v48 - v16;
  MEMORY[0x28223BE20](v17);
  v55 = v48 - v18;
  v19 = sub_24FEDC6C4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  if (*(v25 + 16))
  {
    (*(v20 + 16))(v24, v25 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19, v22);
    sub_24FEA9A50();
    sub_24FEDC6D4();
    if (v64)
    {
      v50 = v64;
      v51 = a3;
      v49 = v63;
      v26 = (*(v20 + 8))(v24, v19);
      MEMORY[0x28223BE20](v26);
      v48[-2] = v65;
      v27 = sub_24FE8B764(sub_24FEA9AA4, &v48[-4], v25);
      v28 = v57;
      sub_24FEDC764();
      v29 = v56;
      v30 = v9;
      (*(v56 + 16))(v14, v28, v9);
      v31 = v27;
      v32 = *(v27 + 16);
      if (v32)
      {
        v48[2] = v31;
        v48[3] = v3;
        v33 = *(v6 + 16);
        v34 = v31 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v61 = *(v6 + 72);
        v62 = v33;
        v65 = v9;
        v58 = (v29 + 32);
        v59 = (v29 + 8);
        v60 = (v6 + 8);
        v48[1] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v35 = v53;
        v36 = v54;
        v37 = v52;
        do
        {
          v62(v35, v34, v36);
          sub_24FEA9AC4(&unk_27F3A6150, MEMORY[0x277CC8D88]);
          sub_24FEDC624();
          (*v60)(v35, v36);
          v38 = *v59;
          v39 = v65;
          (*v59)(v14, v65);
          (*v58)(v14, v37, v39);
          v34 += v61;
          --v32;
        }

        while (v32);

        v30 = v65;
        v40 = v56;
      }

      else
      {

        v40 = v29;
        v38 = *(v29 + 8);
      }

      v38(v57, v30);
      v42 = *(v40 + 32);
      v43 = v55;
      v42(v55, v14, v30);
      v44 = v51;
      _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
      v45 = type metadata accessor for ListImageItem();
      v46 = (v44 + *(v45 + 20));
      v47 = v50;
      *v46 = v49;
      v46[1] = v47;
      v42((v44 + *(v45 + 24)), v43, v30);
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    }

    else
    {
      (*(v20 + 8))(v24, v19);
      v41 = type metadata accessor for ListImageItem();
      (*(*(v41 - 8) + 56))(a3, 1, 1, v41);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24FEA98B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_24FEDC6B4();
  sub_24FE8BF90();
  sub_24FEDC7A4();
  return sub_24FE58B7C(v3, &qword_27F3A6160, &unk_24FEE4A80);
}

uint64_t sub_24FEA99EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListImageItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24FEA9A50()
{
  result = qword_27F3A6AF8;
  if (!qword_27F3A6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6AF8);
  }

  return result;
}

uint64_t sub_24FEA9AC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DocumentListImageElement.init(id:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for DocumentListImageElement() + 20);
  v7 = sub_24FEDCA64();
  result = (*(*(v7 - 8) + 32))(&a3[v6], a1, v7);
  *a3 = a2;
  return result;
}

uint64_t type metadata accessor for DocumentListImageElement()
{
  result = qword_27F3A6B28;
  if (!qword_27F3A6B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentListImageElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentListImageElement() + 20);
  v4 = sub_24FEDCA64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static DocumentListImageElement.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_24FEA9D50(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for DocumentListImageElement() + 20);

  return _s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0();
}

uint64_t sub_24FEA9CC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24FEDE844() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24FEA9D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListImageItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_16:
    v23 = 0;
    return v23 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_24FEAA3D0(v14, v11);
      sub_24FEAA3D0(v15, v7);
      if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v11[v17 + 8];
      v20 = &v7[v17];
      v21 = v18 == *v20 && v19 == *(v20 + 1);
      if (!v21 && (sub_24FEDE844() & 1) == 0)
      {
        break;
      }

      v22 = *(v4 + 24);
      v23 = sub_24FEDC684();
      sub_24FEAA434(v7);
      sub_24FEAA434(v11);
      if (v23)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    sub_24FEAA434(v7);
    sub_24FEAA434(v11);
    goto LABEL_16;
  }

  v23 = 1;
  return v23 & 1;
}

unint64_t sub_24FEA9F2C()
{
  result = qword_27F3A6B08;
  if (!qword_27F3A6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6B08);
  }

  return result;
}

uint64_t sub_24FEA9F84(uint64_t a1)
{
  *(a1 + 8) = sub_24FEAA050(&qword_27F3A6B10, type metadata accessor for DocumentListImageElement);
  result = sub_24FEAA050(&unk_27F3A6B18, type metadata accessor for DocumentListImageElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FEAA050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FEAA098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24FEDCA64();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24FEAA10C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_24FEA9D50(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return _s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0();
}

uint64_t sub_24FEAA190(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24FEDCA64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24FEAA250(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24FEDCA64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FEAA2F4()
{
  sub_24FEAA378();
  if (v0 <= 0x3F)
  {
    sub_24FEDCA64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24FEAA378()
{
  if (!qword_27F3A6B38)
  {
    type metadata accessor for ListImageItem();
    v0 = sub_24FEDE3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6B38);
    }
  }
}

uint64_t sub_24FEAA3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListImageItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEAA434(uint64_t a1)
{
  v2 = type metadata accessor for ListImageItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DocumentListImageItemsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F3A5B80 != -1)
  {
    swift_once();
  }

  *a1 = qword_27F3A6B48;
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6B50, &qword_24FEE6760) + 44);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6B58, &qword_24FEE6788);
  type metadata accessor for DocumentListImageView();
  sub_24FE58928(&qword_27F3A6B60, &qword_27F3A6B58, &qword_24FEE6788);
  sub_24FEAAE5C(&qword_27F3A5E30, MEMORY[0x277CC95F0]);
  sub_24FEAAE5C(&qword_27F3A6B68, type metadata accessor for DocumentListImageView);
  return sub_24FEDDE94();
}

uint64_t sub_24FEAA654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DocumentListImageView();
  sub_24FEAA3D0(a1, a2 + *(v4 + 20));
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_24FEAA6A4()
{
  v1 = sub_24FEDD3E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  if (*(v0 + 16) == 1)
  {
    v8 = v0[1];
  }

  else
  {
    v9 = *v0;

    sub_24FEDE4D4();
    v10 = sub_24FEDD714();
    sub_24FEDCF14();

    sub_24FEDD3D4();
    swift_getAtKeyPath();
    sub_24FEAB234();
    (*(v2 + 8))(v5, v1);
    return v12;
  }

  return v7;
}

uint64_t sub_24FEAA808@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (qword_27F3A5B80 != -1)
  {
    swift_once();
  }

  *a1 = qword_27F3A6B48;
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6B50, &qword_24FEE6760) + 44);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6B58, &qword_24FEE6788);
  type metadata accessor for DocumentListImageView();
  sub_24FE58928(&qword_27F3A6B60, &qword_27F3A6B58, &qword_24FEE6788);
  sub_24FEAAE5C(&qword_27F3A5E30, MEMORY[0x277CC95F0]);
  sub_24FEAAE5C(&qword_27F3A6B68, type metadata accessor for DocumentListImageView);
  return sub_24FEDDE94();
}

__n128 DocumentListImageView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24FEDD434();
  v21 = 0;
  sub_24FEAAB3C(v2, &v12);
  v24 = v14;
  v25 = v15;
  v22 = v12;
  v23 = v13;
  v27[2] = v14;
  v27[3] = v15;
  v27[4] = v16;
  v27[1] = v13;
  v26 = v16;
  v27[0] = v12;
  sub_24FE58B14(&v22, v19, &unk_27F3A6B70, &qword_24FEE6790);
  sub_24FE58B7C(v27, &unk_27F3A6B70, &qword_24FEE6790);
  *&v20[23] = v23;
  *&v20[39] = v24;
  *&v20[55] = v25;
  *&v20[71] = v26;
  *&v20[7] = v22;
  LOBYTE(v2) = v21;
  sub_24FEDDF44();
  sub_24FEDD294();
  *a1 = v4;
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = v2;
  v5 = *&v20[48];
  *(a1 + 49) = *&v20[32];
  *(a1 + 65) = v5;
  *(a1 + 81) = *&v20[64];
  *(a1 + 96) = *&v20[79];
  v6 = *&v20[16];
  *(a1 + 17) = *v20;
  *(a1 + 33) = v6;
  v7 = v12;
  v8 = v13;
  v9 = v15;
  *(a1 + 136) = v14;
  *(a1 + 120) = v8;
  *(a1 + 104) = v7;
  result = v16;
  v11 = v17;
  *(a1 + 200) = v18;
  *(a1 + 184) = v11;
  *(a1 + 168) = result;
  *(a1 + 152) = v9;
  return result;
}

uint64_t sub_24FEAAB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24FEDC774();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = a1 + *(type metadata accessor for DocumentListImageView() + 20);
  v10 = type metadata accessor for ListImageItem();
  v11 = (v9 + *(v10 + 20));
  v12 = *v11;
  v13 = v11[1];
  v14 = sub_24FEAA6A4();
  v15 = v14(v12, v13);

  (*(v5 + 16))(v8, v9 + *(v10 + 24), v4);
  v16 = sub_24FEDD9E4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_24FEDDC74();
  KeyPath = swift_getKeyPath();
  if (qword_27F3A5B80 != -1)
  {
    v30 = KeyPath;
    swift_once();
    KeyPath = v30;
  }

  v25 = qword_27F3A6B48;
  *&v34 = v16;
  *(&v34 + 1) = v18;
  LOBYTE(v35) = v20 & 1;
  *(&v35 + 1) = *v33;
  DWORD1(v35) = *&v33[3];
  *(&v35 + 1) = v22;
  *&v36 = KeyPath;
  *(&v36 + 1) = v23;
  *&v37 = qword_27F3A6B48;
  *(&v37 + 1) = sub_24FEAADB0;
  v38 = 0;
  *a2 = v15;
  v26 = v35;
  *(a2 + 8) = v34;
  v27 = v36;
  v28 = v37;
  *(a2 + 72) = 0;
  *(a2 + 56) = v28;
  *(a2 + 40) = v27;
  *(a2 + 24) = v26;
  v39[0] = v16;
  v39[1] = v18;
  v40 = v20 & 1;
  *&v41[3] = *&v33[3];
  *v41 = *v33;
  v42 = v22;
  v43 = KeyPath;
  v44 = v23;
  v45 = v25;
  v46 = sub_24FEAADB0;
  v47 = 0;

  sub_24FE58B14(&v34, v32, &qword_27F3A6BD0, &qword_24FEE6910);
  sub_24FE58B7C(v39, &qword_27F3A6BD0, &qword_24FEE6910);
}

uint64_t sub_24FEAADE0()
{
  sub_24FEAB248();
  result = sub_24FEDD524();
  qword_27F3A6B48 = result;
  return result;
}

uint64_t type metadata accessor for DocumentListImageView()
{
  result = qword_27F3A6B80;
  if (!qword_27F3A6B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FEAAE5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FEAAF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for ListImageItem();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FEAAFB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = type metadata accessor for ListImageItem();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FEAB058()
{
  sub_24FEAB0DC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ListImageItem();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24FEAB0DC()
{
  if (!qword_27F3A6B90)
  {
    v0 = sub_24FEDD074();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6B90);
    }
  }
}

unint64_t sub_24FEAB174()
{
  result = qword_27F3A6BB0;
  if (!qword_27F3A6BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6BB8, &qword_24FEE68D0);
    sub_24FE58928(&qword_27F3A6BC0, &qword_27F3A6BC8, &qword_24FEE68D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6BB0);
  }

  return result;
}

unint64_t sub_24FEAB248()
{
  result = qword_27F3A6BD8;
  if (!qword_27F3A6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6BD8);
  }

  return result;
}

uint64_t static ListImageAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *static ListImageAttribute.name;

  return v0;
}

uint64_t static ListImageAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static ListImageAttribute.name = a1;
  *&static ListImageAttribute.name[8] = a2;
}

uint64_t sub_24FEAB424()
{
  swift_beginAccess();
  v0 = *static ListImageAttribute.name;

  return v0;
}

unint64_t sub_24FEAB488()
{
  result = qword_27F3A6BF0;
  if (!qword_27F3A6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6BF0);
  }

  return result;
}

uint64_t ListImageItem.init(id:imageName:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_24FEDCA64();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for ListImageItem();
  v12 = (a5 + *(v11 + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = *(v11 + 24);
  v14 = sub_24FEDC774();
  v15 = *(*(v14 - 8) + 32);

  return v15(a5 + v13, a4, v14);
}

uint64_t type metadata accessor for ListImageItem()
{
  result = qword_27F3A6C00;
  if (!qword_27F3A6C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListImageItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ListImageItem.imageName.getter()
{
  v1 = (v0 + *(type metadata accessor for ListImageItem() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ListImageItem.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListImageItem() + 24);
  v4 = sub_24FEDC774();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static ListImageItem.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ListImageItem();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24FEDE844() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);

  return sub_24FEDC684();
}

uint64_t sub_24FEAB7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_24FEDE844() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);

  return sub_24FEDC684();
}

uint64_t sub_24FEAB870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
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
    v11 = sub_24FEDC774();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24FEAB9AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDCA64();
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
    v11 = sub_24FEDC774();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24FEABAD4()
{
  result = sub_24FEDCA64();
  if (v1 <= 0x3F)
  {
    result = sub_24FEDC774();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24FEABB60()
{
  sub_24FE81030();
  sub_24FEDD3F4();
  return v1;
}

uint64_t (*sub_24FEABB9C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v6 + 32))(v9 + v7, a1, a2);
  return sub_24FEAC490;
}

uint64_t sub_24FEABC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  (*(a5 + 24))(a1, a2, a4, a5, v15);
  (*(v10 + 16))(v13, v17, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v18 = sub_24FEDDE14();
  (*(v10 + 8))(v17, AssociatedTypeWitness);
  return v18;
}

uint64_t sub_24FEABE10@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t ListImageStyleConfiguration.Label.body.getter@<X0>(uint64_t *a1@<X8>)
{

  result = sub_24FEDDCB4();
  *a1 = result;
  return result;
}

uint64_t sub_24FEABE88@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  result = sub_24FEDDCB4();
  *a1 = result;
  return result;
}

uint64_t DefaultListImageStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v6 = sub_24FEDDC04();
  result = swift_getKeyPath();
  *a3 = a1;
  a3[1] = a2;
  a3[2] = result;
  a3[3] = v6;
  return result;
}

uint64_t sub_24FEABF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v6 = sub_24FEDDC04();
  result = swift_getKeyPath();
  *a3 = a1;
  a3[1] = a2;
  a3[2] = result;
  a3[3] = v6;
  return result;
}

uint64_t View.listImageStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a3 - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  sub_24FEABB9C(v10, a3, a5);
  v13 = v12;
  swift_getKeyPath();
  v15[0] = sub_24FEAC490;
  v15[1] = v13;
  sub_24FEDDAD4();
}

unint64_t sub_24FEAC188()
{
  result = qword_27F3A6C10;
  if (!qword_27F3A6C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6C18, &unk_24FEE6C98);
    sub_24FEAC22C();
    sub_24FEAC31C(&qword_27F3A6108, &qword_27F3A6110, &qword_24FEE4B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6C10);
  }

  return result;
}

unint64_t sub_24FEAC22C()
{
  result = qword_27F3A6C20;
  if (!qword_27F3A6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6C20);
  }

  return result;
}

uint64_t sub_24FEAC280(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6C28, &qword_24FEE6CA8);
  sub_24FEDD254();
  sub_24FEAC31C(&qword_27F3A6C30, &qword_27F3A6C28, &qword_24FEE6CA8);
  return swift_getWitnessTable();
}

uint64_t sub_24FEAC31C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24FEAC370(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24FEAC3B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24FEAC410()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FEAC4DC()
{

  sub_24FEDDC04();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6C18, &unk_24FEE6C98);
  sub_24FEAC188();
  return sub_24FEDDE14();
}

id sub_24FEAC56C()
{
  v0 = sub_24FEDD054();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  sub_24FE9A750(&v15 - v6);
  (*(v1 + 104))(v4, *MEMORY[0x277CDF3D0], v0);
  v8 = sub_24FEDD044();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);
  v10 = objc_opt_self();
  v11 = &selRef_blackColor;
  if ((v8 & 1) == 0)
  {
    v11 = &selRef_whiteColor;
  }

  v12 = [v10 *v11];
  v13 = [v12 CGColor];

  return v13;
}

uint64_t DocumentMathView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6C38, &qword_24FEE6D50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - v5;
  v7 = sub_24FEDD444();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v37 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6C40, &qword_24FEE6D58);
  v10 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v40 = v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6C48, &qword_24FEE6D60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v36 - v14;
  v16 = sub_24FEDCCA4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v36 - v21;
  sub_24FEACBCC(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24FE58B7C(v15, &qword_27F3A6C48, &qword_24FEE6D60);
    v23 = (v1 + *(type metadata accessor for DocumentMathView() + 20));
    v24 = v23[1];
    *&v42 = *v23;
    *(&v42 + 1) = v24;
    sub_24FEAD080();

    *v6 = sub_24FEDD9F4();
    *(v6 + 1) = v25;
    v6[16] = v26 & 1;
    *(v6 + 3) = v27;
    swift_storeEnumTagMultiPayload();
    sub_24FEAD0D4();
    return sub_24FEDD5F4();
  }

  else
  {
    v36[2] = a1;
    v29 = *(v17 + 32);
    v29(v22, v15, v16);
    (*(v17 + 16))(v19, v22, v16);
    v30 = *(v17 + 80);
    v36[1] = v3;
    v31 = (v30 + 16) & ~v30;
    v32 = swift_allocObject();
    v29((v32 + v31), v19, v16);
    (*(v38 + 104))(v37, *MEMORY[0x277CE00F0], v39);
    v33 = v40;
    sub_24FEDDDA4();
    sub_24FEDCBD4();
    CGRectGetWidth(v45);
    sub_24FEDCBD4();
    CGRectGetHeight(v46);
    sub_24FEDDF34();
    sub_24FEDD0F4();
    v34 = (v33 + *(v41 + 36));
    v35 = v43;
    *v34 = v42;
    v34[1] = v35;
    v34[2] = v44;
    sub_24FEAD2F4(v33, v6);
    swift_storeEnumTagMultiPayload();
    sub_24FEAD0D4();
    sub_24FEDD5F4();
    sub_24FE58B7C(v33, &qword_27F3A6C40, &qword_24FEE6D58);
    return (*(v17 + 8))(v22, v16);
  }
}

uint64_t sub_24FEACBCC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_24FEDCBC4();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CA0, &qword_24FEE6E20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - v7;
  v9 = sub_24FEDCBA4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_24FEDCC74();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CA8, &qword_24FEE6E28);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - v15;
  v17 = sub_24FEDCC24();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(type metadata accessor for DocumentMathView() + 20);
  v34 = v1;
  v23 = (v1 + v22);
  v24 = *v23;
  v25 = v23[1];

  sub_24FEDCC64();
  sub_24FEDCB94();
  sub_24FEDCC34();
  v26 = v8;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_24FE58B7C(v16, &qword_27F3A6CA8, &qword_24FEE6E28);
    v30 = 1;
    v31 = v38;
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    (*(v28 + 56))(v26, 1, 1, v29);
    v31 = v38;
    sub_24FEDCC14();
    sub_24FE58B7C(v26, &qword_27F3A6CA0, &qword_24FEE6E20);
    sub_24FEAC56C();
    sub_24FEDCBB4();
    sub_24FEDCC94();
    (*(v28 + 8))(v27, v29);
    (*(v18 + 8))(v21, v17);
    v30 = 0;
  }

  v32 = sub_24FEDCCA4();
  return (*(*(v32 - 8) + 56))(v31, v30, 1, v32);
}

uint64_t type metadata accessor for DocumentMathView()
{
  result = qword_27F3A6C78;
  if (!qword_27F3A6C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24FEAD080()
{
  result = qword_27F3A6C50;
  if (!qword_27F3A6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6C50);
  }

  return result;
}

unint64_t sub_24FEAD0D4()
{
  result = qword_27F3A6C58;
  if (!qword_27F3A6C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6C40, &qword_24FEE6D58);
    sub_24FEAD160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6C58);
  }

  return result;
}

unint64_t sub_24FEAD160()
{
  result = qword_27F3A6C60;
  if (!qword_27F3A6C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F3A6C68, &qword_24FEE6D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6C60);
  }

  return result;
}

uint64_t sub_24FEAD1C4()
{
  v1 = sub_24FEDCCA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24FEAD24C(uint64_t *a1)
{
  v3 = *(sub_24FEDCCA4() - 8);
  v4 = *a1;
  v6 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_24FEDD244();
}

uint64_t sub_24FEAD2F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6C40, &qword_24FEE6D58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEAD380(void *a1)
{
  v2 = sub_24FEDCBF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_24FEDCBE4();
  sub_24FEDCC54();
  sub_24FEDCC44();
  sub_24FEDCC84();
  sub_24FEDCC04();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_24FEAD4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24FEAD5A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24FEAD668()
{
  sub_24FE8A340();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24FEAD6E0()
{
  result = qword_27F3A6C90;
  if (!qword_27F3A6C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6C98, &qword_24FEE6E18);
    sub_24FEAD0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6C90);
  }

  return result;
}

uint64_t sub_24FEAD76C(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_24FEAD380(a1);
}

BOOL sub_24FEAD820(void *a1, uint64_t *a2)
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

void *sub_24FEAD850@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_24FEAD87C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24FEAD968@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24FEAD978@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24FEADC08(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_24FEAD9C0()
{
  result = qword_27F3A6CB0;
  if (!qword_27F3A6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6CB0);
  }

  return result;
}

unint64_t sub_24FEADA18()
{
  result = qword_27F3A6CB8;
  if (!qword_27F3A6CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6CB8);
  }

  return result;
}

unint64_t sub_24FEADA70()
{
  result = qword_27F3A6CC0;
  if (!qword_27F3A6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6CC0);
  }

  return result;
}

unint64_t sub_24FEADAC8()
{
  result = qword_27F3A6CC8;
  if (!qword_27F3A6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6CC8);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24FEADB4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24FEADB94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_24FEADC08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t static LaTeXMathRenderer.render(attributedString:displayScale:colorScheme:font:nonMathTextRenderProcess:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v43 = a3;
  v44 = a5;
  v40 = a4;
  v42 = a2;
  v8 = sub_24FEDC774();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - v13;
  v15 = sub_24FEDC5A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  sub_24FEDC574();
  sub_24FEAE034(v14);
  (*(v16 + 8))(v19, v15);
  v21 = v40;
  v22 = sub_24FEDE224();
  v41 = _s16MarkdownDocument18LaTeXMathExtractorO7extract4from15extractingTypesSayAC11TextSegmentOGSS_AC14ExtractionTypeVtFZ_0(v22, v23, 3);

  if (v21)
  {
    v24 = swift_allocObject();
    v25 = v44;
    *(v24 + 16) = v21;
    *(v24 + 24) = v25;
    v26 = sub_24FEB00A0;
  }

  else
  {
    v26 = sub_24FEAE430;
    v24 = 0;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v24;
  (*(v9 + 16))(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v8);
  v28 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v29 = swift_allocObject();
  (*(v9 + 32))(v29 + v28, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v30 = (v29 + ((v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_24FEAFF98;
  v30[1] = v27;
  sub_24FEB0078(v21);

  sub_24FEDD4B4();
  v31 = sub_24FEDD9D4();
  MEMORY[0x28223BE20](v31);
  *(&v39 - 6) = a6;
  v32 = v43;
  *(&v39 - 5) = v42;
  *(&v39 - 4) = v32;
  *(&v39 - 3) = sub_24FE8A9C4;
  v37 = sub_24FEAFE5C(v34, v35, v33 & 1, v36, sub_24FEB0088, (&v39 - 8), v41);

  return v37;
}

uint64_t sub_24FEAE034@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D00, &unk_24FEE71B0);
  v2 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = sub_24FEDC714();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D20, "а");
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  v20 = sub_24FEDC5A4();
  v21 = sub_24FEB0290(&qword_27F3A6D28, MEMORY[0x277CC8B30]);
  v37 = v20;
  v22 = v21;
  sub_24FEDE454();
  sub_24FEB0290(&qword_27F3A6D30, MEMORY[0x277CC8C20]);
  result = sub_24FEDE194();
  if (result)
  {
    sub_24FEDE474();
    sub_24FEB0290(&qword_27F3A6D18, MEMORY[0x277CC8C20]);
    result = sub_24FEDE184();
    if (result)
    {
      v33 = v1;
      v24 = *(v8 + 32);
      v24(v6, v19, v7);
      v31 = v12;
      v32 = v22;
      v25 = v8;
      v27 = v34;
      v26 = v35;
      v24(&v6[*(v35 + 48)], v11, v7);
      sub_24FE58B14(v6, v27, &qword_27F3A6D00, &unk_24FEE71B0);
      v28 = *(v26 + 48);
      v24(v15, v27, v7);
      v29 = *(v25 + 8);
      v29(v27 + v28, v7);
      sub_24FEB0220(v6, v27);
      v24(&v15[*(v31 + 36)], (v27 + *(v26 + 48)), v7);
      v29(v27, v7);
      sub_24FEDE494();
      return sub_24FE58B7C(v15, &qword_27F3A6160, &unk_24FEE4A80);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24FEAE430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24FEDC774();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  (*(v8 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  result = sub_24FEDD9E4();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_24FEAE508(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t (*a6)(char *), uint64_t a7)
{
  v75 = a7;
  v76 = a6;
  v72 = a3;
  v73 = a4;
  v78 = a2;
  v9 = sub_24FEDC814();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24FEDC8E4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v66 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D00, &unk_24FEE71B0);
  v15 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v63 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v61 = v60 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v19 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v65 = v60 - v20;
  v21 = sub_24FEDC774();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D08, &unk_24FEE71C0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v68 = v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v60 - v30;
  v32 = sub_24FEDC714();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v67 = v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v36);
  v80 = v60 - v38;
  v74 = v22;
  v39 = *(v22 + 16);
  v69 = a5;
  v39(v25, a5, v21, v37);
  sub_24FEB0290(&qword_27F3A6D10, MEMORY[0x277CC8C40]);
  v71 = a1;
  sub_24FEDC724();
  v77 = v33;
  v40 = *(v33 + 48);
  v79 = v32;
  if (v40(v31, 1, v32) == 1)
  {
    v41 = v31;
LABEL_5:
    v45 = v76;
    sub_24FE58B7C(v41, &qword_27F3A6D08, &unk_24FEE71C0);

    sub_24FEDC804();
    sub_24FEDC784();
    v46 = v45(v25);
    (*(v74 + 8))(v25, v21);
    return v46;
  }

  v42 = *(v77 + 32);
  v43 = v31;
  v44 = v79;
  v60[1] = v77 + 32;
  v60[0] = v42;
  v42(v80, v43, v79);
  (v39)(v25, v69, v21);
  v41 = v68;
  sub_24FEDC724();
  if (v40(v41, 1, v44) == 1)
  {
    (*(v77 + 8))(v80, v79);
    goto LABEL_5;
  }

  v47 = v77;
  v48 = v67;
  (v60[0])(v67, v41, v79);
  sub_24FEB0290(&qword_27F3A6D18, MEMORY[0x277CC8C20]);
  result = sub_24FEDE184();
  if (result)
  {
    v50 = *(v47 + 16);
    v51 = v61;
    v52 = v79;
    v50(v61, v80, v79);
    v78 = v21;
    v73 = v25;
    v53 = v64;
    v50((v51 + *(v64 + 48)), v48, v52);
    v54 = v63;
    sub_24FE58B14(v51, v63, &qword_27F3A6D00, &unk_24FEE71B0);
    v55 = *(v53 + 48);
    v56 = v65;
    v57 = v60[0];
    (v60[0])(v65, v54, v52);
    v58 = *(v47 + 8);
    v58(v54 + v55, v52);
    sub_24FEB0220(v51, v54);
    v57(v56 + *(v62 + 36), v54 + *(v53 + 48), v52);
    v58(v54, v52);
    sub_24FE8BF90();
    sub_24FEDC7A4();
    v59 = v73;
    sub_24FEDC7C4();
    v46 = v76(v59);
    (*(v74 + 8))(v59, v78);
    sub_24FE58B7C(v56, &qword_27F3A6160, &unk_24FEE4A80);
    v58(v67, v52);
    v58(v80, v52);
    return v46;
  }

  __break(1u);
  return result;
}

uint64_t static LaTeXMathRenderer.renderAllSegments(_:displayScale:colorScheme:font:nonMathStringRenderProcess:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  sub_24FEDD4B4();
  v12 = sub_24FEDD9D4();
  v18 = a6;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  return sub_24FEAFE5C(v12, v14, v13 & 1, v15, sub_24FEB02D8, v17, a1);
}

uint64_t sub_24FEAED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v105[1] = a6;
  v106 = a5;
  v115 = a3;
  v116 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CD0, &unk_24FEE8000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = v105 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CD8, "ܿ");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v108 = v105 - v13;
  v114 = sub_24FEDD924();
  v113 = *(v114 - 8);
  v14 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v110 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_24FEDD944();
  v109 = *(v111 - 8);
  v16 = *(v109 + 64);
  MEMORY[0x28223BE20](v111);
  v107 = v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CE0, "ܿ");
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (v105 - v24);
  v26 = *a2;
  v27 = *(a2 + 8);
  v29 = *(a2 + 16);
  v28 = *(a2 + 24);
  v30 = *(a2 + 32);
  v31 = *(a1 + 8);
  v120 = *a1;
  v121 = a1;
  v117 = *(a1 + 16);
  v32 = *(a1 + 24);
  v118 = v31;
  v119 = v32;
  if ((v30 & 1) == 0)
  {
    v39 = MEMORY[0x25305A440](v26, v27, v29, v28, v23);
    v41 = v40;
    *v25 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
    swift_storeEnumTagMultiPayload();
    v42 = (v25 + *(type metadata accessor for DocumentMathView() + 20));
    *v42 = v39;
    v42[1] = v41;
    KeyPath = swift_getKeyPath();
    v44 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CF0, &unk_24FEE7108) + 36));
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6338, &qword_24FEE5420) + 28);
    v46 = sub_24FEDD054();
    (*(*(v46 - 8) + 16))(v44 + v45, v115, v46);
    *v44 = KeyPath;
    v47 = swift_getKeyPath();
    v48 = (v25 + *(v18 + 36));
    v49 = v116;
    *v48 = v47;
    v48[1] = v49;

    v50 = sub_24FEDDCB4();
    sub_24FE58B14(v25, v21, &qword_27F3A6CE0, "ܿ");
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CF8, qword_24FEE7148);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    MEMORY[0x253059320](v21);
    sub_24FEDD114();
    v54 = sub_24FEDD104();
    if (v54)
    {
      v55 = v54;
      v56 = sub_24FEDDCA4();

      [v55 size];

      sub_24FE58B7C(v25, &qword_27F3A6CE0, "ܿ");
      v115 = v56;
    }

    else
    {
      sub_24FE58B7C(v25, &qword_27F3A6CE0, "ܿ");

      v115 = v50;
    }

    v66 = v107;
    sub_24FEDD934();
    sub_24FEDD4B4();
    v67 = sub_24FEDD9D4();
    v69 = v68;
    v71 = v70;
    v72 = sub_24FEDD994();
    v74 = v73;
    v76 = v75;
    sub_24FE56B94(v67, v69, v71 & 1);

    v77 = sub_24FEDD8F4();
    (*(*(v77 - 8) + 56))(v108, 1, 1, v77);
    v78 = sub_24FEDD9A4();
    (*(*(v78 - 8) + 56))(v112, 1, 1, v78);
    v79 = v110;
    sub_24FEDD914();
    sub_24FEDD904();
    sub_24FE56B94(v72, v74, v76 & 1);

    (*(v113 + 8))(v79, v114);
    (*(v109 + 8))(v66, v111);

    v80 = sub_24FEDDA04();
    v82 = v81;
    LOBYTE(v79) = v83;
    v84 = sub_24FEDD954();
    v86 = v85;
    LOBYTE(v66) = v87;
    sub_24FE56B94(v80, v82, v79 & 1);

    v122 = sub_24FEDDC74();
    v88 = sub_24FEDD974();
    v115 = v89;
    v116 = v88;
    v37 = v90;
    v114 = v91;
    sub_24FE56B94(v84, v86, v66 & 1);

    goto LABEL_9;
  }

  v33 = v106;
  if (!v106)
  {
    v122 = v26;
    v123 = v27;
    v124 = v29;
    v125 = v28;
    sub_24FEB00DC();

    v57 = sub_24FEDD9F4();
    v59 = v58;
    v61 = v60;
    v62 = sub_24FEDD994();
    v115 = v63;
    v116 = v62;
    v37 = v64;
    v114 = v65;
    sub_24FE56B94(v57, v59, v61 & 1);
LABEL_9:

    goto LABEL_10;
  }

  sub_24FEB0210();
  sub_24FEB0078(v33);
  v34 = v33(v26, v27, v29, v28);
  v115 = v35;
  v116 = v34;
  v37 = v36;
  v114 = v38;
  sub_24FE86C84(v33);
  sub_24FEB0218();
LABEL_10:
  v92 = v120;
  v93 = v118;
  v94 = v37;
  v95 = v117;
  v97 = v115;
  v96 = v116;
  v112 = sub_24FEDD984();
  v111 = v98;
  v100 = v99;
  v113 = v101;
  sub_24FE56B94(v96, v97, v94 & 1);

  sub_24FE56B94(v92, v93, v95);

  v103 = v121;
  v104 = v111;
  *v121 = v112;
  v103[1] = v104;
  *(v103 + 16) = v100 & 1;
  v103[3] = v113;
  return result;
}

uint64_t static LaTeXMathRenderer.renderSegment(segment:displayScale:colorScheme:font:nonMathStringRenderProcess:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v83 = a2;
  v84 = a3;
  v6 = *(a1 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CD0, &unk_24FEE8000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CD8, "ܿ");
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v75 - v12;
  v13 = sub_24FEDD924();
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = *(v81 + 64);
  MEMORY[0x28223BE20](v13);
  v78 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_24FEDD944();
  v77 = *(v79 - 8);
  v16 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CE0, "ܿ");
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v75 - v24);
  v27 = *a1;
  v26 = *(a1 + 8);
  v28 = *(a1 + 16);
  if ((*(a1 + 32) & 1) == 0)
  {
    v30 = MEMORY[0x25305A440](*a1, *(a1 + 8), *(a1 + 16), v6, v23);
    v32 = v31;
    *v25 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
    swift_storeEnumTagMultiPayload();
    v33 = (v25 + *(type metadata accessor for DocumentMathView() + 20));
    *v33 = v30;
    v33[1] = v32;
    KeyPath = swift_getKeyPath();
    v35 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CF0, &unk_24FEE7108) + 36));
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6338, &qword_24FEE5420) + 28);
    v37 = sub_24FEDD054();
    (*(*(v37 - 8) + 16))(v35 + v36, v83, v37);
    *v35 = KeyPath;
    v38 = swift_getKeyPath();
    v39 = (v25 + *(v18 + 36));
    v40 = v84;
    *v39 = v38;
    v39[1] = v40;

    sub_24FEDDCB4();
    sub_24FE58B14(v25, v21, &qword_27F3A6CE0, "ܿ");
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CF8, qword_24FEE7148);
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    MEMORY[0x253059320](v21);
    sub_24FEDD114();
    v44 = sub_24FEDD104();
    if (v44)
    {
      v45 = v44;
      sub_24FEDDCA4();

      [v45 size];

      sub_24FE58B7C(v25, &qword_27F3A6CE0, "ܿ");
    }

    else
    {
      sub_24FE58B7C(v25, &qword_27F3A6CE0, "ܿ");
    }

    v51 = v75;
    sub_24FEDD934();
    sub_24FEDD4B4();
    v52 = sub_24FEDD9D4();
    v54 = v53;
    v56 = v55;
    v57 = sub_24FEDD994();
    v59 = v58;
    v61 = v60;
    sub_24FE56B94(v52, v54, v56 & 1);

    v62 = sub_24FEDD8F4();
    (*(*(v62 - 8) + 56))(v76, 1, 1, v62);
    v63 = sub_24FEDD9A4();
    (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
    v64 = v78;
    sub_24FEDD914();
    sub_24FEDD904();
    sub_24FE56B94(v57, v59, v61 & 1);

    (*(v81 + 8))(v64, v82);
    (*(v77 + 8))(v51, v79);

    v65 = sub_24FEDDA04();
    v67 = v66;
    LOBYTE(v57) = v68;
    v69 = sub_24FEDD954();
    v71 = v70;
    v73 = v72;
    sub_24FE56B94(v65, v67, v57 & 1);

    v85[0] = sub_24FEDDC74();
    v29 = sub_24FEDD974();
    sub_24FE56B94(v69, v71, v73 & 1);

    goto LABEL_9;
  }

  if (!a4)
  {
    v85[0] = *a1;
    v85[1] = v26;
    v85[2] = v28;
    v85[3] = v6;
    sub_24FEB00DC();

    v46 = sub_24FEDD9F4();
    v48 = v47;
    v50 = v49;
    v29 = sub_24FEDD994();
    sub_24FE56B94(v46, v48, v50 & 1);
LABEL_9:

    return v29;
  }

  sub_24FEB0130(a1, v85);
  sub_24FEB0078(a4);
  v29 = a4(v27, v26, v28, v6);
  sub_24FE86C84(a4);
  sub_24FEB018C(a1);
  return v29;
}

uint64_t sub_24FEAFE5C(uint64_t result, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t *, void *), uint64_t a6, uint64_t a7)
{
  v19 = a4;
  v20 = a5;
  v16 = result;
  v17 = a2;
  v18 = a3;
  v8 = *(a7 + 16);
  if (v8)
  {
    for (i = (a7 + 64); ; i += 40)
    {
      v10 = *(i - 3);
      v11 = *(i - 2);
      v12 = *(i - 1);
      v13 = *i;
      v14[0] = *(i - 4);
      v14[1] = v10;
      v14[2] = v11;
      v14[3] = v12;
      v15 = v13;
      sub_24FEB0210();
      v20(&v16, v14);
      if (v7)
      {
        break;
      }

      sub_24FEB0218();
      if (!--v8)
      {
        return v16;
      }
    }

    sub_24FEB0218();
    sub_24FE56B94(v16, v17, v18);
  }

  return result;
}

uint64_t sub_24FEAFF60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24FEAFF98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_24FEAFFD8()
{
  v1 = sub_24FEDC774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24FEB0078(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24FEB00A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

unint64_t sub_24FEB00DC()
{
  result = qword_27F3A6CE8;
  if (!qword_27F3A6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6CE8);
  }

  return result;
}

uint64_t sub_24FEB0220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D00, &unk_24FEE71B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEB0290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *LaTeXMathTracker.instance.unsafeMutableAddressor()
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  return &static LaTeXMathTracker.instance;
}

uint64_t LaTeXMathTracker.containsMath.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  return v1;
}

uint64_t sub_24FEB03EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  *a2 = v5;
  return result;
}

uint64_t sub_24FEB046C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24FEDCFF4();
}

uint64_t LaTeXMathTracker.containsMath.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24FEDCFF4();
}

void (*LaTeXMathTracker.containsMath.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24FEDCFD4();
  return sub_24FEB05F4;
}

uint64_t LaTeXMathTracker.$containsMath.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D48, &qword_24FEE7220);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D40, &qword_24FEE7218);
  sub_24FEDCFC4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LaTeXMathTracker.$containsMath.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D48, &qword_24FEE7220);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16MarkdownDocument16LaTeXMathTracker__containsMath;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D40, &qword_24FEE7218);
  sub_24FEDCFB4();
  swift_endAccess();
  return sub_24FEB08BC;
}

uint64_t LaTeXMathTracker.snapshotImageData.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  return v1;
}

double sub_24FEB0984@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_24FEB0A04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FE62C80(v2, v3);
  return sub_24FEDCFF4();
}

uint64_t LaTeXMathTracker.snapshotImageData.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24FEDCFF4();
}

void (*LaTeXMathTracker.snapshotImageData.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24FEDCFD4();
  return sub_24FEB1588;
}

uint64_t sub_24FEB0BC8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_24FEDCFB4();
  return swift_endAccess();
}

uint64_t LaTeXMathTracker.$snapshotImageData.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6D68, &qword_24FEE7280);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D60, &qword_24FEE7278);
  sub_24FEDCFC4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LaTeXMathTracker.$snapshotImageData.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6D68, &qword_24FEE7280);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16MarkdownDocument16LaTeXMathTracker__snapshotImageData;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D60, &qword_24FEE7278);
  sub_24FEDCFB4();
  swift_endAccess();
  return sub_24FEB158C;
}

uint64_t sub_24FEB0EE8()
{
  v0 = type metadata accessor for LaTeXMathTracker();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_24FEDCFA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D50, &qword_24FEE7228);
  result = sub_24FEDCFA4();
  static LaTeXMathTracker.instance = v3;
  return result;
}

uint64_t static LaTeXMathTracker.instance.getter()
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static LaTeXMathTracker.instance.setter(uint64_t a1)
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static LaTeXMathTracker.instance = a1;
}

uint64_t (*static LaTeXMathTracker.instance.modify())()
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

Swift::Void __swiftcall LaTeXMathTracker.reset()()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFF4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFF4();
}

uint64_t LaTeXMathTracker.deinit()
{
  v1 = OBJC_IVAR____TtC16MarkdownDocument16LaTeXMathTracker__containsMath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D40, &qword_24FEE7218);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MarkdownDocument16LaTeXMathTracker__snapshotImageData;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D60, &qword_24FEE7278);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LaTeXMathTracker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MarkdownDocument16LaTeXMathTracker__containsMath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D40, &qword_24FEE7218);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MarkdownDocument16LaTeXMathTracker__snapshotImageData;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D60, &qword_24FEE7278);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24FEB1374@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LaTeXMathTracker();
  result = sub_24FEDCF94();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LaTeXMathTracker()
{
  result = qword_27F3A6D78;
  if (!qword_27F3A6D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FEB1408()
{
  sub_24FEB14D4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24FEB1524();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_24FEB14D4()
{
  if (!qword_27F3A6D88)
  {
    v0 = sub_24FEDD004();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6D88);
    }
  }
}

void sub_24FEB1524()
{
  if (!qword_27F3A6D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6D50, &qword_24FEE7228);
    v0 = sub_24FEDD004();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6D90);
    }
  }
}

uint64_t sub_24FEB1590@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v2 = *(v1 - 8);
  v55 = v1;
  v56 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v49 - v6;
  MEMORY[0x28223BE20](v7);
  v53 = &v49 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v63 = sub_24FEDCD44();
  v12 = *(v63 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v63);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB0, &qword_24FEE7318);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v49 - v18;
  v20 = sub_24FEDCB14();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB8, &qword_24FEE7320);
  v62 = *(v59 - 8);
  v25 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v58 = &v49 - v29;
  v66 = 96;
  v67 = 0xE100000000000000;
  v30 = sub_24FEB63B0();
  MEMORY[0x253058CD0](v68, &v66, MEMORY[0x277D837D0], v30);
  sub_24FEDCD54();
  sub_24FEDCD84();
  v31 = sub_24FEDCD94();
  (*(*(v31 - 8) + 56))(v19, 0, 1, v31);
  sub_24FEDCB04();
  sub_24FEB6404(&qword_27F3A6ED0, MEMORY[0x277D853D0]);
  v32 = MEMORY[0x277D83E40];
  sub_24FEDCD34();
  v33 = *(v12 + 8);
  v60 = v12 + 8;
  v61 = v33;
  v33(v15, v63);
  sub_24FEB62E4(v19);
  (*(v21 + 8))(v24, v20);
  MEMORY[0x253058D80](v11, v32);
  v34 = sub_24FE58928(&qword_27F3A6DF0, &qword_27F3A6DB8, &qword_24FEE7320);
  v35 = v59;
  MEMORY[0x253058CD0](v27, v59, v34);
  v36 = *(v62 + 8);
  v62 += 8;
  v51 = v36;
  v36(v27, v35);
  v64 = 96;
  v65 = 0xE100000000000000;
  v49 = v30;
  MEMORY[0x253058CD0](&v66, &v64, MEMORY[0x277D837D0], v30);
  v64 = v68[0];
  v65 = v68[1];
  v50 = v11;
  sub_24FEDCAE4();

  sub_24FEDCB04();
  sub_24FE58928(&qword_27F3A6DE0, &qword_27F3A6DC0, &qword_24FEE7328);
  v37 = v52;
  v38 = v55;
  sub_24FEDCD24();
  v39 = v54;
  sub_24FEDCD24();
  v40 = v53;
  v41 = v37;
  v42 = v38;
  v43 = v15;
  sub_24FEDCCE4();
  v44 = *(v56 + 8);
  v44(v39, v42);
  v45 = v41;
  v44(v41, v42);
  v61(v43, v63);
  v47 = v66;
  v46 = v67;
  sub_24FEDCB04();
  v64 = v47;
  v65 = v46;
  sub_24FEDCD24();
  sub_24FEDCD24();

  sub_24FEDCCE4();
  v44(v39, v42);
  v44(v45, v42);
  v61(v43, v63);
  v44(v40, v42);
  v44(v50, v42);
  return v51(v58, v59);
}

uint64_t sub_24FEB1CC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
}

uint64_t sub_24FEB1CF0@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v99 = *(v97 - 8);
  v1 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  v101 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v100 = &v93 - v4;
  MEMORY[0x28223BE20](v5);
  v121 = &v93 - v6;
  MEMORY[0x28223BE20](v7);
  v116 = &v93 - v8;
  MEMORY[0x28223BE20](v9);
  v127 = &v93 - v10;
  MEMORY[0x28223BE20](v11);
  v113 = &v93 - v12;
  MEMORY[0x28223BE20](v13);
  v114 = &v93 - v14;
  MEMORY[0x28223BE20](v15);
  v111 = &v93 - v16;
  v129 = sub_24FEDCD44();
  v131 = *(v129 - 8);
  v17 = *(v131 + 64);
  MEMORY[0x28223BE20](v129);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB0, &qword_24FEE7318);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v93 - v22;
  v24 = sub_24FEDCB14();
  v124 = *(v24 - 8);
  v25 = *(v124 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB8, &qword_24FEE7320);
  v125 = *(v28 - 8);
  v29 = *(v125 + 64);
  MEMORY[0x28223BE20](v28);
  v98 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v126 = &v93 - v32;
  MEMORY[0x28223BE20](v33);
  v120 = &v93 - v34;
  MEMORY[0x28223BE20](v35);
  v122 = &v93 - v36;
  v37 = sub_24FEDCB54();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v96 = &v93 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v93 - v42;
  MEMORY[0x28223BE20](v44);
  v119 = &v93 - v45;
  v115 = v43;
  sub_24FEDCB34();
  v110 = sub_24FEB6404(&qword_27F3A6EF0, MEMORY[0x277D853F0]);
  v109 = v37;
  MEMORY[0x253058CD0](v43, v37, v110);
  v46 = *(v38 + 8);
  v117 = v38 + 8;
  v118 = v46;
  v46(v43, v37);
  v134 = 6316128;
  v135 = 0xE300000000000000;
  v108 = sub_24FEB63B0();
  MEMORY[0x253058CD0](v136, &v134, MEMORY[0x277D837D0], v108);
  sub_24FEDCD64();
  v106 = sub_24FEDCD94();
  v47 = *(v106 - 8);
  v105 = *(v47 + 56);
  v107 = v47 + 56;
  v105(v23, 1, 1, v106);
  sub_24FEDCB04();
  v104 = sub_24FEB6404(&qword_27F3A6ED0, MEMORY[0x277D853D0]);
  v48 = MEMORY[0x277D83E40];
  v49 = v111;
  v95 = v24;
  sub_24FEDCD34();
  v50 = *(v131 + 8);
  v131 += 8;
  v128 = v50;
  v50(v19, v129);
  sub_24FEB62E4(v23);
  v51 = *(v124 + 8);
  v124 += 8;
  v103 = v51;
  v51(v27, v24);
  v52 = v120;
  v53 = v48;
  MEMORY[0x253058D80](v49, v48);
  v123 = sub_24FE58928(&qword_27F3A6DF0, &qword_27F3A6DB8, &qword_24FEE7320);
  v130 = v28;
  MEMORY[0x253058CD0](v52, v28, v123);
  v54 = *(v125 + 8);
  v125 += 8;
  v112 = v54;
  v54(v52, v28);
  v55 = v27;
  sub_24FEDCD74();
  v56 = v23;
  sub_24FEDCD84();
  v105(v23, 0, 1, v106);
  sub_24FEDCB04();
  v94 = v27;
  v57 = v95;
  sub_24FEDCD34();
  v58 = v128;
  v59 = v129;
  v128(v19, v129);
  sub_24FEB62E4(v56);
  v103(v55, v57);
  v60 = v126;
  MEMORY[0x253058D80](v49, v53);
  v61 = v60;
  v62 = v60;
  v63 = v130;
  MEMORY[0x253058CD0](v61, v130, v123);
  v64 = v62;
  v65 = v112;
  v112(v64, v63);
  v66 = v94;
  sub_24FEDCD64();
  v105(v56, 1, 1, v106);
  sub_24FEDCB04();
  sub_24FEDCD34();
  v58(v19, v59);
  sub_24FEB62E4(v56);
  v103(v66, v57);
  v67 = v98;
  MEMORY[0x253058D80](v49, MEMORY[0x277D83E40]);
  v68 = v130;
  MEMORY[0x253058CD0](v67, v130, v123);
  v65(v67, v68);
  v132 = 6316128;
  v133 = 0xE300000000000000;
  MEMORY[0x253058CD0](&v134, &v132, MEMORY[0x277D837D0], v108);
  v69 = v96;
  sub_24FEDCB44();
  v70 = v109;
  MEMORY[0x253058CD0](v69, v109, v110);
  v118(v69, v70);
  sub_24FEDCAE4();
  v71 = v136[0];
  v72 = v136[1];
  sub_24FEDCB04();
  v132 = v71;
  v133 = v72;
  sub_24FE58928(&qword_27F3A6DE0, &qword_27F3A6DC0, &qword_24FEE7328);
  v73 = v113;
  v74 = v97;
  sub_24FEDCD24();
  v75 = v127;
  sub_24FEDCD24();

  sub_24FEDCCE4();
  v76 = *(v99 + 8);
  v76(v75, v74);
  v76(v73, v74);
  v77 = v129;
  v128(v19, v129);
  sub_24FEDCB04();
  sub_24FEDCD24();
  v78 = v116;
  sub_24FEDCD24();
  v79 = v127;
  sub_24FEDCCE4();
  v76(v78, v74);
  v76(v79, v74);
  v80 = v128;
  v128(v19, v77);
  sub_24FEDCB04();
  sub_24FEDCD24();
  v81 = v121;
  sub_24FEDCD24();
  sub_24FEDCCE4();
  v76(v81, v74);
  v76(v78, v74);
  v80(v19, v129);
  sub_24FEDCB04();
  sub_24FEDCD24();
  v82 = v100;
  sub_24FEDCD24();
  sub_24FEDCCE4();
  v76(v82, v74);
  v76(v81, v74);
  v80(v19, v129);
  v84 = v134;
  v83 = v135;
  sub_24FEDCB04();
  v132 = v84;
  v133 = v83;
  sub_24FEDCD24();
  v85 = v101;
  sub_24FEDCD24();

  sub_24FEDCCE4();
  v76(v85, v74);
  v76(v82, v74);
  v86 = v129;
  v128(v19, v129);
  sub_24FEDCB04();
  sub_24FEDCD24();
  v87 = v115;
  v88 = v109;
  sub_24FEDCD24();
  sub_24FEDCCE4();
  v76(v85, v74);
  v76(v82, v74);
  v128(v19, v86);
  v76(v121, v74);
  v76(v116, v74);
  v76(v127, v74);
  v76(v113, v74);
  v76(v114, v74);
  v76(v111, v74);
  v89 = v118;
  v118(v87, v88);
  v90 = v130;
  v91 = v112;
  v112(v126, v130);
  v91(v120, v90);
  v91(v122, v90);
  return v89(v119, v88);
}

uint64_t sub_24FEB2C44@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB0, &qword_24FEE7318);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v52 - v3;
  v5 = sub_24FEDCB14();
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB8, &qword_24FEE7320);
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v15 = *(v14 - 8);
  v62 = v14;
  v63 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v55 = &v52 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC8, &qword_24FEE7330);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v57 = &v52 - v23;
  v65 = sub_24FEDCD44();
  v24 = *(v65 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v65);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v52 = &v52 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DD0, &qword_24FEE7338);
  v59 = *(v30 - 8);
  v31 = *(v59 + 64);
  MEMORY[0x28223BE20](v30);
  v53 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v54 = &v52 - v34;
  sub_24FEDCB04();
  sub_24FEDCD74();
  sub_24FEDCD84();
  v35 = sub_24FEDCD94();
  (*(*(v35 - 8) + 56))(v4, 0, 1, v35);
  sub_24FEDCB04();
  sub_24FEB6404(&qword_27F3A6ED0, MEMORY[0x277D853D0]);
  v36 = MEMORY[0x277D83E40];
  sub_24FEDCD34();
  v37 = *(v24 + 8);
  v37(v27, v65);
  sub_24FEB62E4(v4);
  (*(v60 + 8))(v8, v5);
  v38 = v56;
  MEMORY[0x253058D80](v18, v36);
  v39 = sub_24FE58928(&qword_27F3A6DF0, &qword_27F3A6DB8, &qword_24FEE7320);
  v40 = v58;
  MEMORY[0x253058CD0](v38, v9, v39);
  v41 = *(v61 + 8);
  v41(v38, v9);
  v42 = v55;
  sub_24FEDCAE4();
  v41(v40, v9);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DD8, &qword_24FEE7340);
  sub_24FE58928(&qword_27F3A6DE0, &qword_27F3A6DC0, &qword_24FEE7328);
  v44 = v62;
  v45 = v57;
  v46 = v52;
  sub_24FEDCD04();
  (*(v63 + 8))(v42, v44);
  v37(v46, v65);
  v47 = v53;
  MEMORY[0x253058CF0](v45, v43);
  v48 = sub_24FE58928(&qword_27F3A6E68, &qword_27F3A6DD0, &qword_24FEE7338);
  v49 = v54;
  MEMORY[0x253058CD0](v47, v30, v48);
  v50 = *(v59 + 8);
  v50(v47, v30);
  sub_24FEDCAE4();
  return (v50)(v49, v30);
}

uint64_t sub_24FEB3354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a1;
  v41 = a3;
  v45 = a4;
  v5 = sub_24FEDCD44();
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v46 = &v35 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC8, &qword_24FEE7330);
  v44 = *(v17 - 8);
  v18 = *(v44 + 64);
  MEMORY[0x28223BE20](v17);
  v47 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  v52 = a2;
  v53 = 0xE200000000000000;
  v23 = sub_24FEB63B0();
  v24 = MEMORY[0x277D837D0];
  v38 = v23;
  MEMORY[0x253058CD0](v54, &v52, MEMORY[0x277D837D0], v23);
  v25 = sub_24FE58928(&qword_27F3A6DE8, &qword_27F3A6DC8, &qword_24FEE7330);
  v39 = v22;
  v36 = v17;
  v37 = v25;
  MEMORY[0x253058CD0](v40, v17, v25);
  v50 = v41;
  v51 = 0xE200000000000000;
  MEMORY[0x253058CD0](&v52, &v50, v24, v23);
  v50 = v54[0];
  v51 = v54[1];
  sub_24FEDCAE4();

  sub_24FEDCB04();
  sub_24FE58928(&qword_27F3A6DE0, &qword_27F3A6DC0, &qword_24FEE7328);
  v26 = v42;
  sub_24FEDCD24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DD8, &qword_24FEE7340);
  sub_24FEDCCE4();
  v27 = *(v43 + 8);
  v27(v14, v26);
  v28 = *(v49 + 8);
  v49 += 8;
  v28(v9, v48);
  v29 = v52;
  v30 = v53;
  sub_24FEDCB04();
  v50 = v29;
  v51 = v30;
  sub_24FEDCD24();

  v31 = v47;
  v32 = v36;
  sub_24FEDCCE4();
  v27(v14, v26);
  v28(v9, v48);
  v33 = *(v44 + 8);
  v33(v31, v32);
  v27(v46, v26);
  return (v33)(v39, v32);
}

uint64_t sub_24FEB37AC@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_24FEDCD44();
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v50 = *(v43 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v43);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v39 - v8;
  MEMORY[0x28223BE20](v9);
  v47 = &v39 - v10;
  v46 = sub_24FEDCB14();
  v54 = *(v46 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v46);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6EC0, &qword_24FEE7490);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  v42 = sub_24FE58928(&qword_27F3A6DE0, &qword_27F3A6DC0, &qword_24FEE7328);
  sub_24FEDCB24();
  v25 = sub_24FE58928(&qword_27F3A6EC8, &qword_27F3A6EC0, &qword_24FEE7490);
  v41 = v24;
  MEMORY[0x253058CD0](v21, v17, v25);
  v26 = *(v18 + 8);
  v44 = v18 + 8;
  v45 = v26;
  v40 = v17;
  v26(v21, v17);
  sub_24FEDCD74();
  v27 = sub_24FEB6404(&qword_27F3A6ED0, MEMORY[0x277D853D0]);
  v28 = v16;
  v29 = v46;
  MEMORY[0x253058CD0](v13, v46, v27);
  v30 = *(v54 + 8);
  v54 += 8;
  v30(v13, v29);
  v31 = v47;
  sub_24FEDCAE4();
  sub_24FEDCB04();
  v32 = v48;
  v33 = v31;
  v34 = v43;
  sub_24FEDCD24();
  v35 = v49;
  sub_24FEDCD24();
  v36 = v35;
  sub_24FEDCCE4();
  v37 = *(v50 + 8);
  v37(v36, v34);
  v37(v32, v34);
  (*(v52 + 8))(v4, v53);
  v37(v33, v34);
  v30(v28, v29);
  return v45(v41, v40);
}

uint64_t sub_24FEB3CD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6ED8, &qword_24FEE7498);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_24FEDCB74();
  v8 = sub_24FE58928(&qword_27F3A6EE0, &qword_27F3A6ED8, &qword_24FEE7498);
  MEMORY[0x253058CD0](v4, v0, v8);
  v9 = *(v1 + 8);
  v9(v4, v0);
  sub_24FEDCAE4();
  return (v9)(v7, v0);
}

uint64_t sub_24FEB3E68@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v38 = sub_24FEDCD44();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6ED8, &qword_24FEE7498);
  v34 = *(v31 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v37 = &v30 - v12;
  MEMORY[0x28223BE20](v13);
  v36 = &v30 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v47 = 23388;
  v48 = 0xE200000000000000;
  v18 = sub_24FEB63B0();
  v19 = MEMORY[0x277D837D0];
  MEMORY[0x253058CB0](v49, &v47, MEMORY[0x277D837D0], v18);
  v45 = 10332;
  v46 = 0xE200000000000000;
  MEMORY[0x253058CB0](&v47, &v45, v19, v18);
  v43 = 9252;
  v44 = 0xE200000000000000;
  MEMORY[0x253058CB0](&v45, &v43, v19, v18);
  v41 = 96;
  v42 = 0xE100000000000000;
  MEMORY[0x253058CB0](&v43, &v41, v19, v18);
  v39 = 6316128;
  v40 = 0xE300000000000000;
  MEMORY[0x253058CB0](&v41, &v39, v19, v18);
  v39 = v49[0];
  v40 = v49[1];
  v32 = v17;
  sub_24FEDCAC4();

  v39 = v47;
  v40 = v48;
  sub_24FEDCB04();
  sub_24FE58928(&qword_27F3A6EE0, &qword_27F3A6ED8, &qword_24FEE7498);
  sub_24FEDCD14();
  v20 = *(v5 + 8);
  v21 = v38;
  v20(v8, v38);
  v22 = v20;
  v30 = v20;

  v23 = v4;
  MEMORY[0x253058D60](v4, MEMORY[0x277D83E40]);
  v39 = v45;
  v40 = v46;
  sub_24FEDCB04();
  v24 = v31;
  sub_24FEDCD14();
  v22(v8, v21);

  MEMORY[0x253058D60](v23, MEMORY[0x277D83E40]);
  v39 = v43;
  v40 = v44;
  sub_24FEDCB04();
  sub_24FEDCD14();
  v25 = v30;
  v30(v8, v21);

  v26 = v33;
  v27 = MEMORY[0x277D83E40];
  MEMORY[0x253058D60](v23, MEMORY[0x277D83E40]);
  v39 = v41;
  v40 = v42;
  sub_24FEDCB04();
  sub_24FEDCD14();
  v25(v8, v38);

  MEMORY[0x253058D60](v23, v27);
  v28 = *(v34 + 8);
  v28(v26, v24);
  v28(v37, v24);
  v28(v36, v24);
  return (v28)(v32, v24);
}

uint64_t sub_24FEB43A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v109 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v90 = a2;
  v89 = a1;
  v108 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E10, &qword_24FEE7410);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v107 = v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E18, &qword_24FEE7418);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v103 = v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E20, &qword_24FEE7420);
  v14 = *(v13 - 8);
  v105 = v13;
  v106 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v102 = v84 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E28, &qword_24FEE7428);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v98 = v84 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E30, &qword_24FEE7430);
  v104 = *(v100 - 8);
  v20 = *(v104 + 64);
  MEMORY[0x28223BE20](v100);
  v119 = v84 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E38, &qword_24FEE7438);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v92 = v84 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E40, &qword_24FEE7440);
  v101 = *(v120 - 8);
  v25 = *(v101 + 64);
  MEMORY[0x28223BE20](v120);
  v116 = v84 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E48, &qword_24FEE7448);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v87 = v84 - v29;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E50, &qword_24FEE7450);
  v99 = *(v118 - 8);
  v30 = *(v99 + 64);
  MEMORY[0x28223BE20](v118);
  v112 = v84 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E58, &qword_24FEE7458);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v85 = v84 - v34;
  v35 = sub_24FEDCD44();
  v36 = *(v35 - 8);
  v122 = v35;
  v123 = v36;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = v84 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E60, &qword_24FEE7460);
  v97 = *(v117 - 8);
  v40 = *(v97 + 64);
  MEMORY[0x28223BE20](v117);
  v110 = v84 - v41;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC8, &qword_24FEE7330);
  v96 = *(v121 - 8);
  v42 = *(v96 + 64);
  MEMORY[0x28223BE20](v121);
  v113 = v84 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v114 = v84 - v45;
  MEMORY[0x28223BE20](v46);
  v115 = v84 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DD0, &qword_24FEE7338);
  v91 = *(v48 - 8);
  v49 = *(v91 + 64);
  MEMORY[0x28223BE20](v48);
  v86 = v84 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v111 = v84 - v52;
  MEMORY[0x28223BE20](v53);
  v55 = v84 - v54;
  v56 = sub_24FE58928(&qword_27F3A6E68, &qword_27F3A6DD0, &qword_24FEE7338);
  v88 = v55;
  MEMORY[0x253058CB0](v89, v48, v56);
  MEMORY[0x253058CB0](v90, v48, v56);
  v57 = sub_24FE58928(&qword_27F3A6DE8, &qword_27F3A6DC8, &qword_24FEE7330);
  v58 = v121;
  v90 = v57;
  MEMORY[0x253058CB0](v93, v121, v57);
  MEMORY[0x253058CB0](v94, v58, v57);
  MEMORY[0x253058CB0](v95, v58, v57);
  MEMORY[0x253058CB0](v109, v48, v56);
  sub_24FEDCB04();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E70, &qword_24FEE7468);
  v60 = v85;
  v84[0] = v48;
  v84[1] = v56;
  sub_24FEDCCF4();
  v61 = v122;
  v62 = *(v123 + 8);
  v123 += 8;
  v62(v39, v122);
  MEMORY[0x253058D60](v60, v59);
  sub_24FEDCB04();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E78, &qword_24FEE7470);
  v64 = MEMORY[0x277D85410];
  sub_24FE58928(&qword_27F3A6E80, &qword_27F3A6E60, &qword_24FEE7460);
  v65 = v87;
  sub_24FEDCD14();
  v62(v39, v61);
  MEMORY[0x253058D60](v65, v63);
  sub_24FEDCB04();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E88, &qword_24FEE7478);
  v109 = v64;
  sub_24FE58928(&qword_27F3A6E90, &qword_27F3A6E50, &qword_24FEE7450);
  v67 = v92;
  sub_24FEDCD14();
  v62(v39, v61);
  MEMORY[0x253058D60](v67, v66);
  sub_24FEDCB04();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E98, &qword_24FEE7480);
  sub_24FE58928(&qword_27F3A6EA0, &qword_27F3A6E40, &qword_24FEE7440);
  v69 = v98;
  sub_24FEDCD14();
  v70 = v122;
  v95 = v62;
  v62(v39, v122);
  MEMORY[0x253058D60](v69, v68);
  sub_24FEDCB04();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6EA8, &qword_24FEE7488);
  sub_24FE58928(&qword_27F3A6EB0, &qword_27F3A6E30, &qword_24FEE7430);
  v72 = v103;
  v73 = v100;
  sub_24FEDCD14();
  v62(v39, v70);
  v74 = v102;
  MEMORY[0x253058D60](v72, v71);
  sub_24FEDCB04();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DF8, &qword_24FEE7348);
  sub_24FE58928(&qword_27F3A6EB8, &qword_27F3A6E20, &qword_24FEE7420);
  v76 = v107;
  v77 = v86;
  v78 = v105;
  v79 = v84[0];
  sub_24FEDCD14();
  v95(v39, v122);
  MEMORY[0x253058D60](v76, v75);
  (*(v106 + 8))(v74, v78);
  (*(v104 + 8))(v119, v73);
  (*(v101 + 8))(v116, v120);
  (*(v99 + 8))(v112, v118);
  (*(v97 + 8))(v110, v117);
  v80 = *(v91 + 8);
  v80(v77, v79);
  v81 = *(v96 + 8);
  v82 = v121;
  v81(v113, v121);
  v81(v114, v82);
  v81(v115, v82);
  v80(v111, v79);
  return (v80)(v88, v79);
}

char *_s16MarkdownDocument18LaTeXMathExtractorO7extract4from15extractingTypesSayAC11TextSegmentOGSS_AC14ExtractionTypeVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v143 = a3;
  *(&v126 + 1) = a2;
  *&v126 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DA0, &qword_24FEE7308);
  v144 = *(v3 - 8);
  v4 = *(v144 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v108 - v5;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DA8, &qword_24FEE7310);
  v128 = *(v127 - 8);
  v7 = *(v128 + 64);
  MEMORY[0x28223BE20](v127);
  v125 = &v108 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB0, &qword_24FEE7318);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v120 = &v108 - v11;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB8, &qword_24FEE7320);
  v124 = *(v123 - 8);
  v12 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v122 = &v108 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v119 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v118 = &v108 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v108 - v23;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC8, &qword_24FEE7330);
  v111 = *(v131 - 8);
  v25 = *(v111 + 64);
  MEMORY[0x28223BE20](v131);
  v138 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v137 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v136 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v130 = &v108 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v108 - v34;
  v142 = sub_24FEDCD44();
  *&v145 = *(v142 - 8);
  v36 = *(v145 + 64);
  MEMORY[0x28223BE20](v142);
  v117 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v108 - v39;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DD0, &qword_24FEE7338);
  v109 = *(v110 - 8);
  v41 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v129 = &v108 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v135 = &v108 - v44;
  MEMORY[0x28223BE20](v45);
  v134 = &v108 - v46;
  sub_24FEDCB04();
  sub_24FEB1590(v24);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DD8, &qword_24FEE7340);
  v112 = MEMORY[0x277D85AC0];
  v132 = sub_24FE58928(&qword_27F3A6DE0, &qword_27F3A6DC0, &qword_24FEE7328);
  v140 = v16;
  v48 = v47;
  v49 = v40;
  sub_24FEDCD04();
  v141 = *(v17 + 8);
  v141(v24, v16);
  v139 = v17 + 8;
  v50 = *(v145 + 8);
  *&v145 = v145 + 8;
  v51 = v142;
  v50(v40, v142);
  v52 = v50;
  v133 = v50;
  MEMORY[0x253058CF0](v35, v48);
  sub_24FEDCB04();
  v53 = v24;
  sub_24FEB1CF0(v24);
  v54 = v140;
  v116 = v35;
  v115 = v53;
  sub_24FEDCD04();
  v141(v53, v54);
  v113 = v49;
  v52(v49, v51);
  v55 = v48;
  MEMORY[0x253058CF0](v35, v48);
  sub_24FE58928(&qword_27F3A6DE8, &qword_27F3A6DC8, &qword_24FEE7330);
  v56 = v130;
  sub_24FEDCDA4();
  v154 = v56;
  sub_24FEDCDA4();
  v153 = v56;
  v114 = v55;
  sub_24FEDCDA4();
  v152 = v56;
  sub_24FEDCDA4();
  sub_24FEDCB04();
  v57 = sub_24FEDCD94();
  v58 = v120;
  (*(*(v57 - 8) + 56))(v120, 1, 1, v57);
  v59 = v117;
  sub_24FEDCB04();
  v60 = v119;
  sub_24FEB37AC(v119);
  v61 = v118;
  v62 = MEMORY[0x277D83E40];
  v63 = v140;
  sub_24FEDCD34();
  v141(v60, v63);
  v133(v59, v142);
  sub_24FEB62E4(v58);
  v64 = v121;
  MEMORY[0x253058D80](v61, v62);
  v65 = sub_24FE58928(&qword_27F3A6DF0, &qword_27F3A6DB8, &qword_24FEE7320);
  v66 = v122;
  v67 = v123;
  MEMORY[0x253058CD0](v64, v123, v65);
  v68 = *(v124 + 8);
  v68(v64, v67);
  v69 = v115;
  sub_24FEDCAE4();
  v68(v66, v67);
  v70 = v140;
  v71 = v116;
  v72 = v114;
  v73 = v113;
  sub_24FEDCD04();
  v141(v69, v70);
  v133(v73, v142);
  v74 = v129;
  MEMORY[0x253058CF0](v71, v72);
  v155 = v126;
  v146 = v135;
  v147 = v134;
  v148 = v136;
  v149 = v137;
  v150 = v138;
  v151 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DF8, &qword_24FEE7348);
  v75 = v125;
  sub_24FEDCB74();
  sub_24FEB635C();
  sub_24FE58928(&qword_27F3A6E08, &qword_27F3A6DA8, &qword_24FEE7310);
  v76 = v127;
  v77 = sub_24FEDE174();
  (*(v128 + 8))(v75, v76);
  v78 = *(v77 + 16);
  v79 = MEMORY[0x277D84F90];
  if (v78)
  {
    v159 = MEMORY[0x277D84F90];
    result = sub_24FEBE0F0(0, v78, 0);
    v81 = 0;
    v140 = v77 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v82 = v159;
    v139 = v144 + 16;
    v83 = (v144 + 8);
    v84 = v144;
    v142 = v77;
    v141 = v78;
    do
    {
      if (v81 >= *(v77 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v84 + 16))(v6, v140 + *(v84 + 72) * v81, v3);
      swift_getKeyPath();
      sub_24FEDCDB4();

      v85 = v158;
      if (v158 != 255)
      {
        goto LABEL_9;
      }

      swift_getKeyPath();
      sub_24FEDCDB4();

      v85 = v158;
      if (v158 != 255)
      {
        goto LABEL_9;
      }

      swift_getKeyPath();
      sub_24FEDCDB4();

      v85 = v158;
      if (v158 != 255)
      {
        goto LABEL_9;
      }

      swift_getKeyPath();
      sub_24FEDCDB4();

      v85 = v158;
      if (v158 != 255)
      {
        goto LABEL_9;
      }

      swift_getKeyPath();
      sub_24FEDCDB4();

      v85 = v158;
      if (v158 == 255)
      {
        swift_getKeyPath();
        sub_24FEDCDB4();

        v145 = v155;
        v85 = 1;
        v86 = v156;
        v87 = v157;
      }

      else
      {
LABEL_9:
        v86 = v156;
        v87 = v157;
        v145 = v155;
      }

      result = (*v83)(v6, v3);
      v159 = v82;
      v88 = *(v82 + 16);
      v89 = *(v82 + 24);
      if (v88 >= v89 >> 1)
      {
        result = sub_24FEBE0F0((v89 > 1), v88 + 1, 1);
        v82 = v159;
      }

      ++v81;
      *(v82 + 16) = v88 + 1;
      v90 = v82 + 40 * v88;
      *(v90 + 32) = v145;
      *(v90 + 48) = v86;
      *(v90 + 56) = v87;
      *(v90 + 64) = v85 & 1;
      v84 = v144;
      v77 = v142;
    }

    while (v141 != v81);

    v79 = MEMORY[0x277D84F90];
    v91 = *(v82 + 16);
    if (v91)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v82 = MEMORY[0x277D84F90];
    v91 = *(MEMORY[0x277D84F90] + 16);
    if (v91)
    {
LABEL_16:
      *&v155 = v79;
      v92 = v82;
      sub_24FEBE0F0(0, v91, 0);
      v93 = v155;
      v144 = v92;
      v94 = (v92 + 64);
      do
      {
        LODWORD(v145) = (v143 & 1) == 0;
        v95 = *(v94 - 4);
        v96 = *(v94 - 3);
        v97 = *(v94 - 2);
        v98 = *(v94 - 1);
        v99 = *v94;
        sub_24FEB0210();
        *&v155 = v93;
        v101 = *(v93 + 16);
        v100 = *(v93 + 24);
        if (v101 >= v100 >> 1)
        {
          sub_24FEBE0F0((v100 > 1), v101 + 1, 1);
          v93 = v155;
        }

        v102 = v145 | v99;
        *(v93 + 16) = v101 + 1;
        v103 = v93 + 40 * v101;
        *(v103 + 32) = v95;
        *(v103 + 40) = v96;
        *(v103 + 48) = v97;
        *(v103 + 56) = v98;
        *(v103 + 64) = v102 & 1;
        v94 += 40;
        --v91;
      }

      while (v91);

      goto LABEL_23;
    }
  }

  v93 = MEMORY[0x277D84F90];
LABEL_23:
  v104 = *(v109 + 8);
  v105 = v110;
  v104(v129, v110);
  v106 = *(v111 + 8);
  v107 = v131;
  v106(v138, v131);
  v106(v137, v107);
  v106(v136, v107);
  v106(v130, v107);
  v104(v135, v105);
  v104(v134, v105);
  return v93;
}

uint64_t sub_24FEB62E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB0, &qword_24FEE7318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FEB635C()
{
  result = qword_27F3A6E00;
  if (!qword_27F3A6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6E00);
  }

  return result;
}

unint64_t sub_24FEB63B0()
{
  result = qword_27F3A6EE8;
  if (!qword_27F3A6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6EE8);
  }

  return result;
}

uint64_t sub_24FEB6404(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DocumentDataImageElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentDataImageElement.imageData.getter()
{
  v1 = v0 + *(type metadata accessor for DocumentDataImageElement() + 20);
  v2 = *v1;
  sub_24FE62C94(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for DocumentDataImageElement()
{
  result = qword_27F3A6F18;
  if (!qword_27F3A6F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *DocumentDataImageElement.init(id:imageData:aspectRatio:isFirst:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = sub_24FEDCA64();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for DocumentDataImageElement();
  v14 = (a6 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + result[6]) = a4 & 1;
  *(a6 + result[7]) = a5;
  return result;
}

double DocumentDataImageElement.makeView()@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentDataImageElement();
  v4 = (v1 + v3[5]);
  v5 = *(v1 + v3[6]);
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v1 + v3[7]);
  v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24FE62C94(v6, v7);
  sub_24FE62C94(v6, v7);
  v10 = sub_24FEDCA04();
  v11 = [v9 initWithData_];

  sub_24FE62CFC(v6, v7);
  result = 210.0;
  *a1 = xmmword_24FEE3D50;
  *(a1 + 16) = v11;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v5;
  *(a1 + 41) = v8;
  return result;
}

double sub_24FEB6724@<D0>(_OWORD *a1@<X8>)
{
  DocumentDataImageElement.makeView()(&v4);
  v2 = v5[0];
  *a1 = v4;
  a1[1] = v2;
  result = *(v5 + 10);
  *(a1 + 26) = *(v5 + 10);
  return result;
}

uint64_t sub_24FEB6768@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24FEDC514();
    if (v10)
    {
      v11 = sub_24FEDC534();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24FEDC524();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24FEDC514();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24FEDC534();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24FEDC524();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24FEB6998(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_24FEB6B28(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_24FE62CFC(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_24FEB6768(v14, a3, a4, &v13);
  v10 = v4;
  sub_24FE62CFC(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_24FEB6B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24FEDC514();
  v11 = result;
  if (result)
  {
    result = sub_24FEDC534();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24FEDC524();
  sub_24FEB6768(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_24FEB6BE0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_24FE62C94(a3, a4);
          return sub_24FEB6998(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s16MarkdownDocument0B16DataImageElementV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) != 0 && (v4 = type metadata accessor for DocumentDataImageElement(), (sub_24FEB6BE0(*(a1 + v4[5]), *(a1 + v4[5] + 8), *(a2 + v4[5]), *(a2 + v4[5] + 8))) && (v5 = v4[6], v6 = *(a1 + v5), v7 = *(a2 + v5), (sub_24FEDD064()))
  {
    v8 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_24FEB6DE8()
{
  result = qword_27F3A6EF8;
  if (!qword_27F3A6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6EF8);
  }

  return result;
}

uint64_t sub_24FEB6E3C(uint64_t a1)
{
  *(a1 + 8) = sub_24FEB6F08(&qword_27F3A6F00, type metadata accessor for DocumentDataImageElement);
  result = sub_24FEB6F08(&unk_27F3A6F08, type metadata accessor for DocumentDataImageElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FEB6F08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FEB6F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24FEB7030(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDCA64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24FEB70E8()
{
  result = sub_24FEDCA64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DocumentImageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6F28, &qword_24FEE7560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6F30, &qword_24FEE7568);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6F38, &qword_24FEE7570);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  sub_24FEB73E0(v2);
  v18 = sub_24FEDD754();
  v2[41];
  sub_24FEDD014();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24FE6315C(v7, v12, &qword_27F3A6F28, &qword_24FEE7560);
  v27 = &v12[*(v9 + 44)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  LOBYTE(v7) = sub_24FEDD734();
  sub_24FEDD014();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_24FE6315C(v12, v17, &qword_27F3A6F30, &qword_24FEE7568);
  v36 = &v17[*(v14 + 44)];
  *v36 = v7;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  LOBYTE(v14) = sub_24FEDD764();
  sub_24FEDD014();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_24FE6315C(v17, a1, &qword_27F3A6F38, &qword_24FEE7570);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6F40, &qword_24FEE7578);
  v46 = a1 + *(result + 36);
  *v46 = v14;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  return result;
}

uint64_t sub_24FEB73E0(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6F80, &qword_24FEE76C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v39[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6FD8, &qword_24FEE76F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v39[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6F90, &qword_24FEE76C8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39[-v12];
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = v14;
    *v5 = sub_24FEDDF24();
    v5[1] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6FE0, &unk_24FEE7700);
    sub_24FEB782C(v15, a1, v5 + *(v17 + 44));
    sub_24FE58B14(v5, v9, &qword_27F3A6F80, &qword_24FEE76C0);
    swift_storeEnumTagMultiPayload();
    sub_24FE58928(&qword_27F3A6F78, &qword_27F3A6F80, &qword_24FEE76C0);
    sub_24FEB8C50();
    sub_24FEDD5F4();

    v18 = v5;
    v19 = &qword_27F3A6F80;
    v20 = &qword_24FEE76C0;
  }

  else
  {
    v21 = sub_24FEDDC24();
    v22 = *a1;
    sub_24FEDDF34();
    sub_24FEDD0F4();
    *&v40[6] = v41;
    *&v40[22] = v42;
    *&v40[38] = v43;
    v23 = *(a1 + 1);
    v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6FA0, &qword_24FEE76D0) + 36)];
    v25 = *(sub_24FEDD284() + 20);
    v26 = *MEMORY[0x277CE0118];
    v27 = sub_24FEDD4E4();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    *v24 = v23;
    *(v24 + 1) = v23;
    *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A68F0, &qword_24FEE6098) + 36)] = 256;
    v28 = *&v40[16];
    *(v13 + 10) = *v40;
    *v13 = v21;
    *(v13 + 4) = 256;
    *(v13 + 26) = v28;
    *(v13 + 42) = *&v40[32];
    *(v13 + 7) = *&v40[46];
    sub_24FEDD4B4();
    v29 = sub_24FEDD9D4();
    v31 = v30;
    LOBYTE(v24) = v32;
    v34 = v33;
    v35 = sub_24FEDDF34();
    v36 = &v13[*(v10 + 36)];
    *v36 = v29;
    *(v36 + 1) = v31;
    v36[16] = v24 & 1;
    *(v36 + 3) = v34;
    *(v36 + 4) = v35;
    *(v36 + 5) = v37;
    sub_24FE58B14(v13, v9, &qword_27F3A6F90, &qword_24FEE76C8);
    swift_storeEnumTagMultiPayload();
    sub_24FE58928(&qword_27F3A6F78, &qword_27F3A6F80, &qword_24FEE76C0);
    sub_24FEB8C50();
    sub_24FEDD5F4();
    v18 = v13;
    v19 = &qword_27F3A6F90;
    v20 = &qword_24FEE76C8;
  }

  return sub_24FE58B7C(v18, v19, v20);
}

uint64_t sub_24FEB782C@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v150 = a3;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F60, &unk_24FEE45B0);
  v5 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v157 = &v133 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F68, &qword_24FEE5350);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v143 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v154 = &v133 - v11;
  MEMORY[0x28223BE20](v12);
  v155 = &v133 - v13;
  v158 = sub_24FEDCE94();
  v162 = *(v158 - 8);
  v14 = *(v162 + 64);
  MEMORY[0x28223BE20](v158);
  v136 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v156 = &v133 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v141 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v160 = (&v133 - v22);
  v140 = type metadata accessor for ShareButton();
  v23 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v159 = (&v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v146 = &v133 - v26;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6FE8, &qword_24FEE7710);
  v27 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v149 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v144 = &v133 - v30;
  MEMORY[0x28223BE20](v31);
  v148 = &v133 - v32;
  v33 = sub_24FEDDCD4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6FF0, &unk_24FEE7718);
  v39 = v38 - 8;
  v40 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v147 = &v133 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v133 - v43;
  MEMORY[0x28223BE20](v45);
  v161 = &v133 - v46;
  v47 = a1;
  v48 = sub_24FEDDCA4();
  v153 = a2;
  v49 = a2[40];
  v50 = *(a2 + 1);
  v51 = *a2;
  (*(v34 + 104))(v37, *MEMORY[0x277CE0FE0], v33);
  sub_24FEDDD04();
  (*(v34 + 8))(v37, v33);
  v152 = sub_24FEDDCC4();

  LODWORD(v151) = v49;
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v169 = 1;
  *&v168[6] = v170;
  *&v168[22] = v171;
  *&v168[38] = v172;
  v52 = v167;
  sub_24FEDDF34();
  v53 = 1;
  sub_24FEDD294();
  v54 = sub_24FEDDC24();
  v55 = sub_24FEDD744();

  v56 = &v44[*(v39 + 44)];
  v57 = *(sub_24FEDD284() + 20);
  v58 = *MEMORY[0x277CE0118];
  v59 = sub_24FEDD4E4();
  v60 = v58;
  v61 = v156;
  (*(*(v59 - 8) + 104))(v57 + v56, v60, v59);
  *v56 = v50;
  *(v56 + 1) = v50;
  *&v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A68F0, &qword_24FEE6098) + 36)] = 256;
  *(v44 + 18) = *v168;
  *(v44 + 34) = *&v168[16];
  *(v44 + 50) = *&v168[32];
  v62 = v167[2];
  *(v44 + 120) = v167[3];
  v63 = v167[5];
  *(v44 + 136) = v167[4];
  *(v44 + 152) = v63;
  *(v44 + 168) = v167[6];
  v64 = v167[1];
  *(v44 + 72) = v167[0];
  *(v44 + 88) = v64;
  *v44 = v152;
  *(v44 + 1) = 0;
  v44[16] = 1;
  v44[17] = v151;
  *(v44 + 8) = *&v168[46];
  *(v44 + 104) = v62;
  *(v44 + 92) = 0;
  *(v44 + 24) = v54;
  v44[200] = v55;
  sub_24FE6315C(v44, v161, &qword_27F3A6FF0, &unk_24FEE7718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66A8, &unk_24FEE5760);
  v65 = swift_allocObject();
  v173 = *(v153 + 24);
  v66 = v173;
  *(v65 + 56) = MEMORY[0x277CC9318];
  *(v65 + 64) = &protocol witness table for Data;
  *(v65 + 16) = xmmword_24FEE0740;
  *(v65 + 32) = v66;
  sub_24FEB8E78(&v173, v166);
  result = sub_24FEDCE64();
  v68 = v173;
  v69 = *(&v173 + 1) >> 62;
  if ((*(&v173 + 1) >> 62) > 1)
  {
    v70 = 0;
    if (v69 != 2)
    {
      goto LABEL_11;
    }

    v68 = *(v173 + 16);
    v71 = *(v173 + 24);
    v70 = v71 - v68;
    if (!__OFSUB__(v71, v68))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v69)
  {
    v70 = BYTE14(v173);
    goto LABEL_11;
  }

  v72 = __OFSUB__(HIDWORD(v68), v68);
  v73 = HIDWORD(v68) - v68;
  if (v72)
  {
    __break(1u);
    return result;
  }

  v70 = v73;
LABEL_10:
  if ((v70 & 0x8000000000000000) == 0)
  {
LABEL_11:
    v48 = v160;
    *v160 = 0x65772E6567616D49;
    v48[1] = 0xEA00000000007062;
    v48[2] = 0x6567616D49;
    v48[3] = 0xE500000000000000;
    v74 = type metadata accessor for ShareSheetMetadata();
    v53 = v140;
    v75 = v74;
    v76 = v48 + *(v74 + 24);
    v134 = *(v162 + 32);
    v135 = v162 + 32;
    v134(v76, v61, v158);
    *(v48 + *(v75 + 7)) = v70;
    v55 = *(v75 - 1);
    v77 = *(v55 + 56);
    v156 = v75;
    v77(v48, 0, 1, v75);
    KeyPath = swift_getKeyPath();
    v52 = v159;
    *v159 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
    swift_storeEnumTagMultiPayload();
    v79 = *(v53 + 20);
    v166[0] = 0x403C000000000000;
    sub_24FE85C8C();
    sub_24FEDD0B4();
    v80 = *(v53 + 24);
    sub_24FEDDC74();
    v81 = sub_24FEDDC64();

    v138 = v81;
    v139 = v80;
    *(v52 + v80) = v81;
    v137 = v52 + *(v53 + 28);
    *v137 = 0;
    v153 = v52 + *(v53 + 32);
    *v153 = 0;
    v82 = (v52 + *(v53 + 36));
    sub_24FEDE134();
    sub_24FEB8FA4(&qword_27F3A5C08, MEMORY[0x277D63F60]);
    *v82 = sub_24FEDD2C4();
    v82[1] = v83;
    v57 = (v52 + *(v53 + 40));
    if (qword_27F3A5B88 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_12:
  swift_beginAccess();
  type metadata accessor for LaTeXMathTracker();
  sub_24FEB8FA4(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker);

  *v57 = sub_24FEDD1B4();
  v57[1] = v84;
  v85 = v52 + *(v53 + 44);
  v163 = 0;
  sub_24FEDDD34();
  v86 = v165;
  *v85 = v164;
  *(v85 + 1) = v86;
  *(v52 + *(v53 + 48)) = 0;
  *(v52 + *(v53 + 52)) = v65;
  sub_24FE58B14(v48, v52 + *(v53 + 56), &qword_27F3A5F70, &qword_24FEE45C0);
  *(v52 + *(v53 + 60)) = 0;
  v87 = v141;
  sub_24FE58B14(v48, v141, &qword_27F3A5F70, &qword_24FEE45C0);
  v88 = v156;
  v152 = *(v55 + 48);
  v89 = v152(v87, 1, v156);
  v151 = v55 + 48;
  if (v89 == 1)
  {
    sub_24FE58B7C(v87, &qword_27F3A5F70, &qword_24FEE45C0);
    v90 = 1;
    v91 = v143;
    v92 = v158;
    v93 = v155;
    v94 = v162;
  }

  else
  {
    v95 = *(v88 + 6);
    v94 = v162;
    v93 = v155;
    v92 = v158;
    (*(v162 + 16))(v155, v87 + v95, v158);
    sub_24FEB8FEC(v87, type metadata accessor for ShareSheetMetadata);
    v90 = 0;
    v91 = v143;
  }

  v96 = v154;
  v97 = *(v94 + 56);
  v97(v93, v90, 1, v92);
  sub_24FEDCE64();
  v97(v96, 0, 1, v92);
  v98 = *(v142 + 48);
  v99 = v157;
  sub_24FE58B14(v93, v157, &qword_27F3A5F68, &qword_24FEE5350);
  sub_24FE58B14(v96, v99 + v98, &qword_27F3A5F68, &qword_24FEE5350);
  v100 = *(v94 + 48);
  if (v100(v99, 1, v92) != 1)
  {
    sub_24FE58B14(v99, v91, &qword_27F3A5F68, &qword_24FEE5350);
    if (v100(v99 + v98, 1, v92) != 1)
    {
      v112 = v136;
      v134(v136, (v99 + v98), v92);
      sub_24FEB8FA4(&qword_27F3A5FC0, MEMORY[0x277D85578]);
      v113 = v99;
      v114 = sub_24FEDE194();
      v115 = *(v162 + 8);
      v115(v112, v92);
      sub_24FE58B7C(v154, &qword_27F3A5F68, &qword_24FEE5350);
      sub_24FE58B7C(v155, &qword_27F3A5F68, &qword_24FEE5350);
      v115(v91, v92);
      sub_24FE58B7C(v113, &qword_27F3A5F68, &qword_24FEE5350);
      v103 = v149;
      v105 = v146;
      v104 = v147;
      if (v114)
      {
        goto LABEL_24;
      }

LABEL_21:
      v106 = v160;
      v107 = v152(v160, 1, v156);
      v108 = v150;
      v109 = v148;
      v110 = v159;
      v111 = v153;
      if (v107 == 1)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    sub_24FE58B7C(v154, &qword_27F3A5F68, &qword_24FEE5350);
    v101 = v157;
    sub_24FE58B7C(v155, &qword_27F3A5F68, &qword_24FEE5350);
    (*(v162 + 8))(v91, v92);
    v103 = v149;
    v104 = v147;
LABEL_20:
    sub_24FE58B7C(v101, &qword_27F3A5F60, &unk_24FEE45B0);
    v105 = v146;
    goto LABEL_21;
  }

  sub_24FE58B7C(v96, &qword_27F3A5F68, &qword_24FEE5350);
  v101 = v157;
  sub_24FE58B7C(v93, &qword_27F3A5F68, &qword_24FEE5350);
  v102 = v100(v101 + v98, 1, v92);
  v103 = v149;
  v104 = v147;
  if (v102 != 1)
  {
    goto LABEL_20;
  }

  sub_24FE58B7C(v101, &qword_27F3A5F68, &qword_24FEE5350);
  v105 = v146;
LABEL_24:
  v116 = sub_24FEDDC54();

  v110 = v159;
  *(v159 + v139) = v116;
  v111 = v137;
  v108 = v150;
  v109 = v148;
  v106 = v160;
LABEL_25:
  *v111 = 1;
LABEL_26:
  sub_24FEB8EDC(v110, v105);
  sub_24FE58B7C(v106, &qword_27F3A5F70, &qword_24FEE45C0);
  sub_24FEB8FEC(v110, type metadata accessor for ShareButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6FF8, &qword_24FEE7760);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_24FEE0830;
  v118 = sub_24FEDD754();
  *(v117 + 32) = v118;
  v119 = sub_24FEDD794();
  *(v117 + 33) = v119;
  v120 = sub_24FEDD784();
  sub_24FEDD784();
  if (sub_24FEDD784() != v118)
  {
    v120 = sub_24FEDD784();
  }

  sub_24FEDD784();
  if (sub_24FEDD784() != v119)
  {
    v120 = sub_24FEDD784();
  }

  sub_24FEDD014();
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v129 = v144;
  sub_24FEB8F40(v105, v144);
  v130 = v129 + *(v145 + 36);
  *v130 = v120;
  *(v130 + 8) = v122;
  *(v130 + 16) = v124;
  *(v130 + 24) = v126;
  *(v130 + 32) = v128;
  *(v130 + 40) = 0;
  sub_24FE6315C(v129, v109, &qword_27F3A6FE8, &qword_24FEE7710);
  v131 = v161;
  sub_24FE58B14(v161, v104, &qword_27F3A6FF0, &unk_24FEE7718);
  sub_24FE58B14(v109, v103, &qword_27F3A6FE8, &qword_24FEE7710);
  sub_24FE58B14(v104, v108, &qword_27F3A6FF0, &unk_24FEE7718);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7000, &qword_24FEE7768);
  sub_24FE58B14(v103, v108 + *(v132 + 48), &qword_27F3A6FE8, &qword_24FEE7710);
  sub_24FE58B7C(v109, &qword_27F3A6FE8, &qword_24FEE7710);
  sub_24FE58B7C(v131, &qword_27F3A6FF0, &unk_24FEE7718);
  sub_24FE58B7C(v103, &qword_27F3A6FE8, &qword_24FEE7710);
  return sub_24FE58B7C(v104, &qword_27F3A6FF0, &unk_24FEE7718);
}

uint64_t sub_24FEB88D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[10] = *(v1 + 26);
  return DocumentImageView.body.getter(a1);
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24FEB8920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 42))
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

uint64_t sub_24FEB897C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24FEB8A60(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24FEB8B14()
{
  result = qword_27F3A6F60;
  if (!qword_27F3A6F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6F28, &qword_24FEE7560);
    sub_24FEB8B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6F60);
  }

  return result;
}

unint64_t sub_24FEB8B98()
{
  result = qword_27F3A6F68;
  if (!qword_27F3A6F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6F70, &qword_24FEE76B8);
    sub_24FE58928(&qword_27F3A6F78, &qword_27F3A6F80, &qword_24FEE76C0);
    sub_24FEB8C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6F68);
  }

  return result;
}

unint64_t sub_24FEB8C50()
{
  result = qword_27F3A6F88;
  if (!qword_27F3A6F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6F90, &qword_24FEE76C8);
    sub_24FEB8D08();
    sub_24FE58928(&qword_27F3A6FC8, &qword_27F3A6FD0, &qword_24FEE76F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6F88);
  }

  return result;
}

unint64_t sub_24FEB8D08()
{
  result = qword_27F3A6F98;
  if (!qword_27F3A6F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6FA0, &qword_24FEE76D0);
    sub_24FEB8DC0();
    sub_24FE58928(&qword_27F3A68E8, &qword_27F3A68F0, &qword_24FEE6098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6F98);
  }

  return result;
}

unint64_t sub_24FEB8DC0()
{
  result = qword_27F3A6FA8;
  if (!qword_27F3A6FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6FB0, &qword_24FEE76D8);
    sub_24FE58928(&qword_27F3A6FB8, &qword_27F3A6FC0, &unk_24FEE76E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6FA8);
  }

  return result;
}

uint64_t sub_24FEB8EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEB8F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEB8FA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FEB8FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static ImageAspectRatioAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *static ImageAspectRatioAttribute.name;

  return v0;
}

uint64_t static ImageAspectRatioAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static ImageAspectRatioAttribute.name = a1;
  *&static ImageAspectRatioAttribute.name[8] = a2;
}

unint64_t sub_24FEB9164()
{
  result = qword_27F3A7018;
  if (!qword_27F3A7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7018);
  }

  return result;
}

uint64_t sub_24FEB9218()
{
  swift_beginAccess();
  v0 = *static ImageAspectRatioAttribute.name;

  return v0;
}

unint64_t sub_24FEB927C()
{
  result = qword_27F3A7020;
  if (!qword_27F3A7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7020);
  }

  return result;
}

uint64_t static NamedImageAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *static NamedImageAttribute.name;

  return v0;
}

uint64_t static NamedImageAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static NamedImageAttribute.name = a1;
  *&static NamedImageAttribute.name[8] = a2;
}

unint64_t sub_24FEB93EC()
{
  result = qword_27F3A7038;
  if (!qword_27F3A7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7038);
  }

  return result;
}

uint64_t sub_24FEB94A0()
{
  swift_beginAccess();
  v0 = *static NamedImageAttribute.name;

  return v0;
}

unint64_t sub_24FEB9504()
{
  result = qword_27F3A7040;
  if (!qword_27F3A7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7040);
  }

  return result;
}

uint64_t DocumentElementOutlineParser.parseElement(attributedString:run:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v108 = a1;
  v94 = a2;
  v2 = sub_24FEDCA64();
  v88 = *(v2 - 8);
  v3 = *(v88 + 64);
  MEMORY[0x28223BE20](v2);
  v87 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24FEDC8E4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v95 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v8 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v103 = &v81 - v9;
  v106 = sub_24FEDC774();
  v107 = *(v106 - 8);
  v10 = *(v107 + 64);
  MEMORY[0x28223BE20](v106);
  v97 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v81 - v13;
  v105 = sub_24FEDC6C4();
  v99 = *(v105 - 8);
  v14 = *(v99 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v89 = &v81 - v17;
  v112 = sub_24FEDC884();
  v101 = *(v112 - 8);
  v18 = *(v101 + 8);
  MEMORY[0x28223BE20](v112);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v81 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6140, &qword_24FEE79D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v81 - v27;
  v29 = sub_24FEDC854();
  v30 = *(v29 - 8);
  v31 = *(v30 + 8);
  MEMORY[0x28223BE20](v29);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v93 = &v81 - v35;
  sub_24FE8B614();
  sub_24FEDC6D4();
  v36 = sub_24FEDC894();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v24, 1, v36) == 1)
  {
    sub_24FE58B7C(v24, &qword_27F3A6138, &unk_24FEE4A10);
    (*(v30 + 7))(v28, 1, 1, v29);
    v38 = v28;
    v28 = v94;
    goto LABEL_14;
  }

  v100 = v28;
  v113 = v30;
  v86 = v2;
  v39 = sub_24FEDC864();
  (*(v37 + 8))(v24, v36);
  DynamicType = v29;
  v111 = *(v39 + 16);
  if (!v111)
  {
LABEL_11:

    v50 = 1;
    v20 = v113;
    v38 = v100;
    goto LABEL_13;
  }

  v41 = 0;
  v110 = (v113 + 16);
  v42 = v101 + 88;
  LODWORD(v109) = *MEMORY[0x277CC8D08];
  v43 = *MEMORY[0x277CC8D18];
  v44 = v101 + 8;
  v45 = (v113 + 8);
  while (1)
  {
    v46 = *(v39 + 16);
    if (v41 >= v46)
    {
      break;
    }

    (*(v113 + 2))(v33, v39 + ((v113[80] + 32) & ~v113[80]) + *(v113 + 9) * v41, DynamicType);
    v28 = DynamicType;
    sub_24FEDC834();
    v47 = v112;
    v48 = (*v42)(v20, v112);
    if (v48 == v109 || v48 == v43)
    {

      v20 = v113;
      v38 = v100;
      (*(v113 + 4))(v100, v33, v28);
      v50 = 0;
      DynamicType = v28;
LABEL_13:
      (*(v20 + 7))(v38, v50, 1, DynamicType);
      v51 = (*(v20 + 6))(v38, 1, DynamicType);
      v28 = v94;
      if (v51 == 1)
      {
LABEL_14:
        sub_24FE58B7C(v38, &qword_27F3A6140, &qword_24FEE79D0);
        v52 = type metadata accessor for DocumentOutlineElement();
        return (*(*(v52 - 8) + 56))(v28, 1, 1, v52);
      }

      v54 = *(v20 + 4);
      v112 = DynamicType;
      v54(v93, v38, DynamicType);
      v55 = sub_24FEDC844();
      v56 = sub_24FED5384(v55);
      if (*(v56 + 16))
      {
        v57 = *(v99 + 16);
        v42 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        v110 = v56;
        v109 = v99 + 16;
        v101 = v57;
        v57(v89, (v56 + v42), v105);
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7048, &qword_24FEE79D8);
        v33 = swift_allocObject();
        v91 = xmmword_24FEE0740;
        *(v33 + 1) = xmmword_24FEE0740;
        v58 = v103;
        sub_24FEDC6B4();
        v100 = sub_24FE8BF90();
        sub_24FEDC7A4();
        sub_24FE58B7C(v58, &qword_27F3A6160, &unk_24FEE4A80);
        v59 = v90;
        sub_24FEDC7C4();
        sub_24FEBA56C(v59, v33 + 4);
        v60 = *(v107 + 8);
        v107 += 8;
        v111 = v60;
        v60(v59, v106);
        v41 = sub_24FEBB4C4(0, 1, 1, MEMORY[0x277D84F90], &qword_27F3A70A8, &qword_24FEE7AA8, &qword_27F3A70B0, &qword_24FEE7AB0);
        v44 = *(v41 + 16);
        v46 = *(v41 + 24);
        DynamicType = (v44 + 1);
        v43 = v86;
        if (v44 < v46 >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_54;
      }

      v41 = MEMORY[0x277D84F90];
      v43 = v86;
LABEL_45:
      DynamicType = v112;
      goto LABEL_47;
    }

    ++v41;
    (*v44)(v20, v47);
    (*v45)(v33, v28);
    DynamicType = v28;
    if (v111 == v41)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  v41 = sub_24FEBB4C4((v46 > 1), DynamicType, 1, v41, &qword_27F3A70A8, &qword_24FEE7AA8, &qword_27F3A70B0, &qword_24FEE7AB0);
LABEL_17:
  *(v41 + 16) = DynamicType;
  *(v41 + 8 * v44 + 32) = v33;
  v61 = v110;
  v62 = *(v110 + 16);
  v63 = v62 - 2;
  if (v62 < 2)
  {
    (*(v99 + 8))(v89, v105);
    goto LABEL_45;
  }

  v64 = *(v99 + 72);
  v99 += 8;
  v96 = v64;
  v20 = (v110 + v64 + v42);
  v43 = 1;
  v28 = v95;
  v42 = v97;
  while (1)
  {
    v65 = v102;
    v33 = v105;
    v101(v102, v20, v105);
    v44 = v103;
    sub_24FEDC6B4();
    v98 = *v99;
    v98(v65, v33);
    DynamicType = v108;
    sub_24FEDC7A4();
    sub_24FE58B7C(v44, &qword_27F3A6160, &unk_24FEE4A80);
    sub_24FEDC7C4();
    sub_24FEBB9C4(v43, v61);
    if ((v66 & 1) == 0)
    {
      break;
    }

    sub_24FEBA56C(v42, &v118);
    v42 = *(v41 + 16);
    if (!v42)
    {
      goto LABEL_24;
    }

    v44 = *(v41 + 24 + 8 * v42);
    v67 = *(v44 + 16);
    if (!v67)
    {
      goto LABEL_24;
    }

    sub_24FE72D1C(v44 + 40 * v67 - 8, &v115);
    __swift_project_boxed_opaque_existential_1(&v118, v119);
    DynamicType = swift_getDynamicType();
    v33 = v116;
    __swift_project_boxed_opaque_existential_1(&v115, v116);
    if (DynamicType != swift_getDynamicType())
    {
      __swift_destroy_boxed_opaque_existential_1(&v115);
LABEL_24:
      v42 = *(v41 + 16);
      sub_24FE72D1C(&v118, &v115);
      if (!v42)
      {
        goto LABEL_50;
      }

      v44 = v41 + 24;
      v68 = *(v41 + 24 + 8 * v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v41 + 24 + 8 * v42) = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = sub_24FE70D7C(0, v68[2] + 1, 1, v68, &qword_27F3A7048, &qword_24FEE79D8, &qword_27F3A5F00, &qword_24FEE4550);
        *(v44 + 8 * v42) = v68;
      }

      v71 = v68[2];
      v70 = v68[3];
      v33 = (v71 + 1);
      if (v71 >= v70 >> 1)
      {
        *(v44 + 8 * v42) = sub_24FE70D7C((v70 > 1), v71 + 1, 1, v68, &qword_27F3A7048, &qword_24FEE79D8, &qword_27F3A5F00, &qword_24FEE4550);
      }

      v72 = v97;
      v111(v97, v106);
      v73 = *(v44 + 8 * v42);
      v42 = v72;
      *(v73 + 16) = v33;
      sub_24FE731F4(&v115, v73 + 40 * v71 + 32);
      v28 = v95;
      v61 = v110;
      goto LABEL_30;
    }

    v82 = (v41 + 24);
    v81 = *(v44 + 16);
    v85 = v116;
    v84 = v117;
    v83 = __swift_project_boxed_opaque_existential_1(&v115, v116);
    v76 = v119;
    v33 = v120;
    __swift_project_boxed_opaque_existential_1(&v118, v119);
    v44 = v90;
    (*(v33 + 3))(v76, v33);
    DynamicType = v83;
    (*(v84 + 16))(&v114, v44, v85);
    v111(v44, v106);
    v46 = *(v41 + 16);
    if (v42 > v46)
    {
      goto LABEL_51;
    }

    v33 = v82;
    DynamicType = *&v82[8 * v42];
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *&v33[8 * v42] = DynamicType;
    v61 = v110;
    if ((v77 & 1) == 0)
    {
      *&v33[8 * v42] = sub_24FEBB860(DynamicType);
    }

    v111(v97, v106);
    v46 = &v112;
    if (!v81)
    {
      goto LABEL_52;
    }

    v46 = *&v33[8 * v42];
    if (v81 > *(v46 + 16))
    {
      goto LABEL_53;
    }

    v78 = (v46 + 40 * v81 - 8);
    __swift_destroy_boxed_opaque_existential_1(v78);
    sub_24FE731F4(&v114, v78);
    __swift_destroy_boxed_opaque_existential_1(&v115);
    v42 = v97;
LABEL_30:
    __swift_destroy_boxed_opaque_existential_1(&v118);
    DynamicType = v112;
    if (!v63)
    {
      goto LABEL_46;
    }

LABEL_35:
    ++v43;
    v46 = *(v61 + 16);
    --v63;
    v20 += v96;
    if (v43 >= v46)
    {
      goto LABEL_49;
    }
  }

  v74 = swift_allocObject();
  *(v74 + 16) = v91;
  sub_24FEBA56C(v42, (v74 + 32));
  v44 = *(v41 + 16);
  v75 = *(v41 + 24);
  v33 = (v44 + 1);
  if (v44 >= v75 >> 1)
  {
    v41 = sub_24FEBB4C4((v75 > 1), v44 + 1, 1, v41, &qword_27F3A70A8, &qword_24FEE7AA8, &qword_27F3A70B0, &qword_24FEE7AB0);
  }

  v111(v42, v106);
  *(v41 + 16) = v33;
  *(v41 + 8 * v44 + 32) = v74;
  DynamicType = v112;
  v61 = v110;
  if (v63)
  {
    goto LABEL_35;
  }

LABEL_46:
  v98(v89, v105);
  v28 = v94;
  v43 = v86;
  v20 = v113;
LABEL_47:

  v79 = v87;
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  (*(v20 + 1))(v93, DynamicType);
  (*(v88 + 32))(v28, v79, v43);
  v80 = type metadata accessor for DocumentOutlineElement();
  *&v28[*(v80 + 20)] = v41;
  return (*(*(v80 - 8) + 56))(v28, 0, 1, v80);
}

uint64_t sub_24FEBA56C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A70B8, &qword_24FEE7AB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v78 - v5;
  v88 = type metadata accessor for DocumentParagraphElement();
  v83 = *(v88 - 8);
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v88);
  v81 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A70C0, &qword_24FEE7AC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v78 - v10;
  v11 = type metadata accessor for DocumentCodeBlockElement();
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = *(v84 + 64);
  MEMORY[0x28223BE20](v11);
  v82 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_24FEDC884();
  v14 = *(v101 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v99 = &v78 - v18;
  v98 = sub_24FEDC854();
  v102 = *(v98 - 8);
  v19 = *(v102 + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A70C8, &qword_24FEE7AC8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v78 - v27;
  v29 = sub_24FEDC6F4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24FEDC6C4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v78 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a1;
  sub_24FEDC704();
  sub_24FEBC8A8(v28);
  v39 = v33;
  v40 = v34;
  v41 = v35;
  (*(v30 + 8))(v39, v29);
  if ((*(v35 + 48))(v28, 1, v40) == 1)
  {
    sub_24FE58B7C(v28, &qword_27F3A70C8, &qword_24FEE7AC8);
    v42 = v88;
    v43 = v89;
    v44 = v90;
LABEL_3:
    v44[3] = v42;
    v44[4] = sub_24FEBC860(&qword_27F3A70D0, type metadata accessor for DocumentParagraphElement);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    v46 = *(v42 + 20);
    v47 = sub_24FEDC774();
    return (*(*(v47 - 8) + 16))(boxed_opaque_existential_1 + v46, v43, v47);
  }

  (*(v35 + 32))(v38, v28, v40);
  sub_24FE8B614();
  sub_24FEDC6D4();
  v49 = sub_24FEDC894();
  v50 = *(v49 - 8);
  v51 = v38;
  if ((*(v50 + 48))(v24, 1, v49) == 1)
  {
    sub_24FE58B7C(v24, &qword_27F3A6138, &unk_24FEE4A10);
    v42 = v88;
    v43 = v89;
    v44 = v90;
LABEL_13:
    v68 = v86;
    DocumentElementCodeBlockParser.parseElement(attributedString:run:)(v43, v86);
    v69 = v85;
    v70 = (*(v84 + 48))(v68, 1, v85);
    v71 = v87;
    if (v70 == 1)
    {
      sub_24FE58B7C(v68, &qword_27F3A70C0, &qword_24FEE7AC0);
      DocumentElementParagraphParser.parseElement(attributedString:run:)(v43, v71);
      if ((*(v83 + 48))(v71, 1, v42) == 1)
      {
        (*(v41 + 8))(v51, v40);
        sub_24FE58B7C(v71, &qword_27F3A70B8, &qword_24FEE7AB8);
        goto LABEL_3;
      }

      v72 = type metadata accessor for DocumentParagraphElement;
      v76 = v71;
      v77 = v81;
      sub_24FEBC7F8(v76, v81, type metadata accessor for DocumentParagraphElement);
      v44[3] = v42;
      v44[4] = sub_24FEBC860(&qword_27F3A70D0, type metadata accessor for DocumentParagraphElement);
      v74 = __swift_allocate_boxed_opaque_existential_1(v44);
      v75 = v77;
    }

    else
    {
      v72 = type metadata accessor for DocumentCodeBlockElement;
      v73 = v82;
      sub_24FEBC7F8(v68, v82, type metadata accessor for DocumentCodeBlockElement);
      v44[3] = v69;
      v44[4] = sub_24FEBC860(&qword_27F3A65C8, type metadata accessor for DocumentCodeBlockElement);
      v74 = __swift_allocate_boxed_opaque_existential_1(v44);
      v75 = v73;
    }

    sub_24FEBC7F8(v75, v74, v72);
    return (*(v41 + 8))(v51, v40);
  }

  else
  {
    v78 = v38;
    v79 = v35;
    v80 = v40;
    v52 = sub_24FEDC864();
    result = (*(v50 + 8))(v24, v49);
    v53 = 0;
    v95 = *(v52 + 16);
    v96 = v52;
    v54 = v101;
    v94 = v102 + 16;
    v93 = *MEMORY[0x277CC8D00];
    v55 = (v14 + 8);
    v91 = v102 + 8;
    v92 = (v14 + 104);
    v56 = v102;
    while (1)
    {
      if (v95 == v53)
      {

        v43 = v89;
        v44 = v90;
        v42 = v88;
        v40 = v80;
        v41 = v79;
        v51 = v78;
        goto LABEL_13;
      }

      if (v53 >= *(v96 + 16))
      {
        break;
      }

      v58 = v97;
      v57 = v98;
      (*(v56 + 16))(v97, v96 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v53++, v98);
      v59 = v99;
      sub_24FEDC834();
      v60 = v100;
      (*v92)(v100, v93, v54);
      v61 = MEMORY[0x253058A70](v59, v60);
      v62 = *v55;
      (*v55)(v60, v54);
      v62(v59, v54);
      result = (*(v56 + 8))(v58, v57);
      if (v61)
      {

        v63 = type metadata accessor for DocumentBlockQuoteElement();
        v64 = v90;
        v90[3] = v63;
        v64[4] = sub_24FEBC860(&qword_27F3A6018, type metadata accessor for DocumentBlockQuoteElement);
        v65 = __swift_allocate_boxed_opaque_existential_1(v64);
        _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
        (*(v79 + 8))(v78, v80);
        v66 = *(v63 + 20);
        v67 = sub_24FEDC774();
        return (*(*(v67 - 8) + 16))(v65 + v66, v89, v67);
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_24FEBB090(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7088, &qword_24FEE7A88);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_24FEBB194(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7090, &unk_24FEE7A90);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_24FEBB2E8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_24FEBB4C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24FEBB620(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

size_t sub_24FEBB71C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A70A0, &qword_24FEE7AA0);
  v4 = *(sub_24FEDC854() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24FEBB8A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      while (v6 + v9 <= *(a4 + 16))
      {
        v10 = sub_24FEDC854();
        v11 = *(v10 - 8);
        v12 = *(v11 + 72);
        result = (*(v11 + 16))(v8, a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v12 * (v6 + v9 - 1), v10);
        if (a3 + v9 == 1)
        {
          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += v12;
        --v9;
        if (!(v6 + v9))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_9:
    v13 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_24FEBB9C4(unint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDC884();
  v115 = *(v4 - 8);
  v5 = *(v115 + 64);
  MEMORY[0x28223BE20](v4);
  v116 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v113 = &v107 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v107 - v10;
  MEMORY[0x28223BE20](v12);
  v118 = &v107 - v13;
  MEMORY[0x28223BE20](v14);
  v114 = &v107 - v15;
  v16 = sub_24FEDC854();
  v128 = *(v16 - 8);
  v17 = *(v128 + 64);
  MEMORY[0x28223BE20](v16);
  v121 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v129 = &v107 - v20;
  MEMORY[0x28223BE20](v21);
  v126 = &v107 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = (&v107 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = (&v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v32 = &v107 - v31;
  v119 = sub_24FEDC894();
  v33 = *(v119 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v119);
  MEMORY[0x28223BE20](v35);
  v123 = &v107 - v37;
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v130 = v16;
  v38 = *(a2 + 16);
  if (v38 <= a1)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v131 = v4;
  v132 = v29;
  v125 = v25;
  v122 = v11;
  v117 = v36;
  v39 = *(sub_24FEDC6C4() - 8);
  v40 = a2 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
  v41 = *(v39 + 72);
  sub_24FE8B614();
  sub_24FEDC6D4();
  v42 = v33;
  v43 = *(v33 + 48);
  v44 = v119;
  if (v43(v32, 1, v119) == 1)
  {
    v45 = v32;
LABEL_8:
    sub_24FE58B7C(v45, &qword_27F3A6138, &unk_24FEE4A10);
    return;
  }

  v112 = v42;
  v127 = *(v42 + 32);
  (v127)(v123, v32, v44);
  if (a1 - 1 >= v38)
  {
    goto LABEL_55;
  }

  v46 = v132;
  sub_24FEDC6D4();
  if (v43(v46, 1, v44) == 1)
  {
    (*(v112 + 8))(v123, v44);
    v45 = v46;
    goto LABEL_8;
  }

  (v127)(v117, v46, v44);
  v47 = sub_24FEDC864();
  v48 = v47;
  v49 = *(v47 + 16);
  if (v49)
  {
    v50 = sub_24FEBB71C(*(v47 + 16), 0);
    v51 = v128;
    v52 = v50;
    v53 = sub_24FEBB8A8(v133, v50 + ((*(v128 + 80) + 32) & ~*(v128 + 80)), v49, v48);

    v55 = v130;
    v54 = v131;
    if (v53 == v49)
    {

      v56 = v52;
      goto LABEL_13;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v56 = MEMORY[0x277D84F90];
  v55 = v130;
  v54 = v131;
  v51 = v128;
LABEL_13:
  v120 = v56;

  v57 = sub_24FEDC864();
  v58 = v57;
  v59 = *(v57 + 16);
  if (!v59)
  {

    v60 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v60 = sub_24FEBB71C(*(v57 + 16), 0);
  v61 = sub_24FEBB8A8(v133, v60 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v59, v58);

  if (v61 != v59)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_17:
  v62 = v120;

  v63 = *(sub_24FEDC864() + 16);

  v64 = *(sub_24FEDC864() + 16);

  v124 = v64;
  v132 = v63;
  if (v63)
  {
    v65 = 0;
    v66 = (v51 + 8);
    v127 = (v51 + 16);
    while (1)
    {
      if (v64 == v65)
      {
        v65 = v64;
        goto LABEL_36;
      }

      if (v65 >= *(v62 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v67 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v68 = *(v51 + 72) * v65;
      v69 = *(v51 + 16);
      v70 = v62 + v67 + v68;
      v71 = v125;
      v69(v125, v70, v55);
      if (v65 >= *(v60 + 16))
      {
        goto LABEL_52;
      }

      v72 = v60 + v67 + v68;
      v73 = v126;
      v69(v126, v72, v55);
      sub_24FEBC860(&qword_27F3A7098, MEMORY[0x277CC8CF0]);
      v74 = sub_24FEDE194();
      v75 = *v66;
      (*v66)(v73, v55);
      v75(v71, v55);
      if ((v74 & 1) == 0)
      {
        break;
      }

      ++v65;
      v54 = v131;
      v64 = v124;
      v62 = v120;
      if (v132 == v65)
      {
        goto LABEL_24;
      }
    }

    v54 = v131;
    v62 = v120;
LABEL_36:
    v131 = (v51 + 8);
    v107 = v60;
    v91 = *(v62 + 16);

    if (v91 < v132)
    {
      goto LABEL_58;
    }

    v126 = (v62 + ((*(v51 + 80) + 32) & ~*(v51 + 80)));
    v125 = (v115 + 16);
    v111 = (v115 + 88);
    v110 = *MEMORY[0x277CC8D38];
    v92 = (v115 + 8);
    v109 = *MEMORY[0x277CC8D08];
    v93 = (v115 + 104);
    v108 = *MEMORY[0x277CC8D18];
    v94 = v65;
    v95 = v114;
    while (1)
    {
      if (v132 == v94)
      {
        v60 = v107;
        v64 = v124;
        goto LABEL_25;
      }

      (*(v51 + 16))(v129, &v126[*(v51 + 72) * v94], v55);
      sub_24FEDC834();
      v96 = v118;
      (*v125)(v118, v95, v54);
      v97 = (*v111)(v96, v54);
      if (v97 == v110)
      {

        (*v92)(v95, v54);
        (*v131)(v129, v55);
        goto LABEL_50;
      }

      v98 = *v92;
      (*v92)(v96, v54);
      v99 = *v93;
      v100 = v122;
      (*v93)(v122, v109, v54);
      v101 = MEMORY[0x253058A70](v95, v100);
      v98(v100, v54);
      if (v101)
      {
        break;
      }

      v99(v100, v108, v54);
      v102 = MEMORY[0x253058A70](v95, v100);
      v98(v100, v54);
      v98(v95, v54);
      v55 = v130;
      (*v131)(v129, v130);
      ++v94;
      v51 = v128;
      if (v102)
      {

        goto LABEL_50;
      }
    }

    v98(v95, v54);
    (*v131)(v129, v130);
    goto LABEL_50;
  }

LABEL_24:

  v65 = v132;
LABEL_25:

  if (v65 >= v64)
  {

    v89 = *(v112 + 8);
    v90 = v119;
    v89(v117, v119);
    v89(v123, v90);
    return;
  }

  v76 = *(v60 + 16);

  if (v76 >= v64)
  {
    v77 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v107 = v60;
    v131 = (v60 + v77);
    v129 = (v51 + 16);
    v127 = (v115 + 16);
    v78 = (v115 + 88);
    LODWORD(v126) = *MEMORY[0x277CC8D38];
    v79 = (v115 + 8);
    LODWORD(v125) = *MEMORY[0x277CC8D08];
    v80 = (v115 + 104);
    LODWORD(v120) = *MEMORY[0x277CC8D18];
    v132 = (v51 + 8);
    v81 = v113;
    while (1)
    {
      if (v124 == v65)
      {

        v103 = *(v112 + 8);
        v104 = v119;
        v103(v117, v119);
        v103(v123, v104);
        return;
      }

      (*(v51 + 16))(v121, &v131[*(v51 + 72) * v65], v55);
      sub_24FEDC834();
      v82 = v116;
      (*v127)(v116, v81, v54);
      v83 = (*v78)(v82, v54);
      if (v83 == v126)
      {

        (*v79)(v81, v54);
        (*v132)(v121, v55);
        goto LABEL_50;
      }

      v84 = *v79;
      (*v79)(v82, v54);
      v85 = *v80;
      v86 = v122;
      (*v80)(v122, v125, v54);
      v87 = MEMORY[0x253058A70](v81, v86);
      v84(v86, v54);
      if (v87)
      {
        break;
      }

      v85(v86, v120, v54);
      v88 = MEMORY[0x253058A70](v81, v86);
      v84(v86, v54);
      v84(v81, v54);
      v55 = v130;
      (*v132)(v121, v130);
      ++v65;
      v51 = v128;
      if (v88)
      {

        goto LABEL_50;
      }
    }

    v84(v81, v54);
    (*v132)(v121, v130);
LABEL_50:
    v105 = *(v112 + 8);
    v106 = v119;
    v105(v117, v119);
    v105(v123, v106);
    return;
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_24FEBC7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FEBC860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FEBC8A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24FEDC6E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v19[-v8];
  sub_24FEDC6F4();
  sub_24FEBE970(&qword_27F3A7160, MEMORY[0x277CC8C08]);
  sub_24FEDE454();
  sub_24FEDE474();
  sub_24FEBE970(&qword_27F3A7168, MEMORY[0x277CC8BF8]);
  v10 = sub_24FEDE194();
  v11 = *(v3 + 8);
  v11(v6, v2);
  if (v10)
  {
    v11(v9, v2);
    v12 = sub_24FEDC6C4();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    v14 = sub_24FEDE4A4();
    v16 = v15;
    v17 = sub_24FEDC6C4();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1, v16, v17);
    v14(v19, 0);
    v11(v9, v2);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

uint64_t DocumentOutlineElement.init(id:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24FEDCA64();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for DocumentOutlineElement();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for DocumentOutlineElement()
{
  result = qword_27F3A7100;
  if (!qword_27F3A7100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentOutlineElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentOutlineElement.items.getter()
{
  v1 = *(v0 + *(type metadata accessor for DocumentOutlineElement() + 20));
}

uint64_t DocumentOutlineElement.makeView(textWrapOffset:)()
{
  v1 = type metadata accessor for DocumentOutlineView.Content();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for DocumentOutlineElement() + 20));
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v16 = MEMORY[0x277D84F90];
    sub_24FEBDC94(0, v7, 0);
    v8 = v16;
    v9 = (v6 + 32);
    do
    {
      v10 = *v9;

      sub_24FEBCE74(v11, v5);

      v16 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24FEBDC94(v12 > 1, v13 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v13 + 1;
      sub_24FEBDCD8(v5, v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13);
      ++v9;
      --v7;
    }

    while (v7);
  }

  return v8;
}
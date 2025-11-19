uint64_t sub_24F098D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a6;
  v72 = a5;
  v74 = a4;
  v71 = a3;
  v77 = a2;
  v75 = a7;
  v58 = sub_24F924218();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v76 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9218D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238868);
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v14 = &v58 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238858);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = &v58 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238938);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v58 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238850);
  v17 = MEMORY[0x28223BE20](v62);
  v69 = &v58 - v18;
  (*(v10 + 16))(v12, a1, v9, v17);
  sub_24F9218B8();
  type metadata accessor for GSKComponentContentBuilder();
  sub_24F09F654(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  v19 = sub_24F923598();
  v21 = v20;
  (*(v10 + 8))(v12, v9);
  v86 = v19;
  LOBYTE(v87) = v21 & 1;
  v70 = a1;
  sub_24F9218B8();
  v84 = 0;
  memset(v83, 0, sizeof(v83));
  v82 = 0;
  memset(v81, 0, sizeof(v81));
  v78 = v85;
  v79 = v83;
  v80 = v81;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238870);
  v23 = sub_24E66C1E0();
  v24 = sub_24E6A4C1C();
  v25 = sub_24F09D39C();
  v56 = v25;
  sub_24F926B08();
  sub_24E88F154(&v86);
  sub_24E601704(v81, &qword_27F2171C8);
  sub_24E601704(v83, qword_27F21B590);
  sub_24E601704(v85, &qword_27F2171D0);
  if (*(v77 + *(type metadata accessor for GSKShelf() + 48)) == 1)
  {
    sub_24F924208();
    v26 = v58;
  }

  else
  {
    v86 = MEMORY[0x277D84F90];
    sub_24F09F654(&qword_27F216C88, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
    v27 = v58;
    sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
    sub_24F92C6A8();
    v26 = v27;
  }

  v86 = &type metadata for GSKComponentView;
  v87 = &type metadata for GameOverlayViewPredicate;
  v88 = v22;
  v89 = v23;
  v90 = v24;
  v91 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v61;
  v30 = v76;
  v31 = v63;
  sub_24F926AE8();
  (*(v60 + 8))(v30, v26);
  (*(v59 + 8))(v14, v31);
  v32 = v70;
  sub_24F9218B8();
  v33 = v89;
  v34 = v90;
  v35 = __swift_project_boxed_opaque_existential_1(&v86, v89);
  v85[3] = v33;
  v85[4] = *(v34 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
  (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v35, v33);
  v37 = sub_24F9218C8();
  v38 = sub_24F9275D8();
  v39 = sub_24F926CA8();
  MEMORY[0x28223BE20](v39);
  *(&v58 - 6) = v85;
  *(&v58 - 5) = v37;
  *(&v58 - 32) = 0;
  *(&v58 - 3) = v38;
  v57 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238860);
  *&v83[0] = v31;
  *(&v83[0] + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24F09B638();
  v56 = sub_24F09D458();
  v41 = v65;
  v42 = v66;
  sub_24F926B08();

  (*(v64 + 8))(v29, v42);
  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(&v86);
  v43 = sub_24F927618();
  v45 = v44;
  v46 = v69;
  v47 = &v69[*(v62 + 36)];
  sub_24F099764(v77, v32, v71, v72, v73, v47);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238890) + 36));
  *v48 = v43;
  v48[1] = v45;
  (*(v67 + 32))(v46, v41, v68);
  KeyPath = swift_getKeyPath();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238830);
  v51 = v75;
  v52 = (v75 + *(v50 + 36));
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2388A0) + 28);
  v54 = sub_24F9218F8();
  (*(*(v54 - 8) + 16))(v52 + v53, v74, v54);
  *v52 = KeyPath;
  return sub_24E6009C8(v46, v51, &qword_27F238850);
}

uint64_t sub_24F099764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a3;
  v42 = a6;
  v38 = a4;
  v36 = a5;
  v8 = type metadata accessor for SizedShelfGridView();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32[-v9];
  v11 = sub_24F9218D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238948);
  v15 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v17 = &v32[-v16];
  v43 = v8;
  v18 = *(a1 + *(v8 + 52));
  v39 = v10;
  v37 = v17;
  if (v18)
  {
    goto LABEL_2;
  }

  if (!*(a1 + *(v43 + 48)))
  {
LABEL_7:
    v30 = 1;
    return (*(v15 + 56))(v42, v30, 1, v41);
  }

  v34 = a1;
  sub_24F9218B8();
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  sub_24F928D68();
  sub_24E60169C(&v54, &v47, &qword_27F235830);
  sub_24E60169C(v40, &v50, &qword_27F235830);
  if (!*(&v48 + 1))
  {
    sub_24E601704(&v54, &qword_27F235830);
    v10 = v39;
    if (!*(&v51 + 1))
    {
      sub_24E601704(&v47, &qword_27F235830);
      __swift_destroy_boxed_opaque_existential_1(v53);
      a1 = v34;
      goto LABEL_2;
    }

LABEL_11:
    sub_24E601704(&v47, &qword_27F21B438);
    __swift_destroy_boxed_opaque_existential_1(v53);
    v30 = 1;
    return (*(v15 + 56))(v42, v30, 1, v41);
  }

  sub_24E60169C(&v47, v46, &qword_27F235830);
  if (!*(&v51 + 1))
  {
    sub_24E601704(&v54, &qword_27F235830);
    sub_24E6585F8(v46);
    goto LABEL_11;
  }

  v44[0] = v50;
  v44[1] = v51;
  v45 = v52;
  v33 = MEMORY[0x253052150](v46, v44);
  sub_24E6585F8(v44);
  sub_24E601704(&v54, &qword_27F235830);
  sub_24E6585F8(v46);
  sub_24E601704(&v47, &qword_27F235830);
  __swift_destroy_boxed_opaque_existential_1(v53);
  v10 = v39;
  a1 = v34;
  if ((v33 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_2:
  v34 = sub_24F926C98();
  v54 = v34;
  (*(v12 + 16))(v14, a2, v11);
  sub_24E60169C(v40, &v47, &qword_27F235830);
  v19 = v35;
  (*(v35 + 16))(v10, a1, v43);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v19 + 80) + v21 + 40) & ~*(v19 + 80);
  v23 = swift_allocObject();
  v24 = v36;
  *(v23 + 16) = v38;
  *(v23 + 24) = v24;
  (*(v12 + 32))(v23 + v20, v14, v11);
  v25 = v23 + v21;
  v26 = v48;
  *v25 = v47;
  *(v25 + 16) = v26;
  *(v25 + 32) = v49;
  v27 = v42;
  v28 = v41;
  (*(v19 + 32))(v23 + v22, v39, v43);
  v29 = v37;
  sub_24F9267B8();

  (*(v15 + 32))(v27, v29, v28);
  v30 = 0;
  return (*(v15 + 56))(v42, v30, 1, v41);
}

uint64_t sub_24F099D54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    sub_24F9218B8();
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_24F928D68();
    sub_24E60169C(v18, v12, &qword_27F235830);
    sub_24E60169C(a3, &v14, &qword_27F235830);
    if (v13)
    {
      sub_24E60169C(v12, v11, &qword_27F235830);
      if (*(&v15 + 1))
      {
        v9[0] = v14;
        v9[1] = v15;
        v10 = v16;
        v6 = MEMORY[0x253052150](v11, v9);
        sub_24E6585F8(v9);
        sub_24E601704(v18, &qword_27F235830);
        sub_24E6585F8(v11);
        sub_24E601704(v12, &qword_27F235830);
        __swift_destroy_boxed_opaque_existential_1(v17);
        if ((v6 & 1) == 0)
        {
LABEL_12:
          result = type metadata accessor for SizedShelfGridView();
          v8 = *(a4 + *(result + 52));
          if (v8)
          {
            sub_24F9218B8();
            v8(v12);
            return __swift_destroy_boxed_opaque_existential_1(v12);
          }

          return result;
        }

LABEL_8:
        v7 = *(a4 + *(type metadata accessor for SizedShelfGridView() + 48));
        if (v7)
        {
          v7();
        }

        goto LABEL_12;
      }

      sub_24E601704(v18, &qword_27F235830);
      sub_24E6585F8(v11);
    }

    else
    {
      sub_24E601704(v18, &qword_27F235830);
      if (!*(&v15 + 1))
      {
        sub_24E601704(v12, &qword_27F235830);
        __swift_destroy_boxed_opaque_existential_1(v17);
        goto LABEL_8;
      }
    }

    sub_24E601704(v12, &qword_27F21B438);
    __swift_destroy_boxed_opaque_existential_1(v17);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_24F099FF0(uint64_t a1)
{
  v2 = sub_24F9218F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_24F09F7AC();
  sub_24F924878();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_24F09A134@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598);
  v12 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  if (sub_24F4BB204())
  {
    sub_24F9271E8();
    v5 = sub_24F9251C8();
    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0) + 36)] = v5;
    v6 = *(v2 + 36);
    v7 = *MEMORY[0x277CE13B8];
    v8 = sub_24F927748();
    (*(*(v8 - 8) + 104))(&v4[v6], v7, v8);
    sub_24E6009C8(v4, a1, &qword_27F214598);
    return (*(v12 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v10 = *(v12 + 56);

    return v10(a1, 1, 1, v2);
  }
}

uint64_t sub_24F09A2F8(uint64_t a1)
{
  result = type metadata accessor for GSKShelf();
  if (!*(*(a1 + *(result + 60)) + 16))
  {
    result = type metadata accessor for SizedShelfGridView();
    v3 = (a1 + *(result + 48));
    if (*v3)
    {
      return (*v3)();
    }
  }

  return result;
}

void *sub_24F09A370@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F9249A8();
  v17 = 0;
  sub_24F09A4A4(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, __src, sizeof(v19));
  sub_24E60169C(__dst, &v14, &qword_27F238928);
  sub_24E601704(v19, &qword_27F238928);
  memcpy(&v16[7], __dst, 0x1C8uLL);
  v3 = v17;
  v4 = sub_24F925868();
  sub_24F923318();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  result = memcpy((a1 + 17), v16, 0x1CFuLL);
  *(a1 + 480) = v4;
  *(a1 + 488) = v6;
  *(a1 + 496) = v8;
  *(a1 + 504) = v10;
  *(a1 + 512) = v12;
  *(a1 + 520) = 0;
  return result;
}

uint64_t sub_24F09A4A4@<X0>(void *a1@<X8>)
{
  v10 = sub_24F926C98();
  sub_24F927618();
  sub_24F9238C8();
  v11 = v87;
  v17 = v91;
  v13 = v92;
  v14 = v89;
  sub_24F927618();
  sub_24F9242E8();
  v86 = v88;
  v12 = v88;
  v85 = v90;
  v15 = v90;
  v9 = sub_24F926C88();
  sub_24F927618();
  sub_24F9242E8();
  v8 = sub_24F926C98();
  sub_24F927618();
  sub_24F9238C8();
  sub_24F927618();
  sub_24F9242E8();
  v84 = v94;
  v83 = v96;
  *&v40 = v10;
  *(&v40 + 1) = v87;
  LOBYTE(v41) = v88;
  *(&v41 + 1) = v89;
  LOBYTE(v42) = v90;
  *(&v42 + 1) = v91;
  *v43 = v92;
  *&v43[56] = v36;
  *&v43[72] = v37;
  *&v43[88] = v38;
  *&v43[104] = v39;
  *&v43[8] = v33;
  *&v43[24] = v34;
  *&v43[40] = v35;
  __src[8] = *&v43[80];
  __src[9] = *&v43[96];
  __src[2] = v42;
  __src[3] = *v43;
  __src[4] = *&v43[16];
  __src[5] = *&v43[32];
  __src[6] = *&v43[48];
  __src[7] = *&v43[64];
  __src[0] = v40;
  __src[1] = v41;
  *&v44[56] = v29;
  *&v44[72] = v30;
  *v44 = v9;
  *&v44[88] = v31;
  *&v44[104] = v32;
  *&v44[8] = v26;
  *&v44[40] = v28;
  *&v44[24] = v27;
  *(&__src[16] + 8) = *&v44[96];
  *(&__src[13] + 8) = *&v44[48];
  *(&__src[12] + 8) = *&v44[32];
  *(&__src[11] + 8) = *&v44[16];
  *(&__src[10] + 8) = *v44;
  *&__src[10] = *(&v39 + 1);
  *(&__src[17] + 1) = *(&v32 + 1);
  *(&__src[15] + 8) = *&v44[80];
  *(&__src[14] + 8) = *&v44[64];
  v1 = v93;
  *&v45 = v8;
  *(&v45 + 1) = v93;
  LOBYTE(v46) = v94;
  v2 = v94;
  v3 = v95;
  *(&v46 + 1) = v95;
  LOBYTE(v47) = v96;
  v4 = v96;
  v5 = v98;
  v6 = v97;
  *(&v47 + 1) = v97;
  *v48 = v98;
  *&v48[24] = v20;
  *&v48[40] = v21;
  *&v48[8] = v19;
  *&v48[104] = v25;
  *&v48[88] = v24;
  *&v48[72] = v23;
  *&v48[56] = v22;
  __src[18] = v45;
  __src[19] = v46;
  __src[22] = *&v48[16];
  __src[23] = *&v48[32];
  __src[20] = v47;
  __src[21] = *v48;
  *&__src[28] = *(&v25 + 1);
  __src[26] = *&v48[80];
  __src[27] = *&v48[96];
  __src[24] = *&v48[48];
  __src[25] = *&v48[64];
  memcpy(a1, __src, 0x1C8uLL);
  v58 = v22;
  v59 = v23;
  v60 = v24;
  v61 = v25;
  v55 = v19;
  v56 = v20;
  v49[0] = v8;
  v49[1] = v1;
  v50 = v2;
  v51 = v3;
  v52 = v4;
  v53 = v6;
  v54 = v5;
  v57 = v21;
  sub_24E60169C(&v40, v70, &qword_27F238930);
  sub_24E60169C(v44, v70, &qword_27F232280);
  sub_24E60169C(&v45, v70, &qword_27F238930);
  sub_24E601704(v49, &qword_27F238930);
  v66 = v29;
  v67 = v30;
  v68 = v31;
  v69 = v32;
  v63 = v26;
  v64 = v27;
  v62 = v9;
  v65 = v28;
  sub_24E601704(&v62, &qword_27F232280);
  v79 = v36;
  v80 = v37;
  v81 = v38;
  v82 = v39;
  v76 = v33;
  v77 = v34;
  v70[0] = v10;
  v70[1] = v11;
  v71 = v12;
  v72 = v14;
  v73 = v15;
  v74 = v17;
  v75 = v13;
  v78 = v35;
  return sub_24E601704(v70, &qword_27F238930);
}

uint64_t sub_24F09AA0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v43 = a8;
  LODWORD(v39) = a4;
  v46 = a1;
  v47 = a9;
  v42 = a12;
  v41 = a11;
  v40 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v38 - v18;
  v20 = sub_24F927618();
  v44 = v21;
  v45 = v20;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F92ADC8();
  v22 = sub_24F929608();
  if ((*(*(v22 - 8) + 48))(v19, 1, v22) != 1)
  {
    sub_24E601704(v19, &qword_27F213E68);
    if (v39)
    {
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      v26 = sub_24E6438B4();
      if (v27)
      {
        goto LABEL_3;
      }

      a3 = v26;
    }

    v56[0] = a3;
    v23 = sub_24F92CD88();
    v24 = v28;

    v25 = 0x4024000000000000;
    goto LABEL_8;
  }

  sub_24E601704(v19, &qword_27F213E68);
LABEL_3:
  v23 = 0;
  v24 = 0;
  a5 = 0;
  a6 = 0;
  a7 = 0;
  v25 = 0;
LABEL_8:
  v39 = a7;
  *&v49 = v23;
  *(&v49 + 1) = v24;
  *&v50 = a5;
  *(&v50 + 1) = a6;
  v51 = 0u;
  v52 = 0u;
  *&v53 = a7;
  *(&v53 + 1) = v25;
  LOBYTE(v54) = 0;
  v29 = v44;
  v30 = v45;
  *(&v54 + 1) = v45;
  v55 = v44;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v43);
  v32 = v47;
  (*(*(v31 - 8) + 16))(v47, v46, v31);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v41) + 36);
  v34 = v54;
  *(v33 + 64) = v53;
  *(v33 + 80) = v34;
  *(v33 + 96) = v55;
  v35 = v50;
  *v33 = v49;
  *(v33 + 16) = v35;
  v36 = v52;
  *(v33 + 32) = v51;
  *(v33 + 48) = v36;
  v56[0] = v23;
  v56[1] = v24;
  v56[2] = a5;
  v56[3] = a6;
  v57 = 0u;
  v58 = 0u;
  v59 = v39;
  v60 = v25;
  v61 = 0;
  v62 = v30;
  v63 = v29;
  sub_24E60169C(&v49, &v48, &qword_27F2387A8);
  return sub_24E601704(v56, &qword_27F2387A8);
}

void sub_24F09AD74()
{
  type metadata accessor for GSKShelf();
  if (v0 <= 0x3F)
  {
    sub_24E6C5550();
    if (v1 <= 0x3F)
    {
      sub_24F09B380(319, &qword_27F2153E8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E6CAEE4(319, &qword_27F22EB18, &unk_27F22EB20, &unk_24F9C4E60, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24F09B380(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_24F09B380(319, &qword_27F254DF0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24F09B32C(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
              if (v6 <= 0x3F)
              {
                sub_24E6CAEE4(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_24F09B380(319, &qword_27F22F670, &type metadata for BackgroundThemeStyle, MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_24F09B380(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
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

uint64_t sub_24F09B000(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GSKShelf();
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
    v12 = *(a1 + a3[9]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[17];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[18];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24F09B1A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for GSKShelf();
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
    *(a1 + a4[9]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[17];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[18];

  return v16(v17, a2, a2, v15);
}

void sub_24F09B32C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24F09B380(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24F09B3D0()
{
  type metadata accessor for SizedShelfGridView();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2383C8);
  swift_getWitnessTable();
  sub_24EB68EB4();
  swift_getWitnessTable();
  sub_24F0904D0();
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  sub_24F924E38();
  sub_24F924E38();
  sub_24F924E38();
  sub_24F924E38();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_24F09B638()
{
  result = qword_27F2387B0;
  if (!qword_27F2387B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2387B0);
  }

  return result;
}

unint64_t sub_24F09B68C()
{
  result = qword_27F2387D0;
  if (!qword_27F2387D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2387D0);
  }

  return result;
}

uint64_t sub_24F09B734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F09B794()
{
  v1 = v0;
  v2 = type metadata accessor for SizedShelfGridView();
  v108 = *(*(v2 - 1) + 80);
  v103 = *(*(v2 - 1) + 64);
  v3 = sub_24F9218F8();
  v106 = *(v3 - 8);
  v107 = v3;
  v105 = *(v106 + 80);
  v104 = (v108 + 32) & ~v108;
  v4 = v0 + v104;
  v5 = sub_24F92AA48();
  (*(*(v5 - 8) + 8))(v0 + v104, v5);
  v6 = type metadata accessor for GSKShelf();
  v7 = *(v6 + 20);
  v8 = sub_24F929608();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v102 = v6;
  v10 = v4 + *(v6 + 24);
  v11 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v12 = *(*(v11 - 1) + 48);
  if (!v12(v10, 1, v11))
  {

    v13 = v10 + v11[5];
    v14 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      goto LABEL_5;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v76 = sub_24F9289E8();
          (*(*(v76 - 8) + 8))(v13, v76);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_5:
          v15 = v10 + v11[7];
          v16 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v18 = sub_24F928388();
              (*(*(v18 - 8) + 8))(v15, v18);
            }
          }

          v19 = v10 + v11[10];
          if (*(v19 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v19);
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v64 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v65 = type metadata accessor for JSColor();
        if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
        {
          v66 = sub_24F928388();
          (*(*(v66 - 8) + 8))(v64, v66);
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v73 = sub_24F9289E8();
        v74 = *(v73 - 8);
        if (!(*(v74 + 48))(v13, 1, v73))
        {
          (*(v74 + 8))(v13, v73);
        }

        if (*(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  v20 = type metadata accessor for HeaderPresentation(0);
  v21 = v10 + v20[5];
  if (v12(v21, 1, v11))
  {
    goto LABEL_33;
  }

  v101 = v1;

  v22 = v21 + v11[5];
  v23 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    goto LABEL_18;
  }

  v26 = swift_getEnumCaseMultiPayload();
  if (v26 <= 2)
  {
    if (!v26)
    {

      v67 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v68 = type metadata accessor for JSColor();
      if (!(*(*(v68 - 8) + 48))(v67, 1, v68))
      {
        v69 = sub_24F928388();
        (*(*(v69 - 8) + 8))(v67, v69);
      }

      goto LABEL_18;
    }

    if (v26 == 1)
    {
      v75 = sub_24F9289E8();
      v100 = *(v75 - 8);
      if (!(*(v100 + 48))(v22, 1, v75))
      {
        (*(v100 + 8))(v22, v75);
      }

      if (*(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_18;
    }

    if (v26 != 2)
    {
      goto LABEL_18;
    }

LABEL_46:

    goto LABEL_18;
  }

  switch(v26)
  {
    case 3:
      goto LABEL_46;
    case 4:
      v79 = sub_24F9289E8();
      (*(*(v79 - 8) + 8))(v22, v79);
      break;
    case 5:
      goto LABEL_46;
  }

LABEL_18:
  v24 = v21 + v11[7];
  v25 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v27 = sub_24F928388();
      (*(*(v27 - 8) + 8))(v24, v27);
    }
  }

  v28 = v21 + v11[10];
  v1 = v101;
  if (*(v28 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

LABEL_33:
  v29 = v10 + v20[6];
  if (v12(v29, 1, v11))
  {
    goto LABEL_50;
  }

  v30 = v1;

  v31 = v29 + v11[5];
  v32 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    goto LABEL_35;
  }

  v35 = swift_getEnumCaseMultiPayload();
  if (v35 <= 2)
  {
    if (!v35)
    {

      v70 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v71 = type metadata accessor for JSColor();
      if (!(*(*(v71 - 8) + 48))(v70, 1, v71))
      {
        v72 = sub_24F928388();
        (*(*(v72 - 8) + 8))(v70, v72);
      }

      goto LABEL_35;
    }

    if (v35 == 1)
    {
      v77 = sub_24F9289E8();
      v78 = *(v77 - 8);
      if (!(*(v78 + 48))(v31, 1, v77))
      {
        (*(v78 + 8))(v31, v77);
      }

      if (*(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_35;
    }

    if (v35 != 2)
    {
      goto LABEL_35;
    }

LABEL_101:

    goto LABEL_35;
  }

  switch(v35)
  {
    case 3:
      goto LABEL_101;
    case 4:
      v80 = sub_24F9289E8();
      (*(*(v80 - 8) + 8))(v31, v80);
      break;
    case 5:
      goto LABEL_101;
  }

LABEL_35:
  v33 = v29 + v11[7];
  v34 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v36 = sub_24F928388();
      (*(*(v36 - 8) + 8))(v33, v36);
    }
  }

  v37 = v29 + v11[10];
  v1 = v30;
  if (*(v37 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

LABEL_50:
  v38 = v10 + v20[7];
  if (*(v38 + 56) == 1)
  {
  }

  else if (!*(v38 + 56))
  {

    if (*(v38 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v38 + 16);
    }
  }

  v39 = v10 + v20[8];
  v40 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    v55 = swift_getEnumCaseMultiPayload();
    if (v55 == 2)
    {
      goto LABEL_142;
    }

    if (v55 != 1)
    {
      if (v55)
      {
        goto LABEL_56;
      }

      v56 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v56 - 8) + 48))(v39, 1, v56))
      {
        goto LABEL_56;
      }

      v57 = swift_getEnumCaseMultiPayload();
      if (v57 > 2)
      {
        if (v57 != 3)
        {
          if (v57 == 4)
          {
            v99 = sub_24F9289E8();
            (*(*(v99 - 8) + 8))(v39, v99);
            goto LABEL_56;
          }

          if (v57 != 5)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_142;
      }

      if (v57)
      {
        if (v57 == 1)
        {
          v97 = sub_24F9289E8();
          v98 = *(v97 - 8);
          if (!(*(v98 + 48))(v39, 1, v97))
          {
            (*(v98 + 8))(v39, v97);
          }

          if (!*(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_56;
          }
        }

        else if (v57 != 2)
        {
          goto LABEL_56;
        }

LABEL_142:

        goto LABEL_56;
      }

      v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_161:
      v93 = v39 + v87;
      v94 = type metadata accessor for JSColor();
      if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
      {
        v95 = sub_24F928388();
        (*(*(v95 - 8) + 8))(v93, v95);
      }

      goto LABEL_56;
    }

    v58 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v59 = *(*(v58 - 8) + 48);
    if (v59(v39, 1, v58))
    {
LABEL_92:
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v61 = v39 + *(v60 + 48);
      if (!v59(v61, 1, v58))
      {
        v62 = swift_getEnumCaseMultiPayload();
        if (v62 <= 2)
        {
          switch(v62)
          {
            case 0:

              v81 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v82 = type metadata accessor for JSColor();
              if (!(*(*(v82 - 8) + 48))(v81, 1, v82))
              {
                v83 = sub_24F928388();
                (*(*(v83 - 8) + 8))(v81, v83);
              }

              goto LABEL_160;
            case 1:
              v88 = sub_24F9289E8();
              v89 = *(v88 - 8);
              if (!(*(v89 + 48))(v61, 1, v88))
              {
                (*(v89 + 8))(v61, v88);
              }

              if (!*(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_160;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_160;
          }

LABEL_154:

          goto LABEL_160;
        }

        switch(v62)
        {
          case 3:
            goto LABEL_154;
          case 4:
            v92 = sub_24F9289E8();
            (*(*(v92 - 8) + 8))(v61, v92);
            break;
          case 5:
            goto LABEL_154;
        }
      }

LABEL_160:
      v87 = *(v60 + 80);
      goto LABEL_161;
    }

    v63 = swift_getEnumCaseMultiPayload();
    if (v63 > 2)
    {
      if (v63 != 3)
      {
        if (v63 == 4)
        {
          v96 = sub_24F9289E8();
          (*(*(v96 - 8) + 8))(v39, v96);
          goto LABEL_92;
        }

        if (v63 != 5)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      if (!v63)
      {

        v84 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v85 = type metadata accessor for JSColor();
        if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
        {
          v86 = sub_24F928388();
          (*(*(v86 - 8) + 8))(v84, v86);
        }

        goto LABEL_92;
      }

      if (v63 == 1)
      {
        v90 = sub_24F9289E8();
        v91 = *(v90 - 8);
        if (!(*(v91 + 48))(v39, 1, v90))
        {
          (*(v91 + 8))(v39, v90);
        }

        if (*(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_92;
      }

      if (v63 != 2)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_92;
  }

LABEL_56:
  v41 = v4 + v102[13];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = v4 + v102[14];
  if (*(v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = v4 + v102[16];
  if (*(v43 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  if (*(v4 + v2[12]))
  {
  }

  if (*(v4 + v2[13]))
  {
  }

  sub_24E62A5EC(*(v4 + v2[14]), *(v4 + v2[14] + 8));
  v44 = v4 + v2[15];
  sub_24E669FC4(*v44, *(v44 + 8), *(v44 + 16), *(v44 + 24), *(v44 + 32));
  sub_24E62A5EC(*(v4 + v2[16]), *(v4 + v2[16] + 8));
  v45 = v2[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_24F923E98();
    (*(*(v46 - 8) + 8))(v4 + v45, v46);
  }

  else
  {
  }

  v47 = v2[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = sub_24F925218();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(v4 + v47, 1, v48))
    {
      (*(v49 + 8))(v4 + v47, v48);
    }
  }

  else
  {
  }

  v50 = (v103 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = v2[19];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = sub_24F925218();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(v4 + v51, 1, v52))
    {
      (*(v53 + 8))(v4 + v51, v52);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v4 + v2[20]), *(v4 + v2[20] + 8));
  sub_24E62A5EC(*(v4 + v2[21]), *(v4 + v2[21] + 8));
  if (*(v1 + v50 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + v50);
  }

  (*(v106 + 8))(v1 + ((v50 + v105 + 40) & ~v105), v107);

  return swift_deallocObject();
}

uint64_t sub_24F09CF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SizedShelfGridView() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_24F9218F8() - 8);
  v11 = v2 + ((v9 + *(v10 + 80) + 40) & ~*(v10 + 80));

  return sub_24F098D94(a1, v2 + v8, v2 + v9, v11, v5, v6, a2);
}

uint64_t sub_24F09D070@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SizedShelfGridView();

  return sub_24F09A134(a1);
}

unint64_t sub_24F09D10C()
{
  result = qword_27F238840;
  if (!qword_27F238840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238830);
    sub_24F09D1C4();
    sub_24E602068(&qword_27F238898, &qword_27F2388A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238840);
  }

  return result;
}

unint64_t sub_24F09D1C4()
{
  result = qword_27F238848;
  if (!qword_27F238848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238850);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238870);
    sub_24E66C1E0();
    sub_24E6A4C1C();
    sub_24F09D39C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24F09B638();
    sub_24F09D458();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F238888, &qword_27F238890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238848);
  }

  return result;
}

unint64_t sub_24F09D39C()
{
  result = qword_27F238878;
  if (!qword_27F238878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238870);
    sub_24E66C1E0();
    sub_24F09F654(&qword_27F217130, type metadata accessor for ZoomableViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238878);
  }

  return result;
}

unint64_t sub_24F09D458()
{
  result = qword_27F238880;
  if (!qword_27F238880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238870);
    sub_24E66C1E0();
    sub_24E6A4C1C();
    sub_24F09D39C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2387B8, &qword_27F2387A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238880);
  }

  return result;
}

unint64_t sub_24F09D5C0()
{
  result = qword_27F2388B0;
  if (!qword_27F2388B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214598);
    sub_24F09D64C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2388B0);
  }

  return result;
}

unint64_t sub_24F09D64C()
{
  result = qword_27F2388B8;
  if (!qword_27F2388B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2145B0);
    sub_24F09F654(&qword_27F2388C0, MEMORY[0x277CDF088]);
    sub_24E602068(&qword_27F217388, &qword_27F217390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2388B8);
  }

  return result;
}

unint64_t sub_24F09D734()
{
  result = qword_27F2388E0;
  if (!qword_27F2388E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387F8);
    sub_24F09D7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2388E0);
  }

  return result;
}

unint64_t sub_24F09D7C0()
{
  result = qword_27F2388E8;
  if (!qword_27F2388E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318B0);
    sub_24EE50CBC();
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318A8);
    sub_24EE50E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2388E8);
  }

  return result;
}

unint64_t sub_24F09D94C()
{
  result = qword_27F2388F0;
  if (!qword_27F2388F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388D8);
    sub_24E602068(&qword_27F2388F8, &qword_27F238900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2388F0);
  }

  return result;
}

uint64_t objectdestroy_83Tm()
{
  v1 = type metadata accessor for SizedShelfGridView();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 32) & ~v2);
  v4 = sub_24F92AA48();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for GSKShelf();
  v6 = *(v5 + 20);
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v98 = v5;
  v9 = v3 + *(v5 + 24);
  v10 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v11 = *(*(v10 - 1) + 48);
  if (!v11(v9, 1, v10))
  {

    v12 = v9 + v10[5];
    v13 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      goto LABEL_5;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v73 = sub_24F9289E8();
          (*(*(v73 - 8) + 8))(v12, v73);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_5:
          v14 = v9 + v10[7];
          v15 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v17 = sub_24F928388();
              (*(*(v17 - 8) + 8))(v14, v17);
            }
          }

          v18 = v9 + v10[10];
          if (*(v18 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v18);
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v61 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v62 = type metadata accessor for JSColor();
        if (!(*(*(v62 - 8) + 48))(v61, 1, v62))
        {
          v63 = sub_24F928388();
          (*(*(v63 - 8) + 8))(v61, v63);
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v70 = sub_24F9289E8();
        v71 = *(v70 - 8);
        if (!(*(v71 + 48))(v12, 1, v70))
        {
          (*(v71 + 8))(v12, v70);
        }

        if (*(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  v19 = type metadata accessor for HeaderPresentation(0);
  v20 = v9 + v19[5];
  if (v11(v20, 1, v10))
  {
    goto LABEL_33;
  }

  v21 = v20 + v10[5];
  v22 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    goto LABEL_18;
  }

  v25 = swift_getEnumCaseMultiPayload();
  if (v25 <= 2)
  {
    if (!v25)
    {

      v64 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v65 = type metadata accessor for JSColor();
      if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
      {
        v66 = sub_24F928388();
        (*(*(v66 - 8) + 8))(v64, v66);
      }

      goto LABEL_18;
    }

    if (v25 == 1)
    {
      v72 = sub_24F9289E8();
      v96 = *(v72 - 8);
      if (!(*(v96 + 48))(v21, 1, v72))
      {
        (*(v96 + 8))(v21, v72);
      }

      if (*(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_18;
    }

    if (v25 != 2)
    {
      goto LABEL_18;
    }

LABEL_46:

    goto LABEL_18;
  }

  switch(v25)
  {
    case 3:
      goto LABEL_46;
    case 4:
      v75 = sub_24F9289E8();
      (*(*(v75 - 8) + 8))(v21, v75);
      break;
    case 5:
      goto LABEL_46;
  }

LABEL_18:
  v23 = v20 + v10[7];
  v24 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v26 = sub_24F928388();
      (*(*(v26 - 8) + 8))(v23, v26);
    }
  }

  v27 = v20 + v10[10];
  if (*(v27 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

LABEL_33:
  v28 = v9 + v19[6];
  if (v11(v28, 1, v10))
  {
    goto LABEL_50;
  }

  v29 = v28 + v10[5];
  v30 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    goto LABEL_35;
  }

  v33 = swift_getEnumCaseMultiPayload();
  if (v33 <= 2)
  {
    if (!v33)
    {

      v67 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v68 = type metadata accessor for JSColor();
      if (!(*(*(v68 - 8) + 48))(v67, 1, v68))
      {
        v69 = sub_24F928388();
        (*(*(v69 - 8) + 8))(v67, v69);
      }

      goto LABEL_35;
    }

    if (v33 == 1)
    {
      v74 = sub_24F9289E8();
      v97 = *(v74 - 8);
      if (!(*(v97 + 48))(v29, 1, v74))
      {
        (*(v97 + 8))(v29, v74);
      }

      if (*(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_35;
    }

    if (v33 != 2)
    {
      goto LABEL_35;
    }

LABEL_99:

    goto LABEL_35;
  }

  switch(v33)
  {
    case 3:
      goto LABEL_99;
    case 4:
      v76 = sub_24F9289E8();
      (*(*(v76 - 8) + 8))(v29, v76);
      break;
    case 5:
      goto LABEL_99;
  }

LABEL_35:
  v31 = v28 + v10[7];
  v32 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v34 = sub_24F928388();
      (*(*(v34 - 8) + 8))(v31, v34);
    }
  }

  v35 = v28 + v10[10];
  if (*(v35 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

LABEL_50:
  v36 = v9 + v19[7];
  if (*(v36 + 56) == 1)
  {
  }

  else if (!*(v36 + 56))
  {

    if (*(v36 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v36 + 16);
    }
  }

  v37 = v9 + v19[8];
  v38 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v52 = swift_getEnumCaseMultiPayload();
    if (v52 == 2)
    {
      goto LABEL_140;
    }

    if (v52 != 1)
    {
      if (v52)
      {
        goto LABEL_56;
      }

      v53 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v53 - 8) + 48))(v37, 1, v53))
      {
        goto LABEL_56;
      }

      v54 = swift_getEnumCaseMultiPayload();
      if (v54 > 2)
      {
        if (v54 != 3)
        {
          if (v54 == 4)
          {
            v95 = sub_24F9289E8();
            (*(*(v95 - 8) + 8))(v37, v95);
            goto LABEL_56;
          }

          if (v54 != 5)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_140;
      }

      if (v54)
      {
        if (v54 == 1)
        {
          v93 = sub_24F9289E8();
          v94 = *(v93 - 8);
          if (!(*(v94 + 48))(v37, 1, v93))
          {
            (*(v94 + 8))(v37, v93);
          }

          if (!*(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_56;
          }
        }

        else if (v54 != 2)
        {
          goto LABEL_56;
        }

LABEL_140:

        goto LABEL_56;
      }

      v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_159:
      v89 = v37 + v83;
      v90 = type metadata accessor for JSColor();
      if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
      {
        v91 = sub_24F928388();
        (*(*(v91 - 8) + 8))(v89, v91);
      }

      goto LABEL_56;
    }

    v55 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v56 = *(*(v55 - 8) + 48);
    if (v56(v37, 1, v55))
    {
LABEL_90:
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v58 = v37 + *(v57 + 48);
      if (!v56(v58, 1, v55))
      {
        v59 = swift_getEnumCaseMultiPayload();
        if (v59 <= 2)
        {
          switch(v59)
          {
            case 0:

              v77 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v78 = type metadata accessor for JSColor();
              if (!(*(*(v78 - 8) + 48))(v77, 1, v78))
              {
                v79 = sub_24F928388();
                (*(*(v79 - 8) + 8))(v77, v79);
              }

              goto LABEL_158;
            case 1:
              v84 = sub_24F9289E8();
              v85 = *(v84 - 8);
              if (!(*(v85 + 48))(v58, 1, v84))
              {
                (*(v85 + 8))(v58, v84);
              }

              if (!*(v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_158;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_158;
          }

LABEL_152:

          goto LABEL_158;
        }

        switch(v59)
        {
          case 3:
            goto LABEL_152;
          case 4:
            v88 = sub_24F9289E8();
            (*(*(v88 - 8) + 8))(v58, v88);
            break;
          case 5:
            goto LABEL_152;
        }
      }

LABEL_158:
      v83 = *(v57 + 80);
      goto LABEL_159;
    }

    v60 = swift_getEnumCaseMultiPayload();
    if (v60 > 2)
    {
      if (v60 != 3)
      {
        if (v60 == 4)
        {
          v92 = sub_24F9289E8();
          (*(*(v92 - 8) + 8))(v37, v92);
          goto LABEL_90;
        }

        if (v60 != 5)
        {
          goto LABEL_90;
        }
      }
    }

    else
    {
      if (!v60)
      {

        v80 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v81 = type metadata accessor for JSColor();
        if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
        {
          v82 = sub_24F928388();
          (*(*(v82 - 8) + 8))(v80, v82);
        }

        goto LABEL_90;
      }

      if (v60 == 1)
      {
        v86 = sub_24F9289E8();
        v87 = *(v86 - 8);
        if (!(*(v87 + 48))(v37, 1, v86))
        {
          (*(v87 + 8))(v37, v86);
        }

        if (*(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_90;
      }

      if (v60 != 2)
      {
        goto LABEL_90;
      }
    }

    goto LABEL_90;
  }

LABEL_56:
  v39 = v3 + v98[13];
  if (*(v39 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = v3 + v98[14];
  if (*(v40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v3 + v98[16];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  if (*(v3 + v1[12]))
  {
  }

  if (*(v3 + v1[13]))
  {
  }

  sub_24E62A5EC(*(v3 + v1[14]), *(v3 + v1[14] + 8));
  v42 = v3 + v1[15];
  sub_24E669FC4(*v42, *(v42 + 8), *(v42 + 16), *(v42 + 24), *(v42 + 32));
  sub_24E62A5EC(*(v3 + v1[16]), *(v3 + v1[16] + 8));
  v43 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = sub_24F923E98();
    (*(*(v44 - 8) + 8))(v3 + v43, v44);
  }

  else
  {
  }

  v45 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_24F925218();
    v47 = *(v46 - 8);
    if (!(*(v47 + 48))(v3 + v45, 1, v46))
    {
      (*(v47 + 8))(v3 + v45, v46);
    }
  }

  else
  {
  }

  v48 = v1[19];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = sub_24F925218();
    v50 = *(v49 - 8);
    if (!(*(v50 + 48))(v3 + v48, 1, v49))
    {
      (*(v50 + 8))(v3 + v48, v49);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v3 + v1[20]), *(v3 + v1[20] + 8));
  sub_24E62A5EC(*(v3 + v1[21]), *(v3 + v1[21] + 8));

  return swift_deallocObject();
}

uint64_t sub_24F09F130()
{
  v1 = *(type metadata accessor for SizedShelfGridView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_24F09A2F8(v2);
}

unint64_t sub_24F09F1B4()
{
  result = qword_27F238908;
  if (!qword_27F238908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388D8);
    sub_24F09D734();
    sub_24F09D94C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238908);
  }

  return result;
}

uint64_t sub_24F09F3C0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F09F43C()
{
  result = qword_27F238918;
  if (!qword_27F238918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221398);
    sub_24F09F4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238918);
  }

  return result;
}

unint64_t sub_24F09F4C8()
{
  result = qword_27F238920;
  if (!qword_27F238920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221308);
    sub_24E8F2424();
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221380);
    sub_24E8F2824();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238920);
  }

  return result;
}

uint64_t sub_24F09F654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F09F69C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F09F7AC()
{
  result = qword_27F238940;
  if (!qword_27F238940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238940);
  }

  return result;
}

uint64_t sub_24F09F800()
{
  v1 = v0;
  v2 = sub_24F9218D8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for SizedShelfGridView();
  v103 = *(*(v6 - 1) + 80);
  (*(v3 + 8))(v1 + v4, v2);
  if (*(v1 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + v5);
  }

  v7 = v1 + ((v5 + v103 + 40) & ~v103);
  v8 = sub_24F92AA48();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for GSKShelf();
  v10 = *(v9 + 20);
  v11 = sub_24F929608();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v102 = v9;
  v13 = v7 + *(v9 + 24);
  v14 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v15 = *(*(v14 - 1) + 48);
  if (!v15(v13, 1, v14))
  {

    v16 = v13 + v14[5];
    v17 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      goto LABEL_7;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v77 = sub_24F9289E8();
          (*(*(v77 - 8) + 8))(v16, v77);
          goto LABEL_7;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_7:
          v18 = v13 + v14[7];
          v19 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v21 = sub_24F928388();
              (*(*(v21 - 8) + 8))(v18, v21);
            }
          }

          v22 = v13 + v14[10];
          if (*(v22 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v22);
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v65 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v66 = type metadata accessor for JSColor();
        if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
        {
          v67 = sub_24F928388();
          (*(*(v67 - 8) + 8))(v65, v67);
        }

        goto LABEL_7;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v74 = sub_24F9289E8();
        v75 = *(v74 - 8);
        if (!(*(v75 + 48))(v16, 1, v74))
        {
          (*(v75 + 8))(v16, v74);
        }

        if (*(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_7;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_7;
  }

LABEL_18:
  v23 = type metadata accessor for HeaderPresentation(0);
  v24 = v13 + v23[5];
  if (v15(v24, 1, v14))
  {
    goto LABEL_35;
  }

  v25 = v24 + v14[5];
  v26 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    goto LABEL_20;
  }

  v29 = swift_getEnumCaseMultiPayload();
  if (v29 <= 2)
  {
    if (!v29)
    {

      v68 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v69 = type metadata accessor for JSColor();
      if (!(*(*(v69 - 8) + 48))(v68, 1, v69))
      {
        v70 = sub_24F928388();
        (*(*(v70 - 8) + 8))(v68, v70);
      }

      goto LABEL_20;
    }

    if (v29 == 1)
    {
      v76 = sub_24F9289E8();
      v100 = *(v76 - 8);
      if (!(*(v100 + 48))(v25, 1, v76))
      {
        (*(v100 + 8))(v25, v76);
      }

      if (*(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_20;
    }

    if (v29 != 2)
    {
      goto LABEL_20;
    }

LABEL_48:

    goto LABEL_20;
  }

  switch(v29)
  {
    case 3:
      goto LABEL_48;
    case 4:
      v79 = sub_24F9289E8();
      (*(*(v79 - 8) + 8))(v25, v79);
      break;
    case 5:
      goto LABEL_48;
  }

LABEL_20:
  v27 = v24 + v14[7];
  v28 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v30 = sub_24F928388();
      (*(*(v30 - 8) + 8))(v27, v30);
    }
  }

  v31 = v24 + v14[10];
  if (*(v31 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

LABEL_35:
  v32 = v13 + v23[6];
  if (v15(v32, 1, v14))
  {
    goto LABEL_52;
  }

  v33 = v32 + v14[5];
  v34 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v34 - 8) + 48))(v33, 1, v34))
  {
    goto LABEL_37;
  }

  v37 = swift_getEnumCaseMultiPayload();
  if (v37 <= 2)
  {
    if (!v37)
    {

      v71 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v72 = type metadata accessor for JSColor();
      if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
      {
        v73 = sub_24F928388();
        (*(*(v73 - 8) + 8))(v71, v73);
      }

      goto LABEL_37;
    }

    if (v37 == 1)
    {
      v78 = sub_24F9289E8();
      v101 = *(v78 - 8);
      if (!(*(v101 + 48))(v33, 1, v78))
      {
        (*(v101 + 8))(v33, v78);
      }

      if (*(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_37;
    }

    if (v37 != 2)
    {
      goto LABEL_37;
    }

LABEL_101:

    goto LABEL_37;
  }

  switch(v37)
  {
    case 3:
      goto LABEL_101;
    case 4:
      v80 = sub_24F9289E8();
      (*(*(v80 - 8) + 8))(v33, v80);
      break;
    case 5:
      goto LABEL_101;
  }

LABEL_37:
  v35 = v32 + v14[7];
  v36 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v38 = sub_24F928388();
      (*(*(v38 - 8) + 8))(v35, v38);
    }
  }

  v39 = v32 + v14[10];
  if (*(v39 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

LABEL_52:
  v40 = v13 + v23[7];
  if (*(v40 + 56) == 1)
  {
  }

  else if (!*(v40 + 56))
  {

    if (*(v40 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v40 + 16);
    }
  }

  v41 = v13 + v23[8];
  v42 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
  {
    v56 = swift_getEnumCaseMultiPayload();
    if (v56 == 2)
    {
      goto LABEL_142;
    }

    if (v56 != 1)
    {
      if (v56)
      {
        goto LABEL_58;
      }

      v57 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v57 - 8) + 48))(v41, 1, v57))
      {
        goto LABEL_58;
      }

      v58 = swift_getEnumCaseMultiPayload();
      if (v58 > 2)
      {
        if (v58 != 3)
        {
          if (v58 == 4)
          {
            v99 = sub_24F9289E8();
            (*(*(v99 - 8) + 8))(v41, v99);
            goto LABEL_58;
          }

          if (v58 != 5)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_142;
      }

      if (v58)
      {
        if (v58 == 1)
        {
          v97 = sub_24F9289E8();
          v98 = *(v97 - 8);
          if (!(*(v98 + 48))(v41, 1, v97))
          {
            (*(v98 + 8))(v41, v97);
          }

          if (!*(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_58;
          }
        }

        else if (v58 != 2)
        {
          goto LABEL_58;
        }

LABEL_142:

        goto LABEL_58;
      }

      v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_161:
      v93 = v41 + v87;
      v94 = type metadata accessor for JSColor();
      if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
      {
        v95 = sub_24F928388();
        (*(*(v95 - 8) + 8))(v93, v95);
      }

      goto LABEL_58;
    }

    v59 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v60 = *(*(v59 - 8) + 48);
    if (v60(v41, 1, v59))
    {
LABEL_92:
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v62 = v41 + *(v61 + 48);
      if (!v60(v62, 1, v59))
      {
        v63 = swift_getEnumCaseMultiPayload();
        if (v63 <= 2)
        {
          switch(v63)
          {
            case 0:

              v81 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v82 = type metadata accessor for JSColor();
              if (!(*(*(v82 - 8) + 48))(v81, 1, v82))
              {
                v83 = sub_24F928388();
                (*(*(v83 - 8) + 8))(v81, v83);
              }

              goto LABEL_160;
            case 1:
              v88 = sub_24F9289E8();
              v89 = *(v88 - 8);
              if (!(*(v89 + 48))(v62, 1, v88))
              {
                (*(v89 + 8))(v62, v88);
              }

              if (!*(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_160;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_160;
          }

LABEL_154:

          goto LABEL_160;
        }

        switch(v63)
        {
          case 3:
            goto LABEL_154;
          case 4:
            v92 = sub_24F9289E8();
            (*(*(v92 - 8) + 8))(v62, v92);
            break;
          case 5:
            goto LABEL_154;
        }
      }

LABEL_160:
      v87 = *(v61 + 80);
      goto LABEL_161;
    }

    v64 = swift_getEnumCaseMultiPayload();
    if (v64 > 2)
    {
      if (v64 != 3)
      {
        if (v64 == 4)
        {
          v96 = sub_24F9289E8();
          (*(*(v96 - 8) + 8))(v41, v96);
          goto LABEL_92;
        }

        if (v64 != 5)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      if (!v64)
      {

        v84 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v85 = type metadata accessor for JSColor();
        if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
        {
          v86 = sub_24F928388();
          (*(*(v86 - 8) + 8))(v84, v86);
        }

        goto LABEL_92;
      }

      if (v64 == 1)
      {
        v90 = sub_24F9289E8();
        v91 = *(v90 - 8);
        if (!(*(v91 + 48))(v41, 1, v90))
        {
          (*(v91 + 8))(v41, v90);
        }

        if (*(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_92;
      }

      if (v64 != 2)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_92;
  }

LABEL_58:
  v43 = v7 + v102[13];
  if (*(v43 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v7 + v102[14];
  if (*(v44 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v45 = v7 + v102[16];
  if (*(v45 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  if (*(v7 + v6[12]))
  {
  }

  if (*(v7 + v6[13]))
  {
  }

  sub_24E62A5EC(*(v7 + v6[14]), *(v7 + v6[14] + 8));
  v46 = v7 + v6[15];
  sub_24E669FC4(*v46, *(v46 + 8), *(v46 + 16), *(v46 + 24), *(v46 + 32));
  sub_24E62A5EC(*(v7 + v6[16]), *(v7 + v6[16] + 8));
  v47 = v6[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = sub_24F923E98();
    (*(*(v48 - 8) + 8))(v7 + v47, v48);
  }

  else
  {
  }

  v49 = v6[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = sub_24F925218();
    v51 = *(v50 - 8);
    if (!(*(v51 + 48))(v7 + v49, 1, v50))
    {
      (*(v51 + 8))(v7 + v49, v50);
    }
  }

  else
  {
  }

  v52 = v6[19];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = sub_24F925218();
    v54 = *(v53 - 8);
    if (!(*(v54 + 48))(v7 + v52, 1, v53))
    {
      (*(v54 + 8))(v7 + v52, v53);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v7 + v6[20]), *(v7 + v6[20] + 8));
  sub_24E62A5EC(*(v7 + v6[21]), *(v7 + v6[21] + 8));

  return swift_deallocObject();
}

uint64_t sub_24F0A0FD8(uint64_t a1)
{
  v3 = *(sub_24F9218D8() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for SizedShelfGridView() - 8);
  v7 = v1 + ((v5 + *(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_24F099D54(a1, v1 + v4, v1 + v5, v7);
}

uint64_t sub_24F0A1154()
{
  type metadata accessor for ShelfHeaderView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924E38();
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238798);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387A0);
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A48);
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A58);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A68);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A78);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A88);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387A8);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F215A40, &qword_27F215A48);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F215A50, &qword_27F215A58);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F215A60, &qword_27F215A68);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F215A70, &qword_27F215A78);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F215A80, &qword_27F215A88);
  swift_getWitnessTable();
  sub_24F09B638();
  sub_24E602068(&qword_27F2387B8, &qword_27F2387A8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387C0);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387C8);
  sub_24F924038();
  sub_24F09B68C();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F2387D8, &qword_27F2387C0);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F2387E0, &qword_27F2387C8);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t InAppPurchaseSearchResult.__allocating_init(id:lockup:condensedBehavior:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v27 = a4;
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25[-v12];
  v14 = swift_allocObject();
  v26 = *a3;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit25InAppPurchaseSearchResult_lockup) = a2;
  sub_24E60169C(a1, v33, &qword_27F235830);
  v15 = *(a2 + 264);
  if (v15)
  {
    v16 = type metadata accessor for Action();
    v17 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  sub_24E60169C(a2 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v13, &qword_27F213E68);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v33, &v30, &qword_27F235830);
  if (*(&v31 + 1))
  {
    v18 = v31;
    *(v14 + 24) = v30;
    *(v14 + 40) = v18;
    *(v14 + 56) = v32;
  }

  else
  {

    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v20 = v8;
    v22 = v21;
    (*(v20 + 8))(v10, v7);
    v28 = v19;
    v29 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v33, &qword_27F235830);
  *(v14 + 64) = v15;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 88) = v16;
  *(v14 + 96) = v17;
  sub_24E65E0D4(v13, v14 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v14 + 17) = 0;
  *(v14 + 16) = v26;
  v23 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v14 + v23) = v27;
  return v14;
}

uint64_t InAppPurchaseSearchResult.init(id:lockup:condensedBehavior:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = v4;
  v26 = a4;
  v9 = sub_24F91F6B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v25 = *a3;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit25InAppPurchaseSearchResult_lockup) = a2;
  sub_24E60169C(a1, v35, &qword_27F235830);
  v16 = *(a2 + 264);
  if (v16)
  {
    v24 = type metadata accessor for Action();
    v17 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v24 = 0;
    v17 = 0;
  }

  sub_24E60169C(a2 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v15, &qword_27F213E68);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v35, &v29, &qword_27F235830);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {

    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    v27 = v18;
    v28 = v20;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v35, &qword_27F235830);
  v21 = v33;
  *(v5 + 24) = v32;
  *(v5 + 40) = v21;
  *(v5 + 56) = v34;
  *(v5 + 64) = v16;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = v24;
  *(v5 + 96) = v17;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v5 + 17) = 0;
  *(v5 + 16) = v25;
  v22 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v5 + v22) = v26;

  return v5;
}

uint64_t InAppPurchaseSearchResult.clickSender.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25InAppPurchaseSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup();
  *a1 = v3;
}

void InAppPurchaseSearchResult.itemBackground.getter(char *a1@<X8>)
{
  if (*(v1 + 16) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  *a1 = v2;
}

uint64_t InAppPurchaseSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t InAppPurchaseSearchResult.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24F0A2318@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit25InAppPurchaseSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup();
  *a1 = v3;
}

uint64_t sub_24F0A236C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = v51 - v5;
  v55 = sub_24F91F6B8();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v60 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v58 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v51 - v11;
  v62 = sub_24F928388();
  v13 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = v51 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v51 - v18;
  v63 = a1;
  sub_24F928398();
  v20 = *(v8 + 16);
  v20(v12, a2, v7);
  type metadata accessor for InAppPurchaseLockup();
  swift_allocObject();
  v21 = v61;
  v22 = InAppPurchaseLockup.init(deserializing:using:)(v19, v12);
  if (v21)
  {
    (*(v8 + 8))(a2, v7);
    (*(v13 + 8))(v63, v62);
  }

  else
  {
    v23 = v22;
    v51[0] = v20;
    v51[1] = v8 + 16;
    v51[2] = 0;
    v52 = v8;
    v61 = v7;
    v53 = a2;
    v24 = v56;
    sub_24F928398();
    v25 = sub_24F928348();
    if (v26)
    {
      v69 = v25;
      v70 = v26;
    }

    else
    {
      v27 = v60;
      sub_24F91F6A8();
      v28 = sub_24F91F668();
      v30 = v29;
      (*(v54 + 8))(v27, v55);
      v69 = v28;
      v70 = v30;
    }

    sub_24F92C7F8();
    v31 = *(v13 + 8);
    v32 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33 = v62;
    v31(v24, v62);
    v34 = v58;
    v35 = v57;
    sub_24F928398();
    sub_24EABA874();
    sub_24F928208();
    v58 = v31;
    v56 = v32;
    v31(v35, v33);
    v73 = v74;
    type metadata accessor for SearchAdOpportunity();
    sub_24F928398();
    v36 = v53;
    (v51[0])(v34, v53, v61);
    sub_24EE81B98(&qword_27F227228, type metadata accessor for SearchAdOpportunity);
    sub_24F929548();
    v37 = v71;
    type metadata accessor for InAppPurchaseSearchResult();
    v7 = swift_allocObject();
    *(v7 + OBJC_IVAR____TtC12GameStoreKit25InAppPurchaseSearchResult_lockup) = v23;
    sub_24E60169C(v72, &v69, &qword_27F235830);
    v38 = *(v23 + 264);
    if (v38)
    {
      v57 = type metadata accessor for Action();
      v39 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action);
    }

    else
    {
      v57 = 0;
      v39 = 0;
    }

    v40 = v59;
    v41 = v60;
    sub_24E60169C(v23 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v59, &qword_27F213E68);
    *(v7 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
    sub_24E60169C(&v69, &v66, &qword_27F235830);
    if (*(&v67 + 1))
    {
      v42 = v67;
      *(v7 + 24) = v66;
      *(v7 + 40) = v42;
      *(v7 + 56) = v68;
    }

    else
    {

      sub_24F91F6A8();
      v43 = sub_24F91F668();
      v44 = v41;
      v45 = v43;
      v47 = v46;
      (*(v54 + 8))(v44, v55);
      v64 = v45;
      v65 = v47;
      v36 = v53;
      sub_24F92C7F8();
      sub_24E601704(&v66, &qword_27F235830);
    }

    (*(v52 + 8))(v36, v61);
    (v58)(v63, v62);
    sub_24E601704(&v69, &qword_27F235830);
    sub_24E601704(v72, &qword_27F235830);
    *(v7 + 64) = v38;
    *(v7 + 72) = 0;
    v48 = v57;
    *(v7 + 80) = 0;
    *(v7 + 88) = v48;
    *(v7 + 96) = v39;
    sub_24E65E0D4(v40, v7 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
    *(v7 + 17) = 0;
    *(v7 + 16) = v73;
    v49 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(v7 + v49) = v37;
  }

  return v7;
}

uint64_t type metadata accessor for InAppPurchaseSearchResult()
{
  result = qword_27F238978;
  if (!qword_27F238978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0A2BCC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24F0A2C24()
{
  result = qword_27F238A08;
  if (!qword_27F238A08)
  {
    type metadata accessor for GameCenterPlayerProfileAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238A08);
  }

  return result;
}

uint64_t sub_24F0A2CB4(char a1)
{
  sub_24F92D068();
  MEMORY[0x253052A00](a1 & 1);
  return sub_24F92D0B8();
}

uint64_t sub_24F0A2D2C()
{
  sub_24F92D068();
  sub_24F0A2C8C(v2, *v0);
  return sub_24F92D0B8();
}

void sub_24F0A2D74(void *a1, void *a2, uint64_t a3)
{
  v26[1] = a3;
  v5 = sub_24F928AE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928418();
  MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  v11 = sub_24F92AAE8();
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = qword_27F210578;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    *(&v29 + 1) = sub_24E69A5C4(0, &qword_27F22FC90);
    *&v28 = v16;
    v17 = v16;
    sub_24F9283D8();
    sub_24E857CC8(&v28);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
    sub_24F92A9C8();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v18 = v12;
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v11, qword_27F39C3C8);
    (*(v18 + 16))(v14, v19, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    if (a2)
    {
      swift_getErrorValue();
      v20 = v26[2];
      v21 = v27;
      *(&v29 + 1) = v27;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v20, v21);
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    sub_24F9283E8();
    sub_24E857CC8(&v28);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();

    (*(v18 + 8))(v14, v11);
    if (a2)
    {
      v23 = a2;
    }

    else
    {
      type metadata accessor for GameCenterPlayerProfileActionImplementation.Error();
      swift_getWitnessTable();
      v23 = swift_allocError();
      *v24 = 0;
    }

    v25 = a2;
    sub_24F92A9A8();
  }
}

void sub_24F0A3350(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v4 = sub_24F92A9E8();
  if (a1)
  {
    v5 = a1;
    v6 = [v5 session];
    v7 = [v6 persistentIdentifier];

    v8 = sub_24F92B0D8();
    v10 = v9;

    v11 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    aBlock = sub_24F92B0D8();
    v30 = v13;

    sub_24F92C7F8();
    v14 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
    v15 = sub_24F92B098();
    v16 = [v14 initWithString_];

    if (v16)
    {

      *(inited + 96) = sub_24E69A5C4(0, qword_27F238A10);
      *(inited + 72) = v16;
      aBlock = sub_24F92B0D8();
      v30 = v17;
      sub_24F92C7F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_24F93A400;
      strcpy((v18 + 32), "invocationType");
      *(v18 + 47) = -18;
      *(v18 + 48) = 0x656C69666F7270;
      *(v18 + 56) = 0xE700000000000000;
      *(v18 + 64) = 0x656449656E656373;
      *(v18 + 72) = 0xEF7265696669746ELL;
      *(v18 + 80) = v8;
      *(v18 + 88) = v10;
      v19 = sub_24E6086DC(v18);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
      swift_arrayDestroy();
      *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
      *(inited + 144) = v19;
      sub_24E608210(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23E470);
      swift_arrayDestroy();
      v20 = sub_24F92AE28();

      v21 = [objc_opt_self() optionsWithDictionary_];

      if (v11)
      {
        v22 = v11;
        v23 = sub_24F92B098();
        v24 = swift_allocObject();
        *(v24 + 16) = a2;
        *(v24 + 24) = v4;
        v33 = sub_24F0A3998;
        v34 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v30 = 1107296256;
        v31 = sub_24E6251C8;
        v32 = &block_descriptor_110;
        v25 = _Block_copy(&aBlock);

        [v22 openApplication:v23 withOptions:v21 completion:v25];

        _Block_release(v25);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    __swift_project_value_buffer(v26, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    type metadata accessor for GameCenterPlayerProfileActionImplementation.Error();
    swift_getWitnessTable();
    v27 = swift_allocError();
    *v28 = 1;
    sub_24F92A9A8();
  }
}

uint64_t sub_24F0A3960()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

GameStoreKit::ArcadeSeeAllGamesPage::DisplayStyle_optional __swiftcall ArcadeSeeAllGamesPage.DisplayStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ArcadeSeeAllGamesPage.DisplayStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x746361706D6F63;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24F0A3A78(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x746361706D6F63;
  }

  else
  {
    v2 = 0x746C7561666564;
  }

  if (*a2)
  {
    v3 = 0x746361706D6F63;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24F0A3B00()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0A3B78()
{
  sub_24F92B218();
}

uint64_t sub_24F0A3BD4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0A3C48@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24F0A3CA8(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x746361706D6F63;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t ArcadeSeeAllGamesPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:facets:selectedFacetOptions:pageSegments:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v88 = a4;
  v89 = a8;
  LODWORD(v83) = a7;
  v81 = a5;
  v75 = a3;
  v74 = a2;
  v84 = a15;
  v77 = a10;
  v78 = a9;
  v82 = a13;
  v80 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v18 - 8);
  v73 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v87 = &v73 - v21;
  MEMORY[0x28223BE20](v22);
  v86 = &v73 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v73 - v25;
  v27 = sub_24F928818();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v85 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v73 - v31;
  v33 = swift_allocObject();
  v34 = *(a11 + 16);
  v35 = *(a11 + 24);
  v36 = v33 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets;
  *v36 = *a11;
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v80;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v82;
  v82 = a6;
  sub_24E60169C(a6, v91, &qword_27F2129B0);
  v76 = v28;
  v37 = *(v28 + 16);
  v80 = a14;
  (v37)(v32, a14, v27);
  v79 = a16;
  sub_24E60169C(a16, v26, &qword_27F2218B0);
  v38 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v39 = sub_24EEF0A68(a1);
  v41 = v40;

  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v39;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v41;
  v42 = (v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v43 = v75;
  *v42 = v74;
  v42[1] = v43;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v88;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v81;
  sub_24E60169C(v91, v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v83;
  swift_beginAccess();
  *(v33 + v38) = v89;
  v45 = v84;
  v44 = v85;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v81 = v32;
  v46 = v44;
  v37();
  v83 = v26;
  v47 = v86;
  sub_24E60169C(v26, v86, &qword_27F2218B0);
  *(v33 + 16) = 0;
  (v37)(v33 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v46, v27);
  v48 = v47;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v45;
  v49 = v87;
  sub_24E60169C(v47, v87, &qword_27F2218B0);
  v50 = sub_24F9285B8();
  v75 = *(v50 - 8);
  v51 = *(v75 + 48);
  if (v51(v49, 1, v50) == 1)
  {

    sub_24E601704(v79, &qword_27F2218B0);
    v52 = *(v76 + 8);
    v52(v80, v27);
    sub_24E601704(v82, &qword_27F2129B0);
    sub_24E601704(v48, &qword_27F2218B0);
    v52(v46, v27);
    sub_24E601704(v83, &qword_27F2218B0);
    v52(v81, v27);
    sub_24E601704(v91, &qword_27F2129B0);
    v53 = v49;
    v54 = &qword_27F2218B0;
  }

  else
  {
    v55 = v76;
    v56 = qword_27F2105F0;

    if (v56 != -1)
    {
      swift_once();
    }

    v74 = v27;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v57, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v58 = v90;
    v59 = v55;
    v60 = v75;
    if (v90)
    {
    }

    v61 = *(v60 + 8);
    v61(v87, v50);
    v62 = v83;
    v63 = v73;
    if (v58)
    {
      v64 = v86;
      sub_24E60169C(v86, v73, &qword_27F2218B0);
      if (v51(v63, 1, v50) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v79, &qword_27F2218B0);
        v70 = *(v59 + 8);
        v71 = v62;
        v72 = v74;
        v70(v80, v74);
        sub_24E601704(v82, &qword_27F2129B0);
        sub_24E601704(v64, &qword_27F2218B0);
        v70(v85, v72);
        sub_24E601704(v71, &qword_27F2218B0);
        v70(v81, v72);
        sub_24E601704(v91, &qword_27F2129B0);
        v61(v73, v50);
        return v33;
      }

      sub_24E601704(v79, &qword_27F2218B0);
      v65 = *(v59 + 8);
      v66 = v74;
      v65(v80, v74);
      sub_24E601704(v82, &qword_27F2129B0);
      sub_24E601704(v64, &qword_27F2218B0);
      v65(v85, v66);
      sub_24E601704(v62, &qword_27F2218B0);
      v65(v81, v66);
      sub_24E601704(v91, &qword_27F2129B0);
      v53 = v73;
      v54 = &qword_27F2218B0;
    }

    else
    {

      sub_24E601704(v79, &qword_27F2218B0);
      v67 = *(v59 + 8);
      v68 = v74;
      v67(v80, v74);
      sub_24E601704(v82, &qword_27F2129B0);
      sub_24E601704(v86, &qword_27F2218B0);
      v67(v85, v68);
      sub_24E601704(v62, &qword_27F2218B0);
      v67(v81, v68);
      v53 = v91;
      v54 = &qword_27F2129B0;
    }
  }

  sub_24E601704(v53, v54);
  return v33;
}

uint64_t ArcadeSeeAllGamesPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:facets:selectedFacetOptions:pageSegments:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v83 = a8;
  LODWORD(v81) = a7;
  v79 = a5;
  v86 = a4;
  v73 = a3;
  v72 = a2;
  v71 = a1;
  v82 = a15;
  v75 = a10;
  v76 = a9;
  v80 = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v18 - 8);
  v70 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v85 = &v69 - v21;
  MEMORY[0x28223BE20](v22);
  v84 = &v69 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v69 - v25;
  v27 = sub_24F928818();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v87 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v69 - v31;
  v33 = *(a11 + 16);
  v34 = *(a11 + 24);
  v35 = v16 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets;
  *v35 = *a11;
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = a12;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v80;
  v80 = a6;
  sub_24E60169C(a6, v89, &qword_27F2129B0);
  v74 = v28;
  v36 = *(v28 + 16);
  v78 = a14;
  v36(v32, a14, v27);
  v77 = a16;
  sub_24E60169C(a16, v26, &qword_27F2218B0);
  v37 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v38 = sub_24EEF0A68(v71);
  v40 = v39;

  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v38;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v40;
  v41 = (v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v42 = v73;
  *v41 = v72;
  v41[1] = v42;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v86;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v79;
  sub_24E60169C(v89, v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v81;
  swift_beginAccess();
  *(v16 + v37) = v83;

  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v43 = v87;
  v79 = v32;
  v36(v87, v32, v27);
  v81 = v26;
  v44 = v84;
  sub_24E60169C(v81, v84, &qword_27F2218B0);
  *(v16 + 16) = 0;
  v45 = v27;
  v36((v16 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v43, v27);
  v73 = v16;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v82;
  v46 = v85;
  sub_24E60169C(v44, v85, &qword_27F2218B0);
  v47 = sub_24F9285B8();
  v72 = *(v47 - 8);
  v48 = *(v72 + 48);
  v49 = v46;
  v50 = v47;
  v51 = v49;
  if (v48() == 1)
  {

    sub_24E601704(v77, &qword_27F2218B0);
    v52 = *(v74 + 8);
    v52(v78, v45);
    sub_24E601704(v80, &qword_27F2129B0);
    sub_24E601704(v44, &qword_27F2218B0);
    v52(v87, v45);
    sub_24E601704(v81, &qword_27F2218B0);
    v52(v79, v45);
    sub_24E601704(v89, &qword_27F2129B0);
    v53 = v51;
    v54 = &qword_27F2218B0;
  }

  else
  {
    v55 = v74;
    v56 = v45;
    v57 = qword_27F2105F0;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v58, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v59 = v88;
    v60 = v55;
    v61 = v72;
    if (v88)
    {
    }

    v62 = *(v61 + 8);
    v62(v85, v50);
    v63 = v84;
    if (v59)
    {
      v64 = v70;
      sub_24E60169C(v84, v70, &qword_27F2218B0);
      if ((v48)(v64, 1, v50) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v77, &qword_27F2218B0);
        v68 = *(v60 + 8);
        v68(v78, v56);
        sub_24E601704(v80, &qword_27F2129B0);
        sub_24E601704(v63, &qword_27F2218B0);
        v68(v87, v56);
        sub_24E601704(v81, &qword_27F2218B0);
        v68(v79, v56);
        sub_24E601704(v89, &qword_27F2129B0);
        v62(v70, v50);
        return v73;
      }

      sub_24E601704(v77, &qword_27F2218B0);
      v65 = *(v60 + 8);
      v65(v78, v56);
      sub_24E601704(v80, &qword_27F2129B0);
      sub_24E601704(v63, &qword_27F2218B0);
      v65(v87, v56);
      sub_24E601704(v81, &qword_27F2218B0);
      v65(v79, v56);
      sub_24E601704(v89, &qword_27F2129B0);
      v53 = v64;
      v54 = &qword_27F2218B0;
    }

    else
    {

      sub_24E601704(v77, &qword_27F2218B0);
      v66 = *(v60 + 8);
      v66(v78, v56);
      sub_24E601704(v80, &qword_27F2129B0);
      sub_24E601704(v63, &qword_27F2218B0);
      v66(v87, v56);
      sub_24E601704(v81, &qword_27F2218B0);
      v66(v79, v56);
      v53 = v89;
      v54 = &qword_27F2129B0;
    }
  }

  sub_24E601704(v53, v54);
  return v73;
}

uint64_t ArcadeSeeAllGamesPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t))
{
  v93 = a8;
  LODWORD(v86) = a7;
  v83 = a5;
  v94 = a4;
  v82 = a3;
  v81 = a2;
  v80 = a1;
  v98 = a13;
  v95 = a12;
  v87 = a10;
  v88 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v14 - 8);
  v79 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v84 = &v78 - v17;
  MEMORY[0x28223BE20](v18);
  v96 = &v78 - v19;
  MEMORY[0x28223BE20](v20);
  v97 = &v78 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - v23;
  v25 = sub_24F928818();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v99 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v78 - v29;
  v100 = &v78 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v78 - v32;
  v90 = a6;
  sub_24E60169C(a6, v103, &qword_27F2129B0);
  v34 = MEMORY[0x277D84F90];
  v35 = sub_24E609724(MEMORY[0x277D84F90]);
  v85 = v26;
  v36 = *(v26 + 16);
  v89 = a11;
  v36(v33, a11, v25);
  sub_24E60169C(v98, v24, &qword_27F2218B0);
  type metadata accessor for ArcadeSeeAllGamesPage();
  v37 = swift_allocObject();
  v38 = v37 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets;
  *(v38 + 8) = 0;
  *(v38 + 16) = 0;
  *v38 = 0;
  *(v38 + 24) = 0;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v35;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v34;
  sub_24E60169C(v103, v102, &qword_27F2129B0);
  v91 = v33;
  v36(v30, v33, v25);
  v92 = v24;
  v39 = v97;
  sub_24E60169C(v24, v97, &qword_27F2218B0);
  v40 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v41 = sub_24EEF0A68(v80);
  v43 = v42;

  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v41;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v43;
  v44 = v94;
  v45 = v25;
  v46 = (v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v47 = v82;
  *v46 = v81;
  v46[1] = v47;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v44;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v83;
  sub_24E60169C(v102, v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v86;
  swift_beginAccess();
  *(v37 + v40) = v93;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v48 = v99;
  v36(v99, v100, v25);
  v49 = v96;
  sub_24E60169C(v39, v96, &qword_27F2218B0);
  *(v37 + 16) = 0;
  v86 = v45;
  v36((v37 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v48, v45);
  *(v37 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v95;
  v50 = v84;
  sub_24E60169C(v49, v84, &qword_27F2218B0);
  v51 = sub_24F9285B8();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v54 = v51;
  if ((v53)(v50, 1) == 1)
  {

    sub_24E601704(v98, &qword_27F2218B0);
    v55 = *(v85 + 8);
    v56 = v86;
    v55(v89, v86);
    sub_24E601704(v90, &qword_27F2129B0);
    sub_24E601704(v49, &qword_27F2218B0);
    v55(v99, v56);
    sub_24E601704(v39, &qword_27F2218B0);
    v55(v100, v56);
    sub_24E601704(v102, &qword_27F2129B0);
    sub_24E601704(v92, &qword_27F2218B0);
    v55(v91, v56);
    sub_24E601704(v103, &qword_27F2129B0);
    v57 = v50;
    v58 = &qword_27F2218B0;
  }

  else
  {
    v83 = v52;
    v59 = v50;
    v60 = v85;
    v61 = qword_27F2105F0;

    if (v61 != -1)
    {
      swift_once();
    }

    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v62, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v63 = v101;
    v64 = v60;
    v65 = v54;
    if (v101)
    {
    }

    v66 = *(v83 + 8);
    v83 += 8;
    v66(v59, v65);
    v67 = v96;
    if (v63)
    {
      v68 = v79;
      sub_24E60169C(v96, v79, &qword_27F2218B0);
      if (v53(v68, 1, v65) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v98, &qword_27F2218B0);
        v98 = v66;
        v74 = v64;
        v75 = v67;
        v76 = v86;
        v77 = *(v74 + 8);
        v77(v89, v86);
        sub_24E601704(v90, &qword_27F2129B0);
        sub_24E601704(v75, &qword_27F2218B0);
        v77(v99, v76);
        sub_24E601704(v97, &qword_27F2218B0);
        v77(v100, v76);
        sub_24E601704(v102, &qword_27F2129B0);
        sub_24E601704(v92, &qword_27F2218B0);
        v77(v91, v76);
        sub_24E601704(v103, &qword_27F2129B0);
        v98(v79, v65);
        return v37;
      }

      sub_24E601704(v98, &qword_27F2218B0);
      v69 = *(v64 + 8);
      v70 = v86;
      v69(v89, v86);
      sub_24E601704(v90, &qword_27F2129B0);
      sub_24E601704(v67, &qword_27F2218B0);
      v69(v99, v70);
      sub_24E601704(v97, &qword_27F2218B0);
      v69(v100, v70);
      sub_24E601704(v102, &qword_27F2129B0);
      sub_24E601704(v92, &qword_27F2218B0);
      v69(v91, v70);
      sub_24E601704(v103, &qword_27F2129B0);
      v57 = v68;
      v58 = &qword_27F2218B0;
    }

    else
    {

      sub_24E601704(v98, &qword_27F2218B0);
      v71 = *(v64 + 8);
      v72 = v86;
      v71(v89, v86);
      sub_24E601704(v90, &qword_27F2129B0);
      sub_24E601704(v67, &qword_27F2218B0);
      v71(v99, v72);
      sub_24E601704(v97, &qword_27F2218B0);
      v71(v100, v72);
      sub_24E601704(v102, &qword_27F2129B0);
      sub_24E601704(v92, &qword_27F2218B0);
      v71(v91, v72);
      v57 = v103;
      v58 = &qword_27F2129B0;
    }
  }

  sub_24E601704(v57, v58);
  return v37;
}

uint64_t ArcadeSeeAllGamesPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v50 - v5;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = (v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v51 = v50 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v50 - v13;
  v62 = sub_24F928388();
  v15 = *(v62 - 8);
  v16 = MEMORY[0x28223BE20](v62);
  v52 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v50[1] = v50 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v50 - v20;
  sub_24F928398();
  v59 = v8;
  v22 = *(v8 + 16);
  v56 = v7;
  v60 = v22;
  v61 = v8 + 16;
  v22(v14, a2, v7);
  sub_24E90362C();
  sub_24F929548();
  v23 = v64;
  v24 = v65;
  v25 = v66;
  v26 = v66 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets;
  *v26 = v63;
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  v27 = a1;
  sub_24F928398();
  v28 = v15;
  v29 = *(v15 + 56);
  v30 = v62;
  v29(v6, 0, 1, v62);
  v31 = *(v26 + 8);
  v32 = *(v26 + 16);
  v33 = *(v26 + 24);
  *&v63 = *v26;
  *(&v63 + 1) = v31;
  v64 = v32;
  v65 = v33;
  sub_24E903680(v63);
  v58 = a2;
  v34 = _s12GameStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(v6, &v63, a2);
  sub_24E9036C4(v63);
  sub_24E601704(v6, &qword_27F212F48);
  *(v25 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v34;
  v35 = v27;
  sub_24F928398();
  LOBYTE(v6) = sub_24F928328();
  v53 = v28;
  v55 = *(v28 + 8);
  v55(v21, v30);
  if (v6)
  {
    v36 = v56;
    v37 = v57;
    v38 = v58;
    v39 = MEMORY[0x277D84F90];
    v40 = v27;
  }

  else
  {
    v40 = v27;
    sub_24F928398();
    v41 = v58;
    v36 = v56;
    v60(v51, v58, v56);
    sub_24F0A7190();
    v42 = v57;
    v39 = sub_24F92B678();
    v37 = v42;
    if (v42)
    {
      (*(v59 + 8))(v41, v36);
      v55(v35, v62);
      sub_24E9036C4(*v26);

      type metadata accessor for ArcadeSeeAllGamesPage();
      return swift_deallocPartialClassInstance();
    }

    v38 = v41;
  }

  *(v66 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v39;
  v44 = v52;
  v45 = v62;
  (*(v53 + 16))(v52, v40, v62);
  v46 = v54;
  v60(v54, v38, v36);
  v47 = GenericPage.init(deserializing:using:)(v44, v46);
  if (v37)
  {
    (*(v59 + 8))(v38, v36);
    return (v55)(v40, v45);
  }

  else
  {
    v48 = v40;
    v49 = v47;
    (*(v59 + 8))(v38, v36);
    v55(v48, v45);
    return v49;
  }
}

uint64_t ArcadeSeeAllGamesPage.facets.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return sub_24E903680(v3);
}

uint64_t sub_24F0A624C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v104 = &v78 - v9;
  MEMORY[0x28223BE20](v10);
  v95 = &v78 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v78 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v78 - v16;
  v18 = sub_24F928818();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v105 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v107 = &v78 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v78 - v24;
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v101 = v25;
    v102 = v17;
    v103 = v19;

    v28 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v29 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v110 = v28;
    sub_24EA0AE3C(v29);
    v91 = v110;
    v30 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
    v88 = v30;
    if (v30)
    {
      v92 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
      v90 = v30;
    }

    else
    {
      v31 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
      v92 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
      v90 = v31;
    }

    v32 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction);
    v89 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
    sub_24E60169C(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &v110, &qword_27F2129B0);
    v33 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) == 1;
    v34 = v103;
    v79 = v7;
    v93 = a1;
    v99 = v32;
    v35 = v18;
    if (v33)
    {
      v87 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete);
    }

    else
    {
      v87 = 0;
    }

    v98 = v14;
    v36 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    swift_beginAccess();
    v37 = *(v2 + v36);
    v85 = v37;
    if (!v37)
    {
      swift_beginAccess();
    }

    v100 = v37;
    v80 = *(v27 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets);
    v38 = v80;
    v39 = *(v27 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 16);
    v82 = *(v27 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 8);
    v81 = v39;
    v97 = *(v27 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions);
    v96 = *(v2 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_pageSegments);
    v40 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    v41 = *(v27 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 24);
    swift_beginAccess();
    v42 = *(v34 + 16);
    v43 = v2 + v40;
    v44 = v101;
    v42(v101, v43, v18);
    v84 = v34 + 16;
    v83 = v42;
    v86 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    v94 = sub_24F9285B8();
    v106 = *(v94 - 8);
    v45 = v102;
    (*(v106 + 56))(v102, 1, 1, v94);
    type metadata accessor for ArcadeSeeAllGamesPage();
    v2 = swift_allocObject();
    v46 = v2 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets;
    *v46 = v38;
    v47 = v81;
    *(v46 + 8) = v82;
    *(v46 + 16) = v47;
    *(v46 + 24) = v41;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v97;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v96;
    sub_24E60169C(&v110, v109, &qword_27F2129B0);
    v48 = v107;
    v42(v107, v44, v35);
    v49 = v98;
    sub_24E60169C(v45, v98, &qword_27F2218B0);
    v50 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

    sub_24E903680(v80);

    v51 = sub_24EEF0A68(v91);
    v53 = v52;

    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v51;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v53;
    v54 = (v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    v55 = v90;
    *v54 = v92;
    v54[1] = v55;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v99;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v89;
    sub_24E60169C(v109, v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v87;
    swift_beginAccess();
    *(v2 + v50) = v100;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
    v56 = v105;
    v57 = v83;
    v83(v105, v48, v35);
    v58 = v95;
    sub_24E60169C(v49, v95, &qword_27F2218B0);
    *(v2 + 16) = 0;
    v97 = v35;
    v57(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v56, v35);
    v59 = v58;
    v60 = v94;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v86;
    v61 = v104;
    sub_24E60169C(v59, v104, &qword_27F2218B0);
    v62 = *(v106 + 48);
    if (v62(v61, 1, v60) == 1)
    {

      sub_24E601704(v59, &qword_27F2218B0);
      v63 = v61;
      v64 = *(v103 + 8);
      v65 = v97;
      v64(v56, v97);
      sub_24E601704(v98, &qword_27F2218B0);
      v64(v107, v65);
      sub_24E601704(v109, &qword_27F2129B0);
      sub_24E601704(v102, &qword_27F2218B0);
      v64(v101, v65);
    }

    else
    {
      v96 = v62;
      v66 = v97;
      v67 = v60;
      v68 = qword_27F2105F0;

      if (v68 != -1)
      {
        swift_once();
      }

      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v69, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      sub_24F9285C8();
      v70 = v108;
      v63 = v79;
      if (v108)
      {
      }

      v71 = *(v106 + 8);
      v106 += 8;
      v71(v104, v67);
      if (!v70)
      {

        sub_24E601704(v59, &qword_27F2218B0);
        v75 = *(v103 + 8);
        v75(v105, v66);
        sub_24E601704(v98, &qword_27F2218B0);
        v75(v107, v66);
        sub_24E601704(v109, &qword_27F2129B0);
        sub_24E601704(v102, &qword_27F2218B0);
        v75(v101, v66);
        sub_24E601704(&v110, &qword_27F2129B0);
        return v2;
      }

      sub_24E60169C(v59, v63, &qword_27F2218B0);
      v72 = v96(v63, 1, v67);
      v73 = v107;
      if (v72 != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v59, &qword_27F2218B0);
        v76 = *(v103 + 8);
        v76(v105, v66);
        sub_24E601704(v98, &qword_27F2218B0);
        v76(v73, v66);
        sub_24E601704(v109, &qword_27F2129B0);
        sub_24E601704(v102, &qword_27F2218B0);
        v76(v101, v66);
        sub_24E601704(&v110, &qword_27F2129B0);
        v71(v63, v94);
        return v2;
      }

      sub_24E601704(v59, &qword_27F2218B0);
      v74 = *(v103 + 8);
      v74(v105, v66);
      sub_24E601704(v98, &qword_27F2218B0);
      v74(v73, v66);
      sub_24E601704(v109, &qword_27F2129B0);
      sub_24E601704(v102, &qword_27F2218B0);
      v74(v101, v66);
    }

    sub_24E601704(&v110, &qword_27F2129B0);
    sub_24E601704(v63, &qword_27F2218B0);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_24F0A6FB4()
{
  sub_24E9036C4(*(v0 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets));
}

uint64_t ArcadeSeeAllGamesPage.deinit()
{
  v0 = GenericPage.deinit();
  sub_24E9036C4(*(v0 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets));

  return v0;
}

uint64_t ArcadeSeeAllGamesPage.__deallocating_deinit()
{
  v0 = *(GenericPage.deinit() + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets);

  sub_24E9036C4(v0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeSeeAllGamesPage()
{
  result = qword_27F238AB8;
  if (!qword_27F238AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F0A7190()
{
  result = qword_27F238A98;
  if (!qword_27F238A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238A98);
  }

  return result;
}

unint64_t sub_24F0A71E8()
{
  result = qword_27F238AA0;
  if (!qword_27F238AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238AA0);
  }

  return result;
}

unint64_t sub_24F0A7240()
{
  result = qword_27F238AA8;
  if (!qword_27F238AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238AA8);
  }

  return result;
}

uint64_t NSCopying.makeCopy()()
{
  [v0 copyWithZone_];
  sub_24F92C648();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v2;
}

void (*TodayCardMediaRiver.init(deserializing:using:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v3 = v2;
  v78 = a2;
  v73 = v3;
  v74 = *v3;
  v5 = sub_24F9285B8();
  v77 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v66 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v58 - v8;
  MEMORY[0x28223BE20](v9);
  v65 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v11 - 8);
  v70 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v63 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v62 = &v58 - v20;
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - v23;
  v25 = sub_24F92AC28();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v61 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v75 = &v58 - v29;
  v79 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v64 = v17;
  v31 = *(v17 + 8);
  v30 = v17 + 8;
  v72 = v16;
  v76 = v31;
  v31(v24, v16);
  v68 = v26;
  v69 = v25;
  if ((*(v26 + 48))(v15, 1, v25) == 1)
  {
    sub_24E601704(v15, &qword_27F2213B0);
    v32 = sub_24F92AC38();
    sub_24E9321A0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v33 = 0x7370756B636F6CLL;
    v34 = v74;
    v33[1] = 0xE700000000000000;
    v33[2] = v34;
    (*(*(v32 - 1) + 104))(v33, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    (*(v77 + 8))(v78, v5);
    v76(v79, v72);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v74 = v5;
    v36 = v68;
    v35 = v69;
    v37 = *(v68 + 32);
    v60 = v30;
    v37(v75, v15, v69);
    sub_24F929608();
    sub_24F928398();
    v38 = v78;
    v39 = *(v77 + 16);
    v40 = v65;
    v39(v65, v78, v74);
    v59 = v39;
    sub_24F929548();
    v41 = v71;
    v39(v71, v38, v74);
    (*(v36 + 16))(v61, v75, v35);
    v39(v40, v41, v74);
    type metadata accessor for Lockup();
    sub_24E9321A0(&qword_27F221FB8, type metadata accessor for Lockup);
    v42 = sub_24F92B6A8();
    v43 = v73;
    *(v73 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaRiver_lockups) = v42;
    v44 = v62;
    v45 = v79;
    sub_24F928398();
    v46 = sub_24F928258();
    v48 = v47;
    v49 = v72;
    v76(v44, v72);
    v50 = 10;
    if ((v48 & 1) == 0)
    {
      v50 = v46;
    }

    *(v43 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaRiver_lockupImpressionLimit) = v50;
    v51 = v63;
    v52 = v74;
    (*(v64 + 16))(v63, v45, v49);
    v53 = v66;
    v59(v66, v78, v52);
    v54 = v67;
    v55 = TodayCardMedia.init(deserializing:using:)(v51, v53);
    if (v54)
    {
      v32 = *(v77 + 8);
      v32(v78, v52);
      v76(v79, v49);
      v32(v71, v52);
    }

    else
    {
      v32 = v55;
      v57 = *(v77 + 8);
      v57(v78, v52);
      v76(v79, v49);
      v57(v71, v52);
    }

    sub_24E601704(v70, &qword_27F213E68);
    (*(v68 + 8))(v75, v69);
  }

  return v32;
}

uint64_t TodayCardMediaRiver.__allocating_init(lockups:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TodayCardMediaRiver.init(lockups:lockupImpressionLimit:impressionMetrics:)(a1, a2, a3);
  return v6;
}

uint64_t TodayCardMediaRiver.init(lockups:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v20 - v13;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaRiver_lockups) = a1;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaRiver_lockupImpressionLimit) = a2;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_24E60169C(a3, v20 - v13, &qword_27F213E68);
  sub_24E60169C(v27, &v21, &qword_27F235830);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v9 + 8))(v11, v8);
    v20[1] = v15;
    v20[2] = v17;
    sub_24F92C7F8();
    sub_24E601704(&v21, &qword_27F235830);
  }

  sub_24E601704(a3, &qword_27F213E68);
  sub_24E601704(v27, &qword_27F235830);
  v18 = v25;
  *(v4 + 32) = v24;
  *(v4 + 48) = v18;
  *(v4 + 64) = v26;
  sub_24E65E0D4(v14, v4 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v4 + 16) = 5;
  *(v4 + 24) = 1;
  return v4;
}

char *TodayCardMediaRiver.offerAdamIds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaRiver_lockups);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253052270](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24E6164C0(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_24E6164C0((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t TodayCardMediaRiver.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t TodayCardMediaRiver.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaRiver()
{
  result = qword_27F238AC8;
  if (!qword_27F238AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0A8300(void *a1)
{
  result = [v1 length];
  v4 = result;
  if (result < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      result = [a1 characterIsMember_];
      if (!result)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_18;
      }
    }
  }

  if (v5 == v4)
  {
    goto LABEL_18;
  }

  v6 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  while (v6 >= v5)
  {
    result = [a1 characterIsMember_];
    if (!result)
    {
      break;
    }

    if (__OFSUB__(v6--, 1))
    {
      __break(1u);
      break;
    }
  }

  if (__OFADD__(v6, 1))
  {
    goto LABEL_22;
  }

  v8 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFSUB__(v8, 1))
  {
LABEL_24:
    __break(1u);
    return result;
  }

  [v1 deleteCharactersInRange_];
  v4 = v5;
LABEL_18:

  return [v1 deleteCharactersInRange_];
}

id sub_24F0A8444(void *a1)
{
  v3 = [v1 length];
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = v3;
    v5 = 0;
    while ([a1 characterIsMember_])
    {
      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }
  }

  return [v1 deleteCharactersInRange_];
}

unint64_t sub_24F0A850C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x6D6F44726F727265;
  v11 = MEMORY[0x277D837D0];
  v12 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v12;
  *(inited + 40) = 0xEB000000006E6961;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x800000024FA4BBE0;
  *(inited + 128) = v11;
  *(inited + 136) = v12;
  *(inited + 104) = a3;
  *(inited + 112) = a4;

  v13 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v14 = sub_24E80FFAC(v13);

  a5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a5[4] = result;
  *a5 = v14;
  return result;
}

uint64_t GuidedSearchPresenter.searchWillBegin(for:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24F92AAE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[9];
  v67 = a1[8];
  v68 = v8;
  v69 = a1[10];
  v9 = a1[5];
  v63 = a1[4];
  v64 = v9;
  v10 = a1[7];
  v65 = a1[6];
  v66 = v10;
  v11 = a1[1];
  v59 = *a1;
  v60 = v11;
  v12 = a1[3];
  v61 = a1[2];
  v62 = v12;
  if (qword_27F210EC0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_27F39D860);
  v33 = v5;
  (*(v5 + 16))(v7, v13, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F979FB0;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  *(&v48 + 1) = MEMORY[0x277D837D0];
  v47 = v60;

  sub_24F9283B8();
  sub_24E601704(&v47, &qword_27F2129B0);
  sub_24F9283A8();
  v14 = v65;
  if (v65)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  }

  else
  {
    v15 = 0;
    v58[2] = 0;
    v58[1] = 0;
  }

  v58[0] = v14;
  v58[3] = v15;

  sub_24F9283B8();
  sub_24E601704(v58, &qword_27F2129B0);
  sub_24F9283A8();
  v16 = v61;
  *(&v48 + 1) = &type metadata for SearchOrigin;
  LOBYTE(v47) = v61;
  sub_24F9283B8();
  sub_24E601704(&v47, &qword_27F2129B0);
  sub_24F92A588();

  (*(v33 + 8))(v7, v4);
  v44 = v67;
  v45 = v68;
  v46 = v69;
  v40 = v63;
  v41 = v64;
  v42 = v65;
  v43 = v66;
  v36 = v59;
  v37 = v60;
  v38 = v61;
  v39 = v62;
  CGSizeMake(&v36, v17, v18);
  v19 = *(v2 + 160);
  v55 = *(v2 + 144);
  v56 = v19;
  v57 = *(v2 + 176);
  v20 = *(v2 + 96);
  v51 = *(v2 + 80);
  v52 = v20;
  v21 = *(v2 + 128);
  v53 = *(v2 + 112);
  v54 = v21;
  v22 = *(v2 + 32);
  v47 = *(v2 + 16);
  v48 = v22;
  v23 = *(v2 + 64);
  v49 = *(v2 + 48);
  v50 = v23;
  v24 = v45;
  *(v2 + 144) = v44;
  *(v2 + 160) = v24;
  *(v2 + 176) = v46;
  v25 = v41;
  *(v2 + 80) = v40;
  *(v2 + 96) = v25;
  v26 = v43;
  *(v2 + 112) = v42;
  *(v2 + 128) = v26;
  v27 = v37;
  *(v2 + 16) = v36;
  *(v2 + 32) = v27;
  v28 = v39;
  *(v2 + 48) = v38;
  *(v2 + 64) = v28;
  sub_24E7B6680(&v59, v35);
  sub_24E601704(&v47, &qword_27F238AD8);
  v35[0] = v16;
  if (SearchOrigin.rawValue.getter() == 0x6F54646564697567 && v29 == 0xEB000000006E656BLL)
  {
  }

  v31 = sub_24F92CE08();

  if ((v31 & 1) == 0)
  {
    swift_beginAccess();
    v32 = MEMORY[0x277D84F90];
    *(v2 + 200) = MEMORY[0x277D84F90];

    v34 = v32;
    return sub_24F0A950C(&v34);
  }

  return result;
}

uint64_t GuidedSearchPresenter.searchDidReturn(for:with:queries:)(__int128 *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v52 = a2;
  v53 = a3;
  v6 = sub_24F92AAE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *a1;
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  v58 = *(a1 + 32);
  v12 = *(a1 + 49);
  v92 = *(a1 + 33);
  v93 = v12;
  v94[0] = *(a1 + 65);
  *(v94 + 15) = a1[5];
  v13 = *(a1 + 12);
  v14 = *(a1 + 104);
  v15 = *(a1 + 120);
  v16 = *(a1 + 136);
  v17 = *(a1 + 152);
  v91 = *(a1 + 21);
  v89 = v16;
  v90 = v17;
  v87 = v14;
  v88 = v15;
  if (qword_27F210EC0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_27F39D860);
  v54 = v9;
  v55 = v7;
  v19 = *(v7 + 16);
  v56 = v6;
  v19(v9, v18, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9C5960;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  *(&v76 + 1) = MEMORY[0x277D837D0];
  v57 = v11;
  *&v75 = v11;
  *(&v75 + 1) = v10;
  v50 = v10;

  sub_24F9283B8();
  sub_24E601704(&v75, &qword_27F2129B0);
  sub_24F9283A8();
  v51 = v13;
  v20 = v52;
  v21 = v53;
  if (v13)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v23 = v13;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    *(&v75 + 1) = 0;
    *&v76 = 0;
  }

  *&v75 = v23;
  *(&v76 + 1) = v22;

  sub_24F9283B8();
  sub_24E601704(&v75, &qword_27F2129B0);
  sub_24F9283A8();
  *(&v76 + 1) = &type metadata for SearchOrigin;
  LOBYTE(v75) = v58;
  sub_24F9283B8();
  sub_24E601704(&v75, &qword_27F2129B0);
  sub_24F9283A8();
  v24._rawValue = v20;
  if (v20)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225120);
    v26 = v20;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    *(&v75 + 1) = 0;
    *&v76 = 0;
  }

  v27 = v21;
  v28 = v54;
  *&v75 = v26;
  *(&v76 + 1) = v25;

  sub_24F9283B8();
  sub_24E601704(&v75, &qword_27F2129B0);
  sub_24F9283A8();
  v29 = v57;
  if (v27)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D828);
    v31 = v27;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v86[2] = 0;
    v86[1] = 0;
  }

  v86[0] = v31;
  v86[3] = v30;

  sub_24F9283B8();
  sub_24E601704(v86, &qword_27F2129B0);
  v32 = v56;
  sub_24F92A588();

  (*(v55 + 8))(v28, v32);
  v33 = *(v4 + 160);
  v83 = *(v4 + 144);
  v84 = v33;
  v85 = *(v4 + 176);
  v34 = *(v4 + 96);
  v79 = *(v4 + 80);
  v80 = v34;
  v35 = *(v4 + 128);
  v81 = *(v4 + 112);
  v82 = v35;
  v36 = *(v4 + 32);
  v75 = *(v4 + 16);
  v76 = v36;
  v37 = *(v4 + 64);
  v77 = *(v4 + 48);
  v78 = v37;
  result = sub_24E66927C(&v75);
  if (result != 1)
  {
    v71 = v95;
    *&v72 = v29;
    *(&v72 + 1) = v50;
    LOBYTE(v73[0]) = v58;
    *(v73 + 1) = v92;
    *(&v73[1] + 1) = v93;
    *(&v73[2] + 1) = v94[0];
    v73[3] = *(v94 + 15);
    *(v74 + 8) = v87;
    *&v74[0] = v51;
    *(&v74[4] + 1) = v91;
    *(&v74[3] + 8) = v90;
    *(&v74[2] + 8) = v89;
    *(&v74[1] + 8) = v88;
    v68 = v83;
    v69 = v84;
    v70 = v85;
    v64 = v79;
    v65 = v80;
    v66 = v81;
    v67 = v82;
    v60 = v75;
    v61 = v76;
    v62 = v77;
    v63 = v78;
    result = _s12GameStoreKit23SearchRequestDescriptorV2eeoiySbAC_ACtFZ_0(&v71, &v60);
    if (result)
    {
      sub_24E70D8E0(&v60);
      v39 = *(v4 + 160);
      v74[2] = *(v4 + 144);
      v74[3] = v39;
      v74[4] = *(v4 + 176);
      v40 = *(v4 + 96);
      v73[2] = *(v4 + 80);
      v73[3] = v40;
      v41 = *(v4 + 128);
      v74[0] = *(v4 + 112);
      v74[1] = v41;
      v42 = *(v4 + 32);
      v71 = *(v4 + 16);
      v72 = v42;
      v43 = *(v4 + 64);
      v73[0] = *(v4 + 48);
      v73[1] = v43;
      v44 = v69;
      *(v4 + 144) = v68;
      *(v4 + 160) = v44;
      *(v4 + 176) = v70;
      v45 = v65;
      *(v4 + 80) = v64;
      *(v4 + 96) = v45;
      v46 = v67;
      *(v4 + 112) = v66;
      *(v4 + 128) = v46;
      v47 = v61;
      *(v4 + 16) = v60;
      *(v4 + 32) = v47;
      v48 = v63;
      *(v4 + 48) = v62;
      *(v4 + 64) = v48;
      result = sub_24E601704(&v71, &qword_27F238AD8);
      if (v24._rawValue)
      {
        v59[1] = *(v4 + 192);

        GuidedSearchTokenCollection.merging(contentsOf:)(v24);

        result = sub_24F0A950C(v59);
      }

      if (v27)
      {
        swift_beginAccess();

        sub_24F14A664(0, 0, v27);
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t GuidedSearchPresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_24E70D8E0(&v18);
  v1 = v27;
  *(v0 + 144) = v26;
  *(v0 + 160) = v1;
  *(v0 + 176) = v28;
  v2 = v23;
  *(v0 + 80) = v22;
  *(v0 + 96) = v2;
  v3 = v25;
  *(v0 + 112) = v24;
  *(v0 + 128) = v3;
  v4 = v19;
  *(v0 + 16) = v18;
  *(v0 + 32) = v4;
  v5 = v21;
  *(v0 + 48) = v20;
  *(v0 + 64) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238AE0);
  swift_allocObject();
  *(v0 + 208) = sub_24F92ADA8();
  v6 = *(v0 + 160);
  v29[8] = *(v0 + 144);
  v29[9] = v6;
  v29[10] = *(v0 + 176);
  v7 = *(v0 + 96);
  v29[4] = *(v0 + 80);
  v29[5] = v7;
  v8 = *(v0 + 128);
  v29[6] = *(v0 + 112);
  v29[7] = v8;
  v9 = *(v0 + 32);
  v29[0] = *(v0 + 16);
  v29[1] = v9;
  v10 = *(v0 + 64);
  v29[2] = *(v0 + 48);
  v29[3] = v10;
  v11 = v27;
  *(v0 + 144) = v26;
  *(v0 + 160) = v11;
  *(v0 + 176) = v28;
  v12 = v23;
  *(v0 + 80) = v22;
  *(v0 + 96) = v12;
  v13 = v25;
  *(v0 + 112) = v24;
  *(v0 + 128) = v13;
  v14 = v19;
  *(v0 + 16) = v18;
  *(v0 + 32) = v14;
  v15 = v21;
  *(v0 + 48) = v20;
  *(v0 + 64) = v15;
  sub_24E601704(v29, &qword_27F238AD8);
  v16 = MEMORY[0x277D84F90];
  *(v0 + 192) = MEMORY[0x277D84F90];
  *(v0 + 200) = v16;
  return v0;
}

uint64_t GuidedSearchPresenter.init()()
{
  sub_24E70D8E0(&v18);
  v1 = v27;
  *(v0 + 144) = v26;
  *(v0 + 160) = v1;
  *(v0 + 176) = v28;
  v2 = v23;
  *(v0 + 80) = v22;
  *(v0 + 96) = v2;
  v3 = v25;
  *(v0 + 112) = v24;
  *(v0 + 128) = v3;
  v4 = v19;
  *(v0 + 16) = v18;
  *(v0 + 32) = v4;
  v5 = v21;
  *(v0 + 48) = v20;
  *(v0 + 64) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238AE0);
  swift_allocObject();
  *(v0 + 208) = sub_24F92ADA8();
  v6 = *(v0 + 160);
  v29[8] = *(v0 + 144);
  v29[9] = v6;
  v29[10] = *(v0 + 176);
  v7 = *(v0 + 96);
  v29[4] = *(v0 + 80);
  v29[5] = v7;
  v8 = *(v0 + 128);
  v29[6] = *(v0 + 112);
  v29[7] = v8;
  v9 = *(v0 + 32);
  v29[0] = *(v0 + 16);
  v29[1] = v9;
  v10 = *(v0 + 64);
  v29[2] = *(v0 + 48);
  v29[3] = v10;
  v11 = v27;
  *(v0 + 144) = v26;
  *(v0 + 160) = v11;
  *(v0 + 176) = v28;
  v12 = v23;
  *(v0 + 80) = v22;
  *(v0 + 96) = v12;
  v13 = v25;
  *(v0 + 112) = v24;
  *(v0 + 128) = v13;
  v14 = v19;
  *(v0 + 16) = v18;
  *(v0 + 32) = v14;
  v15 = v21;
  *(v0 + 48) = v20;
  *(v0 + 64) = v15;
  sub_24E601704(v29, &qword_27F238AD8);
  v16 = MEMORY[0x277D84F90];
  *(v0 + 192) = MEMORY[0x277D84F90];
  *(v0 + 200) = v16;
  return v0;
}

uint64_t sub_24F0A950C(void *a1)
{
  v2 = *(v1 + 192);
  *(v1 + 192) = *a1;

  v4 = sub_24EA15CE8(v3, v2);

  if (v4)
  {
  }

  else
  {

    sub_24F92AD88();
  }
}

uint64_t sub_24F0A95B8()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39D860);
  __swift_project_value_buffer(v4, qword_27F39D860);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t GuidedSearchPresenter.didToggleToken(at:actionHandler:)(unint64_t a1, void (*a2)(uint64_t))
{
  v3 = v2;
  if (qword_27F210EC0 != -1)
  {
    swift_once();
  }

  v5 = sub_24F92AAE8();
  __swift_project_value_buffer(v5, qword_27F39D860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A070;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  v6 = *(v2 + 192);
  v14 = &type metadata for GuidedSearchTokenCollection;
  v13[0] = v6;

  sub_24F9283B8();
  sub_24E601704(v13, &qword_27F2129B0);
  sub_24F9283A8();
  v14 = MEMORY[0x277D83B88];
  v13[0] = a1;
  sub_24F928438();
  sub_24E601704(v13, &qword_27F2129B0);
  sub_24F92A588();

  v8 = *(v2 + 192);
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x253052270](a1, v8);

    v8 = *(v3 + 192);
    goto LABEL_7;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v9 = *(v8 + 8 * a1 + 32);

LABEL_7:
    v13[0] = v8;
    v10 = *(v9 + 32);

    GuidedSearchTokenCollection.updateSelection(ofTokenAt:to:)(a1, (v10 & 1) == 0);

    GuidedSearchTokenCollection.selectedOnly()();

    sub_24F0A950C(v13);

    a2(v11);
  }

  __break(1u);
  return result;
}

_OWORD *GuidedSearchPresenter.deinit()
{
  v1 = v0[10];
  v7[8] = v0[9];
  v7[9] = v1;
  v7[10] = v0[11];
  v2 = v0[6];
  v7[4] = v0[5];
  v7[5] = v2;
  v3 = v0[8];
  v7[6] = v0[7];
  v7[7] = v3;
  v4 = v0[2];
  v7[0] = v0[1];
  v7[1] = v4;
  v5 = v0[4];
  v7[2] = v0[3];
  v7[3] = v5;
  sub_24E601704(v7, &qword_27F238AD8);

  return v0;
}

uint64_t GuidedSearchPresenter.__deallocating_deinit()
{
  v1 = v0[10];
  v7[8] = v0[9];
  v7[9] = v1;
  v7[10] = v0[11];
  v2 = v0[6];
  v7[4] = v0[5];
  v7[5] = v2;
  v3 = v0[8];
  v7[6] = v0[7];
  v7[7] = v3;
  v4 = v0[2];
  v7[0] = v0[1];
  v7[1] = v4;
  v5 = v0[4];
  v7[2] = v0[3];
  v7[3] = v5;
  sub_24E601704(v7, &qword_27F238AD8);

  return swift_deallocClassInstance();
}

Swift::String_optional __swiftcall GuidedSearchPresenter.optimizationTerm(for:tokens:)(Swift::String a1, Swift::OpaquePointer_optional tokens)
{
  rawValue = tokens.value._rawValue;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = sub_24F92AAE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v27 = *(v2 + 200);

  v10._countAndFlagsBits = countAndFlagsBits;
  v10._object = object;
  v31.value._rawValue = rawValue;
  v11 = GuidedSearchQueryStore.optimizationTerm(for:tokens:)(v10, v31);
  v24 = v11.value._object;
  v25 = v11.value._countAndFlagsBits;

  if (qword_27F210EC0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_27F39D860);
  v26 = v7;
  (*(v7 + 16))(v9, v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F979FB0;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  v30 = MEMORY[0x277D837D0];
  v27 = countAndFlagsBits;
  v28 = object;

  sub_24F9283B8();
  sub_24E601704(&v27, &qword_27F2129B0);
  sub_24F9283A8();
  if (rawValue)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v14 = rawValue;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v28 = 0;
    v29 = 0;
  }

  v15 = v24;
  v27 = v14;
  v30 = v13;

  sub_24F9283B8();
  sub_24E601704(&v27, &qword_27F2129B0);
  sub_24F9283A8();
  if (v15)
  {
    v16 = MEMORY[0x277D837D0];
    v17 = v15;
    v19 = v25;
    v18 = v26;
    v20 = v25;
  }

  else
  {
    v17 = 0;
    v20 = 0;
    v16 = 0;
    v29 = 0;
    v19 = v25;
    v18 = v26;
  }

  v27 = v20;
  v28 = v17;
  v30 = v16;

  sub_24F928458();
  sub_24E601704(&v27, &qword_27F2129B0);
  sub_24F92A588();

  (*(v18 + 8))(v9, v6);
  v21 = v19;
  v22 = v15;
  result.value._object = v22;
  result.value._countAndFlagsBits = v21;
  return result;
}

uint64_t TabBadgingFieldsProvider.init(tabController:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for TabBadgingFieldsProvider() + 20);
  v5 = *MEMORY[0x277D22340];
  v6 = sub_24F92A2D8();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);

  return sub_24E612C80(a1, a2);
}

uint64_t type metadata accessor for TabBadgingFieldsProvider()
{
  result = qword_27F238AF0;
  if (!qword_27F238AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TabBadgingFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TabBadgingFieldsProvider() + 20);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TabBadgingFieldsProvider.category.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TabBadgingFieldsProvider() + 20);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void TabBadgingFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if ([objc_opt_self() isMainThread])
  {
    v3 = v1[3];
    v4 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v3);
    v5 = (*(v4 + 8))(v3, v4);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    sub_24E74EC40();
    v6 = sub_24F92BEF8();
    MEMORY[0x28223BE20](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238AE8);
    sub_24F92BF18();

    v5 = v46[0];
    if (!v46[0])
    {
      return;
    }
  }

  v41 = a1;
  v7 = sub_24E6086DC(MEMORY[0x277D84F90]);
  v8 = *(v5 + 16);
  if (!v8)
  {
LABEL_48:

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
    v46[0] = v7;
    __swift_mutable_project_boxed_opaque_existential_1(v41, *(v41 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(v46);
    return;
  }

  v9 = 0;
  v10 = v5 + 32;
  v42 = *(v5 + 16);
  v43 = v5;
  while (v9 < *(v5 + 16))
  {
    sub_24E615E00(v10, v46);
    v12 = v47;
    v13 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v13 + 8))(&v49, v12, v13);
    v14 = v49;
    if (v49 == 9)
    {
      goto LABEL_9;
    }

    v15 = v47;
    v16 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v17 = (*(v16 + 16))(v15, v16);
    if (!v18)
    {
      goto LABEL_9;
    }

    v44 = v18;
    v45 = v17;
    if (v14 <= 3)
    {
      v19 = 0x7961646F74;
      if (v14 != 2)
      {
        v19 = 1936748641;
      }

      v22 = 0xE500000000000000;
      v20 = 0xE400000000000000;
      if (v14 == 2)
      {
        v20 = 0xE500000000000000;
      }

      v21 = 0x7265666E69;
      if (v14)
      {
        v21 = 0x64657463656C6573;
        v22 = 0xE800000000000000;
      }

      v23 = v14 <= 1;
    }

    else
    {
      v19 = 0x656461637261;
      if (v14 == 7)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v19 = 0x676E6964616F6CLL;
        v20 = 0xE700000000000000;
      }

      if (v14 == 6)
      {
        v19 = 0x73657461647075;
        v20 = 0xE700000000000000;
      }

      v21 = 0x73656D6167;
      if (v14 != 4)
      {
        v21 = 0x686372616573;
      }

      v22 = 0xE500000000000000;
      if (v14 != 4)
      {
        v22 = 0xE600000000000000;
      }

      v23 = v14 <= 5;
    }

    if (v23)
    {
      v24 = v21;
    }

    else
    {
      v24 = v19;
    }

    if (v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = v20;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v7;
    v27 = v24;
    v29 = sub_24E76D644(v24, v25);
    v30 = v7[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_51;
    }

    v33 = v28;
    if (v7[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v28 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_24E8AF124();
        if ((v33 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      sub_24E89B77C(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_24E76D644(v27, v25);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_53;
      }

      v29 = v34;
      if ((v33 & 1) == 0)
      {
LABEL_44:
        v7 = v49;
        v49[(v29 >> 6) + 8] |= 1 << v29;
        v36 = (v7[6] + 16 * v29);
        *v36 = v27;
        v36[1] = v25;
        v37 = (v7[7] + 16 * v29);
        *v37 = v45;
        v37[1] = v44;
        v38 = v7[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_52;
        }

        v7[2] = v40;
        goto LABEL_8;
      }
    }

    v7 = v49;
    v11 = (v49[7] + 16 * v29);
    *v11 = v45;
    v11[1] = v44;

LABEL_8:
    v8 = v42;
    v5 = v43;
LABEL_9:
    ++v9;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v10 += 40;
    if (v8 == v9)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  sub_24F92CF88();
  __break(1u);
}

uint64_t sub_24F0AA640@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  result = (*(v5 + 8))(v4, v5);
  *a1 = result;
  return result;
}

uint64_t sub_24F0AA6FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F92A2D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F0AA7BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24F0AA860()
{
  result = sub_24F0AA8E4();
  if (v1 <= 0x3F)
  {
    result = sub_24F92A2D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F0AA8E4()
{
  result = qword_27F238B00;
  if (!qword_27F238B00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F238B00);
  }

  return result;
}

uint64_t JSMetricsEventLinter.init(objectGraph:intentDispatcher:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t JSMetricsEventLinter.init(asPartOf:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();

  sub_24F92A758();

  a2[1] = v4;
  return result;
}

uint64_t sub_24F0AAA38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();

  sub_24F92A758();

  a2[1] = v4;
  return result;
}

uint64_t sub_24F0AAADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_24F928AD8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24F0AAB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_24F928AD8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for CompleteOnboardWelcomeAction()
{
  result = qword_27F238B08;
  if (!qword_27F238B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F0AAC30()
{
  sub_24E659BE8();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F0AACC4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238B28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F0AB310();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD38();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CCE8();
    type metadata accessor for CompleteOnboardWelcomeAction();
    v8[13] = 2;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F0AAED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_24F928AD8();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238B18);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CompleteOnboardWelcomeAction();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F0AB310();
  v12 = v23;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v11;
    v23 = v9;
    v15 = v21;
    v14 = v22;
    v26 = 0;
    *v13 = sub_24F92CC58();
    v25 = 1;
    *(v13 + 8) = sub_24F92CC08();
    *(v13 + 16) = v17 & 1;
    v24 = 2;
    sub_24E674184(&qword_27F254CB0);
    v18 = v5;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v14);
    (*(v19 + 32))(v13 + *(v23 + 24), v18, v3);
    sub_24EB78C18(v13, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F0AB1D0()
{
  v1 = 0x654D6E6F69746361;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t sub_24F0AB240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F0AB47C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F0AB268(uint64_t a1)
{
  v2 = sub_24F0AB310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0AB2A4(uint64_t a1)
{
  v2 = sub_24F0AB310();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F0AB310()
{
  result = qword_27F238B20;
  if (!qword_27F238B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238B20);
  }

  return result;
}

unint64_t sub_24F0AB378()
{
  result = qword_27F238B30;
  if (!qword_27F238B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238B30);
  }

  return result;
}

unint64_t sub_24F0AB3D0()
{
  result = qword_27F238B38;
  if (!qword_27F238B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238B38);
  }

  return result;
}

unint64_t sub_24F0AB428()
{
  result = qword_27F238B40;
  if (!qword_27F238B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238B40);
  }

  return result;
}

uint64_t sub_24F0AB47C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000020 && 0x800000024FA6ACF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024FA462B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 2;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t PresenterError.init(innerError:pageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for PresenterError() + 20);

  return sub_24E911D90(a2, v4);
}

uint64_t type metadata accessor for PresenterError()
{
  result = qword_27F238B48;
  if (!qword_27F238B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PresenterError.innerError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t PresenterError.pageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PresenterError() + 20);

  return sub_24E99091C(v3, a1);
}

uint64_t PresenterError.metricsErrorDescription.getter()
{
  v8 = *v0;
  v1 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0);
  if (swift_dynamicCast())
  {
    sub_24E612E28(v6, v9);
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v3 + 16))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v9);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_24E601704(v6, &qword_27F2231C8);
    swift_getErrorValue();
    return sub_24F92CFE8();
  }
}

uint64_t PresenterError.describeForMetricsEvent(using:)(void (*a1)(uint64_t, unint64_t, void *), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for PresenterError();
  sub_24E99091C(v3 + *(v9 + 20), v8);
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_24E601704(v8, &qword_27F228530);
  }

  else
  {
    v12 = sub_24F91F398();
    v14 = v13;
    (*(v11 + 8))(v8, v10);
    v23 = MEMORY[0x277D837D0];
    v22[0] = v12;
    v22[1] = v14;
    a1(0x6C725565676170, 0xE700000000000000, v22);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v21 = *v3;
  v15 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0);
  if (swift_dynamicCast())
  {
    sub_24E612E28(v19, v22);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v17 + 24))(a1, a2, v16, v17);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    return sub_24E601704(v19, &qword_27F2231C8);
  }
}

unint64_t PresenterError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = sub_24F92B0D8();
  *(inited + 40) = v1;
  swift_getErrorValue();
  *(inited + 72) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  v3 = sub_24E608448(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F2135C0);
  return v3;
}

unint64_t sub_24F0ABBA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = sub_24F92B0D8();
  *(inited + 40) = v1;
  swift_getErrorValue();
  *(inited + 72) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  v3 = sub_24E608448(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F2135C0);
  return v3;
}

uint64_t sub_24F0ABC98(uint64_t a1)
{
  v2 = sub_24F0AC03C(&qword_27F238B60);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24F0ABCF0(uint64_t a1)
{
  v2 = sub_24F0AC03C(&qword_27F238B60);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24F0ABD7C(uint64_t a1)
{
  result = sub_24F0AC03C(&qword_27F22B028);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24F0ABDD4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F0ABEA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F0ABF54()
{
  sub_24F0ABFD8();
  if (v0 <= 0x3F)
  {
    sub_24E6D4C08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F0ABFD8()
{
  result = qword_27F238B58;
  if (!qword_27F238B58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F238B58);
  }

  return result;
}

uint64_t sub_24F0AC03C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PresenterError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t VisibleShelfSupplementaryCollectionElementsObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_24E60B368(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F380);
  swift_allocObject();
  *(v0 + 16) = sub_24EA50028(v1);
  return v0;
}

uint64_t VisibleShelfSupplementaryCollectionElementsObserver.init()()
{
  v1 = v0;
  v2 = sub_24E60B368(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F380);
  swift_allocObject();
  *(v1 + 16) = sub_24EA50028(v2);
  return v1;
}

uint64_t sub_24F0AC164()
{
  swift_beginAccess();

  sub_24F92BF18();
}

void sub_24F0AC224(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a5;
  v75 = a4;
  v65 = a3;
  v73 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - v7;
  v70 = type metadata accessor for ShelfLayoutContext();
  v9 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_24F91FA78();
  v59 = *(v66 - 8);
  v12 = MEMORY[0x28223BE20](v66);
  v68 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (*(*a1 + 16))
  {
    v60 = (*(v74 + 32))(v75, v12);
    if (v60)
    {
      v15 = v14 + 64;
      v16 = 1 << *(v14 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(v14 + 64);
      v19 = (v16 + 63) >> 6;
      v20 = v59 + 16;
      v21 = (v9 + 48);
      v22 = (v59 + 8);

      v23 = 0;
      v24 = v66;
      v56 = v14 + 64;
      v55 = v19;
      v63 = v11;
      v57 = v14;
LABEL_7:
      if (v18)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v19)
        {

          return;
        }

        v18 = *(v15 + 8 * v25);
        ++v23;
        if (v18)
        {
          v23 = v25;
LABEL_12:
          v62 = v18;
          v26 = *(v14 + 48);
          v61 = v23;
          v27 = (v26 + ((v23 << 10) | (16 * __clz(__rbit64(v18)))));
          v28 = *v27;
          v29 = v27[1];

          v30 = v60;
          v67 = v28;
          v31 = sub_24F92B098();
          v64 = v30;
          v32 = [v30 indexPathsForVisibleSupplementaryElementsOfKind_];

          v33 = sub_24F92B5A8();
          v34 = *(v33 + 16);
          if (v34)
          {
            v69 = v29;
            v35 = (*(v59 + 80) + 32) & ~*(v59 + 80);
            v58 = v33;
            v36 = v33 + v35;
            v37 = *(v59 + 72);
            v71 = *(v59 + 16);
            v72 = v37;
            v38 = v68;
            v71(v68, v33 + v35, v24);
            while (1)
            {
              ShelfBasedCollectionViewController.shelfLayoutContext(containing:)(v75, v74, v8);
              if ((*v21)(v8, 1, v70) == 1)
              {
                break;
              }

              sub_24F0AD010(v8, v11);
              ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter(v75, v74);
              v42 = v41;
              ObjectType = swift_getObjectType();
              (*(v42 + 24))(&v76, v67, v69, v11, v65, ObjectType, v42);
              swift_unknownObjectRelease();
              if (!v77)
              {
                sub_24F085864(v11);
                v38 = v68;
                v24 = v66;
                (*v22)(v68, v66);
                v39 = &v76;
                v40 = &qword_27F230D60;
                goto LABEL_15;
              }

              sub_24E612C80(&v76, v78);
              v44 = v8;
              v46 = v79;
              v45 = v80;
              __swift_project_boxed_opaque_existential_1(v78, v79);
              v47 = *(v45 + 32);
              v48 = v22;
              v49 = v21;
              v50 = v20;
              v51 = v68;
              v52 = v46;
              v53 = v45;
              v8 = v44;
              v54 = v63;
              v47(v68, v64, v52, v53);
              v38 = v51;
              v20 = v50;
              v21 = v49;
              v22 = v48;
              v11 = v54;
              sub_24F085864(v54);
              v24 = v66;
              (*v22)(v38, v66);
              __swift_destroy_boxed_opaque_existential_1(v78);
LABEL_16:
              v36 += v72;
              if (!--v34)
              {
                goto LABEL_6;
              }

              v71(v38, v36, v24);
            }

            (*v22)(v38, v24);
            v39 = v8;
            v40 = &qword_27F232618;
LABEL_15:
            sub_24E601704(v39, v40);
            goto LABEL_16;
          }

LABEL_6:

          v14 = v57;
          v18 = (v62 - 1) & v62;

          v15 = v56;
          v19 = v55;
          v23 = v61;
          goto LABEL_7;
        }
      }

      __break(1u);
    }
  }
}

unint64_t sub_24F0AC7C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!*(*a1 + 16) || (result = sub_24E76D644(a2, a3), (v8 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    v12 = 1;
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    v12 = v10;
LABEL_6:
    result = sub_24E81DF80(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    *a1 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F0AC888(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 16))
  {
    v6 = result;
    result = sub_24E76D644(a2, a3);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * result);
      if (v8 < 2)
      {
        return sub_24E98F804(a2, a3);
      }

      else
      {
        v9 = v8 - 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v6;
        result = sub_24E81DF80(v9, a2, a3, isUniquelyReferenced_nonNull_native);
        *v6 = v11;
      }
    }
  }

  return result;
}

uint64_t sub_24F0AC948(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_24F927D88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v10);
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  swift_beginAccess();
  v15 = *(v4 + 16);
  v23 = v12;
  v24 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v25 = v16;
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  v19 = sub_24F0ACED0;
  v20 = &v22;
  v21 = v15;
  sub_24F92BF08();

  (*(v7 + 8))(v9, v6);
}

uint64_t VisibleShelfSupplementaryCollectionElementsObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F0ACBDC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 24);

  a1(&v6);
}

uint64_t sub_24F0ACC94(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  swift_beginAccess();
  v14 = *(v3 + 16);
  v22 = v11;
  v23 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v24 = v15;
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  v18 = sub_24F0AD008;
  v19 = &v21;
  v20 = v14;
  sub_24F92BF08();

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F0ACED8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_24F0AD010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfLayoutContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AdvertDeviceWindowFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AdvertDeviceWindowFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F2106A0 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050);
  __swift_project_value_buffer(v3, qword_27F22E490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
  sub_24F929AC8();
  if (v12)
  {
    v4 = v13;
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(ObjectType, v4);
    v7 = 0x7469617274726F70;
    if (v6)
    {
      v7 = 0x70616373646E616CLL;
    }

    v8 = 0xE800000000000000;
    if (v6)
    {
      v8 = 0xE900000000000065;
    }

    v14 = MEMORY[0x277D837D0];
    v12 = v7;
    v13 = v8;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    if (!v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v12);
      v9 = (*(v4 + 16))(ObjectType, v4);
      v14 = MEMORY[0x277D839B0];
      LOBYTE(v12) = v9 & 1;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_24F929A28();
    }

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v11 = sub_24F92AAE8();
    __swift_project_value_buffer(v11, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t sub_24F0AD44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F0AD4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AdvertDeviceWindowFieldsProvider()
{
  result = qword_27F238B68;
  if (!qword_27F238B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.handleGamesLibraryPPTs(scrollProxy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v54 = a3;
  v55 = a1;
  v53 = a4;
  v56 = sub_24F924098();
  v8 = *(v56 - 8);
  v58 = *(v8 + 64);
  MEMORY[0x28223BE20](v56);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v59 = sub_24F9235D8();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v41 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  v63 = a3;
  v50 = MEMORY[0x277CDEEA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v51 = OpaqueTypeMetadata2;
  v52 = v16;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v57 = v40 - v17;
  sub_24F9235E8();
  v18 = *(v11 + 16);
  v45 = v11 + 16;
  v49 = v18;
  v18(v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  v60 = v8;
  v48 = *(v8 + 16);
  v19 = v56;
  v48(v10, v55, v56);
  v20 = *(v11 + 80);
  v21 = (v20 + 32) & ~v20;
  v22 = *(v8 + 80);
  v43 = v21;
  v23 = (v12 + v22 + v21) & ~v22;
  v46 = v20 | v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = v54;
  v42 = *(v11 + 32);
  v44 = v11 + 32;
  v25 = v24 + v21;
  v26 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v42(v25, v26);
  v28 = *(v60 + 32);
  v60 += 32;
  v29 = v23;
  v28(v24 + v23, v10, v19);
  v30 = v41;
  v31 = v40[1];
  sub_24F926988();

  v32 = *(v61 + 8);
  v61 += 8;
  v47 = v32;
  v32(v30, v59);
  sub_24F9235E8();
  v33 = v26;
  v49(v26, v31, v27);
  v34 = v56;
  v48(v10, v55, v56);
  v35 = swift_allocObject();
  v36 = v54;
  *(v35 + 16) = v27;
  *(v35 + 24) = v36;
  (v42)(v35 + v43, v33, v27);
  v28(v35 + v29, v10, v34);
  v62 = v27;
  v63 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v51;
  v38 = v57;
  sub_24F926988();

  v47(v30, v59);
  return (*(v52 + 8))(v38, v37);
}

uint64_t sub_24F0ADB10(uint64_t a1)
{
  v2 = sub_24F923A88();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F9247B8();
}

uint64_t View.registerGamesPPTs()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisterPPTViewModifier();
  MEMORY[0x28223BE20](v4);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238B78);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x25304C420](v6, a1, v4, a2);
  return sub_24F0AE26C(v6);
}

uint64_t View.handleGamesPlayNowPPTs(scrollProxy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v54 = a3;
  v55 = a1;
  v53 = a4;
  v56 = sub_24F924098();
  v8 = *(v56 - 8);
  v58 = *(v8 + 64);
  MEMORY[0x28223BE20](v56);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v59 = sub_24F9235D8();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v41 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  v63 = a3;
  v50 = MEMORY[0x277CDEEA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v51 = OpaqueTypeMetadata2;
  v52 = v16;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v57 = v40 - v17;
  sub_24F9235E8();
  v18 = *(v11 + 16);
  v45 = v11 + 16;
  v49 = v18;
  v18(v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  v60 = v8;
  v48 = *(v8 + 16);
  v19 = v56;
  v48(v10, v55, v56);
  v20 = *(v11 + 80);
  v21 = (v20 + 32) & ~v20;
  v22 = *(v8 + 80);
  v43 = v21;
  v23 = (v12 + v22 + v21) & ~v22;
  v46 = v20 | v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = v54;
  v42 = *(v11 + 32);
  v44 = v11 + 32;
  v25 = v24 + v21;
  v26 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v42(v25, v26);
  v28 = *(v60 + 32);
  v60 += 32;
  v29 = v23;
  v28(v24 + v23, v10, v19);
  v30 = v41;
  v31 = v40[1];
  sub_24F926988();

  v32 = *(v61 + 8);
  v61 += 8;
  v47 = v32;
  v32(v30, v59);
  sub_24F9235E8();
  v33 = v26;
  v49(v26, v31, v27);
  v34 = v56;
  v48(v10, v55, v56);
  v35 = swift_allocObject();
  v36 = v54;
  *(v35 + 16) = v27;
  *(v35 + 24) = v36;
  (v42)(v35 + v43, v33, v27);
  v28(v35 + v29, v10, v34);
  v62 = v27;
  v63 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v51;
  v38 = v57;
  sub_24F926988();

  v47(v30, v59);
  return (*(v52 + 8))(v38, v37);
}

uint64_t type metadata accessor for RegisterPPTViewModifier()
{
  result = qword_27F238B90;
  if (!qword_27F238B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0AE26C(uint64_t a1)
{
  v2 = type metadata accessor for RegisterPPTViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_52()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F924098();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24F0AE408(uint64_t a1)
{
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v4 = *(*(*(v1 + 16) - 8) + 64);
  v5 = *(sub_24F924098() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_24F0AF4A0(a1, v6);
}

uint64_t sub_24F0AE4E4()
{
  type metadata accessor for RegisterPPTViewModifier();
  sub_24F924038();
  sub_24F0AFC30(&qword_27F238B80, type metadata accessor for RegisterPPTViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_24F0AE580()
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F0AE61C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238B88);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F0AE6A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238B88);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24F0AE724()
{
  sub_24F0AE790();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24F0AE790()
{
  if (!qword_27F238BA0)
  {
    sub_24F923A88();
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F238BA0);
    }
  }
}

uint64_t sub_24F0AE82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v44 = a2;
  v3 = type metadata accessor for RegisterPPTViewModifier();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = v5;
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24F9235D8();
  v7 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238BA8);
  v11 = *(v10 - 8);
  v38 = v10;
  v39 = v11;
  MEMORY[0x28223BE20](v10);
  v37 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238BB0);
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  MEMORY[0x28223BE20](v13);
  v53 = &v37 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238BB8);
  v17 = *(v16 - 8);
  v42 = v16;
  v43 = v17;
  MEMORY[0x28223BE20](v16);
  v52 = &v37 - v18;
  sub_24F9235E8();
  v49 = v2;
  sub_24F0AF230(v2, v6);
  v50 = *(v4 + 80);
  v19 = (v50 + 16) & ~v50;
  v20 = swift_allocObject();
  sub_24F0AF298(v6, v20 + v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238BC0);
  v22 = sub_24E602068(&qword_27F238BC8, &qword_27F238BC0);
  sub_24F926988();

  v46 = *(v7 + 8);
  v47 = v7 + 8;
  v23 = v51;
  v46(v9, v51);
  sub_24F9235E8();
  sub_24F0AF230(v2, v6);
  v24 = swift_allocObject();
  sub_24F0AF298(v6, v24 + v19);
  v54 = v21;
  v55 = v22;
  v48 = MEMORY[0x277CDEEA8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v37;
  v27 = v38;
  sub_24F926988();

  v46(v9, v23);
  (*(v39 + 8))(v26, v27);
  sub_24F9235E8();
  sub_24F0AF230(v49, v6);
  v28 = swift_allocObject();
  sub_24F0AF298(v6, v28 + v19);
  v54 = v27;
  v55 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v53;
  v31 = v40;
  sub_24F926988();

  v32 = v46;
  v46(v9, v23);
  (*(v41 + 8))(v30, v31);
  sub_24F9235E8();
  sub_24F0AF230(v49, v6);
  v33 = swift_allocObject();
  sub_24F0AF298(v6, v33 + v19);
  v54 = v31;
  v55 = v29;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  v35 = v52;
  sub_24F926988();

  v32(v9, v51);
  return (*(v43 + 8))(v35, v34);
}

uint64_t sub_24F0AEEA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_24F923A88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F76A240(v6);
  sub_24F91F488();
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v2, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24F923A48();
    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v2, v7);
  }

  return result;
}

uint64_t sub_24F0AF068()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_24F923A88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F76A240(v6);
  sub_24F91F488();
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v2, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24F923A48();
    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v2, v7);
  }

  return result;
}

uint64_t sub_24F0AF230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisterPPTViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0AF298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisterPPTViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_15Tm_0()
{
  v1 = *(type metadata accessor for RegisterPPTViewModifier() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238B78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923A88();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F0AF4A0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v36 = a1;
  v42 = sub_24F927D88();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F927DC8();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24F924098();
  v5 = *(v32 - 8);
  v33 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9235F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927DE8();
  v38 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v34 = &v31 - v16;
  sub_24E74EC40();
  v35 = sub_24F92BEF8();
  sub_24F927DD8();
  sub_24F927E58();
  v17 = v12 + 8;
  v18 = *(v12 + 8);
  v37 = v17;
  v18(v14, v11);
  (*(v8 + 16))(v10, v36, v7);
  v20 = v31;
  v19 = v32;
  (*(v5 + 16))(v31, v39, v32);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v21, v10, v7);
  (*(v5 + 32))(v23 + v22, v20, v19);
  aBlock[4] = sub_24F0AFB58;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_111;
  v24 = _Block_copy(aBlock);

  v25 = v40;
  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F0AFC30(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  v27 = v41;
  v26 = v42;
  sub_24F92C6A8();
  v29 = v34;
  v28 = v35;
  MEMORY[0x253051820](v34, v25, v27, v24);
  _Block_release(v24);

  (*(v45 + 8))(v27, v26);
  (*(v43 + 8))(v25, v44);
  return (v18)(v29, v38);
}

uint64_t sub_24F0AFA10()
{
  v1 = sub_24F9235F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F924098();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24F0AFB58()
{
  sub_24F9235F8();
  sub_24F924098();
  return sub_24F9235C8();
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F0AFC30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F0AFC78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238BB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238BB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238BA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238BC0);
  sub_24E602068(&qword_27F238BC8, &qword_27F238BC0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F0AFDC4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F0AFE28()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v0 + 40);
      sub_24E81D324(v4, v5, v2, v1, isUniquelyReferenced_nonNull_native);

      *(v0 + 40) = v9;
    }
  }

  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;

  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  return result;
}

unint64_t sub_24F0AFEFC()
{
  v7 = sub_24E6086DC(MEMORY[0x277D84F90]);

  v0 = sub_24F92B2B8();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = 0;
    do
    {
      if (v2 == 32 && v3 == 0xE100000000000000 || (sub_24F92CE08() & 1) != 0)
      {

        v4 = 0;
      }

      else
      {
        if (v2 == 61 && v3 == 0xE100000000000000 || (sub_24F92CE08() & 1) != 0)
        {
          goto LABEL_11;
        }

        if (!v4)
        {
          MEMORY[0x253050C10](v2, v3);

          v4 = 0;
          goto LABEL_3;
        }

        if (v4 != 1)
        {
LABEL_11:

          v4 = 2;
        }

        else
        {
          MEMORY[0x253050C10](v2, v3);

          v4 = 1;
        }
      }

LABEL_3:
      v2 = sub_24F92B2B8();
      v3 = v5;
    }

    while (v5);
  }

  sub_24F0AFE28();

  return v7;
}

uint64_t PlaybackScrollObserver.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t PlaybackScrollObserver.init(_:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t PlaybackScrollObserver.__deallocating_deinit()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocClassInstance();
}

void sub_24F0B0384()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visibilityTracker);
    v4 = Strong;

    sub_24EEDBA34();
    v2 = *(v1 + 64);

    v3 = sub_24F45DA90(v2);

    *&v4[OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds] = v3;

    sub_24ECD7CBC();
  }
}

GameStoreKit::PrivacyCategoryStyle_optional __swiftcall PrivacyCategoryStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PrivacyCategoryStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x61506C6961746564;
  }

  else
  {
    return 0x50746375646F7270;
  }
}

uint64_t sub_24F0B0580(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61506C6961746564;
  }

  else
  {
    v3 = 0x50746375646F7270;
  }

  if (v2)
  {
    v4 = 0xEB00000000656761;
  }

  else
  {
    v4 = 0xEA00000000006567;
  }

  if (*a2)
  {
    v5 = 0x61506C6961746564;
  }

  else
  {
    v5 = 0x50746375646F7270;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006567;
  }

  else
  {
    v6 = 0xEB00000000656761;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F0B0634@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24F0B0694(uint64_t *a1@<X8>)
{
  v2 = 0x50746375646F7270;
  if (*v1)
  {
    v2 = 0x61506C6961746564;
  }

  v3 = 0xEB00000000656761;
  if (*v1)
  {
    v3 = 0xEA00000000006567;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F0B06E0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0B0770()
{
  sub_24F92B218();
}

uint64_t sub_24F0B07EC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t PrivacyCategory.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrivacyCategory.__allocating_init(id:title:artwork:style:dataTypes:prefersSmallArtwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, char a7)
{
  v28 = a2;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  LODWORD(a5) = *a5;
  sub_24E65E064(a1, &v31);
  if (*(&v32 + 1))
  {
    v18 = v32;
    *(v16 + 64) = v31;
    *(v16 + 80) = v18;
    *(v16 + 96) = v33;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    HIDWORD(v26) = a5;
    a5 = v19;
    v27 = a3;
    v20 = a4;
    v21 = a6;
    v22 = a7;
    v24 = v23;
    (*(v13 + 8))(v15, v12);
    v29 = a5;
    v30 = v24;
    LOBYTE(a5) = BYTE4(v26);
    a7 = v22;
    a6 = v21;
    a4 = v20;
    a3 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v31, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  *(v16 + 16) = v28;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  *(v16 + 56) = a7 & 1;
  return v16;
}

uint64_t PrivacyCategory.init(id:title:artwork:style:dataTypes:prefersSmallArtwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, char a7)
{
  v8 = v7;
  v29 = a2;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a5) = *a5;
  sub_24E65E064(a1, &v32);
  if (*(&v33 + 1))
  {
    v35 = v32;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    HIDWORD(v27) = a5;
    a5 = v19;
    v28 = a3;
    v20 = a4;
    v21 = a6;
    v22 = a7;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v30 = a5;
    v31 = v24;
    LOBYTE(a5) = BYTE4(v27);
    a7 = v22;
    a6 = v21;
    a4 = v20;
    a3 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v25 = v36;
  *(v8 + 64) = v35;
  *(v8 + 80) = v25;
  *(v8 + 96) = v37;
  *(v8 + 16) = v29;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7 & 1;
  return v8;
}

uint64_t PrivacyCategory.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v95 = a2;
  v84 = sub_24F91F6B8();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v78[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v86 = &v78[-v5];
  v88 = sub_24F92AC28();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v81 = &v78[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24F9285B8();
  v99 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v91 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v90 = &v78[-v14];
  MEMORY[0x28223BE20](v15);
  v85 = &v78[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v78[-v18];
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v78[-v22];
  v24 = a1;
  sub_24F928398();
  v89 = sub_24F928348();
  v26 = v25;
  v27 = *(v11 + 8);
  v97 = v10;
  v98 = v27;
  v105[7] = v11 + 8;
  v27(v23, v10);
  v94 = v7;
  if (!v26)
  {
    v40 = sub_24F92AC38();
    sub_24F0B1DB0(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v41 = 0x656C746974;
    v42 = v96;
    v41[1] = 0xE500000000000000;
    v41[2] = v42;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    v28 = v24;
    v31 = v95;
LABEL_9:
    v39 = v99;
    v35 = v97;
LABEL_10:
    v38 = v98;
LABEL_11:
    (*(v39 + 8))(v31, v94);
    v38(v28, v35);
    return v9;
  }

  v92 = v26;
  type metadata accessor for Artwork();
  v28 = v24;
  sub_24F928398();
  v29 = v95;
  (*(v99 + 16))(v9, v95, v7);
  sub_24F0B1DB0(&qword_27F219660, 255, type metadata accessor for Artwork);
  sub_24F929548();
  v30 = v105[0];
  v31 = v29;
  if (!v105[0])
  {

    v43 = sub_24F92AC38();
    sub_24F0B1DB0(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v44 = 0x6B726F77747261;
    v45 = v96;
    v44[1] = 0xE700000000000000;
    v44[2] = v45;
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D22530], v43);
    swift_willThrow();
    goto LABEL_9;
  }

  v9 = 0x656C797473;
  sub_24F928398();
  sub_24F928348();
  v33 = v32;
  v34 = v19;
  v35 = v97;
  v98(v34, v97);
  v36 = v96;
  if (!v33)
  {

    v47 = sub_24F92AC38();
    sub_24F0B1DB0(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v48 = 0x656C797473;
    v48[1] = 0xE500000000000000;
    v48[2] = v36;
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D22530], v47);
    swift_willThrow();

    v39 = v99;
    goto LABEL_10;
  }

  v37 = sub_24F92CB88();

  if (!v37)
  {
    v79 = 0;
    v38 = v98;
    v39 = v99;
    goto LABEL_15;
  }

  v38 = v98;
  v39 = v99;
  if (v37 != 1)
  {

    v64 = sub_24F92AC38();
    sub_24F0B1DB0(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    v65 = MEMORY[0x277D84F90];
    *v66 = 0x656C797473;
    v66[1] = 0xE500000000000000;
    v66[2] = v96;
    v66[3] = v65;
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x277D22540], v64);
    swift_willThrow();

    v35 = v97;
    goto LABEL_11;
  }

  v79 = 1;
LABEL_15:
  v49 = v97;
  v50 = v85;
  v51 = v28;
  sub_24F928398();
  v52 = v86;
  sub_24F9282B8();
  v38(v50, v49);
  v53 = v87;
  v54 = v88;
  v55 = (*(v87 + 48))(v52, 1, v88);
  v80 = v30;
  if (v55 == 1)
  {
    sub_24E601704(v52, &qword_27F2213B0);
    v99 = MEMORY[0x277D84F90];
  }

  else
  {
    v56 = v81;
    (*(v53 + 32))(v81, v52, v54);
    v57 = v93;
    v99 = sub_24F92ABB8();
    v93 = v57;
    (*(v53 + 8))(v56, v54);
  }

  v58 = v91;
  v59 = v90;
  sub_24F928398();
  LODWORD(v91) = sub_24F928278();
  v60 = v98;
  v98(v59, v49);
  sub_24F928398();
  v61 = sub_24F928348();
  if (v62)
  {
    *&v102 = v61;
    *(&v102 + 1) = v62;
    sub_24F92C7F8();
    v63 = v58;
  }

  else
  {
    v67 = v82;
    sub_24F91F6A8();
    v68 = v58;
    v69 = sub_24F91F668();
    v71 = v70;
    (*(v83 + 8))(v67, v84);
    *&v102 = v69;
    *(&v102 + 1) = v71;
    sub_24F92C7F8();
    v63 = v68;
  }

  v60(v63, v49);
  v9 = swift_allocObject();
  sub_24E65E064(v105, &v102);
  if (*(&v103 + 1))
  {
    v72 = v103;
    *(v9 + 64) = v102;
    *(v9 + 80) = v72;
    *(v9 + 96) = v104;
  }

  else
  {
    v73 = v82;
    sub_24F91F6A8();
    v74 = sub_24F91F668();
    v76 = v75;
    (*(v83 + 8))(v73, v84);
    v100 = v74;
    v101 = v76;
    v49 = v97;
    sub_24F92C7F8();
    sub_24E601704(&v102, &qword_27F235830);
  }

  (*(v39 + 8))(v95, v94);
  v60(v51, v49);
  sub_24E601704(v105, &qword_27F235830);
  v77 = v92;
  *(v9 + 16) = v89;
  *(v9 + 24) = v77;
  *(v9 + 32) = v80;
  *(v9 + 40) = v79;
  *(v9 + 48) = v99;
  *(v9 + 56) = v91 & 1;
  return v9;
}

uint64_t PrivacyCategory.hash(into:)()
{
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_24F92B218();
  sub_24E9F7EC4();
  sub_24F92B218();

  v1 = *(v0 + 48);
  MEMORY[0x253052A00](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_24F92B218();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_24F92D088();
}

uint64_t PrivacyCategory.deinit()
{

  sub_24E6585F8(v0 + 64);
  return v0;
}

uint64_t PrivacyCategory.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t PrivacyCategory.hashValue.getter()
{
  sub_24F92D068();
  PrivacyCategory.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24F0B1A88@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyCategory.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F0B1AB4()
{
  sub_24F92D068();
  PrivacyCategory.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24F0B1B1C()
{
  sub_24F92D068();
  PrivacyCategory.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit15PrivacyCategoryC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x253052150](a1 + 64, a2 + 64) & 1) == 0)
  {
    goto LABEL_29;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_24F92CE08() & 1) == 0 || (_s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_29;
  }

  if (*(a1 + 40))
  {
    v5 = 0x61506C6961746564;
  }

  else
  {
    v5 = 0x50746375646F7270;
  }

  if (*(a1 + 40))
  {
    v6 = 0xEA00000000006567;
  }

  else
  {
    v6 = 0xEB00000000656761;
  }

  if (*(a2 + 40))
  {
    v7 = 0x61506C6961746564;
  }

  else
  {
    v7 = 0x50746375646F7270;
  }

  if (*(a2 + 40))
  {
    v8 = 0xEA00000000006567;
  }

  else
  {
    v8 = 0xEB00000000656761;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if ((sub_24EA14BB8(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
LABEL_29:
    v11 = 0;
    return v11 & 1;
  }

  v11 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  return v11 & 1;
}

unint64_t sub_24F0B1CA8()
{
  result = qword_27F238BD0;
  if (!qword_27F238BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238BD0);
  }

  return result;
}

uint64_t sub_24F0B1DB0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F0B1E70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F0B1FC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F0B211C()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24EB5FE28();
    if (v1 <= 0x3F)
    {
      sub_24E68857C(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
      if (v2 <= 0x3F)
      {
        sub_24E68857C(319, &qword_27F215458, &qword_27F215460, &unk_24F942C00, MEMORY[0x277D21D28]);
        if (v3 <= 0x3F)
        {
          sub_24E61C938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F0B224C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F0B22A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F0B2334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24F0B23D0()
{
  sub_24E68857C(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24F0B24E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F0B3B64();
  sub_24F92D128();
  LOBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = *(v3 + 48);
    v14 = *(v3 + 40);
    v15 = v9;
    v13 = 1;
    sub_24E620F7C();
    sub_24F92CCF8();
    v10 = *(v3 + 64);
    v14 = *(v3 + 56);
    v15 = v10;
    v13 = 2;
    sub_24F92CCF8();
    LOBYTE(v14) = 3;
    sub_24F92CD18();
    LOBYTE(v14) = 4;
    sub_24F92CD18();
    LOBYTE(v14) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for GSKDivider(0);
    LOBYTE(v14) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v14) = 7;
    sub_24F929608();
    sub_24F0B224C(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F0B28A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C68);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for GSKDivider(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 72) = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 13) = 0;
  v42 = v14 + 72;
  sub_24E61DA68(&v45, (v14 + 72), qword_27F21B590);
  v15 = *(v12 + 40);
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v41 = v15;
  v44 = v14;
  v17(&v14[v15], 1, 1, v16);
  v18 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24F0B3B64();
  v19 = v40;
  sub_24F92D108();
  if (v19)
  {
    v22 = v41;
    v23 = v44;
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_24E601704(v42, qword_27F24EC90);
    return sub_24E601704(v23 + v22, &qword_27F215440);
  }

  else
  {
    v40 = v8;
    v35 = v12;
    v36 = v5;
    v20 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v48 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v21 = v39;
    sub_24F92CC68();
    v24 = v46;
    v25 = v44;
    *v44 = v45;
    v25[1] = v24;
    *(v25 + 4) = v47;
    v48 = 1;
    sub_24E620E90();
    sub_24F92CC18();
    v26 = v41;
    v27 = v20;
    v28 = BYTE8(v45);
    *(v25 + 5) = v45;
    *(v25 + 48) = v28;
    v48 = 2;
    sub_24F92CC18();
    v29 = v42;
    v30 = BYTE8(v45);
    *(v25 + 7) = v45;
    *(v25 + 64) = v30;
    LOBYTE(v45) = 3;
    *(v25 + 65) = sub_24F92CC38() & 1;
    LOBYTE(v45) = 4;
    *(v25 + 66) = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v48 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v45, v29, qword_27F24EC90);
    LOBYTE(v45) = 6;
    sub_24E65CAA0();
    v31 = v40;
    sub_24F92CC68();
    v32 = v44;
    sub_24E61DA68(v31, v44 + v26, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v45) = 7;
    sub_24F0B224C(&qword_27F213F48, MEMORY[0x277D21F70]);
    v33 = v36;
    sub_24F92CC18();
    (*(v27 + 8))(v11, v21);
    sub_24E6009C8(v33, v32 + *(v35 + 44), &qword_27F213E68);
    sub_24F0B3C14(v32, v37, type metadata accessor for GSKDivider);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_24F0B3BB8(v32);
  }
}

unint64_t sub_24F0B2F70()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x614C6E49776F6873;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6874646977;
  if (v1 != 2)
  {
    v5 = 0x6F506E49776F6873;
  }

  if (*v0)
  {
    v2 = 0x746867696568;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F0B3078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F0B3E1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F0B30A0(uint64_t a1)
{
  v2 = sub_24F0B3B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0B30DC(uint64_t a1)
{
  v2 = sub_24F0B3B64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F0B3118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F0B3208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C20);
  MEMORY[0x28223BE20](v38);
  v4 = &v36 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C28);
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v36 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C30);
  MEMORY[0x28223BE20](v37);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_24F769764(&v36 - v17);
  v19 = sub_24F925218();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    sub_24E60169C(v18, v15, &qword_27F215598);
    if ((*(v20 + 88))(v15, v19) == *MEMORY[0x277CE0558])
    {
      if (*(a1 + 66) == 1)
      {
        sub_24F9271E8();
        _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
        v21 = sub_24F926D08();

        v22 = sub_24F925808();
        v23 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C50) + 36)];
        *v23 = v21;
        v23[8] = v22;
        sub_24F927618();
        sub_24F9238C8();
        v24 = v36;
        v25 = &v7[*(v36 + 36)];
        v26 = v41;
        *v25 = v40;
        *(v25 + 1) = v26;
        *(v25 + 2) = v42;
        sub_24E6009C8(v7, v12, &qword_27F238C28);
        v27 = 0;
      }

      else
      {
        v27 = 1;
        v24 = v36;
      }

      (*(v5 + 56))(v12, v27, 1, v24);
      goto LABEL_12;
    }

    (*(v20 + 8))(v15, v19);
  }

  if (*(a1 + 65) == 1)
  {
    sub_24F9271E8();
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v28 = sub_24F926D08();

    v29 = sub_24F925808();
    v30 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C50) + 36)];
    *v30 = v28;
    v30[8] = v29;
    sub_24F927618();
    sub_24F9238C8();
    v31 = v36;
    v32 = &v7[*(v36 + 36)];
    v33 = v41;
    *v32 = v40;
    *(v32 + 1) = v33;
    *(v32 + 2) = v42;
    sub_24E6009C8(v7, v9, &qword_27F238C28);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v31 = v36;
  }

  (*(v5 + 56))(v9, v34, 1, v31);
  v12 = v9;
LABEL_12:
  sub_24E60169C(v12, v4, &qword_27F238C30);
  swift_storeEnumTagMultiPayload();
  sub_24F0B396C();
  sub_24F924E28();
  sub_24E601704(v12, &qword_27F238C30);
  return sub_24E601704(v18, &qword_27F215598);
}

uint64_t sub_24F0B3758()
{
  MEMORY[0x28223BE20](v0);
  sub_24F0B3C14(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GSKDividerComponent);
  sub_24F0B224C(&qword_27F238C08, type metadata accessor for GSKDividerComponent);
  return sub_24F9218E8();
}

unint64_t sub_24F0B396C()
{
  result = qword_27F238C38;
  if (!qword_27F238C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238C30);
    sub_24F0B39F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C38);
  }

  return result;
}

unint64_t sub_24F0B39F0()
{
  result = qword_27F238C40;
  if (!qword_27F238C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238C28);
    sub_24F0B3A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C40);
  }

  return result;
}

unint64_t sub_24F0B3A7C()
{
  result = qword_27F238C48;
  if (!qword_27F238C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238C50);
    sub_24F0B224C(&qword_27F2388C0, MEMORY[0x277CDF088]);
    sub_24E602068(&qword_27F238C58, &qword_27F238C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C48);
  }

  return result;
}

unint64_t sub_24F0B3B64()
{
  result = qword_27F238C70;
  if (!qword_27F238C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C70);
  }

  return result;
}

uint64_t sub_24F0B3BB8(uint64_t a1)
{
  v2 = type metadata accessor for GSKDivider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F0B3C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F0B3C90()
{
  result = qword_27F238C80;
  if (!qword_27F238C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238C88);
    sub_24F0B396C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C80);
  }

  return result;
}

unint64_t sub_24F0B3D18()
{
  result = qword_27F238C90;
  if (!qword_27F238C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C90);
  }

  return result;
}

unint64_t sub_24F0B3D70()
{
  result = qword_27F238C98;
  if (!qword_27F238C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C98);
  }

  return result;
}

unint64_t sub_24F0B3DC8()
{
  result = qword_27F238CA0;
  if (!qword_27F238CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238CA0);
  }

  return result;
}

uint64_t sub_24F0B3E1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F506E49776F6873 && a2 == 0xEE00746961727472 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614C6E49776F6873 && a2 == 0xEF6570616373646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t NetworkReachabilityError.errorDescription.getter()
{
  v1 = 0xD00000000000003ELL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000035;
  }
}

uint64_t NetworkReachabilityError.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F0B419C()
{
  result = qword_27F238CA8;
  if (!qword_27F238CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238CA8);
  }

  return result;
}

unint64_t sub_24F0B41F4()
{
  result = qword_27F238CB0;
  if (!qword_27F238CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238CB0);
  }

  return result;
}

unint64_t sub_24F0B4248()
{
  v1 = 0xD00000000000003ELL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000035;
  }
}

uint64_t BootstrapView.init(bootstrap:contentBuilder:working:failed:isBootstrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v34 = a7;
  v35 = a8;
  v33 = a6;
  v32 = a11;
  v31[0] = a12;
  v31[1] = a13;
  v21 = sub_24F921738();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a12;
  v37 = a13;
  v38 = a14;
  v39 = a15;
  v24 = type metadata accessor for BootstrapView();
  sub_24F921728();
  sub_24F0B4420(v23);
  swift_unknownObjectWeakInit();
  result = sub_24F0B4518(a1, a9);
  v26 = (a9 + v24[17]);
  *v26 = a2;
  v26[1] = a3;
  v27 = (a9 + v24[18]);
  *v27 = a4;
  v27[1] = a5;
  v28 = (a9 + v24[19]);
  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  v30 = a9 + v24[20];
  *v30 = v35;
  *(v30 + 8) = a10;
  *(v30 + 16) = v32;
  return result;
}

uint64_t sub_24F0B4420(uint64_t a1)
{
  v2 = sub_24F921738();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_24F926F28();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_24F0B4518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bootstrap();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BootstrapView.init<>(bootstrap:contentBuilder:isBootstrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a4;
  v17 = type metadata accessor for Bootstrap();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F0B46BC(a1, v19);
  v20 = sub_24F0B4760();
  v21 = sub_24F0B47B4();
  *&v24 = &type metadata for DefaultBootstrapErrorView;
  *(&v24 + 1) = a8;
  *&v23 = a7;
  *(&v23 + 1) = &type metadata for DefaultBootstrapLoadingView;
  BootstrapView.init(bootstrap:contentBuilder:working:failed:isBootstrapping:)(v19, a2, a3, CGSizeMake, 0, sub_24F0B4720, 0, v26, a9, a5, a6, v23, v24, v20, v21);
  return sub_24F0B4808(a1);
}

uint64_t sub_24F0B46BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bootstrap();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0B4720@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v4 = a1;
}

unint64_t sub_24F0B4760()
{
  result = qword_27F238CB8;
  if (!qword_27F238CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238CB8);
  }

  return result;
}

unint64_t sub_24F0B47B4()
{
  result = qword_27F238CC0;
  if (!qword_27F238CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238CC0);
  }

  return result;
}

uint64_t sub_24F0B4808(uint64_t a1)
{
  v2 = type metadata accessor for Bootstrap();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DefaultBootstrapErrorView.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t BootstrapView.init<A>(bootstrap:tabsInfoProvider:customDependencies:appContentView:isBootstrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v28 = a7;
  v29 = a8;
  v26 = a9;
  v27 = a10;
  v18 = type metadata accessor for Bootstrap();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F0B46BC(a1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = a11;
  *(v21 + 24) = a12;
  v22 = *(a2 + 16);
  *(v21 + 32) = *a2;
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a2 + 32);
  *(v21 + 80) = *(a2 + 48);
  *(v21 + 88) = a3;
  *(v21 + 96) = a4;
  *(v21 + 104) = a5;
  *(v21 + 112) = a6;
  v23 = type metadata accessor for AppView();
  WitnessTable = swift_getWitnessTable();
  BootstrapView.init<>(bootstrap:contentBuilder:isBootstrapping:)(v20, sub_24F0B4C08, v21, v28, v29, v27, v23, WitnessTable, v26);
  return sub_24F0B4808(a1);
}

uint64_t sub_24F0B49D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[1];
  v8 = a1[2];
  *&v21 = *a1;
  *(&v21 + 1) = v7;
  *&v22 = v8;
  v9 = *(a2 + 16);
  v28 = *a2;
  v29 = v9;
  v30 = *(a2 + 32);
  *&v31 = *(a2 + 48);
  AppView.init(bootstrapResult:tabsInfoProvider:customDependencies:content:)(&v21, &v28, a3, a4, a5, a6, &v35);
  v10 = type metadata accessor for AppView();
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(&v35, v10, WitnessTable);
  v32 = v39;
  v33 = v40;
  v34 = v41;
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v31 = v38;

  sub_24E9D3E84(a2, &v14);
  v12 = *(*(v10 - 8) + 8);

  v12(&v28, v10);
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  sub_24E7896B8(&v14, v10, WitnessTable);
  v39 = v18;
  v40 = v19;
  v41 = v20;
  v35 = v14;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  return (v12)(&v35, v10);
}

uint64_t sub_24F0B4BA0()
{

  return swift_deallocObject();
}

uint64_t BootstrapView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v94 = sub_24F92B858();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = *(a1 - 8);
  v106 = *(v108 + 64);
  MEMORY[0x28223BE20](v5);
  v86 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v75 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v75 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E50);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = &v75 - v13;
  sub_24F923AD8();
  v105 = *(a1 + 16);
  v14 = v105;
  v15 = sub_24F924038();
  v16 = *(a1 + 40);
  v91 = sub_24F0B70E0(&qword_27F211A48, MEMORY[0x277CDD8B0]);
  v118 = v16;
  v119 = v91;
  v17 = v16;
  v90 = MEMORY[0x277CDFAD8];
  v81 = v15;
  WitnessTable = swift_getWitnessTable();
  v18 = *(a1 + 48);
  v107 = *(a1 + 56);
  v112 = &type metadata for BootstrapResult;
  v113 = v15;
  v115 = WitnessTable;
  v116 = v18;
  v19 = v18;
  v117 = v107;
  v20.i64[0] = v14;
  v103 = v20;
  v109 = *(a1 + 24);
  v114 = v109;
  v83 = sub_24F921CF8();
  v88 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = &v75 - v21;
  v87 = sub_24F924038();
  v89 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v82 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v85 = &v75 - v24;
  v96 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);
  v25 = v2;
  sub_24F926F58();
  v26 = v108;
  v28 = v108 + 16;
  v27 = *(v108 + 16);
  v29 = v11;
  v98 = v25;
  v27(v11, v25, a1);
  v30 = v28;
  v31 = v27;
  v104 = *(v26 + 80);
  v32 = v26;
  v33 = (v104 + 64) & ~v104;
  v102 = v33;
  v34 = swift_allocObject();
  v77 = v34;
  *&v35 = vdupq_laneq_s64(v109, 1).u64[0];
  v99 = v17;
  *(&v35 + 1) = v17;
  *(v34 + 16) = vzip1q_s64(v103, v109);
  *(v34 + 32) = v35;
  v97 = v19;
  v36 = v107;
  *(v34 + 48) = v19;
  *(v34 + 56) = v36;
  v37 = *(v32 + 32);
  v108 = v32 + 32;
  v103.i64[0] = v37;
  v101 = v29;
  v38 = v96;
  v37(v34 + v33, v29, v96);
  v100 = v30;
  v39 = v31;
  v31(v29, v25, v38);
  v40 = v102;
  v41 = swift_allocObject();
  v42 = v105;
  *(v41 + 16) = v105;
  *(v41 + 24) = v109;
  *(v41 + 40) = v17;
  *(v41 + 48) = v19;
  v43 = v107;
  *(v41 + 56) = v107;
  v44 = v41 + v40;
  v45 = v38;
  (v103.i64[0])(v44, v101, v38);
  v46 = v84;
  v47 = v98;
  v39(v84, v98, v45);
  v48 = v39;
  v49 = v102;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  *(v50 + 24) = v109;
  v51 = v99;
  v52 = v97;
  *(v50 + 40) = v99;
  *(v50 + 48) = v52;
  *(v50 + 56) = v43;
  v53 = v46;
  v54 = v96;
  v55 = v103.i64[0];
  (v103.i64[0])(v50 + v49, v53, v96);
  v56 = v86;
  v76 = v48;
  v48(v86, v47, v54);
  v57 = v102;
  v58 = swift_allocObject();
  *(v58 + 16) = v105;
  *(v58 + 24) = v109;
  *(v58 + 40) = v51;
  v59 = v97;
  v60 = v107;
  *(v58 + 48) = v97;
  *(v58 + 56) = v60;
  v61 = v56;
  v62 = v54;
  v55(v58 + v57, v61, v54);
  v63 = v79;
  sub_24F921D08();
  v64 = v101;
  v76(v101, v98, v62);
  v65 = swift_allocObject();
  *(v65 + 16) = v105;
  *(v65 + 24) = v109;
  *(v65 + 40) = v99;
  *(v65 + 48) = v59;
  *(v65 + 56) = v107;
  (v103.i64[0])(v65 + v57, v64, v62);
  v66 = v83;
  v67 = swift_getWitnessTable();
  v68 = v92;
  sub_24F92B818();
  v69 = v82;
  sub_24F9268E8();

  (*(v93 + 8))(v68, v94);
  (*(v88 + 8))(v63, v66);
  v110 = v67;
  v111 = v91;
  v70 = v87;
  v71 = swift_getWitnessTable();
  v72 = v85;
  sub_24E7896B8(v69, v70, v71);
  v73 = *(v89 + 8);
  v73(v69, v70);
  sub_24E7896B8(v72, v70, v71);
  return (v73)(v72, v70);
}
uint64_t sub_24E68A3A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v156 = a2;
  v161 = a3;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216BF8);
  MEMORY[0x28223BE20](v145);
  v126 = (&v121 - v4);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C00);
  v5 = MEMORY[0x28223BE20](v123);
  v124 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v125 = (&v121 - v7);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C08);
  MEMORY[0x28223BE20](v142);
  v144 = &v121 - v8;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C10);
  MEMORY[0x28223BE20](v143);
  v140 = (&v121 - v9);
  v134 = type metadata accessor for OfferButtonDesign(0);
  v10 = MEMORY[0x28223BE20](v134);
  v136 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v137 = &v121 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C18);
  MEMORY[0x28223BE20](v13 - 8);
  v135 = &v121 - v14;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C20);
  v15 = MEMORY[0x28223BE20](v132);
  v138 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v133 = &v121 - v18;
  MEMORY[0x28223BE20](v17);
  v139 = &v121 - v19;
  v131 = sub_24F925218();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v122 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v128);
  v129 = &v121 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v127 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v155 = &v121 - v26;
  MEMORY[0x28223BE20](v25);
  v141 = &v121 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216970);
  MEMORY[0x28223BE20](v28 - 8);
  v152 = &v121 - v29;
  v30 = type metadata accessor for GameLockup.TrailingButtonType(0);
  v153 = *(v30 - 8);
  v154 = v30;
  MEMORY[0x28223BE20](v30);
  v162 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C28);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v160 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v158 = &v121 - v35;
  v36 = type metadata accessor for GameLockupDetailsStackView();
  v37 = (v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v159 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = (&v121 - v40);
  v42 = type metadata accessor for GameLockup(0);
  v43 = v42[7];
  v44 = (a1 + v42[6]);
  v45 = v44[1];
  v157 = *v44;
  v46 = a1 + v43;
  v47 = *(a1 + v43);
  v150 = *(v46 + 8);
  v151 = v47;
  v48 = (a1 + v42[8]);
  v50 = *v48;
  v49 = v48[1];
  v149 = v50;
  v147 = v45;
  v148 = v49;
  sub_24E60169C(a1 + v42[10], v41 + v37[9], &qword_27F216968);
  v51 = *(a1 + v42[14]);
  v52 = (a1 + v42[21]);
  v54 = *v52;
  v53 = v52[1];
  v56 = v52[2];
  v55 = v52[3];
  v58 = v52[5];
  v146 = v52[4];
  v57 = v146;
  *v41 = v157;
  v41[1] = v45;
  v59 = v150;
  v41[2] = v151;
  v41[3] = v59;
  v60 = v148;
  v41[4] = v149;
  v41[5] = v60;
  v61 = v37[10];
  LODWORD(v151) = v51;
  *(v41 + v61) = v51;
  v62 = (v41 + v37[11]);
  *v62 = v54;
  v62[1] = v53;
  v63 = v53;
  v62[2] = v56;
  v62[3] = v55;
  v62[4] = v57;
  v62[5] = v58;
  v157 = v37[12];

  v64 = v152;
  sub_24E68FE2C(v54, v63);
  *(v41 + v157) = sub_24F9258D8();
  v65 = v37[13];
  v66 = sub_24F925A18();
  v157 = v41;
  *(v41 + v65) = v66;
  sub_24E60169C(a1 + v42[13], v64, &qword_27F216970);
  if ((*(v153 + 48))(v64, 1, v154) == 1)
  {
    sub_24E601704(v64, &qword_27F216970);
    sub_24E60169C(a1 + v42[16], v163, qword_27F24EC90);
    v67 = v164;
    sub_24E601704(v163, qword_27F21B590);
    if (v67)
    {
      v68 = sub_24F926DF8();
      v69 = sub_24F925898();
      KeyPath = swift_getKeyPath();
      v71 = sub_24F9251C8();
      v72 = v125;
      v73 = v125 + *(v123 + 36);
      v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
      v75 = *MEMORY[0x277CE13B8];
      v76 = sub_24F927748();
      (*(*(v76 - 8) + 104))(&v73[v74], v75, v76);
      *v73 = v71;
      *v72 = v68;
      v72[1] = KeyPath;
      v72[2] = v69;
      v77 = v124;
      sub_24E60169C(v72, v124, &qword_27F216C00);
      v78 = v126;
      *v126 = 0;
      *(v78 + 8) = 0;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C40);
      sub_24E60169C(v77, v78 + *(v79 + 48), &qword_27F216C00);
      sub_24E601704(v77, &qword_27F216C00);
      sub_24E60169C(v78, v144, &qword_27F216BF8);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F216C48, &qword_27F216C10);
      sub_24E602068(&qword_27F216C50, &qword_27F216BF8);
      v80 = v158;
      sub_24F924E28();
      sub_24E601704(v78, &qword_27F216BF8);
      sub_24E601704(v72, &qword_27F216C00);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C30);
      (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
    }

    else
    {
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C30);
      v80 = v158;
      (*(*(v98 - 8) + 56))(v158, 1, 1, v98);
    }

    goto LABEL_22;
  }

  sub_24E68FEC8(v64, v162, type metadata accessor for GameLockup.TrailingButtonType);
  type metadata accessor for GameLockupComponent(0);
  v82 = v141;
  sub_24F769764(v141);
  v83 = v130;
  v84 = v155;
  v85 = v131;
  (*(v130 + 104))(v155, *MEMORY[0x277CE0558], v131);
  (*(v83 + 56))(v84, 0, 1, v85);
  v86 = *(v128 + 48);
  v87 = v129;
  sub_24E60169C(v82, v129, &qword_27F215598);
  v88 = v86;
  sub_24E60169C(v84, v87 + v86, &qword_27F215598);
  v89 = *(v83 + 48);
  if (v89(v87, 1, v85) != 1)
  {
    v94 = v83;
    v95 = v155;
    v96 = v127;
    sub_24E60169C(v87, v127, &qword_27F215598);
    v97 = v89(v87 + v88, 1, v85);
    v80 = v158;
    v91 = v87;
    v92 = v135;
    if (v97 != 1)
    {
      v99 = v122;
      (*(v94 + 32))(v122, v91 + v88, v85);
      sub_24E685944(&qword_27F215650, MEMORY[0x277CE0570]);
      v100 = sub_24F92AFF8();
      v101 = *(v94 + 8);
      v101(v99, v85);
      sub_24E601704(v95, &qword_27F215598);
      sub_24E601704(v141, &qword_27F215598);
      v101(v127, v85);
      sub_24E601704(v91, &qword_27F215598);
      if (v100)
      {
        v93 = 0x4024000000000000;
      }

      else
      {
        v93 = 0x4030000000000000;
      }

      goto LABEL_14;
    }

    sub_24E601704(v95, &qword_27F215598);
    sub_24E601704(v141, &qword_27F215598);
    (*(v94 + 8))(v96, v85);
    goto LABEL_9;
  }

  sub_24E601704(v155, &qword_27F215598);
  sub_24E601704(v82, &qword_27F215598);
  v90 = v89(v87 + v88, 1, v85);
  v80 = v158;
  v91 = v87;
  v92 = v135;
  if (v90 != 1)
  {
LABEL_9:
    sub_24E601704(v91, &unk_27F254F20);
    v93 = 0x4030000000000000;
    goto LABEL_14;
  }

  sub_24E601704(v91, &qword_27F215598);
  v93 = 0x4024000000000000;
LABEL_14:
  sub_24E68B620(v156, v162, v92);
  v102 = swift_getKeyPath();
  if (v151)
  {
    if (qword_27F2107F8 != -1)
    {
      swift_once();
    }

    v103 = qword_27F39CCC0;
  }

  else
  {
    if (qword_27F2107F0 != -1)
    {
      swift_once();
    }

    v103 = qword_27F39CCA8;
  }

  v104 = __swift_project_value_buffer(v134, v103);
  v105 = v136;
  sub_24E68F818(v104, v136, type metadata accessor for OfferButtonDesign);
  v106 = v137;
  sub_24E68FEC8(v105, v137, type metadata accessor for OfferButtonDesign);
  v107 = v133;
  v108 = &v133[*(v132 + 36)];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C58);
  sub_24E68FEC8(v106, v108 + *(v109 + 28), type metadata accessor for OfferButtonDesign);
  *v108 = v102;
  sub_24E6009C8(v92, v107, &qword_27F216C18);
  v110 = v139;
  sub_24E6009C8(v107, v139, &qword_27F216C20);
  v111 = v138;
  sub_24E60169C(v110, v138, &qword_27F216C20);
  v112 = v140;
  *v140 = v93;
  *(v112 + 8) = 0;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C60);
  sub_24E60169C(v111, v112 + *(v113 + 48), &qword_27F216C20);
  sub_24E601704(v111, &qword_27F216C20);
  sub_24E60169C(v112, v144, &qword_27F216C10);
  swift_storeEnumTagMultiPayload();
  sub_24E602068(&qword_27F216C48, &qword_27F216C10);
  sub_24E602068(&qword_27F216C50, &qword_27F216BF8);
  sub_24F924E28();
  sub_24E601704(v112, &qword_27F216C10);
  sub_24E601704(v110, &qword_27F216C20);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C30);
  (*(*(v114 - 8) + 56))(v80, 0, 1, v114);
  sub_24E68F880(v162, type metadata accessor for GameLockup.TrailingButtonType);
LABEL_22:
  v115 = v157;
  v116 = v159;
  sub_24E68F818(v157, v159, type metadata accessor for GameLockupDetailsStackView);
  v117 = v160;
  sub_24E60169C(v80, v160, &qword_27F216C28);
  v118 = v161;
  sub_24E68F818(v116, v161, type metadata accessor for GameLockupDetailsStackView);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C38);
  sub_24E60169C(v117, v118 + *(v119 + 48), &qword_27F216C28);
  sub_24E601704(v80, &qword_27F216C28);
  sub_24E68F880(v115, type metadata accessor for GameLockupDetailsStackView);
  sub_24E601704(v117, &qword_27F216C28);
  return sub_24E68F880(v116, type metadata accessor for GameLockupDetailsStackView);
}

uint64_t sub_24E68B620@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v39 = a2;
  v45 = a3;
  v40 = type metadata accessor for GameLockupTrailingButton(0);
  MEMORY[0x28223BE20](v40);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C70);
  MEMORY[0x28223BE20](v42);
  v44 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C78);
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v37 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C80);
  MEMORY[0x28223BE20](v43);
  v12 = &v37 - v11;
  v13 = sub_24F924218();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  type metadata accessor for GameLockupComponent(0);
  v20 = a1;
  sub_24F7699D8(v19);
  sub_24F924208();
  sub_24E685944(&qword_27F216C88, MEMORY[0x277CDFB98]);
  LOBYTE(a1) = sub_24F92C678();
  v21 = *(v14 + 8);
  v21(v17, v13);
  v21(v19, v13);
  if (a1)
  {
    v22 = type metadata accessor for CapsuleButtonContent.Symbol(0);
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 4) = 0;
    v23 = *(*(v22 - 8) + 56);
    v24 = v38;
    v23(v38, 1, 1, v22);
    v23(v41, 1, 1, v22);
    v25 = swift_allocObject();
    v39 = xmmword_24F943570;
    *(v25 + 16) = xmmword_24F943570;
    *(v25 + 32) = 0;
    v26 = *(v37 + 80);
    v27 = (v26 + 16) & ~v26;
    v28 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v26 + 16 + v28) & ~v26;
    v30 = v29 + v8;
    v31 = swift_allocObject();
    sub_24E6009C8(v24, v31 + v27, &qword_27F216C78);
    *(v31 + v28) = xmmword_24F943580;
    sub_24E6009C8(v41, v31 + v29, &qword_27F216C78);
    *(v31 + v30) = 5;
    v32 = v31 + (v30 & 0xFFFFFFFFFFFFFFF8);
    *(v32 + 8) = v39;
    *(v32 + 24) = 0;
    v33 = *(v43 + 44);
    *&v12[v33] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
    swift_storeEnumTagMultiPayload();
    *(v12 + 5) = sub_24E68FFB4;
    *(v12 + 6) = v31;
    *(v12 + 7) = sub_24E68FFA8;
    *(v12 + 8) = v25;
    sub_24E60169C(v12, v44, &qword_27F216C80);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F216C90, &qword_27F216C80);
    sub_24E685944(&qword_27F216C98, type metadata accessor for GameLockupTrailingButton);
    sub_24F924E28();
    return sub_24E601704(v12, &qword_27F216C80);
  }

  else
  {
    v35 = *v20;
    v36 = v40;
    sub_24E68F818(v39, v5 + *(v40 + 20), type metadata accessor for GameLockup.TrailingButtonType);
    *v5 = v35;
    *(v5 + *(v36 + 24)) = 1;
    sub_24E68F818(v5, v44, type metadata accessor for GameLockupTrailingButton);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F216C90, &qword_27F216C80);
    sub_24E685944(&qword_27F216C98, type metadata accessor for GameLockupTrailingButton);

    sub_24F924E28();
    return sub_24E68F880(v5, type metadata accessor for GameLockupTrailingButton);
  }
}

uint64_t sub_24E68BD08(uint64_t a1)
{
  v2 = type metadata accessor for OfferButtonDesign(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_24E68F818(a1, &v9 - v6, type metadata accessor for OfferButtonDesign);
  sub_24E68F818(v7, v5, type metadata accessor for OfferButtonDesign);
  sub_24E68FF30();
  sub_24F924878();
  return sub_24E68F880(v7, type metadata accessor for OfferButtonDesign);
}

uint64_t sub_24E68BE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924248();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = *(a1 + *(type metadata accessor for GameLockup(0) + 76));
  v11 = sub_24F924258();
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  v12 = *(v11 + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_24F924B38();
  (*(*(v14 - 8) + 104))(&v9[v12], v13, v14);
  __asm { FMOV            V0.2D, #12.0 }

  *v9 = _Q0;
  *&v9[*(v4 + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v20 = sub_24F926D08();

  sub_24E68F818(v9, v7, MEMORY[0x277CDFBC8]);
  sub_24E685944(&qword_27F214338, MEMORY[0x277CDFBC8]);
  v21 = sub_24F927348();
  result = sub_24E68F880(v9, MEMORY[0x277CDFBC8]);
  *(a2 + 48) = v21;
  *(a2 + 56) = v20;
  *a2 = v10;
  return result;
}

uint64_t sub_24E68C010()
{
  v1 = MEMORY[0x28223BE20](v0);
  sub_24E68F818(v1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameLockupComponent);
  sub_24E685944(&qword_27F216AC0, type metadata accessor for GameLockupComponent);
  return sub_24F9218E8();
}

unint64_t sub_24E68C1B4()
{
  result = qword_27F216AD8;
  if (!qword_27F216AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AD8);
  }

  return result;
}

unint64_t sub_24E68C20C()
{
  result = qword_27F216AE0;
  if (!qword_27F216AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AE0);
  }

  return result;
}

unint64_t sub_24E68C264()
{
  result = qword_27F216AE8;
  if (!qword_27F216AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AE8);
  }

  return result;
}

unint64_t sub_24E68C2BC()
{
  result = qword_27F216AF0;
  if (!qword_27F216AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AF0);
  }

  return result;
}

unint64_t sub_24E68C314()
{
  result = qword_27F216AF8;
  if (!qword_27F216AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216AF8);
  }

  return result;
}

unint64_t sub_24E68C36C()
{
  result = qword_27F216B00;
  if (!qword_27F216B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216B00);
  }

  return result;
}

unint64_t sub_24E68C3C4()
{
  result = qword_27F216B08;
  if (!qword_27F216B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216B08);
  }

  return result;
}

unint64_t sub_24E68C41C()
{
  result = qword_27F216B10;
  if (!qword_27F216B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216B10);
  }

  return result;
}

uint64_t sub_24E68C470@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v81 = type metadata accessor for GameIconModel(0);
  v2 = MEMORY[0x28223BE20](v81);
  v80 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v71 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216CE0);
  MEMORY[0x28223BE20](v83);
  v84 = &v71 - v6;
  v7 = sub_24F9289E8();
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x28223BE20](v7);
  v79 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216CE8);
  MEMORY[0x28223BE20](v90);
  v85 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216960);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v71 - v11;
  v95 = type metadata accessor for TransitionalGameIcon(0);
  v93 = *(v95 - 8);
  v12 = MEMORY[0x28223BE20](v95);
  v82 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v71 - v14;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216CF0);
  MEMORY[0x28223BE20](v97);
  v16 = &v71 - v15;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216CF8);
  MEMORY[0x28223BE20](v89);
  v91 = &v71 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D00);
  MEMORY[0x28223BE20](v98);
  v86 = &v71 - v18;
  v92 = type metadata accessor for GameIcon(0);
  MEMORY[0x28223BE20](v92);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_24F91EAA8();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v22 - 8);
  v76 = &v71 - v23;
  v24 = sub_24F91F4A8();
  v78 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v72 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v77 = &v71 - v27;
  v28 = sub_24F924848();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v1;
  v100 = v1;
  if (*(v1 + 8) == 1)
  {
    v34 = v100;
    if ((v33 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v35 = v30;

    sub_24F92BDC8();
    v36 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v33, 0);
    (*(v29 + 8))(v32, v35);
    v34 = v100;
    if (v101 != 1)
    {
      goto LABEL_7;
    }
  }

  v37 = *(v34 + 24);
  if (v37)
  {
    v38 = *(v34 + 16);
    v39 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v40 = sub_24F3E5298(v38, v37, 1);
    if (v40)
    {
      v71 = v5;
      v59 = v20;

      v101 = v38;
      v102 = v37;
      v60 = v73;
      sub_24F91EA28();
      sub_24E600AEC();
      v61 = sub_24F92C578();
      v63 = v62;
      (*(v74 + 8))(v60, v75);
      if (v63)
      {
        v64 = v61;
        v65 = v92;
        v66 = v78;
      }

      else
      {

        v63 = v37;
        v65 = v92;
        v66 = v78;
        v64 = v38;
      }

      v101 = 0x3A6E6F6369707061;
      v102 = 0xEA00000000002F2FLL;
      MEMORY[0x253050C20](v64, v63);

      v67 = v76;
      sub_24F91F488();

      if ((*(v66 + 48))(v67, 1, v24) != 1)
      {
        v68 = v77;
        (*(v66 + 32))(v77, v67, v24);
        (*(v66 + 16))(v72, v68, v24);
        sub_24F928978();
        (*(v87 + 56))(v59, 0, 1, v88);
        v69 = v65[8];
        *(v59 + v69) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
        swift_storeEnumTagMultiPayload();
        *(v59 + v65[5]) = 1;
        *(v59 + v65[6]) = 1;
        *(v59 + v65[7]) = 0;
        sub_24E68F818(v59, v91, type metadata accessor for GameIcon);
        swift_storeEnumTagMultiPayload();
        sub_24E685944(&qword_27F216790, type metadata accessor for GameIcon);
        sub_24E690690();
        v70 = v86;
        sub_24F924E28();
        sub_24E60169C(v70, v16, &qword_27F216D00);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D08);
        sub_24E6905D4();
        sub_24E690744();
        sub_24F924E28();
        sub_24E601704(v70, &qword_27F216D00);
        sub_24E68F880(v59, type metadata accessor for GameIcon);
        return (*(v66 + 8))(v77, v24);
      }

      sub_24E601704(v67, &qword_27F228530);
      v20 = v59;
      v5 = v71;
      v34 = v100;
    }
  }

LABEL_7:
  v41 = type metadata accessor for GameLockupIconView(0);
  v42 = v94;
  sub_24E60169C(v34 + *(v41 + 24), v94, &qword_27F216960);
  if ((*(v93 + 48))(v42, 1, v95) == 1)
  {
    sub_24E601704(v42, &qword_27F216960);
    *v16 = 1;
    *(v16 + 1) = 0;
    *(v16 + 2) = 0;
    *(v16 + 6) = 1053609165;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D08);
    sub_24E6905D4();
    sub_24E690744();
    return sub_24F924E28();
  }

  else
  {
    v44 = v96;
    sub_24E68FEC8(v42, v96, type metadata accessor for TransitionalGameIcon);
    v45 = v44;
    v46 = v82;
    sub_24E68F818(v45, v82, type metadata accessor for TransitionalGameIcon);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24E68FEC8(v46, v5, type metadata accessor for GameIconModel);
      v47 = v80;
      sub_24E68F818(v5, v80, type metadata accessor for GameIconModel);
      v48 = v92;
      v49 = *(v92 + 32);
      *&v20[v49] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
      swift_storeEnumTagMultiPayload();
      v51 = v87;
      v50 = v88;
      (*(v87 + 16))(v20, v47, v88);
      (*(v51 + 56))(v20, 0, 1, v50);
      LOBYTE(v51) = *(v47 + *(v81 + 20));
      sub_24E68F880(v47, type metadata accessor for GameIconModel);
      v20[v48[5]] = (v51 & 1) == 0;
      v20[v48[6]] = 1;
      v20[v48[7]] = 0;
      sub_24E68F818(v20, v84, type metadata accessor for GameIcon);
      swift_storeEnumTagMultiPayload();
      sub_24E685944(&qword_27F216790, type metadata accessor for GameIcon);
      v52 = v85;
      sub_24F924E28();
      sub_24E68F880(v20, type metadata accessor for GameIcon);
      sub_24E68F880(v5, type metadata accessor for GameIconModel);
    }

    else
    {
      v54 = v87;
      v53 = v88;
      v55 = v79;
      (*(v87 + 32))(v79, v46, v88);
      (*(v54 + 16))(v20, v55, v53);
      (*(v54 + 56))(v20, 0, 1, v53);
      v56 = v92;
      v57 = *(v92 + 32);
      *&v20[v57] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
      swift_storeEnumTagMultiPayload();
      v20[v56[5]] = 1;
      v20[v56[6]] = 1;
      v20[v56[7]] = 0;
      sub_24E68F818(v20, v84, type metadata accessor for GameIcon);
      swift_storeEnumTagMultiPayload();
      sub_24E685944(&qword_27F216790, type metadata accessor for GameIcon);
      v52 = v85;
      sub_24F924E28();
      sub_24E68F880(v20, type metadata accessor for GameIcon);
      (*(v54 + 8))(v55, v53);
    }

    sub_24E60169C(v52, v91, &qword_27F216CE8);
    swift_storeEnumTagMultiPayload();
    sub_24E685944(&qword_27F216790, type metadata accessor for GameIcon);
    sub_24E690690();
    v58 = v86;
    sub_24F924E28();
    sub_24E60169C(v58, v16, &qword_27F216D00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D08);
    sub_24E6905D4();
    sub_24E690744();
    sub_24F924E28();
    sub_24E601704(v58, &qword_27F216D00);
    sub_24E601704(v52, &qword_27F216CE8);
    return sub_24E68F880(v96, type metadata accessor for TransitionalGameIcon);
  }
}

uint64_t sub_24E68D4E4@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C80);
  MEMORY[0x28223BE20](v130);
  v122 = (&v105 - v2);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D40);
  MEMORY[0x28223BE20](v128);
  v129 = &v105 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C78);
  v124 = *(v4 - 8);
  v5 = *(v124 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v132 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v126 = &v105 - v7;
  *&v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D48);
  MEMORY[0x28223BE20](v121);
  v106 = (&v105 - v8);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D50);
  MEMORY[0x28223BE20](v119);
  v120 = &v105 - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D58);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v105 - v10;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D60);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v110 = &v105 - v11;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v105 - v12;
  v118 = type metadata accessor for OfferButtonView(0);
  v13 = MEMORY[0x28223BE20](v118);
  v116 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v117 = &v105 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169D0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v105 - v17;
  v19 = type metadata accessor for OfferButtonInfo();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  *&v123 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D68);
  MEMORY[0x28223BE20](v127);
  v125 = &v105 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A70);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v105 - v24;
  v26 = type metadata accessor for GameLockup.TrailingButtonType(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for GameLockupTrailingButton(0);
  v30 = v1;
  sub_24E68F818(v1 + *(v29 + 20), v28, type metadata accessor for GameLockup.TrailingButtonType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *(v28 + 1);
    v125 = *v28;
    *&v123 = v31;
    v32 = *(v28 + 2);
    v135 = *(v28 + 1);
    v136 = v32;
    v137 = *(v28 + 6);
    v33 = v122;
    sub_24E615E00(&v135, v122);
    v34 = type metadata accessor for CapsuleButtonContent.Symbol(0);
    v35 = *(*(v34 - 8) + 56);
    v36 = v126;
    v35(v126, 1, 1, v34);
    v35(v132, 1, 1, v34);
    v37 = swift_allocObject();
    v121 = xmmword_24F943570;
    *(v37 + 16) = xmmword_24F943570;
    *(v37 + 32) = 0;
    v38 = *(v124 + 80);
    v39 = (v38 + 16) & ~v38;
    v40 = (v5 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v38 + 16 + v40) & ~v38;
    v42 = v41 + v5;
    v43 = swift_allocObject();
    sub_24E6009C8(v36, v43 + v39, &qword_27F216C78);
    v44 = (v43 + v40);
    v45 = v123;
    *v44 = v125;
    v44[1] = v45;
    sub_24E6009C8(v132, v43 + v41, &qword_27F216C78);
    *(v43 + v42) = 5;
    v46 = v43 + (v42 & 0xFFFFFFFFFFFFFFF8);
    *(v46 + 8) = v121;
    *(v46 + 24) = 0;
    v47 = *(v130 + 44);
    *(v33 + v47) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
    swift_storeEnumTagMultiPayload();
    v33[5] = sub_24E6910A8;
    v33[6] = v43;
    v33[7] = sub_24E6910A4;
    v33[8] = v37;
    sub_24E60169C(v33, v129, &qword_27F216C80);
    swift_storeEnumTagMultiPayload();
    sub_24E690858();
    sub_24E602068(&qword_27F216C90, &qword_27F216C80);
    sub_24F924E28();
    sub_24E601704(v33, &qword_27F216C80);
    v48 = &qword_27F2169E8;
    v49 = &v135;
  }

  else
  {
    sub_24E6009C8(v28, v25, &qword_27F216A70);
    sub_24E60169C(v25, v18, &qword_27F2169D0);
    v50 = v25;
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_24E601704(v18, &qword_27F2169D0);
      v51 = 1;
      v52 = v129;
      v53 = v125;
      if (*(v1 + *(v29 + 24)) == 1)
      {
        v54 = type metadata accessor for CapsuleButtonContent.Symbol(0);
        v55 = v106;
        *v106 = 0u;
        *(v55 + 16) = 0u;
        *(v55 + 32) = 0;
        v56 = *(*(v54 - 8) + 56);
        v122 = v50;
        v56(v126, 1, 1, v54);
        v56(v132, 1, 1, v54);
        v57 = swift_allocObject();
        v123 = xmmword_24F943570;
        *(v57 + 16) = xmmword_24F943570;
        *(v57 + 32) = 0;
        v58 = *(v124 + 80);
        v59 = (v58 + 16) & ~v58;
        v60 = (v5 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
        v61 = (v58 + 16 + v60) & ~v58;
        v62 = v61 + v5;
        v63 = swift_allocObject();
        sub_24E6009C8(v126, v63 + v59, &qword_27F216C78);
        *(v63 + v60) = xmmword_24F943580;
        v64 = v63 + v61;
        v52 = v129;
        v65 = v130;
        sub_24E6009C8(v132, v64, &qword_27F216C78);
        *(v63 + v62) = 5;
        v66 = v63 + (v62 & 0xFFFFFFFFFFFFFFF8);
        v53 = v125;
        *(v66 + 8) = v123;
        *(v66 + 24) = 0;
        v67 = *(v65 + 44);
        *(v55 + v67) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
        swift_storeEnumTagMultiPayload();
        *(v55 + 40) = sub_24E6910A8;
        *(v55 + 48) = v63;
        *(v55 + 56) = sub_24E6910A4;
        *(v55 + 64) = v57;
        KeyPath = swift_getKeyPath();
        v69 = swift_allocObject();
        *(v69 + 16) = 1;
        v70 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DA0) + 36));
        *v70 = KeyPath;
        v70[1] = sub_24E600A48;
        v70[2] = v69;
        *(v55 + *(v121 + 36)) = 0;
        sub_24E60169C(v55, v120, &qword_27F216D48);
        swift_storeEnumTagMultiPayload();
        sub_24E685944(&qword_27F216D88, type metadata accessor for OfferButtonView);
        sub_24E690998();
        v50 = v122;
        sub_24F924E28();
        sub_24E601704(v55, &qword_27F216D48);
        v51 = 0;
      }
    }

    else
    {
      v122 = v25;
      v71 = v123;
      sub_24E68FEC8(v18, v123, type metadata accessor for OfferButtonInfo);
      v72 = *v71;
      v73 = v71[1];
      v74 = *v30;
      type metadata accessor for OfferButtonViewModel();
      v75 = swift_allocObject();
      v76 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__disabled;
      LOBYTE(v135) = 0;
      v77 = v107;
      sub_24F923058();
      (*(v108 + 32))(v75 + v76, v77, v109);
      v78 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
      *&v135 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DA8);
      v79 = v110;
      sub_24F923058();
      v80 = v114;
      v81 = v79;
      v82 = v115;
      (*(v114 + 32))(v75 + v78, v81, v115);
      v83 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__theme;
      v135 = xmmword_24F943570;
      *&v136 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB0);
      v84 = v111;
      sub_24F923058();
      (*(v112 + 32))(v75 + v83, v84, v113);
      v85 = v75 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
      *v85 = 0u;
      *(v85 + 16) = 0u;
      *(v85 + 32) = 0;
      v86 = (v75 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
      *v86 = 0xD000000000000015;
      v86[1] = 0x800000024FA3FE10;
      v87 = (v75 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
      *v87 = 0;
      v87[1] = 0;
      *(v75 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) = 5;
      v88 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph;
      *(v75 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph) = v74;
      v89 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
      swift_beginAccess();
      v90 = *(v80 + 8);

      v90(v75 + v89, v82);
      v141 = v73;
      sub_24F923058();
      swift_endAccess();
      swift_beginAccess();
      v135 = xmmword_24F943590;
      v136 = 0uLL;
      v137 = 4;
      v139 = 0;
      v138 = 0;
      v140 = 0;
      sub_24F923058();
      swift_endAccess();
      *(v75 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties) = v72;
      type metadata accessor for ArcadeSubscriptionManager();
      sub_24F928FD8();

      sub_24F92A758();

      v91 = v135;
      if (OfferDisplayProperties.isArcadeOffer.getter())
      {
        v92 = swift_allocObject();
        swift_weakInit();
        v93 = swift_allocObject();
        swift_weakInit();
        v94 = swift_allocObject();
        *(v94 + 16) = v93;
        *(v94 + 24) = v92;
        *(v94 + 32) = v72;
        *(v94 + 40) = v73;
        *(v94 + 48) = 0;
        *(v94 + 60) = 0;
        *(v94 + 56) = 3;
        *(v94 + 62) = 16843009;
        *(v94 + 66) = 257;
        v95 = *&v91[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];

        [v95 lock];
        sub_24F213714(v75, sub_24E690EC8, v94, v91);
        [v95 unlock];
      }

      v96 = &v91[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
      swift_beginAccess();
      LOBYTE(v96) = (v96[8] & 0xC0) == 128;
      WORD2(v141) = 0;
      LODWORD(v141) = 3;
      v134 = 257;
      v133 = 16843009;
      v97 = *(v75 + v88);

      sub_24EEFB79C(v96, v72, v73, 0, &v141, &v133, v97);

      v98 = v118;
      v141 = 0x4052000000000000;
      sub_24E62C088();
      v99 = v116;
      sub_24F9237C8();
      v100 = *(v98 + 24);
      *(v99 + v100) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v101 = *(v98 + 28);
      *(v99 + v101) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
      swift_storeEnumTagMultiPayload();
      *v99 = sub_24E690E30;
      *(v99 + 8) = v75;
      *(v99 + 16) = 0;
      v102 = v117;
      sub_24E68FEC8(v99, v117, type metadata accessor for OfferButtonView);
      sub_24E68F818(v102, v120, type metadata accessor for OfferButtonView);
      swift_storeEnumTagMultiPayload();
      sub_24E685944(&qword_27F216D88, type metadata accessor for OfferButtonView);
      sub_24E690998();
      v53 = v125;
      sub_24F924E28();
      sub_24E68F880(v102, type metadata accessor for OfferButtonView);
      sub_24E68F880(v123, type metadata accessor for OfferButtonInfo);
      v51 = 0;
      v52 = v129;
      v50 = v122;
    }

    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D80);
    (*(*(v103 - 8) + 56))(v53, v51, 1, v103);
    sub_24E60169C(v53, v52, &qword_27F216D68);
    swift_storeEnumTagMultiPayload();
    sub_24E690858();
    sub_24E602068(&qword_27F216C90, &qword_27F216C80);
    sub_24F924E28();
    sub_24E601704(v53, &qword_27F216D68);
    v48 = &qword_27F216A70;
    v49 = v50;
  }

  return sub_24E601704(v49, v48);
}

double sub_24E68E90C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216970);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v69 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216960);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v69 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169D0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - v21;
  v23 = a1[30];
  v76 = v16;
  if (v23 && (v24 = a1[29]) != 0)
  {
    v25 = &v69 - v21;
    v26 = type metadata accessor for OfferButtonInfo();
    v27 = *(v26 + 24);
    v28 = sub_24F91F4A8();
    v29 = v19 + v27;
    v16 = v76;
    (*(*(v28 - 8) + 56))(v29, 1, 1, v28);
    *v19 = v23;
    v19[1] = v24;
    v30 = *(*(v26 - 8) + 56);
    v31 = v26;
    v22 = v25;
    v30(v19, 0, 1, v31);
  }

  else
  {
    v32 = type metadata accessor for OfferButtonInfo();
    (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
  }

  v33 = v22;
  sub_24E6009C8(v19, v22, &qword_27F2169D0);
  v34 = a1[3];
  *&v79 = a1[2];
  *(&v79 + 1) = v34;
  sub_24E69103C();

  sub_24F92C7F8();
  v35 = a1[6];
  if (v35)
  {
    *&v79 = sub_24E609AB0(MEMORY[0x277D84F90]);
    v36 = *(v35 + 48);
    if (v36)
    {
      v37 = *MEMORY[0x277CEE210];
      v38 = v36;
      sub_24E988884([v38 CGColor], v37);
    }

    sub_24F928948();
    v41 = sub_24F9289E8();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v13, 0, 1, v41);
    (*(v42 + 32))(v16, v13, v41);
  }

  else
  {
    v39 = sub_24F9289E8();
    v40 = *(v39 - 8);
    (*(v40 + 56))(v13, 1, 1, v39);
    sub_24F9289D8();
    if ((*(v40 + 48))(v13, 1, v39) != 1)
    {
      sub_24E601704(v13, &qword_27F213FB0);
    }
  }

  v43 = type metadata accessor for TransitionalGameIcon(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v43 - 8) + 56))(v16, 0, 1, v43);
  if (a1[13])
  {
    v44 = a1[12];
    v73 = a1[13];
    v74 = v44;
  }

  else
  {
    v73 = 0xE000000000000000;
    v74 = 0;
  }

  v45 = a1[11];
  v69 = a1[10];
  v46 = a1[15];
  v72 = a1[14];
  v47 = type metadata accessor for DescriptionLabelConfig(0);
  v48 = *(*(v47 - 8) + 56);
  v75 = v10;
  v48(v10, 1, 1, v47);
  v49 = a1[5];
  v70 = a1[4];
  v50 = a1[3];
  v71 = a1[2];
  v51 = v77;
  sub_24E60169C(v33, v77, &qword_27F2169D0);
  v52 = type metadata accessor for GameLockup.TrailingButtonType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  v53 = sub_24F929608();
  (*(*(v53 - 8) + 56))(v78, 1, 1, v53);
  v54 = a1[33];
  if (v54)
  {
    *(&v80 + 1) = type metadata accessor for Action();
    v81 = sub_24E685944(&qword_27F216DE8, type metadata accessor for Action);

    *&v79 = v54;
    sub_24E601704(v33, &qword_27F2169D0);
  }

  else
  {

    sub_24E601704(v33, &qword_27F2169D0);
    v79 = 0u;
    v80 = 0u;
    v81 = 0;
  }

  v55 = type metadata accessor for GameLockup(0);
  v56 = v55[17];
  v57 = sub_24F92A6D8();
  (*(*(v57 - 8) + 56))(a2 + v56, 1, 1, v57);
  v58 = v83;
  *a2 = v82;
  *(a2 + 16) = v58;
  *(a2 + 32) = v84;
  sub_24E6009C8(v76, a2 + v55[5], &qword_27F216960);
  v59 = (a2 + v55[6]);
  *v59 = v69;
  v59[1] = v45;
  v60 = (a2 + v55[7]);
  v61 = v73;
  *v60 = v74;
  v60[1] = v61;
  v62 = (a2 + v55[8]);
  *v62 = v72;
  v62[1] = v46;
  v63 = (a2 + v55[9]);
  *v63 = 0;
  v63[1] = 0;
  sub_24E6009C8(v75, a2 + v55[10], &qword_27F216968);
  v64 = (a2 + v55[11]);
  *v64 = v70;
  v64[1] = v49;
  v65 = (a2 + v55[12]);
  *v65 = v71;
  v65[1] = v50;
  sub_24E6009C8(v77, a2 + v55[13], &qword_27F216970);
  *(a2 + v55[14]) = 0;
  sub_24E6009C8(v78, a2 + v55[15], &qword_27F213E68);
  v66 = a2 + v55[16];
  *(v66 + 32) = 0;
  *v66 = 0u;
  *(v66 + 16) = 0u;
  sub_24E61DA68(&v79, v66, qword_27F21B590);
  *(a2 + v55[18]) = 0;
  *(a2 + v55[19]) = 0;
  *(a2 + v55[20]) = 1;
  v67 = (a2 + v55[21]);
  result = 0.0;
  v67[1] = 0u;
  v67[2] = 0u;
  *v67 = 0u;
  return result;
}

uint64_t sub_24E68F29C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6964616568 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54676E696461656CLL && a2 == 0xEB00000000747865 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA45940 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024FA45960 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA45980 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA459A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA459C0 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_24E68F818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E68F880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E68F8E0()
{
  result = qword_27F216B30;
  if (!qword_27F216B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216B28);
    sub_24E68F99C();
    sub_24E685944(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216B30);
  }

  return result;
}

unint64_t sub_24E68F99C()
{
  result = qword_27F216B38;
  if (!qword_27F216B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216B18);
    sub_24E68FA28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216B38);
  }

  return result;
}

unint64_t sub_24E68FA28()
{
  result = qword_27F216B40;
  if (!qword_27F216B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216B48);
    sub_24E68FAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216B40);
  }

  return result;
}

unint64_t sub_24E68FAB4()
{
  result = qword_27F216B50;
  if (!qword_27F216B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216B58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216B60);
    sub_24E68FBA8();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216B50);
  }

  return result;
}

unint64_t sub_24E68FBA8()
{
  result = qword_27F216B68;
  if (!qword_27F216B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216B60);
    sub_24E602068(&qword_27F216B70, &qword_27F216B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216B68);
  }

  return result;
}

unint64_t sub_24E68FC90()
{
  result = qword_27F216BD0;
  if (!qword_27F216BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216BA8);
    sub_24E68FD1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216BD0);
  }

  return result;
}

unint64_t sub_24E68FD1C()
{
  result = qword_27F216BD8;
  if (!qword_27F216BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216BC8);
    sub_24E685944(&qword_27F216BE0, type metadata accessor for GameLockupIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216BD8);
  }

  return result;
}

unint64_t sub_24E68FDD8()
{
  result = qword_27F216BE8;
  if (!qword_27F216BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216BE8);
  }

  return result;
}

uint64_t sub_24E68FE2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24E68FEC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E68FF30()
{
  result = qword_27F216C68;
  if (!qword_27F216C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216C68);
  }

  return result;
}

uint64_t sub_24E68FFD4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GameLockup.TrailingButtonType(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24E690094(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GameLockup.TrailingButtonType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E690138()
{
  result = sub_24F928FD8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GameLockup.TrailingButtonType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E6901D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216960);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24E6902B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216960);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E690364()
{
  sub_24E690478(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E690478(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E68598C(319, &qword_27F216988, type metadata accessor for TransitionalGameIcon, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E690478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24E690510()
{
  result = qword_27F216CD0;
  if (!qword_27F216CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216CD8);
    sub_24E68F8E0();
    sub_24E68F99C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216CD0);
  }

  return result;
}

unint64_t sub_24E6905D4()
{
  result = qword_27F216D10;
  if (!qword_27F216D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216D00);
    sub_24E685944(&qword_27F216790, type metadata accessor for GameIcon);
    sub_24E690690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216D10);
  }

  return result;
}

unint64_t sub_24E690690()
{
  result = qword_27F216D18;
  if (!qword_27F216D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216CE8);
    sub_24E685944(&qword_27F216790, type metadata accessor for GameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216D18);
  }

  return result;
}

unint64_t sub_24E690744()
{
  result = qword_27F216D20;
  if (!qword_27F216D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216D08);
    sub_24E6907FC();
    sub_24E602068(&qword_27F216D30, &qword_27F216D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216D20);
  }

  return result;
}

unint64_t sub_24E6907FC()
{
  result = qword_27F216D28;
  if (!qword_27F216D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216D28);
  }

  return result;
}

unint64_t sub_24E690858()
{
  result = qword_27F216D70;
  if (!qword_27F216D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216D68);
    sub_24E6908DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216D70);
  }

  return result;
}

unint64_t sub_24E6908DC()
{
  result = qword_27F216D78;
  if (!qword_27F216D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216D80);
    sub_24E685944(&qword_27F216D88, type metadata accessor for OfferButtonView);
    sub_24E690998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216D78);
  }

  return result;
}

unint64_t sub_24E690998()
{
  result = qword_27F216D90;
  if (!qword_27F216D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216D48);
    sub_24E690A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216D90);
  }

  return result;
}

unint64_t sub_24E690A24()
{
  result = qword_27F216D98;
  if (!qword_27F216D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216DA0);
    sub_24E602068(&qword_27F216C90, &qword_27F216C80);
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216D98);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 24);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_59Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C78) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v2 + 16 + ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v2;
  v6 = v5 + v3;
  v7 = v0 + v4;
  v8 = type metadata accessor for CapsuleButtonContent.Symbol(0);
  v9 = *(*(v8 - 8) + 48);
  if (!v9(v7, 1, v8))
  {

    v10 = *(v8 + 20);
    v11 = sub_24F923D48();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  v12 = v6 & 0xFFFFFFFFFFFFFFF8;

  if (!v9(v0 + v5, 1, v8))
  {

    v13 = *(v8 + 20);
    v14 = sub_24F923D48();
    (*(*(v14 - 8) + 8))(v0 + v5 + v13, v14);
  }

  v15 = *(v0 + v12 + 16);
  if (v15 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E690D40()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C78) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + 16 + v5) & ~v2;
  v7 = v6 + v3;
  v8 = (v0 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = (v0 + (v7 & 0xFFFFFFFFFFFFFFF8));
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[3];
  v15 = *(v0 + v7);

  return sub_24E96BA94(v0 + v4, v9, v10, v0 + v6, v15, v12, v13, v14);
}

uint64_t sub_24E690E38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E690E70()
{

  return swift_deallocObject();
}

unint64_t sub_24E690EF4()
{
  result = qword_27F216DC0;
  if (!qword_27F216DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216DC8);
    sub_24E6905D4();
    sub_24E690744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216DC0);
  }

  return result;
}

unint64_t sub_24E690F84()
{
  result = qword_27F216DD0;
  if (!qword_27F216DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216DD8);
    sub_24E690858();
    sub_24E602068(&qword_27F216C90, &qword_27F216C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216DD0);
  }

  return result;
}

unint64_t sub_24E69103C()
{
  result = qword_27F216DE0;
  if (!qword_27F216DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216DE0);
  }

  return result;
}

uint64_t type metadata accessor for GameDescriptorDataIntent()
{
  result = qword_27F216E08;
  if (!qword_27F216E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E691194()
{
  if (*v0)
  {
    return 0x726579616C70;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24E6911C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E69129C(uint64_t a1)
{
  v2 = sub_24E691514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6912D8(uint64_t a1)
{
  v2 = sub_24E691514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameDescriptorDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E691514();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Game();
  sub_24E69192C(&qword_27F214950, type metadata accessor for Game);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for GameDescriptorDataIntent();
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E69192C(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E691514()
{
  result = qword_27F216DF8;
  if (!qword_27F216DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216DF8);
  }

  return result;
}

uint64_t GameDescriptorDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v22);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216E00);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v17 - v7;
  v9 = type metadata accessor for GameDescriptorDataIntent();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E691514();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v12 = v21;
  v13 = v11;
  v26 = 0;
  sub_24E69192C(&qword_27F214968, type metadata accessor for Game);
  v14 = v23;
  v15 = v24;
  sub_24F92CC68();
  sub_24E691974(v14, v13, type metadata accessor for Game);
  v25 = 1;
  sub_24E69192C(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  (*(v12 + 8))(v8, v15);
  sub_24E691974(v5, v13 + *(v9 + 20), type metadata accessor for Player);
  sub_24E6919DC(v13, v19, type metadata accessor for GameDescriptorDataIntent);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_24E691A44(v13, type metadata accessor for GameDescriptorDataIntent);
}

uint64_t sub_24E69192C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E691974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6919DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E691A44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E691B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Game();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Player(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24E691C0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Game();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Player(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24E691D08()
{
  result = type metadata accessor for Game();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24E691DA0()
{
  result = qword_27F216E18;
  if (!qword_27F216E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216E18);
  }

  return result;
}

unint64_t sub_24E691DF8()
{
  result = qword_27F216E20;
  if (!qword_27F216E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216E20);
  }

  return result;
}

unint64_t sub_24E691E50()
{
  result = qword_27F216E28;
  if (!qword_27F216E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216E28);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_24E691EB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_24E691F00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E691F50(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216E40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6924A0();
  sub_24F92D128();
  v15 = 0;
  sub_24F92CD08();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v14 = 1;
  sub_24F92CD18();
  v13 = 2;
  sub_24F92CCB8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24E692104()
{
  v1 = 0x7266655270696B73;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E656C6C616863;
  }
}

uint64_t sub_24E692174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E69260C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E69219C(uint64_t a1)
{
  v2 = sub_24E6924A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6921D8(uint64_t a1)
{
  v2 = sub_24E6924A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E692234@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24E692298(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = HIBYTE(v6);
  }

  return result;
}

uint64_t sub_24E692298(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216E30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6924A0();
  sub_24F92D108();
  if (!v1)
  {
    v12 = 0;
    v7 = sub_24F92CC28();
    v11 = 1;
    sub_24F92CC38();
    v10 = 2;
    sub_24F92CBD8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24E6924A0()
{
  result = qword_27F216E38;
  if (!qword_27F216E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216E38);
  }

  return result;
}

unint64_t sub_24E692508()
{
  result = qword_27F216E48;
  if (!qword_27F216E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216E48);
  }

  return result;
}

unint64_t sub_24E692560()
{
  result = qword_27F216E50;
  if (!qword_27F216E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216E50);
  }

  return result;
}

unint64_t sub_24E6925B8()
{
  result = qword_27F216E58;
  if (!qword_27F216E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216E58);
  }

  return result;
}

uint64_t sub_24E69260C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7266655270696B73 && a2 == 0xEB00000000687365 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA459E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E692734()
{
  if (*v0)
  {
    return 0x6C61636974726576;
  }

  else
  {
    return 0x746E6F7A69726F68;
  }
}

uint64_t sub_24E692774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E692858(uint64_t a1)
{
  v2 = sub_24E692A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E692894(uint64_t a1)
{
  v2 = sub_24E692A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AspectRatio.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216E60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E692A98();
  sub_24F92D108();
  if (!v1)
  {
    HIBYTE(v8) = 0;
    sub_24E620E90();
    sub_24F92CC68();
    HIBYTE(v8) = 1;
    sub_24F92CC68();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    (*(v4 + 8))(v6, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E692A98()
{
  result = qword_27F216E68;
  if (!qword_27F216E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216E68);
  }

  return result;
}

uint64_t AspectRatio.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216E70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E692A98();
  sub_24F92D128();
  sub_24F9222C8();
  v11 = v7;
  HIBYTE(v10) = 0;
  sub_24E620F7C();
  sub_24F92CD48();
  if (!v1)
  {
    sub_24F922338();
    v11 = v8;
    HIBYTE(v10) = 1;
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t AspectRatio.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x746E6F7A69726F68;
  *(inited + 40) = 0xEA00000000006C61;
  sub_24F9222C8();
  *(inited + 48) = v3;
  *(inited + 56) = 0x6C61636974726576;
  *(inited + 64) = 0xE800000000000000;
  sub_24F922338();
  *(inited + 72) = v4;
  v5 = sub_24E609AD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216E80);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216E88);
  result = sub_24E692EE0();
  a1[4] = result;
  *a1 = v5;
  return result;
}

unint64_t sub_24E692DCC@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x746E6F7A69726F68;
  *(inited + 40) = 0xEA00000000006C61;
  sub_24F9222C8();
  *(inited + 48) = v3;
  *(inited + 56) = 0x6C61636974726576;
  *(inited + 64) = 0xE800000000000000;
  sub_24F922338();
  *(inited + 72) = v4;
  v5 = sub_24E609AD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216E80);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216E88);
  result = sub_24E692EE0();
  a1[4] = result;
  *a1 = v5;
  return result;
}

unint64_t sub_24E692EE0()
{
  result = qword_27F216E90;
  if (!qword_27F216E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216E88);
    sub_24E692F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216E90);
  }

  return result;
}

unint64_t sub_24E692F64()
{
  result = qword_27F216E98;
  if (!qword_27F216E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216E98);
  }

  return result;
}

unint64_t sub_24E692FCC()
{
  result = qword_27F216EA0;
  if (!qword_27F216EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216EA0);
  }

  return result;
}

unint64_t sub_24E693024()
{
  result = qword_27F216EA8;
  if (!qword_27F216EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216EA8);
  }

  return result;
}

unint64_t sub_24E69307C()
{
  result = qword_27F216EB0[0];
  if (!qword_27F216EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F216EB0);
  }

  return result;
}

uint64_t RemoveFriendActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for RemoveFriendAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24E693FCC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a3 + 16);
  sub_24E69412C(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F944760;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24E693314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  sub_24F9289E8();
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40);
  v4[16] = swift_task_alloc();
  sub_24F928AD8();
  v4[17] = swift_task_alloc();
  v5 = sub_24F92A638();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  v4[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50);
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E69350C, 0, 0);
}

uint64_t sub_24E69350C()
{
  v1 = *(v0 + 96);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_24E6935AC;

  return sub_24E696028(v3, v2);
}

uint64_t sub_24E6935AC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24E693860, 0, 0);
  }

  else
  {
    updated = type metadata accessor for TaskUpdateHolder();
    v5 = swift_task_alloc();
    *(v2 + 216) = v5;
    *v5 = v3;
    v5[1] = sub_24E693748;

    return MEMORY[0x28217F228](v2 + 80, updated, updated);
  }
}

uint64_t sub_24E693748()
{

  if (v0)
  {

    v1 = sub_24E693860;
  }

  else
  {
    v1 = sub_24E693B4C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24E693860()
{
  v1 = v0[16];
  sub_24F928A98();
  v2 = sub_24F92A628();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  if (qword_27F211568 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v3 = qword_27F211580;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];

  sub_24F92A5D8();
  sub_24F92A5F8();
  sub_24F9289D8();
  sub_24F92A5E8();
  v7 = MEMORY[0x277D223B8];
  v0[5] = v6;
  v0[6] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v4 + 16))(boxed_opaque_existential_1, v5, v6);
  v9 = swift_task_alloc();
  v0[28] = v9;
  v10 = type metadata accessor for RemoveFriendActionImplementation();
  WitnessTable = swift_getWitnessTable();
  *v9 = v0;
  v9[1] = sub_24E693D20;
  v12 = v0[13];
  v13 = v0[11];

  return sub_24F1487B0(v13, (v0 + 2), v12, v10, WitnessTable);
}

uint64_t sub_24E693B4C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[10];
  v4 = OBJC_IVAR____TtC12GameStoreKit16TaskUpdateHolder_taskUpdate;
  swift_beginAccess();
  if ((*(v2 + 48))(v3 + v4, 1, v1))
  {
  }

  else
  {
    v5 = v0[25];
    v6 = v0[23];
    sub_24E60169C(v3 + v4, v5, &qword_27F216F50);
    MEMORY[0x25304CAF0](v6);
    sub_24F9217B8();
    sub_24F927178();

    sub_24E601704(v5, &qword_27F216F50);
  }

  v7 = v0[11];
  v8 = *MEMORY[0x277D21CA8];
  v9 = sub_24F928AE8();
  (*(*(v9 - 8) + 104))(v7, v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24E693D20()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_24E693F00;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = sub_24E693E3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24E693E3C()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E693F00()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E693FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFriendAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E694030()
{
  v1 = (type metadata accessor for RemoveFriendAction() - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24E69412C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFriendAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E694190(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for RemoveFriendAction() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24E693314(a1, v1 + v6, v7, v4);
}

uint64_t sub_24E6942AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForLocalPlayer];
  v9 = [v8 friendServicePrivate];

  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_24E69640C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9FABA0;
  aBlock[3] = &block_descriptor_3;
  v12 = _Block_copy(aBlock);

  [v9 removeFriendWithPlayer:a2 handler:v12];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_24E6944A8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
    return sub_24F92B788();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
    return sub_24F92B798();
  }
}

uint64_t sub_24E694534(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_24F928AE8();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_24E694694;

  return v12(v9);
}

uint64_t sub_24E694694()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24E694838;
  }

  else
  {
    v2 = sub_24E6947A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6947A8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_24F92A9C8();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E694838()
{
  v1 = *(v0 + 56);
  sub_24F92A9A8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E6948B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E6948F8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_24E6949EC;

  return v9(v6 + 16);
}

uint64_t sub_24E6949EC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24E6964A4;
  }

  else
  {
    v2 = sub_24E694B00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E694B00()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E694B6C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 64) = v7;
  *v7 = v6;
  v7[1] = sub_24E694C60;

  return v9(v6 + 16);
}

uint64_t sub_24E694C60()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24E694DE0;
  }

  else
  {
    v2 = sub_24E694D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E694D74()
{
  sub_24F92A9C8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E694DE0()
{
  v1 = *(v0 + 72);
  sub_24F92A9A8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E694E50(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 40) = v7;
  *v7 = v6;
  v7[1] = sub_24E694F44;

  return v9(v6 + 16);
}

uint64_t sub_24E694F44()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24E6950C4;
  }

  else
  {
    v2 = sub_24E695058;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E695058()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E6950C4()
{
  v1 = *(v0 + 48);
  sub_24F92A9A8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E695134(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_24E695228;

  return v9(v6 + 16);
}

uint64_t sub_24E695228()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24E6964A4;
  }

  else
  {
    v2 = sub_24E69533C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E69533C()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E6953A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F38);
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_24E6954E4;

  return v11(v8);
}

uint64_t sub_24E6954E4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24E69567C;
  }

  else
  {
    v2 = sub_24E6955F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6955F8()
{
  v1 = *(v0 + 24);
  sub_24F92A9C8();
  sub_24E601704(v1, &qword_27F216F38);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E69567C()
{
  v1 = *(v0 + 40);
  sub_24F92A9A8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E6956F4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_24E6957E8;

  return v9(v6 + 16);
}

uint64_t sub_24E6957E8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24E695968;
  }

  else
  {
    v2 = sub_24E6958FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6958FC()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E695968()
{
  v1 = *(v0 + 40);
  sub_24F92A9A8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E6959D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_24E60169C(a3, v23 - v10, &unk_27F21B570);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &unk_27F21B570);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24F92B848();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_24F92B778();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_24F92B1B8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_24E601704(a3, &unk_27F21B570);

    return v21;
  }

LABEL_8:
  sub_24E601704(a3, &unk_27F21B570);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_24E695CD8()
{
  result = qword_27F216340;
  if (!qword_27F216340)
  {
    type metadata accessor for RemoveFriendAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216340);
  }

  return result;
}

uint64_t sub_24E695D48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24E695E40;

  return v6(a1);
}

uint64_t sub_24E695E40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24E695F38()
{

  return swift_deallocObject();
}

uint64_t sub_24E695F70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24E695D48(a1, v4);
}

uint64_t sub_24E696028(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24E696048, 0, 0);
}

uint64_t sub_24E696048()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D0C1C8]) init];
  v0[4] = v1;
  v2 = sub_24F92B098();
  [v1 setPlayerID_];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_24E696184;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000017, 0x800000024FA45A00, sub_24E696370, v3, v5);
}

uint64_t sub_24E696184()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24E696304;
  }

  else
  {

    v2 = sub_24E6962A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6962A0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E696304()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E696378()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E69640C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);

  return sub_24E6944A8(a1);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for FriendRequestsDataIntent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_24E696588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6946737361707962 && a2 == 0xED0000737265746CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E696618(uint64_t a1)
{
  v2 = sub_24E696948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E696654(uint64_t a1)
{
  v2 = sub_24E696948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6966B0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E696948();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_24F92CBD8();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_24E696810(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E696948();
  sub_24F92D128();
  sub_24F92CCB8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E696948()
{
  result = qword_27F216F60;
  if (!qword_27F216F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216F60);
  }

  return result;
}

unint64_t sub_24E6969B0()
{
  result = qword_27F216F70;
  if (!qword_27F216F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216F70);
  }

  return result;
}

unint64_t sub_24E696A08()
{
  result = qword_27F216F78;
  if (!qword_27F216F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216F78);
  }

  return result;
}

unint64_t sub_24E696A60()
{
  result = qword_27F216F80;
  if (!qword_27F216F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216F80);
  }

  return result;
}

uint64_t ChallengesFriendComparisonHeaderShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for ChallengesFriendComparisonHeaderShelfIntent()
{
  result = qword_27F216FA0;
  if (!qword_27F216FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t ChallengesFriendComparisonHeaderShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x616C506C61636F6CLL;
  *(inited + 96) = 0xEB00000000726579;
  v6 = type metadata accessor for ChallengesFriendComparisonHeaderShelfIntent();
  v7 = v6[5];
  v8 = type metadata accessor for Player(0);
  *(inited + 128) = v8;
  v9 = sub_24E61C064(&qword_27F215388);
  *(inited + 136) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E697848(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x6F54646E65697266;
  *(inited + 152) = 0xEF657261706D6F43;
  v11 = v6[6];
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  v12 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E697848(v1 + v11, v12, type metadata accessor for Player);
  strcpy((inited + 200), "completedCount");
  *(inited + 215) = -18;
  v13 = *(v1 + v6[7]);
  *(inited + 240) = MEMORY[0x277D83B88];
  v14 = sub_24E65901C();
  *(inited + 216) = v13;
  *(inited + 248) = v14;
  *(inited + 256) = 0x6E756F43656D6167;
  *(inited + 264) = 0xE900000000000074;
  v15 = v1 + v6[8];
  v16 = *v15;
  LOBYTE(v11) = v15[8];
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
  v17 = sub_24E658F98();
  *(inited + 272) = v16;
  *(inited + 280) = v11;
  *(inited + 304) = v17;
  *(inited + 312) = 0x4449656C646E7562;
  *(inited + 320) = 0xE800000000000000;
  v18 = (v1 + v6[9]);
  v20 = *v18;
  v19 = v18[1];
  *(inited + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 360) = sub_24E605DB4();
  *(inited + 328) = v20;
  *(inited + 336) = v19;

  v21 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v21;
  return result;
}

uint64_t sub_24E696EC0()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x6574656C706D6F63;
  v4 = 0x6E756F43656D6167;
  if (v1 != 4)
  {
    v4 = 0x4449656C646E7562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616C506C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x6F54646E65697266;
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

uint64_t sub_24E696F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E697C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E696FC4(uint64_t a1)
{
  v2 = sub_24E6977F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E697000(uint64_t a1)
{
  v2 = sub_24E6977F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesFriendComparisonHeaderShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6977F4();
  sub_24F92D128();
  v14 = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for ChallengesFriendComparisonHeaderShelfIntent();
    v13 = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28);
    sub_24F92CD48();
    v12 = 2;
    sub_24F92CD48();
    v11 = 3;
    sub_24F92CD38();
    v10 = 4;
    sub_24F92CCE8();
    v9 = 5;
    sub_24F92CCA8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ChallengesFriendComparisonHeaderShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = type metadata accessor for Player(0);
  v3 = MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F98);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ChallengesFriendComparisonHeaderShelfIntent();
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6977F4();
  v13 = v31;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a1;
  v37 = 0;
  *v12 = sub_24F92CC28();
  v12[1] = v14;
  v36 = 1;
  sub_24E61C064(&qword_27F213E38);
  sub_24F92CC68();
  v15 = v10;
  sub_24E61C0A8(v6, v12 + *(v10 + 20));
  v35 = 2;
  v16 = v27;
  sub_24F92CC68();
  sub_24E61C0A8(v16, v12 + v15[6]);
  v34 = 3;
  *(v12 + v15[7]) = sub_24F92CC58();
  v33 = 4;
  v18 = sub_24F92CC08();
  v19 = v31;
  v20 = v12 + v15[8];
  *v20 = v18;
  v20[8] = v21 & 1;
  v32 = 5;
  v22 = sub_24F92CBC8();
  v24 = v23;
  (*(v29 + 8))(v9, v30);
  v25 = (v12 + v15[9]);
  *v25 = v22;
  v25[1] = v24;
  sub_24E697848(v12, v26, type metadata accessor for ChallengesFriendComparisonHeaderShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_24E6978B0(v12, type metadata accessor for ChallengesFriendComparisonHeaderShelfIntent);
}

unint64_t sub_24E6977F4()
{
  result = qword_27F216F90;
  if (!qword_27F216F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216F90);
  }

  return result;
}

uint64_t sub_24E697848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6978B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E697924(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E6979E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E697A88()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F2153E8);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F254DE0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24E697B70()
{
  result = qword_27F216FB0;
  if (!qword_27F216FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216FB0);
  }

  return result;
}

unint64_t sub_24E697BC8()
{
  result = qword_27F216FB8;
  if (!qword_27F216FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216FB8);
  }

  return result;
}

unint64_t sub_24E697C20()
{
  result = qword_27F216FC0;
  if (!qword_27F216FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216FC0);
  }

  return result;
}

uint64_t sub_24E697C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F54646E65697266 && a2 == 0xEF657261706D6F43 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEE00746E756F4364 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E756F43656D6167 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

void *sub_24E697E88(unint64_t a1, int a2, uint64_t *a3)
{
  v46 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v56 = type metadata accessor for Game();
  v49 = *(v56 - 8);
  v11 = MEMORY[0x28223BE20](v56);
  v55 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v42 - v13;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v43 = v7;
    v15 = 0;
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v54 = a1 & 0xC000000000000001;
    v51 = (v49 + 48);
    v52 = (v49 + 56);
    v16 = MEMORY[0x277D84F90];
    v50 = i;
    v45 = a2;
    v44 = a1;
    while (1)
    {
      if (v54)
      {
        v17 = MEMORY[0x253052270](v15, a1);
      }

      else
      {
        if (v15 >= *(v53 + 16))
        {
          goto LABEL_28;
        }

        v17 = *(a1 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ((a2 & 1) != 0 && [v17 supportsLeaderboards] && objc_msgSend(v18, sel_numberOfLeaderboards))
      {
        v47 = v18;
        v20 = [v47 bundleIdentifier];
        v21 = sub_24F92B0D8();
        v23 = v22;

        v24 = v46;
        swift_beginAccess();
        v25 = *v24;
        if (*(*v24 + 16))
        {
          v26 = sub_24E76D644(v21, v23);
          v28 = v27;

          if (v28)
          {
            v29 = *(v25 + 56);
            v30 = sub_24F91F648();
            v31 = *(v30 - 8);
            v32 = v31;
            v33 = v29 + *(v31 + 72) * v26;
            v34 = v43;
            (*(v31 + 16))(v43, v33, v30);
            (*(v32 + 56))(v34, 0, 1, v30);
LABEL_25:
            a2 = v45;
            a1 = v44;
            v40 = v47;
            swift_endAccess();
            sub_24E7EDF8C(v40, v34, v10);
            v35 = 0;
            i = v50;
            goto LABEL_17;
          }
        }

        else
        {
        }

        v39 = sub_24F91F648();
        v34 = v43;
        (*(*(v39 - 8) + 56))(v43, 1, 1, v39);
        goto LABEL_25;
      }

      v35 = 1;
LABEL_17:
      v7 = v56;
      (*v52)(v10, v35, 1, v56);

      if ((*v51)(v10, 1, v7) == 1)
      {
        sub_24E601704(v10, &qword_27F216FE0);
      }

      else
      {
        v36 = v48;
        sub_24E636644(v10, v48);
        sub_24E636644(v36, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_24E616850(0, v16[2] + 1, 1, v16);
        }

        v38 = v16[2];
        v37 = v16[3];
        v7 = (v38 + 1);
        if (v38 >= v37 >> 1)
        {
          v16 = sub_24E616850(v37 > 1, v38 + 1, 1, v16);
        }

        v16[2] = v7;
        sub_24E636644(v55, v16 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v38);
        i = v50;
      }

      ++v15;
      if (v19 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24E6983DC()
{
  *(v0 + 112) = sub_24F92B7F8();
  *(v0 + 120) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E698474, v2, v1);
}

uint64_t sub_24E698474()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 128) = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_24E6984FC, 0, 0);
}

uint64_t sub_24E6984FC()
{
  *(v0 + 136) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E698588, v2, v1);
}

uint64_t sub_24E698588()
{
  v1 = v0[16];

  swift_getKeyPath();
  v0[11] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[18] = *v2;
  v0[19] = v2[1];

  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480);
  *v3 = v0;
  v3[1] = sub_24E6986FC;

  return MEMORY[0x2822007B8](v0 + 12, 0, 0, 0xD000000000000015, 0x800000024FA45A40, sub_24E6996C8, 0, v4);
}

uint64_t sub_24E6986FC()
{

  return MEMORY[0x2822009F8](sub_24E6987F8, 0, 0);
}

uint64_t sub_24E6987F8()
{
  v0[21] = v0[12];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_24E6988BC;

  return MEMORY[0x28217F228](v0 + 2, v1, v1);
}

uint64_t sub_24E6988BC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = sub_24E698D60;
  }

  else
  {
    v2 = sub_24E6989E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6989E4()
{
  v10 = v0;
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v9 = 33;
  v3 = (*(v2 + 8))(&v9, v1, v2);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_24E698AC8;
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];

  return sub_24E699090(v7, v6, v5, v3 & 1);
}

uint64_t sub_24E698AC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_24E698EF4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 16);
    v4 = sub_24E698C0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E698C0C()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E778);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "ChallengesAllGamesDataIntentImplementation fetched %ld games", v6, 0xCu);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 200);
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_24E698D60()
{
  v1 = *(v0 + 184);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesAllGamesDataIntentImplementation failed: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24E698EF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 208);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesAllGamesDataIntentImplementation failed: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24E699090(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 128) = a4;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  return MEMORY[0x2822009F8](sub_24E6990B8, 0, 0);
}

uint64_t sub_24E6990B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_24E69A5C4(0, &qword_27F216FC8);
  *v4 = v0;
  v4[1] = sub_24E6991C4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v3, v5);
}

uint64_t sub_24E6991C4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24E699570;
  }

  else
  {

    v2 = sub_24E6992E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6992E0()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  *(v0 + 80) = v5;
  v6 = [v5 internal];
  *(v0 + 88) = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277D0C138]) initWithInternalRepresentation_];
  *(v0 + 96) = v7;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  *(v8 + 32) = v3;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  *v9 = v0;
  v9[1] = sub_24E699454;

  return MEMORY[0x2822008A0](v0 + 24, 0, 0, 0xD00000000000005ELL, 0x800000024FA45A80, sub_24E69A5B0, v8, v10);
}

uint64_t sub_24E699454()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24E699648;
  }

  else
  {

    v2 = sub_24E6995D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E699570()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E6995D4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  v3 = *(v0 + 24);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_24E699648()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24E6996C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 challengeServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24E69C0D0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E699938;
  aBlock[3] = &block_descriptor_28;
  v10 = _Block_copy(aBlock);

  [v7 getApprovedGamesForLeaderboardChallengesWithHandler_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_24E6998BC(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  sub_24F45D828(v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE8);
  return sub_24F92B798();
}

uint64_t sub_24E699938(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_24F92B5A8();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

void sub_24E6999B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v24 = a6;
  v23 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = [objc_opt_self() proxyForPlayer_];
  v22 = [v13 gameServicePrivate];

  v14 = sub_24F92B098();
  sub_24E69A5C4(0, &qword_27F22BD50);
  v15 = sub_24F92C3E8();
  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  v18 = v17 + ((v16 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = a2;
  *(v18 + 8) = v23;
  *(v17 + ((v16 + v10 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_24E69A6C4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EFA5F38;
  aBlock[3] = &block_descriptor_4;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  [v22 getGamesPlayedSummaries:v14 limit:v15 handler:v19];
  _Block_release(v19);
  swift_unknownObjectRelease();
}

uint64_t sub_24E699C50(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  if (a2)
  {
    aBlock[0] = a2;
    v17 = a2;
    return sub_24F92B788();
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
    v19 = swift_allocObject();
    *(v19 + 16) = MEMORY[0x277D84F98];
    sub_24E699FD4(a1, v19 + 16, &v33);
    v20 = [objc_opt_self() proxyForPlayer_];
    v21 = [v20 gameServicePrivate];

    v31 = a5;
    if ((a5 & 1) == 0)
    {
      goto LABEL_7;
    }

    a6 = sub_24F146B88(v22, a6);
    v23 = *(a6 + 16);
    if (v23)
    {
      while (1)
      {
        v24 = sub_24EAE678C(v23, 0);
        a6 = sub_24EAE7C84(aBlock, v24 + 4, v23, a6);
        sub_24E6586B4();
        if (a6 == v23)
        {
          break;
        }

        __break(1u);
LABEL_7:

        v23 = *(a6 + 16);
        if (!v23)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:

      v24 = MEMORY[0x277D84F90];
    }

    sub_24E8E817C(v24);

    v25 = sub_24F92B588();

    (*(v13 + 16))(v16, a3, v12);
    v26 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v27 = v26 + v14;
    v28 = swift_allocObject();
    (*(v13 + 32))(v28 + v26, v16, v12);
    *(v28 + v27) = v31 & 1;
    *(v28 + (v27 & 0xFFFFFFFFFFFFFFF8) + 8) = v19;
    aBlock[4] = sub_24E69BEC0;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E67CE28;
    aBlock[3] = &block_descriptor_22;
    v29 = _Block_copy(aBlock);

    [v21 getGameMetadataForBundleIDs:v25 handler:v29];
    _Block_release(v29);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_24E699FD4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[3] = a3;
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  result = MEMORY[0x28223BE20](v4 - 8);
  v26 = &v23 - v6;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      v24 = a1 & 0xFFFFFFFFFFFFFF8;
      v25 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v25)
        {
          v9 = MEMORY[0x253052270](v8, a1);
        }

        else
        {
          if (v8 >= *(v24 + 16))
          {
            goto LABEL_12;
          }

          v9 = *(a1 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = [v9 bundleID];
        v13 = sub_24F92B0D8();
        v15 = v14;

        v16 = [v10 playedAt];
        v17 = v26;
        sub_24F91F608();

        v18 = sub_24F91F648();
        (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
        sub_24E988988(v17, v13, v15);
        v19 = [v10 bundleID];
        v20 = sub_24F92B0D8();
        v22 = v21;

        sub_24ED7C5F0(v28, v20, v22);

        ++v8;
        if (v11 == v7)
        {
          return result;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_24F92C738();
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_24E69A20C(unint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD8);
    return sub_24F92B788();
  }

  else
  {
    v7 = sub_24E697E88(a1, a4 & 1, (a5 + 16));

    sub_24E69A374(&v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD8);
    return sub_24F92B798();
  }
}

uint64_t sub_24E69A2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24E67D244;

  return ChallengesAllGamesDataIntentImplementation.perform(_:objectGraph:)(v5, a3);
}

uint64_t sub_24E69A374(void **a1)
{
  v2 = *(type metadata accessor for Game() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24E861778(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_24E69A7E0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_24E69A41C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E69A53C();
  sub_24F91FD88();

  v4 = (v3 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_24E69A4BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return LocalPlayerProvider.playerID.setter(v1, v2);
}

uint64_t sub_24E69A4FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return LocalPlayerProvider.playerID.setter(v1, v2);
}

unint64_t sub_24E69A53C()
{
  result = qword_27F247200;
  if (!qword_27F247200)
  {
    type metadata accessor for LocalPlayerProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247200);
  }

  return result;
}

uint64_t sub_24E69A5C4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24E69A60C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24E69A6C4(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E699C50(a1, a2, v2 + v6, v9, v10, v11);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E69A7A8()
{

  return swift_deallocObject();
}

uint64_t sub_24E69A7E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24F92CD78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Game();
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Game() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24E69ABFC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24E69A90C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24E69A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = type metadata accessor for Game();
  v8 = MEMORY[0x28223BE20](v42);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v38 = &v31 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = (&v31 - v14);
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v39 = -v17;
    v40 = v16;
    v19 = a1 - a3;
    v32 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v36 = v18;
      v37 = a3;
      v34 = v20;
      v35 = v19;
      v21 = v38;
      while (1)
      {
        sub_24E69BF7C(v20, v15);
        sub_24E69BF7C(v18, v21);
        if (v15[9])
        {
          break;
        }

        if (*(v21 + 72))
        {
          sub_24E69BFE0(v21);
          result = sub_24E69BFE0(v15);
          goto LABEL_23;
        }

        v27 = *(v21 + 64) < v15[8];
LABEL_22:
        sub_24E69BFE0(v21);
        result = sub_24E69BFE0(v15);
        if ((v27 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_23:
        if (!v40)
        {
          __break(1u);
          return result;
        }

        v29 = v41;
        sub_24E636644(v20, v41);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_24E636644(v29, v18);
        v18 += v39;
        v20 += v39;
        if (__CFADD__(v19++, 1))
        {
          goto LABEL_5;
        }
      }

      if ((*(v21 + 72) & 1) == 0)
      {
        sub_24E69BFE0(v21);
        result = sub_24E69BFE0(v15);
LABEL_5:
        a3 = v37 + 1;
        v18 = v36 + v32;
        v19 = v35 - 1;
        v20 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        continue;
      }

      break;
    }

    if (*(v15 + 7))
    {
      v22 = *(v15 + 6);
      v23 = *(v15 + 7);
      v24 = *(v21 + 56);
      if (v24)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v22 = *(v15 + 4);
      v23 = *(v15 + 5);

      v24 = *(v21 + 56);
      if (v24)
      {
LABEL_11:
        v25 = *(v21 + 48);
        v26 = v24;
        if (v22 != v25)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (v23 == v26)
        {
          v27 = 0;
LABEL_21:

          v21 = v38;
          goto LABEL_22;
        }

LABEL_20:
        v27 = sub_24F92CE08();
        goto LABEL_21;
      }
    }

    v28 = *(v21 + 32);
    v26 = *(v21 + 40);

    if (v22 != v28)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_24E69ABFC(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v157 = type metadata accessor for Game();
  v149 = *(v157 - 8);
  v8 = MEMORY[0x28223BE20](v157);
  v143 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v156 = &v135 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v135 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v135 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v150 = (&v135 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v137 = &v135 - v22;
  result = MEMORY[0x28223BE20](v21);
  v26 = a3[1];
  v144 = a3;
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_142:
    v29 = *v139;
    if (!*v139)
    {
      goto LABEL_180;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_144:
      v158 = v28;
      v131 = *(v28 + 2);
      if (v131 >= 2)
      {
        while (*a3)
        {
          v132 = *&v28[16 * v131];
          v133 = *&v28[16 * v131 + 24];
          sub_24E69B7B4(*a3 + *(v149 + 72) * v132, *a3 + *(v149 + 72) * *&v28[16 * v131 + 16], *a3 + *(v149 + 72) * v133, v29);
          if (v5)
          {
          }

          if (v133 < v132)
          {
            goto LABEL_167;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_24E86164C(v28);
          }

          if (v131 - 2 >= *(v28 + 2))
          {
            goto LABEL_168;
          }

          v134 = &v28[16 * v131];
          *v134 = v132;
          *(v134 + 1) = v133;
          v158 = v28;
          result = sub_24E8615C0(v131 - 1);
          v28 = v158;
          v131 = *(v158 + 2);
          a3 = v144;
          if (v131 <= 1)
          {
          }
        }

        goto LABEL_178;
      }
    }

LABEL_174:
    result = sub_24E86164C(v28);
    v28 = result;
    goto LABEL_144;
  }

  v136 = &v135 - v24;
  v151 = v25;
  v135 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v153 = v17;
  v154 = v14;
  while (2)
  {
    v29 = v27++;
    v152 = v28;
    if (v27 >= v26)
    {
      goto LABEL_57;
    }

    v147 = v26;
    v30 = v27;
    v31 = *a3;
    v32 = *(v149 + 72);
    v33 = v30;
    v34 = v136;
    sub_24E69BF7C(v31 + v32 * v30, v136);
    v155 = v32;
    v35 = v137;
    sub_24E69BF7C(v31 + v32 * v29, v137);
    v36 = *(v34 + 72);
    v37 = *(v35 + 72);
    v138 = v29;
    if ((v36 & 1) == 0)
    {
      LODWORD(v148) = (v37 & 1) != 0 || *(v35 + 64) < *(v34 + 64);
      goto LABEL_21;
    }

    if (v37)
    {
      if (*(v34 + 56))
      {
        v38 = *(v34 + 48);
        v39 = *(v34 + 56);
        v40 = *(v35 + 56);
        if (v40)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v38 = *(v34 + 32);
        v39 = *(v34 + 40);

        v40 = *(v35 + 56);
        if (v40)
        {
LABEL_9:
          v41 = v40;
          if (v38 != *(v35 + 48))
          {
            goto LABEL_19;
          }

LABEL_17:
          if (v39 == v41)
          {
            LODWORD(v148) = 0;
LABEL_20:
            v14 = v154;

            v34 = v136;
            v29 = v138;
            goto LABEL_21;
          }

LABEL_19:
          LODWORD(v148) = sub_24F92CE08();
          goto LABEL_20;
        }
      }

      v42 = *(v35 + 32);
      v41 = *(v35 + 40);

      if (v38 != v42)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    LODWORD(v148) = 0;
LABEL_21:
    sub_24E69BFE0(v35);
    result = sub_24E69BFE0(v34);
    v43 = v29 + 2;
    v44 = v155 * (v29 + 2);
    v45 = v31 + v44;
    v46 = (v155 * v33);
    v47 = v31 + v155 * v33;
    v48 = v33;
    do
    {
      v29 = v43;
      v51 = v48;
      v28 = v46;
      a3 = v44;
      if (v43 >= v147)
      {
        break;
      }

      v52 = v151;
      sub_24E69BF7C(v45, v151);
      v53 = v150;
      sub_24E69BF7C(v47, v150);
      v54 = v53;
      if ((*(v52 + 72) & 1) == 0)
      {
        v49 = (*(v53 + 72) & 1) != 0 || *(v53 + 64) < *(v151 + 64);
        goto LABEL_23;
      }

      if (*(v53 + 72))
      {
        v142 = v5;
        v55 = *(v151 + 56);
        if (v55)
        {
          v56 = *(v151 + 48);
          v57 = *(v151 + 56);
        }

        else
        {
          v56 = *(v151 + 32);
          v57 = *(v151 + 40);

          v54 = v150;
        }

        v146 = v55;
        if (v54[7])
        {
          v58 = v54[7];
          if (v56 != v54[6])
          {
LABEL_39:
            v49 = sub_24F92CE08();
            goto LABEL_40;
          }
        }

        else
        {
          v59 = v54[4];
          v58 = v54[5];
          v145 = 0;

          if (v56 != v59)
          {
            goto LABEL_39;
          }
        }

        if (v57 != v58)
        {
          goto LABEL_39;
        }

        v49 = 0;
LABEL_40:

        v54 = v150;
        v5 = v142;
        goto LABEL_23;
      }

      v49 = 0;
LABEL_23:
      sub_24E69BFE0(v54);
      result = sub_24E69BFE0(v151);
      v50 = v148 ^ v49;
      v43 = v29 + 1;
      v14 = v154;
      v45 += v155;
      v47 += v155;
      v48 = v51 + 1;
      v46 = &v28[v155];
      v44 = a3 + v155;
    }

    while ((v50 & 1) == 0);
    if (v148)
    {
      v17 = v153;
      if (v29 < v138)
      {
        goto LABEL_171;
      }

      if (v138 >= v29)
      {
        v27 = v29;
        v28 = v152;
        v29 = v138;
        a3 = v144;
      }

      else
      {
        v60 = (v138 * v155);
        v61 = v138;
        do
        {
          if (v61 != v51)
          {
            v63 = v5;
            v64 = *v144;
            if (!*v144)
            {
              goto LABEL_177;
            }

            sub_24E636644(&v60[v64], v143);
            if (v60 < v28 || &v60[v64] >= a3 + v64)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v60 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_24E636644(v143, &v28[v64]);
            v5 = v63;
            v17 = v153;
            v14 = v154;
          }

          ++v61;
          v28 -= v155;
          a3 = (a3 - v155);
          v60 += v155;
        }

        while (v61 < v51--);
        v27 = v29;
        a3 = v144;
        v28 = v152;
        v29 = v138;
      }
    }

    else
    {
      v27 = v29;
      v28 = v152;
      v17 = v153;
      v29 = v138;
      a3 = v144;
    }

LABEL_57:
    v65 = a3[1];
    if (v27 >= v65)
    {
      goto LABEL_91;
    }

    if (__OFSUB__(v27, v29))
    {
      goto LABEL_170;
    }

    if (v27 - v29 >= v135)
    {
LABEL_91:
      if (v27 < v29)
      {
        goto LABEL_169;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E615ED8(0, *(v28 + 2) + 1, 1, v28);
        v28 = result;
      }

      v86 = *(v28 + 2);
      v85 = *(v28 + 3);
      v87 = v86 + 1;
      if (v86 >= v85 >> 1)
      {
        result = sub_24E615ED8((v85 > 1), v86 + 1, 1, v28);
        v28 = result;
      }

      *(v28 + 2) = v87;
      v88 = &v28[16 * v86];
      *(v88 + 4) = v29;
      *(v88 + 5) = v27;
      v29 = *v139;
      if (!*v139)
      {
        goto LABEL_179;
      }

      if (!v86)
      {
LABEL_3:
        v26 = a3[1];
        v17 = v153;
        if (v27 >= v26)
        {
          goto LABEL_142;
        }

        continue;
      }

      while (1)
      {
        v89 = v87 - 1;
        if (v87 >= 4)
        {
          break;
        }

        if (v87 == 3)
        {
          v90 = *(v28 + 4);
          v91 = *(v28 + 5);
          v100 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          v93 = v100;
LABEL_111:
          if (v93)
          {
            goto LABEL_158;
          }

          v106 = &v28[16 * v87];
          v108 = *v106;
          v107 = *(v106 + 1);
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_161;
          }

          v112 = &v28[16 * v89 + 32];
          v114 = *v112;
          v113 = *(v112 + 1);
          v100 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v100)
          {
            goto LABEL_164;
          }

          if (__OFADD__(v110, v115))
          {
            goto LABEL_165;
          }

          if (v110 + v115 >= v92)
          {
            if (v92 < v115)
            {
              v89 = v87 - 2;
            }

            goto LABEL_132;
          }

          goto LABEL_125;
        }

        v116 = &v28[16 * v87];
        v118 = *v116;
        v117 = *(v116 + 1);
        v100 = __OFSUB__(v117, v118);
        v110 = v117 - v118;
        v111 = v100;
LABEL_125:
        if (v111)
        {
          goto LABEL_160;
        }

        v119 = &v28[16 * v89];
        v121 = *(v119 + 4);
        v120 = *(v119 + 5);
        v100 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v100)
        {
          goto LABEL_163;
        }

        if (v122 < v110)
        {
          goto LABEL_3;
        }

LABEL_132:
        v127 = v89 - 1;
        if (v89 - 1 >= v87)
        {
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
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        if (!*a3)
        {
          goto LABEL_176;
        }

        v128 = *&v28[16 * v127 + 32];
        v129 = *&v28[16 * v89 + 40];
        sub_24E69B7B4(*a3 + *(v149 + 72) * v128, *a3 + *(v149 + 72) * *&v28[16 * v89 + 32], *a3 + *(v149 + 72) * v129, v29);
        if (v5)
        {
        }

        if (v129 < v128)
        {
          goto LABEL_154;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_24E86164C(v28);
        }

        if (v127 >= *(v28 + 2))
        {
          goto LABEL_155;
        }

        v130 = &v28[16 * v127];
        *(v130 + 4) = v128;
        *(v130 + 5) = v129;
        v158 = v28;
        result = sub_24E8615C0(v89);
        v28 = v158;
        v87 = *(v158 + 2);
        v14 = v154;
        if (v87 <= 1)
        {
          goto LABEL_3;
        }
      }

      v94 = &v28[16 * v87 + 32];
      v95 = *(v94 - 64);
      v96 = *(v94 - 56);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_156;
      }

      v99 = *(v94 - 48);
      v98 = *(v94 - 40);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_157;
      }

      v101 = &v28[16 * v87];
      v103 = *v101;
      v102 = *(v101 + 1);
      v100 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v100)
      {
        goto LABEL_159;
      }

      v100 = __OFADD__(v92, v104);
      v105 = v92 + v104;
      if (v100)
      {
        goto LABEL_162;
      }

      if (v105 >= v97)
      {
        v123 = &v28[16 * v89 + 32];
        v125 = *v123;
        v124 = *(v123 + 1);
        v100 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v100)
        {
          goto LABEL_166;
        }

        if (v92 < v126)
        {
          v89 = v87 - 2;
        }

        goto LABEL_132;
      }

      goto LABEL_111;
    }

    break;
  }

  v66 = v29 + v135;
  if (__OFADD__(v29, v135))
  {
    goto LABEL_172;
  }

  if (v66 >= v65)
  {
    v66 = a3[1];
  }

  if (v66 < v29)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v27 == v66)
  {
    goto LABEL_91;
  }

  v141 = v66;
  v142 = v5;
  v67 = *a3;
  v68 = *(v149 + 72);
  v69 = *a3 + v68 * (v27 - 1);
  v70 = -v68;
  v138 = v29;
  v71 = v29 - v27;
  v155 = v67;
  v140 = v68;
  v72 = v67 + v27 * v68;
  while (2)
  {
    v147 = v69;
    v148 = v27;
    v145 = v72;
    v146 = v71;
    v73 = v71;
LABEL_69:
    sub_24E69BF7C(v72, v17);
    sub_24E69BF7C(v69, v14);
    if (v17[72])
    {
      if ((v14[72] & 1) == 0)
      {
        sub_24E69BFE0(v14);
        sub_24E69BFE0(v17);
LABEL_67:
        v27 = v148 + 1;
        v69 = v147 + v140;
        v71 = v146 - 1;
        v72 = v145 + v140;
        if (v148 + 1 == v141)
        {
          v27 = v141;
          v5 = v142;
          a3 = v144;
          v29 = v138;
          goto LABEL_91;
        }

        continue;
      }

      v74 = v17;
      v75 = *(v17 + 7);
      if (v75)
      {
        v76 = v74[6];
        v77 = v75;
      }

      else
      {
        v76 = v74[4];
        v77 = v74[5];
      }

      v79 = v14;
      v80 = *(v14 + 7);
      if (v80)
      {
        v81 = v80;
        if (v76 != v79[6])
        {
LABEL_83:
          v78 = sub_24F92CE08();
          goto LABEL_84;
        }
      }

      else
      {
        v82 = v79[4];
        v81 = v79[5];

        if (v76 != v82)
        {
          goto LABEL_83;
        }
      }

      if (v77 != v81)
      {
        goto LABEL_83;
      }

      v78 = 0;
LABEL_84:

      v28 = v152;
      v17 = v153;
      v14 = v154;
LABEL_85:
      sub_24E69BFE0(v14);
      result = sub_24E69BFE0(v17);
      if ((v78 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if ((v14[72] & 1) == 0)
      {
        v78 = *(v14 + 8) < *(v17 + 8);
        goto LABEL_85;
      }

      sub_24E69BFE0(v14);
      result = sub_24E69BFE0(v17);
    }

    break;
  }

  if (v155)
  {
    v83 = v156;
    sub_24E636644(v72, v156);
    swift_arrayInitWithTakeFrontToBack();
    sub_24E636644(v83, v69);
    v69 += v70;
    v72 += v70;
    if (__CFADD__(v73++, 1))
    {
      goto LABEL_67;
    }

    goto LABEL_69;
  }

  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
  return result;
}

uint64_t sub_24E69B7B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = type metadata accessor for Game();
  v8 = MEMORY[0x28223BE20](v55);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v54 = &v47 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v47 - v14);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v47 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_95;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_96;
  }

  v22 = (a2 - a1) / v20;
  v58 = a1;
  v57 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v24 < 1)
    {
      v33 = a4 + v24;
      goto LABEL_92;
    }

    v31 = -v20;
    v32 = a4 + v24;
    v48 = v10;
    v33 = a4 + v24;
    v53 = -v20;
    while (1)
    {
      v47 = v33;
      v34 = a2;
      a2 += v31;
      v51 = v34;
      v52 = a2;
      while (1)
      {
        if (v34 <= a1)
        {
          v58 = v34;
          v56 = v47;
          goto LABEL_93;
        }

        v35 = a4;
        v36 = a3;
        v50 = v33;
        v38 = v53;
        v37 = v54;
        v39 = v32 + v53;
        sub_24E69BF7C(v32 + v53, v54);
        sub_24E69BF7C(a2, v10);
        if (*(v37 + 72))
        {
          if ((v10[72] & 1) == 0)
          {
            v45 = 0;
            goto LABEL_77;
          }

          v40 = *(v37 + 56);
          v49 = v40;
          if (v40)
          {
            v41 = *(v37 + 48);
            v42 = *(v10 + 7);
            if (v42)
            {
              goto LABEL_65;
            }

LABEL_72:
            v46 = *(v10 + 4);
            v44 = *(v10 + 5);

            if (v41 == v46)
            {
              goto LABEL_73;
            }

LABEL_75:
            v45 = sub_24F92CE08();
          }

          else
          {
            v41 = *(v37 + 32);
            v40 = *(v37 + 40);

            v42 = *(v10 + 7);
            if (!v42)
            {
              goto LABEL_72;
            }

LABEL_65:
            v43 = *(v10 + 6);
            v44 = v42;
            if (v41 != v43)
            {
              goto LABEL_75;
            }

LABEL_73:
            if (v40 != v44)
            {
              goto LABEL_75;
            }

            v45 = 0;
          }

          a2 = v52;
          v38 = v53;
          v10 = v48;
          goto LABEL_77;
        }

        v45 = (v10[72] & 1) != 0 || *(v10 + 8) < *(v37 + 64);
LABEL_77:
        a3 = v36 + v38;
        sub_24E69BFE0(v10);
        sub_24E69BFE0(v54);
        if (v45)
        {
          break;
        }

        v33 = v39;
        if (v36 < v32 || a3 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v36 != v32)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v32 = v39;
        a4 = v35;
        v34 = v51;
        if (v39 <= v35)
        {
          a2 = v51;
          goto LABEL_92;
        }
      }

      if (v36 < v51 || a3 >= v51)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v50;
      }

      else
      {
        v33 = v50;
        if (v36 != v51)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a4 = v35;
      v31 = v53;
      if (v32 <= v35)
      {
LABEL_92:
        v58 = a2;
        v56 = v33;
        goto LABEL_93;
      }
    }
  }

  v23 = v22 * v20;
  if (a4 < a1 || a1 + v23 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v54 = a4 + v23;
  v56 = a4 + v23;
  if (v23 >= 1 && a2 < a3)
  {
    v51 = v20;
    while (1)
    {
      sub_24E69BF7C(a2, v18);
      sub_24E69BF7C(a4, v15);
      if (v18[9])
      {
        break;
      }

      if (v15[9])
      {
        sub_24E69BFE0(v15);
        sub_24E69BFE0(v18);
        goto LABEL_39;
      }

      v28 = v15[8] < v18[8];
LABEL_38:
      sub_24E69BFE0(v15);
      sub_24E69BFE0(v18);
      if ((v28 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_39:
      if (a1 < a2 || a1 >= a2 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v20;
LABEL_51:
      a1 += v20;
      v58 = a1;
      if (a4 >= v54 || a2 >= a3)
      {
        goto LABEL_93;
      }
    }

    if ((v15[9] & 1) == 0)
    {
      sub_24E69BFE0(v15);
      sub_24E69BFE0(v18);
LABEL_43:
      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v57 = a4 + v20;
      a4 += v20;
      goto LABEL_51;
    }

    v53 = a4;
    if (*(v18 + 7))
    {
      v26 = *(v18 + 6);
      v27 = *(v18 + 7);
    }

    else
    {
      v26 = *(v18 + 4);
      v27 = *(v18 + 5);
    }

    v52 = a2;
    if (*(v15 + 7))
    {
      v29 = *(v15 + 7);
      if (v26 != *(v15 + 6))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v30 = *(v15 + 4);
      v29 = *(v15 + 5);

      if (v26 != v30)
      {
        goto LABEL_36;
      }
    }

    if (v27 == v29)
    {
      v28 = 0;
LABEL_37:

      a2 = v52;
      a4 = v53;
      v20 = v51;
      goto LABEL_38;
    }

LABEL_36:
    v28 = sub_24F92CE08();
    goto LABEL_37;
  }

LABEL_93:
  sub_24F8FAFF0(&v58, &v57, &v56);
  return 1;
}

uint64_t sub_24E69BE18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E69BEC0(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + v7);
  v9 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_24E69A20C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_24E69BF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Game();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E69BFE0(uint64_t a1)
{
  v2 = type metadata accessor for Game();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E69C03C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E69C0D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE8);

  return sub_24E6998BC(a1);
}

__n128 sub_24E69C15C(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  *(v4 + 32) = xmmword_24F944DE0;
  *(v4 + 48) = vdupq_n_s64(0xC0C81C8000000000);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = a1;
  *(v4 + 96) = a1;
  __asm { FMOV            V0.2D, #12.0 }

  *(v4 + 104) = _Q0;
  *(v4 + 120) = _Q0;
  *(v4 + 152) = 1;
  v10 = MEMORY[0x277D768C8];
  *(v4 + 136) = a2;
  *(v4 + 144) = a2;
  result = *v10;
  v12 = *(v10 + 16);
  *(v4 + 160) = *v10;
  *(v4 + 176) = v12;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24E69C218(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24E69C260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E69C2C8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_24E69C480(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

void sub_24E69C624()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon(319);
    if (v1 <= 0x3F)
    {
      sub_24E69C820(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E69C820(319, &qword_27F217000, &type metadata for OverlayPlatterLockup.OverlayPlatterAccessory, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E69C820(319, &qword_27F217008, &type metadata for OverlayPlatterLockup.OverlayPlatterButtonInfo, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
            if (v5 <= 0x3F)
            {
              sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
              if (v6 <= 0x3F)
              {
                sub_24E61C938();
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
  }
}

uint64_t sub_24E69C7D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E69C820(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24E69C88C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24E69C8D4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_24E69C954()
{
  sub_24E69C9C8();
  if (v0 <= 0x3F)
  {
    sub_24E69CA10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24E69C9C8()
{
  if (!qword_27F217020)
  {
    v0 = sub_24F9289E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F217020);
    }
  }
}

ValueMetadata *sub_24E69CA10()
{
  result = qword_27F217028;
  if (!qword_27F217028)
  {
    result = &type metadata for SystemAppIcon;
    atomic_store(&type metadata for SystemAppIcon, &qword_27F217028);
  }

  return result;
}

uint64_t sub_24E69CA40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217408);
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v47 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217410);
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  MEMORY[0x28223BE20](v4);
  v49 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217418);
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24E6A6770();
  v20 = v51;
  sub_24F92D108();
  if (!v20)
  {
    v41 = v13;
    v42 = v18;
    v51 = v16;
    v22 = v48;
    v21 = v49;
    v23 = v50;
    v24 = sub_24F92CC78();
    v25 = (2 * *(v24 + 16)) | 1;
    v53 = v24;
    v54 = v24 + 32;
    v55 = 0;
    v56 = v25;
    v26 = sub_24E643430();
    v27 = v7;
    if (v26 == 2 || v55 != v56 >> 1)
    {
      v34 = sub_24F92C918();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v36 = v10;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v22 + 8))(v9, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        v57 = 1;
        sub_24E6A67C4();
        v28 = v47;
        sub_24F92CBA8();
        v29 = v23;
        sub_24E6A6818();
        v30 = v43;
        sub_24F92CC68();
        (*(v46 + 8))(v28, v30);
        (*(v22 + 8))(v9, v27);
        swift_unknownObjectRelease();
        v31 = v41;
        *v41 = v57;
        swift_storeEnumTagMultiPayload();
        v32 = v31;
        v33 = v42;
        sub_24E6A645C(v32, v42, type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon);
      }

      else
      {
        v57 = 0;
        sub_24E6A686C();
        v38 = v21;
        sub_24F92CBA8();
        sub_24F9289E8();
        sub_24E69C7D8(&qword_27F214018, MEMORY[0x277D21C48]);
        v39 = v51;
        v40 = v44;
        sub_24F92CC68();
        (*(v45 + 8))(v38, v40);
        (*(v22 + 8))(v9, v27);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v33 = v42;
        sub_24E6A645C(v39, v42, type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon);
        v29 = v50;
      }

      sub_24E6A645C(v33, v29, type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_24E69D094@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2173C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6A65F0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v13) = 0;
  v16[0] = sub_24F92CBC8();
  v16[1] = v9;
  LOBYTE(v13) = 1;
  v16[2] = sub_24F92CC28();
  v16[3] = v10;
  v12 = v10;
  LOBYTE(v13) = 2;
  v17 = sub_24F92CBD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
  v21 = 3;
  sub_24E602068(&qword_27F243830, &qword_27F2169E8);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v18 = v13;
  v19 = v14;
  v20 = v15;
  sub_24E6A4D34(v16, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E6A6644(v16);
}

uint64_t sub_24E69D368()
{
  if (*v0)
  {
    return 0x63496D6574737973;
  }

  else
  {
    return 0x6E6F6349656D6167;
  }
}

uint64_t sub_24E69D3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x63496D6574737973 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E69D48C(uint64_t a1)
{
  v2 = sub_24E6A6770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E69D4C8(uint64_t a1)
{
  v2 = sub_24E6A6770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E69D514(uint64_t a1)
{
  v2 = sub_24E6A686C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E69D550(uint64_t a1)
{
  v2 = sub_24E6A686C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E69D590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1852793705 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E69D618(uint64_t a1)
{
  v2 = sub_24E6A67C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E69D654(uint64_t a1)
{
  v2 = sub_24E6A67C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E69D6A8()
{
  if (*v0)
  {
    return 0x614E6C6F626D7973;
  }

  else
  {
    return 0x6E694C6572616873;
  }
}

uint64_t sub_24E69D6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E694C6572616873 && a2 == 0xE90000000000006BLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E69D7D8(uint64_t a1)
{
  v2 = sub_24E6A6674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E69D814(uint64_t a1)
{
  v2 = sub_24E6A6674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E69D850(uint64_t a1)
{
  v2 = sub_24E6A671C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E69D88C(uint64_t a1)
{
  v2 = sub_24E6A671C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E69D8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E69D960(uint64_t a1)
{
  v2 = sub_24E6A66C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E69D99C(uint64_t a1)
{
  v2 = sub_24E6A66C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E69D9D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24E6A573C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_24E69DA0C()
{
  v1 = 0x614E6C6F626D7973;
  v2 = 0x5A656C6261736964;
  if (*v0 != 2)
  {
    v2 = 0x6575676573;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_24E69DA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6A5C70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E69DAB4(uint64_t a1)
{
  v2 = sub_24E6A65F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E69DAF0(uint64_t a1)
{
  v2 = sub_24E6A65F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E69DB44(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6553726564616568;
    v7 = 0x4D747865746E6F63;
    if (a1 != 10)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x726F737365636361;
    v9 = 0x6E496E6F74747562;
    if (a1 != 7)
    {
      v9 = 0x6575676573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x656C746974;
    v3 = 1954047348;
    if (a1 != 4)
    {
      v3 = 0x7261646E6F636573;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6E6F6349707061;
    if (a1 != 1)
    {
      v4 = 0x676E6964616568;
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

uint64_t sub_24E69DCD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = v47 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v50);
  v51 = v47 - v5;
  v6 = type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon(0);
  MEMORY[0x28223BE20](v6);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217398);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = v47 - v9;
  v11 = type metadata accessor for OverlayPlatterLockup(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[*(v12 + 48)];
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v61 = v15;
  sub_24E61DA68(&v63, v15, qword_27F21B590);
  v16 = &v14[v11[13]];
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  v60 = v16;
  sub_24E61DA68(&v63, v16, qword_27F21B590);
  v17 = v11[14];
  v18 = sub_24F92A6D8();
  v19 = *(*(v18 - 8) + 56);
  v59 = v17;
  v19(&v14[v17], 1, 1, v18);
  v55 = v11;
  v20 = v11[15];
  v21 = sub_24F929608();
  v22 = *(*(v21 - 8) + 56);
  v58 = v20;
  v62 = v14;
  v22(&v14[v20], 1, 1, v21);
  v23 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24E6A63A8();
  v53 = v10;
  v24 = v56;
  sub_24F92D108();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v57);

    sub_24E640000(0, 0, 255);
    v26 = v62;
    sub_24E601704(v61, qword_27F24EC90);
    sub_24E601704(v60, qword_27F24EC90);
    sub_24E601704(v26 + v59, &qword_27F215440);
    return sub_24E601704(v26 + v58, &qword_27F213E68);
  }

  else
  {
    v56 = v21;
    v25 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v67 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v27 = v64;
    v28 = v62;
    *v62 = v63;
    v28[1] = v27;
    *(v28 + 4) = v65;
    LOBYTE(v63) = 1;
    sub_24E69C7D8(&qword_27F2173A8, type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon);
    sub_24F92CC68();
    v29 = v55;
    sub_24E6A645C(v8, v28 + v55[5], type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon);
    LOBYTE(v63) = 2;
    v30 = sub_24F92CBC8();
    v31 = (v28 + v29[6]);
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v63) = 3;
    v33 = sub_24F92CBC8();
    v34 = (v28 + v29[7]);
    *v34 = v33;
    v34[1] = v35;
    v47[4] = v35;
    LOBYTE(v63) = 4;
    v36 = sub_24F92CBC8();
    v37 = (v28 + v29[8]);
    *v37 = v36;
    v37[1] = v38;
    v47[3] = v38;
    LOBYTE(v63) = 5;
    v39 = sub_24F92CBC8();
    v40 = (v28 + v29[9]);
    *v40 = v39;
    v40[1] = v41;
    v47[2] = v41;
    v67 = 6;
    sub_24E6A64C4();
    sub_24F92CC18();
    v42 = v28 + v29[10];
    v43 = *(&v63 + 1);
    v44 = v64;
    v47[1] = v63;
    *v42 = v63;
    *(v42 + 1) = v43;
    v47[0] = v43;
    v66 = v44;
    v42[16] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2170D0);
    v67 = 7;
    sub_24E6A6518();
    sub_24F92CC68();
    *(v28 + v29[11]) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v67 = 8;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v63, v61, qword_27F24EC90);
    v67 = 9;
    sub_24F92CC68();
    sub_24E61DA68(&v63, v60, qword_27F24EC90);
    LOBYTE(v63) = 10;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v51, v62 + v59, &qword_27F215440);
    LOBYTE(v63) = 11;
    sub_24E69C7D8(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    (*(v25 + 8))(v53, v54);
    v45 = v62;
    sub_24E61DA68(v49, v62 + v58, &qword_27F213E68);
    sub_24E6A53F0(v45, v48, type metadata accessor for OverlayPlatterLockup);
    __swift_destroy_boxed_opaque_existential_1(v57);
    return sub_24E6A63FC(v45, type metadata accessor for OverlayPlatterLockup);
  }
}

uint64_t sub_24E69E82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6A5DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E69E860(uint64_t a1)
{
  v2 = sub_24E6A63A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E69E89C(uint64_t a1)
{
  v2 = sub_24E6A63A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E69E8D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 48), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24E69E934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 56), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24E69EA0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D7ECA8];
  v3 = sub_24F921CA8();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

unint64_t sub_24E69EB34()
{
  result = qword_27F217030;
  if (!qword_27F217030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217030);
  }

  return result;
}

uint64_t sub_24E69EB88@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v67 = a4;
  v9 = type metadata accessor for OverlayPlatterLockup(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2170A8);
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x28223BE20](v13);
  v60 = (&v57 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2170B0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v66 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2170B8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v65 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = (&v57 - v22);
  *v23 = sub_24F927618();
  v23[1] = v24;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2170C0) + 44);
  v61 = v23;
  sub_24E69F494(a1, a2, a3 & 1, v23 + v25, a5);
  v26 = (a1 + *(v9 + 32));
  v27 = v26[1];
  if (v27)
  {
    v59 = v10;
    v28 = *v26;
    KeyPath = sub_24F924C88();
    LOBYTE(v81[0]) = 1;
    sub_24E6A2AC8(v28, v27, a1, v83);
    v77 = v83[8];
    v78 = v83[9];
    v79[0] = v83[10];
    *(v79 + 9) = *(&v83[10] + 9);
    v73 = v83[4];
    v74 = v83[5];
    v75 = v83[6];
    v76 = v83[7];
    v69 = v83[0];
    v70 = v83[1];
    v71 = v83[2];
    v72 = v83[3];
    v80[8] = v83[8];
    v80[9] = v83[9];
    v80[10] = v83[10];
    *(&v80[10] + 9) = *(&v83[10] + 9);
    v80[4] = v83[4];
    v80[5] = v83[5];
    v80[6] = v83[6];
    v80[7] = v83[7];
    v80[0] = v83[0];
    v80[1] = v83[1];
    v80[2] = v83[2];
    v80[3] = v83[3];
    sub_24E60169C(&v69, v82, &qword_27F217148);
    sub_24E601704(v80, &qword_27F217148);
    *(&v68[8] + 7) = v77;
    *(&v68[9] + 7) = v78;
    *(&v68[10] + 7) = v79[0];
    v68[11] = *(v79 + 9);
    *(&v68[4] + 7) = v73;
    *(&v68[5] + 7) = v74;
    *(&v68[6] + 7) = v75;
    *(&v68[7] + 7) = v76;
    *(v68 + 7) = v69;
    *(&v68[1] + 7) = v70;
    v10 = v59;
    *(&v68[2] + 7) = v71;
    *(&v68[3] + 7) = v72;
    v29 = v81[0];
    v30 = sub_24F9257F8();
    *(&v81[18] + 1) = v68[8];
    *(&v81[20] + 1) = v68[9];
    *(&v81[22] + 1) = v68[10];
    *(&v81[24] + 1) = v68[11];
    *(&v81[10] + 1) = v68[4];
    *(&v81[12] + 1) = v68[5];
    *(&v81[14] + 1) = v68[6];
    *(&v81[16] + 1) = v68[7];
    *(&v81[2] + 1) = v68[0];
    *(&v81[4] + 1) = v68[1];
    *(&v81[6] + 1) = v68[2];
    v81[0] = KeyPath;
    v81[1] = 0;
    LOBYTE(v81[2]) = v29;
    *(&v81[8] + 1) = v68[3];
    LOBYTE(v81[27]) = v30;
    memset(&v81[28], 0, 32);
    LOBYTE(v81[32]) = 1;
    CGSizeMake(v81, v31, v32);
    memcpy(v82, v81, 0x101uLL);
    CGSizeMake(v82, v33, v34);
    memcpy(v83, v82, 0x101uLL);
  }

  else
  {
    sub_24E6A4714(v83);
  }

  v35 = *(a1 + *(v9 + 44));
  v36 = 1;
  if (*(v35 + 16))
  {
    v37 = sub_24F9249A8();
    v38 = v60;
    *v60 = v37;
    *(v38 + 8) = 0;
    *(v38 + 16) = 1;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2170C8) + 44);
    v81[0] = v35;
    KeyPath = swift_getKeyPath();
    sub_24E6A53F0(a1, v12, type metadata accessor for OverlayPlatterLockup);
    v39 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = 0x4049000000000000;
    sub_24E6A645C(v12, v40 + v39, type metadata accessor for OverlayPlatterLockup);

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2170D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2170D8);
    sub_24E602068(&qword_27F2170E0, &qword_27F2170D0);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170E8);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170F0);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170F8);
    v44 = sub_24E6A4AA4();
    v45 = sub_24E6A4C1C();
    v46 = sub_24E6A4C70();
    v82[0] = v42;
    v82[1] = &type metadata for GameOverlayViewPredicate;
    v82[2] = v43;
    v82[3] = v44;
    v82[4] = v45;
    v82[5] = v46;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v82[0] = v41;
    v82[1] = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_24F927228();
    v48 = v64;
    sub_24E6009C8(v38, v64, &qword_27F2170A8);
    v36 = 0;
  }

  else
  {
    v48 = v64;
  }

  (*(v62 + 56))(v48, v36, 1, v63);
  v49 = v48;
  v50 = v61;
  v51 = v65;
  sub_24E60169C(v61, v65, &qword_27F2170B8);
  memcpy(v80, v83, 0x101uLL);
  v52 = v66;
  sub_24E60169C(v49, v66, &qword_27F2170B0);
  v53 = v67;
  sub_24E60169C(v51, v67, &qword_27F2170B8);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217138);
  v55 = *(v54 + 48);
  memcpy(v81, v80, 0x101uLL);
  memcpy((v53 + v55), v80, 0x101uLL);
  sub_24E60169C(v52, v53 + *(v54 + 64), &qword_27F2170B0);
  sub_24E60169C(v81, v82, &qword_27F217140);
  sub_24E601704(v49, &qword_27F2170B0);
  sub_24E601704(v50, &qword_27F2170B8);
  sub_24E601704(v52, &qword_27F2170B0);
  memcpy(v82, v80, 0x101uLL);
  sub_24E601704(v82, &qword_27F217140);
  return sub_24E601704(v51, &qword_27F2170B8);
}

uint64_t sub_24E69F494@<X0>(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v78 = a3;
  v79 = a2;
  v86 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2171E8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v87 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v71 - v10;
  v77 = sub_24F924248();
  v12 = MEMORY[0x28223BE20](v77);
  v75 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = (&v71 - v14);
  v16 = type metadata accessor for OverlayPlatterLockup(0);
  v72 = *(v16 - 8);
  v17 = *(v72 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v71 - v20;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2171F0);
  v73 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v23 = &v71 - v22;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2171F8);
  v76 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v74 = &v71 - v24;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217200);
  MEMORY[0x28223BE20](v80);
  v26 = &v71 - v25;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217208);
  MEMORY[0x28223BE20](v88);
  v28 = &v71 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217210);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v84 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v81 = &v71 - v32;
  v85 = v16;
  v33 = *(v16 + 52);
  v34 = a1;
  sub_24E60169C(a1 + v33, &v89, qword_27F24EC90);
  if (*(&v90 + 1))
  {
    sub_24E612C80(&v89, v96);
    v35 = sub_24F9232F8();
    (*(*(v35 - 8) + 56))(v21, 1, 1, v35);
    sub_24E615E00(v96, &v89);
    v71 = a1;
    sub_24E6A53F0(a1, &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverlayPlatterLockup);
    v36 = v11;
    v37 = (*(v72 + 80) + 40) & ~*(v72 + 80);
    v38 = swift_allocObject();
    v39 = *&v79;
    *(v38 + 16) = v79;
    v40 = v78 & 1;
    *(v38 + 24) = v78 & 1;
    *(v38 + 32) = a5;
    sub_24E6A645C(v18, v38 + v37, type metadata accessor for OverlayPlatterLockup);
    sub_24E62AB1C(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217240);
    *&v79 = sub_24E602068(&qword_27F217228, &qword_27F217208);
    v94 = v88;
    v95 = v79;
    swift_getOpaqueTypeConformance2();
    sub_24F921788();
    v41 = sub_24F924258();
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    v42 = *(v41 + 20);
    v43 = *MEMORY[0x277CE0118];
    v44 = sub_24F924B38();
    v45 = v15 + v42;
    v11 = v36;
    v34 = v71;
    (*(*(v44 - 8) + 104))(v45, v43, v44);
    __asm { FMOV            V0.2D, #18.0 }

    *v15 = _Q0;
    *(v15 + *(v77 + 20)) = 0xC018000000000000;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v51 = sub_24F926D08();

    sub_24E6A53F0(v15, v75, MEMORY[0x277CDFBC8]);
    sub_24E69C7D8(&qword_27F214338, MEMORY[0x277CDFBC8]);
    v52 = sub_24F927348();
    sub_24E6A63FC(v15, MEMORY[0x277CDFBC8]);
    v92 = v52;
    v93 = v51;
    v53 = sub_24E602068(&qword_27F217220, &qword_27F2171F0);
    v54 = sub_24E62A2EC();
    v55 = v74;
    v56 = v82;
    sub_24F926178();
    sub_24E64594C(&v89);
    (*(v73 + 8))(v23, v56);
    v57 = v76;
    v58 = v83;
    (*(v76 + 16))(v26, v55, v83);
    swift_storeEnumTagMultiPayload();
    *&v89 = v56;
    *(&v89 + 1) = &type metadata for FillFocusButtonStyle;
    *&v90 = v53;
    *(&v90 + 1) = v54;
    swift_getOpaqueTypeConformance2();
    v59 = v81;
    sub_24F924E28();
    (*(v57 + 8))(v55, v58);
    __swift_destroy_boxed_opaque_existential_1(v96);
  }

  else
  {
    sub_24E601704(&v89, qword_27F21B590);
    sub_24F925898();
    v60 = sub_24F925898();
    *v28 = sub_24F9249A8();
    *(v28 + 1) = 0x4024000000000000;
    v28[16] = 0;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217218);
    sub_24E6A0524(a1, v79, v78 & 1, v60, &v28[*(v61 + 44)], a5);

    sub_24E60169C(v28, v26, &qword_27F217208);
    swift_storeEnumTagMultiPayload();
    v62 = sub_24E602068(&qword_27F217220, &qword_27F2171F0);
    v63 = sub_24E62A2EC();
    *&v89 = v82;
    *(&v89 + 1) = &type metadata for FillFocusButtonStyle;
    *&v90 = v62;
    *(&v90 + 1) = v63;
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F217228, &qword_27F217208);
    v59 = v81;
    sub_24F924E28();
    sub_24E601704(v28, &qword_27F217208);
  }

  if (*(v34 + *(v85 + 40) + 16) == 255)
  {
    v64 = 1;
  }

  else
  {
    sub_24E6A0250(v34, v11);
    v64 = 0;
  }

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217230);
  (*(*(v65 - 8) + 56))(v11, v64, 1, v65);
  v66 = v84;
  sub_24E60169C(v59, v84, &qword_27F217210);
  v67 = v87;
  sub_24E60169C(v11, v87, &qword_27F2171E8);
  v68 = v86;
  sub_24E60169C(v66, v86, &qword_27F217210);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217238);
  sub_24E60169C(v67, v68 + *(v69 + 48), &qword_27F2171E8);
  sub_24E601704(v11, &qword_27F2171E8);
  sub_24E601704(v59, &qword_27F217210);
  sub_24E601704(v67, &qword_27F2171E8);
  return sub_24E601704(v66, &qword_27F217210);
}

uint64_t sub_24E6A003C@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v19[0] = a4;
  v9 = sub_24F9248C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217208);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  sub_24F925898();
  v16 = sub_24F925898();
  *v15 = sub_24F9249A8();
  *(v15 + 1) = 0x4024000000000000;
  v15[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217218);
  sub_24E6A0524(a3, a1, a2 & 1, v16, &v15[*(v17 + 44)], a5);

  sub_24F9248B8();
  sub_24E602068(&qword_27F217228, &qword_27F217208);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v10 + 8))(v12, v9);
  return sub_24E601704(v15, &qword_27F217208);
}

uint64_t sub_24E6A0250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217248);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217250);
  v23 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = a1 + *(type metadata accessor for OverlayPlatterLockup(0) + 40);
  v14 = *(v13 + 16);
  if (v14 == 255)
  {
    v21 = *(v23 + 56);

    return v21(a2, 1, 1, v10);
  }

  else
  {
    v16 = *v13;
    v15 = *(v13 + 8);
    *v12 = sub_24F9249A8();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v17 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217258) + 44)];
    *v9 = sub_24F924C88();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217260);
    sub_24E6A1E28(v16, v15, v14 & 1, a1, &v9[*(v18 + 44)]);
    sub_24E60169C(v9, v7, &qword_27F217248);
    *v17 = 0;
    v17[8] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217268);
    sub_24E60169C(v7, &v17[*(v19 + 48)], &qword_27F217248);
    sub_24E601704(v9, &qword_27F217248);
    sub_24E601704(v7, &qword_27F217248);
    sub_24E6009C8(v12, a2, &qword_27F217250);
    return (*(v23 + 56))(a2, 0, 1, v10);
  }
}

uint64_t sub_24E6A0524@<X0>(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v107 = a4;
  v103 = a3;
  v104 = a2;
  v120 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2172F0);
  v118 = *(v8 - 8);
  v119 = v8;
  MEMORY[0x28223BE20](v8);
  v108 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2172F8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v106 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v105 = (&v89 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217300);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v117 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v116 = &v89 - v17;
  v95 = sub_24F926E08();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_24F924848();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217308);
  MEMORY[0x28223BE20](v112);
  v110 = &v89 - v21;
  v101 = sub_24F9297D8();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_24F929888();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760);
  MEMORY[0x28223BE20](v25);
  v27 = &v89 - v26;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217310);
  v102 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v97 = &v89 - v28;
  v29 = sub_24F9289E8();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217318);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v114 = &v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v109 = &v89 - v39;
  v113 = type metadata accessor for OverlayPlatterLockup(0);
  v40 = *(v113 + 20);
  v115 = a1;
  sub_24E6A53F0(a1 + v40, v35, type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v110;
    v102 = v25;
    v42 = v109;
    v43 = *v35;
    if (v103)
    {
      v44 = v104;
    }

    else
    {
      v60 = *&v104;

      sub_24F92BDC8();
      v61 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v60, 0);
      (*(v91 + 8))(v20, v92);
      v44 = *&v123;
    }

    v59 = v116;
    LOBYTE(v123) = v43;
    if (sub_24EFFE798(&v123, 0, a6, a6, v44))
    {
      sub_24F926DE8();
      v62 = v94;
      v63 = v93;
      v64 = v95;
      (*(v94 + 104))(v93, *MEMORY[0x277CE0FE0], v95);
      v65 = sub_24F926E88();

      (*(v62 + 8))(v63, v64);
      sub_24F927618();
      sub_24F9238C8();
      v66 = v123;
      v67 = BYTE8(v123);
      v68 = v124;
      v69 = BYTE8(v124);
      v70 = v125;
    }

    else
    {
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0uLL;
    }

    v71 = v102;
    *v41 = v65;
    *(v41 + 1) = v66;
    *(v41 + 2) = v67;
    *(v41 + 3) = v68;
    *(v41 + 4) = v69;
    *(v41 + 40) = v70;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217320);
    v72 = sub_24E6801D4();
    *&v122[0] = v71;
    *(&v122[0] + 1) = v72;
    swift_getOpaqueTypeConformance2();
    sub_24E6A61B8(&qword_27F217328, &qword_27F217320, &unk_24F945478, sub_24E6A6234);
    sub_24F924E28();
  }

  else
  {
    v45 = *(v30 + 32);
    v90 = v32;
    v45(v32, v35, v29);
    v46 = *(v30 + 16);
    v89 = v29;
    v46(v27, v32, v29);
    (*(v30 + 56))(v27, 0, 1, v29);
    v47 = type metadata accessor for GameIcon(0);
    v48 = v47[8];
    *&v27[v48] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
    swift_storeEnumTagMultiPayload();
    v27[v47[5]] = 1;
    v27[v47[6]] = 1;
    v27[v47[7]] = 0;
    sub_24F927618();
    sub_24F9238C8();
    v49 = &v27[*(v25 + 36)];
    v50 = v124;
    *v49 = v123;
    *(v49 + 1) = v50;
    *(v49 + 2) = v125;
    v51 = v99;
    v52 = v96;
    v53 = v101;
    (*(v99 + 104))(v96, *MEMORY[0x277D22040], v101);
    memset(v122, 0, sizeof(v122));
    memset(v121, 0, sizeof(v121));
    sub_24F929818();
    sub_24E601704(v121, &qword_27F2129B0);
    sub_24E601704(v122, &qword_27F2129B0);
    (*(v51 + 8))(v52, v53);
    v54 = sub_24E6801D4();
    v55 = v97;
    sub_24F925EE8();
    (*(v98 + 8))(v24, v100);
    sub_24E601704(v27, &qword_27F216760);
    v56 = v102;
    v57 = v111;
    (*(v102 + 16))(v110, v55, v111);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217320);
    *&v122[0] = v25;
    *(&v122[0] + 1) = v54;
    swift_getOpaqueTypeConformance2();
    sub_24E6A61B8(&qword_27F217328, &qword_27F217320, &unk_24F945478, sub_24E6A6234);
    v58 = v109;
    sub_24F924E28();
    (*(v56 + 8))(v55, v57);
    (*(v30 + 8))(v90, v89);
    v59 = v116;
    v42 = v58;
  }

  v73 = v115;
  v74 = (v115 + *(v113 + 24));
  v75 = v74[1];
  v76 = 1;
  if (v75)
  {
    v77 = *v74;
    v78 = sub_24F924C98();
    v79 = v105;
    *v105 = v78;
    *(v79 + 8) = 0;
    *(v79 + 16) = 1;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217348);
    sub_24E6A1418(v77, v75, v73, v107, (v79 + *(v80 + 44)));
    v81 = v106;
    sub_24E60169C(v79, v106, &qword_27F2172F8);
    v82 = v108;
    sub_24E60169C(v81, v108, &qword_27F2172F8);
    v83 = v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217350) + 48);
    *v83 = 0;
    *(v83 + 8) = 1;
    sub_24E601704(v79, &qword_27F2172F8);
    sub_24E601704(v81, &qword_27F2172F8);
    sub_24E6009C8(v82, v59, &qword_27F2172F0);
    v76 = 0;
  }

  (*(v118 + 56))(v59, v76, 1, v119);
  v84 = v114;
  sub_24E60169C(v42, v114, &qword_27F217318);
  v85 = v117;
  sub_24E60169C(v59, v117, &qword_27F217300);
  v86 = v120;
  sub_24E60169C(v84, v120, &qword_27F217318);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217340);
  sub_24E60169C(v85, v86 + *(v87 + 48), &qword_27F217300);
  sub_24E601704(v59, &qword_27F217300);
  sub_24E601704(v42, &qword_27F217318);
  sub_24E601704(v85, &qword_27F217300);
  return sub_24E601704(v84, &qword_27F217318);
}

uint64_t sub_24E6A1418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v87[2] = a4;
  v92 = a3;
  v100 = a5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358);
  MEMORY[0x28223BE20](v89);
  v90 = v87 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217360);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v88 = v87 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217368);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v99 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = v87 - v12;
  v104 = sub_24F9297D8();
  v107 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_24F929888();
  v106 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v91);
  v16 = v87 - v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217370);
  v94 = *(v95 - 8);
  v17 = MEMORY[0x28223BE20](v95);
  v93 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = v87 - v19;
  *&v111 = a1;
  *(&v111 + 1) = a2;
  v20 = sub_24E600AEC();

  v87[1] = v20;
  v21 = sub_24F925E18();
  v23 = v22;
  v25 = v24;
  sub_24F925898();
  v26 = sub_24F925C98();
  v28 = v27;
  v30 = v29;

  sub_24E600B40(v21, v23, v25 & 1);

  v31 = sub_24F9251C8();
  v32 = *(v91 + 36);
  v33 = *MEMORY[0x277CE13B8];
  v34 = sub_24F927748();
  (*(*(v34 - 8) + 104))(&v16[v32], v33, v34);
  *v16 = v31;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v35 = sub_24F925C58();
  v37 = v36;
  LOBYTE(v31) = v38;
  v40 = v39;
  sub_24E600B40(v26, v28, v30 & 1);

  sub_24E601704(v16, &qword_27F213F10);
  *&v111 = v35;
  *(&v111 + 1) = v37;
  LOBYTE(v26) = v31 & 1;
  LOBYTE(v112) = v31 & 1;
  *(&v112 + 1) = v40;
  v41 = *MEMORY[0x277D22070];
  v42 = v107;
  v43 = *(v107 + 104);
  v44 = v102;
  v45 = v104;
  v91 = v107 + 104;
  v87[0] = v43;
  v43(v102, v41, v104);
  v109 = 0u;
  v110 = 0u;
  memset(v108, 0, sizeof(v108));
  v46 = v101;
  sub_24F929818();
  sub_24E601704(v108, &qword_27F2129B0);
  sub_24E601704(&v109, &qword_27F2129B0);
  v47 = *(v42 + 8);
  v107 = v42 + 8;
  v47(v44, v45);
  sub_24F925EE8();
  v48 = *(v106 + 8);
  v106 += 8;
  v48(v46, v103);
  sub_24E600B40(v35, v37, v26);

  v49 = (v92 + *(type metadata accessor for OverlayPlatterLockup(0) + 28));
  v50 = v49[1];
  if (v50)
  {
    *&v111 = *v49;
    *(&v111 + 1) = v50;

    v51 = sub_24F925E18();
    v52 = v48;
    v54 = v53;
    v55 = v47;
    v57 = v56;
    v58 = sub_24F925C98();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    sub_24E600B40(v51, v54, v57 & 1);

    *&v111 = v58;
    *(&v111 + 1) = v60;
    LOBYTE(v112) = v62 & 1;
    *(&v112 + 1) = v64;
    v65 = v90;
    sub_24F9268B8();
    sub_24E600B40(v58, v60, v62 & 1);

    *(v65 + *(v89 + 36)) = sub_24F925198();
    v66 = v102;
    v67 = v104;
    (v87[0])(v102, *MEMORY[0x277D22050], v104);
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v68 = v101;
    sub_24F929818();
    sub_24E601704(&v109, &qword_27F2129B0);
    sub_24E601704(&v111, &qword_27F2129B0);
    v55(v66, v67);
    sub_24E6A62C0();
    v69 = v88;
    sub_24F925EE8();
    v52(v68, v103);
    sub_24E601704(v65, &qword_27F217358);
    v70 = v97;
    v71 = v96;
    v72 = v69;
    v73 = v98;
    (*(v97 + 32))(v96, v72, v98);
    v74 = 0;
    v75 = v73;
    v76 = v70;
  }

  else
  {
    v74 = 1;
    v75 = v98;
    v71 = v96;
    v76 = v97;
  }

  (*(v76 + 56))(v71, v74, 1, v75);
  v77 = v94;
  v78 = *(v94 + 16);
  v79 = v93;
  v80 = v105;
  v81 = v95;
  v78(v93, v105, v95);
  v82 = v99;
  sub_24E60169C(v71, v99, &qword_27F217368);
  v83 = v100;
  v78(v100, v79, v81);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217378);
  sub_24E60169C(v82, &v83[*(v84 + 48)], &qword_27F217368);
  sub_24E601704(v71, &qword_27F217368);
  v85 = *(v77 + 8);
  v85(v80, v81);
  sub_24E601704(v82, &qword_27F217368);
  return (v85)(v79, v81);
}

uint64_t sub_24E6A1E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a2;
  v74 = a4;
  LODWORD(v71) = a3;
  v72 = a1;
  v75 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217270);
  MEMORY[0x28223BE20](v5);
  v7 = (&v54 - v6);
  v67 = sub_24F929888();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217278);
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = &v54 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217280);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v54 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217288);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v60 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_24F91F4A8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217290);
  MEMORY[0x28223BE20](v22);
  v68 = &v54 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217298);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v54 - v28;
  if (v71)
  {

    *v7 = sub_24F926E48();
    swift_storeEnumTagMultiPayload();
    sub_24E6A5458();
    sub_24F924E28();
  }

  else
  {
    v56 = v7;
    v57 = v22;
    v71 = v5;
    sub_24F91F488();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_24E601704(v14, &qword_27F228530);
      v30 = 1;
      v31 = v70;
      v32 = v69;
      v33 = v56;
      v34 = v68;
    }

    else
    {
      v35 = *(v16 + 32);
      v36 = v21;
      v55 = v21;
      v54 = v15;
      v35(v21, v14, v15);
      v37 = v16;
      (*(v16 + 16))(v19, v36, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2172B8);
      v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2172C0);
      v39 = sub_24E6A55A4();
      *&v77 = v38;
      *(&v77 + 1) = v39;
      swift_getOpaqueTypeConformance2();
      v40 = v58;
      sub_24F9277C8();
      v77 = 0u;
      v78 = 0u;
      v79 = 0;
      v80 = MEMORY[0x277CE1120];
      v81 = sub_24E63E454();
      v41 = sub_24E602068(&qword_27F2172A8, &qword_27F217278);
      v42 = sub_24E620DE8();
      v43 = v61;
      v44 = v62;
      sub_24F926178();
      sub_24E6A56E8(&v77);
      (*(v59 + 8))(v40, v44);
      v77 = 0u;
      v78 = 0u;
      memset(v76, 0, sizeof(v76));
      v45 = v65;
      sub_24F929828();
      sub_24E601704(v76, &qword_27F2129B0);
      sub_24E601704(&v77, &qword_27F2129B0);
      *&v77 = v44;
      *(&v77 + 1) = &type metadata for StrokeFocusButtonStyle;
      *&v78 = v41;
      *(&v78 + 1) = v42;
      swift_getOpaqueTypeConformance2();
      v46 = v60;
      v47 = v64;
      sub_24F925EE8();
      (*(v66 + 8))(v45, v67);
      (*(v63 + 8))(v43, v47);
      (*(v37 + 8))(v55, v54);
      v32 = v69;
      v34 = v68;
      v31 = v70;
      (*(v69 + 32))(v68, v46, v70);
      v30 = 0;
      v33 = v56;
    }

    (*(v32 + 56))(v34, v30, 1, v31);
    sub_24E60169C(v34, v33, &qword_27F217290);
    swift_storeEnumTagMultiPayload();
    sub_24E6A5458();
    sub_24F924E28();
    sub_24E601704(v34, &qword_27F217290);
  }

  v48 = *(*(v74 + *(type metadata accessor for OverlayPlatterLockup(0) + 44)) + 16);
  v49 = v48 == 0;
  v50 = v48 != 0;
  sub_24E60169C(v29, v27, &qword_27F217298);
  v51 = v75;
  sub_24E60169C(v27, v75, &qword_27F217298);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2172B0) + 48);
  *v52 = 0;
  *(v52 + 8) = v50;
  *(v52 + 9) = v49;
  sub_24E601704(v29, &qword_27F217298);
  return sub_24E601704(v27, &qword_27F217298);
}

uint64_t sub_24E6A2808()
{
  v0 = sub_24F9248C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2172C0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v16 - v5);
  v7 = sub_24F926DF8();
  v8 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v10 = *MEMORY[0x277CE1048];
  v11 = sub_24F926E78();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  *v6 = v7;
  LOBYTE(v7) = sub_24F925808();
  v12 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2172D8) + 36);
  *v12 = v7;
  *(v12 + 8) = xmmword_24F944DF0;
  *(v12 + 24) = xmmword_24F944E00;
  v12[40] = 0;
  v13 = v6 + *(v4 + 36);
  v14 = type metadata accessor for GradientBackground(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2172E8) + 40)] = 0;
  sub_24F9248B8();
  sub_24E6A55A4();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v1 + 8))(v3, v0);
  return sub_24E601704(v6, &qword_27F2172C0);
}

uint64_t sub_24E6A2AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v76 = a3;
  v81 = a4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v74);
  v75 = &v73 - v6;
  v105 = a1;
  v106 = a2;
  v7 = sub_24E600AEC();

  v73 = v7;
  v8 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  sub_24F9258D8();
  v13 = sub_24F925C98();
  v15 = v14;
  v17 = v16;

  sub_24E600B40(v8, v10, v12 & 1);

  sub_24F925958();
  v18 = sub_24F925B78();
  v20 = v19;
  v22 = v21;
  sub_24E600B40(v13, v15, v17 & 1);

  LODWORD(v105) = sub_24F925198();
  v82 = sub_24F925C58();
  v80 = v23;
  LOBYTE(v7) = v24;
  v26 = v25;
  sub_24E600B40(v18, v20, v22 & 1);

  v79 = sub_24F9257F8();
  v77 = v7 & 1;
  LOBYTE(v105) = v7 & 1;
  LOBYTE(v99[0]) = 1;
  KeyPath = swift_getKeyPath();
  v27 = (v76 + *(type metadata accessor for OverlayPlatterLockup(0) + 36));
  v28 = v27[1];
  if (v28)
  {
    v105 = *v27;
    v106 = v28;

    v29 = sub_24F925E18();
    v31 = v30;
    v76 = v26;
    v33 = v32;
    sub_24F925898();
    v34 = sub_24F925C98();
    v36 = v35;
    v38 = v37;

    sub_24E600B40(v29, v31, v33 & 1);

    LODWORD(v29) = sub_24F9251C8();
    v39 = *(v74 + 36);
    v40 = *MEMORY[0x277CE13B8];
    v41 = sub_24F927748();
    v42 = v75;
    (*(*(v41 - 8) + 104))(&v75[v39], v40, v41);
    *v42 = v29;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    v43 = sub_24F925C58();
    v45 = v44;
    LOBYTE(v29) = v46;
    v48 = v47;
    sub_24E600B40(v34, v36, v38 & 1);

    v49 = v42;
    v26 = v76;
    sub_24E601704(v49, &qword_27F213F10);
    v50 = sub_24F9257F8();
    LOBYTE(v105) = v29 & 1;
    LOBYTE(v99[0]) = 1;
    v51 = v29 & 1;
    v28 = swift_getKeyPath();
    v52 = 1;
    v53 = v48;
    v54 = v45;
    v55 = v43;
    v56 = v50;
    v57 = 1;
  }

  else
  {
    v55 = 0;
    v54 = 0;
    v53 = 0;
    v57 = 0;
    v52 = 0;
    v56 = 0;
    v51 = 0;
  }

  v58 = v80;
  *&v93 = v82;
  *(&v93 + 1) = v80;
  v59 = v77;
  LOBYTE(v94) = v77;
  *(&v94 + 1) = *v119;
  DWORD1(v94) = *&v119[3];
  *(&v94 + 1) = v26;
  v60 = v79;
  LOBYTE(v95[0]) = v79;
  *(v95 + 1) = *v118;
  DWORD1(v95[0]) = *&v118[3];
  *(v95 + 8) = 0u;
  *(&v95[1] + 8) = 0u;
  BYTE8(v95[2]) = 1;
  HIDWORD(v95[2]) = *(v120 + 3);
  *(&v95[2] + 9) = v120[0];
  v61 = KeyPath;
  *&v95[3] = KeyPath;
  BYTE8(v95[3]) = 1;
  v83 = v93;
  v84 = v94;
  *(v87 + 9) = *(&v95[2] + 9);
  v85 = v95[0];
  v86 = v95[1];
  *&v96 = v55;
  *(&v96 + 1) = v54;
  *&v97 = v51;
  *(&v97 + 1) = v53;
  *(&v98[1] + 8) = 0u;
  *(v98 + 8) = 0u;
  *&v98[0] = v56;
  *(&v98[2] + 1) = v52;
  *&v98[3] = v28;
  BYTE8(v98[3]) = v57;
  v87[0] = v95[2];
  v88 = v96;
  v89 = v97;
  *(v92 + 9) = *(&v98[2] + 9);
  v91 = v98[1];
  v92[0] = v98[2];
  v90 = v98[0];
  v62 = v93;
  v63 = v94;
  v64 = v95[1];
  v65 = v81;
  v81[2] = v95[0];
  v65[3] = v64;
  *v65 = v62;
  v65[1] = v63;
  v66 = v87[0];
  v67 = v87[1];
  v68 = v89;
  v65[6] = v88;
  v65[7] = v68;
  v65[4] = v66;
  v65[5] = v67;
  v69 = v90;
  v70 = v91;
  v71 = v92[0];
  *(v65 + 169) = *(v92 + 9);
  v65[9] = v70;
  v65[10] = v71;
  v65[8] = v69;
  v99[0] = v55;
  v99[1] = v54;
  v99[2] = v51;
  v99[3] = v53;
  v100 = 0u;
  v101 = 0u;
  v99[4] = v56;
  v102 = v52;
  v103 = v28;
  v104 = v57;
  sub_24E60169C(&v93, &v105, &qword_27F217150);
  sub_24E60169C(&v96, &v105, &qword_27F217158);
  sub_24E601704(v99, &qword_27F217158);
  v105 = v82;
  v106 = v58;
  v107 = v59;
  *v108 = *v119;
  *&v108[3] = *&v119[3];
  v109 = v26;
  v110 = v60;
  *v111 = *v118;
  *&v111[3] = *&v118[3];
  v112 = 0u;
  v113 = 0u;
  v114 = 1;
  *&v115[3] = *(v120 + 3);
  *v115 = v120[0];
  v116 = v61;
  v117 = 1;
  return sub_24E601704(&v105, &qword_27F217150);
}

uint64_t sub_24E6A30CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v53 = a2;
  v60 = a3;
  v61 = sub_24F929888();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_24F9241F8();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217108);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2170F0);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2170E8);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v51 - v20;
  v21 = sub_24F9232F8();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v52 = a1;
  sub_24E60169C(a1 + 40, &v65, &qword_27F2169E8);
  sub_24E612C80(&v65, &v70);
  sub_24E6A4D34(a1, &v65);
  v22 = swift_allocObject();
  v23 = v68;
  *(v22 + 48) = v67;
  *(v22 + 64) = v23;
  *(v22 + 80) = v69;
  v24 = v66;
  *(v22 + 16) = v65;
  *(v22 + 32) = v24;
  *(v22 + 96) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217160);
  sub_24E6A4DC0();
  sub_24F921788();
  sub_24F9241E8();
  sub_24E602068(&qword_27F217110, &qword_27F217108);
  sub_24E69C7D8(&qword_27F212838, MEMORY[0x277CDDB18]);
  v25 = v54;
  sub_24F926178();
  (*(v7 + 8))(v9, v25);
  (*(v14 + 8))(v16, v13);
  v26 = *(v17 + 36);
  v54 = v19;
  v27 = &v19[v26];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217118) + 28);
  v29 = *MEMORY[0x277CDF420];
  v30 = sub_24F9234F8();
  v31 = v29;
  v32 = v52;
  (*(*(v30 - 8) + 104))(v27 + v28, v31, v30);
  *v27 = swift_getKeyPath();
  v33 = *(v32 + 32);
  if (v33 == 2)
  {
    *(&v66 + 1) = type metadata accessor for OverlayPlatterLockup(0);
    *&v67 = sub_24E69C7D8(&qword_27F217048, type metadata accessor for OverlayPlatterLockup);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v65);
    v35 = v53;
LABEL_6:
    sub_24E6A53F0(v35, boxed_opaque_existential_1, type metadata accessor for OverlayPlatterLockup);
    sub_24E60169C(v32 + 40, &v62, &qword_27F2169E8);
    sub_24E612C80(&v62, &v70);
    goto LABEL_7;
  }

  v36 = v53;
  if ((v33 & 1) == 0)
  {
    *(&v66 + 1) = type metadata accessor for OverlayPlatterLockup(0);
    *&v67 = sub_24E69C7D8(&qword_27F217048, type metadata accessor for OverlayPlatterLockup);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v65);
    v35 = v36;
    goto LABEL_6;
  }

  *&v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v72 = 0;
  v71 = 0u;
  v70 = 0u;
LABEL_7:
  v63 = sub_24F9271D8();
  v64 = sub_24E69C7D8(&qword_27F214E38, MEMORY[0x277CE1260]);
  v37 = __swift_allocate_boxed_opaque_existential_1(&v62);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_24F924B38();
  v40 = (*(*(v39 - 8) + 104))(v37, v38, v39);
  MEMORY[0x28223BE20](v40);
  *(&v51 - 4) = &v65;
  *(&v51 - 3) = &v70;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2170F8);
  v42 = sub_24E6A4AA4();
  v43 = sub_24E6A4C1C();
  v44 = sub_24E6A4C70();
  v50 = v44;
  v45 = v55;
  v46 = v54;
  sub_24F926B08();
  sub_24E601704(v46, &qword_27F2170F0);
  sub_24E601704(&v70, qword_27F21B590);
  sub_24E601704(&v62, &qword_27F2171C8);
  sub_24E601704(&v65, &qword_27F2171D0);
  v65 = 0u;
  v66 = 0u;
  v71 = 0u;
  v70 = 0u;
  v47 = v58;
  sub_24F929828();
  sub_24E601704(&v70, &qword_27F2129B0);
  sub_24E601704(&v65, &qword_27F2129B0);
  *&v65 = v17;
  *(&v65 + 1) = &type metadata for GameOverlayViewPredicate;
  *&v66 = v41;
  *(&v66 + 1) = v42;
  *&v67 = v43;
  *(&v67 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v48 = v57;
  sub_24F925EE8();
  (*(v59 + 8))(v47, v61);
  return (*(v56 + 8))(v45, v48);
}

uint64_t sub_24E6A3A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217198);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217188);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217178);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v30[-v14];
  v32 = a1;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2171D8);
  sub_24E6A61B8(&qword_27F2171E0, &qword_27F2171D8, &unk_24F9EDBB0, sub_24E62A864);
  sub_24F926EA8();
  sub_24F927618();
  sub_24F9238C8();
  v16 = &v7[*(v5 + 44)];
  v17 = v34;
  *v16 = v33;
  v16[1] = v17;
  v16[2] = v35;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, v11, &qword_27F217198);
  v18 = &v11[*(v9 + 44)];
  v19 = v41;
  v18[4] = v40;
  v18[5] = v19;
  v18[6] = v42;
  v20 = v37;
  *v18 = v36;
  v18[1] = v20;
  v21 = v39;
  v18[2] = v38;
  v18[3] = v21;
  v22 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24E6009C8(v11, v15, &qword_27F217188);
  *&v15[*(v13 + 44)] = v22;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217160) + 36);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_24F924B38();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2171C0);
  v27 = *(v26 + 36);
  v28 = type metadata accessor for GradientBackground(0);
  (*(*(v28 - 8) + 56))(v23 + v27, 1, 1, v28);
  *(v23 + *(v26 + 40)) = 0;
  return sub_24E6009C8(v15, a2, &qword_27F217178);
}

uint64_t sub_24E6A3E04@<X0>(uint64_t a1@<X8>)
{
  sub_24E600AEC();

  v2 = sub_24F925E18();
  v4 = v3;
  v6 = v5;
  sub_24F925898();
  v7 = sub_24F925C98();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_24E600B40(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_24E6A3EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - v6);
  if (*(a1 + 8))
  {
    v16 = v5;

    v8 = sub_24F926E48();
    v9 = (v7 + *(v4 + 36));
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
    v11 = *MEMORY[0x277CE1050];
    v12 = sub_24F926E78();
    (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
    *v9 = swift_getKeyPath();
    *v7 = v8;
    sub_24E6009C8(v7, a2, &qword_27F22DF20);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v14 = *(v5 + 56);

    return v14(a2, 1, 1, v4);
  }
}

uint64_t sub_24E6A40D4(uint64_t a1)
{
  v3 = sub_24F925508();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217050);
  MEMORY[0x28223BE20](v7);
  v9 = &v21[-v8];
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  *v9 = sub_24F924C88();
  *(v9 + 1) = 0x402C000000000000;
  v9[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217058);
  sub_24E69EB88(a1, v10, v11, &v9[*(v13 + 44)], v12);
  v14 = sub_24F925808();
  v15 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217060) + 36)];
  *v15 = v14;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 1;
  v16 = &v9[*(v7 + 36)];
  v17 = *(sub_24F924258() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_24F924B38();
  (*(*(v19 - 8) + 104))(&v16->i8[v17], v18, v19);
  *v16 = vdupq_n_s64(0x4040000000000000uLL);
  sub_24F9254E8();
  sub_24E6A44EC();
  sub_24F926678();
  (*(v4 + 8))(v6, v3);
  return sub_24E601704(v9, &qword_27F217050);
}

uint64_t sub_24E6A4338()
{
  sub_24E62AB1C(*v0, *(v0 + 8));
  sub_24E69EB34();
  return sub_24F9218E8();
}

unint64_t sub_24E6A43EC()
{
  result = qword_27F217040;
  if (!qword_27F217040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217040);
  }

  return result;
}

unint64_t sub_24E6A44EC()
{
  result = qword_27F217068;
  if (!qword_27F217068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217050);
    sub_24E6A45A4();
    sub_24E602068(&qword_27F217098, &qword_27F2170A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217068);
  }

  return result;
}

unint64_t sub_24E6A45A4()
{
  result = qword_27F217070;
  if (!qword_27F217070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217078);
    sub_24E6A465C();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217070);
  }

  return result;
}

unint64_t sub_24E6A465C()
{
  result = qword_27F217080;
  if (!qword_27F217080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217060);
    sub_24E602068(&qword_27F217088, &qword_27F217090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217080);
  }

  return result;
}

double sub_24E6A4714(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 241) = 0u;
  return result;
}

uint64_t sub_24E6A4760()
{
  v1 = type metadata accessor for OverlayPlatterLockup(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);
  v3 = v1[5];
  type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v4 = sub_24F9289E8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  if (*(v2 + v1[10] + 16) != 255)
  {
    sub_24E63FFA4();
  }

  v5 = v2 + v1[12];
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  v6 = v2 + v1[13];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  v7 = v1[14];
  v8 = sub_24F92A6D8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  v10 = v1[15];
  v11 = sub_24F929608();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_24E6A4A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OverlayPlatterLockup(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_24E6A30CC(a1, v7, a2, v6);
}

unint64_t sub_24E6A4AA4()
{
  result = qword_27F217100;
  if (!qword_27F217100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217108);
    sub_24F9241F8();
    sub_24E602068(&qword_27F217110, &qword_27F217108);
    sub_24E69C7D8(&qword_27F212838, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F236280, &qword_27F217118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217100);
  }

  return result;
}

unint64_t sub_24E6A4C1C()
{
  result = qword_27F217120;
  if (!qword_27F217120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217120);
  }

  return result;
}

unint64_t sub_24E6A4C70()
{
  result = qword_27F217128;
  if (!qword_27F217128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170F8);
    sub_24E6A4AA4();
    sub_24E69C7D8(&qword_27F217130, type metadata accessor for ZoomableViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217128);
  }

  return result;
}

uint64_t sub_24E6A4D6C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

unint64_t sub_24E6A4DC0()
{
  result = qword_27F217168;
  if (!qword_27F217168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217160);
    sub_24E6A4E78();
    sub_24E602068(&qword_27F2171B8, &qword_27F2171C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217168);
  }

  return result;
}

unint64_t sub_24E6A4E78()
{
  result = qword_27F217170;
  if (!qword_27F217170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217178);
    sub_24E6A4F30();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217170);
  }

  return result;
}

unint64_t sub_24E6A4F30()
{
  result = qword_27F217180;
  if (!qword_27F217180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217188);
    sub_24E6A4FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217180);
  }

  return result;
}

unint64_t sub_24E6A4FBC()
{
  result = qword_27F217190;
  if (!qword_27F217190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217198);
    sub_24E602068(&qword_27F2171A0, &qword_27F2171A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217190);
  }

  return result;
}

uint64_t sub_24E6A50A0()
{
  v1 = type metadata accessor for OverlayPlatterLockup(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  sub_24E62A5EC(*(v0 + 16), *(v0 + 24));
  v3 = v0 + v2;
  __swift_destroy_boxed_opaque_existential_1(v0 + v2);
  v4 = v1[5];
  type metadata accessor for OverlayPlatterLockup.OverlayPlatterAppIcon(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v5 = sub_24F9289E8();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  if (*(v3 + v1[10] + 16) != 255)
  {
    sub_24E63FFA4();
  }

  v6 = v3 + v1[12];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  v7 = v3 + v1[13];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v8 = v1[14];
  v9 = sub_24F92A6D8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v1[15];
  v12 = sub_24F929608();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  return swift_deallocObject();
}

uint64_t sub_24E6A536C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OverlayPlatterLockup(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_24E6A003C(v4, v5, v7, a1, v6);
}

uint64_t sub_24E6A53F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E6A5458()
{
  result = qword_27F2172A0;
  if (!qword_27F2172A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217278);
    sub_24E602068(&qword_27F2172A8, &qword_27F217278);
    sub_24E620DE8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2172A0);
  }

  return result;
}

unint64_t sub_24E6A55A4()
{
  result = qword_27F2172C8;
  if (!qword_27F2172C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2172C0);
    sub_24E6A565C();
    sub_24E602068(&qword_27F2172E0, &qword_27F2172E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2172C8);
  }

  return result;
}

unint64_t sub_24E6A565C()
{
  result = qword_27F2172D0;
  if (!qword_27F2172D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2172D8);
    sub_24E62A864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2172D0);
  }

  return result;
}

uint64_t sub_24E6A573C(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2173D8);
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2173E0);
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2173E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_24E6A6674();
  v12 = v30;
  sub_24F92D108();
  if (!v12)
  {
    v26 = 0;
    v30 = v8;
    v13 = sub_24F92CC78();
    v14 = (2 * *(v13 + 16)) | 1;
    v32 = v13;
    v33 = v13 + 32;
    v34 = 0;
    v35 = v14;
    v15 = sub_24E643430();
    v16 = v7;
    if (v15 == 2 || v34 != v35 >> 1)
    {
      v19 = sub_24F92C918();
      swift_allocError();
      v8 = v7;
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v21 = &type metadata for OverlayPlatterLockup.OverlayPlatterAccessory;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
      swift_willThrow();
      (*(v30 + 8))(v10, v7);
    }

    else
    {
      v36 = v15;
      if (v15)
      {
        v37 = 1;
        sub_24E6A66C8();
        v17 = v26;
        sub_24F92CBA8();
        v18 = v30;
        if (!v17)
        {
          v25 = v27;
          v8 = sub_24F92CC28();
          (*(v29 + 8))(v3, v25);
          (*(v18 + 8))(v10, v16);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      else
      {
        v37 = 0;
        sub_24E6A671C();
        v23 = v26;
        sub_24F92CBA8();
        v24 = v30;
        if (!v23)
        {
          v8 = sub_24F92CC28();
          (*(v28 + 8))(v6, v4);
          (*(v24 + 8))(v10, v16);
          goto LABEL_8;
        }
      }

      (*(v30 + 8))(v10, v16);
    }

LABEL_8:
    swift_unknownObjectRelease();
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v8;
}

uint64_t sub_24E6A5C70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5A656C6261736964 && a2 == 0xEF656C62616D6F6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E6A5DDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6349707061 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6964616568 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED00007478655479 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E496E6F74747562 && a2 == 0xEE007473694C6F66 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6553726564616568 && a2 == 0xEB00000000657567 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E6A61B8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24E6A6234()
{
  result = qword_27F217330;
  if (!qword_27F217330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217330);
  }

  return result;
}

unint64_t sub_24E6A62C0()
{
  result = qword_27F217380;
  if (!qword_27F217380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217358);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F217388, &qword_27F217390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217380);
  }

  return result;
}

unint64_t sub_24E6A63A8()
{
  result = qword_27F2173A0;
  if (!qword_27F2173A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2173A0);
  }

  return result;
}

uint64_t sub_24E6A63FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E6A645C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E6A64C4()
{
  result = qword_27F2173B0;
  if (!qword_27F2173B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2173B0);
  }

  return result;
}

unint64_t sub_24E6A6518()
{
  result = qword_27F2173B8;
  if (!qword_27F2173B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170D0);
    sub_24E6A659C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2173B8);
  }

  return result;
}

unint64_t sub_24E6A659C()
{
  result = qword_27F2173C0;
  if (!qword_27F2173C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2173C0);
  }

  return result;
}

unint64_t sub_24E6A65F0()
{
  result = qword_27F2173D0;
  if (!qword_27F2173D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2173D0);
  }

  return result;
}

unint64_t sub_24E6A6674()
{
  result = qword_27F2173F0;
  if (!qword_27F2173F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2173F0);
  }

  return result;
}

unint64_t sub_24E6A66C8()
{
  result = qword_27F2173F8;
  if (!qword_27F2173F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2173F8);
  }

  return result;
}

unint64_t sub_24E6A671C()
{
  result = qword_27F217400;
  if (!qword_27F217400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217400);
  }

  return result;
}

unint64_t sub_24E6A6770()
{
  result = qword_27F217420;
  if (!qword_27F217420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217420);
  }

  return result;
}

unint64_t sub_24E6A67C4()
{
  result = qword_27F217428;
  if (!qword_27F217428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217428);
  }

  return result;
}
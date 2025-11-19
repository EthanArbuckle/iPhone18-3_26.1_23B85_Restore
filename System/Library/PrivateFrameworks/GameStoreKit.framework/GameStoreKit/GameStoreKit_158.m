uint64_t sub_24F6754F8@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ColorGroup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u)
  {
    if (a1 == 3)
    {

      v26 = 3;
LABEL_17:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
      (*(*(v28 - 8) + 56))(v17, v26, 5, v28);
      if ((a2 & 1) == 0)
      {
        return sub_24F67A17C(v17, a4, type metadata accessor for CardContentBackgroundStyle);
      }

      sub_24F67A058(v17, type metadata accessor for CardContentBackgroundStyle);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
      return (*(*(v29 - 8) + 56))(a4, 5, 5, v29);
    }

    if (a1 == 4)
    {
      sub_24E60169C(a3, v10, &qword_27F2190D8);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_24E601704(v10, &qword_27F2190D8);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        return (*(*(v23 - 8) + 56))(a4, 1, 5, v23);
      }

      else
      {
        sub_24F67A17C(v10, v14, type metadata accessor for ColorGroup);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        v31 = *(v30 + 48);
        sub_24F67A17C(v14, a4, type metadata accessor for ColorGroup);
        (*(v12 + 56))(a4, 0, 1, v11);
        *(a4 + v31) = 1;
        return (*(*(v30 - 8) + 56))(a4, 0, 5, v30);
      }
    }

LABEL_9:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
    v19 = *(*(v25 - 8) + 56);
    v20 = v25;
    v21 = a4;
    v22 = 1;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    v27 = sub_24F92CE08();

    if (v27)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
  v19 = *(*(v18 - 8) + 56);
  v20 = v18;
  v21 = a4;
  v22 = 2;
LABEL_10:

  return v19(v21, v22, 5, v20);
}

uint64_t sub_24F6759A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[0] = a1;
  v15[1] = a2;
  v2 = sub_24F924B38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F921AF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F9289E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CardLayoutMetrics(0);
  sub_24F9289C8();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0118], v2);
  sub_24F9219A8();
  (*(v3 + 8))(v5, v2);
  sub_24F679730(&qword_27F214C28, MEMORY[0x277D21C48]);
  sub_24F679730(&qword_27F214C30, MEMORY[0x277D7EBE8]);
  sub_24F925ED8();
  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24F675C90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BDE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  sub_24F6760F4(v2, &v30 - v9);
  v11 = type metadata accessor for AppEventCardConfiguration.VisualView(0);
  v12 = v2 + *(v11 + 24);
  v13 = *v12;
  v14 = *(v12 + 8);

  if ((v14 & 1) == 0)
  {
    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v13 = v31;
  }

  swift_getKeyPath();
  v31 = v13;
  sub_24F679730(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v16 = *(v13 + 16);

  v17 = *(v2 + *(v11 + 20));
  if (v17 == 3)
  {

    sub_24F925868();
  }

  else
  {
    v18 = sub_24F92CE08();

    if ((v18 & 1) == 0)
    {
      if (v17 <= 2 || v17 == 4)
      {
        v19 = sub_24F92CE08();

        if ((v19 & 1) == 0)
        {
          sub_24F925818();
          goto LABEL_13;
        }
      }

      else
      {
      }

      sub_24F925808();
      goto LABEL_13;
    }

    sub_24F925868();
  }

LABEL_13:
  v20 = sub_24EA91914(v16);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_24F925808();
  sub_24E6009C8(v10, a1, &qword_27F24BDE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BDF0);
  v29 = a1 + *(result + 36);
  *v29 = v27;
  *(v29 + 8) = v20;
  *(v29 + 16) = v22;
  *(v29 + 24) = v24;
  *(v29 + 32) = v26;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_24F6760F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BDF8);
  MEMORY[0x28223BE20](v114);
  v116 = &v106 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE00);
  MEMORY[0x28223BE20](v115);
  v113 = &v106 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v108 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v6;
  MEMORY[0x28223BE20](v7);
  v131 = &v106 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE08);
  MEMORY[0x28223BE20](v111);
  v112 = &v106 - v9;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE10);
  MEMORY[0x28223BE20](v146);
  v110 = &v106 - v10;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE18);
  MEMORY[0x28223BE20](v124);
  v118 = &v106 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE20);
  MEMORY[0x28223BE20](v119);
  v121 = &v106 - v12;
  v130 = type metadata accessor for GSKVideoView(0);
  MEMORY[0x28223BE20](v130);
  v129 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE28);
  MEMORY[0x28223BE20](v120);
  v122 = &v106 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE30);
  MEMORY[0x28223BE20](v142);
  v117 = &v106 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v16 - 8);
  v128 = &v106 - v17;
  v126 = sub_24F9289E8();
  v125 = *(v126 - 8);
  v18 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v106 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v123 = &v106 - v20;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE38);
  MEMORY[0x28223BE20](v144);
  v145 = &v106 - v21;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE40);
  MEMORY[0x28223BE20](v139);
  v140 = &v106 - v22;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE48);
  MEMORY[0x28223BE20](v143);
  v141 = &v106 - v23;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE50);
  MEMORY[0x28223BE20](v135);
  v137 = &v106 - v24;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE58);
  MEMORY[0x28223BE20](v136);
  v127 = &v106 - v25;
  v26 = type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE60);
  MEMORY[0x28223BE20](v133);
  v134 = &v106 - v29;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE68);
  MEMORY[0x28223BE20](v138);
  v132 = &v106 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v106 - v32;
  v34 = type metadata accessor for GSKVideo();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for CommonCardAttributes(0);
  v39 = a1;
  v40 = (a1 + *(v38 + 36));
  v41 = *v40;
  if (*v40)
  {
    v42 = v40[1];
    v43 = *(v39 + *(type metadata accessor for AppEventCardConfiguration.VisualView(0) + 20));
    *v28 = v41;
    *(v28 + 1) = v42;
    v28[16] = v43;
    v44 = v26[6];
    *&v28[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    v45 = v26[7];
    *&v28[v45] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v46 = &v28[v26[8]];
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    if (v43 < 4 || v43 == 4)
    {
      v68 = sub_24F92CE08();
    }

    else
    {
      v68 = 1;
    }

    v69 = v134;
    sub_24E924BD8(v68 & 1);
    sub_24F67A058(v28, type metadata accessor for CardElementView.PrimaryMixedMediaView);
    if (v43 > 2)
    {
      v55 = v147;
      if (v43 != 3 && v43 != 4)
      {

        v149 = sub_24F925048();
        v150 = MEMORY[0x277CE0420];
        __swift_allocate_boxed_opaque_existential_1(&v148);
        sub_24F925258();
        v70 = v132;
        goto LABEL_22;
      }
    }

    else
    {
      v55 = v147;
    }

    v70 = v132;
    v71 = sub_24F92CE08();

    v149 = sub_24F925048();
    v150 = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(&v148);
    sub_24F925258();
    if ((v71 & 1) == 0)
    {
      sub_24E60169C(v69, v137, &qword_27F24BE60);
      swift_storeEnumTagMultiPayload();
      sub_24F67AE2C();
      sub_24F67AEB8();
      sub_24F924E28();
LABEL_23:
      sub_24E601704(v69, &qword_27F24BE60);
      __swift_destroy_boxed_opaque_existential_1(&v148);
      sub_24E60169C(v70, v140, &qword_27F24BE68);
      swift_storeEnumTagMultiPayload();
      sub_24F67ADA0();
      sub_24F67AF74();
      v73 = v141;
      sub_24F924E28();
      sub_24E60169C(v73, v145, &qword_27F24BE48);
      swift_storeEnumTagMultiPayload();
      sub_24F67AD14();
      sub_24F67B148();
      sub_24F924E28();
      sub_24E601704(v73, &qword_27F24BE48);
      sub_24E601704(v70, &qword_27F24BE68);
LABEL_61:
      v54 = 0;
      goto LABEL_62;
    }

LABEL_22:
    v72 = v127;
    sub_24E615E00(&v148, &v127[*(v136 + 36)]);
    sub_24E60169C(v69, v72, &qword_27F24BE60);
    sub_24E60169C(v72, v137, &qword_27F24BE58);
    swift_storeEnumTagMultiPayload();
    sub_24F67AE2C();
    sub_24F67AEB8();
    sub_24F924E28();
    sub_24E601704(v72, &qword_27F24BE58);
    goto LABEL_23;
  }

  v47 = v38;
  v48 = v128;
  v49 = v130;
  v50 = v131;
  v137 = v37;
  v51 = v129;
  sub_24E60169C(v39 + *(v38 + 32), v33, &qword_27F213FB8);
  if ((*(v35 + 48))(v33, 1, v34) != 1)
  {
    v56 = v33;
    v57 = v137;
    sub_24F67A17C(v56, v137, type metadata accessor for GSKVideo);
    sub_24F67A0B8(v57, v51, type metadata accessor for GSKVideo);
    v58 = v49[5];
    v59 = type metadata accessor for VideoConfiguration();
    (*(*(v59 - 8) + 56))(v51 + v58, 1, 1, v59);
    v60 = sub_24F9238D8();
    v61 = (v51 + v49[12]);
    type metadata accessor for GSKVideoPlaybackCoordinator();
    sub_24F679730(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
    *v61 = sub_24F9243D8();
    v61[1] = v62;
    *(v51 + v49[9]) = 1;
    *(v51 + v49[10]) = v60;
    *(v51 + v49[11]) = 0;
    *(v51 + v49[6]) = 0x3FE8000000000000;
    *(v51 + v49[7]) = 0x3FE0000000000000;
    v63 = v51 + v49[8];
    *(v63 + 32) = 0u;
    *(v63 + 48) = 0u;
    *v63 = 0u;
    *(v63 + 16) = 0u;
    *(v63 + 64) = 5;
    v64 = *(v39 + *(type metadata accessor for AppEventCardConfiguration.VisualView(0) + 20));
    v55 = v147;
    if (v64 > 2)
    {
      v65 = v117;
      v66 = v118;
      v67 = v119;
      if (v64 != 3)
      {
        v93 = v122;
        v94 = v121;
        if (v64 != 4)
        {

          sub_24E924EF4(1);
          sub_24F67A058(v51, type metadata accessor for GSKVideoView);

          v149 = sub_24F925048();
          v150 = MEMORY[0x277CE0420];
          __swift_allocate_boxed_opaque_existential_1(&v148);
          sub_24F925258();
          v96 = v67;
          v97 = v65;
          goto LABEL_42;
        }

LABEL_33:
        v95 = sub_24F92CE08();

        sub_24E924EF4(v95 & 1);
        sub_24F67A058(v51, type metadata accessor for GSKVideoView);
        if (v64 <= 1)
        {
          v96 = v67;
          if (!v64)
          {
            v97 = v65;
            goto LABEL_39;
          }
        }

        else
        {
          v96 = v67;
          if (v64 != 2)
          {
            v97 = v65;
            goto LABEL_39;
          }
        }

        v97 = v65;
LABEL_39:
        v98 = sub_24F92CE08();

        v149 = sub_24F925048();
        v150 = MEMORY[0x277CE0420];
        __swift_allocate_boxed_opaque_existential_1(&v148);
        sub_24F925258();
        if ((v98 & 1) == 0)
        {
          sub_24E60169C(v93, v66, &qword_27F24BE28);
          swift_storeEnumTagMultiPayload();
          sub_24F67B000();
          sub_24F67B08C();
          sub_24F924E28();
LABEL_43:
          sub_24E601704(v93, &qword_27F24BE28);
          __swift_destroy_boxed_opaque_existential_1(&v148);
          sub_24E60169C(v97, v140, &qword_27F24BE30);
          swift_storeEnumTagMultiPayload();
          sub_24F67ADA0();
          sub_24F67AF74();
          v99 = v141;
          sub_24F924E28();
          sub_24E60169C(v99, v145, &qword_27F24BE48);
          swift_storeEnumTagMultiPayload();
          sub_24F67AD14();
          sub_24F67B148();
          sub_24F924E28();
          sub_24E601704(v99, &qword_27F24BE48);
          sub_24E601704(v97, &qword_27F24BE30);
          sub_24F67A058(v137, type metadata accessor for GSKVideo);
          goto LABEL_61;
        }

LABEL_42:
        sub_24E615E00(&v148, v94 + *(v96 + 36));
        sub_24E60169C(v93, v94, &qword_27F24BE28);
        sub_24E60169C(v94, v66, &qword_27F24BE20);
        swift_storeEnumTagMultiPayload();
        sub_24F67B000();
        sub_24F67B08C();
        sub_24F924E28();
        sub_24E601704(v94, &qword_27F24BE20);
        goto LABEL_43;
      }
    }

    else
    {
      v65 = v117;
      v66 = v118;
      v67 = v119;
    }

    v93 = v122;
    v94 = v121;
    goto LABEL_33;
  }

  sub_24E601704(v33, &qword_27F213FB8);
  sub_24E60169C(v39 + *(v47 + 28), v48, &qword_27F213FB0);
  v52 = v125;
  v53 = v126;
  if ((*(v125 + 48))(v48, 1, v126) != 1)
  {
    v142 = *(v52 + 32);
    v74 = v123;
    v142(v123, v48, v53);
    v75 = sub_24F922348();
    v76 = v50;
    (*(*(v75 - 8) + 56))(v50, 1, 1, v75);
    v141 = *MEMORY[0x277CEE240];
    v77 = v53;
    v78 = v106;
    (*(v52 + 16))(v106, v74, v53);
    v79 = v76;
    v80 = v107;
    sub_24E6009C8(v79, v107, &qword_27F214148);
    v81 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v82 = (v18 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = (*(v108 + 80) + v82 + 8) & ~*(v108 + 80);
    v84 = v39;
    v85 = v83 + v109;
    v86 = swift_allocObject();
    v142((v86 + v81), v78, v77);
    v87 = v141;
    *(v86 + v82) = v141;
    sub_24E6009C8(v80, v86 + v83, &qword_27F214148);
    *(v86 + v85) = 1;
    v88 = *(v84 + *(type metadata accessor for AppEventCardConfiguration.VisualView(0) + 20));
    v89 = 1;
    if (v88 > 2)
    {
      v90 = v110;
      v91 = v113;
      v92 = v112;
      if (v88 != 3)
      {
        v55 = v147;
        if (v88 != 4)
        {
LABEL_46:
          v100 = v87;

          sub_24E925210(v89 & 1, sub_24E623C20, v86);

          if (v88 > 2)
          {
            v101 = v116;
            if (v88 != 3 && v88 != 4)
            {

              v149 = sub_24F925048();
              v150 = MEMORY[0x277CE0420];
              __swift_allocate_boxed_opaque_existential_1(&v148);
              sub_24F925258();
              v102 = v115;
              goto LABEL_59;
            }
          }

          else
          {
            v101 = v116;
            if (!v88)
            {
              v102 = v115;
              goto LABEL_56;
            }
          }

          v102 = v115;
LABEL_56:
          v103 = sub_24F92CE08();

          v149 = sub_24F925048();
          v150 = MEMORY[0x277CE0420];
          __swift_allocate_boxed_opaque_existential_1(&v148);
          sub_24F925258();
          if ((v103 & 1) == 0)
          {
            sub_24E60169C(v92, v101, &qword_27F24BE08);
            swift_storeEnumTagMultiPayload();
            sub_24F67ABD0();
            sub_24F67AC5C();
            sub_24F924E28();
LABEL_60:
            sub_24E601704(v92, &qword_27F24BE08);
            __swift_destroy_boxed_opaque_existential_1(&v148);
            sub_24E60169C(v90, v145, &qword_27F24BE10);
            swift_storeEnumTagMultiPayload();
            sub_24F67AD14();
            sub_24F67B148();
            sub_24F924E28();
            sub_24E601704(v90, &qword_27F24BE10);
            (*(v125 + 8))(v123, v126);
            goto LABEL_61;
          }

LABEL_59:
          sub_24E615E00(&v148, v91 + *(v102 + 36));
          sub_24E60169C(v92, v91, &qword_27F24BE08);
          sub_24E60169C(v91, v101, &qword_27F24BE00);
          swift_storeEnumTagMultiPayload();
          sub_24F67ABD0();
          sub_24F67AC5C();
          sub_24F924E28();
          sub_24E601704(v91, &qword_27F24BE00);
          goto LABEL_60;
        }

LABEL_45:
        v89 = sub_24F92CE08();
        goto LABEL_46;
      }
    }

    else
    {
      v90 = v110;
      v91 = v113;
      v92 = v112;
    }

    v55 = v147;
    goto LABEL_45;
  }

  sub_24E601704(v48, &qword_27F213FB0);
  v54 = 1;
  v55 = v147;
LABEL_62:
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE70);
  return (*(*(v104 - 8) + 56))(v55, v54, 1, v104);
}

uint64_t sub_24F677BBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AppEventCardConfiguration.HeadingStack(0);
  sub_24E60169C(v1 + *(v10 + 28), v9, &qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24F677DC4()
{
  v1 = v0;
  v2 = sub_24F923F78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v135 = &v126 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v126 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F320);
  MEMORY[0x28223BE20](v11 - 8);
  v129 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v134 = &v126 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v126 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v126 - v19;
  sub_24E60169C(v1, &v126 - v19, &qword_27F21F320);
  v21 = type metadata accessor for GSKAppEventFormattedDate(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v137 = v22 + 48;
  v138 = v23;
  v24 = v23(v20, 1, v21);
  v136 = v1;
  if (v24 == 1)
  {
    v25 = v20;
LABEL_3:
    sub_24E601704(v25, &qword_27F21F320);
LABEL_11:
    v38 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v26 = v20[*(v21 + 24)];
  sub_24F67A058(v20, type metadata accessor for GSKAppEventFormattedDate);
  if (v26 != 1)
  {
    goto LABEL_11;
  }

  sub_24E60169C(v1, v17, &qword_27F21F320);
  if (v138(v17, 1, v21) == 1)
  {
    v25 = v17;
    goto LABEL_3;
  }

  v27 = &v17[*(v21 + 20)];
  v29 = *v27;
  v28 = v27[1];

  sub_24F67A058(v17, type metadata accessor for GSKAppEventFormattedDate);
  if (!v28)
  {
    goto LABEL_11;
  }

  v130 = v21;
  v133 = v5;
  v30 = v3;
  v139 = v29;
  v140 = v28;
  sub_24E600AEC();
  v31 = sub_24F92C528();

  v32 = sub_24F6789D0(v31);
  v34 = v33;
  v36 = v35;
  v132 = v37;

  v38 = sub_24E61A904(0, 1, 1, MEMORY[0x277D84F90]);
  v40 = *(v38 + 16);
  v39 = *(v38 + 24);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_24E61A904((v39 > 1), v40 + 1, 1, v38);
  }

  *(v38 + 16) = v40 + 1;
  v41 = v38 + 32 * v40;
  *(v41 + 32) = v32;
  *(v41 + 40) = v34;
  *(v41 + 48) = v36 & 1;
  v5 = v133;
  *(v41 + 56) = v132;
  v3 = v30;
  v1 = v136;
  v21 = v130;
LABEL_12:
  v42 = type metadata accessor for AppEventCardConfiguration.HeadingStack(0);
  v43 = (v1 + *(v42 + 20));
  v44 = v43[1];
  if (v44)
  {
    v130 = v21;
    v131 = v3;
    v132 = v2;
    v133 = v5;
    v45 = *v43;
    if (*(v1 + *(v42 + 24) + 8))
    {

      sub_24F926E48();
      sub_24F924CD8();
      v46 = sub_24F924D08();
      (*(*(v46 - 8) + 56))(v10, 0, 1, v46);
      sub_24F926E58();

      sub_24E601704(v10, &qword_27F214410);
      v47 = sub_24F925E28();
      v49 = v48;
      v51 = v50;
      sub_24F925A08();
      sub_24F9258E8();

      v127 = sub_24F925C98();
      v126 = v52;
      v54 = v53;
      v128 = v55;

      sub_24E600B40(v47, v49, v51 & 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_24E61A904(0, *(v38 + 16) + 1, 1, v38);
      }

      v57 = *(v38 + 16);
      v56 = *(v38 + 24);
      if (v57 >= v56 >> 1)
      {
        v38 = sub_24E61A904((v56 > 1), v57 + 1, 1, v38);
      }

      *(v38 + 16) = v57 + 1;
      v58 = v38 + 32 * v57;
      v59 = v126;
      *(v58 + 32) = v127;
      *(v58 + 40) = v59;
      *(v58 + 48) = v54 & 1;
      *(v58 + 56) = v128;
    }

    else
    {
    }

    v139 = v45;
    v140 = v44;
    sub_24E600AEC();
    v61 = sub_24F925E18();
    v63 = v62;
    v65 = v64;
    sub_24F925A08();
    sub_24F9258E8();

    v66 = sub_24F925C98();
    v68 = v67;
    v70 = v69;

    sub_24E600B40(v61, v63, v65 & 1);

    LODWORD(v139) = sub_24F925198();
    v71 = sub_24F925C58();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    sub_24E600B40(v66, v68, v70 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_24E61A904(0, *(v38 + 16) + 1, 1, v38);
    }

    v2 = v132;
    v60 = v134;
    v79 = *(v38 + 16);
    v78 = *(v38 + 24);
    v1 = v136;
    if (v79 >= v78 >> 1)
    {
      v38 = sub_24E61A904((v78 > 1), v79 + 1, 1, v38);
    }

    *(v38 + 16) = v79 + 1;
    v80 = v38 + 32 * v79;
    *(v80 + 32) = v71;
    *(v80 + 40) = v73;
    *(v80 + 48) = v75 & 1;
    *(v80 + 56) = v77;
    v21 = v130;
    v3 = v131;
    v5 = v133;
  }

  else
  {
    v60 = v134;
  }

  sub_24E60169C(v1, v60, &qword_27F21F320);
  if (v138(v60, 1, v21) == 1)
  {
    sub_24E601704(v60, &qword_27F21F320);
  }

  else
  {
    v81 = (v60 + *(v21 + 20));
    v83 = *v81;
    v82 = v81[1];

    sub_24F67A058(v60, type metadata accessor for GSKAppEventFormattedDate);
    if (v82)
    {
      v139 = v83;
      v140 = v82;
      sub_24E600AEC();
      v84 = sub_24F92C558();
      v86 = v85;

      v87 = v129;
      sub_24E60169C(v1, v129, &qword_27F21F320);
      if (v138(v87, 1, v21) == 1)
      {

        sub_24E601704(v87, &qword_27F21F320);
      }

      else
      {
        v88 = *(v87 + *(v21 + 24));
        sub_24F67A058(v87, type metadata accessor for GSKAppEventFormattedDate);
        if (v88 == 1)
        {
        }

        else
        {
          v132 = v2;
          v133 = v5;
          v131 = v3;
          if (qword_27F211518 != -1)
          {
            swift_once();
          }

          v139 = qword_27F39EAF8;
          v140 = unk_27F39EB00;

          v89 = sub_24F925E18();
          v91 = v90;
          v93 = v92;
          sub_24F925A08();
          sub_24F9258E8();

          v137 = sub_24F925C98();
          v138 = v94;
          v96 = v95;
          LODWORD(v134) = v97;

          sub_24E600B40(v89, v91, v93 & 1);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_24E61A904(0, *(v38 + 16) + 1, 1, v38);
          }

          v99 = *(v38 + 16);
          v98 = *(v38 + 24);
          if (v99 >= v98 >> 1)
          {
            v38 = sub_24E61A904((v98 > 1), v99 + 1, 1, v38);
          }

          *(v38 + 16) = v99 + 1;
          v100 = v38 + 32 * v99;
          *(v100 + 32) = v137;
          *(v100 + 40) = v96;
          *(v100 + 48) = v134 & 1;
          *(v100 + 56) = v138;
          v139 = v84;
          v140 = v86;
          v101 = sub_24F925E18();
          v103 = v102;
          v105 = v104;
          sub_24F925A08();
          sub_24F9258E8();

          v106 = sub_24F925C98();
          v108 = v107;
          v110 = v109;

          sub_24E600B40(v101, v103, v105 & 1);

          LODWORD(v139) = sub_24F9251C8();
          v111 = sub_24F925C58();
          v113 = v112;
          v115 = v114;
          v117 = v116;
          sub_24E600B40(v106, v108, v110 & 1);

          v119 = *(v38 + 16);
          v118 = *(v38 + 24);
          if (v119 >= v118 >> 1)
          {
            v38 = sub_24E61A904((v118 > 1), v119 + 1, 1, v38);
          }

          *(v38 + 16) = v119 + 1;
          v120 = v38 + 32 * v119;
          *(v120 + 32) = v111;
          *(v120 + 40) = v113;
          *(v120 + 48) = v115 & 1;
          *(v120 + 56) = v117;
          v3 = v131;
          v2 = v132;
          v5 = v133;
        }
      }
    }
  }

  v121 = v135;
  sub_24F677BBC(v135);
  (*(v3 + 104))(v5, *MEMORY[0x277CDFA88], v2);
  v122 = sub_24F923F68();
  v123 = *(v3 + 8);
  v123(v5, v2);
  v123(v121, v2);
  if ((v122 & 1) == 0)
  {
    v38 = sub_24EF1C668(v38);
  }

  v124 = sub_24F679228(32, 0xE100000000000000, 0, MEMORY[0x277D84F90], v38);

  return v124;
}

uint64_t sub_24F6789D0(uint64_t a1)
{
  v46[1] = a1;
  v1 = sub_24F926C08();
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x28223BE20](v1);
  v52 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD70);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD78);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD80);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD88);
  MEMORY[0x28223BE20](v9 - 8);
  v46[0] = v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD90);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v46 - v14;
  v16 = sub_24F9258B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F925A38();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v24 - 8);
  v25 = sub_24F91F008();
  v55 = *(v25 - 8);
  v56 = v25;
  MEMORY[0x28223BE20](v25);
  v48 = v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v46 - v28;

  sub_24F91F0B8();
  sub_24F91F018();
  (*(v21 + 104))(v23, *MEMORY[0x277CE0AA0], v20);
  sub_24F9258A8();
  sub_24F925978();
  (*(v17 + 8))(v19, v16);
  (*(v21 + 8))(v23, v20);
  v30 = sub_24F9258E8();

  v57 = v30;
  sub_24E6584A4();
  sub_24F91F038();
  v31 = v46[0];
  sub_24F925BA8();
  v32 = sub_24F925BB8();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = v47;
  sub_24F925BA8();
  v34 = sub_24F925BD8();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v35 = v49;
  sub_24F925BE8();
  v36 = sub_24F925BF8();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = sub_24F925B98();
  (*(*(v37 - 8) + 56))(v51, 1, 1, v37);
  (*(v53 + 104))(v52, *MEMORY[0x277CE0EE0], v54);
  sub_24F926D48();
  sub_24F925C08();
  v38 = sub_24F925C18();
  (*(*(v38 - 8) + 56))(v15, 0, 1, v38);
  sub_24E60169C(v15, v50, &qword_27F24BD90);
  sub_24F67A128();
  sub_24F91F038();
  sub_24E601704(v15, &qword_27F24BD90);
  (*(v55 + 16))(v48, v29, v56);
  v39 = sub_24F925DF8();
  v41 = v40;
  v43 = v42;
  if (qword_27F211970 != -1)
  {
    swift_once();
  }

  v44 = sub_24F925D28();
  sub_24E600B40(v39, v41, v43 & 1);

  (*(v55 + 8))(v29, v56);

  return v44;
}

uint64_t sub_24F679228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = *(a5 + 32);
  v7 = *(a5 + 40);
  v31 = *(a5 + 48);
  sub_24E5FD138(v8, v7, v31);

  sub_24E600B40(0, 0xE000000000000000, 0);

  v9 = v5 - 1;
  if (v5 == 1)
  {
    return v8;
  }

  v11 = v8;
  v12 = a5 + 88;
  do
  {
    v30 = v9;
    v29 = v11;
    v13 = *(v12 - 24);
    v14 = *(v12 - 16);
    v24 = v13;
    v15 = *(v12 - 8);
    v25 = v15;
    v12 += 32;
    sub_24E5FD138(v13, v14, v15);

    v16 = sub_24F925C78();
    v18 = v17;
    v20 = v19;
    v21 = sub_24F925C78();
    v27 = v22;
    v28 = v21;
    v26 = v23;
    sub_24E600B40(v24, v14, v25);

    sub_24E600B40(v16, v18, v20 & 1);

    sub_24E600B40(v29, v7, v31 & 1);

    result = v28;
    v31 = v26;
    v7 = v27;
    v11 = v28;
    v9 = v30 - 1;
  }

  while (v30 != 1);
  return result;
}

uint64_t sub_24F679428@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F677DC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BDE0) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v11 = *MEMORY[0x277CE1050];
  v12 = sub_24F926E78();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  result = swift_getKeyPath();
  *v9 = result;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

unint64_t sub_24F67955C()
{
  result = qword_27F24BCA0;
  if (!qword_27F24BCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC90);
    sub_24F6795E8();
    sub_24F679A34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BCA0);
  }

  return result;
}

unint64_t sub_24F6795E8()
{
  result = qword_27F24BCA8;
  if (!qword_27F24BCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC88);
    sub_24F679674();
    sub_24F679778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BCA8);
  }

  return result;
}

unint64_t sub_24F679674()
{
  result = qword_27F24BCB0;
  if (!qword_27F24BCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC80);
    sub_24F679730(&qword_27F24BCB8, type metadata accessor for AppEventCardConfiguration.HeadingStack);
    sub_24E74524C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BCB0);
  }

  return result;
}

uint64_t sub_24F679730(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F679778()
{
  result = qword_27F24BCC0;
  if (!qword_27F24BCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC58);
    sub_24F679730(&qword_27F24BCC8, type metadata accessor for AppEventCardConfiguration.VisualView);
    sub_24F679834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BCC0);
  }

  return result;
}

unint64_t sub_24F679834()
{
  result = qword_27F24BCD0;
  if (!qword_27F24BCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC48);
    sub_24E7179AC();
    sub_24F67A898(&qword_27F24BCD8, &qword_27F24BCE0, &unk_24FA18C60, sub_24F6798EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BCD0);
  }

  return result;
}

unint64_t sub_24F67991C()
{
  result = qword_27F24BCF8;
  if (!qword_27F24BCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BD00);
    sub_24F6799A8();
    sub_24E63C774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BCF8);
  }

  return result;
}

unint64_t sub_24F6799A8()
{
  result = qword_27F24BD08;
  if (!qword_27F24BD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BD10);
    sub_24E63C774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD08);
  }

  return result;
}

unint64_t sub_24F679A34()
{
  result = qword_27F24BD18;
  if (!qword_27F24BD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC40);
    sub_24F679AC0();
    sub_24F679B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD18);
  }

  return result;
}

unint64_t sub_24F679AC0()
{
  result = qword_27F24BD20;
  if (!qword_27F24BD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC38);
    sub_24F679730(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    sub_24E7453CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD20);
  }

  return result;
}

unint64_t sub_24F679B7C()
{
  result = qword_27F24BD28;
  if (!qword_27F24BD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC18);
    sub_24F679C08();
    sub_24F679CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD28);
  }

  return result;
}

unint64_t sub_24F679C08()
{
  result = qword_27F24BD30;
  if (!qword_27F24BD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC20);
    sub_24E602068(&qword_27F24BD38, &qword_27F24BD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD30);
  }

  return result;
}

unint64_t sub_24F679CB8()
{
  result = qword_27F24BD48;
  if (!qword_27F24BD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC08);
    sub_24F67A898(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD48);
  }

  return result;
}

uint64_t sub_24F679D78()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for CardLayoutMetrics(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  type metadata accessor for CardLayoutMetrics.CardHeight(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_24F922348();
    (*(*(v8 - 8) + 8))(v0 + v6, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + v6 + *(v5 + 88));

  return swift_deallocObject();
}

uint64_t sub_24F679F84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_24F9289E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for CardLayoutMetrics(0);

  return sub_24F6759A4(v1 + v4, a1);
}

uint64_t sub_24F67A058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F67A0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F67A128()
{
  result = qword_27F24BD98;
  if (!qword_27F24BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BD98);
  }

  return result;
}

uint64_t sub_24F67A17C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F67A1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommonCardAttributes(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F67A2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CommonCardAttributes(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

void sub_24F67A384()
{
  type metadata accessor for CommonCardAttributes(319);
  if (v0 <= 0x3F)
  {
    sub_24F67A7F0(319, &qword_27F214D30, type metadata accessor for CardSafeArea, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F67A454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F320);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24F67A5B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F320);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F67A6F4()
{
  sub_24F67A7F0(319, &qword_27F24BDC0, type metadata accessor for GSKAppEventFormattedDate, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      sub_24F67A7F0(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F67A7F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24F67A898(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24F67A914()
{
  result = qword_27F24BDD8;
  if (!qword_27F24BDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BC98);
    sub_24F67955C();
    sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BDD8);
  }

  return result;
}

uint64_t sub_24F67AA14()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

unint64_t sub_24F67ABD0()
{
  result = qword_27F24BE78;
  if (!qword_27F24BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE00);
    sub_24F67AC5C();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BE78);
  }

  return result;
}

unint64_t sub_24F67AC5C()
{
  result = qword_27F24BE80;
  if (!qword_27F24BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE08);
    sub_24E92CE34();
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BE80);
  }

  return result;
}

unint64_t sub_24F67AD14()
{
  result = qword_27F24BE88;
  if (!qword_27F24BE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE48);
    sub_24F67ADA0();
    sub_24F67AF74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BE88);
  }

  return result;
}

unint64_t sub_24F67ADA0()
{
  result = qword_27F24BE90;
  if (!qword_27F24BE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE68);
    sub_24F67AE2C();
    sub_24F67AEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BE90);
  }

  return result;
}

unint64_t sub_24F67AE2C()
{
  result = qword_27F24BE98;
  if (!qword_27F24BE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE58);
    sub_24F67AEB8();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BE98);
  }

  return result;
}

unint64_t sub_24F67AEB8()
{
  result = qword_27F24BEA0;
  if (!qword_27F24BEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE60);
    sub_24E92CBF4();
    sub_24F679730(&qword_27F2193C0, type metadata accessor for CardElementView.PrimaryMixedMediaView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEA0);
  }

  return result;
}

unint64_t sub_24F67AF74()
{
  result = qword_27F24BEA8;
  if (!qword_27F24BEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE30);
    sub_24F67B000();
    sub_24F67B08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEA8);
  }

  return result;
}

unint64_t sub_24F67B000()
{
  result = qword_27F24BEB0;
  if (!qword_27F24BEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE20);
    sub_24F67B08C();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEB0);
  }

  return result;
}

unint64_t sub_24F67B08C()
{
  result = qword_27F24BEB8;
  if (!qword_27F24BEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE28);
    sub_24E92CD48();
    sub_24F679730(&qword_27F2141D8, type metadata accessor for GSKVideoView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEB8);
  }

  return result;
}

unint64_t sub_24F67B148()
{
  result = qword_27F24BEC0;
  if (!qword_27F24BEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE10);
    sub_24F67ABD0();
    sub_24F67AC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEC0);
  }

  return result;
}

unint64_t sub_24F67B1F0()
{
  result = qword_27F24BEC8;
  if (!qword_27F24BEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BDE0);
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEC8);
  }

  return result;
}

unint64_t sub_24F67B2AC()
{
  result = qword_27F24BED0;
  if (!qword_27F24BED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BDF0);
    sub_24F67B338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BED0);
  }

  return result;
}

unint64_t sub_24F67B338()
{
  result = qword_27F24BED8;
  if (!qword_27F24BED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BDE8);
    sub_24F67B3BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BED8);
  }

  return result;
}

unint64_t sub_24F67B3BC()
{
  result = qword_27F24BEE0;
  if (!qword_27F24BEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BEE8);
    sub_24F67B440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEE0);
  }

  return result;
}

unint64_t sub_24F67B440()
{
  result = qword_27F24BEF0;
  if (!qword_27F24BEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BE70);
    sub_24F67AD14();
    sub_24F67B148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BEF0);
  }

  return result;
}

uint64_t sub_24F67B4CC@<X0>(void *a1@<X8>)
{
  sub_24F681138();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F67B51C()
{
  sub_24F681138();

  return sub_24F924878();
}

uint64_t sub_24F67B57C()
{
  sub_24F924038();
  sub_24F924E38();
  sub_24E667ED0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_24F926DB8();
}

void *keypath_getTm_8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X4>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t)@<X5>, _BYTE *a4@<X8>)
{
  v7 = a1();
  result = a3(&v9, a2, a2, v7);
  *a4 = v9;
  return result;
}

uint64_t keypath_setTm_4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *, uint64_t, uint64_t, uint64_t))
{
  v11 = *a1;
  v9 = a5();
  return a7(&v11, a6, a6, v9);
}

uint64_t PageToolbarModifier.init(bagContract:localPlayerProvider:arcadeSubscription:networkMonitor:provider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 72) = swift_getKeyPath();
  *(a6 + 80) = 0;
  *(a6 + 88) = swift_getKeyPath();
  *(a6 + 96) = 0;
  type metadata accessor for TransientToolbarConfiguration(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__principal;
  v12 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v10 + v11, 1, 1, v12);
  v13(v10 + v11, 1, 1, v12);
  v14 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__topBarTrailing;
  v13(v10 + OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__topBarTrailing, 1, 1, v12);
  v13(v10 + v14, 1, 1, v12);
  sub_24F91FDB8();
  sub_24F926F28();
  *(a6 + 104) = v18;
  *(a6 + 112) = v19;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  return sub_24E612C80(a5, a6 + 32);
}

uint64_t PageToolbarModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v76 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v61 - v6;
  v7 = sub_24F925338();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BEF8);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF00);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v15 = &v61 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF08);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v17 = &v61 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF10);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v64 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF18);
  v73 = *(v19 - 8);
  v74 = v19;
  MEMORY[0x28223BE20](v19);
  v72 = &v61 - v20;
  KeyPath = swift_getKeyPath();
  v22 = *(v2 + 112);
  v79 = *(v2 + 104);
  v80 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF20);
  sub_24F926F38();
  v23 = v83;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF28);
  (*(*(v24 - 8) + 16))(v13, a1, v24);
  v25 = &v13[*(v11 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = v3[7];
  v27 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v26);
  v79 = (*(v27 + 8))(v26, v27);
  v80 = v28;
  v29 = sub_24F67C460();
  v30 = sub_24E600AEC();
  v31 = MEMORY[0x277D837D0];
  sub_24F926458();

  sub_24E601704(v13, &qword_27F24BEF8);
  v32 = v3[7];
  v33 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v32);
  v34 = (*(v33 + 24))(v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FC8);
  sub_24F9242C8();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_24F93DE60;
  sub_24F9242B8();
  v79 = v11;
  v80 = v31;
  v81 = v29;
  v82 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v61;
  MEMORY[0x25304BE90](v34, v35, v61, OpaqueTypeConformance2);

  v38 = v15;
  v39 = v37;
  (*(v62 + 8))(v38, v37);
  v40 = v3[7];
  v41 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v40);
  (*(v41 + 16))(&v83, v40, v41);
  if (v83 > 1u)
  {
    v42 = v66;
    if (v83 == 2)
    {
      sub_24F9252F8();
    }

    else
    {
      sub_24F925318();
    }
  }

  else
  {
    v42 = v66;
    if (v83)
    {
      sub_24F925308();
    }

    else
    {
      sub_24F925328();
    }
  }

  v43 = v70;
  v44 = v68;
  v45 = v42;
  v46 = v71;
  (*(v70 + 32))(v68, v45, v71);
  v79 = v39;
  v80 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v64;
  v49 = v65;
  sub_24F926798();
  (*(v43 + 8))(v44, v46);
  v50 = (*(v63 + 8))(v17, v49);
  v71 = &v61;
  MEMORY[0x28223BE20](v50);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF50);
  v79 = v49;
  v80 = v47;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = sub_24E602068(&qword_27F24BF58, &qword_27F24BF50);
  v53 = v72;
  v54 = v69;
  sub_24F926A58();
  (*(v67 + 8))(v48, v54);
  v55 = sub_24E6A4C1C();
  v56 = v75;
  v57 = sub_24F924B68();
  v71 = &v61;
  MEMORY[0x28223BE20](v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF60);
  v79 = v54;
  v80 = v70;
  v81 = v51;
  v82 = v52;
  swift_getOpaqueTypeConformance2();
  v79 = &type metadata for GameOverlayViewPredicate;
  v80 = v55;
  swift_getOpaqueTypeConformance2();
  sub_24F67EA18();
  v58 = v74;
  v59 = v78;
  sub_24F926B08();
  (*(v77 + 8))(v56, v59);
  return (*(v73 + 8))(v53, v58);
}

uint64_t sub_24F67C40C@<X0>(void *a1@<X8>)
{
  sub_24F681138();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

unint64_t sub_24F67C460()
{
  result = qword_27F24BF30;
  if (!qword_27F24BF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BEF8);
    sub_24E602068(&qword_27F24BF38, &qword_27F24BF28);
    sub_24E602068(&qword_27F24BF40, &qword_27F24BF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BF30);
  }

  return result;
}

uint64_t sub_24F67C544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v203 = a2;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFD0);
  MEMORY[0x28223BE20](v202);
  v201 = v173 - v3;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFD8);
  v213 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v199 = v173 - v4;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFE0);
  v198 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v197 = v173 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215280);
  MEMORY[0x28223BE20](v6 - 8);
  v196 = v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v206 = (v173 - v9);
  v207 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
  v209 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v188 = v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v187 = v173 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFE8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v212 = v173 - v17;
  MEMORY[0x28223BE20](v18);
  v214 = v173 - v19;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFF0);
  v195 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v183 = v173 - v20;
  v21 = sub_24F925018();
  MEMORY[0x28223BE20](v21 - 8);
  v178 = v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFF8);
  v182 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v181 = v173 - v23;
  v24 = sub_24F928AD8();
  MEMORY[0x28223BE20](v24 - 8);
  v177 = v173 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_24F92A6B8();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v176 = v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C000);
  MEMORY[0x28223BE20](v27 - 8);
  v193 = v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v211 = v173 - v30;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C008);
  v31 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v186 = v173 - v32;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C010);
  v185 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v184 = v173 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C018);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v173 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v210 = v173 - v38;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244250);
  v39 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v204 = v173 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D80);
  MEMORY[0x28223BE20](v41 - 8);
  v208 = v173 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = v173 - v44;
  MEMORY[0x28223BE20](v46);
  v217 = v173 - v47;
  sub_24F67E26C(a1 + 4);
  v48 = a1[7];
  v49 = a1[8];
  v218 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 4, v48);
  (*(v49 + 32))(&v219, v48, v49);
  v50 = v222;

  v200 = v15;
  v191 = v39;
  if (v50)
  {
    if (v50[1].Kind)
    {
      v52 = v218[1];
      v51 = v218[2];
      v174 = v36;
      v53 = v218[3];
      v219 = v52;
      v220 = v51;
      v173[1] = v52;
      v221 = v53;
      LOBYTE(v222) = 0;
      v223 = v50;
      v54 = sub_24E71428C();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      MEMORY[0x25304AA30](&v219, &type metadata for PageToolbarItemGroupView, v54);
      v175 = v31;

      v55 = v205;

      (*(v39 + 16))(v45, v204, v55);
      v56 = *(v39 + 56);
      v56(v45, 0, 1, v55);
      v219 = &type metadata for PageToolbarItemGroupView;
      v220 = v54;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x25304AA60](v45, v55, OpaqueTypeConformance2);

      v36 = v174;

      sub_24E601704(v45, &qword_27F219D80);
      v31 = v175;
      (*(v39 + 8))(v204, v55);
      goto LABEL_6;
    }
  }

  v56 = *(v39 + 56);
  v58 = v205;
  v56(v45, 1, 1, v205);
  v59 = sub_24E71428C();
  v219 = &type metadata for PageToolbarItemGroupView;
  v220 = v59;
  v60 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25304AA60](v45, v58, v60);
  sub_24E601704(v45, &qword_27F219D80);
LABEL_6:
  v61 = v218[7];
  v62 = v218[8];
  __swift_project_boxed_opaque_existential_1(v218 + 4, v61);
  (*(v62 + 32))(&v219, v61, v62);
  v63 = v219;

  if (v63)
  {
    if (v63[1].Kind)
    {
      v64 = v218[2];
      v65 = v36;
      v66 = v31;
      v67 = v218[3];
      v219 = v218[1];
      v220 = v64;
      v221 = v67;
      LOBYTE(v222) = 4;
      v223 = v63;
      v68 = v56;
      v69 = sub_24E71428C();

      v70 = v184;
      sub_24F923D98();

      v219 = &type metadata for PageToolbarItemGroupView;
      v220 = v69;
      v56 = v68;
      v71 = swift_getOpaqueTypeConformance2();
      v72 = v186;
      v73 = v189;
      MEMORY[0x25304AA30](v70, v189, v71);
      v74 = v190;
      (*(v66 + 16))(v65, v72, v190);
      (*(v66 + 56))(v65, 0, 1, v74);
      v219 = v73;
      v220 = v71;
      v75 = swift_getOpaqueTypeConformance2();
      MEMORY[0x25304AA60](v65, v74, v75);
      sub_24E601704(v65, &qword_27F24C018);
      (*(v66 + 8))(v72, v74);
      v185[1](v70, v73);
      goto LABEL_11;
    }
  }

  v76 = v190;
  (*(v31 + 56))(v36, 1, 1, v190);
  v77 = sub_24E71428C();
  v219 = &type metadata for PageToolbarItemGroupView;
  v220 = v77;
  v78 = swift_getOpaqueTypeConformance2();
  v219 = v189;
  v220 = v78;
  v79 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25304AA60](v36, v76, v79);
  sub_24E601704(v36, &qword_27F24C018);
LABEL_11:
  v80 = v218[7];
  v81 = v218[8];
  __swift_project_boxed_opaque_existential_1(v218 + 4, v80);
  (*(v81 + 32))(&v219, v80, v81);
  v82 = v220;

  if (!v82)
  {
LABEL_15:
    v91 = v205;
    v56(v45, 1, 1, v205);
    v92 = sub_24E71428C();
    v219 = &type metadata for PageToolbarItemGroupView;
    v220 = v92;
    v93 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v45, v91, v93);
    sub_24E601704(v45, &qword_27F219D80);
    goto LABEL_16;
  }

  if (!*(v82 + 16))
  {

    goto LABEL_15;
  }

  v83 = v218[2];
  v84 = v218[3];
  v219 = v218[1];
  v220 = v83;
  v190 = v219;
  v189 = v83;
  v221 = v84;
  v186 = v84;
  LOBYTE(v222) = 5;
  v223 = v82;
  v85 = sub_24E71428C();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v185 = v56;
  v86 = v204;
  MEMORY[0x25304AA30](&v219, &type metadata for PageToolbarItemGroupView, v85);
  v87 = v205;

  v88 = v45;
  v89 = v191;
  (*(v191 + 16))(v88, v86, v87);
  (v185)(v88, 0, 1, v87);
  v219 = &type metadata for PageToolbarItemGroupView;
  v220 = v85;
  v90 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25304AA60](v88, v87, v90);

  sub_24E601704(v88, &qword_27F219D80);
  (*(v89 + 8))(v86, v87);
LABEL_16:
  v94 = v218[7];
  v95 = v218[8];
  __swift_project_boxed_opaque_existential_1(v218 + 4, v94);
  (*(v95 + 32))(&v219, v94, v95);
  v96 = v223;

  if (v96 == 2 || (v96 & 1) == 0)
  {
    v107 = v193;
    v108 = v192;
    (v195[3].Description)(v193, 1, 1, v192);
    v109 = sub_24E602068(&qword_27F24C020, &qword_27F24BFF8);
    v219 = v194;
    v220 = v109;
    v110 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v107, v108, v110);
    sub_24E601704(v107, &qword_27F24C000);
  }

  else
  {
    sub_24F928A98();
    sub_24F92A678();
    v97 = v176;
    sub_24F92A668();
    v98 = sub_24F924FB8();
    MEMORY[0x28223BE20](v98);
    v173[-2] = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C058);
    sub_24E602068(&qword_27F24C060, &qword_27F24C058);
    v99 = v181;
    sub_24F923668();
    v100 = sub_24E602068(&qword_27F24C020, &qword_27F24BFF8);
    v101 = v183;
    v102 = v194;
    MEMORY[0x25304AA30](v99, v194, v100);
    v103 = v195;
    v104 = v193;
    v105 = v192;
    (v195[1].Kind)(v193, v101, v192);
    (v103[3].Description)(v104, 0, 1, v105);
    v219 = v102;
    v220 = v100;
    v106 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v104, v105, v106);
    sub_24E601704(v104, &qword_27F24C000);
    (v103->Description)(v101, v105);
    (*(v182 + 8))(v99, v102);
    (*(v179 + 8))(v97, v180);
  }

  v112 = v218[13];
  v111 = v218[14];
  v219 = v112;
  v220 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF20);
  sub_24F926F38();
  v113 = v226;
  swift_getKeyPath();
  v219 = v113;
  v205 = sub_24F680EF4(&qword_27F215300, type metadata accessor for TransientToolbarConfiguration);
  sub_24F91FD88();

  v114 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__principal;
  swift_beginAccess();
  v115 = v206;
  sub_24E60169C(v113 + v114, v206, &qword_27F215280);

  v116 = *(v209 + 48);
  v117 = v209 + 48;
  if (v116(v115, 1, v207) == 1)
  {
    sub_24E601704(v206, &qword_27F215280);
    v118 = v212;
    v119 = v216;
    v206 = *(v213 + 56);
    (v206)(v212, 1, 1, v216);
    v120 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C028);
    v121 = sub_24F680F3C();
    v226 = v120;
    v227 = v121;
    v122 = swift_getOpaqueTypeConformance2();
    v226 = v215;
    v227 = v122;
    v123 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v118, v119, v123);
    sub_24E601704(v118, &qword_27F24BFE8);
  }

  else
  {
    v124 = v187;
    sub_24F6810C8(v206, v187, type metadata accessor for TransientToolbarConfiguration.ToolbarItem);
    LOBYTE(v226) = 3;
    v125 = *v218;
    v194 = v116;
    v126 = v197;
    sub_24F85BF58(&v226, v125, v197);
    v127 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C028);
    v128 = sub_24F680F3C();
    v226 = v127;
    v227 = v128;
    v129 = swift_getOpaqueTypeConformance2();
    v130 = v199;
    v204 = v111;
    v131 = v215;
    MEMORY[0x25304AA30](v126, v215, v129);
    v209 = v117;
    v195 = v112;
    v132 = v212;
    v133 = v213;
    v134 = v216;
    (*(v213 + 16))(v212, v130, v216);
    v206 = *(v133 + 56);
    (v206)(v132, 0, 1, v134);
    v226 = v131;
    v227 = v129;
    v135 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v132, v134, v135);
    sub_24E601704(v132, &qword_27F24BFE8);
    v136 = v133;
    v112 = v195;
    (*(v136 + 8))(v130, v134);
    v137 = v126;
    v116 = v194;
    v138 = v131;
    v111 = v204;
    (*(v198 + 8))(v137, v138);
    sub_24E6562E4(v124);
  }

  v226 = v112;
  v227 = v111;
  sub_24F926F38();
  v139 = v224;
  swift_getKeyPath();
  v226 = v139;
  sub_24F91FD88();

  v140 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__topBarTrailing;
  swift_beginAccess();
  v141 = v139 + v140;
  v142 = v196;
  sub_24E60169C(v141, v196, &qword_27F215280);

  if (v116(v142, 1, v207) == 1)
  {
    sub_24E601704(v142, &qword_27F215280);
    v143 = v212;
    v144 = v216;
    (v206)(v212, 1, 1, v216);
    v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C028);
    v146 = sub_24F680F3C();
    v224 = v145;
    v225 = v146;
    v147 = swift_getOpaqueTypeConformance2();
    v224 = v215;
    v225 = v147;
    v148 = swift_getOpaqueTypeConformance2();
    v149 = v200;
    MEMORY[0x25304AA60](v143, v144, v148);
    sub_24E601704(v143, &qword_27F24BFE8);
  }

  else
  {
    v150 = v188;
    sub_24F6810C8(v142, v188, type metadata accessor for TransientToolbarConfiguration.ToolbarItem);
    LOBYTE(v224) = 4;
    v151 = v197;
    sub_24F85BF58(&v224, *v218, v197);
    v152 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C028);
    v153 = sub_24F680F3C();
    v224 = v152;
    v225 = v153;
    v154 = swift_getOpaqueTypeConformance2();
    v155 = v199;
    v156 = v215;
    MEMORY[0x25304AA30](v151, v215, v154);
    v158 = v212;
    v157 = v213;
    v159 = v216;
    (*(v213 + 16))(v212, v155, v216);
    (v206)(v158, 0, 1, v159);
    v224 = v156;
    v225 = v154;
    v160 = swift_getOpaqueTypeConformance2();
    v149 = v200;
    MEMORY[0x25304AA60](v158, v159, v160);
    sub_24E601704(v158, &qword_27F24BFE8);
    (*(v157 + 8))(v155, v159);
    (*(v198 + 8))(v151, v156);
    sub_24E6562E4(v150);
  }

  v161 = v202[12];
  v162 = v202[16];
  v163 = v202[20];
  v164 = v202[24];
  v218 = v202[28];
  v165 = v201;
  sub_24E60169C(v217, v201, &qword_27F219D80);
  v166 = v210;
  sub_24E60169C(v210, v165 + v161, &qword_27F24C018);
  v167 = v165 + v162;
  v168 = v208;
  sub_24E60169C(v208, v167, &qword_27F219D80);
  v169 = v211;
  sub_24E60169C(v211, v165 + v163, &qword_27F24C000);
  v170 = v165 + v164;
  v171 = v214;
  sub_24E60169C(v214, v170, &qword_27F24BFE8);
  sub_24E60169C(v149, v218 + v165, &qword_27F24BFE8);
  sub_24F924D18();
  sub_24E601704(v149, &qword_27F24BFE8);
  sub_24E601704(v171, &qword_27F24BFE8);
  sub_24E601704(v169, &qword_27F24C000);
  sub_24E601704(v168, &qword_27F219D80);
  sub_24E601704(v166, &qword_27F24C018);
  return sub_24E601704(v217, &qword_27F219D80);
}

void sub_24F67E26C(void *a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 88);
  if (*(v1 + 96) == 1)
  {
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v7, 0);
    (*(v4 + 8))(v6, v3);
    if (LOBYTE(v19[0]) != 1)
    {
      return;
    }
  }

  v9 = MEMORY[0x277D84F90];
  if (qword_27F210760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_27F2301C0;
  v11 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
  swift_beginAccess();
  *&v10[v11] = v9;

  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 32);
  v14(v19, v12, v13);
  v15 = v19[1];

  if (v15)
  {
    if (*(v15 + 16))
    {
LABEL_12:
      v16 = off_27F2301C0;
      v17 = OBJC_IVAR____TtC12GameStoreKit15ZoomCoordinator_topTrailingNavBarItems;
      swift_beginAccess();
      *&v16[v17] = v15;
      goto LABEL_13;
    }
  }

  v14(v19, v12, v13);
  v15 = v19[3];

  if (!v15)
  {
    return;
  }

  if (*(v15 + 16))
  {
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t sub_24F67E530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-1] - v3;
  sub_24F9232E8();
  v5 = sub_24F9232F8();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_24F92A6B8();
  v10[3] = v6;
  v10[4] = MEMORY[0x277D223D8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C068);
  sub_24E602068(&qword_27F24C070, &qword_27F24C068);
  return sub_24F921788();
}

uint64_t sub_24F67E71C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F926DF8();
  *a1 = result;
  return result;
}

uint64_t sub_24F67E75C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[7];
  v7 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v6);
  (*(v7 + 16))(&v23, v6, v7);
  if (v23 == 2)
  {

LABEL_4:
    v10 = a2[7];
    v11 = a2[8];
    __swift_project_boxed_opaque_existential_1(a2 + 4, v10);
    (*(v11 + 32))(&v23, v10, v11);
    v21[0] = v23;
    v21[1] = v24;
    v21[2] = v25;
    v21[3] = v26;
    v22 = v27;
    v12 = sub_24E7D87D8();

    v9 = v12 ^ 1;
    goto LABEL_5;
  }

  v8 = sub_24F92CE08();

  v9 = 0;
  if (v8)
  {
    goto LABEL_4;
  }

LABEL_5:
  v13 = a2[7];
  v14 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v13);
  (*(v14 + 16))(v21, v13, v14);
  v15 = v21[0];
  v16 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF60) + 36);
  *v16 = v9 & 1;
  *(v16 + 1) = v15;
  v28 = 0;
  sub_24F926F28();
  v17 = v24;
  *(v16 + 8) = v23;
  *(v16 + 16) = v17;
  v18 = *(type metadata accessor for ScrollEdgeDetectionModifier() + 28);
  *(v16 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF18);
  return (*(*(v19 - 8) + 16))(a3, a1, v19);
}

unint64_t sub_24F67EA18()
{
  result = qword_27F24BF68;
  if (!qword_27F24BF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BEF8);
    sub_24F67C460();
    sub_24E600AEC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F24BF58, &qword_27F24BF50);
    swift_getOpaqueTypeConformance2();
    sub_24F680EF4(&qword_27F24BF70, type metadata accessor for ScrollEdgeDetectionModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BF68);
  }

  return result;
}

uint64_t type metadata accessor for ScrollEdgeDetectionModifier()
{
  result = qword_27F24BF78;
  if (!qword_27F24BF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F67ECC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BEF8);
  sub_24F67C460();
  sub_24E600AEC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F24BF58, &qword_27F24BF50);
  swift_getOpaqueTypeConformance2();
  sub_24E6A4C1C();
  swift_getOpaqueTypeConformance2();
  sub_24F67EA18();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F67EF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F67F004(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F67F0B4()
{
  sub_24E654514();
  if (v0 <= 0x3F)
  {
    sub_24E684120();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F67F16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a1;
  v114 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF88);
  MEMORY[0x28223BE20](v3);
  v5 = &v86 - v4;
  v106 = sub_24F925218();
  v109 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v93 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v101);
  v110 = &v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v107 = &v86 - v11;
  MEMORY[0x28223BE20](v12);
  v108 = &v86 - v13;
  v98 = sub_24F925338();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231D10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v86 - v16;
  v100 = type metadata accessor for ScrollEdgeDetectionModifier();
  v18 = *(v100 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v100);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF90);
  v99 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v21 = &v86 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BF98);
  v104 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v112 = &v86 - v23;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFA0);
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v86 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFA8);
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  if (*v2 != 1)
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFB0);
    (*(*(v37 - 8) + 16))(v5, v111, v37);
    swift_storeEnumTagMultiPayload();
    sub_24F680714();
    sub_24E602068(&qword_27F24BFC0, &qword_27F24BFB0);
    return sub_24F924E28();
  }

  v87 = v28;
  v89 = &v86 - v27;
  v90 = v22;
  v92 = v25;
  v91 = v3;
  v88 = v5;
  sub_24F680938(v2, &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v18 + 80);
  v94 = v2;
  v30 = swift_allocObject() + ((v29 + 16) & ~v29);
  v31 = v94;
  sub_24F6810C8(&v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v30, type metadata accessor for ScrollEdgeDetectionModifier);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFB0);
  v33 = sub_24E602068(&qword_27F24BFC0, &qword_27F24BFB0);
  v34 = MEMORY[0x277D839B0];
  sub_24F926738();

  if (v31[1] > 1u)
  {
    v35 = v108;
    v36 = v96;
    if (v31[1] == 2)
    {
      sub_24F9252F8();
    }

    else
    {
      sub_24F925318();
    }
  }

  else
  {
    v35 = v108;
    v36 = v96;
    if (v31[1])
    {
      sub_24F925308();
    }

    else
    {
      sub_24F925328();
    }
  }

  v39 = v97;
  v40 = v36;
  v41 = v98;
  (v97[2].Kind)(v17, v40, v98);
  (v39[3].Description)(v17, 0, 1, v41);
  v42 = sub_24EE61688(v17);
  v44 = v31[8];
  v45 = *(v31 + 2);
  if (v43)
  {
    v46 = 0;
  }

  else
  {
    v46 = v42;
  }

  LOBYTE(v115) = v44;
  v97 = v45;
  v116 = v45;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  v47 = v119;
  v119 = v46;
  v120 = 0;
  v121 = v47;
  v115 = v32;
  v116 = v34;
  v98 = v33;
  v117 = v33;
  v118 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_24F6808E4();
  v50 = v113;
  v96 = OpaqueTypeConformance2;
  v86 = v49;
  sub_24F9266C8();
  (*(v99 + 8))(v21, v50);
  sub_24F769764(v35);
  v51 = v109;
  v53 = v106;
  v52 = v107;
  (*(v109 + 104))(v107, *MEMORY[0x277CE0558], v106);
  (*(v51 + 56))(v52, 0, 1, v53);
  v54 = *(v101 + 48);
  v55 = v110;
  sub_24E60169C(v35, v110, &qword_27F215598);
  v56 = v55;
  sub_24E60169C(v52, v55 + v54, &qword_27F215598);
  v57 = v51;
  v58 = v35;
  v59 = *(v57 + 48);
  if (v59(v56, 1, v53) == 1)
  {
    sub_24E601704(v52, &qword_27F215598);
    v60 = v110;
    sub_24E601704(v58, &qword_27F215598);
    v61 = v59(v60 + v54, 1, v53);
    v62 = v88;
    v63 = v97;
    if (v61 == 1)
    {
      sub_24E601704(v60, &qword_27F215598);
      v64 = v92;
LABEL_20:
      if (v94[1] == 2)
      {

LABEL_23:
        LOBYTE(v115) = v44;
        v116 = v63;
        sub_24F926F38();
        v66 = v119;
        goto LABEL_25;
      }

      v73 = sub_24F92CE08();

      if (v73)
      {
        goto LABEL_23;
      }

LABEL_24:
      v66 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v65 = v95;
    sub_24E60169C(v56, v95, &qword_27F215598);
    if (v59(v56 + v54, 1, v53) != 1)
    {
      v101 = v32;
      v67 = v65;
      v68 = v109;
      v69 = v93;
      (*(v109 + 32))(v93, v56 + v54, v53);
      sub_24F680EF4(&qword_27F215650, MEMORY[0x277CE0570]);
      v70 = v56;
      v71 = sub_24F92AFF8();
      v72 = *(v68 + 8);
      v72(v69, v53);
      sub_24E601704(v107, &qword_27F215598);
      sub_24E601704(v108, &qword_27F215598);
      v72(v67, v53);
      sub_24E601704(v70, &qword_27F215598);
      v62 = v88;
      v64 = v92;
      v63 = v97;
      if ((v71 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    sub_24E601704(v107, &qword_27F215598);
    v60 = v110;
    sub_24E601704(v108, &qword_27F215598);
    (*(v109 + 8))(v65, v53);
    v62 = v88;
    v63 = v97;
  }

  sub_24E601704(v60, &unk_27F254F20);
  v66 = 0;
  v64 = v92;
LABEL_25:
  v74 = sub_24F925808();
  v115 = v113;
  v116 = &type metadata for PageViewNavigationItemAdaptor;
  v117 = v96;
  v118 = v86;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v102;
  v77 = v66;
  v78 = v74;
  v79 = v90;
  v80 = v112;
  MEMORY[0x25304C0E0](v77, v78, v90, v75);
  (*(v104 + 8))(v80, v79);
  v81 = sub_24F927728();
  LOBYTE(v115) = v44;
  v116 = v63;
  sub_24F926F38();
  LOBYTE(v80) = v119;
  v82 = v87;
  (*(v103 + 32))(v87, v76, v105);
  v83 = v82 + *(v64 + 36);
  *v83 = v81;
  *(v83 + 8) = v80;
  v84 = v82;
  v85 = v89;
  sub_24F680E20(v84, v89);
  sub_24E60169C(v85, v62, &qword_27F24BFA8);
  swift_storeEnumTagMultiPayload();
  sub_24F680714();
  sub_24F924E28();
  return sub_24E601704(v85, &qword_27F24BFA8);
}

uint64_t sub_24F680010@<X0>(BOOL *a1@<X8>)
{
  sub_24F923CB8();
  v3 = v2;
  result = sub_24F923CA8();
  *a1 = v3 + v5 > 0.0;
  return result;
}

uint64_t sub_24F6800BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a6;
  v51 = a5;
  v50 = a4;
  v49 = a3;
  v57 = a9;
  v13 = sub_24F924038();
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = &v47 - v16;
  v17 = *(a7 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  v24 = sub_24F924E38();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v56 = &v47 - v27;
  if (a1)
  {
    v28 = *(v17 + 16);
    v47 = v23;
    v28(v23, a2, a7, v26);
    sub_24E615E00(v48, v67);
    v67[5] = swift_getKeyPath();
    v68 = 0;
    KeyPath = swift_getKeyPath();
    v70 = 0;
    type metadata accessor for TransientToolbarConfiguration(0);
    v29 = swift_allocObject();
    v48 = v24;
    v30 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__principal;
    v31 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
    v32 = *(v31 - 8);
    v55 = a1;
    v33 = *(v32 + 56);
    v33(v29 + v30, 1, 1, v31);
    v33(v29 + v30, 1, 1, v31);
    v34 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__topBarTrailing;
    v33(v29 + OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__topBarTrailing, 1, 1, v31);
    v33(v29 + v34, 1, 1, v31);
    v35 = v55;
    swift_retain_n();
    sub_24F91FDB8();
    v60 = v29;
    sub_24F926F28();
    v71 = v61;
    v72 = v62;
    v63 = v49;
    v64 = v35;
    v65 = v50;
    v66 = v51;

    v36 = v53;
    sub_24F923FD8();
    v37 = sub_24E667ED0();
    v58 = a8;
    v59 = v37;
    WitnessTable = swift_getWitnessTable();
    v39 = v52;
    sub_24E7896B8(v36, v13, WitnessTable);
    v40 = *(v54 + 8);
    v40(v36, v13);
    sub_24E7896B8(v39, v13, WitnessTable);
    v41 = v56;
    v24 = v48;
    sub_24ECCCBA0(v36, v13);

    v40(v36, v13);
    v40(v39, v13);
  }

  else
  {
    sub_24E7896B8(a2, a7, a8);
    sub_24E7896B8(v23, a7, a8);
    v42 = sub_24E667ED0();
    v77 = a8;
    v78 = v42;
    swift_getWitnessTable();
    v41 = v56;
    sub_24ECCCC98(v20, v13, a7);
    v43 = *(v17 + 8);
    v43(v20, a7);
    v43(v23, a7);
  }

  v44 = sub_24E667ED0();
  v75 = a8;
  v76 = v44;
  v73 = swift_getWitnessTable();
  v74 = a8;
  v45 = swift_getWitnessTable();
  sub_24E7896B8(v41, v24, v45);
  return (*(v25 + 8))(v41, v24);
}

unint64_t sub_24F680714()
{
  result = qword_27F24BFB8;
  if (!qword_27F24BFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BFA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BF90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BFB0);
    sub_24E602068(&qword_27F24BFC0, &qword_27F24BFB0);
    swift_getOpaqueTypeConformance2();
    sub_24F6808E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F218870, &unk_27F2364C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BFB8);
  }

  return result;
}

unint64_t sub_24F6808E4()
{
  result = qword_27F24BFC8;
  if (!qword_27F24BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BFC8);
  }

  return result;
}

uint64_t sub_24F680938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollEdgeDetectionModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F68099C()
{
  v1 = (type metadata accessor for ScrollEdgeDetectionModifier() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F680B10()
{
  type metadata accessor for ScrollEdgeDetectionModifier();

  return sub_24F680058();
}

uint64_t sub_24F680BD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24F680EF4(&qword_27F215300, type metadata accessor for TransientToolbarConfiguration);
  sub_24F91FD88();

  v6 = *a2;
  swift_beginAccess();
  return sub_24E60169C(v5 + v6, a3, &qword_27F215280);
}

uint64_t sub_24F680CD4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215280);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E60169C(a1, &v9[-v5], &qword_27F215280);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24F680EF4(&qword_27F215300, type metadata accessor for TransientToolbarConfiguration);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F215280);
}

uint64_t sub_24F680E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BFA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F680EF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F680F3C()
{
  result = qword_27F24C030;
  if (!qword_27F24C030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C028);
    sub_24E602068(&qword_27F24C038, &qword_27F24C040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C048);
    sub_24E602068(&qword_27F24C050, &qword_27F24C048);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C030);
  }

  return result;
}

uint64_t sub_24F6810C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F681138()
{
  result = qword_27F24C078;
  if (!qword_27F24C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C078);
  }

  return result;
}

unint64_t sub_24F681190()
{
  result = qword_27F24C080;
  if (!qword_27F24C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C088);
    sub_24F680714();
    sub_24E602068(&qword_27F24BFC0, &qword_27F24BFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C080);
  }

  return result;
}

uint64_t sub_24F68125C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F6812E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24F681384()
{
  sub_24E66ED3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24F681404(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F681554(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F6816B0()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F2169A0);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
          if (v4 <= 0x3F)
          {
            sub_24E61C938();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F6817F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F681840(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6575676573;
    v6 = 0x4D747865746E6F63;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7665684365646968;
    if (a1 != 5)
    {
      v7 = 0x7865546567646162;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x6567616D69;
    v3 = 0x656C746974627573;
    if (a1 != 3)
    {
      v3 = 0x6974616D6F747561;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F681984(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C180);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6848F0();
  sub_24F92D128();
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_24F92CD08();
    v10 = *(v3 + 64);
    v11 = *(v3 + 72);
    v13 = *(v3 + 56);
    v14 = v10;
    v15 = v11;
    v12[7] = 2;
    sub_24E672C48();
    sub_24E63FF50();
    sub_24F92CD48();
    sub_24E63FFA4();
    LOBYTE(v13) = 3;
    sub_24F92CCA8();
    LOBYTE(v13) = 4;
    sub_24F92CCA8();
    LOBYTE(v13) = 5;
    sub_24F92CCB8();
    LOBYTE(v13) = 6;
    sub_24F92CCA8();
    LOBYTE(v13) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for GroupedTableRow(0);
    LOBYTE(v13) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v13) = 9;
    sub_24F929608();
    sub_24F6817F8(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F681DB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C170);
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = type metadata accessor for GroupedTableRow(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 136) = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  *(v14 + 152) = 0u;
  *(v14 + 21) = 0;
  v43 = v14 + 136;
  sub_24E61DA68(&v45, (v14 + 136), qword_27F21B590);
  v15 = *(v12 + 56);
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v44 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 60);
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v42 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F6848F0();
  v37 = v10;
  v22 = v40;
  sub_24F92D108();
  if (v22)
  {
    v24 = v43;
    __swift_destroy_boxed_opaque_existential_1(v41);

    sub_24E601704(v24, qword_27F24EC90);
    sub_24E601704(&v14[v44], &qword_27F215440);
    return sub_24E601704(&v14[v42], &qword_27F213E68);
  }

  else
  {
    v23 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v48 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v25 = v46;
    *v14 = v45;
    *(v14 + 1) = v25;
    *(v14 + 4) = v47;
    LOBYTE(v45) = 1;
    v26 = sub_24F92CC28();
    v27 = v43;
    *(v14 + 5) = v26;
    *(v14 + 6) = v28;
    v48 = 2;
    sub_24E641300();
    sub_24F92CC68();
    v29 = v46;
    *(v14 + 56) = v45;
    v14[72] = v29;
    LOBYTE(v45) = 3;
    *(v14 + 10) = sub_24F92CBC8();
    *(v14 + 11) = v30;
    v40 = v30;
    LOBYTE(v45) = 4;
    *(v14 + 12) = sub_24F92CBC8();
    *(v14 + 13) = v31;
    LOBYTE(v45) = 5;
    v14[112] = sub_24F92CBD8();
    LOBYTE(v45) = 6;
    *(v14 + 15) = sub_24F92CBC8();
    *(v14 + 16) = v32;
    v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v48 = 7;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v45, v27, qword_27F24EC90);
    LOBYTE(v45) = 8;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v23, &v14[v44], &qword_27F215440);
    LOBYTE(v45) = 9;
    sub_24F6817F8(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    (*(v38 + 8))(v37, v39);
    sub_24E61DA68(v36, &v14[v42], &qword_27F213E68);
    sub_24F684888(v14, v35, type metadata accessor for GroupedTableRow);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_24F684944(v14);
  }
}

uint64_t sub_24F682614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F684BB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F68263C(uint64_t a1)
{
  v2 = sub_24F6848F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F682678(uint64_t a1)
{
  v2 = sub_24F6848F0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F6826B4@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 136, v5, qword_27F24EC90);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24F68270C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 48), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F68287C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C0C8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C0D0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C0D8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C0E0);
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v18 = &v35 - v17;
  *v5 = sub_24F9249A8();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C0E8);
  sub_24F682CE4(a1, &v5[*(v19 + 44)]);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v5, v9, &qword_27F24C0C0);
  v20 = &v9[*(v7 + 44)];
  v21 = v45;
  *(v20 + 4) = v44;
  *(v20 + 5) = v21;
  *(v20 + 6) = v46;
  v22 = v41;
  *v20 = v40;
  *(v20 + 1) = v22;
  v23 = v43;
  *(v20 + 2) = v42;
  *(v20 + 3) = v23;
  LOBYTE(v5) = sub_24F925808();
  sub_24F923318();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24E6009C8(v9, v13, &qword_27F24C0C8);
  v32 = &v13[*(v11 + 44)];
  *v32 = v5;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  sub_24E6009C8(v13, v16, &qword_27F24C0D0);
  v16[*(v14 + 36)] = 0;
  sub_24E60169C(a1 + 136, v39, qword_27F24EC90);
  sub_24E601704(v39, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v33 = sub_24F9248C8();
  __swift_project_value_buffer(v33, qword_27F39F078);
  sub_24F684120();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v16, &qword_27F24C0D8);
  return (*(v36 + 32))(v38, v18, v37);
}

uint64_t sub_24F682CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C00);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v4 = (&v62 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C110);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v62 - v8;
  v9 = type metadata accessor for GroupedTableRow(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C118);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v81 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  sub_24F684888(a1, &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTableRow);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_24F684530(&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = sub_24F924C98();
  v21 = sub_24F9249A8();
  v22 = *(v13 + 60);
  *&v17[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  *v17 = sub_24F684594;
  *(v17 + 1) = v19;
  *(v17 + 2) = v20;
  *(v17 + 3) = 0;
  v17[32] = 1;
  *(v17 + 5) = v21;
  *(v17 + 6) = 0;
  v17[56] = 1;
  v23 = *(a1 + 128);
  if (v23)
  {
    v87 = *(a1 + 120);
    v88 = v23;
    sub_24E600AEC();

    v24 = sub_24F925E18();
    v26 = v25;
    v28 = v27;
    sub_24F9259D8();
    v80 = sub_24F925C98();
    v70 = v29;
    v31 = v30;
    v69 = v32;

    sub_24E600B40(v24, v26, v28 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    sub_24F9237D8();
    sub_24F9237D8();
    sub_24F927618();
    sub_24F9238C8();
    LOBYTE(v87) = v31 & 1;
    v33 = v100;
    v23 = v101;
    v79 = v102;
    v68 = v103;
    v67 = v104;
    v78 = v105;
    v76 = v87;
    v77 = sub_24F926C28();
    v66 = sub_24F925808() | 0x10000;
  }

  else
  {
    v80 = 0;
    v70 = 0;
    v69 = 0;
    v33 = 0;
    v79 = 0;
    v68 = 0;
    v67 = 0;
    v78 = 0;
    v77 = 0;
    v66 = 0;
    v76 = 0;
  }

  sub_24E60169C(a1 + 136, &v87, qword_27F24EC90);
  v34 = v90;
  sub_24E601704(&v87, qword_27F21B590);
  v35 = v73;
  if (v34 && ((v36 = *(a1 + 112), v36 == 2) || (v36 & 1) == 0))
  {
    v64 = sub_24F926DF8();
    v63 = sub_24F925898();
    KeyPath = swift_getKeyPath();
    v40 = v23;
    v41 = sub_24F9251C8();
    v42 = v4 + *(v35 + 36);
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v44 = *MEMORY[0x277CE13B8];
    v45 = sub_24F927748();
    (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
    *v42 = v41;
    v23 = v40;
    *v4 = v64;
    v4[1] = KeyPath;
    v4[2] = v63;
    v46 = v4;
    v38 = v71;
    sub_24E6009C8(v46, v71, &qword_27F216C00);
    v37 = 0;
  }

  else
  {
    v37 = 1;
    v38 = v71;
  }

  v72[7](v38, v37, 1, v35);
  v47 = v81;
  sub_24F68460C(v17, v81);
  v48 = v74;
  sub_24E60169C(v38, v74, &qword_27F24C110);
  v49 = v47;
  v50 = v75;
  sub_24F68460C(v49, v75);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C120);
  v52 = v50 + v51[12];
  *v52 = 0;
  *(v52 + 8) = 0;
  v53 = (v50 + v51[16]);
  *&v82 = v80;
  v54 = v70;
  *(&v82 + 1) = v70;
  *&v83 = v76;
  v55 = v69;
  *(&v83 + 1) = v69;
  *&v84 = v33;
  v65 = v23;
  *(&v84 + 1) = v23;
  *&v85 = v79;
  v72 = v17;
  v56 = v68;
  *(&v85 + 1) = v68;
  v57 = v67;
  *v86 = v67;
  *&v86[8] = v78;
  *&v86[16] = v77;
  v58 = v66;
  LODWORD(v73) = HIWORD(v66);
  v86[26] = BYTE2(v66);
  *&v86[24] = v66;
  v59 = v85;
  v53[2] = v84;
  v53[3] = v59;
  v60 = v83;
  *v53 = v82;
  v53[1] = v60;
  v53[4] = *v86;
  *(v53 + 75) = *&v86[11];
  sub_24E60169C(v48, v50 + v51[20], &qword_27F24C110);
  sub_24E60169C(&v82, &v87, &qword_27F24C128);
  sub_24E601704(v38, &qword_27F24C110);
  sub_24E601704(v72, &qword_27F24C118);
  sub_24E601704(v48, &qword_27F24C110);
  v87 = v80;
  v88 = v54;
  v89 = v76;
  v90 = v55;
  v91 = v33;
  v92 = v65;
  v93 = v79;
  v94 = v56;
  v95 = v57;
  v96 = v78;
  v97 = v77;
  v99 = v73;
  v98 = v58;
  sub_24E601704(&v87, &qword_27F24C128);
  return sub_24E601704(v81, &qword_27F24C118);
}

uint64_t sub_24F6835A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v45);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C130);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C138);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v44 = a1;
  LOBYTE(a1) = *(a1 + 72);
  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C140) + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0) + 28);
  sub_24E672C48();
  sub_24F924CF8();
  v17 = sub_24F924D08();
  (*(*(v17 - 8) + 56))(v15 + v16, 0, 1, v17);
  *v15 = swift_getKeyPath();
  *v7 = v13;
  *(v7 + 1) = v14;
  v7[16] = a1;
  v7[17] = 1;
  v18 = sub_24F9258F8();
  KeyPath = swift_getKeyPath();
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C148) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_24F927618();
  sub_24F9238C8();
  v21 = &v7[*(v5 + 36)];
  v22 = *&v50[11];
  *v21 = *&v50[9];
  *(v21 + 1) = v22;
  *(v21 + 2) = *&v50[13];
  v23 = *MEMORY[0x277CDF9D8];
  v24 = sub_24F923E98();
  (*(*(v24 - 8) + 104))(v4, v23, v24);
  sub_24F6817F8(&qword_27F22DF90, MEMORY[0x277CDFA28]);
  result = sub_24F92AFF8();
  if (result)
  {
    sub_24F68468C();
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    v26 = v12;
    v43 = v12;
    sub_24F9263F8();
    sub_24E601704(v4, &qword_27F21CCC8);
    sub_24E601704(v7, &qword_27F24C130);
    v27 = sub_24F924C98();
    LOBYTE(v54[0]) = 1;
    sub_24F683B18(v44, v51);
    *(v50 + 7) = v51[0];
    *(&v50[2] + 7) = v51[1];
    *(&v50[4] + 7) = v51[2];
    *(&v50[6] + 7) = v51[3];
    v28 = v54[0];
    v29 = v46;
    v30 = *(v46 + 16);
    v31 = v49;
    v32 = v26;
    v33 = v47;
    v30(v49, v32, v47);
    v34 = v48;
    v30(v48, v31, v33);
    v35 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C168) + 48)];
    v52 = v27;
    v53[0] = v28;
    *&v53[1] = *v50;
    *&v53[17] = *&v50[2];
    *&v53[33] = *&v50[4];
    *&v53[49] = *&v50[6];
    v36 = *(&v50[7] + 7);
    *&v53[64] = *(&v50[7] + 7);
    v37 = *v53;
    *v35 = v27;
    *(v35 + 1) = v37;
    v38 = *&v53[16];
    v39 = *&v53[32];
    v40 = *&v53[48];
    *(v35 + 10) = v36;
    *(v35 + 3) = v39;
    *(v35 + 4) = v40;
    *(v35 + 2) = v38;
    sub_24E60169C(&v52, v54, &qword_27F225978);
    v41 = *(v29 + 8);
    v41(v43, v33);
    v54[0] = v27;
    v54[1] = 0;
    v55 = v28;
    v57 = *&v50[2];
    v58 = *&v50[4];
    *v59 = *&v50[6];
    *&v59[15] = *(&v50[7] + 7);
    v56 = *v50;
    sub_24E601704(v54, &qword_27F225978);
    return (v41)(v31, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F683B18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v57);
  v58 = &v52 - v3;
  v4 = a1[6];
  v60 = a1[5];
  v61 = v4;
  v5 = sub_24E600AEC();

  v56 = v5;
  v6 = sub_24F925E18();
  v8 = v7;
  v10 = v9;
  sub_24F925A28();
  v11 = sub_24F925C98();
  v13 = v12;
  v15 = v14;

  sub_24E600B40(v6, v8, v10 & 1);

  sub_24F925958();
  v16 = sub_24F925B78();
  v18 = v17;
  LODWORD(v20) = v19;
  v22 = v21;
  sub_24E600B40(v11, v13, v15 & 1);

  v23 = a1[11];
  if (v23)
  {
    v60 = a1[10];
    v61 = v23;

    v24 = sub_24F925E18();
    v26 = v25;
    v28 = v27;
    sub_24F925A18();
    v29 = sub_24F925C98();
    v53 = v20;
    v20 = v29;
    v54 = v18;
    v31 = v30;
    v56 = v22;
    v33 = v32;

    sub_24E600B40(v24, v26, v28 & 1);

    LODWORD(v24) = sub_24F9251C8();
    v34 = *(v57 + 36);
    v35 = *MEMORY[0x277CE13B8];
    v36 = sub_24F927748();
    v37 = *(*(v36 - 8) + 104);
    v55 = v16;
    v38 = v58;
    v37(&v58[v34], v35, v36);
    *v38 = v24;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    v39 = sub_24F925C58();
    v41 = v40;
    LOBYTE(v24) = v42;
    v44 = v43;
    v45 = v33 & 1;
    v22 = v56;
    v46 = v20;
    LOBYTE(v20) = v53;
    v47 = v31;
    v18 = v54;
    sub_24E600B40(v46, v47, v45);

    v48 = v38;
    v16 = v55;
    sub_24E601704(v48, &qword_27F213F10);
    v49 = v24 & 1;
    sub_24E5FD138(v39, v41, v24 & 1);
  }

  else
  {
    v39 = 0;
    v41 = 0;
    v49 = 0;
    v44 = 0;
  }

  sub_24E5FD138(v16, v18, v20 & 1);

  sub_24E65D2B4(v39, v41, v49, v44);
  sub_24E65D2F8(v39, v41, v49, v44);
  LOBYTE(v60) = v20 & 1;
  v50 = v59;
  *v59 = v16;
  v50[1] = v18;
  *(v50 + 16) = v20 & 1;
  v50[3] = v22;
  v50[4] = v39;
  v50[5] = v41;
  v50[6] = v49;
  v50[7] = v44;
  sub_24E65D2F8(v39, v41, v49, v44);
  sub_24E600B40(v16, v18, v20 & 1);
}

uint64_t sub_24F683EE4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v2 = sub_24F926D08();

  sub_24F115AD8();
  result = sub_24F927348();
  *(a1 + 40) = result;
  *(a1 + 48) = v2;
  return result;
}

uint64_t sub_24F683F54()
{
  MEMORY[0x28223BE20](v0);
  sub_24F684888(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTableRowComponent);
  sub_24F6817F8(&qword_27F244548, type metadata accessor for GroupedTableRowComponent);
  return sub_24F9218E8();
}

unint64_t sub_24F684120()
{
  result = qword_27F24C0F0;
  if (!qword_27F24C0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C0D8);
    sub_24F6841D8();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C0F0);
  }

  return result;
}

unint64_t sub_24F6841D8()
{
  result = qword_27F24C0F8;
  if (!qword_27F24C0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C0D0);
    sub_24F684264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C0F8);
  }

  return result;
}

unint64_t sub_24F684264()
{
  result = qword_27F24C100;
  if (!qword_27F24C100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C0C8);
    sub_24E602068(&qword_27F24C108, &qword_27F24C0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C100);
  }

  return result;
}

uint64_t sub_24F68431C()
{
  v1 = type metadata accessor for GroupedTableRow(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);

  sub_24E63FFA4();

  if (*(v2 + 160))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 136);
  }

  v3 = *(v1 + 48);
  v4 = sub_24F92A6D8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = *(v1 + 52);
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24F684530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupedTableRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F684594@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for GroupedTableRow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F6835A4(v4, a1);
}

uint64_t sub_24F68460C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F68468C()
{
  result = qword_27F24C150;
  if (!qword_27F24C150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C130);
    sub_24F684718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C150);
  }

  return result;
}

unint64_t sub_24F684718()
{
  result = qword_27F24C158;
  if (!qword_27F24C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C148);
    sub_24F6847D0();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C158);
  }

  return result;
}

unint64_t sub_24F6847D0()
{
  result = qword_27F24C160;
  if (!qword_27F24C160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C140);
    sub_24E7DD2E0();
    sub_24E602068(&qword_27F21A958, &qword_27F2365A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C160);
  }

  return result;
}

uint64_t sub_24F684888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F6848F0()
{
  result = qword_27F24C178;
  if (!qword_27F24C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C178);
  }

  return result;
}

uint64_t sub_24F684944(uint64_t a1)
{
  v2 = type metadata accessor for GroupedTableRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F6849B4()
{
  result = qword_27F24C188;
  if (!qword_27F24C188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C0D8);
    sub_24F684120();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C188);
  }

  return result;
}

unint64_t sub_24F684AAC()
{
  result = qword_27F24C198;
  if (!qword_27F24C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C198);
  }

  return result;
}

unint64_t sub_24F684B04()
{
  result = qword_27F24C1A0;
  if (!qword_27F24C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C1A0);
  }

  return result;
}

unint64_t sub_24F684B5C()
{
  result = qword_27F24C1A8;
  if (!qword_27F24C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C1A8);
  }

  return result;
}

uint64_t sub_24F684BB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xEC00000044496E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7665684365646968 && a2 == 0xEB000000006E6F72 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7865546567646162 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t PlayNowPageContainerIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E70D960(v2, boxed_opaque_existential_1);
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24F68504C(uint64_t a1)
{
  v2 = sub_24F685624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F685088(uint64_t a1)
{
  v2 = sub_24F685624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayNowPageContainerIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C1B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F685624();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PlayNowPageContainerIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C1C0);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PlayNowPageContainerIntent();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F685624();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24F6856C4(v13, v11, type metadata accessor for Player);
    sub_24F6856C4(v11, v12, type metadata accessor for PlayNowPageContainerIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F6854C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C1B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F685624();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F685624()
{
  result = qword_27F24C1B8;
  if (!qword_27F24C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C1B8);
  }

  return result;
}

uint64_t type metadata accessor for PlayNowPageContainerIntent()
{
  result = qword_27F24C1C8;
  if (!qword_27F24C1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F6856C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F685740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F6857C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F685844()
{
  result = qword_27F24C1D8;
  if (!qword_27F24C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C1D8);
  }

  return result;
}

unint64_t sub_24F68589C()
{
  result = qword_27F24C1E0;
  if (!qword_27F24C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C1E0);
  }

  return result;
}

unint64_t sub_24F6858F4()
{
  result = qword_27F24C1E8;
  if (!qword_27F24C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C1E8);
  }

  return result;
}

uint64_t sub_24F68595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DD8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F685A38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DD8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

void sub_24F685B20()
{
  sub_24F68B6E4(319, &qword_27F215DF8, MEMORY[0x277CE02A8]);
  if (v0 <= 0x3F)
  {
    sub_24F685BD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F685BD8()
{
  if (!qword_27F234090)
  {
    type metadata accessor for OfferButtonViewModel();
    sub_24F68A764(&qword_27F234098, type metadata accessor for OfferButtonViewModel);
    v0 = sub_24F923648();
    if (!v1)
    {
      atomic_store(v0, &qword_27F234090);
    }
  }
}

uint64_t sub_24F685C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v15 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v24, v23, v19);
  (*(v15 + 16))(v17, a1, a5);

  return sub_24F68A8A8(v21, v17, a2, v28, v25, a4, a5, MEMORY[0x277CE1428], a8, a6, a7, MEMORY[0x277CE1410]);
}

double sub_24F685E48@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 44) = v7;
  *(a1 + 40) = v6;
  *(a1 + 46) = v8;
  return result;
}

uint64_t sub_24F685EE8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 44);
  v7 = *(a1 + 40);
  v8 = *(a1 + 46);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24EEFE1C8(v1, v2, v3, v4, v5, v7 | (v6 << 32), v8);

  return sub_24F9230A8();
}

uint64_t sub_24F685FC4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24F686044()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F6860C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v37 = a2;
  v38 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D58);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  type metadata accessor for OfferButtonViewModel();
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__disabled;
  LOBYTE(v41) = 0;
  sub_24F923058();
  (*(v11 + 32))(v14 + v15, v13, v10);
  v16 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  *&v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DA8);
  sub_24F923058();
  (*(v7 + 32))(v14 + v16, v9, v6);
  v17 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__theme;
  v41 = xmmword_24F943570;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB0);
  sub_24F923058();
  (*(v3 + 32))(v14 + v17, v5, v35);
  v18 = v14 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v19 = (v14 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
  *v19 = 0xD000000000000015;
  v19[1] = 0x800000024FA3FE10;
  v20 = (v14 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  *v20 = 0;
  v20[1] = 0;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) = 5;
  v21 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph) = v36;
  v22 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  swift_beginAccess();
  v23 = *(v7 + 8);

  v23(v14 + v22, v6);
  v48 = v37;
  v24 = v37;

  sub_24F923058();
  swift_endAccess();
  swift_beginAccess();
  v41 = xmmword_24F943590;
  v42 = 0;
  v43 = 0;
  v44 = 4;
  v46 = 0;
  v45 = 0;
  v47 = 0;
  v25 = v24;
  sub_24F923058();
  swift_endAccess();
  v26 = v38;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties) = v38;
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F928FD8();

  sub_24F92A758();

  v27 = v41;
  if (OfferDisplayProperties.isArcadeOffer.getter())
  {
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    *(v30 + 32) = v26;
    *(v30 + 40) = v24;
    *(v30 + 48) = 0;
    *(v30 + 60) = 0;
    *(v30 + 56) = 3;
    *(v30 + 62) = 16843009;
    *(v30 + 66) = 257;
    v31 = *&v27[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];

    [v31 lock];
    sub_24F213714(v14, sub_24E690EC8, v30, v27);
    [v31 unlock];
  }

  v32 = &v27[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  LOBYTE(v32) = (v32[8] & 0xC0) == 128;
  WORD2(v48) = 0;
  LODWORD(v48) = 3;
  v40 = 257;
  v39 = 16843009;
  v33 = *(v14 + v21);

  sub_24EEFB79C(v32, v26, v25, 0, &v48, &v39, v33);

  return v14;
}

uint64_t sub_24F6866E8@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = sub_24F929888();
  v90 = *(v2 - 8);
  v91 = v2;
  MEMORY[0x28223BE20](v2);
  v89 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_24F9241F8();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v74 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LargeOfferButton(0);
  v6 = v5 - 8;
  v72 = *(v5 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v71 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C200);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v12 = &v71 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C208);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v71 - v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C210);
  MEMORY[0x28223BE20](v86);
  v73 = &v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C218);
  v87 = *(v15 - 8);
  v88 = v15;
  MEMORY[0x28223BE20](v15);
  v85 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C220);
  MEMORY[0x28223BE20](v17 - 8);
  v92 = &v71 - v18;
  v19 = sub_24F9232F8();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = v1 + *(v6 + 28);
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v24 = type metadata accessor for OfferButtonViewModel();
  sub_24F68A764(&qword_27F234098, type metadata accessor for OfferButtonViewModel);
  v94 = v21;
  v77 = v22;
  v76 = v23;
  v75 = v24;
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v25 = v98;
  if (v98)
  {
    v26 = type metadata accessor for Action();
    v27 = sub_24F68A764(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v98 = 0uLL;
    v26 = 0;
    v27 = 0;
    *&v99 = 0;
  }

  *&v98 = v25;
  *(&v99 + 1) = v26;
  v100 = v27;
  sub_24F68B37C(v1, &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeOfferButton);
  v28 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v29 = swift_allocObject();
  sub_24F68B314(&v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for LargeOfferButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C228);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C230);
  v31 = sub_24E602068(&qword_27F24C238, &qword_27F24C230);
  *&v97[0] = v30;
  *(&v97[0] + 1) = v31;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  v32 = v74;
  sub_24F9241E8();
  sub_24E602068(&qword_27F24C240, &qword_27F24C200);
  sub_24F68A764(&qword_27F212838, MEMORY[0x277CDDB18]);
  v33 = v80;
  v34 = v79;
  v35 = v84;
  sub_24F926178();
  (*(v83 + 8))(v32, v35);
  (*(v78 + 8))(v12, v34);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  LOBYTE(v35) = v98;
  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  v38 = v73;
  (*(v81 + 32))(v73, v33, v82);
  v39 = v86;
  v40 = (v38 + *(v86 + 36));
  *v40 = KeyPath;
  v40[1] = sub_24E600A48;
  v40[2] = v37;
  v98 = 0u;
  v99 = 0u;
  memset(v97, 0, sizeof(v97));
  v41 = v89;
  sub_24F9297B8();
  sub_24E601704(v97, &qword_27F2129B0);
  sub_24E601704(&v98, &qword_27F2129B0);
  v42 = sub_24F68ACE0();
  v43 = v85;
  sub_24F925EE8();
  (*(v90 + 8))(v41, v91);
  sub_24E601704(v38, &qword_27F24C210);
  v44 = (sub_24F923628() + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];

  if (v45)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (!v45)
  {
    v45 = 0xE000000000000000;
  }

  *&v98 = v47;
  *(&v98 + 1) = v45;
  v95 = v39;
  v96 = v42;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v48 = v92;
  v49 = v88;
  sub_24F926538();

  (*(v87 + 8))(v43, v49);
  *(&v99 + 1) = sub_24F9271D8();
  v100 = sub_24F68A764(&qword_27F214E38, MEMORY[0x277CE1260]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v51 = *MEMORY[0x277CE0118];
  v52 = sub_24F924B38();
  (*(*(v52 - 8) + 104))(boxed_opaque_existential_1, v51, v52);
  v53 = v93;
  sub_24E60169C(&v98, v93, &qword_27F24C250);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C258);
  sub_24E60169C(v48, v53 + v54[9], &qword_27F24C220);
  v55 = v53 + v54[10];
  *v55 = sub_24F923398() & 1;
  *(v55 + 8) = v56;
  *(v55 + 16) = v57 & 1;
  v58 = v53 + v54[11];
  *v58 = swift_getKeyPath();
  *(v58 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v59 = qword_27F24E488;
  v60 = sub_24F923398();
  v62 = v61;
  v64 = v63;
  v65 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C260) + 36);
  *v65 = v59;
  *(v65 + 8) = v60 & 1;
  *(v65 + 16) = v62;
  *(v65 + 24) = v64 & 1;
  LOBYTE(v59) = sub_24F923398();
  v67 = v66;
  LOBYTE(v62) = v68;
  sub_24E601704(&v98, &qword_27F24C250);
  sub_24E601704(v48, &qword_27F24C220);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C268);
  v70 = v53 + *(result + 36);
  *v70 = v59 & 1;
  *(v70 + 8) = v67;
  *(v70 + 16) = v62 & 1;
  return result;
}

uint64_t sub_24F687360(uint64_t a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C230);
  MEMORY[0x28223BE20](v6);
  v8 = (v12 - v7);
  *v8 = sub_24F927618();
  v8[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C270);
  sub_24F687600(a1, v8 + *(v10 + 44));
  type metadata accessor for LargeOfferButton(0);
  type metadata accessor for OfferButtonViewModel();
  sub_24F68A764(&qword_27F234098, type metadata accessor for OfferButtonViewModel);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v12[1])
  {
  }

  sub_24F9248B8();
  sub_24E602068(&qword_27F24C238, &qword_27F24C230);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v8, &qword_27F24C230);
}

uint64_t sub_24F687600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a2;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C278);
  MEMORY[0x28223BE20](v156);
  v158 = (&v152 - v3);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C280);
  MEMORY[0x28223BE20](v185);
  v157 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v168 = &v152 - v6;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C288);
  MEMORY[0x28223BE20](v155);
  v160 = &v152 - v7;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C290);
  MEMORY[0x28223BE20](v169);
  v159 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v161 = &v152 - v10;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C298);
  MEMORY[0x28223BE20](v165);
  v166 = &v152 - v11;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C2A0);
  MEMORY[0x28223BE20](v179);
  v167 = &v152 - v12;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C2A8);
  MEMORY[0x28223BE20](v181);
  v183 = &v152 - v13;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C2B0);
  MEMORY[0x28223BE20](v176);
  v178 = &v152 - v14;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C2B8);
  MEMORY[0x28223BE20](v162);
  v163 = &v152 - v15;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C2C0);
  MEMORY[0x28223BE20](v177);
  v164 = &v152 - v16;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C2C8);
  MEMORY[0x28223BE20](v182);
  v180 = &v152 - v17;
  v175 = type metadata accessor for LargeButtonContentView();
  MEMORY[0x28223BE20](v175);
  v153 = (&v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v154 = &v152 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = (&v152 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = &v152 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = (&v152 - v28);
  MEMORY[0x28223BE20](v30);
  v32 = &v152 - v31;
  v33 = type metadata accessor for LargeOfferButton(0);
  v34 = (a1 + v33[5]);
  v35 = *v34;
  v36 = v34[1];
  v37 = *(v34 + 16);
  v38 = type metadata accessor for OfferButtonViewModel();
  v39 = sub_24F68A764(&qword_27F234098, type metadata accessor for OfferButtonViewModel);
  v171 = v35;
  v172 = v36;
  v174 = v37;
  v173 = v38;
  v170 = v39;
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v40 = a1;

  v41 = BYTE6(v188);
  v42 = v189;
  v43 = *(a1 + v33[6]);
  if (v192 <= 1u)
  {
    v161 = v190;
    v74 = v187;
    v167 = v32;
    v169 = v188;
    LODWORD(v168) = v43;
    if (v192)
    {
      v166 = v191;
      v135 = *(v40 + v33[7]);
      v136 = 0x4046000000000000;
      if (!*(v40 + v33[7]))
      {
        v136 = 0;
      }

      v165 = v136;
      LODWORD(v167) = v135 ^ 1;
      v160 = sub_24F688D98();
      LODWORD(v159) = v137;
      v138 = sub_24F688EFC();
      v140 = v139;
      sub_24F923628();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      v141 = v193;
      if (v193)
      {
      }

      *v23 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
      swift_storeEnumTagMultiPayload();
      v142 = v175;
      v143 = (v23 + *(v175 + 20));
      *v143 = 0;
      v143[1] = 0;
      v144 = (v23 + v142[6]);
      v145 = v169;
      *v144 = v74;
      v144[1] = v145;
      *(v23 + v142[7]) = 0;
      v146 = (v23 + v142[8]);
      v147 = v166;
      *v146 = v161;
      v146[1] = v147;
      *(v23 + v142[9]) = v168;
      *(v23 + v142[10]) = v135;
      v148 = v23 + v142[11];
      *v148 = v165;
      v148[8] = v167;
      v149 = v23 + v142[12];
      *v149 = v160;
      v149[8] = v159 & 1;
      v150 = v23 + v142[13];
      *v150 = v138;
      v150[8] = v140 & 1;
      *(v23 + v142[14]) = v141 != 0;
      *(v23 + v142[15]) = 1;
      *&v193 = 0x4028000000000000;
      sub_24E66ED98();
      sub_24F9237C8();
      v91 = v26;
      sub_24F68B314(v23, v26, type metadata accessor for LargeButtonContentView);
      sub_24F68B37C(v26, v163, type metadata accessor for LargeButtonContentView);
    }

    else
    {
      v75 = *(v40 + v33[7]);
      v76 = 0x4046000000000000;
      if (!*(v40 + v33[7]))
      {
        v76 = 0;
      }

      v165 = v76;
      LODWORD(v166) = v75 ^ 1;
      v160 = sub_24F688D98();
      LODWORD(v159) = v77;
      v78 = sub_24F688EFC();
      v80 = v79;
      sub_24F923628();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      v81 = v193;
      if (v193)
      {
      }

      *v29 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
      swift_storeEnumTagMultiPayload();
      v82 = v175;
      v83 = (v29 + *(v175 + 20));
      v84 = v169;
      *v83 = v74;
      v83[1] = v84;
      v85 = (v29 + v82[6]);
      *v85 = 0;
      v85[1] = 0;
      *(v29 + v82[7]) = 0;
      v86 = (v29 + v82[8]);
      v87 = v161;
      *v86 = v42;
      v86[1] = v87;
      *(v29 + v82[9]) = v168;
      *(v29 + v82[10]) = v75;
      v88 = v29 + v82[11];
      *v88 = v165;
      v88[8] = v166;
      v89 = v29 + v82[12];
      *v89 = v160;
      v89[8] = v159 & 1;
      v90 = v29 + v82[13];
      *v90 = v78;
      v90[8] = v80 & 1;
      *(v29 + v82[14]) = v81 != 0;
      *(v29 + v82[15]) = 1;
      *&v193 = 0x4028000000000000;
      sub_24E66ED98();
      sub_24F9237C8();
      v91 = v167;
      sub_24F68B314(v29, v167, type metadata accessor for LargeButtonContentView);
      sub_24F68B37C(v91, v163, type metadata accessor for LargeButtonContentView);
    }

    swift_storeEnumTagMultiPayload();
    sub_24F68A764(&qword_27F215FE0, type metadata accessor for LargeButtonContentView);
    v110 = v164;
    sub_24F924E28();
    v111 = &qword_27F24C2C0;
    sub_24E60169C(v110, v178, &qword_27F24C2C0);
    goto LABEL_30;
  }

  if (v192 == 2)
  {
    v161 = v190;
    v92 = v187;
    v93 = v188;
    LODWORD(v168) = v43;
    v94 = *(a1 + v33[7]);
    v95 = 0x4046000000000000;
    if (!v94)
    {
      v95 = 0;
    }

    v164 = v95;
    v163 = sub_24F688D98();
    LODWORD(v162) = v96;
    v97 = sub_24F688EFC();
    LODWORD(v160) = v98;
    sub_24F923628();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v99 = v193;
    if (v193)
    {
    }

    KeyPath = swift_getKeyPath();
    v101 = v153;
    *v153 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
    swift_storeEnumTagMultiPayload();
    v102 = v175;
    v103 = (v101 + *(v175 + 20));
    *v103 = v92;
    v103[1] = v93;
    v104 = (v101 + v102[6]);
    v105 = v161;
    *v104 = v42;
    v104[1] = v105;
    *(v101 + v102[7]) = 0;
    v106 = (v101 + v102[8]);
    *v106 = 0;
    v106[1] = 0;
    *(v101 + v102[9]) = v168;
    *(v101 + v102[10]) = v94;
    v107 = v101 + v102[11];
    *v107 = v164;
    *(v107 + 8) = v94 ^ 1;
    v108 = v101 + v102[12];
    *v108 = v163;
    *(v108 + 8) = v162 & 1;
    v109 = v101 + v102[13];
    *v109 = v97;
    *(v109 + 8) = v160 & 1;
    *(v101 + v102[14]) = v99 != 0;
    *(v101 + v102[15]) = 1;
    *&v193 = 0x4028000000000000;
    sub_24E66ED98();
    sub_24F9237C8();
    v91 = v154;
    sub_24F68B314(v101, v154, type metadata accessor for LargeButtonContentView);
    sub_24F68B37C(v91, v166, type metadata accessor for LargeButtonContentView);
    swift_storeEnumTagMultiPayload();
    sub_24F68A764(&qword_27F215FE0, type metadata accessor for LargeButtonContentView);
    sub_24F68B1A4(&qword_27F24C2E8, &qword_27F24C290, &unk_24FA19BE8, sub_24F68B0C8);
    v110 = v167;
    sub_24F924E28();
    v111 = &qword_27F24C2A0;
    sub_24E60169C(v110, v178, &qword_27F24C2A0);
LABEL_30:
    swift_storeEnumTagMultiPayload();
    sub_24F68AF2C();
    sub_24F68AFE0();
    v151 = v180;
    sub_24F924E28();
    sub_24E601704(v110, v111);
    sub_24E60169C(v151, v183, &qword_27F24C2C8);
    swift_storeEnumTagMultiPayload();
    sub_24F68AEA0();
    sub_24F68B1A4(&qword_27F24C300, &qword_27F24C280, &unk_24FA19BD8, sub_24F68B258);
    sub_24F924E28();
    sub_24E601704(v151, &qword_27F24C2C8);
    return sub_24E672A08(v91);
  }

  v44 = v33;
  if (v192 == 3)
  {
    v45 = swift_getKeyPath();
    v46 = v160;
    *v160 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
    swift_storeEnumTagMultiPayload();
    v47 = type metadata accessor for LargeOfferButton.IndeterminateProgressView(0);
    v48 = v46 + v47[5];
    LOBYTE(v186) = 0;
    sub_24F926F28();
    v49 = *(&v193 + 1);
    *v48 = v193;
    *(v48 + 8) = v49;
    *(v46 + v47[6]) = 0x4000000000000000;
    v50 = v47[7];
    LODWORD(v168) = v43;
    *(v46 + v50) = v43;
    sub_24F689068();
    sub_24F689068();
    sub_24F927618();
    sub_24F9238C8();
    v51 = (v46 + *(v155 + 36));
    v52 = v194;
    *v51 = v193;
    v51[1] = v52;
    v51[2] = v195;
    sub_24F923628();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v53 = v186;
    if (v186)
    {
    }

    v174 = v53 != 0;
    v54 = *(v40 + v33[7]);
    v55 = 0x4046000000000000;
    if (!*(v40 + v44[7]))
    {
      v55 = 0;
    }

    v173 = v55;
    v56 = sub_24F688D98();
    v58 = v57;
    v59 = sub_24F688EFC();
    v61 = v60;
    v62 = v159;
    v63 = &v159[*(v169 + 36)];
    *v63 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
    swift_storeEnumTagMultiPayload();
    v64 = type metadata accessor for LargeButtonForegroundStyleViewModifier();
    v65 = v63 + v64[5];
    *v65 = swift_getKeyPath();
    v65[8] = 0;
    *(v63 + v64[6]) = v168;
    *(v63 + v64[7]) = v174;
    v66 = v63 + v64[8];
    *v66 = v173;
    v66[8] = v54 ^ 1;
    v67 = v63 + v64[9];
    *v67 = v56;
    v67[8] = v58 & 1;
    v68 = v63 + v64[10];
    *v68 = v59;
    v68[8] = v61 & 1;
    sub_24E6009C8(v46, v62, &qword_27F24C288);
    v69 = &qword_27F24C290;
    v70 = v161;
    sub_24E6009C8(v62, v161, &qword_27F24C290);
    sub_24E60169C(v70, v166, &qword_27F24C290);
    swift_storeEnumTagMultiPayload();
    sub_24F68A764(&qword_27F215FE0, type metadata accessor for LargeButtonContentView);
    sub_24F68B1A4(&qword_27F24C2E8, &qword_27F24C290, &unk_24FA19BE8, sub_24F68B0C8);
    v71 = v167;
    sub_24F924E28();
    sub_24E60169C(v71, v178, &qword_27F24C2A0);
    swift_storeEnumTagMultiPayload();
    sub_24F68AF2C();
    sub_24F68AFE0();
    v72 = v180;
    sub_24F924E28();
    sub_24E601704(v71, &qword_27F24C2A0);
    sub_24E60169C(v72, v183, &qword_27F24C2C8);
    swift_storeEnumTagMultiPayload();
    sub_24F68AEA0();
    sub_24F68B1A4(&qword_27F24C300, &qword_27F24C280, &unk_24FA19BD8, sub_24F68B258);
    sub_24F924E28();
    sub_24E601704(v72, &qword_27F24C2C8);
    v73 = v70;
  }

  else
  {
    v112 = v187;
    v113 = swift_getKeyPath();
    v114 = v158;
    *v158 = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
    swift_storeEnumTagMultiPayload();
    v115 = type metadata accessor for LargeOfferButton.DownloadingProgressView(0);
    *(v114 + v115[5]) = v112;
    *(v114 + v115[6]) = 0x4000000000000000;
    *(v114 + v115[7]) = v41 & 1;
    *(v114 + v115[8]) = v43;
    sub_24F689068();
    sub_24F689068();
    sub_24F927618();
    sub_24F9238C8();
    v116 = (v114 + *(v156 + 36));
    v117 = v194;
    *v116 = v193;
    v116[1] = v117;
    v116[2] = v195;
    v118 = *(v40 + v44[7]);
    v119 = 0x4046000000000000;
    if (!v118)
    {
      v119 = 0;
    }

    v180 = v119;
    v120 = sub_24F688D98();
    LODWORD(v179) = v121;
    v122 = sub_24F688EFC();
    v124 = v123;
    v125 = v43;
    v126 = v157;
    v127 = &v157[*(v185 + 36)];
    *v127 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
    swift_storeEnumTagMultiPayload();
    v128 = type metadata accessor for LargeButtonForegroundStyleViewModifier();
    v129 = v127 + v128[5];
    *v129 = swift_getKeyPath();
    v129[8] = 0;
    *(v127 + v128[6]) = v125;
    *(v127 + v128[7]) = 1;
    v130 = v127 + v128[8];
    *v130 = v180;
    v130[8] = v118 ^ 1;
    v131 = v127 + v128[9];
    *v131 = v120;
    v131[8] = v179 & 1;
    v132 = v127 + v128[10];
    *v132 = v122;
    v132[8] = v124 & 1;
    sub_24E6009C8(v114, v126, &qword_27F24C278);
    v69 = &qword_27F24C280;
    v133 = v168;
    sub_24E6009C8(v126, v168, &qword_27F24C280);
    sub_24E60169C(v133, v183, &qword_27F24C280);
    swift_storeEnumTagMultiPayload();
    sub_24F68AEA0();
    sub_24F68B1A4(&qword_27F24C300, &qword_27F24C280, &unk_24FA19BD8, sub_24F68B258);
    sub_24F924E28();
    v73 = v133;
  }

  return sub_24E601704(v73, v69);
}

uint64_t sub_24F688D98()
{
  if (*(v0 + *(type metadata accessor for LargeOfferButton(0) + 28)) != 1)
  {
    return 0x404E000000000000;
  }

  type metadata accessor for OfferButtonViewModel();
  sub_24F68A764(&qword_27F234098, type metadata accessor for OfferButtonViewModel);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v1 = v9 | (v10 << 32);
  if (v11 > 1u)
  {
    if (v11 != 2)
    {
      return 0x4046000000000000;
    }

    v3 = 2;
LABEL_9:
    sub_24EEFE350(v4, v5, v6, v7, v8, v1, v3);
    return 0x4054000000000000;
  }

  if (!v11)
  {
    v3 = 0;
    goto LABEL_9;
  }

  sub_24EEFE350(v4, v5, v6, v7, v8, v1, 1);
  return 0x4046000000000000;
}

uint64_t sub_24F688EFC()
{
  if (*(v0 + *(type metadata accessor for LargeOfferButton(0) + 28)) != 1)
  {
    return 0x406E000000000000;
  }

  type metadata accessor for OfferButtonViewModel();
  sub_24F68A764(&qword_27F234098, type metadata accessor for OfferButtonViewModel);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v1 = v9 | (v10 << 32);
  if (v11 > 1u)
  {
    if (v11 != 2)
    {
      return 0x4046000000000000;
    }

    v3 = 2;
LABEL_9:
    sub_24EEFE350(v4, v5, v6, v7, v8, v1, v3);
    return 0;
  }

  if (!v11)
  {
    v3 = 0;
    goto LABEL_9;
  }

  sub_24EEFE350(v4, v5, v6, v7, v8, v1, 1);
  return 0x4046000000000000;
}

double sub_24F689068()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = sub_24F924C48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 28.0;
  if ((*(v0 + *(type metadata accessor for LargeOfferButton(0) + 28)) & 1) == 0)
  {
    sub_24E60169C(v0, v7, &qword_27F215EB8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v9 + 32))(v11, v7, v8);
    }

    else
    {
      sub_24F92BDC8();
      v14 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
    }

    v15 = (*(v9 + 88))(v11, v8);
    if (v15 != *MEMORY[0x277CE0268] && v15 != *MEMORY[0x277CE0298] && v15 != *MEMORY[0x277CE02A0] && v15 != *MEMORY[0x277CE0290])
    {
      v12 = 30.0;
      if (v15 != *MEMORY[0x277CE0260])
      {
        if (v15 == *MEMORY[0x277CE0270])
        {
          return 32.0;
        }

        else if (v15 == *MEMORY[0x277CE0248])
        {
          return 34.0;
        }

        else
        {
          v12 = 36.0;
          if (v15 != *MEMORY[0x277CE0280] && v15 != *MEMORY[0x277CE0278] && v15 != *MEMORY[0x277CE0288] && v15 != *MEMORY[0x277CE0250] && v15 != *MEMORY[0x277CE0258])
          {
            (*(v9 + 8))(v11, v8);
            return 28.0;
          }
        }
      }
    }
  }

  return v12;
}

double sub_24F689430@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LargeOfferButton.IndeterminateProgressView(0);
  v48 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = v5;
  v50 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24F923F78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v40[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v13);
  v15 = &v40[-v14];
  v16 = (v1 + *(v4 + 20));
  v17 = *v16;
  v18 = *(v16 + 1);
  v45 = v17;
  LOBYTE(v52) = v17;
  v46 = v18;
  v53 = v18;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  v43 = v51;
  v47 = v4;
  if (*(v1 + *(v4 + 28)) == 1)
  {
    v41 = sub_24F9251C8();
    v19 = *(v13 + 36);
    v42 = v6;
    v20 = v2;
    v21 = *MEMORY[0x277CE13B8];
    v22 = sub_24F927748();
    v23 = v21;
    v2 = v20;
    v6 = v42;
    (*(*(v22 - 8) + 104))(&v15[v19], v23, v22);
    *v15 = v41;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
  }

  else
  {
    v52 = sub_24F926C88();
  }

  v24 = sub_24F9238D8();
  v25 = *(v2 + *(v47 + 24));
  sub_24F7699B0(v12);
  (*(v7 + 104))(v9, *MEMORY[0x277CDFA90], v6);
  v26 = sub_24F923F68();
  v27 = *(v7 + 8);
  v27(v9, v6);
  v27(v12, v6);
  if (v26)
  {
    v28 = -1.0;
  }

  else
  {
    v28 = 1.0;
  }

  if (v43)
  {
    v29 = 6.28318531;
  }

  else
  {
    v29 = 0.0;
  }

  sub_24F9278A8();
  v31 = v30;
  v33 = v32;
  sub_24F9276B8();
  v34 = sub_24F927658();

  LOBYTE(v52) = v45;
  v53 = v46;
  sub_24F926F38();
  v35 = v51;
  v36 = v50;
  sub_24F68B37C(v2, v50, type metadata accessor for LargeOfferButton.IndeterminateProgressView);
  v37 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v38 = swift_allocObject();
  sub_24F68B314(v36, v38 + v37, type metadata accessor for LargeOfferButton.IndeterminateProgressView);
  result = 0.0;
  *a1 = xmmword_24FA19A00;
  *(a1 + 16) = v29;
  *(a1 + 24) = v24;
  *(a1 + 32) = v25;
  *(a1 + 40) = v28;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = v31;
  *(a1 + 64) = v33;
  *(a1 + 72) = v34;
  *(a1 + 80) = v35;
  *(a1 + 88) = sub_24F68BC5C;
  *(a1 + 96) = v38;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_24F6898D4()
{
  type metadata accessor for LargeOfferButton.IndeterminateProgressView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24F68994C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v75 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20);
  MEMORY[0x28223BE20](v63);
  v71 = (&v60 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C360);
  v72 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C368);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v60 - v13);
  v15 = sub_24F923F78();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  sub_24F7699B0(&v60 - v20);
  v22 = *(v16 + 104);
  v67 = *MEMORY[0x277CDFA90];
  v68 = v16 + 104;
  v66 = v22;
  v22(v18);
  v70 = sub_24F923F68();
  v23 = *(v16 + 8);
  v23(v18, v15);
  v69 = v23;
  v23(v21, v15);
  v77 = type metadata accessor for LargeOfferButton.DownloadingProgressView(0);
  v76 = *(a1 + v77[8]);
  if (v76 == 1)
  {
    v24 = sub_24F9251B8();
    v25 = v4;
    v26 = *(v12 + 36);
    v62 = v12;
    v27 = *MEMORY[0x277CE13B8];
    v28 = sub_24F927748();
    v29 = v14 + v26;
    v4 = v25;
    (*(*(v28 - 8) + 104))(v29, v27, v28);
    *v14 = v24;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
  }

  else
  {
    sub_24F926C88();
    v30 = sub_24F926D08();

    v78 = v30;
  }

  v31 = sub_24F9238D8();
  v32 = v31;
  v33 = *(a1 + v77[6]);
  if (*(a1 + v77[7]))
  {
    v34 = 1;
    v35 = v73;
  }

  else
  {
    v61 = v31;
    v62 = v4;
    v36 = sub_24F926DF8();
    v37 = v71;
    v38 = (v71 + *(v63 + 36));
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
    v40 = *MEMORY[0x277CE1050];
    v41 = sub_24F926E78();
    (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
    *v38 = swift_getKeyPath();
    *v37 = v36;
    if (v76 == 1)
    {
      v42 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    }

    else
    {
      v42 = sub_24F926C88();
    }

    v78 = v42;
    v43 = sub_24F9238D8();
    v4 = v62;
    v44 = v65;
    sub_24E6009C8(v71, v65, &qword_27F22DF20);
    *(v44 + *(v4 + 36)) = v43;
    v45 = v44;
    v46 = v64;
    sub_24E6009C8(v45, v64, &qword_27F24C360);
    v35 = v73;
    sub_24E6009C8(v46, v73, &qword_27F24C360);
    v34 = 0;
    v32 = v61;
  }

  (*(v72 + 56))(v35, v34, 1, v4);
  v47 = *(a1 + v77[5]);
  sub_24F7699B0(v21);
  v66(v18, v67, v15);
  v48 = sub_24F923F68();
  v49 = v69;
  v69(v18, v15);
  v49(v21, v15);
  if (v76 == 1)
  {
    v50 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  else
  {
    v50 = sub_24F926C88();
  }

  v78 = v50;
  v51 = sub_24F9238D8();
  if (v70)
  {
    v52 = 1.57079633;
  }

  else
  {
    v52 = -1.57079633;
  }

  if (v48)
  {
    v53 = 1.57079633;
  }

  else
  {
    v53 = -1.57079633;
  }

  v54 = v74;
  sub_24E60169C(v35, v74, &qword_27F24C368);
  v55 = v75;
  *v75 = xmmword_24F98B440;
  v55[2] = v52;
  *(v55 + 3) = v32;
  *(v55 + 4) = v33;
  v56 = v35;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24C370);
  sub_24E60169C(v54, v55 + *(v57 + 48), &qword_27F24C368);
  v58 = v55 + *(v57 + 64);
  *v58 = 0;
  *(v58 + 1) = v47;
  *(v58 + 2) = v53;
  *(v58 + 3) = v51;
  *(v58 + 4) = v33;

  sub_24E601704(v56, &qword_27F24C368);

  sub_24E601704(v54, &qword_27F24C368);
}

uint64_t sub_24F68A0CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_24F927618();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C350);
  sub_24F68994C(v2, (a2 + *(v6 + 44)));
  v7 = sub_24F9276B8();
  v8 = *(v2 + *(a1 + 20));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C358);
  v10 = (a2 + *(result + 36));
  *v10 = v7;
  v10[1] = v8;
  return result;
}

uint64_t sub_24F68A16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C450);
  v25 = *(a1 + 16);
  v24 = sub_24E602068(&qword_27F24C458, &qword_27F24C450);
  v23 = *(a1 + 24);
  v36[0] = v26;
  v36[1] = v25;
  v36[2] = MEMORY[0x277CE1428];
  v36[3] = v24;
  v36[4] = v23;
  v36[5] = MEMORY[0x277CE1410];
  v5 = sub_24F9240C8();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = sub_24F924038();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = sub_24F924038();
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v35 = *v3;
  v17 = *(a1 + 44);
  sub_24F923658();
  sub_24F685C88(v3 + v17, v36, 1, v26, v25, v24, v23, v7);
  sub_24F4A1F90(v36);
  sub_24F9278A8();
  WitnessTable = swift_getWitnessTable();
  sub_24F926388();
  (*(v27 + 8))(v7, v5);
  v33 = WitnessTable;
  v34 = MEMORY[0x277CDFB38];
  v19 = swift_getWitnessTable();
  sub_24F926A28();
  (*(v28 + 8))(v10, v8);
  v31 = v19;
  v32 = MEMORY[0x277CDF918];
  v20 = swift_getWitnessTable();
  sub_24E7896B8(v13, v11, v20);
  v21 = *(v29 + 8);
  v21(v13, v11);
  sub_24E7896B8(v16, v11, v20);
  return (v21)(v16, v11);
}

uint64_t sub_24F68A5CC()
{
  v1 = *(type metadata accessor for LargeOfferButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F924C48();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  sub_24E683950();

  return swift_deallocObject();
}

uint64_t sub_24F68A6F4()
{
  v1 = *(type metadata accessor for LargeOfferButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24F687360(v2);
}

uint64_t sub_24F68A764(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F68A7AC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24F68A830()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F68A8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a5;
  v42 = a4;
  v37 = a3;
  v38 = a8;
  v40 = a2;
  v47 = a9;
  v48 = a1;
  v33[1] = a10;
  v41 = *(a8 - 8);
  v45 = a12;
  MEMORY[0x28223BE20](a1);
  v39 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24F924E08();
  MEMORY[0x28223BE20](v46);
  v43 = v33 - v15;
  v36 = *(a7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a6 - 8);
  v19 = v34;
  MEMORY[0x28223BE20](v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F923AC8();
  MEMORY[0x28223BE20](v23);
  WitnessTable = swift_getWitnessTable();
  v49 = v23;
  v50 = a7;
  v51 = WitnessTable;
  v52 = a11;
  v35 = sub_24F9234B8();
  v25 = MEMORY[0x28223BE20](v35);
  v26 = *(v19 + 16);
  v33[0] = a6;
  v26(v22, v48, a6, v25);
  sub_24F923AB8();
  v27 = v36;
  v28 = v40;
  (*(v36 + 16))(v18, v40, a7);
  sub_24F9234A8();
  v29 = v41;
  v30 = v38;
  v31 = v44;
  (*(v41 + 16))(v39, v44, v38);
  sub_24F927618();
  (*(v29 + 8))(v31, v30);
  (*(v27 + 8))(v28, a7);
  (*(v34 + 8))(v48, v33[0]);
  sub_24F924DF8();
  return sub_24F923FD8();
}

unint64_t sub_24F68ACE0()
{
  result = qword_27F24C248;
  if (!qword_27F24C248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C200);
    sub_24F9241F8();
    sub_24E602068(&qword_27F24C240, &qword_27F24C200);
    sub_24F68A764(&qword_27F212838, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C248);
  }

  return result;
}

unint64_t sub_24F68AEA0()
{
  result = qword_27F24C2D0;
  if (!qword_27F24C2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C2C8);
    sub_24F68AF2C();
    sub_24F68AFE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C2D0);
  }

  return result;
}

unint64_t sub_24F68AF2C()
{
  result = qword_27F24C2D8;
  if (!qword_27F24C2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C2C0);
    sub_24F68A764(&qword_27F215FE0, type metadata accessor for LargeButtonContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C2D8);
  }

  return result;
}

unint64_t sub_24F68AFE0()
{
  result = qword_27F24C2E0;
  if (!qword_27F24C2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C2A0);
    sub_24F68A764(&qword_27F215FE0, type metadata accessor for LargeButtonContentView);
    sub_24F68B1A4(&qword_27F24C2E8, &qword_27F24C290, &unk_24FA19BE8, sub_24F68B0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C2E0);
  }

  return result;
}

unint64_t sub_24F68B0C8()
{
  result = qword_27F24C2F0;
  if (!qword_27F24C2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C288);
    sub_24F68A764(&qword_27F24C2F8, type metadata accessor for LargeOfferButton.IndeterminateProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C2F0);
  }

  return result;
}

uint64_t sub_24F68B1A4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24F68A764(&qword_27F215EA0, type metadata accessor for LargeButtonForegroundStyleViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F68B258()
{
  result = qword_27F24C308;
  if (!qword_27F24C308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C278);
    sub_24F68A764(&qword_27F24C310, type metadata accessor for LargeOfferButton.DownloadingProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C308);
  }

  return result;
}

uint64_t sub_24F68B314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F68B37C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F68B3E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F68B41C()
{

  return swift_deallocObject();
}

uint64_t sub_24F68B488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F68B574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_24F68B638()
{
  sub_24F68B6E4(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24F68B6E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_24F68B74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24F68B838(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_24F68B900()
{
  sub_24F68B6E4(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
  if (v0 <= 0x3F)
  {
    sub_24E654514();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F68B9BC()
{
  result = qword_27F24C338;
  if (!qword_27F24C338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C268);
    sub_24F68BA48();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C338);
  }

  return result;
}

unint64_t sub_24F68BA48()
{
  result = qword_27F24C340;
  if (!qword_27F24C340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C260);
    sub_24E602068(&qword_27F24C348, &qword_27F24C258);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C340);
  }

  return result;
}

uint64_t sub_24F68BB38()
{
  v1 = *(type metadata accessor for LargeOfferButton.IndeterminateProgressView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923F78();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F68BC5C()
{
  type metadata accessor for LargeOfferButton.IndeterminateProgressView(0);

  return sub_24F6898D4();
}

uint64_t sub_24F68BCC4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F68BD54(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v7 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a2 - v5;
  v9 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8 + 1;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v5 + (v9 | v14) + 1;
}

unsigned int *sub_24F68BE88(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v12 = 0;
    v13 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a3 - v6;
    if (((*(v5 + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v8) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v8) = 0;
      }

      else if (v12)
      {
        *(result + v8) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v17 = *(v5 + 56);
      v18 = (((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;

      return v17(v18);
    }
  }

  if (((*(v5 + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v5 + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v15 = ~v6 + a2;
    v16 = result;
    bzero(result, ((*(v5 + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v16;
    *v16 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(result + v8) = v14;
    }

    else
    {
      *(result + v8) = v14;
    }
  }

  else if (v12)
  {
    *(result + v8) = v14;
  }

  return result;
}

unint64_t sub_24F68C058()
{
  result = qword_27F24C3F8;
  if (!qword_27F24C3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C400);
    sub_24F68C0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C3F8);
  }

  return result;
}

unint64_t sub_24F68C0E4()
{
  result = qword_27F24C408;
  if (!qword_27F24C408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C410);
    sub_24F68C19C();
    sub_24E602068(&qword_27F218870, &unk_27F2364C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C408);
  }

  return result;
}

unint64_t sub_24F68C19C()
{
  result = qword_27F24C418;
  if (!qword_27F24C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C420);
    sub_24E602068(&qword_27F24C428, &qword_27F24C430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C418);
  }

  return result;
}

unint64_t sub_24F68C258()
{
  result = qword_27F24C438;
  if (!qword_27F24C438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C358);
    sub_24E602068(&qword_27F24C440, &qword_27F24C448);
    sub_24E602068(&qword_27F229228, &qword_27F229230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24C438);
  }

  return result;
}

uint64_t sub_24F68C380()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24C450);
  sub_24E602068(&qword_27F24C458, &qword_27F24C450);
  sub_24F9240C8();
  sub_24F924038();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_24F68C4DC()
{
  result = qword_27F2151B8;
  if (!qword_27F2151B8)
  {
    type metadata accessor for GamesRecentlyPlayedDataIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2151B8);
  }

  return result;
}

uint64_t sub_24F68C534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return (sub_24F68C5EC)(a2, a3);
}

uint64_t sub_24F68C5EC(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA18);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F68C6CC, 0, 0);
}

uint64_t sub_24F68C6CC()
{
  v1 = v0[12];
  v0[17] = *v1;
  v0[18] = v1[1];
  v2 = type metadata accessor for GamesRecentlyPlayedDataIntent();
  v0[19] = *(v1 + *(v2 + 20));
  v3 = *(v1 + *(v2 + 28));
  v4 = 1;
  if (v3 == 1)
  {
    sub_24F920698();
    v4 = 0;
  }

  v6 = v0[15];
  v5 = v0[16];
  v7 = sub_24F920728();
  (*(*(v7 - 8) + 56))(v6, v4, 1, v7);
  sub_24F68CDF8(v6, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_24F68C84C;

  return MEMORY[0x28217F228](v0 + 7, v8, v8);
}

uint64_t sub_24F68C84C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24F68CC14;
  }

  else
  {
    v2 = sub_24F68C960;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F68C960()
{
  v1 = v0[19];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = sub_24F920398();
  result = (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_24F68CAAC;
    v7 = v0[18];
    v6 = v0[19];
    v9 = v0[16];
    v8 = v0[17];
    v11 = v0[13];
    v10 = v0[14];

    return sub_24F6F826C(v9, v10, v6, 0, v8, v7, 0, v11);
  }

  return result;
}

uint64_t sub_24F68CAAC(uint64_t a1)
{
  v4 = *v2;
  v4[23] = v1;

  v5 = v4[14];
  if (v1)
  {
    sub_24E601704(v5, &qword_27F21DA18);
    v6 = sub_24F68CD58;
  }

  else
  {
    v4[24] = a1;
    sub_24E601704(v5, &qword_27F21DA18);
    v6 = sub_24F68CCAC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24F68CC14()
{
  sub_24E601704(*(v0 + 128), &qword_27F21DA20);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F68CCAC()
{
  v1 = v0[24];
  sub_24E601704(v0[16], &qword_27F21DA20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24F68CD58()
{
  sub_24E601704(*(v0 + 128), &qword_27F21DA20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F68CDF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GameStoreKitLocalizedStrings.CONTROLLER_UNKNOWN_GAME_CONTROLLER()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.GAME_CONTROLLER_SETTINGS_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.CONTROLLER_CONNECT_CONTROLLER_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.CONTROLLER_CONNECT_CONTROLLER_SUBTITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.VOLUME_CONTROLS_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BRIGHTNESS_CONTROLS_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.GAME_MODE_OFF_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.GAME_MODE_ON_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.GAME_MODE_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.AX_DOUBLE_TAP_CHOOSE_PLAYER_HINT()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.OVERLAY_NOW_PLAYING_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.OVERLAY_CHECK_INTERNET_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.OVERLAY_CHECK_INTERNET_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t sub_24F68E03C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39E9B8 = result;
  unk_27F39E9C0 = v4;
  return result;
}

uint64_t sub_24F68E1B0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39E9C8 = result;
  unk_27F39E9D0 = v4;
  return result;
}

uint64_t sub_24F68E31C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39E9D8 = result;
  unk_27F39E9E0 = v4;
  return result;
}

uint64_t sub_24F68E488()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39E9E8 = result;
  unk_27F39E9F0 = v4;
  return result;
}

uint64_t sub_24F68E5F8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39E9F8 = result;
  unk_27F39EA00 = v4;
  return result;
}

uint64_t sub_24F68E758()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA08 = result;
  unk_27F39EA10 = v4;
  return result;
}

uint64_t sub_24F68E8B4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA18 = result;
  unk_27F39EA20 = v4;
  return result;
}

uint64_t sub_24F68EA10()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA28 = result;
  unk_27F39EA30 = v4;
  return result;
}

uint64_t sub_24F68EB7C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA38 = result;
  unk_27F39EA40 = v4;
  return result;
}

uint64_t sub_24F68ECE8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA48 = result;
  unk_27F39EA50 = v4;
  return result;
}

uint64_t sub_24F68EE54()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA58 = result;
  unk_27F39EA60 = v4;
  return result;
}

uint64_t sub_24F68EFC0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA68 = result;
  unk_27F39EA70 = v4;
  return result;
}

uint64_t sub_24F68F130()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA78 = result;
  unk_27F39EA80 = v4;
  return result;
}

uint64_t sub_24F68F29C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA88 = result;
  unk_27F39EA90 = v4;
  return result;
}

uint64_t sub_24F68F408()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EA98 = result;
  unk_27F39EAA0 = v4;
  return result;
}

uint64_t sub_24F68F57C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EAA8 = result;
  unk_27F39EAB0 = v4;
  return result;
}

uint64_t sub_24F68F6E4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EAB8 = result;
  unk_27F39EAC0 = v4;
  return result;
}

uint64_t sub_24F68F850()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EAC8 = result;
  unk_27F39EAD0 = v4;
  return result;
}

uint64_t sub_24F68F9C0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EAD8 = result;
  unk_27F39EAE0 = v4;
  return result;
}

uint64_t sub_24F68FB28()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EAE8 = result;
  unk_27F39EAF0 = v4;
  return result;
}

uint64_t sub_24F68FC8C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EAF8 = result;
  unk_27F39EB00 = v4;
  return result;
}

uint64_t sub_24F68FDEC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB08 = result;
  unk_27F39EB10 = v4;
  return result;
}

uint64_t sub_24F68FF58()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB18 = result;
  unk_27F39EB20 = v4;
  return result;
}

uint64_t sub_24F6900BC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB28 = result;
  unk_27F39EB30 = v4;
  return result;
}

uint64_t sub_24F690228()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB38 = result;
  unk_27F39EB40 = v4;
  return result;
}

uint64_t sub_24F690394()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB48 = result;
  unk_27F39EB50 = v4;
  return result;
}

uint64_t sub_24F690500()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB58 = result;
  unk_27F39EB60 = v4;
  return result;
}

uint64_t sub_24F69066C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB68 = result;
  unk_27F39EB70 = v4;
  return result;
}

uint64_t sub_24F6907D8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB78 = result;
  unk_27F39EB80 = v4;
  return result;
}

uint64_t sub_24F69093C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB88 = result;
  unk_27F39EB90 = v4;
  return result;
}

uint64_t sub_24F690AB0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EB98 = result;
  unk_27F39EBA0 = v4;
  return result;
}

uint64_t sub_24F690C1C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EBA8 = result;
  unk_27F39EBB0 = v4;
  return result;
}

uint64_t sub_24F690D88()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EBB8 = result;
  unk_27F39EBC0 = v4;
  return result;
}

uint64_t sub_24F690EF4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EBC8 = result;
  unk_27F39EBD0 = v4;
  return result;
}

uint64_t sub_24F691058()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EBD8 = result;
  unk_27F39EBE0 = v4;
  return result;
}

uint64_t sub_24F6911B4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EBE8 = result;
  unk_27F39EBF0 = v4;
  return result;
}

uint64_t sub_24F691320()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EBF8 = result;
  unk_27F39EC00 = v4;
  return result;
}

uint64_t sub_24F691480()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC08 = result;
  unk_27F39EC10 = v4;
  return result;
}

uint64_t sub_24F6915E4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC18 = result;
  unk_27F39EC20 = v4;
  return result;
}

uint64_t sub_24F691750()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC28 = result;
  unk_27F39EC30 = v4;
  return result;
}

uint64_t sub_24F6918BC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC38 = result;
  unk_27F39EC40 = v4;
  return result;
}

uint64_t sub_24F691A30()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC48 = result;
  unk_27F39EC50 = v4;
  return result;
}

uint64_t sub_24F691BA0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC58 = result;
  unk_27F39EC60 = v4;
  return result;
}

uint64_t sub_24F691D10()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC68 = result;
  unk_27F39EC70 = v4;
  return result;
}

uint64_t sub_24F691E70()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC78 = result;
  unk_27F39EC80 = v4;
  return result;
}

uint64_t sub_24F691FD8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC88 = result;
  unk_27F39EC90 = v4;
  return result;
}

uint64_t sub_24F692144()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EC98 = result;
  unk_27F39ECA0 = v4;
  return result;
}

uint64_t sub_24F6922B4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ECA8 = result;
  unk_27F39ECB0 = v4;
  return result;
}

uint64_t sub_24F692424()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ECB8 = result;
  unk_27F39ECC0 = v4;
  return result;
}

uint64_t sub_24F692584()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ECC8 = result;
  unk_27F39ECD0 = v4;
  return result;
}

uint64_t sub_24F6926E0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ECD8 = result;
  unk_27F39ECE0 = v4;
  return result;
}

uint64_t sub_24F69283C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ECE8 = result;
  unk_27F39ECF0 = v4;
  return result;
}

uint64_t sub_24F69299C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ECF8 = result;
  unk_27F39ED00 = v4;
  return result;
}

uint64_t sub_24F692AFC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED08 = result;
  unk_27F39ED10 = v4;
  return result;
}

uint64_t sub_24F692C60()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED18 = result;
  unk_27F39ED20 = v4;
  return result;
}

uint64_t sub_24F692DD0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED28 = result;
  unk_27F39ED30 = v4;
  return result;
}

uint64_t sub_24F692F38()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED38 = result;
  unk_27F39ED40 = v4;
  return result;
}

uint64_t sub_24F6930AC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED48 = result;
  unk_27F39ED50 = v4;
  return result;
}

uint64_t sub_24F69320C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED58 = result;
  unk_27F39ED60 = v4;
  return result;
}

uint64_t sub_24F693370()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED68 = result;
  unk_27F39ED70 = v4;
  return result;
}

uint64_t sub_24F6934D0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED78 = result;
  unk_27F39ED80 = v4;
  return result;
}

uint64_t sub_24F693638()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED88 = result;
  unk_27F39ED90 = v4;
  return result;
}

uint64_t sub_24F6937AC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39ED98 = result;
  unk_27F39EDA0 = v4;
  return result;
}

uint64_t sub_24F69391C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EDA8 = result;
  unk_27F39EDB0 = v4;
  return result;
}

uint64_t sub_24F693A90()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EDB8 = result;
  unk_27F39EDC0 = v4;
  return result;
}

uint64_t sub_24F693C04()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EDC8 = result;
  unk_27F39EDD0 = v4;
  return result;
}

uint64_t sub_24F693D6C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EDD8 = result;
  unk_27F39EDE0 = v4;
  return result;
}

uint64_t sub_24F693ED0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EDE8 = result;
  unk_27F39EDF0 = v4;
  return result;
}

uint64_t sub_24F694034()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EDF8 = result;
  unk_27F39EE00 = v4;
  return result;
}

uint64_t sub_24F6941A0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE08 = result;
  unk_27F39EE10 = v4;
  return result;
}

uint64_t sub_24F694308()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE18 = result;
  unk_27F39EE20 = v4;
  return result;
}

uint64_t sub_24F694468()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE28 = result;
  unk_27F39EE30 = v4;
  return result;
}

uint64_t sub_24F6945D8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE38 = result;
  unk_27F39EE40 = v4;
  return result;
}

uint64_t sub_24F69473C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE48 = result;
  unk_27F39EE50 = v4;
  return result;
}

uint64_t sub_24F6948A8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE58 = result;
  unk_27F39EE60 = v4;
  return result;
}

uint64_t sub_24F694A10()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE68 = result;
  unk_27F39EE70 = v4;
  return result;
}

uint64_t sub_24F694B80()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE78 = result;
  unk_27F39EE80 = v4;
  return result;
}

uint64_t sub_24F694CE8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE88 = result;
  unk_27F39EE90 = v4;
  return result;
}

uint64_t sub_24F694E54()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EE98 = result;
  unk_27F39EEA0 = v4;
  return result;
}

uint64_t sub_24F694FC0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EEA8 = result;
  unk_27F39EEB0 = v4;
  return result;
}

uint64_t sub_24F695124()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EEB8 = result;
  unk_27F39EEC0 = v4;
  return result;
}

uint64_t sub_24F69528C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EEC8 = result;
  unk_27F39EED0 = v4;
  return result;
}

uint64_t sub_24F695400()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EED8 = result;
  unk_27F39EEE0 = v4;
  return result;
}

uint64_t sub_24F69556C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EEE8 = result;
  unk_27F39EEF0 = v4;
  return result;
}

uint64_t sub_24F6956D8()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EEF8 = result;
  unk_27F39EF00 = v4;
  return result;
}

uint64_t sub_24F695838()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF08 = result;
  unk_27F39EF10 = v4;
  return result;
}

uint64_t sub_24F6959A0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF18 = result;
  unk_27F39EF20 = v4;
  return result;
}

uint64_t sub_24F695B14()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF28 = result;
  unk_27F39EF30 = v4;
  return result;
}

uint64_t sub_24F695C78()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF38 = result;
  unk_27F39EF40 = v4;
  return result;
}

uint64_t sub_24F695DE4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF48 = result;
  unk_27F39EF50 = v4;
  return result;
}

uint64_t sub_24F695F50()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF58 = result;
  unk_27F39EF60 = v4;
  return result;
}

uint64_t sub_24F6960BC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF68 = result;
  unk_27F39EF70 = v4;
  return result;
}

uint64_t sub_24F696224()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF78 = result;
  unk_27F39EF80 = v4;
  return result;
}

uint64_t sub_24F696388()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF88 = result;
  unk_27F39EF90 = v4;
  return result;
}

uint64_t sub_24F6964F4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EF98 = result;
  unk_27F39EFA0 = v4;
  return result;
}

uint64_t sub_24F696660()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EFA8 = result;
  unk_27F39EFB0 = v4;
  return result;
}

uint64_t sub_24F6967CC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EFB8 = result;
  unk_27F39EFC0 = v4;
  return result;
}

uint64_t sub_24F696940()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F39EFC8 = result;
  unk_27F39EFD0 = v4;
  return result;
}

uint64_t sub_24F696AAC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C460 = result;
  *algn_27F24C468 = v4;
  return result;
}

uint64_t sub_24F696C38()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C470 = result;
  *algn_27F24C478 = v4;
  return result;
}

uint64_t sub_24F696DCC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F91F298();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F91F2B8();
  __swift_allocate_value_buffer(v6, qword_27F24C480);
  __swift_project_value_buffer(v6, qword_27F24C480);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v7 = qword_27F24F280;
  v8 = [v7 bundleURL];

  sub_24F91F428();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9118], v1);
  sub_24F91F778();
  return sub_24F91F2C8();
}

uint64_t sub_24F69705C()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C498 = result;
  unk_27F24C4A0 = v4;
  return result;
}

uint64_t sub_24F6971F0()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C4A8 = result;
  unk_27F24C4B0 = v4;
  return result;
}

uint64_t sub_24F697384()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F91F298();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92B088();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F91F2B8();
  __swift_allocate_value_buffer(v6, qword_27F24C4B8);
  __swift_project_value_buffer(v6, qword_27F24C4B8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v7 = qword_27F24F280;
  v8 = [v7 bundleURL];

  sub_24F91F428();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9118], v1);
  sub_24F91F778();
  return sub_24F91F2C8();
}

uint64_t sub_24F697614@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24F91F2B8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_24F6976AC()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C4D0 = result;
  *algn_27F24C4D8 = v4;
  return result;
}

uint64_t sub_24F697840()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C4E0 = result;
  *algn_27F24C4E8 = v4;
  return result;
}

uint64_t sub_24F6979D4()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C4F0 = result;
  *algn_27F24C4F8 = v4;
  return result;
}

uint64_t sub_24F697B70()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  result = sub_24F92B148();
  qword_27F24C500 = result;
  *algn_27F24C508 = v4;
  return result;
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_PERCENT_LABEL(batteryPercent:)(double a1)
{
  v2 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F92B088();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24F92B068();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F92B058();
  sub_24F92B048();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v6;
  *(v5 + 32) = a1 * 100.0;
  sub_24F92B118();
  sub_24F92B038();

  sub_24F92B048();
  sub_24F92B078();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v7 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_LOW_POWER_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_AUTOMATIC_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_HIGH_POWER_TITLE()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_LOW_POWER_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_AUTOMATIC_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_HIGH_POWER_WITH_FANS_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.ENERGY_MODE_HIGH_POWER_WITHOUT_FANS_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_ON_BATTERY_POWER_SOURCE_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_ON_AC_POWER_SOURCE_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_STATUS_CHARGED_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_STATUS_CHARGING_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.BATTERY_STATUS_NOT_CHARGING_DESCRIPTION()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}

uint64_t static GameStoreKitLocalizedStrings.CONTROLLER_SETTINGS_BUTTON_LABEL()()
{
  v0 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F92B088();
  MEMORY[0x28223BE20](v1 - 8);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v2 = qword_27F24F280;
  sub_24F91F778();
  return sub_24F92B148();
}
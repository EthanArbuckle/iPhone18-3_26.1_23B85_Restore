void sub_22C52B160(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  sub_22C4E719C(a2 + 80, v45, &qword_27D9BD628, &unk_22C91A390);
  if (v46)
  {
    v35 = a3;
    v36 = a4;
    v37 = a5;
    v33 = v47;
    v34 = v46;
    sub_22C374168(v45, v46);
    v39 = v8 + 32;
    v40 = *(v9 + 16);

    v10 = 0;
    v11 = v9 + 72;
    v38 = MEMORY[0x277D84F90];
    v32 = v9 + 72;
LABEL_3:
    v12 = (v11 + 48 * v10);
    while (1)
    {
      if (v10 >= v40)
      {

        v41 = v38;
        v27 = *(v33 + 8);
        v28 = sub_22C3A5908(&qword_27D9BC560, &unk_22C9139C0);
        v29 = sub_22C52EC74();
        v27(&v42, v35, v36, &v41, v28, v29, v34, v33);

        v30 = v43;
        v31 = v44;
        *v37 = v42;
        *(v37 + 2) = v30;
        *(v37 + 3) = v31;
        sub_22C36FF94(v45);
        return;
      }

      if (v10 >= *(v8 + 16))
      {
        break;
      }

      if (v10 >= *(v9 + 16))
      {
        goto LABEL_16;
      }

      v13 = v8;
      v14 = v9;
      v15 = *(v39 + 8 * v10);
      v16 = *(v12 - 4);
      v17 = *(v12 - 3);
      v19 = *(v12 - 2);
      v18 = *(v12 - 1);
      ++v10;
      v21 = *v12;
      v12 += 6;
      v20 = v21;

      sub_22C456C94(v17, v19);
      sub_22C456C94(v17, v19);

      v9 = v14;
      v8 = v13;

      sub_22C456D48(v17, v19);
      if (v19)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(v38 + 16);
          sub_22C591018();
          v38 = v25;
        }

        v22 = *(v38 + 16);
        if (v22 >= *(v38 + 24) >> 1)
        {
          sub_22C591018();
          v38 = v26;
        }

        *(v38 + 16) = v22 + 1;
        v23 = (v38 + 32 * v22);
        v23[4] = v17;
        v23[5] = v19;
        v23[6] = v18;
        v23[7] = v20;
        v11 = v32;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    sub_22C36DD28(v45, &qword_27D9BD628, &unk_22C91A390);
    *a5 = 0u;
    a5[1] = 0u;
  }
}

void sub_22C52B408(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[8];
  v8 = v3[9];
  sub_22C3766E0(v3 + 5, v7);
  v9 = (*(v8 + 8))(a1, a2, v7, v8);
  v11 = v10;
  sub_22C529D80();
  v12 = v20;
  if (v25)
  {
  }

  else
  {
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v11;
    *(inited + 32) = v14;
    sub_22C36D2A8();
    v15 = swift_allocObject();
    *(v15 + 16) = 5;
    *(v15 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v16 = swift_allocObject();
    *(v16 + 16) = v20;
    *(v15 + 32) = v16;
    *(inited + 40) = v15 | 0xA000000000000000;
    sub_22C456C94(v21, v22);

    v17 = sub_22C3DB9B0(inited);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v18 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v18 + 16) = v19;
    sub_22C456CE4(v20, v21, v22, v23, v24, 0);
    v12 = v18 | 0x6000000000000000;
  }

  *a3 = v12;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  *(a3 + 24) = v23;
  *(a3 + 32) = v24;
  *(a3 + 40) = v25;
}

void sub_22C52B60C()
{
  sub_22C36BA7C();
  v2 = sub_22C37228C();
  v3 = sub_22C36985C(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v8 = (v7 - v6);
  v9 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42 - v11;
  sub_22C909A1C();
  v13 = sub_22C90993C();
  if (sub_22C370B74(v12, 1, v13) == 1)
  {
    sub_22C36DD28(v12, &qword_27D9BC390, &qword_22C912AC0);
    sub_22C377E18(2);
    *(v0 + 40) = 1;
  }

  else
  {
    sub_22C9098BC();
    (*(*(v13 - 8) + 8))(v12, v13);
    v14 = v1 + *(type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0(0) + 20);
    v15 = type metadata accessor for FullPlannerPreferences();
    v43 = v1;
    v16 = *(v15 + 92);
    sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
    sub_22C901EDC();
    v17 = sub_22C90A2DC();
    v19 = v18;

    sub_22C36D6EC();
    v20 = swift_allocObject();
    v42 = v17;
    *(v20 + 16) = v17;
    *(v20 + 24) = v19;
    *(v20 + 32) = 3;
    *v8 = v20;
    v21 = *MEMORY[0x277D1D7E8];
    v22 = sub_22C902D0C();
    sub_22C36985C(v22);
    v24 = *(v23 + 104);
    v24(v8, v21, v22);
    sub_22C36C640(v8, 0, 3, v22);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
    swift_storeEnumTagMultiPayload();
    sub_22C36D6EC();
    v25 = swift_allocObject();
    v44 = v19;

    *(v25 + 16) = sub_22C909A2C();
    *(v25 + 24) = v26;
    *(v25 + 32) = 6;
    v27 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
    *(v8 + v27) = v25;
    v24((v8 + v27), v21, v22);
    swift_storeEnumTagMultiPayload();
    v28 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    swift_allocBox();
    v30 = v29;
    v31 = *(v28 + 48);
    sub_22C52ED28(v8, v29, type metadata accessor for PromptTreeIdentifier);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v32 = swift_allocBox();
    sub_22C486784();
    sub_22C52ED84(v8, type metadata accessor for PromptTreeIdentifier);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v33 = swift_allocObject();
    *(v33 + 16) = v32 | 0x2000000000000000;
    *(v30 + v31) = v33;
    sub_22C4E719C(v43, v46, &qword_27D9BD628, &unk_22C91A390);
    v34 = v47;
    if (v47)
    {
      v35 = v48;
      sub_22C3766E0(v46, v47);
      v36 = sub_22C90A2CC();
      v38 = v37;
      v39 = sub_22C90A2AC();
      v41 = v40;

      (*(v35 + 16))(&v45, v36, v38, v39, v41, v34, v35);

      sub_22C36FF94(v46);
    }

    else
    {

      sub_22C36DD28(v46, &qword_27D9BD628, &unk_22C91A390);
    }

    sub_22C37F278();
  }

  sub_22C36CC48();
}

void sub_22C52BA54()
{
  sub_22C36BA7C();
  v1 = v0;
  v122 = v2;
  v120 = v3;
  v5 = v4;
  v114 = v6;
  v7 = type metadata accessor for DynamicEnumeration.Case(0);
  v125 = *(v7 - 8);
  v8 = *(v125 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = type metadata accessor for DynamicEnumeration(0);
  v13 = sub_22C36985C(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v18 = v17 - v16;
  v119 = sub_22C9063DC();
  v19 = sub_22C369824(v119);
  v117 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = type metadata accessor for DynamicEnumerationRenderer_v3_0(0);
  v27 = v0 + *(v26 + 32);
  v28 = *(type metadata accessor for FullPlannerPreferences() + 64);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  v115 = v12;
  v29 = *(v5 + *(v12 + 20));

  v123 = sub_22C8125A0(v133, v29);
  v126 = v30;
  v32 = v31;
  v110 = v33;
  v34 = v33 >> 1;
  v124 = v31;
  if (v133 >= *(v29 + 16))
  {
LABEL_7:
    v40 = (v1 + *(v26 + 24));
    v41 = v40[8];
    v42 = v40[9];
    sub_22C3766E0(v40 + 5, v41);
    (*(v42 + 24))(&v133, v5, v120, v122, v41, v42);
    v118 = v133;
    v121 = v134;
    v43 = v135;
    v113 = v136;
    sub_22C378A4C(v1, &v128);
    v44 = v34 - v32;
    if (__OFSUB__(v34, v32))
    {
      goto LABEL_28;
    }

    v45 = MEMORY[0x277D84F90];
    v116 = v43;
    if (v44)
    {
      v127 = MEMORY[0x277D84F90];
      sub_22C3B68D4(0, v44 & ~(v44 >> 63), 0);
      if (v44 < 0)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v111 = v1;
      v45 = v127;
      v46 = v124;
      while (v46 < v34)
      {
        sub_22C52ED28(v126 + *(v125 + 72) * v46, v11, type metadata accessor for DynamicEnumeration.Case);
        v47 = *(&v129 + 1);
        v48 = v130;
        sub_22C3766E0(&v128, *(&v129 + 1));
        (*(v48 + 8))(&v133, v11, v47, v48);
        sub_22C52ED84(v11, type metadata accessor for DynamicEnumeration.Case);
        v49 = v133;
        v50 = v134;
        v51 = v135;
        v52 = v136;
        v127 = v45;
        v54 = *(v45 + 16);
        v53 = *(v45 + 24);
        if (v54 >= v53 >> 1)
        {
          v109 = v133;
          v108 = v134;
          sub_22C3B68D4(v53 > 1, v54 + 1, 1);
          v50 = v108;
          v49 = v109;
          v45 = v127;
        }

        *(v45 + 16) = v54 + 1;
        v55 = v45 + 48 * v54;
        *(v55 + 32) = v49;
        *(v55 + 48) = v50;
        *(v55 + 64) = v51;
        *(v55 + 72) = v52;
        if (v34 == ++v46)
        {
          v56 = v123;
          v1 = v111;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v56 = v123;
LABEL_17:
    sub_22C36FF94(&v128);
    v57 = sub_22C47F410(v45);
    v59 = v58;

    if (v59)
    {
      if (v113)
      {
        v60 = v118;
      }

      else
      {
        v60 = v57;
      }

      sub_22C52ECD8(v57, 0, 0, 1);
    }

    else
    {
      *&v128 = v57;
      sub_22C50B070(v57, 0);
      sub_22C52C2D0(&v128, v56, v126, v124, v110, &v133);
      sub_22C50B2CC(v57, 0);
      sub_22C50B2CC(v57, 0);
      v61 = v133;
      v62 = v134;
      if ((v113 & 1) == 0)
      {
        v128 = v118;
        v129 = v121;
        v130 = v116;
        v131 = v133;
        v132 = v134;
        sub_22C3728DC();
        sub_22C456C30(v71, v72, v73, v74, v75, 0);

        sub_22C4E719C(&v128, &v133, &qword_27D9BDA60, &qword_22C91A3C0);
        v76 = sub_22C52CD6C(&v127, v61, *(&v61 + 1), v62);
        sub_22C36DD28(&v128, &qword_27D9BDA60, &qword_22C91A3C0);
        v77 = sub_22C38870C();
        sub_22C36DD28(v77, &qword_27D9BDA60, &qword_22C91A3C0);
        v128 = v61;
        *&v129 = v62;
        *(&v129 + 1) = v118;
        sub_22C36BE60();
        v130 = v78;
        *&v131 = v79;
        *(&v131 + 1) = *(&v121 + 1);
        v132 = v116;
        sub_22C3728DC();
        sub_22C456C30(v80, v81, v82, v83, v84, v113);

        sub_22C4E719C(&v128, &v133, &qword_27D9BDA58, &qword_22C91A3B8);
        sub_22C52EE6C();
        sub_22C52D0A0(v85, v86, v87, v1, v88);
        sub_22C36DD28(&v128, &qword_27D9BDA58, &qword_22C91A3B8);
        v89 = v133;
        v90 = v134;
        v91 = sub_22C38870C();
        sub_22C36DD28(v91, &qword_27D9BDA58, &qword_22C91A3B8);
        sub_22C50AF90(v76, 0);
        v92 = sub_22C369EF4();
        sub_22C456C94(v92, v93);

        v94 = sub_22C369EF4();
        sub_22C456C94(v94, v95);
        v96 = sub_22C52EE6C();
        sub_22C52ECD8(v96, v97, v98, 0);
        sub_22C36BE60();
        sub_22C37A0C4();
        sub_22C456CE4(v99, v100, v101, v102, v103, 0);

        v104 = sub_22C369EF4();
        sub_22C456D48(v104, v105);
        *v114 = v76;
        *(v114 + 8) = v89;
        *(v114 + 24) = v90;

        swift_unknownObjectRelease();
        v106 = sub_22C369EF4();
        sub_22C456D48(v106, v107);
        *(v114 + 40) = 0;
        goto LABEL_26;
      }

      v63 = sub_22C52EE6C();
      sub_22C52ECD8(v63, v64, v65, 0);
      v60 = v118;
    }

    sub_22C36BE60();
    sub_22C37A0C4();
    sub_22C456CE4(v66, v67, v68, v69, v70, v113);
    swift_unknownObjectRelease();
    sub_22C3871A0(v60);
LABEL_26:
    sub_22C36CC48();
    return;
  }

  v112 = v26;
  sub_22C903F7C();
  sub_22C52ED28(v5, v18, type metadata accessor for DynamicEnumeration);
  swift_unknownObjectRetain();
  v35 = sub_22C9063CC();
  v36 = sub_22C90AACC();
  if (!os_log_type_enabled(v35, v36))
  {
    sub_22C52EE44();

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v37 = swift_slowAlloc();
  *v37 = 134218240;
  if (!__OFSUB__(v34, v124))
  {
    v38 = v37;
    *(v37 + 4) = v34 - v124;
    swift_unknownObjectRelease();
    *(v38 + 12) = 2048;
    v39 = *(*(v18 + *(v115 + 20)) + 16);
    sub_22C52EE44();
    *(v38 + 14) = v39;
    _os_log_impl(&dword_22C366000, v35, v36, "Enum cases for dynamic enumeration truncated to first %ld out of %ld cases", v38, 0x16u);
    MEMORY[0x2318B9880](v38, -1, -1);

LABEL_6:
    (*(v117 + 8))(v25, v119);
    v32 = v124;
    v26 = v112;
    goto LABEL_7;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_22C52C2D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v73 = a3;
  v64 = a6;
  v10 = sub_22C3A5908(&qword_27D9BDA68, &qword_22C91A3C8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v59 - v12);
  v77 = sub_22C3A5908(&qword_27D9BB6C0, &qword_22C91A3D0);
  v61 = *(v77 - 8);
  v14 = *(v61 + 64);
  v15 = MEMORY[0x28223BE20](v77);
  v62 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v60 = &v59 - v17;
  v18 = type metadata accessor for DynamicEnumeration.Case(0);
  v19 = *(v18 - 8);
  v71 = v18;
  v72 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22C3A5908(&qword_27D9BDA70, &qword_22C91A3D8);
  v23 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v59 - v24;
  v25 = *a1;
  v26 = *a1 + 64;
  v27 = a5 >> 1;
  v63 = a2;
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v28 = 0;
  v65 = MEMORY[0x277D84F90];
  v67 = v25;
  v68 = v22;
  v59 = v26;
  v66 = a5 >> 1;
  v29 = v69;
LABEL_2:
  v30 = (v26 + 40 * v28);
  while (1)
  {
    if (v27 == a4)
    {

      swift_unknownObjectRelease();
LABEL_16:

      swift_unknownObjectRelease();
      sub_22C8D5980();

      v78 = 0;
      *&v79 = MEMORY[0x277D84F90];
      *(&v79 + 1) = MEMORY[0x277D84F90];

      sub_22C52E54C(v55, sub_22C52E024, 0, &v78);

      v57 = v79;
      v58 = v64;
      *v64 = v78;
      *(v58 + 1) = v57;
      return result;
    }

    if (a4 >= v27)
    {
      break;
    }

    sub_22C52ED28(v73 + *(v72 + 72) * a4, v22, type metadata accessor for DynamicEnumeration.Case);
    v31 = *(v25 + 16);
    if (v28 == v31)
    {

      swift_unknownObjectRelease();
      sub_22C52ED84(v22, type metadata accessor for DynamicEnumeration.Case);
      goto LABEL_16;
    }

    if (v28 >= v31)
    {
      goto LABEL_18;
    }

    v75 = v28;
    v76 = a4;
    v33 = *(v30 - 1);
    v74 = *v30;
    v32 = v74;
    v35 = *(v30 - 3);
    v34 = *(v30 - 2);
    v36 = *(v30 - 4);
    v37 = (v29 + *(v70 + 48));
    sub_22C52EDDC(v22, v29);
    *v37 = v36;
    v37[1] = v35;
    v37[2] = v34;
    v37[3] = v33;
    v37[4] = v32;
    v38 = v13 + *(v77 + 48);
    *v13 = v36;
    v39 = &v38[*(sub_22C3A5908(&qword_27D9BB018, &unk_22C91A3E0) + 48)];
    v40 = v13;
    v41 = *(v71 + 20);
    v42 = sub_22C901FAC();
    v43 = v29 + v41;
    v13 = v40;
    (*(*(v42 - 8) + 16))(v38, v43, v42);
    *v39 = v35;
    v39[1] = v34;
    v44 = v74;
    v39[2] = v33;
    v39[3] = v44;
    v45 = v77;
    sub_22C36C640(v40, 0, 1, v77);

    sub_22C456C94(v35, v34);

    sub_22C456C94(v35, v34);
    sub_22C36DD28(v29, &qword_27D9BDA70, &qword_22C91A3D8);
    if (sub_22C370B74(v40, 1, v45) != 1)
    {
      v46 = v60;
      sub_22C4E7208(v40, v60, &qword_27D9BB6C0, &qword_22C91A3D0);
      sub_22C4E7208(v46, v62, &qword_27D9BB6C0, &qword_22C91A3D0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v75;
      v48 = v76;
      v27 = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = *(v65 + 16);
        sub_22C593478();
        v65 = v53;
      }

      v25 = v67;
      v22 = v68;
      v50 = *(v65 + 16);
      if (v50 >= *(v65 + 24) >> 1)
      {
        sub_22C593478();
        v65 = v54;
      }

      v28 = v49 + 1;
      a4 = v48 + 1;
      v51 = v65;
      *(v65 + 16) = v50 + 1;
      sub_22C4E7208(v62, v51 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v50, &qword_27D9BB6C0, &qword_22C91A3D0);
      v26 = v59;
      goto LABEL_2;
    }

    sub_22C36DD28(v40, &qword_27D9BDA68, &qword_22C91A3C8);
    v30 += 5;
    v28 = v75 + 1;
    a4 = v76 + 1;
    v25 = v67;
    v22 = v68;
    v27 = v66;
  }

  __break(1u);
LABEL_18:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C52C8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v60 = sub_22C3A5908(&qword_27D9BB018, &unk_22C91A3E0);
  v5 = *(*(v60 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v60);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v51 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = sub_22C9063DC();
  v62 = *(v17 - 8);
  v63 = v17;
  v18 = *(v62 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C903F7C();
  v64 = a1;
  sub_22C4E719C(a1, v16, &qword_27D9BB018, &unk_22C91A3E0);
  sub_22C4E719C(a2, v14, &qword_27D9BB018, &unk_22C91A3E0);
  v61 = v20;
  v21 = sub_22C9063CC();
  v22 = sub_22C90AADC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v58 = v22;
    v24 = v23;
    v56 = v23;
    v59 = swift_slowAlloc();
    v66 = v59;
    *v24 = 136315394;
    sub_22C4E719C(v16, v11, &qword_27D9BB018, &unk_22C91A3E0);
    v57 = v21;
    v25 = v60;
    v26 = *(v60 + 48);
    v27 = &v11[v26];
    v28 = &v8[v26];
    v29 = sub_22C901FAC();
    v30 = *(v29 - 8);
    v31 = *(v30 + 32);
    v53 = v14;
    v54 = v31;
    v55 = v30 + 32;
    v32 = *v27;
    v51 = *(v27 + 1);
    v52 = v32;
    v31(v8, v11, v29);
    v33 = v51;
    *v28 = v52;
    *(v28 + 1) = v33;
    v34 = sub_22C90A1AC();
    v36 = v35;
    sub_22C36DD28(v16, &qword_27D9BB018, &unk_22C91A3E0);
    v37 = sub_22C36F9F4(v34, v36, &v66);

    v38 = v56;
    *(v56 + 4) = v37;
    *(v38 + 12) = 2080;
    v39 = v53;
    sub_22C4E719C(v53, v11, &qword_27D9BB018, &unk_22C91A3E0);
    v40 = *(v25 + 48);
    v41 = &v8[v40];
    v42 = *&v11[v40];
    v51 = *&v11[v40 + 16];
    v52 = v42;
    v54(v8, v11, v29);
    v43 = v51;
    *v41 = v52;
    *(v41 + 1) = v43;
    v44 = sub_22C90A1AC();
    v46 = v45;
    sub_22C36DD28(v39, &qword_27D9BB018, &unk_22C91A3E0);
    v47 = sub_22C36F9F4(v44, v46, &v66);

    *(v38 + 14) = v47;
    v48 = v57;
    _os_log_impl(&dword_22C366000, v57, v58, "❗️ Folding enum cases, but identifier has already been seen.\nTaking old value: %s\nover new value: %s", v38, 0x16u);
    v49 = v59;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v49, -1, -1);
    MEMORY[0x2318B9880](v38, -1, -1);
  }

  else
  {

    sub_22C36DD28(v14, &qword_27D9BB018, &unk_22C91A3E0);
    sub_22C36DD28(v16, &qword_27D9BB018, &unk_22C91A3E0);
  }

  (*(v62 + 8))(v61, v63);
  return sub_22C4E719C(v64, v65, &qword_27D9BB018, &unk_22C91A3E0);
}

uint64_t sub_22C52CD6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  sub_22C5294F8(a2, a3, a4);
  v6 = sub_22C3DB9B0(v5);

  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 32) = v8;
  v9 = sub_22C529D00(8236, 0xE200000000000000, v7 | 0x8000000000000000);

  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0xE000000000000000;
  sub_22C591324();
  v14 = v13;
  v15 = *(v13 + 16);
  v16 = *(v13 + 24) >> 1;
  v17 = v15 + 1;
  if (v16 <= v15)
  {
    sub_22C591324();
    v14 = v29;
    v16 = *(v29 + 24) >> 1;
  }

  *(v14 + 16) = v17;
  *(v14 + 8 * v15 + 32) = v12;
  v18 = v15 + 2;
  if (v16 < (v15 + 2))
  {
    sub_22C591324();
    v14 = v30;
  }

  *(v14 + 16) = v18;
  *(v14 + 8 * v17 + 32) = v4;
  v19 = swift_allocObject();
  *(v19 + 16) = 0x726574694C203D20;
  *(v19 + 24) = 0xEB000000005B6C61;
  v20 = *(v14 + 24);
  v21 = v15 + 3;

  if ((v15 + 3) > (v20 >> 1))
  {
    sub_22C591324();
    v14 = v31;
  }

  *(v14 + 16) = v21;
  *(v14 + 8 * v18 + 32) = v19;
  v22 = v15 + 4;
  if ((v15 + 4) > *(v14 + 24) >> 1)
  {
    sub_22C591324();
    v14 = v32;
  }

  *(v14 + 16) = v22;
  *(v14 + 8 * v21 + 32) = v10 | 0x6000000000000000;
  v23 = swift_allocObject();
  *(v23 + 16) = 93;
  *(v23 + 24) = 0xE100000000000000;
  v24 = *(v14 + 24);

  if ((v15 + 5) > (v24 >> 1))
  {
    sub_22C591324();
    v14 = v33;
  }

  *(v14 + 16) = v15 + 5;
  *(v14 + 8 * v22 + 32) = v23;
  v25 = sub_22C3DB9B0(v14);

  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v26 + 16) = v27;
  return v26 | 0x6000000000000000;
}

void sub_22C52D0A0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v63 = a4;
  v64 = a5;
  v78 = sub_22C3A5908(&qword_27D9BB028, &unk_22C90FAD0);
  v8 = *(*(v78 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v78);
  v77 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v76 = (&v61 - v11);
  v12 = sub_22C3A5908(&qword_27D9BDA78, &qword_22C91A3F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v75 = (&v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v74 = (&v61 - v17);
  MEMORY[0x28223BE20](v16);
  v73 = (&v61 - v18);
  v62 = *a3;
  v72 = *(a2 + 16);
  if (v72)
  {
    v69 = *(v12 + 48);
    v68 = a1 + 32;
    v19 = 0;
    v67 = sub_22C3A5908(&qword_27D9BB018, &unk_22C91A3E0);
    v66 = *(v67 - 8);
    v65 = a2 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v79 = MEMORY[0x277D84F90];
    v71 = *(a1 + 16);
    v70 = v12;
    while (v71 != v19)
    {
      v20 = v78;
      v21 = *(v78 + 48);
      v80 = *(v68 + 8 * v19);
      v22 = v76;
      *v76 = v80;
      sub_22C4E719C(v65 + *(v66 + 72) * v19, v22 + v21, &qword_27D9BB018, &unk_22C91A3E0);
      v23 = v22;
      v24 = v77;
      sub_22C4E7208(v23, v77, &qword_27D9BB028, &unk_22C90FAD0);
      v25 = *(v20 + 48);
      v26 = v73;
      *v73 = *v24;
      sub_22C4E7208(v24 + v25, v26 + v69, &qword_27D9BB018, &unk_22C91A3E0);
      v27 = v74;
      sub_22C4E719C(v26, v74, &qword_27D9BDA78, &qword_22C91A3F0);
      v28 = *v27;
      v29 = *(v12 + 48);
      v30 = v27 + v29;
      v31 = *(v67 + 48);
      v32 = (v27 + v29 + v31);
      v33 = *v32;
      v34 = v32[1];
      v35 = v32[2];
      v36 = v32[3];
      v37 = v75;
      v38 = v75 + v29;
      *v75 = v28;
      v39 = (v37 + v29 + v31);
      v40 = sub_22C901FAC();
      (*(*(v40 - 8) + 32))(v38, v30, v40);
      *v39 = v33;
      v39[1] = v34;
      v39[2] = v35;
      v39[3] = v36;

      sub_22C456C94(v33, v34);
      sub_22C36DD28(v37, &qword_27D9BDA78, &qword_22C91A3F0);
      sub_22C36DD28(v26, &qword_27D9BDA78, &qword_22C91A3F0);
      if (v34)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = *(v79 + 16);
          sub_22C591018();
          v79 = v45;
        }

        v12 = v70;
        v41 = *(v79 + 16);
        if (v41 >= *(v79 + 24) >> 1)
        {
          sub_22C591018();
          v79 = v46;
        }

        v42 = v79;
        *(v79 + 16) = v41 + 1;
        v43 = (v42 + 32 * v41);
        v43[4] = v33;
        v43[5] = v34;
        v43[6] = v35;
        v43[7] = v36;
      }

      else
      {
        v12 = v70;
      }

      if (v72 == ++v19)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v79 = MEMORY[0x277D84F90];
LABEL_14:
    v47 = type metadata accessor for DynamicEnumerationRenderer_v3_0(0);
    v48 = v63;
    v50 = sub_22C49FB90(v62, v63 + *(v47 + 32));
    v52 = v51;

    sub_22C4E719C(v48 + *(v47 + 28), v85, &qword_27D9BD628, &unk_22C91A390);
    v53 = v86;
    if (v86)
    {
      v54 = v87;
      sub_22C374168(v85, v86);
      v81 = v79;
      v55 = *(v54 + 8);
      v56 = sub_22C3A5908(&qword_27D9BC560, &unk_22C9139C0);
      v57 = sub_22C52EC74();
      v55(&v82, v50, v52, &v81, v56, v57, v53, v54);

      v58 = v83;
      v59 = v84;
      v60 = v64;
      *v64 = v82;
      *(v60 + 2) = v58;
      *(v60 + 3) = v59;
      sub_22C36FF94(v85);
    }

    else
    {

      sub_22C36DD28(v85, &qword_27D9BD628, &unk_22C91A390);
      v49 = v64;
      *v64 = 0u;
      v49[1] = 0u;
    }
  }
}

void sub_22C52D680(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DynamicEnumerationRenderer_v3_0(0) + 24));
  v4 = v3[9];
  sub_22C3766E0(v3 + 5, v3[8]);
  v5 = *(v4 + 24);
  v6 = sub_22C3830A4();
  v7(v6);
  sub_22C3830A4();
  sub_22C52BA54();
  if (__dst[5])
  {
    sub_22C456CE4(__dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5]);
    sub_22C377E18(LOBYTE(__dst[0]));
    *(a1 + 40) = 1;
  }

  else
  {
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    __src[2] = __dst[2];
    __src[3] = __dst[3];
    __src[4] = __dst[4];
    __src[5] = __dst[0];
    __src[6] = __dst[1];
    __src[7] = __dst[2];
    __src[8] = __dst[3];
    __src[9] = __dst[4];
    sub_22C52D7E4(__src, &__src[5], a1);
    memcpy(__dst, __src, 0x50uLL);
    sub_22C36DD28(__dst, &qword_27D9BD8F8, &qword_22C91A3B0);
    *(a1 + 40) = 0;
  }
}

uint64_t sub_22C52D7E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F870;
  *(inited + 32) = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = 5;
  *(v11 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v11 + 32) = v12;
  *(inited + 40) = v11 | 0xA000000000000000;

  sub_22C456C94(v5, v7);

  v13 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v14 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  result = swift_allocObject();
  *(result + 16) = v13;
  *(v14 + 16) = result;
  *a3 = v14 | 0x6000000000000000;
  a3[1] = v5;
  a3[2] = v7;
  a3[3] = v8;
  a3[4] = v9;
  return result;
}

void sub_22C52D95C()
{
  sub_22C36BA7C();
  v3 = sub_22C37228C();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v9 = (v8 - v7);
  v10 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v48 - v12;
  sub_22C90915C();
  v14 = sub_22C90993C();
  if (sub_22C370B74(v13, 1, v14) == 1)
  {
    sub_22C36DD28(v13, &qword_27D9BC390, &qword_22C912AC0);
    sub_22C377E18(2);
    *(v0 + 40) = 1;
  }

  else
  {
    sub_22C9098BC();
    (*(*(v14 - 8) + 8))(v13, v14);
    v15 = v1 + *(type metadata accessor for DynamicEnumerationCaseRenderer_v3_0(0) + 20);
    v16 = type metadata accessor for FullPlannerPreferences();
    v49 = v1;
    v17 = *(v16 + 92);
    sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
    sub_22C901EDC();
    v18 = sub_22C90A2DC();
    v48[1] = v3;
    v20 = v19;

    sub_22C36D6EC();
    v21 = swift_allocObject();
    v48[0] = v18;
    *(v21 + 16) = v18;
    *(v21 + 24) = v20;
    *(v21 + 32) = 3;
    *v9 = v21;
    v22 = *MEMORY[0x277D1D7E8];
    v23 = sub_22C902D0C();
    sub_22C36985C(v23);
    v25 = *(v24 + 104);
    v25(v9, v22, v23);
    sub_22C36C640(v9, 0, 3, v23);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
    swift_storeEnumTagMultiPayload();
    v26 = sub_22C901FAC();
    v27 = swift_allocBox();
    v29 = v28;
    v30 = type metadata accessor for DynamicEnumeration.Case(0);
    (*(*(v26 - 8) + 16))(v29, v2 + *(v30 + 20), v26);
    v31 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
    *(v9 + v31) = v27;
    v25((v9 + v31), *MEMORY[0x277D1D798], v23);
    swift_storeEnumTagMultiPayload();
    v32 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    swift_allocBox();
    v34 = v33;
    v35 = *(v32 + 48);
    sub_22C52ED28(v9, v33, type metadata accessor for PromptTreeIdentifier);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v36 = swift_allocBox();

    sub_22C486784();
    sub_22C52ED84(v9, type metadata accessor for PromptTreeIdentifier);
    sub_22C36D2A8();
    v37 = swift_allocObject();
    *(v37 + 16) = 3;
    *(v37 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v38 = swift_allocObject();
    *(v38 + 16) = v36 | 0x2000000000000000;
    *(v37 + 32) = v38;
    sub_22C369AEC();
    v39 = swift_allocObject();
    *(v39 + 16) = v37 | 0xA000000000000000;
    *(v34 + v35) = v39;
    sub_22C4E719C(v49, v51, &qword_27D9BD628, &unk_22C91A390);
    v40 = v52;
    if (v52)
    {
      v41 = v53;
      sub_22C3766E0(v51, v52);
      v42 = sub_22C90A2BC();
      v44 = v43;
      v45 = sub_22C90A2AC();
      v47 = v46;

      (*(v41 + 16))(&v50, v42, v44, v45, v47, v40, v41);

      sub_22C36FF94(v51);
    }

    else
    {

      sub_22C36DD28(v51, &qword_27D9BD628, &unk_22C91A390);
    }

    sub_22C37F278();
  }

  sub_22C36CC48();
}

void sub_22C52DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_22C3A5908(&qword_27D9BB100, &qword_22C90D9A0);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v31 = (&a9 - v30);
  v32 = *(sub_22C3A5908(&qword_27D9BD910, &unk_22C91A410) + 48);
  sub_22C37FC50();
  sub_22C4E719C(v33, v34, v35, v36);
  v37 = *(v25 + 56);
  *v23 = *v31;
  sub_22C37FC50();
  sub_22C4E719C(v38, v39, v40, v41);
  sub_22C4E7208(v29 + *(v25 + 56), v23 + v32, &qword_27D9BB0F0, &qword_22C90D990);
  v42 = *v29;

  sub_22C36DD28(v31 + v37, &qword_27D9BB0F0, &qword_22C90D990);
  sub_22C36CC48();
}

uint64_t sub_22C52DF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;

  sub_22C456C94(v3, v4);

  sub_22C456C94(v3, v4);

  return sub_22C456D48(v3, v4);
}

uint64_t sub_22C52E024@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BB028, &unk_22C90FAD0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v16 - v10);
  v12 = *(sub_22C3A5908(&qword_27D9BDA78, &qword_22C91A3F0) + 48);
  sub_22C4E719C(a1, v11, &qword_27D9BB028, &unk_22C90FAD0);
  v13 = *(v5 + 56);
  *a2 = *v11;
  sub_22C4E719C(a1, v9, &qword_27D9BB028, &unk_22C90FAD0);
  sub_22C4E7208(v9 + *(v5 + 56), a2 + v12, &qword_27D9BB018, &unk_22C91A3E0);
  v14 = *v9;

  return sub_22C36DD28(v11 + v13, &qword_27D9BB018, &unk_22C91A3E0);
}

void sub_22C52E178(uint64_t a1, void (*a2)(unint64_t *__return_ptr, __int128 *), uint64_t a3, uint64_t *a4)
{
  v5 = a4[2];
  v48 = a4 + 2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C408(v5);
    v5 = v6;
  }

  v49 = v4;
  v7 = 0;
  v45 = *(a1 + 16);
LABEL_4:
  v43 = v5 + 32;
  v54 = v5;
  while (1)
  {
    *v48 = v5;
    if (v7 == v45)
    {
LABEL_23:

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v8 = a1 + 32 + 56 * v7;
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);
    v12 = *(v8 + 24);
    v11 = *(v8 + 32);
    v13 = *(v8 + 16);
    v60 = *v8;
    v61 = v13;
    v62 = v12;
    v63 = v11;
    v64 = v9;
    v65 = v10;

    sub_22C456C94(v12, v11);
    a2(&v55, &v60);
    v14 = v55;
    v51 = v56;
    v15 = v57;
    v52 = *(&v58 + 1);
    v66 = v58;
    v53 = v59;
    v16 = v62;
    v17 = v63;

    sub_22C456D48(v16, v17);
    if (!v15)
    {
      goto LABEL_23;
    }

    v50 = v7 + 1;
    v19 = *a4;
    v18 = a4[1];
    v20 = v18 + 32;
    v21 = *(v18 + 16);
    if (!*a4)
    {
      v24 = 0;
      v27 = v15;
      while (v21 != v24)
      {
        v29 = *(v20 + 8 * v24);

        v30 = sub_22C48819C(v29, v14);

        if (v30)
        {
          v28 = v66;
          goto LABEL_17;
        }

        ++v24;
      }

LABEL_20:
      v7 = v50;
      sub_22C7D5818();
      a4[2] = v54;
      v40 = *(v54 + 16);
      if (v40 >= *(v54 + 24) >> 1)
      {
        sub_22C3B737C();
      }

      v5 = *v48;
      *(v5 + 16) = v15 + 1;
      v41 = (v5 + 48 * v15);
      v41[4] = v51;
      v41[5] = v27;
      v42 = v66;
      v41[6] = *(&v15 + 1);
      v41[7] = v42;
      v41[8] = v52;
      v41[9] = v53;
      goto LABEL_4;
    }

    v22 = *a4;

    sub_22C7DD014(v14, v20, v21, (v19 + 16));
    v24 = v23;
    v26 = v25;

    v27 = v15;
    if (v26)
    {
      goto LABEL_20;
    }

    v28 = v66;
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

LABEL_17:
    if (v24 >= *(v54 + 16))
    {
      goto LABEL_27;
    }

    *&v60 = v51;
    *(&v60 + 1) = v27;
    v31 = (v43 + 48 * v24);
    v61 = *(&v15 + 1);
    v62 = v28;
    v63 = v52;
    v64 = v53;
    sub_22C52A800(v31, &v60, &v55);
    if (v49)
    {

      sub_22C456D48(*(&v15 + 1), v28);
      *v48 = v54;
      return;
    }

    v49 = 0;

    v32 = v31[1];
    v33 = v31[2];
    v34 = v31[3];
    v35 = v31[4];
    v36 = v31[5];

    sub_22C456D48(v33, v34);

    sub_22C456D48(*(&v15 + 1), v66);
    v37 = v56;
    v38 = v57;
    v39 = v58;
    *v31 = v55;
    v31[1] = v37;
    *(v31 + 1) = v38;
    *(v31 + 2) = v39;
    v5 = v54;
    v7 = v50;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_22C52E54C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v67 = a2;
  v68 = a3;
  v6 = sub_22C3A5908(&qword_27D9BB018, &unk_22C91A3E0);
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v64 = &v64 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - v13;
  v75 = sub_22C3A5908(&qword_27D9BB028, &unk_22C90FAD0);
  v65 = *(v75 - 8);
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v75);
  v66 = &v64 - v16;
  v17 = sub_22C3A5908(&qword_27D9BDA80, &qword_22C91A3F8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v78 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v64 - v21;
  v23 = sub_22C3A5908(&qword_27D9BDA88, &unk_22C91A400);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v77 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = (&v64 - v27);
  v79 = a4;
  v31 = a4[2];
  v29 = a4 + 2;
  v30 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C420(v30);
    v30 = v32;
  }

  v33 = 0;
  v79[2] = v30;
  v34 = *(a1 + 16);
  v82 = v14;
  v70 = v28;
  v71 = v29;
  v69 = v34;
  v73 = a1;
  v74 = v22;
  while (1)
  {
    v81 = v30;
    if (v33 == v34)
    {
      v35 = 1;
      v80 = v34;
      goto LABEL_9;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v33 >= *(a1 + 16))
    {
      goto LABEL_31;
    }

    sub_22C4E719C(a1 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v33, v22, &qword_27D9BB028, &unk_22C90FAD0);
    v35 = 0;
    v80 = v33 + 1;
LABEL_9:
    v36 = 1;
    v37 = v75;
    sub_22C36C640(v22, v35, 1, v75);
    v38 = v78;
    sub_22C4E7208(v22, v78, &qword_27D9BDA80, &qword_22C91A3F8);
    if (sub_22C370B74(v38, 1, v37) != 1)
    {
      v39 = v66;
      sub_22C4E7208(v78, v66, &qword_27D9BB028, &unk_22C90FAD0);
      v67(v39);
      v14 = v82;
      sub_22C36DD28(v39, &qword_27D9BB028, &unk_22C90FAD0);
      v36 = 0;
    }

    v40 = sub_22C3A5908(&qword_27D9BDA78, &qword_22C91A3F0);
    v41 = v77;
    sub_22C36C640(v77, v36, 1, v40);
    sub_22C4E7208(v41, v28, &qword_27D9BDA88, &unk_22C91A400);
    v42 = sub_22C3A5908(&qword_27D9BDA78, &qword_22C91A3F0);
    if (sub_22C370B74(v28, 1, v42) == 1)
    {

      return;
    }

    v43 = v10;
    v44 = *(v42 + 48);
    v45 = *v28;
    sub_22C4E7208(v28 + v44, v14, &qword_27D9BB018, &unk_22C91A3E0);
    v47 = *v79;
    v46 = v79[1];
    v48 = v46 + 32;
    v49 = *(v46 + 16);
    if (!*v79)
    {
      v51 = 0;
      v30 = v81;
      while (v49 != v51)
      {
        v54 = *(v48 + 8 * v51);

        v55 = sub_22C48819C(v54, v45);

        if (v55)
        {
          v22 = v74;
          goto LABEL_24;
        }

        ++v51;
      }

LABEL_20:
      v56 = v79;
      sub_22C7D5818();
      v57 = v82;
      sub_22C4E719C(v82, v43, &qword_27D9BB018, &unk_22C91A3E0);
      v56[2] = v30;
      v58 = *(v30 + 16);
      v59 = v71;
      if (v58 >= *(v30 + 24) >> 1)
      {
        sub_22C3B73BC();
      }

      sub_22C36DD28(v57, &qword_27D9BB018, &unk_22C91A3E0);
      v30 = *v59;
      *(v30 + 16) = v58 + 1;
      sub_22C4E7208(v43, v30 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v58, &qword_27D9BB018, &unk_22C91A3E0);
      v14 = v57;
      v22 = v74;
      v10 = v43;
      goto LABEL_27;
    }

    sub_22C7DD014(v45, v48, v49, (v47 + 16));
    v51 = v50;
    v53 = v52;

    v30 = v81;
    if (v53)
    {
      goto LABEL_20;
    }

    v22 = v74;
    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

LABEL_24:
    if (v51 >= *(v30 + 16))
    {
      goto LABEL_33;
    }

    v60 = v30 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v51;
    v61 = v64;
    v62 = v82;
    v63 = v76;
    sub_22C52C8FC(v60, v82, v64);
    sub_22C36DD28(v62, &qword_27D9BB018, &unk_22C91A3E0);
    v76 = v63;
    if (v63)
    {

      *v71 = v30;
      return;
    }

    sub_22C36DD28(v60, &qword_27D9BB018, &unk_22C91A3E0);
    sub_22C4E7208(v61, v60, &qword_27D9BB018, &unk_22C91A3E0);
    v10 = v43;
    v14 = v82;
    v59 = v71;
LABEL_27:
    *v59 = v30;
    a1 = v73;
    v34 = v69;
    v28 = v70;
    v33 = v80;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_22C52EC30@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  v4 = *a1;
  v5 = v2;
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  return sub_22C52DF5C(&v4, a2);
}

unint64_t sub_22C52EC74()
{
  result = qword_27D9BC568;
  if (!qword_27D9BC568)
  {
    sub_22C3AC1A0(&qword_27D9BC560, &unk_22C9139C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC568);
  }

  return result;
}

uint64_t sub_22C52ECD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_22C52ED28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22C36985C(v4);
  v6 = *(v5 + 16);
  v7 = sub_22C36BA00();
  v8(v7);
  return a2;
}

uint64_t sub_22C52ED84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C52EDDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicEnumeration.Case(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C52EE44()
{

  return sub_22C52ED84(v0, type metadata accessor for DynamicEnumeration);
}

uint64_t type metadata accessor for SpanEventPromptGenerator_v3_0()
{
  result = qword_281430E20;
  if (!qword_281430E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C52EEF0()
{
  result = sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C52EF74(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 129) = a3;
  *(v5 + 128) = a2;
  *(v5 + 72) = a1;
  v6 = sub_22C9063DC();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C52F04C, 0, 0);
}

void sub_22C52F04C()
{
  v1 = v0[4].i64[1];
  if (!*(v1 + 16))
  {
    v19 = v0[7].i64[0];
    sub_22C903F7C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0;
    v26 = &v0[6].i8[8];
    v25 = v0[6].i64[1];
    v24 = *(v26 + 1);
    v27 = v23[6].i64[0];
    if (v22)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "No span entities to include in the prompt";
LABEL_18:
      _os_log_impl(&dword_22C366000, v20, v21, v29, v28, 2u);
      sub_22C3699EC();
    }

LABEL_19:

    (*(v25 + 8))(v24, v27);
    v33 = MEMORY[0x277D84F90];
    v34 = v61;
    goto LABEL_31;
  }

  if (v0[8].i8[0] && (v0[8].i8[0] == 2 || v0[8].i8[1] != 1))
  {
    v30 = v0[7].i64[1];
    sub_22C903F7C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();
    v31 = os_log_type_enabled(v20, v21);
    v24 = v0[7].i64[1];
    v32 = v0;
    v25 = v0[6].i64[1];
    v27 = v32[6].i64[0];
    if (v31)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Omitting stale span entities from old turn";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v2 = swift_task_alloc();
  v2[1] = vextq_s8(v0[5], v0[5], 8uLL);

  v3 = sub_22C47B550(sub_22C5318A0, v2, v1);

  sub_22C531270(v3);
  v5 = v4;
  v7 = v6;
  v8 = *(v6 + 16);
  v59 = v4;
  if (v8)
  {
    v64 = MEMORY[0x277D84F90];

    sub_22C3B6A74(0, v8, 0);
    v9 = *(v64 + 16);
    v10 = 32 * v9 + 56;
    v11 = 32;
    do
    {
      v12 = *(v7 + v11);
      if (*(v12 + 16) >= 0x14uLL)
      {
        v13 = 20;
      }

      else
      {
        v13 = *(v12 + 16);
      }

      v14 = *(v64 + 24);
      v15 = v9 + 1;

      if (v9 >= v14 >> 1)
      {
        sub_22C3B6A74(v14 > 1, v15, 1);
      }

      v16 = *(sub_22C90822C() - 8);
      v17 = v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      *(v64 + 16) = v15;
      v18 = (v64 + v10);
      *(v18 - 3) = v12;
      *(v18 - 2) = v17;
      *(v18 - 1) = 0;
      *v18 = (2 * v13) | 1;
      v10 += 32;
      v11 += 8;
      ++v9;
      --v8;
    }

    while (v8);
    v35 = v64;

    v5 = v59;

    v0 = v61;
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  v36 = v0[5].i64[1];
  v37 = type metadata accessor for SpanEventPromptGenerator_v3_0();
  sub_22C378A4C(v36 + *(v37 + 20) + 232, v0[1].i64);
  v65 = MEMORY[0x277D84F90];
  sub_22C3B63D4();
  v38 = 0;
  v39 = 0;
  v40 = (v35 + 56);
  v60 = v35;
  while (v39 != 20 && v39 < *(v35 + 16))
  {
    if (v39 >= *(v5 + 16))
    {
      __break(1u);
      return;
    }

    v62 = v61[10];
    v63 = v39;
    v41 = *(v5 + v38 + 32);
    v42 = *(v5 + v38 + 40);
    v43 = *(v40 - 3);
    v44 = *(v40 - 2);
    v45 = *(v40 - 1);
    v46 = *v40;

    swift_unknownObjectRetain();
    sub_22C52F84C(v41, v42, v43, v44, v45, v46, (v61 + 2), v62);
    v48 = v47;

    swift_unknownObjectRelease();
    v49 = *(v65 + 16);
    if (v49 >= *(v65 + 24) >> 1)
    {
      sub_22C3B63D4();
    }

    *(v65 + 16) = v49 + 1;
    *(v65 + 8 * v49 + 32) = v48;
    v40 += 4;
    v38 += 16;
    v39 = v63 + 1;
    v5 = v59;
    v35 = v60;
  }

  if (*(v65 + 16))
  {
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_22C90F870;
    v50 = swift_allocObject();
    v34 = v61;
    v61[7] = 0x6E6170735F746567;
    v61[8] = 0xEB00000000292873;
    *(v50 + 16) = sub_22C90A49C();
    *(v50 + 24) = v51;
    *(v33 + 32) = 1;
    *(v33 + 40) = v50 | 2;
    v52 = sub_22C3DB9B0(v65);

    v53 = sub_22C529D00(10, 0xE100000000000000, v52);

    v54 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v55 = swift_allocObject();
    *(v55 + 16) = v53;
    *(v54 + 16) = v55;
    *(v33 + 48) = 5;
    *(v33 + 56) = v54 | 0x6000000000000002;

    sub_22C36FF94(v61 + 2);
  }

  else
  {

    v34 = v61;
    sub_22C36FF94(v61 + 2);
    v33 = MEMORY[0x277D84F90];
  }

LABEL_31:
  v57 = v34[14];
  v56 = v34[15];

  v58 = v34[1];

  v58(v33);
}

BOOL sub_22C52F670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C9039FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  sub_22C90821C();
  v13 = 0;
  if (*(a2 + *(type metadata accessor for SpanEventPromptGenerator_v3_0() + 24)) == 1)
  {
    v13 = *(a3 + 24);
  }

  (*(v6 + 16))(v10, v12, v5);
  if (!v13)
  {
    v16 = *(v6 + 8);
    v16(v10, v5);
    goto LABEL_7;
  }

  v15 = sub_22C530BC8(v14);

  v16 = *(v6 + 8);
  v16(v10, v5);
  if ((v15 & 1) == 0)
  {
LABEL_7:
    v18 = sub_22C53053C();

    v17 = !v18;
    goto LABEL_8;
  }

  v17 = 0;
LABEL_8:
  v16(v12, v5);
  return v17;
}

void sub_22C52F84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a7;
  v54 = a8;
  v61 = a4;
  v55 = a1;
  v60 = sub_22C90822C();
  v11 = *(v60 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v60);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22C9039FC();
  v15 = *(v59 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v59);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a6 >> 1;
  v21 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v52 = a2;
  if (v21)
  {
    v62 = MEMORY[0x277D84F90];
    sub_22C3B73FC(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
      __break(1u);
      return;
    }

    v22 = v62;
    v57 = v11 + 8;
    v58 = v11 + 16;
    v56 = v15 + 32;
    while (a5 < v20)
    {
      v23 = v60;
      (*(v11 + 16))(v14, v61 + *(v11 + 72) * a5, v60);
      sub_22C90821C();
      (*(v11 + 8))(v14, v23);
      v62 = v22;
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      v21 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        sub_22C3B73FC(v24 > 1, v25 + 1, 1);
        v22 = v62;
      }

      *(v22 + 16) = v21;
      v17 = (*(v15 + 32))(v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v25, v19, v59);
      if (v20 == ++a5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  MEMORY[0x28223BE20](v17);
  v26 = v54;
  *(&v52 - 2) = v53;
  *(&v52 - 1) = v26;
  v27 = sub_22C793528(sub_22C5318C0);

  v28 = sub_22C3DB9B0(v27);

  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v29 + 32) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22C9173F0;
  v32 = swift_allocObject();
  *(v32 + 16) = v29 | 0x8000000000000000;
  *(v31 + 32) = v32;
  v19 = swift_allocObject();
  v33 = swift_allocObject();
  *(v33 + 16) = v31 | 0x8000000000000000;
  *(v19 + 16) = v33;
  v15 = swift_allocObject();
  *(v15 + 16) = 8227;
  *(v15 + 24) = 0xE200000000000000;
  sub_22C591324();
  v35 = v34;
  v21 = *(v34 + 16);
  v20 = v21 + 1;
  if (v21 >= *(v34 + 24) >> 1)
  {
LABEL_21:
    sub_22C591324();
    v35 = v47;
  }

  *(v35 + 16) = v20;
  *(v35 + 8 * v21 + 32) = v15;
  v36 = swift_allocObject();
  *(v36 + 16) = v55;
  *(v36 + 24) = v52;
  v37 = *(v35 + 24);
  v38 = v21 + 2;

  if (v21 + 2 > (v37 >> 1))
  {
    sub_22C591324();
    v35 = v48;
  }

  *(v35 + 16) = v38;
  *(v35 + 8 * v20 + 32) = v36;
  v39 = swift_allocObject();
  *(v39 + 16) = 8250;
  *(v39 + 24) = 0xE200000000000000;
  v40 = v21 + 3;
  if (v21 + 3 > *(v35 + 24) >> 1)
  {
    sub_22C591324();
    v35 = v49;
  }

  *(v35 + 16) = v40;
  *(v35 + 8 * v38 + 32) = v39;
  v41 = v21 + 4;
  if (v21 + 4 > *(v35 + 24) >> 1)
  {
    sub_22C591324();
    v35 = v50;
  }

  *(v35 + 16) = v41;
  *(v35 + 8 * v40 + 32) = v19 | 0x6000000000000000;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0xE000000000000000;
  v43 = *(v35 + 24);

  if (v21 + 5 > (v43 >> 1))
  {
    sub_22C591324();
    v35 = v51;
  }

  *(v35 + 16) = v21 + 5;
  *(v35 + 8 * v41 + 32) = v42;
  v44 = sub_22C3DB9B0(v35);

  v45 = swift_allocObject();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v45 + 16) = v46;
}

uint64_t sub_22C52FE2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11[-v8];
  sub_22C9039CC();
  v12 = a1;
  v13 = a2;
  *a3 = sub_22C79EB0C(sub_22C5318DC);
  return sub_22C3770B0(v9, &qword_27D9BB908, &qword_22C910960);
}

void sub_22C52FF1C(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v4 = sub_22C90963C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C90952C();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  sub_22C374168(a1, v13);
  sub_22C90935C();
  (*(v5 + 104))(v8, *MEMORY[0x277D72E08], v4);
  (*(v14 + 24))(v24, v12, v8, *(v22 + 32), v13, v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v21);
  if (v25)
  {
    v15 = 0xF000000000000007;
  }

  else
  {
    v16 = v24[3];
    v17 = v24[4];
    v19 = v24[1];
    v18 = v24[2];
    v15 = v24[0];

    sub_22C456CE4(v15, v19, v18, v16, v17, 0);
  }

  *v23 = v15;
}

uint64_t sub_22C530154(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C530210;

  return sub_22C52EF74(a1, a2, a3, a4);
}

uint64_t sub_22C530210(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

BOOL sub_22C530310()
{
  v0 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  sub_22C9039CC();
  v7 = sub_22C9093BC();
  if (sub_22C370B74(v6, 1, v7) == 1)
  {
    goto LABEL_7;
  }

  sub_22C531200(v6, v4);
  v8 = *(v7 - 8);
  if ((*(v8 + 88))(v4, v7) != *MEMORY[0x277D72A58])
  {
    (*(v8 + 8))(v4, v7);
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  (*(v8 + 96))(v4, v7);
  v9 = *v4;
  v10 = sub_22C90931C();
  v11 = swift_projectBox();
  v12 = (*(*(v10 - 8) + 88))(v11, v10);
  if (v12 == *MEMORY[0x277D729D0] || v12 == *MEMORY[0x277D729B0])
  {

    v13 = 1;
  }

  else
  {
    v13 = v12 == *MEMORY[0x277D72970];
  }

LABEL_8:
  sub_22C3770B0(v6, &qword_27D9BB908, &qword_22C910960);
  return v13;
}

BOOL sub_22C53053C()
{
  v89 = sub_22C90977C();
  v0 = sub_22C369824(v89);
  v88 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  v87 = v5 - v4;
  v6 = sub_22C9094AC();
  v7 = sub_22C369824(v6);
  v90 = v8;
  v91 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C90952C();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v22 = (v21 - v20);
  v23 = sub_22C90919C();
  v24 = sub_22C369824(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v31 = v30 - v29;
  v32 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  sub_22C369ABC();
  v36 = (v34 - v35);
  MEMORY[0x28223BE20](v37);
  v39 = &v84 - v38;
  sub_22C9039CC();
  v40 = sub_22C9093BC();
  if (sub_22C370B74(v39, 1, v40) == 1)
  {
    goto LABEL_9;
  }

  v85 = v13;
  v86 = v26;
  v41 = v23;
  sub_22C531200(v39, v36);
  v42 = *(v40 - 8);
  if ((*(v42 + 88))(v36, v40) == *MEMORY[0x277D72A38])
  {
    (*(v42 + 96))(v36, v40);
    v43 = *v36;
    v44 = swift_projectBox();
    v45 = v86;
    v46 = v41;
    (*(v86 + 16))(v31, v44, v41);
    sub_22C9090AC();
    v47 = v17[11];
    v48 = sub_22C36BE34();
    v50 = v49(v48);
    if (v50 == *MEMORY[0x277D72D50])
    {
      (*(v45 + 8))(v31, v41);
LABEL_8:
      v53 = v17[1];
      v54 = sub_22C36BE34();
      v55(v54);

      goto LABEL_9;
    }

    if (v50 == *MEMORY[0x277D72D30])
    {
LABEL_7:
      v51 = sub_22C369F08();
      v52(v51, v41);
      goto LABEL_8;
    }

    if (v50 == *MEMORY[0x277D72D28])
    {
      v58 = v17[12];
      v59 = sub_22C36BE34();
      v60(v59);
      v61 = *(*v22 + 16);
      v62 = *(*v22 + 24);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      inited = swift_initStackObject();
      v64 = sub_22C37346C(inited);
      *(v64 + 1) = v65;
      v92 = v61;
      v93 = v62;
      MEMORY[0x28223BE20](v64);
      sub_22C3718E0();
      v56 = sub_22C5EC08C(sub_22C457404, v66, inited);
      swift_setDeallocating();
      sub_22C58FFC4();
      v67 = sub_22C369F08();
      v68(v67, v41);
    }

    else
    {
      if (v50 != *MEMORY[0x277D72D18])
      {
        goto LABEL_7;
      }

      v69 = v17[12];
      v70 = sub_22C36BE34();
      v71(v70);
      v84 = *v22;
      v72 = swift_projectBox();
      v73 = v90;
      v74 = v85;
      (*(v90 + 16))(v85, v72, v91);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v75 = swift_initStackObject();
      *(v75 + 16) = xmmword_22C90F870;
      sub_22C37346C(v75);
      v76 = v87;
      sub_22C90948C();
      v77 = sub_22C9096FC();
      v79 = v78;
      v80 = (*(v88 + 8))(v76, v89);
      v89 = v46;
      v92 = v77;
      v93 = v79;
      MEMORY[0x28223BE20](v80);
      sub_22C3718E0();
      v56 = sub_22C5EC08C(sub_22C3AC11C, v81, v75);
      swift_setDeallocating();
      sub_22C58FFC4();
      (*(v73 + 8))(v74, v91);
      v82 = sub_22C369F08();
      v83(v82, v89);
    }

    goto LABEL_10;
  }

  (*(v42 + 8))(v36, v40);
LABEL_9:
  v56 = 0;
LABEL_10:
  sub_22C3770B0(v39, &qword_27D9BB908, &qword_22C910960);
  return v56;
}

uint64_t sub_22C530BC8(uint64_t *a1)
{
  v69 = a1;
  v2 = sub_22C9039FC();
  v3 = sub_22C369824(v2);
  v74 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v70 = &v66 - v12;
  MEMORY[0x28223BE20](v11);
  v67 = &v66 - v13;
  v14 = sub_22C9063DC();
  v15 = sub_22C369824(v14);
  v72 = v16;
  v73 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v71 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v68 = &v66 - v22;
  v23 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v66 - v25;
  v27 = sub_22C90952C();
  v28 = sub_22C369824(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369ABC();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v66 - v37;
  sub_22C9039CC();
  v39 = sub_22C9093BC();
  if (sub_22C370B74(v26, 1, v39) == 1)
  {
    sub_22C3770B0(v26, &qword_27D9BB908, &qword_22C910960);
    v40 = v71;
    sub_22C903F7C();
    v41 = v74;
    v42 = *(v74 + 16);
    v42(v9, v1, v2);
    v43 = sub_22C9063CC();
    v44 = sub_22C90AADC();
    v45 = v2;
    if (os_log_type_enabled(v43, v44))
    {
      v46 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v75 = v69;
      *v46 = 136315138;
      v42(v70, v9, v45);
      v47 = sub_22C90A1AC();
      v49 = v48;
      (*(v41 + 8))(v9, v45);
      v50 = sub_22C36F9F4(v47, v49, &v75);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_22C366000, v43, v44, "Dropping span-matched entity, since type cannot be determined: %s", v46, 0xCu);
      sub_22C36FF94(v69);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v41 + 8))(v9, v2);
    }

    (*(v72 + 8))(v40, v73);
  }

  else
  {
    v51 = v74;
    sub_22C90935C();
    (*(*(v39 - 8) + 8))(v26, v39);
    (*(v30 + 32))(v38, v35, v27);
    if (sub_22C530310() || (sub_22C5E94F0(), (v52 & 1) != 0))
    {
      (*(v30 + 8))(v38, v27);
      return 0;
    }

    v66 = v38;
    v69 = v30;
    v71 = v27;
    v54 = v68;
    sub_22C903F7C();
    v55 = v51;
    v56 = *(v51 + 16);
    v57 = v67;
    v56(v67, v1, v2);
    v58 = sub_22C9063CC();
    v59 = sub_22C90AACC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v75 = v61;
      *v60 = 136315138;
      v56(v70, v57, v2);
      v62 = sub_22C90A1AC();
      v64 = v63;
      (*(v55 + 8))(v57, v2);
      v65 = sub_22C36F9F4(v62, v64, &v75);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_22C366000, v58, v59, "Dropping non-primitive span-matched entity with no matching types among tools in prompt: %s", v60, 0xCu);
      sub_22C36FF94(v61);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v72 + 8))(v68, v73);
    }

    else
    {

      (*(v55 + 8))(v57, v2);
      (*(v72 + 8))(v54, v73);
    }

    (v69[1])(v66, v71);
  }

  return 1;
}

uint64_t sub_22C531200(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C531270(uint64_t a1)
{
  v68 = sub_22C9039FC();
  v2 = *(v68 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BDA90, &unk_22C91A460);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v59 - v7;
  v75 = sub_22C90822C();
  v9 = *(*(v75 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v75);
  v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v70 = &v59 - v13;
  MEMORY[0x28223BE20](v12);
  v74 = &v59 - v14;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v76 = 0;
  v77 = MEMORY[0x277D84F90];
  v73 = v17 + 16;
  v69 = *(a1 + 16);
  v65 = (v2 + 8);
  v66 = v17;
  v61 = (v17 + 8);
  v62 = (v17 + 32);
  v63 = v8;
  v64 = a1;
  while (1)
  {
    if (v15 == v69)
    {

      return;
    }

    if (v15 >= *(a1 + 16))
    {
      break;
    }

    v18 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v71 = *(v66 + 72);
    v72 = v18;
    v19 = a1 + v18 + v71 * v15;
    v20 = *(v66 + 16);
    v20(v74, v19, v75);
    v21 = v67;
    sub_22C90821C();
    v22 = sub_22C9039DC();
    (*v65)(v21, v68);
    sub_22C58B384(v22, v8);

    v23 = sub_22C90361C();
    if (sub_22C370B74(v8, 1, v23) == 1)
    {
      sub_22C3770B0(v8, &qword_27D9BDA90, &unk_22C91A460);
      v24 = 0;
      v25 = 0xE000000000000000;
    }

    else
    {
      v24 = sub_22C9035EC();
      v26 = v8;
      v25 = v27;
      (*(*(v23 - 8) + 8))(v26, v23);
    }

    v28 = v76;
    v29 = v77;
    v30 = *(v77 + 16);
    if (!v76)
    {
      v32 = 0;
      v42 = (v77 + 40);
      while (v30 != v32)
      {
        v43 = *(v42 - 1) == v24 && *v42 == v25;
        if (v43 || (sub_22C90B4FC() & 1) != 0)
        {
          goto LABEL_9;
        }

        ++v32;
        v42 += 2;
      }

LABEL_26:
      sub_22C7D4160();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = *(v16 + 16);
        sub_22C3B6A94();
        v16 = v78;
      }

      v46 = *(v16 + 16);
      if (v46 >= *(v16 + 24) >> 1)
      {
        sub_22C3B6A94();
        v16 = v78;
      }

      *(v16 + 16) = v46 + 1;
      v47 = v16 + 32;
      *(v16 + 32 + 8 * v46) = MEMORY[0x277D84F90];
      v20(v60, v74, v75);
      v37 = *(v16 + 32 + 8 * v46);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 32 + 8 * v46) = v37;
      if ((v48 & 1) == 0)
      {
        v55 = *(v37 + 16);

        sub_22C59204C();
        v56 = *(v47 + 8 * v46);
        *(v47 + 8 * v46) = v57;

        v37 = *(v47 + 8 * v46);
      }

      a1 = v64;
      v39 = *(v37 + 16);
      v40 = v39 + 1;
      if (v39 >= *(v37 + 24) >> 1)
      {
        sub_22C59204C();
        v37 = v58;
        *(v47 + 8 * v46) = v58;
      }

      v41 = v60;
      goto LABEL_35;
    }

    sub_22C7DA844(v24, v25, v29 + 32, v30, (v28 + 16));
    v32 = v31;
    v34 = v33;

    if (v34)
    {
      goto LABEL_26;
    }

LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C1DC(v16);
      v16 = v35;
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_38;
    }

    if (v32 >= *(v16 + 16))
    {
      goto LABEL_39;
    }

    v36 = v16 + 32;
    v20(v70, v74, v75);
    v37 = *(v16 + 32 + 8 * v32);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + 32 + 8 * v32) = v37;
    if ((v38 & 1) == 0)
    {
      v51 = *(v37 + 16);

      sub_22C59204C();
      v52 = *(v36 + 8 * v32);
      *(v36 + 8 * v32) = v53;

      v37 = *(v36 + 8 * v32);
    }

    a1 = v64;
    v39 = *(v37 + 16);
    v40 = v39 + 1;
    if (v39 >= *(v37 + 24) >> 1)
    {
      sub_22C59204C();
      v37 = v54;
      *(v36 + 8 * v32) = v54;
    }

    v41 = v70;
LABEL_35:
    ++v15;
    *(v37 + 16) = v40;
    v49 = v37 + v72 + v39 * v71;
    v50 = v75;
    (*v62)(v49, v41, v75);

    (*v61)(v74, v50);
    v8 = v63;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantToolsRiskProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_22C5319F4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C531ACC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v15 = a3 & 0xFFFFFFFFFFFFFFLL;
  v13 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    if (4 * v6 == v9 >> 14)
    {
      return a1;
    }

    result = v9;
    if ((v9 & 0xC) == v8)
    {
      result = sub_22C8A3F0C(v9, a2, a3);
    }

    v11 = result >> 16;
    if (result >> 16 >= v6)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      result = sub_22C90A3FC();
      v12 = result;
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v14[0] = a2;
      v14[1] = v15;
      v12 = *(v14 + v11);
    }

    else
    {
      result = v13;
      if ((a2 & 0x1000000000000000) == 0)
      {
        result = sub_22C90AFCC();
      }

      v12 = *(result + v11);
    }

    if ((v9 & 0xC) == v8)
    {
      result = sub_22C8A3F0C(v9, a2, a3);
      v9 = result;
      if ((a3 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_19;
    }

    if (v6 <= v9 >> 16)
    {
      goto LABEL_27;
    }

    v9 = sub_22C90A3CC();
LABEL_24:
    a1 = 33 * a1 + v12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

double sub_22C531C50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = *(a1 + 16);
  if (v13)
  {
    v30 = a2;
    *&v31 = MEMORY[0x277D84F90];
    sub_22C3B63F4();
    v14 = v31;
    v15 = (a1 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      sub_22C36A83C();
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = v17;
      *&v31 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);

      if (v20 >= v19 >> 1)
      {
        sub_22C3B63F4();
        v14 = v31;
      }

      *(v14 + 16) = v20 + 1;
      *(v14 + 8 * v20 + 32) = v18 | 0x4000000000000000;
      v15 += 4;
      --v13;
    }

    while (v13);

    a2 = v30;
    goto LABEL_8;
  }

  v21 = *(MEMORY[0x277D84F90] + 16);

  if (v21)
  {
LABEL_8:
    v22 = sub_22C531ED0(a1);
    sub_22C46BF90(v22, v23, a1, &v31);

    sub_22C474C14(&v31);

    result = *&v31;
    v25 = v32;
    v26 = v33;
    *a2 = v31;
    *(a2 + 16) = v25;
    *(a2 + 24) = v26;
    return result;
  }

  sub_22C903F7C();
  v27 = sub_22C9063CC();
  v28 = sub_22C90AADC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_22C366000, v27, v28, "ToolGrammarGenerator_v4_0 has an empty tool list!", v29, 2u);
    MEMORY[0x2318B9880](v29, -1, -1);
  }

  (*(v7 + 8))(v12, v4);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_22C531ED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v2 = v28;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = v28[2];
      v8 = v28[3];

      if (v7 >= v8 >> 1)
      {
        sub_22C3B5E2C();
      }

      v28[2] = v7 + 1;
      v9 = &v28[2 * v7];
      v9[4] = v6;
      v9[5] = v5;
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  result = sub_22C7F48EC(v2);
  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = *(v12 + 16);
  for (i = (v12 + 40); ; i += 2)
  {
    if (v15 == v13)
    {
      v19 = sub_22C531ACC(5381, v14, 0xE000000000000000);

      sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
      v20 = swift_allocObject();
      v21 = MEMORY[0x277D849A8];
      *(v20 + 16) = xmmword_22C90F800;
      v22 = MEMORY[0x277D84A20];
      *(v20 + 56) = v21;
      *(v20 + 64) = v22;
      *(v20 + 32) = v19;
      v23 = sub_22C90A14C();
      v25 = v24;
      v27 = *(v12 + 16);
      v26 = sub_22C90B47C();
      MEMORY[0x2318B7850](v26);

      MEMORY[0x2318B7850](95, 0xE100000000000000);
      MEMORY[0x2318B7850](v23, v25);

      return 0x696C5F736C6F6F74;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    ++v13;
    v18 = *(i - 1);
    v17 = *i;
    v29 = v14;

    MEMORY[0x2318B7850](v18, v17);

    v14 = v29;
  }

  __break(1u);
  return result;
}

void sub_22C532128(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v46 = a1;
  v9 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - v11;
  v13 = sub_22C90941C();
  v14 = sub_22C369824(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v21 = v20 - v19;
  v23 = *a3;
  v22 = a3[1];
  v24 = a3[3];
  v44 = a3[2];
  v45 = v24;
  sub_22C534884(a4, v12);
  if (sub_22C370B74(v12, 1, v13) == 1)
  {
    sub_22C5348F4(v12);
LABEL_6:
    sub_22C369AEC();
    v25 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    sub_22C36BE74();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_22C90FB40;
    sub_22C36A83C();
    v35 = swift_allocObject();
    v33 = v46;
    *(v35 + 16) = v46;
    *(v35 + 24) = a2;
    *(v34 + 32) = v35;
    sub_22C36A83C();
    v36 = swift_allocObject();
    *(v36 + 16) = 61;
    *(v36 + 24) = 0xE100000000000000;
    *(v34 + 40) = v36;
    sub_22C36A83C();
    v37 = swift_allocObject();
    *(v37 + 16) = v23;
    *(v37 + 24) = v22;
    *(v34 + 48) = v37 | 0x4000000000000000;
    *(v25 + 16) = v34;

    goto LABEL_7;
  }

  (*(v16 + 32))(v21, v12, v13);
  if ((sub_22C5FB484() & 1) == 0)
  {
    (*(v16 + 8))(v21, v13);
    goto LABEL_6;
  }

  sub_22C369AEC();
  v25 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22C90D070;
  sub_22C36A83C();
  v27 = swift_allocObject();
  *(v27 + 16) = v46;
  *(v27 + 24) = a2;
  *(v26 + 32) = v27;
  sub_22C36A83C();
  v28 = swift_allocObject();
  sub_22C372900(v28, 0x6C616E6F6974706FLL);
  *(v26 + 40) = v29;
  sub_22C36A83C();
  v30 = swift_allocObject();
  *(v30 + 16) = 61;
  *(v30 + 24) = 0xE100000000000000;
  *(v26 + 48) = v30;
  sub_22C36A83C();
  v31 = swift_allocObject();
  *(v31 + 16) = v23;
  *(v31 + 24) = v22;
  *(v26 + 56) = v31 | 0x4000000000000000;
  v32 = *(v16 + 8);

  v32(v21, v13);
  v33 = v46;
  *(v25 + 16) = v26;
LABEL_7:
  v47 = 0x5F6D61726170;
  v48 = 0xE600000000000000;
  MEMORY[0x2318B7850](v33, a2);
  MEMORY[0x2318B7850](95, 0xE100000000000000);
  MEMORY[0x2318B7850](v23, v22);
  v38 = v47;
  v39 = v48;
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  sub_22C36BE74();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_22C90F800;
  *(v40 + 32) = v23;
  *(v40 + 40) = v22;
  *(v40 + 48) = v44;
  v47 = v40;

  v41 = v45;

  sub_22C3CC3D8(v41);
  v42 = v47;
  *a5 = v38;
  a5[1] = v39;
  a5[2] = v25 | 0xC000000000000000;
  a5[3] = v42;
}

uint64_t sub_22C532504()
{
  v0 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22C90FB40;
  v2 = swift_allocObject();
  *(v2 + 16) = 44;
  *(v2 + 24) = 0xE100000000000000;
  *(v1 + 32) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = 8236;
  *(v3 + 24) = 0xE200000000000000;
  *(v1 + 40) = v3;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *(v1 + 48) = result;
  *(v0 + 16) = v1;
  qword_27D9BDA98 = 0xD000000000000017;
  unk_27D9BDAA0 = 0x800000022C931ED0;
  qword_27D9BDAA8 = v0 | 0x8000000000000000;
  return result;
}

uint64_t sub_22C532604@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v114 = *MEMORY[0x277D85DE8];
  v110 = 0x5F6C6F6F74;
  v111 = 0xE500000000000000;
  v9 = sub_22C90A2CC();
  MEMORY[0x2318B7850](v9);

  v10 = *(a3 + 16);
  if (v10)
  {
    v110 = 0x5F6C6F6F74;
    v111 = 0xE500000000000000;

    MEMORY[0x2318B7850](0x74656D617261705FLL, 0xEB00000000737265);
    v96 = a3;
    sub_22C532FDC(0x5F6C6F6F74, 0xE500000000000000, a3, &v110);

    v102 = a2;
    v11 = a1;
    v13 = v110;
    v12 = v111;
    v14 = v112;
    v104 = v111;
    v110 = 0x5F6C6F6F74;
    v111 = 0xE500000000000000;

    MEMORY[0x2318B7850](0x7461636F766E695FLL, 0xEB000000006E6F69);
    v16 = v110;
    v15 = v111;
    v97 = v13;
    v107 = v13;
    v108 = v12;
    v109 = v14;

    v94 = v11;
    sub_22C5333D4(v16, v15, v11, v102, &v107, &v110);

    v17 = v111;
    v18 = v112;
    v19 = v113;
    v20 = v14;
    v103 = v14;
    v101 = v110;
    if (a4)
    {
      v110 = 0x5F6C6F6F74;
      v111 = 0xE500000000000000;

      v21 = v17;
      MEMORY[0x2318B7850](0x6574616470755FLL, 0xE700000000000000);
      v23 = v110;
      v22 = v111;
      v107 = v97;
      v108 = v104;
      v109 = v20;

      sub_22C533654(v23, v22, v94, v102, &v107, &v110);

      v24 = v111;
      v93 = v112;
      v91 = v110;
      v92 = v113;
      sub_22C369AEC();
      v25 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
      sub_22C380498();
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_22C90F870;
      sub_22C36A83C();
      v27 = swift_allocObject();
      *(v27 + 16) = v101;
      *(v27 + 24) = v21;
      *(v26 + 32) = v27 | 0x4000000000000000;
      sub_22C36A83C();
      v28 = swift_allocObject();
      *(v28 + 16) = v91;
      *(v28 + 24) = v24;
      *(v26 + 40) = v28 | 0x4000000000000000;
      *(v25 + 16) = v26;
      v95 = v25 | 0x8000000000000000;
      sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
      sub_22C36BE74();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_22C90F800;
      *(v29 + 32) = v101;
      *(v29 + 40) = v21;
      *(v29 + 48) = v18;
      v105 = v29;

      swift_bridgeObjectRetain_n();

      sub_22C3CC3D8(v19);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      *(inited + 32) = v91;
      *(inited + 40) = v24;
      *(inited + 48) = v93;
      v110 = inited;

      sub_22C3CC3D8(v92);
      sub_22C3CC3D8(v110);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_22C90F800;
      *(v31 + 32) = v97;
      *(v31 + 40) = v104;
      *(v31 + 48) = v103;
      v110 = v31;

      sub_22C3CC3D8(v32);
      v33 = &v105;
      sub_22C3CC3D8(v110);
      v98 = v105;
      v34 = (v96 + 56);
      v35 = MEMORY[0x277D84F90];
      while (1)
      {
        v36 = *(v34 - 1);
        v37 = *v34;
        v38 = *(v34 - 3);
        v39 = *(v34 - 2);
        swift_initStackObject();
        sub_22C5349EC();
        *(v33 + 1) = xmmword_22C90F800;
        v33 += 2;
        v40[4] = v38;
        v40[5] = v39;
        v40[6] = v36;
        v41 = *(v37 + 16);

        if (v41 && (sub_22C5902A0(), sub_22C5349EC(), v51 = v33[2], v33 += 2, *(v37 + 16)))
        {
          v52 = *(v101 + 24);
          sub_22C374C40();
          if (v54 < v41)
          {
            goto LABEL_56;
          }

          sub_22C3871BC(v53);
          swift_arrayInitWithCopy();

          v55 = *(v101 + 16);
          v42 = v55 + v41;
          if (__OFADD__(v55, v41))
          {
            goto LABEL_58;
          }

          *v33 = v42;
        }

        else
        {

          if (v41)
          {
            __break(1u);
            goto LABEL_47;
          }

          v42 = *v33;
        }

        v43 = *(v35 + 16);
        if (__OFADD__(v43, v42))
        {
          goto LABEL_48;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v43 + v42 > *(v35 + 24) >> 1)
        {
          sub_22C5902A0();
          v35 = v44;
        }

        if (*v33)
        {
          v45 = *(v35 + 16);
          v46 = *(v35 + 24);
          sub_22C374C40();
          if (v47 < v42)
          {
            goto LABEL_52;
          }

          swift_arrayInitWithCopy();

          if (v42)
          {
            v48 = *(v35 + 16);
            v49 = __OFADD__(v48, v42);
            v50 = v48 + v42;
            if (v49)
            {
              goto LABEL_54;
            }

            *(v35 + 16) = v50;
          }
        }

        else
        {

          if (v42)
          {
            goto LABEL_50;
          }
        }

        v34 += 4;
        if (!--v10)
        {
          v110 = v98;
          sub_22C3CC3D8(v35);

          goto LABEL_44;
        }
      }
    }

    sub_22C36A83C();
    v64 = swift_allocObject();
    *(v64 + 16) = v101;
    *(v64 + 24) = v17;
    v95 = v64 | 0x4000000000000000;
    sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
    sub_22C36BE74();
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_22C90F800;
    *(v65 + 32) = v101;
    *(v65 + 40) = v17;
    *(v65 + 48) = v18;
    v106 = v65;

    swift_bridgeObjectRetain_n();
    sub_22C3CC3D8(v19);
    v66 = swift_initStackObject();
    *(v66 + 16) = xmmword_22C90F800;
    *(v66 + 32) = v97;
    *(v66 + 40) = v104;
    *(v66 + 48) = v14;
    v110 = v66;

    sub_22C3CC3D8(v67);
    v68 = &v106;
    sub_22C3CC3D8(v110);
    v99 = v106;
    v69 = (v96 + 56);
    v70 = MEMORY[0x277D84F90];
    do
    {
      v71 = *(v69 - 1);
      v72 = *v69;
      v74 = *(v69 - 3);
      v73 = *(v69 - 2);
      swift_initStackObject();
      sub_22C5349EC();
      *(v68 + 1) = xmmword_22C90F800;
      v68 += 2;
      v75[4] = v74;
      v75[5] = v73;
      v75[6] = v71;
      v76 = *(v72 + 16);

      if (v76 && (sub_22C5902A0(), sub_22C5349EC(), v85 = v68[2], v68 += 2, *(v72 + 16)))
      {
        v86 = *(a4 + 24);
        sub_22C374C40();
        if (v88 < v76)
        {
          goto LABEL_57;
        }

        sub_22C3871BC(v87);
        swift_arrayInitWithCopy();

        v89 = *(a4 + 16);
        v77 = v89 + v76;
        if (__OFADD__(v89, v76))
        {
          goto LABEL_59;
        }

        *v68 = v77;
      }

      else
      {

        if (v76)
        {
LABEL_47:
          __break(1u);
LABEL_48:
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
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
        }

        v77 = *v68;
      }

      v78 = *(v70 + 16);
      if (__OFADD__(v78, v77))
      {
        goto LABEL_49;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v78 + v77 > *(v70 + 24) >> 1)
      {
        sub_22C5902A0();
        v70 = v79;
      }

      if (*v68)
      {
        v80 = *(v70 + 16);
        v81 = *(v70 + 24);
        sub_22C374C40();
        if (v82 < v77)
        {
          goto LABEL_53;
        }

        swift_arrayInitWithCopy();

        if (v77)
        {
          v83 = *(v70 + 16);
          v49 = __OFADD__(v83, v77);
          v84 = v83 + v77;
          if (v49)
          {
            goto LABEL_55;
          }

          *(v70 + 16) = v84;
        }
      }

      else
      {

        if (v77)
        {
          goto LABEL_51;
        }
      }

      v69 += 4;
      --v10;
    }

    while (v10);
    v110 = v99;
    sub_22C3CC3D8(v70);

LABEL_44:

    v63 = v110;
    v62 = v95;
  }

  else
  {
    sub_22C369AEC();
    v56 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    sub_22C380498();
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_22C90F870;
    sub_22C36A8CC();
    v58 = swift_allocObject();
    sub_22C377E2C(v58);
    *(v57 + 32) = v59;
    sub_22C36A8CC();
    v60 = swift_allocObject();
    v110 = a1;
    v111 = a2;

    result = MEMORY[0x2318B7850](10536, 0xE200000000000000);
    *(v60 + 16) = a1;
    *(v60 + 24) = a2;
    *(v57 + 40) = v60;
    *(v56 + 16) = v57;
    v62 = v56 | 0xC000000000000000;
    v63 = MEMORY[0x277D84F90];
  }

  *a5 = 0x5F6C6F6F74;
  a5[1] = 0xE500000000000000;
  a5[2] = v62;
  a5[3] = v63;
  v90 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22C532FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1;

  MEMORY[0x2318B7850](0x6D6574695FLL, 0xE500000000000000);
  v36 = a1;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  v38 = v6;
  if (v7)
  {
    v40 = MEMORY[0x277D84F90];
    sub_22C3B63F4();
    v8 = v40;
    v9 = (a3 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v10;
      v13 = *(v40 + 16);
      v14 = *(v40 + 24);

      if (v13 >= v14 >> 1)
      {
        sub_22C3B63F4();
      }

      *(v40 + 16) = v13 + 1;
      *(v40 + 8 * v13 + 32) = v12 | 0x4000000000000000;
      v9 += 4;
      --v7;
    }

    while (v7);
    v6 = v38;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v8;

  MEMORY[0x2318B7850](0x636E65757165735FLL, 0xE900000000000065);
  v15 = v6;
  v16 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22C90F870;
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22C90FB40;
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  *(v20 + 24) = a2;
  *(v19 + 32) = v20 | 0x4000000000000000;
  v21 = swift_allocObject();
  *(v21 + 16) = 8236;
  *(v21 + 24) = 0xE200000000000000;
  *(v19 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v36;
  *(v22 + 24) = a2;
  *(v19 + 48) = v22 | 0x4000000000000000;
  *(v18 + 16) = v19;
  v23 = v16;
  *(v17 + 32) = v18 | 0xC000000000000000;
  v24 = swift_allocObject();
  *(v24 + 16) = v36;
  *(v24 + 24) = a2;
  *(v17 + 40) = v24 | 0x4000000000000000;
  *(v16 + 16) = v17;
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22C90F870;
  v27 = swift_allocObject();
  *(v27 + 16) = v15;
  *(v27 + 24) = a2;
  *(v26 + 32) = v27 | 0x4000000000000000;
  v28 = swift_allocObject();
  v29 = qword_27D9BA6B8;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_27D9BDA98;
  v30 = unk_27D9BDAA0;
  *(v28 + 16) = qword_27D9BDA98;
  *(v28 + 24) = v30;
  *(v26 + 40) = v28 | 0x4000000000000000;
  *(v25 + 16) = v26;
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22C90FB40;
  v33 = qword_27D9BDAA8;
  *(v32 + 32) = v31;
  *(v32 + 40) = v30;
  *(v32 + 48) = v33;
  *(v32 + 56) = v15;
  *(v32 + 64) = a2;
  *(v32 + 72) = v23 | 0x8000000000000000;
  *(v32 + 80) = v36;
  *(v32 + 88) = a2;
  *(v32 + 96) = v35 | 0x8000000000000000;
  *a4 = v38;
  a4[1] = a2;
  a4[2] = v25 | 0xC000000000000000;
  a4[3] = v32;

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_22C5333D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v8 = *a5;
  v9 = a5[1];
  v26 = *a5;

  MEMORY[0x2318B7850](0x616E6F6974706F5FLL, 0xE90000000000006CLL);
  v10 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22C90F870;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  *(v11 + 32) = v12 | 0x4000000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0xE000000000000000;
  *(v11 + 40) = v13;
  *(v10 + 16) = v11;
  v14 = v10 | 0x8000000000000000;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22C90D070;
  v17 = swift_allocObject();
  *(v17 + 16) = 0x766E695F6C6F6F74;
  *(v17 + 24) = 0xEF6E6F697461636FLL;
  *(v16 + 32) = v17 | 0x4000000000000000;
  v18 = swift_allocObject();

  MEMORY[0x2318B7850](40, 0xE100000000000000);
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v16 + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v26;
  *(v19 + 24) = v9;
  *(v16 + 48) = v19 | 0x4000000000000000;
  v20 = swift_allocObject();
  *(v20 + 16) = 41;
  *(v20 + 24) = 0xE100000000000000;
  *(v16 + 56) = v20;
  *(v15 + 16) = v16;
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22C90F800;
  *(v21 + 32) = v26;
  *(v21 + 40) = v9;
  *(v21 + 48) = v14;
  *a6 = a1;
  a6[1] = a2;
  a6[2] = v15 | 0xC000000000000000;
  a6[3] = v21;
}

uint64_t sub_22C533654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C90F7F0;
  v14 = swift_allocObject();

  MEMORY[0x2318B7850](40, 0xE100000000000000);
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v13 + 32) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = 0xD000000000000015;
  *(v15 + 24) = 0x800000022C930A10;
  *(v13 + 40) = v15 | 0x4000000000000000;
  v16 = swift_allocObject();
  *(v16 + 16) = 8236;
  *(v16 + 24) = 0xE200000000000000;
  *(v13 + 48) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v11;
  *(v13 + 56) = v17 | 0x4000000000000000;
  v18 = swift_allocObject();
  *(v18 + 16) = 41;
  *(v18 + 24) = 0xE100000000000000;
  *(v13 + 64) = v18;
  *(v12 + 16) = v13;
  *a6 = a1;
  a6[1] = a2;
  v19 = MEMORY[0x277D84F90];
  a6[2] = v12 | 0xC000000000000000;
  a6[3] = v19;
}

uint64_t sub_22C533804@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v23 = a1[2];
  v24 = a1[3];

  MEMORY[0x2318B7850](v3, v2);

  MEMORY[0x2318B7850](0x746E65746E6F635FLL, 0xE800000000000000);
  sub_22C369AEC();
  v26 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  sub_22C36BE74();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C90FB40;
  sub_22C369AEC();
  v5 = swift_allocObject();
  sub_22C36BE74();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22C90FB40;
  sub_22C36A8CC();
  v7 = swift_allocObject();
  *(v7 + 16) = 91;
  *(v7 + 24) = 0xE100000000000000;
  *(v6 + 32) = v7;
  sub_22C36A8CC();
  v8 = swift_allocObject();
  *(v8 + 16) = 0x5F7473696CLL;
  *(v8 + 24) = 0xE500000000000000;
  *(v6 + 40) = v8 | 0x4000000000000000;
  sub_22C36A8CC();
  v9 = swift_allocObject();
  *(v9 + 16) = 93;
  *(v9 + 24) = 0xE100000000000000;
  *(v6 + 48) = v9;
  *(v5 + 16) = v6;
  *(v4 + 32) = v5 | 0xC000000000000000;
  sub_22C36A8CC();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v2;
  *(v4 + 40) = v10 | 0x4000000000000000;
  sub_22C36A8CC();
  v11 = swift_allocObject();
  *(v11 + 16) = 23899;
  *(v11 + 24) = 0xE200000000000000;
  *(v4 + 48) = v11;
  *(v26 + 16) = v4;
  sub_22C369AEC();
  v12 = swift_allocObject();
  sub_22C380498();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C90F870;
  sub_22C369AEC();
  v14 = swift_allocObject();
  sub_22C36BE74();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22C90FB40;
  sub_22C36A8CC();
  v16 = swift_allocObject();
  *(v16 + 16) = 0x5F7473696CLL;
  *(v16 + 24) = 0xE500000000000000;
  *(v15 + 32) = v16 | 0x4000000000000000;
  sub_22C36A8CC();
  v17 = swift_allocObject();
  *(v17 + 16) = 8236;
  *(v17 + 24) = 0xE200000000000000;
  *(v15 + 40) = v17;
  sub_22C36A8CC();
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  *(v18 + 24) = v2;
  *(v15 + 48) = v18 | 0x4000000000000000;
  *(v14 + 16) = v15;
  *(v13 + 32) = v14 | 0xC000000000000000;
  sub_22C36A8CC();
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v2;
  *(v13 + 40) = v19 | 0x4000000000000000;
  *(v12 + 16) = v13;
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  sub_22C36BE74();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22C90F800;
  *(v20 + 32) = 0x5F7473696CLL;
  *(v20 + 40) = 0xE500000000000000;
  *(v20 + 48) = v12 | 0x8000000000000000;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v23;
  v27 = inited;

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_22C3CC3D8(v24);
  sub_22C3CC3D8(v27);

  *a2 = 0x5F7473696CLL;
  a2[1] = 0xE500000000000000;
  a2[2] = v26 | 0x8000000000000000;
  a2[3] = v20;
  return result;
}

uint64_t sub_22C533B78@<X0>(void *a1@<X8>)
{
  sub_22C369AEC();
  v2 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  sub_22C380498();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22C90F870;
  sub_22C36A83C();
  v4 = swift_allocObject();
  sub_22C372900(v4, 0x735F6465746F7571);
  *(v3 + 32) = v5;
  sub_22C36A83C();
  v6 = swift_allocObject();
  result = sub_22C372900(v6, 0x636E657265666572);
  *(v3 + 40) = v8;
  *(v2 + 16) = v3;
  *a1 = 0xD000000000000012;
  a1[1] = 0x800000022C931EB0;
  v9 = MEMORY[0x277D84F90];
  a1[2] = v2 | 0x8000000000000000;
  a1[3] = v9;
  return result;
}

uint64_t sub_22C533C80@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_22C9094EC();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C533F4C(a1, a2);
  if (a2)
  {
    (*(v9 + 16))(v14, a1, v6);
    v16 = (*(v9 + 88))(v14, v6);
    if (v16 == *MEMORY[0x277D72CE0] || v16 == *MEMORY[0x277D72C88])
    {
      v18 = 0x800000022C931E90;
      v19 = 0xD000000000000011;
      goto LABEL_9;
    }

    (*(v9 + 8))(v14, v6);
  }

  v19 = 0;
  v18 = 0xE000000000000000;
LABEL_9:
  MEMORY[0x2318B7850](v19, v18);

  TypeIdentifier.PrimitiveTypeIdentifier.selfLoggingTypeName.getter();
  v20 = sub_22C90A2CC();
  v22 = v21;

  MEMORY[0x2318B7850](v20, v22);

  v23 = v15[2];
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v33 = MEMORY[0x277D84F90];
    sub_22C3B63F4();
    v25 = v33;
    v26 = v15 + 5;
    do
    {
      v28 = *(v26 - 1);
      v27 = *v26;
      sub_22C36A83C();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v27;
      v31 = *(v33 + 16);
      v30 = *(v33 + 24);

      if (v31 >= v30 >> 1)
      {
        sub_22C3B63F4();
      }

      *(v33 + 16) = v31 + 1;
      *(v33 + 8 * v31 + 32) = v29 | 0x4000000000000000;
      v26 += 2;
      --v23;
    }

    while (v23);

    v24 = MEMORY[0x277D84F90];
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  sub_22C369AEC();
  result = swift_allocObject();
  *(result + 16) = v25;
  *a3 = 0x766974696D697270;
  a3[1] = 0xEA00000000005F65;
  a3[2] = result | 0x8000000000000000;
  a3[3] = v24;
  return result;
}

void *sub_22C533F4C(uint64_t a1, char a2)
{
  v4 = sub_22C9094EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = *(v5 + 16);
  v12(&v24 - v10, a1, v4);
  v13 = *(v5 + 88);
  v14 = v13(v11, v4);
  if (v14 == *MEMORY[0x277D72CB0])
  {
    v15 = &unk_283FAEA10;
  }

  else if (v14 == *MEMORY[0x277D72CA0])
  {
    v15 = &unk_283FAEA40;
  }

  else
  {
    if (v14 != *MEMORY[0x277D72CD0] && v14 != *MEMORY[0x277D72CE8])
    {
      if (v14 == *MEMORY[0x277D72CE0] || v14 == *MEMORY[0x277D72C88])
      {
        if ((a2 & 1) == 0)
        {
          v15 = &unk_283FAE9D0;
          goto LABEL_25;
        }

        v18 = a1;
        v19 = *MEMORY[0x277D72CE0];
        v20 = *MEMORY[0x277D72C88];
        v12(v9, v18, v4);
        v21 = v13(v9, v4);
        if (v21 == v19 || v21 == v20)
        {
          v15 = &unk_283FAE990;
          goto LABEL_25;
        }

        v15 = &unk_283FAE9D0;
      }

      else
      {
        v15 = &unk_283FAEAA0;
        v9 = v11;
      }

      (*(v5 + 8))(v9, v4);
      goto LABEL_25;
    }

    v15 = &unk_283FAEA70;
  }

LABEL_25:
  v25 = v15;
  sub_22C3CC46C(&unk_283FAEAD0);
  return v25;
}

uint64_t sub_22C5341A4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v6 = sub_22C90A2CC();
  MEMORY[0x2318B7850](v6);

  if (sub_22C90A96C())
  {
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22C90F800;
    sub_22C36A83C();
    v9 = swift_allocObject();
    sub_22C372900(v9, 0x6D756E655F796E61);
    *(v8 + 32) = v10;
  }

  else
  {
    v8 = sub_22C48FF50(sub_22C53435C, 0, a1, &type metadata for BNFGrammarRuleExpression, MEMORY[0x277D84A98], a2, MEMORY[0x277D84AC0], v7);
  }

  sub_22C369AEC();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = v11 | 0x8000000000000000;
  sub_22C3A5908(&qword_27D9BAE30, &qword_22C914EB0);
  v13 = *(a2 + 8);
  sub_22C53495C();
  result = sub_22C90A53C();
  *a3 = 0x7079745F6D756E65;
  a3[1] = 0xEA00000000005F65;
  a3[2] = v12;
  a3[3] = result;
  return result;
}

uint64_t sub_22C53435C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = v5 | 0x4000000000000000;
}

void sub_22C5343B8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90F800;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v6;
  v8 = v7;

  sub_22C3CC3D8(v5);
  *a2 = v8;
}

uint64_t sub_22C534464@<X0>(unint64_t a1@<X2>, unint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = sub_22C531ACC(5381, a1, a2);
  sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D849A8];
  *(v7 + 16) = xmmword_22C90F800;
  v9 = MEMORY[0x277D84A20];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = v6;
  v10 = sub_22C90A14C();
  v12 = v11;
  v13 = sub_22C90A2CC();
  MEMORY[0x2318B7850](v13);

  MEMORY[0x2318B7850](95, 0xE100000000000000);
  MEMORY[0x2318B7850](v10, v12);

  sub_22C36A83C();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *a3 = 0x7361635F6D756E65;
  a3[1] = 0xEA00000000005F65;
  v15 = MEMORY[0x277D84F90];
  a3[2] = v14;
  a3[3] = v15;
}

uint64_t sub_22C5345D0()
{
  v0 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22C90F870;
  v2 = swift_allocObject();
  *(v2 + 16) = 0x6D756E655F796E61;
  *(v2 + 24) = 0xE800000000000000;
  *(v1 + 32) = v2 | 0x4000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0x636E657265666572;
  *(result + 24) = 0xE900000000000065;
  *(v1 + 40) = result | 0x4000000000000000;
  *(v0 + 16) = v1;
  strcpy(&qword_27D9E3FA0, "enum_dynamic");
  algn_27D9E3FA8[5] = 0;
  *&algn_27D9E3FA8[6] = -5120;
  qword_27D9E3FB0 = v0 | 0x8000000000000000;
  unk_27D9E3FB8 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22C5346E4()
{
  if (qword_27D9BA6C0 != -1)
  {
    sub_22C38BA6C();
  }

  sub_22C5349C8(&qword_27D9E3FA0);
}

uint64_t sub_22C534758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22C90A2CC();
  MEMORY[0x2318B7850](v6);

  sub_22C369AEC();
  v7 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  sub_22C380498();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C90F870;
  sub_22C36A8CC();
  v9 = swift_allocObject();
  sub_22C377E2C(v9);
  *(v8 + 32) = v10;
  sub_22C36A8CC();
  v11 = swift_allocObject();

  result = MEMORY[0x2318B7850](10536, 0xE200000000000000);
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v8 + 40) = v11;
  *(v7 + 16) = v8;
  *a3 = 0xD000000000000011;
  a3[1] = 0x800000022C931EF0;
  v13 = MEMORY[0x277D84F90];
  a3[2] = v7 | 0xC000000000000000;
  a3[3] = v13;
  return result;
}

uint64_t sub_22C534884(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5348F4(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C53495C()
{
  result = qword_27D9BDAB0;
  if (!qword_27D9BDAB0)
  {
    sub_22C3AC1A0(&qword_27D9BAE30, &qword_22C914EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDAB0);
  }

  return result;
}

uint64_t sub_22C5349C8@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;
}

uint64_t sub_22C5349F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X8>)
{
  v195 = a3;
  v189 = a1;
  v190 = a2;
  v202 = a5;
  v204 = sub_22C9063DC();
  v6 = sub_22C369824(v204);
  *&v203 = v7;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v188 = &v186 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v187 = &v186 - v16;
  MEMORY[0x28223BE20](v15);
  v201 = &v186 - v17;
  v18 = sub_22C90077C();
  v19 = sub_22C369824(v18);
  v193 = v20;
  v194 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = a4[1];
  v196 = *a4;
  v197 = v26;
  v27 = a4[2];
  v198 = a4[3];
  v199 = v27;
  v28 = type metadata accessor for FullPlannerPreferences();
  v29 = v28[12];
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  v30 = v210;
  v31 = v28[17];
  sub_22C382724();
  v32 = v210;
  static PromptGrammarGenerationMode.configuration(from:)(&v210);
  LODWORD(v200) = v210;
  v33 = v28[29];
  sub_22C382724();
  v192 = v210;
  v34 = v28[30];
  sub_22C382724();
  v191 = v210;
  v35 = v28[31];
  sub_22C382724();
  if (v30 == 1)
  {
    v36 = v210;
    if (v32)
    {
      (*(v193 + 16))(v25, v195, v194);
      v37 = sub_22C90136C();
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      swift_allocObject();
      v40 = v205;
      result = sub_22C90135C();
      if (v40)
      {
        return result;
      }

      LODWORD(v195) = v36;
      v205 = 0;
      *(&v211 + 1) = v37;
      v212 = &protocol witness table for Tokenizer;
      *&v210 = result;
      *(&v229 + 1) = &type metadata for QuotableStringGrammarConverter;
      v230 = &protocol witness table for QuotableStringGrammarConverter;
      sub_22C36BE74();
      *&v228 = swift_allocObject();
      sub_22C36C730(&v210, v228 + 16);
    }

    else
    {
      LODWORD(v195) = v210;
      v230 = 0;
      v228 = 0u;
      v229 = 0u;
    }

    v50 = v201;
    sub_22C903F7C();
    v51 = sub_22C9063CC();
    v52 = sub_22C90AACC();
    v53 = sub_22C370214();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *&v210 = swift_slowAlloc();
      *v55 = 136315394;
      v56 = 0x800000022C92E2C0;
      v57 = 0x6553646972627968;
      if (v200 == 1)
      {
        v57 = 0xD000000000000012;
      }

      else
      {
        v56 = 0xEC00000072657672;
      }

      if (v200)
      {
        v58 = v57;
      }

      else
      {
        v58 = 0x696C43796C6C7566;
      }

      if (v200)
      {
        v59 = v56;
      }

      else
      {
        v59 = 0xEB00000000746E65;
      }

      v60 = sub_22C36F9F4(v58, v59, &v210);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      if (v32)
      {
        v61 = 0xD00000000000001CLL;
      }

      else
      {
        v61 = 0x6972745320796E41;
      }

      if (v32)
      {
        v62 = 0x800000022C931F70;
      }

      else
      {
        v62 = 0xEA0000000000676ELL;
      }

      v63 = sub_22C36F9F4(v61, v62, &v210);

      *(v55 + 14) = v63;
      _os_log_impl(&dword_22C366000, v51, v52, "Delta Grammar Configuration - Mode: %s, String Copying: %s", v55, 0x16u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v64 = sub_22C36D66C();
      MEMORY[0x2318B9880](v64);

      v65 = *(v203 + 8);
      v66 = v201;
    }

    else
    {

      v65 = *(v203 + 8);
      v66 = v50;
    }

    v67 = v204;
    v65(v66, v204);
    v68 = v199;
    if (v200)
    {
      if (v200 == 1)
      {
        sub_22C464B30(&v228, &v210);
        if (qword_27D9BA650 != -1)
        {
          sub_22C38BA8C();
        }

        v225 = qword_27D9BC898;
        v226 = unk_27D9BC8A0;
        v227 = qword_27D9BC8A8;
        v69 = qword_27D9BA648;

        v70 = v192;
        if (v69 != -1)
        {
          sub_22C3830B8();
        }

        v221 = xmmword_27D9BC880;
        v222 = qword_27D9BC890;
        v71 = qword_27D9BA658;

        if (v71 != -1)
        {
          sub_22C369F1C();
        }

        v217 = xmmword_27D9BC8B0;
        v218 = qword_27D9BC8C0;
        v72 = v202;
        v202[3] = &unk_283FBA150;
        v72[4] = &off_283FBA278;
        sub_22C36BE74();
        v73 = swift_allocObject();
        *v72 = v73;

        sub_22C535E6C(&v225, &v221, &v210, &v217, v70, v73 + 16);
        return sub_22C537404(&v228);
      }

      if ((~v199 & 0x3000000000000007) != 0)
      {
        sub_22C42F0B8(v189, &v225);
        v224 = &off_283FB5340;
        v223 = &type metadata for ToolboxGrammarToolProvider;
        *&v221 = v190;
        v109 = v196;
        v108 = v197;
        v110 = sub_22C374C4C();
        v111 = v198;
        sub_22C4C7C38(v110, v112, v113);
        v114 = sub_22C374C4C();
        sub_22C4C7C38(v114, v115, v116);
        v117 = qword_27D9BA650;

        if (v117 != -1)
        {
          sub_22C38BA8C();
        }

        sub_22C3861D0(&qword_27D9BC898);
        if (qword_27D9BA658 != -1)
        {
          sub_22C369F1C();
        }

        v190 = xmmword_27D9BC8B0;
        v204 = *(&xmmword_27D9BC8B0 + 1);
        v118 = v202;
        v202[3] = &unk_283FBA1D0;
        v118[4] = &off_283FBA288;
        sub_22C36BE74();
        v201 = swift_allocObject();
        *v118 = v201;
        sub_22C5EA85C();
        *&v206 = v119;
        if (v195)
        {
          sub_22C6A57DC(&v210, 2u);
          v119 = v206;
        }

        v202 = v119;
        sub_22C38A950();
        sub_22C3A5908(&qword_27D9BDAC0, &unk_22C91AB00);
        v120 = swift_allocObject();
        *(v120 + 16) = xmmword_22C90F870;
        sub_22C537968();
        sub_22C90AF5C();

        *&v210 = v68;
        *(&v210 + 1) = v109;
        sub_22C37B674();
        v121 = v210;
        sub_22C36A83C();
        v122 = swift_allocObject();
        *(v122 + 16) = v108 + 5;
        *(v122 + 24) = v111;
        v123 = v122 | 0x4000000000000000;
        v195 = sub_22C3A5908(&qword_27D9BDAC8, &qword_22C91A6A0);
        v219 = v195;
        sub_22C37349C();
        v193 = sub_22C3D32C8(v124, v125, &qword_22C91A6A0);
        v220 = v193;
        sub_22C380498();
        v126 = swift_allocObject();
        *&v217 = v126;
        *(v126 + 16) = v121;
        v127 = MEMORY[0x277D84F90];
        *(v126 + 32) = v123;
        *(v126 + 40) = v127;
        sub_22C3A5908(&qword_27D9BDAD8, &qword_22C91A6A8);
        v128 = swift_allocObject();
        sub_22C37A0D8(v128, xmmword_22C90FB40);
        v129 = v210;
        sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
        v130 = swift_allocObject();
        v203 = xmmword_22C90F800;
        *(v130 + 16) = xmmword_22C90F800;
        sub_22C36A83C();
        v131 = swift_allocObject();
        sub_22C3759A0(v131);
        sub_22C3A5908(&qword_27D9BDAE0, &qword_22C91A6B8);
        v132 = sub_22C375E94();
        sub_22C5379BC(v132);
        v132[3].n128_u64[1] = sub_22C3A5908(&qword_27D9BDAE8, &unk_22C91A6C0);
        v132[4].n128_u64[0] = sub_22C53793C(&qword_27D9BDAF0);
        v132[2].n128_u64[0] = swift_allocObject();
        if (v191)
        {
          sub_22C378A4C(&v221, &v211);
          sub_22C42F0B8(&v225, &v213);
          v215 = &unk_283FB9BD0;
          v216 = &off_283FB9DA0;
          v133 = xmmword_22C91A690;
        }

        else
        {
          bzero(&v211, 0x160uLL);
          v133 = 0uLL;
        }

        sub_22C537A08(v133);
        *(v128 + 56) = &unk_283FB4CB0;
        *(v128 + 64) = &off_2818B2B70;
        v162 = swift_allocObject();
        *(v128 + 32) = v162;
        sub_22C5378F0(v162, "tool_resolve_tool");
        sub_22C37BA74();
        v163 = v210;
        *(v128 + 96) = &unk_283FB4C30;
        *(v128 + 104) = &off_2818B2B58;
        *(v128 + 72) = v163;
        *(v128 + 88) = &unk_283FAEEE8;
        sub_22C537968();
        sub_22C90AF5C();

        *&v210 = v129;
        *(&v210 + 1) = v132;
        sub_22C5379E8();
        v164 = v210;
        sub_22C36A83C();
        v165 = swift_allocObject();
        v166 = v195;
        v167 = v200;
        *(v165 + 16) = v194;
        *(v165 + 24) = v167;
        v168 = v165 | 0x4000000000000000;
        v169 = v193;
        *(v128 + 136) = v166;
        *(v128 + 144) = v169;
        sub_22C380498();
        v170 = swift_allocObject();
        *(v128 + 112) = v170;
        *(v170 + 16) = v164;
        *(v170 + 32) = v168;
        *(v170 + 40) = MEMORY[0x277D84F90];
        *&v210 = v129;
        *(&v210 + 1) = v132;
        sub_22C36C730(&v217, &v211);
        v213 = v202;
        v214 = v128;
        *(v120 + 56) = sub_22C374478();
        sub_22C36AB40();
        *(v120 + 64) = sub_22C3D32C8(v171, &qword_27D9BDAF8, &qword_22C91AB10);
        v172 = swift_allocObject();
        sub_22C5379C8(v172);
        sub_22C3871D0();
        sub_22C5374B4(&v210);
        *(v120 + 96) = sub_22C374478();
        sub_22C37349C();
        *(v120 + 104) = sub_22C3D32C8(v173, v174, &unk_22C91A6D0);
        sub_22C3A5908(&qword_27D9BAE18, &unk_22C90D6C0);
        v175 = sub_22C375E94();
        sub_22C5379BC(v175);
        v176 = v197;
        *(v177 + 32) = v196;
        *(v177 + 40) = v176;
        v178 = v198;
        v179 = v199;
        *(v177 + 48) = v199;
        *(v177 + 56) = v178;
        *(v177 + 64) = 0;
        *(v120 + 72) = v177;
        if (v192)
        {
          v180 = sub_22C3A5908(&qword_27D9BDB18, &qword_22C91A6E0);
          sub_22C36AB40();
          v182 = sub_22C3D32C8(v181, &qword_27D9BDB18, &qword_22C91A6E0);
          sub_22C3816AC();
          v183 = swift_allocObject();
          *(v183 + 16) = 83;
          *(v183 + 24) = 0xE100000000000000;
          *(v183 + 32) = MEMORY[0x277D84FA0];
          *(v183 + 40) = 0;
          *(&v217 + 1) = &unk_22C91A6E8;
          v218 = v183;
        }

        else
        {
          v182 = &off_2818B2AB0;
          v180 = &type metadata for PromptGrammarCoalescer;
        }

        v184 = v201;
        v220 = v182;
        v219 = v180;
        *&v217 = v120;
        sub_22C3DF2E8(&v225);
        sub_22C36FF94(&v221);
        sub_22C36C730(&v217, &v210);
        v185 = v211;
        *(v184 + 1) = v210;
        *(v184 + 2) = v185;
        *(v184 + 6) = v212;
        sub_22C4CBAA8(v196, v197, v179);
        return sub_22C537404(&v228);
      }

      v74 = v188;
LABEL_40:
      sub_22C903F7C();
      v75 = sub_22C9063CC();
      sub_22C90AADC();
      v76 = sub_22C370214();
      if (os_log_type_enabled(v76, v77))
      {
        sub_22C3720F4();
        v78 = swift_slowAlloc();
        sub_22C53799C(v78);
        sub_22C37F09C(&dword_22C366000, v79, v80, "No base grammar provided in a configuration that requires a grammar.");
        v81 = sub_22C36D66C();
        MEMORY[0x2318B9880](v81);
      }

      v65(v74, v67);
      sub_22C5373B0();
      swift_allocError();
      *v82 = 1;
      swift_willThrow();
      return sub_22C537404(&v228);
    }

    if ((~v199 & 0x3000000000000007) == 0)
    {
      v74 = v187;
      goto LABEL_40;
    }

    sub_22C42F0B8(v189, &v225);
    v220 = &off_283FB5340;
    v219 = &type metadata for ToolboxGrammarToolProvider;
    *&v217 = v190;
    v84 = v196;
    v83 = v197;
    v85 = sub_22C374C4C();
    v86 = v198;
    sub_22C4C7C38(v85, v87, v88);
    v89 = sub_22C374C4C();
    sub_22C4C7C38(v89, v90, v91);
    v92 = qword_27D9BA650;

    if (v92 != -1)
    {
      sub_22C38BA8C();
    }

    sub_22C3861D0(&qword_27D9BC898);
    if (qword_27D9BA658 != -1)
    {
      sub_22C369F1C();
    }

    v189 = xmmword_27D9BC8B0;
    v204 = *(&xmmword_27D9BC8B0 + 1);
    v223 = &unk_283FBA1D0;
    v224 = &off_283FBA288;
    sub_22C36BE74();
    v201 = swift_allocObject();
    *&v221 = v201;
    sub_22C5EA85C();
    v231 = v93;
    if (v195)
    {
      sub_22C6A57DC(&v210, 2u);
      v93 = v231;
    }

    v195 = v93;
    sub_22C38A950();
    sub_22C3A5908(&qword_27D9BDAC0, &unk_22C91AB00);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_22C90F870;
    sub_22C537968();
    sub_22C90AF5C();

    *&v210 = v68;
    *(&v210 + 1) = v84;
    sub_22C37B674();
    v95 = v210;
    sub_22C36A83C();
    v96 = swift_allocObject();
    *(v96 + 16) = v83 + 5;
    *(v96 + 24) = v86;
    v97 = v96 | 0x4000000000000000;
    v193 = sub_22C3A5908(&qword_27D9BDAC8, &qword_22C91A6A0);
    v208 = v193;
    sub_22C37349C();
    v190 = sub_22C3D32C8(v98, v99, &qword_22C91A6A0);
    v209 = v190;
    sub_22C380498();
    v100 = swift_allocObject();
    *&v206 = v100;
    *(v100 + 16) = v95;
    v101 = MEMORY[0x277D84F90];
    *(v100 + 32) = v97;
    *(v100 + 40) = v101;
    sub_22C3A5908(&qword_27D9BDAD8, &qword_22C91A6A8);
    v102 = swift_allocObject();
    sub_22C37A0D8(v102, xmmword_22C90FB40);
    v103 = v210;
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    v104 = swift_allocObject();
    v203 = xmmword_22C90F800;
    *(v104 + 16) = xmmword_22C90F800;
    sub_22C36A83C();
    v105 = swift_allocObject();
    sub_22C3759A0(v105);
    sub_22C3A5908(&qword_27D9BDAE0, &qword_22C91A6B8);
    v106 = sub_22C375E94();
    sub_22C5379BC(v106);
    v106[3].n128_u64[1] = sub_22C3A5908(&qword_27D9BDAE8, &unk_22C91A6C0);
    v106[4].n128_u64[0] = sub_22C53793C(&qword_27D9BDAF0);
    v106[2].n128_u64[0] = swift_allocObject();
    if (v191)
    {
      sub_22C378A4C(&v217, &v211);
      sub_22C42F0B8(&v225, &v213);
      v215 = &unk_283FB9BD0;
      v216 = &off_283FB9DA0;
      v107 = xmmword_22C91A690;
    }

    else
    {
      bzero(&v211, 0x160uLL);
      v107 = 0uLL;
    }

    sub_22C537A08(v107);
    *(v102 + 56) = &unk_283FB4CB0;
    *(v102 + 64) = &off_2818B2B70;
    v134 = swift_allocObject();
    *(v102 + 32) = v134;
    sub_22C5378F0(v134, "tool_resolve_tool");
    sub_22C37BA74();
    v135 = v210;
    *(v102 + 96) = &unk_283FB4C30;
    *(v102 + 104) = &off_2818B2B58;
    *(v102 + 72) = v135;
    *(v102 + 88) = &unk_283FAEEE8;
    sub_22C537968();
    sub_22C90AF5C();

    *&v210 = v103;
    *(&v210 + 1) = v106;
    sub_22C5379E8();
    v136 = v210;
    sub_22C36A83C();
    v137 = swift_allocObject();
    v138 = v193;
    v139 = v200;
    *(v137 + 16) = v194;
    *(v137 + 24) = v139;
    v140 = v137 | 0x4000000000000000;
    v141 = v190;
    *(v102 + 136) = v138;
    *(v102 + 144) = v141;
    sub_22C380498();
    v142 = swift_allocObject();
    *(v102 + 112) = v142;
    *(v142 + 16) = v136;
    *(v142 + 32) = v140;
    *(v142 + 40) = MEMORY[0x277D84F90];
    *&v210 = v103;
    *(&v210 + 1) = v106;
    sub_22C36C730(&v206, &v211);
    v213 = v195;
    v214 = v102;
    *(v94 + 56) = sub_22C374478();
    sub_22C36AB40();
    *(v94 + 64) = sub_22C3D32C8(v143, &qword_27D9BDAF8, &qword_22C91AB10);
    v144 = swift_allocObject();
    sub_22C5379C8(v144);
    sub_22C3871D0();
    sub_22C5374B4(&v210);
    *(v94 + 96) = sub_22C374478();
    sub_22C37349C();
    *(v94 + 104) = sub_22C3D32C8(v145, v146, &unk_22C91A6D0);
    sub_22C3A5908(&qword_27D9BAE18, &unk_22C90D6C0);
    v147 = sub_22C375E94();
    sub_22C5379BC(v147);
    v148 = v197;
    *(v149 + 32) = v196;
    *(v149 + 40) = v148;
    v150 = v198;
    *(v149 + 48) = v199;
    *(v149 + 56) = v150;
    *(v149 + 64) = 0;
    *(v94 + 72) = v149;
    v151 = v192;
    if (v192)
    {
      v152 = sub_22C3A5908(&qword_27D9BDB18, &qword_22C91A6E0);
      sub_22C36AB40();
      v154 = sub_22C3D32C8(v153, &qword_27D9BDB18, &qword_22C91A6E0);
      sub_22C3816AC();
      v155 = swift_allocObject();
      *(v155 + 16) = 83;
      *(v155 + 24) = 0xE100000000000000;
      *(v155 + 32) = MEMORY[0x277D84FA0];
      *(v155 + 40) = 0;
      *(&v206 + 1) = &unk_22C91A6F0;
      v207 = v155;
    }

    else
    {
      v154 = &off_2818B2AB0;
      v152 = &type metadata for PromptGrammarCoalescer;
    }

    v208 = v152;
    v209 = v154;
    *&v206 = v94;
    sub_22C3DF2E8(&v225);
    sub_22C36FF94(&v217);
    sub_22C36C730(&v206, &v210);
    v156 = v211;
    v157 = v201;
    *(v201 + 1) = v210;
    *(v157 + 2) = v156;
    *(v157 + 6) = v212;
    sub_22C464B30(&v228, &v210);
    v225 = qword_27D9BC898;
    v226 = unk_27D9BC8A0;
    v227 = qword_27D9BC8A8;
    v158 = qword_27D9BA648;

    if (v158 != -1)
    {
      sub_22C3830B8();
    }

    v217 = xmmword_27D9BC880;
    v218 = qword_27D9BC890;
    v206 = xmmword_27D9BC8B0;
    v207 = qword_27D9BC8C0;
    v159 = v202;
    v202[3] = &type metadata for StandalonePromptGrammarGenerator;
    v159[4] = &off_283FB52F8;
    v160 = swift_allocObject();
    *v159 = v160;
    v160[10] = &unk_283FBA150;
    v160[11] = &off_283FBA278;
    sub_22C36BE74();
    v161 = swift_allocObject();
    v160[7] = v161;

    sub_22C535E6C(&v225, &v217, &v210, &v206, v151, v161 + 16);
    sub_22C4CBAA8(v196, v197, v199);
    sub_22C36C730(&v221, (v160 + 2));
    return sub_22C537404(&v228);
  }

  else
  {
    sub_22C903F7C();
    v42 = sub_22C9063CC();
    sub_22C90AACC();
    v43 = sub_22C370214();
    if (os_log_type_enabled(v43, v44))
    {
      sub_22C3720F4();
      v45 = swift_slowAlloc();
      sub_22C53799C(v45);
      sub_22C37F09C(&dword_22C366000, v46, v47, "Constrained decoding support is disabled.");
      v48 = sub_22C36D66C();
      MEMORY[0x2318B9880](v48);
    }

    result = (*(v203 + 8))(v12, v204);
    v49 = v202;
    v202[3] = &type metadata for StubGrammarGenerator;
    v49[4] = &off_283FB5308;
  }

  return result;
}

uint64_t sub_22C535E6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a2[1];
  v28 = *a2;
  v29 = a2[2];
  v10 = *a4;
  v11 = a4[1];
  v26 = a1[2];
  v27 = a4[2];
  sub_22C3A5908(&qword_27D9BDAC0, &unk_22C91AB00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22C90FB40;

  *(v12 + 56) = sub_22C3A5908(&qword_27D9BDB28, &qword_22C91A6F8);
  *(v12 + 64) = sub_22C3D32C8(&qword_27D9BDB30, &qword_27D9BDB28, &qword_22C91A6F8);
  v13 = swift_allocObject();
  *(v12 + 32) = v13;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v7;
  v13[5] = v8;
  v14 = a3;
  v15 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84FA0];
  v13[6] = v26;
  v13[7] = v15;
  v13[8] = v16;
  v13[9] = &unk_22C91AB20;
  v13[10] = 0;

  *(v12 + 96) = sub_22C3A5908(&qword_27D9BDB38, &unk_22C91A700);
  *(v12 + 104) = sub_22C3D32C8(&qword_27D9BDB40, &qword_27D9BDB38, &unk_22C91A700);
  v17 = swift_allocObject();
  *(v12 + 72) = v17;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v10;
  v17[5] = v11;
  v17[6] = v27;
  v17[7] = v15;
  v17[8] = &unk_22C91AB30;
  v17[9] = 0;
  sub_22C464B30(v14, &__src[2]);
  sub_22C36A83C();
  v18 = swift_allocObject();
  strcpy((v18 + 16), "quoted_string");
  *(v18 + 30) = -4864;
  __src[0] = v28;
  __src[1] = v9;
  __src[7] = v18 | 0x4000000000000000;
  __src[8] = v28;
  __src[9] = v9;
  __src[10] = v29;
  __src[11] = v15;

  memcpy(__dst, __src, sizeof(__dst));
  v33 = &unk_22C91AB38;
  v34 = 0;
  *(v12 + 136) = sub_22C3A5908(&qword_27D9BDB48, &unk_22C91AB40);
  *(v12 + 144) = sub_22C3D32C8(&qword_27D9BDB50, &qword_27D9BDB48, &unk_22C91AB40);
  v19 = swift_allocObject();
  *(v12 + 112) = v19;
  sub_22C537638(__dst, v19 + 16);
  *(v19 + 128) = &unk_22C913A80;
  *(v19 + 136) = 0;
  sub_22C5376A8(__dst);
  if (a5)
  {
    v20 = v16;
    v21 = sub_22C3A5908(&qword_27D9BDB18, &qword_22C91A6E0);
    sub_22C36AB40();
    v23 = sub_22C3D32C8(v22, &qword_27D9BDB18, &qword_22C91A6E0);
    sub_22C3816AC();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0xE000000000000000;
    *(v24 + 32) = v20;
    *(v24 + 40) = 1;
    *(&__dst[0] + 1) = &unk_22C91AB50;
    *&__dst[1] = v24;
  }

  else
  {
    v23 = &off_2818B2AB0;
    v21 = &type metadata for PromptGrammarCoalescer;
  }

  *(&__dst[1] + 1) = v21;
  *&__dst[2] = v23;
  *&__dst[0] = v12;
  sub_22C537404(v14);
  return sub_22C36C730(__dst, a6);
}

uint64_t sub_22C5361F4()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22C9063DC();
  v1[6] = v4;
  sub_22C3699B8(v4);
  v1[7] = v5;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_22C90634C();
  v1[9] = v8;
  sub_22C3699B8(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_22C36D0D4();
  v1[12] = swift_task_alloc();
  v12 = sub_22C90636C();
  v1[13] = v12;
  sub_22C3699B8(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = sub_22C36D0D4();
  v1[16] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C536358()
{
  sub_22C374458();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v3 = sub_22C37B2C4();
  v4(v3);
  sub_22C90635C();
  v5 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v6 = *(v0 + 96);
    sub_22C3720F4();
    v7 = swift_slowAlloc();
    sub_22C53799C(v7);
    v8 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v9, v10, v8, "StaticPromptGrammarGenerator.generateGrammar", "");
    v11 = sub_22C36D66C();
    MEMORY[0x2318B9880](v11);
  }

  sub_22C537978();
  v12 = sub_22C375988();
  v13(v12);
  v14 = sub_22C9063AC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_22C36D704();
  v18 = sub_22C5379A8(v17);
  v19(v18);
  v28(v5, v1);
  v20 = v2[4];
  sub_22C374168(v2, v2[3]);
  sub_22C37012C();
  v29 = v21 + *v21;
  v23 = *(v22 + 4);
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  *v24 = v0;
  v25 = sub_22C382704(v24);

  return v26(v25);
}

uint64_t sub_22C53654C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 144);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C53664C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v12 = v11[2];
  if (v12)
  {
    sub_22C3722AC(v12);
    sub_22C536FCC(v10, "StaticPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  else
  {
    v13 = v11[8];
    sub_22C903F7C();
    v14 = sub_22C9063CC();
    sub_22C90AADC();
    v15 = sub_22C370214();
    if (os_log_type_enabled(v15, v16))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C36BB14(&dword_22C366000, v17, v18, "Received nil static grammar from generator.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v20 = v11[7];
    v19 = v11[8];
    v21 = v11[6];

    (*(v20 + 8))(v19, v21);
    sub_22C5373B0();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    sub_22C36BE80();
    sub_22C536FCC(v19, "StaticPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  sub_22C36EC14();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_22C5367EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v12 = *(v11 + 152);
  sub_22C36BE80();
  sub_22C536FCC(v10, "StaticPromptGrammarGenerator.generateGrammar");

  sub_22C369A24();
  sub_22C36EC14();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_22C53688C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C5361F4();
}

uint64_t sub_22C536934()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22C9063DC();
  v1[6] = v4;
  sub_22C3699B8(v4);
  v1[7] = v5;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_22C90634C();
  v1[9] = v8;
  sub_22C3699B8(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_22C36D0D4();
  v1[12] = swift_task_alloc();
  v12 = sub_22C90636C();
  v1[13] = v12;
  sub_22C3699B8(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = sub_22C36D0D4();
  v1[16] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C536A98()
{
  sub_22C374458();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v3 = sub_22C37B2C4();
  v4(v3);
  sub_22C90635C();
  v5 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v6 = *(v0 + 96);
    sub_22C3720F4();
    v7 = swift_slowAlloc();
    sub_22C53799C(v7);
    v8 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v9, v10, v8, "HybridPromptGrammarGenerator.generateGrammar", "");
    v11 = sub_22C36D66C();
    MEMORY[0x2318B9880](v11);
  }

  sub_22C537978();
  v12 = sub_22C375988();
  v13(v12);
  v14 = sub_22C9063AC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_22C36D704();
  v18 = sub_22C5379A8(v17);
  v19(v18);
  v28(v5, v1);
  v20 = v2[4];
  sub_22C374168(v2, v2[3]);
  sub_22C37012C();
  v29 = v21 + *v21;
  v23 = *(v22 + 4);
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  *v24 = v0;
  v25 = sub_22C382704(v24);

  return v26(v25);
}

uint64_t sub_22C536C8C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 144);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C536D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v12 = v11[2];
  if (v12)
  {
    sub_22C3722AC(v12);
    sub_22C536FCC(v10, "HybridPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  else
  {
    v13 = v11[8];
    sub_22C903F7C();
    v14 = sub_22C9063CC();
    sub_22C90AADC();
    v15 = sub_22C370214();
    if (os_log_type_enabled(v15, v16))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C36BB14(&dword_22C366000, v17, v18, "Received an empty hybrid grammar from generator.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v20 = v11[7];
    v19 = v11[8];
    v21 = v11[6];

    (*(v20 + 8))(v19, v21);
    sub_22C5373B0();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    sub_22C36BE80();
    sub_22C536FCC(v19, "HybridPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  sub_22C36EC14();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_22C536F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v12 = *(v11 + 152);
  sub_22C36BE80();
  sub_22C536FCC(v10, "HybridPromptGrammarGenerator.generateGrammar");

  sub_22C369A24();
  sub_22C36EC14();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_22C536FCC(uint64_t a1, const char *a2)
{
  v2 = sub_22C90637C();
  v3 = sub_22C369824(v2);
  v33 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v9 = v8 - v7;
  v35 = sub_22C90634C();
  v10 = sub_22C369824(v35);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C90636C();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v26 = v25 - v24;
  sub_22C90364C();
  v27 = sub_22C90635C();
  sub_22C90638C();
  v32 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    if ((*(v33 + 88))(v9, v2) == *MEMORY[0x277D85B00])
    {
      v28 = "[Error] Interval already ended";
    }

    else
    {
      (*(v33 + 8))(v9, v2);
      v28 = "";
    }

    sub_22C3720F4();
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v27, v32, v30, a2, v28, v29, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v12 + 8))(v17, v35);
  return (*(v21 + 8))(v26, v18);
}

uint64_t sub_22C537274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C536934();
}

uint64_t sub_22C53731C(uint64_t a1)
{
  v2 = sub_22C537898();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C537358(uint64_t a1)
{
  v2 = sub_22C537898();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C5373B0()
{
  result = qword_27D9BDAB8;
  if (!qword_27D9BDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDAB8);
  }

  return result;
}

uint64_t sub_22C537508()
{
  sub_22C388730();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C3718F8(v1);

  return sub_22C46109C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C5375A0()
{
  sub_22C388730();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C3718F8(v1);

  return sub_22C46109C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C537638(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BDB58, qword_22C91A710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5376A8(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BDB58, qword_22C91A710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C537710()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_22C3816AC();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

_BYTE *sub_22C537764(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C537844()
{
  result = qword_27D9BDB60;
  if (!qword_27D9BDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDB60);
  }

  return result;
}

unint64_t sub_22C537898()
{
  result = qword_27D9BDB68;
  if (!qword_27D9BDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDB68);
  }

  return result;
}

uint64_t sub_22C5378F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[2] = 0xD000000000000011;
  a1[3] = (a2 - 32) | 0x8000000000000000;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v3;
  a1[7] = v6;
  v2[26] = 0x6E6E616C705F6569;
  v2[27] = 0xEA00000000007265;
  v8 = v2[19];
}

uint64_t sub_22C53793C(unint64_t *a1)
{

  return sub_22C3D32C8(a1, v2, v1);
}

void sub_22C537978()
{
  v3 = v1[16];
  v5 = v1[12];
  v4 = v1[13];
  v7 = v1[10];
  v6 = v1[11];
  v8 = v1[9];
  v9 = v1[5];
}

uint64_t sub_22C5379A8(uint64_t a1)
{
  *(v1 + 136) = a1;
  v4 = *(v3 + 8);
  return v2;
}

__n128 sub_22C5379BC(__n128 *a1)
{
  result = v1[8];
  a1[1] = result;
  return result;
}

uint64_t sub_22C5379C8(uint64_t a1)
{
  *(v2 + 32) = a1;

  return sub_22C537458(v1 + 208, a1 + 16);
}

void sub_22C5379E8()
{

  JUMPOUT(0x2318B7850);
}

void *sub_22C537A08(__n128 a1)
{
  v1[13] = a1;

  return memcpy((v2 + 16), &v1[13], 0x170uLL);
}

uint64_t ResolveToolGrammarGenerator_v4_0.makeGrammar(from:identifier:renderingState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 16))
  {
    v28 = a2;
    v29 = a3;

    MEMORY[0x2318B7850](0x64695F6C6F6F745FLL, 0xE800000000000000);
    v7 = v28;
    v8 = v29;
    v24 = v28;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v25 = v9 | 0x8000000000000000;
    v28 = a2;
    v29 = a3;

    MEMORY[0x2318B7850](0x74656D617261705FLL, 0xEA00000000007265);
    sub_22C537D24(a2, a3, v7, v8, &v28);

    v10 = v28;
    v11 = v29;
    v12 = v31;
    v23 = v30;
    v13 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_22C90FB40;
    v15 = sub_22C36AB58();
    strcpy((v15 + 16), "resolve_tool(");
    *(v15 + 30) = -4864;
    *(v14 + 32) = v15;
    v16 = sub_22C36AB58();
    *(v16 + 16) = v10;
    *(v16 + 24) = v11;
    *(v14 + 40) = v16 | 0x4000000000000000;
    v17 = sub_22C36AB58();
    *(v17 + 16) = 41;
    *(v17 + 24) = 0xE100000000000000;
    *(v14 + 48) = v17;
    *(v13 + 16) = v14;
    sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22C90F800;
    *(v18 + 32) = v10;
    *(v18 + 40) = v11;
    *(v18 + 48) = v23;
    v32 = v18;

    swift_bridgeObjectRetain_n();
    sub_22C3CC3D8(v12);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    *(inited + 32) = v24;
    *(inited + 40) = v8;
    *(inited + 48) = v25;
    v28 = inited;

    v20 = MEMORY[0x277D84F90];

    sub_22C3CC3D8(v20);
    sub_22C3CC3D8(v28);

    v22 = v32;
    *a4 = a2;
    a4[1] = a3;
    a4[2] = v13 | 0xC000000000000000;
    a4[3] = v22;
  }

  else
  {
    sub_22C537EB0();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22C537D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22C90F870;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C90FB40;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v13 + 32) = v14 | 0x4000000000000000;
  v15 = swift_allocObject();
  *(v15 + 16) = 8236;
  *(v15 + 24) = 0xE200000000000000;
  *(v13 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v13 + 48) = v16 | 0x4000000000000000;
  *(v12 + 16) = v13;
  *(v11 + 32) = v12 | 0xC000000000000000;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v11 + 40) = v17 | 0x4000000000000000;
  *(v10 + 16) = v11;
  *a5 = a1;
  a5[1] = a2;
  v18 = MEMORY[0x277D84F90];
  a5[2] = v10 | 0x8000000000000000;
  a5[3] = v18;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

unint64_t sub_22C537EB0()
{
  result = qword_27D9BDB70;
  if (!qword_27D9BDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDB70);
  }

  return result;
}

uint64_t sub_22C537F04(uint64_t a1)
{
  v2 = sub_22C5380CC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C537F40(uint64_t a1)
{
  v2 = sub_22C5380CC();

  return MEMORY[0x28211F4A8](a1, v2);
}

_BYTE *sub_22C537FC4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C538078()
{
  result = qword_27D9BDB78;
  if (!qword_27D9BDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDB78);
  }

  return result;
}

unint64_t sub_22C5380CC()
{
  result = qword_27D9BDB80;
  if (!qword_27D9BDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDB80);
  }

  return result;
}

uint64_t type metadata accessor for SpanEventPromptGenerator_v4_0()
{
  result = qword_281430D88;
  if (!qword_281430D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C538198(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 129) = a3;
  *(v5 + 128) = a2;
  *(v5 + 72) = a1;
  v6 = sub_22C9063DC();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C538270, 0, 0);
}

void sub_22C538270()
{
  v1 = v0[4].i64[1];
  if (!*(v1 + 16))
  {
    v19 = v0[7].i64[0];
    sub_22C903F7C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0;
    v26 = &v0[6].i8[8];
    v25 = v0[6].i64[1];
    v24 = *(v26 + 1);
    v27 = v23[6].i64[0];
    if (v22)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "No span entities to include in the prompt";
LABEL_18:
      _os_log_impl(&dword_22C366000, v20, v21, v29, v28, 2u);
      MEMORY[0x2318B9880](v28, -1, -1);
    }

LABEL_19:

    (*(v25 + 8))(v24, v27);
    v33 = MEMORY[0x277D84F90];
    v34 = v61;
    goto LABEL_31;
  }

  if (v0[8].i8[0] && (v0[8].i8[0] == 2 || v0[8].i8[1] != 1))
  {
    v30 = v0[7].i64[1];
    sub_22C903F7C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();
    v31 = os_log_type_enabled(v20, v21);
    v24 = v0[7].i64[1];
    v32 = v0;
    v25 = v0[6].i64[1];
    v27 = v32[6].i64[0];
    if (v31)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Omitting stale span entities from old turn";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v2 = swift_task_alloc();
  v2[1] = vextq_s8(v0[5], v0[5], 8uLL);

  v3 = sub_22C47B550(sub_22C539458, v2, v1);

  sub_22C539478(v3);
  v5 = v4;
  v7 = v6;
  v8 = *(v6 + 16);
  v59 = v4;
  if (v8)
  {
    v64 = MEMORY[0x277D84F90];

    sub_22C3B6A74(0, v8, 0);
    v9 = *(v64 + 16);
    v10 = 32 * v9 + 56;
    v11 = 32;
    do
    {
      v12 = *(v7 + v11);
      if (*(v12 + 16) >= 0x14uLL)
      {
        v13 = 20;
      }

      else
      {
        v13 = *(v12 + 16);
      }

      v14 = *(v64 + 24);
      v15 = v9 + 1;

      if (v9 >= v14 >> 1)
      {
        sub_22C3B6A74(v14 > 1, v15, 1);
      }

      v16 = *(sub_22C90822C() - 8);
      v17 = v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      *(v64 + 16) = v15;
      v18 = (v64 + v10);
      *(v18 - 3) = v12;
      *(v18 - 2) = v17;
      *(v18 - 1) = 0;
      *v18 = (2 * v13) | 1;
      v10 += 32;
      v11 += 8;
      ++v9;
      --v8;
    }

    while (v8);
    v35 = v64;

    v5 = v59;

    v0 = v61;
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  v36 = v0[5].i64[1];
  v37 = type metadata accessor for SpanEventPromptGenerator_v4_0();
  sub_22C378A4C(v36 + *(v37 + 20) + 232, v0[1].i64);
  v65 = MEMORY[0x277D84F90];
  sub_22C3B63D4();
  v38 = 0;
  v39 = 0;
  v40 = (v35 + 56);
  v60 = v35;
  while (v39 != 20 && v39 < *(v35 + 16))
  {
    if (v39 >= *(v5 + 16))
    {
      __break(1u);
      return;
    }

    v62 = v61[10];
    v63 = v39;
    v41 = *(v5 + v38 + 32);
    v42 = *(v5 + v38 + 40);
    v43 = *(v40 - 3);
    v44 = *(v40 - 2);
    v45 = *(v40 - 1);
    v46 = *v40;

    swift_unknownObjectRetain();
    sub_22C538A78(v41, v42, v43, v44, v45, v46, (v61 + 2), v62);
    v48 = v47;

    swift_unknownObjectRelease();
    v49 = *(v65 + 16);
    if (v49 >= *(v65 + 24) >> 1)
    {
      sub_22C3B63D4();
    }

    *(v65 + 16) = v49 + 1;
    *(v65 + 8 * v49 + 32) = v48;
    v40 += 4;
    v38 += 16;
    v39 = v63 + 1;
    v5 = v59;
    v35 = v60;
  }

  if (*(v65 + 16))
  {
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_22C90F870;
    v50 = swift_allocObject();
    v34 = v61;
    v61[7] = 0x6E6170735F746567;
    v61[8] = 0xEB00000000292873;
    *(v50 + 16) = sub_22C90A49C();
    *(v50 + 24) = v51;
    *(v33 + 32) = 1;
    *(v33 + 40) = v50 | 2;
    v52 = sub_22C3DB9B0(v65);

    v53 = sub_22C529D00(10, 0xE100000000000000, v52);

    v54 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v55 = swift_allocObject();
    *(v55 + 16) = v53;
    *(v54 + 16) = v55;
    *(v33 + 48) = 5;
    *(v33 + 56) = v54 | 0x6000000000000002;

    sub_22C36FF94(v61 + 2);
  }

  else
  {

    v34 = v61;
    sub_22C36FF94(v61 + 2);
    v33 = MEMORY[0x277D84F90];
  }

LABEL_31:
  v57 = v34[14];
  v56 = v34[15];

  v58 = v34[1];

  v58(v33);
}

BOOL sub_22C53889C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C9039FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  sub_22C90821C();
  v13 = 0;
  if (*(a2 + *(type metadata accessor for SpanEventPromptGenerator_v4_0() + 24)) == 1)
  {
    v13 = *(a3 + 24);
  }

  (*(v6 + 16))(v10, v12, v5);
  if (!v13)
  {
    v16 = *(v6 + 8);
    v16(v10, v5);
    goto LABEL_7;
  }

  v15 = sub_22C530BC8(v14);

  v16 = *(v6 + 8);
  v16(v10, v5);
  if ((v15 & 1) == 0)
  {
LABEL_7:
    v18 = sub_22C53053C();

    v17 = !v18;
    goto LABEL_8;
  }

  v17 = 0;
LABEL_8:
  v16(v12, v5);
  return v17;
}

void sub_22C538A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a7;
  v60 = a8;
  v67 = a4;
  v61 = a1;
  v66 = sub_22C90822C();
  v11 = *(v66 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v66);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22C9039FC();
  v15 = *(v65 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v65);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a6 >> 1;
  v21 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v58 = a2;
  if (v21)
  {
    v68 = MEMORY[0x277D84F90];
    sub_22C3B73FC(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
      __break(1u);
      return;
    }

    v22 = v68;
    v63 = v11 + 8;
    v64 = v11 + 16;
    v62 = v15 + 32;
    while (a5 < v20)
    {
      v23 = v66;
      (*(v11 + 16))(v14, v67 + *(v11 + 72) * a5, v66);
      sub_22C90821C();
      (*(v11 + 8))(v14, v23);
      v68 = v22;
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22C3B73FC(v24 > 1, v25 + 1, 1);
        v22 = v68;
      }

      *(v22 + 16) = v25 + 1;
      v17 = (*(v15 + 32))(v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v25, v19, v65);
      if (v20 == ++a5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  MEMORY[0x28223BE20](v17);
  v26 = v60;
  *(&v58 - 2) = v59;
  *(&v58 - 1) = v26;
  v27 = sub_22C793528(sub_22C539AA8);

  v28 = sub_22C3DB9B0(v27);

  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v29 + 32) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22C9173F0;
  v32 = swift_allocObject();
  *(v32 + 16) = v29 | 0x8000000000000000;
  *(v31 + 32) = v32;
  v19 = swift_allocObject();
  v33 = swift_allocObject();
  *(v33 + 16) = v31 | 0x8000000000000000;
  *(v19 + 16) = v33;
  v20 = swift_allocObject();
  *(v20 + 16) = 8227;
  *(v20 + 24) = 0xE200000000000000;
  sub_22C591324();
  v35 = v34;
  a5 = *(v34 + 16);
  v15 = a5 + 1;
  if (a5 >= *(v34 + 24) >> 1)
  {
LABEL_21:
    sub_22C591324();
    v35 = v53;
  }

  *(v35 + 16) = v15;
  *(v35 + 8 * a5 + 32) = v20;
  v36 = sub_22C90A2AC();
  v38 = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  *(v39 + 24) = v38;
  v41 = *(v35 + 16);
  v40 = *(v35 + 24);

  if (v41 >= v40 >> 1)
  {
    sub_22C591324();
    v35 = v54;
  }

  *(v35 + 16) = v41 + 1;
  *(v35 + 8 * v41 + 32) = v39;

  v42 = swift_allocObject();
  *(v42 + 16) = 8250;
  *(v42 + 24) = 0xE200000000000000;
  v43 = *(v35 + 16);
  v44 = *(v35 + 24) >> 1;
  v45 = v43 + 1;
  if (v44 <= v43)
  {
    sub_22C591324();
    v35 = v55;
    v44 = *(v55 + 24) >> 1;
  }

  *(v35 + 16) = v45;
  *(v35 + 8 * v43 + 32) = v42;
  v46 = v43 + 2;
  if (v44 < (v43 + 2))
  {
    sub_22C591324();
    v35 = v56;
  }

  *(v35 + 16) = v46;
  *(v35 + 8 * v45 + 32) = v19 | 0x6000000000000000;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0xE000000000000000;
  v48 = *(v35 + 24);
  v49 = v43 + 3;

  if (v49 > (v48 >> 1))
  {
    sub_22C591324();
    v35 = v57;
  }

  *(v35 + 16) = v49;
  *(v35 + 8 * v46 + 32) = v47;
  v50 = sub_22C3DB9B0(v35);

  v51 = swift_allocObject();
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  *(v51 + 16) = v52;
}

uint64_t sub_22C539074@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11[-v8];
  sub_22C9039CC();
  v12 = a1;
  v13 = a2;
  *a3 = sub_22C79EB0C(sub_22C539AC4);
  return sub_22C3770B0(v9, &qword_27D9BB908, &qword_22C910960);
}

void sub_22C539164(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v4 = sub_22C90963C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C90952C();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  sub_22C374168(a1, v13);
  sub_22C90935C();
  (*(v5 + 104))(v8, *MEMORY[0x277D72E08], v4);
  (*(v14 + 24))(v24, v12, v8, *(v22 + 32), v13, v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v21);
  if (v25)
  {
    v15 = 0xF000000000000007;
  }

  else
  {
    v16 = v24[3];
    v17 = v24[4];
    v19 = v24[1];
    v18 = v24[2];
    v15 = v24[0];

    sub_22C456CE4(v15, v19, v18, v16, v17, 0);
  }

  *v23 = v15;
}

uint64_t sub_22C53939C(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C530210;

  return sub_22C538198(a1, a2, a3, a4);
}

void sub_22C539478(uint64_t a1)
{
  v68 = sub_22C9039FC();
  v2 = *(v68 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BDA90, &unk_22C91A460);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v59 - v7;
  v75 = sub_22C90822C();
  v9 = *(*(v75 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v75);
  v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v70 = &v59 - v13;
  MEMORY[0x28223BE20](v12);
  v74 = &v59 - v14;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v76 = 0;
  v77 = MEMORY[0x277D84F90];
  v73 = v17 + 16;
  v69 = *(a1 + 16);
  v65 = (v2 + 8);
  v66 = v17;
  v61 = (v17 + 8);
  v62 = (v17 + 32);
  v63 = v8;
  v64 = a1;
  while (1)
  {
    if (v15 == v69)
    {

      return;
    }

    if (v15 >= *(a1 + 16))
    {
      break;
    }

    v18 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v71 = *(v66 + 72);
    v72 = v18;
    v19 = a1 + v18 + v71 * v15;
    v20 = *(v66 + 16);
    v20(v74, v19, v75);
    v21 = v67;
    sub_22C90821C();
    v22 = sub_22C9039DC();
    (*v65)(v21, v68);
    sub_22C58B384(v22, v8);

    v23 = sub_22C90361C();
    if (sub_22C370B74(v8, 1, v23) == 1)
    {
      sub_22C3770B0(v8, &qword_27D9BDA90, &unk_22C91A460);
      v24 = 0;
      v25 = 0xE000000000000000;
    }

    else
    {
      v24 = sub_22C9035EC();
      v26 = v8;
      v25 = v27;
      (*(*(v23 - 8) + 8))(v26, v23);
    }

    v28 = v76;
    v29 = v77;
    v30 = *(v77 + 16);
    if (!v76)
    {
      v32 = 0;
      v42 = (v77 + 40);
      while (v30 != v32)
      {
        v43 = *(v42 - 1) == v24 && *v42 == v25;
        if (v43 || (sub_22C90B4FC() & 1) != 0)
        {
          goto LABEL_9;
        }

        ++v32;
        v42 += 2;
      }

LABEL_26:
      sub_22C7D4160();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = *(v16 + 16);
        sub_22C3B6A94();
        v16 = v78;
      }

      v46 = *(v16 + 16);
      if (v46 >= *(v16 + 24) >> 1)
      {
        sub_22C3B6A94();
        v16 = v78;
      }

      *(v16 + 16) = v46 + 1;
      v47 = v16 + 32;
      *(v16 + 32 + 8 * v46) = MEMORY[0x277D84F90];
      v20(v60, v74, v75);
      v37 = *(v16 + 32 + 8 * v46);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 32 + 8 * v46) = v37;
      if ((v48 & 1) == 0)
      {
        v55 = *(v37 + 16);

        sub_22C59204C();
        v56 = *(v47 + 8 * v46);
        *(v47 + 8 * v46) = v57;

        v37 = *(v47 + 8 * v46);
      }

      a1 = v64;
      v39 = *(v37 + 16);
      v40 = v39 + 1;
      if (v39 >= *(v37 + 24) >> 1)
      {
        sub_22C59204C();
        v37 = v58;
        *(v47 + 8 * v46) = v58;
      }

      v41 = v60;
      goto LABEL_35;
    }

    sub_22C7DA844(v24, v25, v29 + 32, v30, (v28 + 16));
    v32 = v31;
    v34 = v33;

    if (v34)
    {
      goto LABEL_26;
    }

LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C1DC(v16);
      v16 = v35;
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_38;
    }

    if (v32 >= *(v16 + 16))
    {
      goto LABEL_39;
    }

    v36 = v16 + 32;
    v20(v70, v74, v75);
    v37 = *(v16 + 32 + 8 * v32);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + 32 + 8 * v32) = v37;
    if ((v38 & 1) == 0)
    {
      v51 = *(v37 + 16);

      sub_22C59204C();
      v52 = *(v36 + 8 * v32);
      *(v36 + 8 * v32) = v53;

      v37 = *(v36 + 8 * v32);
    }

    a1 = v64;
    v39 = *(v37 + 16);
    v40 = v39 + 1;
    if (v39 >= *(v37 + 24) >> 1)
    {
      sub_22C59204C();
      v37 = v54;
      *(v36 + 8 * v32) = v54;
    }

    v41 = v70;
LABEL_35:
    ++v15;
    *(v37 + 16) = v40;
    v49 = v37 + v72 + v39 * v71;
    v50 = v75;
    (*v62)(v49, v41, v75);

    (*v61)(v74, v50);
    v8 = v63;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_22C539AF4(uint64_t a1)
{
  v2 = sub_22C9070DC();
  v3 = sub_22C369824(v2);
  v68 = v4;
  v69 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v74 = v7;
  v8 = sub_22C9063DC();
  v9 = sub_22C369824(v8);
  v70 = v10;
  v71 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v72 = v13;
  v14 = sub_22C90654C();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v73 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v75 = &v66 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v66 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v66 - v27;
  sub_22C90702C();
  v29 = *(v17 + 88);
  v30 = v29(v28, v14);
  v31 = *MEMORY[0x277D1D9F8];
  v32 = v28;
  v33 = v14;
  v76 = *(v17 + 8);
  v76(v32, v14);
  if (v30 == v31)
  {
    return 2;
  }

  v35 = sub_22C9070CC();
  if (v35 == 2)
  {
    sub_22C90702C();
    v36 = sub_22C441C04();
    v76(v26, v14);
  }

  else
  {
    v36 = v35;
  }

  v34 = (v36 & 1) == 0;
  v67 = a1;
  v37 = sub_22C90704C();
  if (v37 != 2 && (v37 & 1) != 0)
  {
    v66 = v17 + 8;
    v38 = v75;
    sub_22C90702C();
    v39 = v29(v38, v33);
    if (v39 == *MEMORY[0x277D1DAA8])
    {
      v40 = v73;
      (*(v17 + 16))(v73, v38, v33);
      (*(v17 + 96))(v40, v33);
      v41 = sub_22C906F2C();
      v42 = *(v41 - 8);
      v43 = (*(v42 + 88))(v40, v41);
      v44 = v38;
      v45 = v74;
      if (v43 == *MEMORY[0x277D1DEE8])
      {
        (*(v42 + 96))(v40, v41);
        v46 = *(*v40 + 16);

        if (v46 == 1)
        {
          v34 = 2;
        }

        else
        {
          v34 = v34;
        }

        goto LABEL_16;
      }

      (*(v42 + 8))(v40, v41);
      goto LABEL_18;
    }

    v45 = v74;
    if (v39 == v31)
    {
      v34 = 2;
      v44 = v75;
    }

    else
    {
      v62 = v39 == *MEMORY[0x277D1DAA0] || v39 == *MEMORY[0x277D1DA98];
      v44 = v75;
      if (v62)
      {
        goto LABEL_16;
      }

      if (v39 != *MEMORY[0x277D1DA48] && v39 != *MEMORY[0x277D1DAE8])
      {
LABEL_18:
        v48 = v72;
        sub_22C903F7C();
        v49 = v68;
        v50 = v69;
        (*(v68 + 16))(v45, v67, v69);
        v51 = sub_22C9063CC();
        v52 = sub_22C90AADC();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = v45;
          v54 = v49;
          v34 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v78 = v77;
          *v34 = 136315138;
          sub_22C53A180();
          v55 = sub_22C909F4C();
          v56 = v50;
          v57 = v33;
          v59 = v58;
          (*(v54 + 8))(v53, v56);
          v60 = sub_22C36F9F4(v55, v59, &v78);
          v33 = v57;

          *(v34 + 4) = v60;
          _os_log_impl(&dword_22C366000, v51, v52, "Encountered unexpected expression with isExpanded=true. ProgramStatement: %s", v34, 0xCu);
          v61 = v77;
          sub_22C36FF94(v77);
          MEMORY[0x2318B9880](v61, -1, -1);
          MEMORY[0x2318B9880](v34, -1, -1);

          (*(v70 + 8))(v72, v71);
        }

        else
        {

          v64 = *(v49 + 8);
          v34 = v49 + 8;
          v64(v45, v50);
          (*(v70 + 8))(v48, v71);
        }

        sub_22C442014();
        swift_allocError();
        *v65 = xmmword_22C91AA60;
        *(v65 + 16) = 5;
        swift_willThrow();
        v76(v44, v33);
        return v34;
      }

      v34 = 2;
    }

LABEL_16:
    v76(v44, v33);
  }

  return v34;
}

unint64_t sub_22C53A180()
{
  result = qword_27D9BDB88;
  if (!qword_27D9BDB88)
  {
    sub_22C9070DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDB88);
  }

  return result;
}

uint64_t type metadata accessor for StructuredSearchToolGrammarComponent_v5_0()
{
  result = qword_27D9BDB90;
  if (!qword_27D9BDB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C53A24C()
{
  result = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C53A2B8(uint64_t a1)
{
  *(v1 + 80) = a1;
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_22C53A358;

  return sub_22C45D9F0(v1 + 48);
}

uint64_t sub_22C53A358()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_22C53A52C;
  }

  else
  {
    v3 = sub_22C53A46C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22C53A46C()
{
  v1 = v0[6];
  v2 = v0[8];
  v3 = v0[9];
  if (v0[7])
  {
    v8 = v0[6];
    v9 = v0[7];
    v10 = v0[8];
    v11 = v0[9];
    sub_22C474C14(v0 + 2);

    v1 = v0[2];
    v4 = v0[3];
    v2 = v0[4];
    v3 = v0[5];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[10];
  *v5 = v1;
  v5[1] = v4;
  v5[2] = v2;
  v5[3] = v3;
  v6 = v0[1];

  return v6();
}

uint64_t sub_22C53A544(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3B00E8;

  return sub_22C53A2B8(a1);
}

uint64_t sub_22C53A5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22C53A614, 0, 0);
}

uint64_t sub_22C53A614()
{
  sub_22C3743E4();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_22C3A5908(&qword_27D9BAE18, &unk_22C90D6C0);
  sub_22C369F54();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22C90F800;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2 | 0x2000000000000000;
  *(v6 + 56) = v1;
  *(v6 + 64) = 0;
  *v5 = v6;
  sub_22C369A24();
  v9 = v7;

  return v9();
}

uint64_t sub_22C53A6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22C53DEC0, 0, 0);
}

uint64_t sub_22C53A708(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22C53A728, 0, 0);
}

uint64_t sub_22C53A728()
{
  sub_22C3743E4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_22C3A5908(&qword_27D9BAE18, &unk_22C90D6C0);
  sub_22C369F54();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90F800;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v6 | 0x2000000000000000;
  *(v7 + 56) = v5;
  *(v7 + 64) = 0;
  *v2 = v7;
  sub_22C369A24();
  v10 = v8;

  return v10();
}

uint64_t sub_22C53A7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v238 = type metadata accessor for GrammarToolDefinitionBundle(0);
  v9 = sub_22C36985C(v238);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v229 = v12 - v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  v234 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v228 = v17;
  v18 = type metadata accessor for FullPlannerPreferences();
  v19 = sub_22C36985C(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369ABC();
  v242 = v22 - v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  v241 = v25;
  v26 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  sub_22C369ABC();
  v233 = v28 - v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  v240 = v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  v232 = v33;
  sub_22C369930();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  v239 = v35;
  v36 = sub_22C9063DC();
  v37 = sub_22C369824(v36);
  v269 = v38;
  v272 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C369ABC();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  v231 = v45;
  sub_22C369930();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  v230 = v47;
  sub_22C369930();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA64();
  v260 = v49;
  v50 = sub_22C90077C();
  v51 = sub_22C369824(v50);
  v244 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C369838();
  v246 = v56 - v55;
  v254 = *a4;
  v255 = a4[1];
  v259 = a4[2];
  v256 = a4[3];
  v57 = v18[12];
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  v58 = v286;
  v59 = v18[17];
  sub_22C381A70();
  v60 = v286;
  static PromptGrammarGenerationMode.configuration(from:)(&v286);
  v264 = v286;
  v61 = v18[29];
  sub_22C381A70();
  v257 = v286;
  v62 = v18[30];
  sub_22C381A70();
  v251 = v286;
  v63 = v18[31];
  sub_22C901EDC();
  if (v58 == 1)
  {
    v64 = v60;
    if (v60)
    {
      (*(v244 + 16))(v246, a3, v50);
      v65 = sub_22C90136C();
      v66 = *(v65 + 48);
      v67 = *(v65 + 52);
      swift_allocObject();
      result = sub_22C90135C();
      v69 = v260;
      if (v273)
      {
        return result;
      }

      *(&v287 + 1) = v65;
      v288 = &protocol witness table for Tokenizer;
      *&v286 = result;
      *(&v301 + 1) = &type metadata for QuotableStringGrammarConverter;
      v302 = &protocol witness table for QuotableStringGrammarConverter;
      sub_22C36BE74();
      *&v300 = swift_allocObject();
      sub_22C36C730(&v286, v300 + 16);
    }

    else
    {
      v302 = 0;
      v300 = 0u;
      v301 = 0u;
      v69 = v260;
    }

    sub_22C903F7C();
    v75 = sub_22C9063CC();
    v76 = sub_22C90AACC();
    v77 = sub_22C370214();
    if (os_log_type_enabled(v77, v78))
    {
      v261 = v76;
      v79 = swift_slowAlloc();
      *&v286 = swift_slowAlloc();
      *v79 = 136315906;
      v80 = 0x800000022C92E2C0;
      v81 = 0x6553646972627968;
      if (v264 == 1)
      {
        v81 = 0xD000000000000012;
      }

      else
      {
        v80 = 0xEC00000072657672;
      }

      if (v264)
      {
        v82 = v81;
      }

      else
      {
        v82 = 0x696C43796C6C7566;
      }

      if (v264)
      {
        v83 = v80;
      }

      else
      {
        v83 = 0xEB00000000746E65;
      }

      v84 = sub_22C36F9F4(v82, v83, &v286);

      *(v79 + 4) = v84;
      *(v79 + 12) = 2080;
      sub_22C3819C0();
      if (v64)
      {
        v86 = 0xD00000000000001CLL;
      }

      else
      {
        v86 = 0x6972745320796E41;
      }

      if (v64)
      {
        v87 = v85;
      }

      else
      {
        v87 = 0xEA0000000000676ELL;
      }

      v88 = sub_22C36F9F4(v86, v87, &v286);

      *(v79 + 14) = v88;
      *(v79 + 22) = 1024;
      *(v79 + 24) = v251;
      *(v79 + 28) = 1024;
      *(v79 + 30) = v257;
      _os_log_impl(&dword_22C366000, v75, v261, "Echo Grammar Configuration - Mode: %s\n    String Copying: %s\n    Include Global Tools (Standalone Only): %{BOOL}d\n    Minify Grammar: %{BOOL}d", v79, 0x22u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v89 = *(v269 + 8);
    v89(v69, v272);
    if (v264)
    {
      if (v264 == 1)
      {
        sub_22C464B30(&v300, &v286);
        if (qword_27D9BA650 != -1)
        {
          sub_22C38BA8C();
        }

        v297 = qword_27D9BC898;
        v298 = unk_27D9BC8A0;
        v299 = qword_27D9BC8A8;
        v90 = qword_27D9BA648;

        if (v90 != -1)
        {
          sub_22C3830B8();
        }

        v293 = xmmword_27D9BC880;
        v294 = qword_27D9BC890;
        v91 = qword_27D9BA658;

        if (v91 != -1)
        {
          sub_22C369F1C();
        }

        v282 = xmmword_27D9BC8B0;
        v283 = qword_27D9BC8C0;
        a7[3] = &type metadata for PromptGrammarGenerator_v5_0.HybridPromptGrammarGenerator;
        a7[4] = &off_283FBA800;
        sub_22C36BE74();
        v92 = swift_allocObject();
        *a7 = v92;

        sub_22C53C4CC(&v297, &v293, &v286, &v282, v257, v92 + 16);
        return sub_22C537404(&v300);
      }

      if ((~v259 & 0x3000000000000007) != 0)
      {
        sub_22C42F0B8(a1, &v297);
        v296 = &off_283FB5340;
        v295 = &type metadata for ToolboxGrammarToolProvider;
        *&v293 = a2;
        sub_22C3E8FB4(a5, v240, &qword_27D9BB738, &unk_22C9185A0);
        sub_22C3734B8();
        sub_22C53DAA4(a6, v242, v118);
        v119 = sub_22C38A974();
        sub_22C4C7C38(v119, v120, v121);
        v122 = sub_22C38A974();
        sub_22C4C7C38(v122, v123, v124);
        v125 = qword_27D9BA650;

        if (v125 != -1)
        {
          sub_22C38BA8C();
        }

        v263 = qword_27D9BC898;
        v266 = unk_27D9BC8A0;
        if (qword_27D9BA658 != -1)
        {
          sub_22C369F1C();
        }

        v126 = xmmword_27D9BC8B0;
        a7[3] = &type metadata for PromptGrammarGenerator_v5_0.StaticPromptGrammarGenerator;
        a7[4] = &off_283FBA810;
        sub_22C36BE74();
        v271 = swift_allocObject();
        *a7 = v271;
        v127 = v242 + v18[31];
        sub_22C901EDC();
        sub_22C53DF0C();
        sub_22C901EDC();
        v268 = v286;
        *&v286 = 0x6E6E616C705F6569;
        *(&v286 + 1) = 0xEA00000000007265;
        MEMORY[0x2318B7850](0x736C6F6F745FLL, 0xE600000000000000);
        v128 = v286;
        sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
        v129 = swift_allocObject();
        *(v129 + 16) = xmmword_22C90F800;
        sub_22C36A83C();
        v130 = swift_allocObject();
        *(v130 + 16) = v126;
        v248 = v129;
        *(v129 + 32) = v130 | 0x4000000000000000;
        sub_22C3A5908(&qword_27D9BDAE0, &qword_22C91A6B8);
        sub_22C369F54();
        v131 = swift_allocObject();
        sub_22C53DEF4(v131);
        v131[3].n128_u64[1] = sub_22C3A5908(&qword_27D9BDAE8, &unk_22C91A6C0);
        sub_22C53DED8();
        v131[4].n128_u64[0] = sub_22C3D32C8(v132, v133, &unk_22C91A6C0);
        v134 = swift_allocObject();
        v131[2].n128_u64[0] = v134;
        if (v251)
        {
          sub_22C378A4C(&v293, &v287);
          sub_22C42F0B8(&v297, &v289);
          v291 = &unk_283FB9BD0;
          v292 = &off_283FB9DA0;
          v135 = xmmword_22C91A690;
        }

        else
        {
          bzero(&v287, 0x160uLL);
          v135 = 0uLL;
        }

        sub_22C53DF20(v135);

        sub_22C5EA85C();
        *&v274 = v189;
        if (v244)
        {
          v134 = &v274;
          sub_22C6A57DC(&v286, 2u);
        }

        sub_22C3E8FB4(v240, v233, &qword_27D9BB738, &unk_22C9185A0);
        if (sub_22C370B74(v233, 1, v238) == 1)
        {
          sub_22C36DD28(v233, &qword_27D9BB738, &unk_22C9185A0);
          sub_22C36A83C();
          v190 = swift_allocObject();
          *(v190 + 16) = 0xD000000000000016;
          *(v190 + 24) = 0x800000022C930A30;
          v191 = v190 | 0x4000000000000000;
          *(&v287 + 1) = sub_22C3A5908(&qword_27D9BDAC8, &qword_22C91A6A0);
          sub_22C369F3C();
          v288 = sub_22C3D32C8(v192, &qword_27D9BDAC8, &qword_22C91A6A0);
          sub_22C380498();
          v193 = swift_allocObject();
          *&v286 = v193;
          v193[2] = 0xD00000000000001FLL;
          v193[3] = 0x800000022C932020;
          v193[4] = v191;
          v193[5] = MEMORY[0x277D84F90];
        }

        else
        {
          sub_22C3819C0();
          v253 = v194;
          sub_22C53DA40(v233, v229);
          sub_22C36D870();
          sub_22C53DAA4(v229, v234, v195);
          *(&v287 + 1) = type metadata accessor for StructuredSearchToolGrammarComponent_v5_0();
          v288 = &off_2818B46A0;
          v196 = sub_22C36D548(&v286);
          v197 = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0);
          v198 = v197[12];
          sub_22C3734B8();
          sub_22C53DAA4(v242, v196 + v199, v200);
          sub_22C53DAA4(v234, v196 + v197[5], v134);
          sub_22C53DF00(v196 + v197[6]);
          v201 = v196 + v197[7];
          *(v201 + 3) = &unk_283FB9CD0;
          *(v201 + 4) = &off_283FB9E00;
          v202 = v196 + v197[8];
          *(v202 + 3) = &unk_283FB9CF0;
          *(v202 + 4) = &off_283FB9E10;
          sub_22C53DF00(v196 + v197[9]);
          v203 = v196 + v197[10];
          *(v203 + 3) = &unk_283FB9BF0;
          *(v203 + 4) = &off_283FB9DB0;
          v204 = v196 + v197[11];
          *(v204 + 3) = &unk_283FB9D10;
          *(v204 + 4) = &off_283FB9E20;
          sub_22C53DB04(v234, v134);
          *v196 = 0xD00000000000001DLL;
          v196[1] = v253;
          sub_22C53DB04(v229, v134);
        }

        sub_22C36C730(&v286, &v282);
        sub_22C3A5908(&qword_27D9BDAC0, &unk_22C91AB00);
        v205 = swift_allocObject();
        *(v205 + 16) = xmmword_22C90F870;
        sub_22C378A4C(&v282, &v287);
        v258 = v274;
        sub_22C3A5908(&qword_27D9BDAD8, &qword_22C91A6A8);
        v206 = swift_allocObject();
        *(v206 + 16) = xmmword_22C90FB40;
        *(v206 + 56) = &unk_283FB4CB0;
        *(v206 + 64) = &off_2818B2B70;
        v207 = swift_allocObject();
        *(v206 + 32) = v207;
        *(v207 + 16) = 0xD000000000000011;
        *(v207 + 24) = 0x800000022C931F30;
        *(v207 + 32) = v128;
        *(v207 + 48) = v248;
        *(v207 + 56) = v131;
        sub_22C53DEC4();
        *&v278 = v208;
        v209 = v208;
        *(&v278 + 1) = 0xEA00000000007265;
        v210 = sub_22C38563C();
        MEMORY[0x2318B7850](v210, 0xE800000000000000);
        v211 = v278;
        *(v206 + 96) = &unk_283FB4C30;
        *(v206 + 104) = &off_2818B2B58;
        *(v206 + 72) = v211;
        *(v206 + 88) = &unk_283FAEEE8;
        *&v278 = 0;
        *(&v278 + 1) = 0xE000000000000000;
        sub_22C90AF5C();

        *&v278 = v209;
        *(&v278 + 1) = *(&v128 + 1);
        MEMORY[0x2318B7850](0xD000000000000012, 0x800000022C931F50);
        v212 = v278;
        sub_22C36A83C();
        v213 = swift_allocObject();
        *(v213 + 16) = v263;
        *(v213 + 24) = v266;
        v214 = v213 | 0x4000000000000000;
        *(v206 + 136) = sub_22C3A5908(&qword_27D9BDAC8, &qword_22C91A6A0);
        sub_22C369F3C();
        *(v206 + 144) = sub_22C3D32C8(v215, &qword_27D9BDAC8, &qword_22C91A6A0);
        sub_22C380498();
        v216 = swift_allocObject();
        *(v206 + 112) = v216;
        *(v216 + 16) = v212;
        *(v216 + 32) = v214;
        *(v216 + 40) = MEMORY[0x277D84F90];
        sub_22C53DEC4();
        sub_22C3861E4(v217);
        v289 = v258;
        v290 = v206;
        *(v205 + 56) = sub_22C3A5908(&qword_27D9BDAF8, &qword_22C91AB10);
        sub_22C36AB40();
        *(v205 + 64) = sub_22C3D32C8(v218, &qword_27D9BDAF8, &qword_22C91AB10);
        v219 = swift_allocObject();
        *(v205 + 32) = v219;
        sub_22C537458(&v286, v219 + 16);
        *(v219 + 88) = &unk_22C91AB18;
        *(v219 + 96) = 0;

        sub_22C5374B4(&v286);
        *(v205 + 96) = sub_22C3A5908(&qword_27D9BDB08, &unk_22C91A6D0);
        *(v205 + 104) = sub_22C3D32C8(&qword_27D9BDB10, &qword_27D9BDB08, &unk_22C91A6D0);
        sub_22C3A5908(&qword_27D9BAE18, &unk_22C90D6C0);
        sub_22C369F54();
        v220 = swift_allocObject();
        sub_22C53DEF4(v220);
        *(v221 + 32) = v254;
        *(v221 + 40) = v255;
        *(v221 + 48) = v259;
        *(v221 + 56) = v256;
        *(v221 + 64) = 0;
        *(v205 + 72) = v221;
        if (v268)
        {
          v222 = sub_22C3A5908(&qword_27D9BDB18, &qword_22C91A6E0);
          sub_22C36AB40();
          v224 = sub_22C3D32C8(v223, &qword_27D9BDB18, &qword_22C91A6E0);
          sub_22C3816AC();
          v225 = swift_allocObject();
          *(v225 + 16) = 83;
          *(v225 + 24) = 0xE100000000000000;
          *(v225 + 32) = MEMORY[0x277D84FA0];
          *(v225 + 40) = 0;
          *(&v278 + 1) = &unk_22C91A6E8;
          v279 = v225;
        }

        else
        {
          v224 = &off_2818B2AB0;
          v222 = &type metadata for PromptGrammarCoalescer;
        }

        v280 = v222;
        v281 = v224;
        *&v278 = v205;
        sub_22C36FF94(&v282);
        sub_22C388FD0();
        sub_22C53DB04(v242, v226);
        sub_22C36DD28(v240, &qword_27D9BB738, &unk_22C9185A0);
        sub_22C3DF2E8(&v297);
        sub_22C36FF94(&v293);
        sub_22C36C730(&v278, &v286);
        v227 = v287;
        *(v271 + 16) = v286;
        *(v271 + 32) = v227;
        *(v271 + 48) = v288;
        sub_22C4CBAA8(v254, v255, v259);
        return sub_22C537404(&v300);
      }

      v93 = v231;
LABEL_39:
      sub_22C903F7C();
      v94 = sub_22C9063CC();
      v95 = sub_22C90AADC();
      v96 = sub_22C370214();
      if (os_log_type_enabled(v96, v97))
      {
        sub_22C3720F4();
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_22C366000, v94, v95, "No base grammar provided in a configuration that requires a grammar.", v98, 2u);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v89(v93, v272);
      sub_22C5373B0();
      swift_allocError();
      *v99 = 1;
      swift_willThrow();
      return sub_22C537404(&v300);
    }

    if ((~v259 & 0x3000000000000007) == 0)
    {
      v93 = v230;
      goto LABEL_39;
    }

    sub_22C42F0B8(a1, &v297);
    v284 = &type metadata for ToolboxGrammarToolProvider;
    v285 = &off_283FB5340;
    *&v282 = a2;
    sub_22C3E8FB4(a5, v239, &qword_27D9BB738, &unk_22C9185A0);
    sub_22C3734B8();
    sub_22C53DAA4(a6, v241, v100);
    v101 = sub_22C38A974();
    sub_22C4C7C38(v101, v102, v103);
    v104 = sub_22C38A974();
    sub_22C4C7C38(v104, v105, v106);
    v107 = qword_27D9BA650;

    if (v107 != -1)
    {
      sub_22C38BA8C();
    }

    v250 = qword_27D9BC898;
    v265 = unk_27D9BC8A0;
    if (qword_27D9BA658 != -1)
    {
      sub_22C369F1C();
    }

    v108 = xmmword_27D9BC8B0;
    v295 = &type metadata for PromptGrammarGenerator_v5_0.StaticPromptGrammarGenerator;
    v296 = &off_283FBA810;
    sub_22C36BE74();
    v270 = swift_allocObject();
    *&v293 = v270;
    v109 = v241 + v18[31];
    sub_22C901EDC();
    sub_22C53DF0C();
    sub_22C901EDC();
    v262 = v286;
    *&v286 = 0x6E6E616C705F6569;
    *(&v286 + 1) = 0xEA00000000007265;
    MEMORY[0x2318B7850](0x736C6F6F745FLL, 0xE600000000000000);
    v110 = *(&v286 + 1);
    v247 = v286;
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_22C90F800;
    sub_22C36A83C();
    v112 = swift_allocObject();
    *(v112 + 16) = v108;
    *(v111 + 32) = v112 | 0x4000000000000000;
    sub_22C3A5908(&qword_27D9BDAE0, &qword_22C91A6B8);
    sub_22C369F54();
    v113 = swift_allocObject();
    sub_22C53DEF4(v113);
    v113[3].n128_u64[1] = sub_22C3A5908(&qword_27D9BDAE8, &unk_22C91A6C0);
    sub_22C53DED8();
    v113[4].n128_u64[0] = sub_22C3D32C8(v114, v115, &unk_22C91A6C0);
    v116 = swift_allocObject();
    v113[2].n128_u64[0] = v116;
    if (v251)
    {
      sub_22C378A4C(&v282, &v287);
      sub_22C42F0B8(&v297, &v289);
      v291 = &unk_283FB9BD0;
      v292 = &off_283FB9DA0;
      v117 = xmmword_22C91A690;
    }

    else
    {
      bzero(&v287, 0x160uLL);
      v117 = 0uLL;
    }

    sub_22C53DF20(v117);
    sub_22C3819C0();
    v252 = v136;

    sub_22C5EA85C();
    v303 = v137;
    if (v244)
    {
      v116 = &v303;
      sub_22C6A57DC(&v286, 2u);
    }

    sub_22C3E8FB4(v239, v232, &qword_27D9BB738, &unk_22C9185A0);
    if (sub_22C370B74(v232, 1, v238) == 1)
    {
      sub_22C36DD28(v232, &qword_27D9BB738, &unk_22C9185A0);
      sub_22C36A83C();
      v138 = swift_allocObject();
      *(v138 + 16) = 0xD000000000000016;
      *(v138 + 24) = 0x800000022C930A30;
      v139 = v138 | 0x4000000000000000;
      *(&v287 + 1) = sub_22C3A5908(&qword_27D9BDAC8, &qword_22C91A6A0);
      sub_22C369F3C();
      v288 = sub_22C3D32C8(v140, &qword_27D9BDAC8, &qword_22C91A6A0);
      sub_22C380498();
      v141 = swift_allocObject();
      *&v286 = v141;
      v141[2] = 0xD00000000000001FLL;
      v141[3] = 0x800000022C932020;
      v142 = MEMORY[0x277D84F90];
      v141[4] = v139;
      v141[5] = v142;
    }

    else
    {
      sub_22C3819C0();
      v243 = v143;
      sub_22C53DA40(v232, v228);
      sub_22C36D870();
      sub_22C53DAA4(v228, v234, v144);
      *(&v287 + 1) = type metadata accessor for StructuredSearchToolGrammarComponent_v5_0();
      v288 = &off_2818B46A0;
      v145 = sub_22C36D548(&v286);
      v146 = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0);
      v147 = v146[12];
      sub_22C3734B8();
      sub_22C53DAA4(v241, v145 + v148, v149);
      sub_22C53DAA4(v234, v145 + v146[5], v116);
      sub_22C53DF00(v145 + v146[6]);
      v150 = v145 + v146[7];
      *(v150 + 3) = &unk_283FB9CD0;
      *(v150 + 4) = &off_283FB9E00;
      v151 = v145 + v146[8];
      *(v151 + 3) = &unk_283FB9CF0;
      *(v151 + 4) = &off_283FB9E10;
      sub_22C53DF00(v145 + v146[9]);
      v152 = v145 + v146[10];
      *(v152 + 3) = &unk_283FB9BF0;
      *(v152 + 4) = &off_283FB9DB0;
      v153 = v145 + v146[11];
      *(v153 + 3) = &unk_283FB9D10;
      *(v153 + 4) = &off_283FB9E20;
      sub_22C53DB04(v234, v116);
      *v145 = 0xD00000000000001DLL;
      v145[1] = v243;
      sub_22C53DB04(v228, v116);
    }

    sub_22C36C730(&v286, &v278);
    sub_22C3A5908(&qword_27D9BDAC0, &unk_22C91AB00);
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_22C90F870;
    sub_22C378A4C(&v278, &v287);
    v245 = v303;
    sub_22C3A5908(&qword_27D9BDAD8, &qword_22C91A6A8);
    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_22C90FB40;
    *(v155 + 56) = &unk_283FB4CB0;
    *(v155 + 64) = &off_2818B2B70;
    v156 = swift_allocObject();
    *(v155 + 32) = v156;
    v156[2] = 0xD000000000000011;
    v156[3] = v252;
    v156[4] = v247;
    v156[5] = v110;
    v156[6] = v111;
    v156[7] = v113;
    sub_22C53DEC4();
    *&v274 = v157;
    v158 = v157;
    v159 = sub_22C38563C();
    MEMORY[0x2318B7850](v159, 0xE800000000000000);
    v160 = v274;
    *(v155 + 96) = &unk_283FB4C30;
    *(v155 + 104) = &off_2818B2B58;
    *(v155 + 72) = v160;
    *(v155 + 80) = 0xEA00000000007265;
    *(v155 + 88) = &unk_283FAEEE8;
    sub_22C90AF5C();

    *(&v274 + 1) = v113;
    MEMORY[0x2318B7850](0xD000000000000012, 0x800000022C931F50);
    sub_22C36A83C();
    v161 = swift_allocObject();
    *(v161 + 16) = v250;
    *(v161 + 24) = v265;
    v162 = v161 | 0x4000000000000000;
    *(v155 + 136) = sub_22C53DF40();
    sub_22C369F3C();
    sub_22C47274C();
    *(v155 + 144) = sub_22C3D32C8(v163, v164, v165);
    sub_22C380498();
    v166 = swift_allocObject();
    *(v155 + 112) = v166;
    v166[2] = v158;
    v166[3] = v113;
    v167 = MEMORY[0x277D84F90];
    v166[4] = v162;
    v166[5] = v167;
    sub_22C53DEC4();
    sub_22C3861E4(v168);
    v289 = v245;
    v290 = v155;
    *(v154 + 56) = sub_22C53DF40();
    sub_22C36AB40();
    sub_22C47274C();
    *(v154 + 64) = sub_22C3D32C8(v169, v170, v171);
    v172 = swift_allocObject();
    *(v154 + 32) = v172;
    sub_22C537458(&v286, v172 + 16);
    *(v172 + 88) = &unk_22C91AB18;
    *(v172 + 96) = 0;

    sub_22C5374B4(&v286);
    *(v154 + 96) = sub_22C53DF40();
    sub_22C47274C();
    *(v154 + 104) = sub_22C3D32C8(v173, v174, v175);
    sub_22C3A5908(&qword_27D9BAE18, &unk_22C90D6C0);
    sub_22C369F54();
    v176 = swift_allocObject();
    sub_22C53DEF4(v176);
    *(v177 + 32) = v254;
    *(v177 + 40) = v255;
    *(v177 + 48) = v259;
    *(v177 + 56) = v256;
    *(v177 + 64) = 0;
    *(v154 + 72) = v177;
    if (v262)
    {
      v178 = sub_22C53DF40();
      sub_22C36AB40();
      sub_22C47274C();
      v182 = sub_22C3D32C8(v179, v180, v181);
      sub_22C3816AC();
      v183 = swift_allocObject();
      *(v183 + 16) = 83;
      *(v183 + 24) = 0xE100000000000000;
      *(v183 + 32) = MEMORY[0x277D84FA0];
      *(v183 + 40) = 0;
      *(&v274 + 1) = &unk_22C91A6F0;
      v275 = v183;
    }

    else
    {
      v182 = &off_2818B2AB0;
      v178 = &type metadata for PromptGrammarCoalescer;
    }

    v276 = v178;
    v277 = v182;
    *&v274 = v154;
    sub_22C36FF94(&v278);
    sub_22C388FD0();
    sub_22C53DB04(v241, v184);
    sub_22C36DD28(v239, &qword_27D9BB738, &unk_22C9185A0);
    sub_22C3DF2E8(&v297);
    sub_22C36FF94(&v282);
    sub_22C36C730(&v274, &v286);
    v185 = v287;
    *(v270 + 16) = v286;
    *(v270 + 32) = v185;
    *(v270 + 48) = v288;
    sub_22C464B30(&v300, &v286);
    v297 = qword_27D9BC898;
    v298 = unk_27D9BC8A0;
    v299 = qword_27D9BC8A8;
    v186 = qword_27D9BA648;

    if (v186 != -1)
    {
      sub_22C3830B8();
    }

    v282 = xmmword_27D9BC880;
    v283 = qword_27D9BC890;
    v278 = xmmword_27D9BC8B0;
    v279 = qword_27D9BC8C0;
    a7[3] = &type metadata for StandalonePromptGrammarGenerator;
    a7[4] = &off_283FB52F8;
    v187 = swift_allocObject();
    *a7 = v187;
    v187[10] = &type metadata for PromptGrammarGenerator_v5_0.HybridPromptGrammarGenerator;
    v187[11] = &off_283FBA800;
    sub_22C36BE74();
    v188 = swift_allocObject();
    v187[7] = v188;

    sub_22C53C4CC(&v297, &v282, &v286, &v278, v257, v188 + 16);
    sub_22C4CBAA8(v254, v255, v259);
    sub_22C36C730(&v293, (v187 + 2));
    return sub_22C537404(&v300);
  }

  else
  {
    sub_22C903F7C();
    v70 = sub_22C9063CC();
    v71 = sub_22C90AACC();
    v72 = sub_22C370214();
    if (os_log_type_enabled(v72, v73))
    {
      sub_22C3720F4();
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_22C366000, v70, v71, "Constrained decoding support is disabled.", v74, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    result = (*(v269 + 8))(v43, v272);
    a7[3] = &type metadata for StubGrammarGenerator;
    a7[4] = &off_283FB5308;
  }

  return result;
}

uint64_t sub_22C53C4CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a2[1];
  v28 = *a2;
  v29 = a2[2];
  v10 = *a4;
  v11 = a4[1];
  v26 = a1[2];
  v27 = a4[2];
  sub_22C3A5908(&qword_27D9BDAC0, &unk_22C91AB00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22C90FB40;

  *(v12 + 56) = sub_22C3A5908(&qword_27D9BDB28, &qword_22C91A6F8);
  *(v12 + 64) = sub_22C3D32C8(&qword_27D9BDB30, &qword_27D9BDB28, &qword_22C91A6F8);
  v13 = swift_allocObject();
  *(v12 + 32) = v13;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v7;
  v13[5] = v8;
  v14 = a3;
  v15 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84FA0];
  v13[6] = v26;
  v13[7] = v15;
  v13[8] = v16;
  v13[9] = &unk_22C91AB20;
  v13[10] = 0;

  *(v12 + 96) = sub_22C3A5908(&qword_27D9BDB38, &unk_22C91A700);
  *(v12 + 104) = sub_22C3D32C8(&qword_27D9BDB40, &qword_27D9BDB38, &unk_22C91A700);
  v17 = swift_allocObject();
  *(v12 + 72) = v17;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v10;
  v17[5] = v11;
  v17[6] = v27;
  v17[7] = v15;
  v17[8] = &unk_22C91AB30;
  v17[9] = 0;
  sub_22C464B30(v14, &__src[2]);
  sub_22C36A83C();
  v18 = swift_allocObject();
  strcpy((v18 + 16), "quoted_string");
  *(v18 + 30) = -4864;
  __src[0] = v28;
  __src[1] = v9;
  __src[7] = v18 | 0x4000000000000000;
  __src[8] = v28;
  __src[9] = v9;
  __src[10] = v29;
  __src[11] = v15;

  memcpy(__dst, __src, sizeof(__dst));
  v33 = &unk_22C91AB38;
  v34 = 0;
  *(v12 + 136) = sub_22C3A5908(&qword_27D9BDB48, &unk_22C91AB40);
  *(v12 + 144) = sub_22C3D32C8(&qword_27D9BDB50, &qword_27D9BDB48, &unk_22C91AB40);
  v19 = swift_allocObject();
  *(v12 + 112) = v19;
  sub_22C3E8FB4(__dst, v19 + 16, &qword_27D9BDB58, qword_22C91A710);
  *(v19 + 128) = &unk_22C913A80;
  *(v19 + 136) = 0;
  sub_22C36DD28(__dst, &qword_27D9BDB58, qword_22C91A710);
  if (a5)
  {
    v20 = v16;
    v21 = sub_22C3A5908(&qword_27D9BDB18, &qword_22C91A6E0);
    sub_22C36AB40();
    v23 = sub_22C3D32C8(v22, &qword_27D9BDB18, &qword_22C91A6E0);
    sub_22C3816AC();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0xE000000000000000;
    *(v24 + 32) = v20;
    *(v24 + 40) = 1;
    *(&__dst[0] + 1) = &unk_22C91AB50;
    *&__dst[1] = v24;
  }

  else
  {
    v23 = &off_2818B2AB0;
    v21 = &type metadata for PromptGrammarCoalescer;
  }

  *(&__dst[1] + 1) = v21;
  *&__dst[2] = v23;
  *&__dst[0] = v12;
  sub_22C537404(v14);
  return sub_22C36C730(__dst, a6);
}

uint64_t sub_22C53C874()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22C9063DC();
  v1[6] = v4;
  sub_22C3699B8(v4);
  v1[7] = v5;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_22C90634C();
  v1[9] = v8;
  sub_22C3699B8(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_22C36D0D4();
  v1[12] = swift_task_alloc();
  v12 = sub_22C90636C();
  v1[13] = v12;
  sub_22C3699B8(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = sub_22C36D0D4();
  v1[16] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C53C9D8()
{
  sub_22C374458();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v3 = sub_22C37B2C4();
  v4(v3);
  sub_22C90635C();
  v5 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v6 = *(v0 + 96);
    sub_22C3720F4();
    v1 = swift_slowAlloc();
    *v1 = 0;
    v7 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v8, v9, v7, "HybridPromptGrammarGenerator.generateGrammar", "");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  sub_22C537978();
  v10 = sub_22C375988();
  v11(v10);
  v12 = sub_22C9063AC();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_22C36D704();
  v16 = sub_22C5379A8(v15);
  v17(v16);
  v26(v5, v1);
  v18 = v2[4];
  sub_22C374168(v2, v2[3]);
  sub_22C37012C();
  v27 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  *(v0 + 144) = v22;
  *v22 = v0;
  v23 = sub_22C382704(v22);

  return v24(v23);
}

uint64_t sub_22C53CBD4()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 144);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C53CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v12 = v11[2];
  if (v12)
  {
    sub_22C3722AC(v12);
    sub_22C53D65C(v10, "HybridPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  else
  {
    v13 = v11[8];
    sub_22C903F7C();
    v14 = sub_22C9063CC();
    sub_22C90AADC();
    v15 = sub_22C370214();
    if (os_log_type_enabled(v15, v16))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C36BB14(&dword_22C366000, v17, v18, "Received nil hybrid grammar from generator.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v20 = v11[7];
    v19 = v11[8];
    v21 = v11[6];

    (*(v20 + 8))(v19, v21);
    sub_22C5373B0();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    sub_22C36BE80();
    sub_22C53D65C(v19, "HybridPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  sub_22C36EC14();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_22C53CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v12 = *(v11 + 152);
  sub_22C36BE80();
  sub_22C53D65C(v10, "HybridPromptGrammarGenerator.generateGrammar");

  sub_22C369A24();
  sub_22C36EC14();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_22C53CF14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C53C874();
}

uint64_t sub_22C53CFBC()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22C9063DC();
  v1[6] = v4;
  sub_22C3699B8(v4);
  v1[7] = v5;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_22C90634C();
  v1[9] = v8;
  sub_22C3699B8(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_22C36D0D4();
  v1[12] = swift_task_alloc();
  v12 = sub_22C90636C();
  v1[13] = v12;
  sub_22C3699B8(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = sub_22C36D0D4();
  v1[16] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C53D120()
{
  sub_22C374458();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v3 = sub_22C37B2C4();
  v4(v3);
  sub_22C90635C();
  v5 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v6 = *(v0 + 96);
    sub_22C3720F4();
    v1 = swift_slowAlloc();
    *v1 = 0;
    v7 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v8, v9, v7, "StaticPromptGrammarGenerator.generateGrammar", "");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  sub_22C537978();
  v10 = sub_22C375988();
  v11(v10);
  v12 = sub_22C9063AC();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_22C36D704();
  v16 = sub_22C5379A8(v15);
  v17(v16);
  v26(v5, v1);
  v18 = v2[4];
  sub_22C374168(v2, v2[3]);
  sub_22C37012C();
  v27 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  *(v0 + 144) = v22;
  *v22 = v0;
  v23 = sub_22C382704(v22);

  return v24(v23);
}

uint64_t sub_22C53D31C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 144);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C53D41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v12 = v11[2];
  if (v12)
  {
    sub_22C3722AC(v12);
    sub_22C53D65C(v10, "StaticPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  else
  {
    v13 = v11[8];
    sub_22C903F7C();
    v14 = sub_22C9063CC();
    sub_22C90AADC();
    v15 = sub_22C370214();
    if (os_log_type_enabled(v15, v16))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C36BB14(&dword_22C366000, v17, v18, "Received nil static grammar from generator.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v20 = v11[7];
    v19 = v11[8];
    v21 = v11[6];

    (*(v20 + 8))(v19, v21);
    sub_22C5373B0();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    sub_22C36BE80();
    sub_22C53D65C(v19, "StaticPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  sub_22C36EC14();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_22C53D5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v12 = *(v11 + 152);
  sub_22C36BE80();
  sub_22C53D65C(v10, "StaticPromptGrammarGenerator.generateGrammar");

  sub_22C369A24();
  sub_22C36EC14();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_22C53D65C(uint64_t a1, const char *a2)
{
  v2 = sub_22C90637C();
  v3 = sub_22C369824(v2);
  v33 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v9 = v8 - v7;
  v35 = sub_22C90634C();
  v10 = sub_22C369824(v35);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C90636C();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v26 = v25 - v24;
  sub_22C90364C();
  v27 = sub_22C90635C();
  sub_22C90638C();
  v32 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    if ((*(v33 + 88))(v9, v2) == *MEMORY[0x277D85B00])
    {
      v28 = "[Error] Interval already ended";
    }

    else
    {
      (*(v33 + 8))(v9, v2);
      v28 = "";
    }

    sub_22C3720F4();
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v27, v32, v30, a2, v28, v29, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v12 + 8))(v17, v35);
  return (*(v21 + 8))(v26, v18);
}

uint64_t sub_22C53D904()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C53CFBC();
}

uint64_t sub_22C53D9AC()
{
  sub_22C36D5EC();
  sub_22C36FD2C(v0, v1);
  v2 = swift_task_alloc();
  v3 = sub_22C36D860(v2);
  *v3 = v4;
  v5 = sub_22C36BE94(v3);

  return sub_22C53A5EC(v5, v6, v7, v8, v9);
}

uint64_t sub_22C53DA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GrammarToolDefinitionBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C53DAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C53DB04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C53DB5C()
{
  sub_22C36D5EC();
  sub_22C36FD2C(v0, v1);
  v2 = swift_task_alloc();
  v3 = sub_22C36D860(v2);
  *v3 = v4;
  v5 = sub_22C36BE94(v3);

  return sub_22C53A6E0(v5, v6, v7, v8, v9);
}

uint64_t sub_22C53DBF0()
{
  sub_22C36D5EC();
  sub_22C36FD2C(v0, v1);
  v2 = swift_task_alloc();
  v3 = sub_22C36D860(v2);
  *v3 = v4;
  v5 = sub_22C36BE94(v3);

  return sub_22C53A6E0(v5, v6, v7, v8, v9);
}

uint64_t sub_22C53DC84()
{
  sub_22C369980();
  v2 = v1;
  v4 = *(v3 + 16);
  *(v0 + 16) = *v3;
  *(v0 + 32) = v4;
  *(v0 + 48) = *(v3 + 32);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_22C53DD2C;

  return sub_22C53A708(v2, v0 + 16);
}

uint64_t sub_22C53DD2C()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C53DE0C()
{
  sub_22C36D5EC();
  sub_22C388730();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C3718F8(v1);

  return sub_22C46109C(v3, v4, v5, v6, v7, v8);
}

__n128 sub_22C53DEF4(__n128 *a1)
{
  result = v1[16];
  a1[1] = result;
  return result;
}

void sub_22C53DF00(uint64_t a1@<X8>)
{
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  *a1 = 0;
}

void *sub_22C53DF20(__n128 a1)
{
  v1[25] = a1;

  return memcpy((v2 + 16), &v1[25], 0x170uLL);
}

uint64_t sub_22C53DF40()
{

  return sub_22C3A5908(v0, v1);
}

uint64_t sub_22C53DF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C901FAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22C3A5908(&qword_27D9BC048, &qword_22C91AC70);
  v10 = *(*(v57 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v57);
  v56 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = v41 - v13;
  v54 = sub_22C3A5908(&qword_27D9BDBB0, &qword_22C91AC88);
  v14 = *(*(v54 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v54);
  v53 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v52 = v41 - v18;
  MEMORY[0x28223BE20](v17);
  v51 = v41 - v19;
  v20 = *(a3 + 16);
  v59 = MEMORY[0x277D84F90];
  sub_22C3B6EDC();
  v21 = v59;
  v50 = v20;
  if (!v20)
  {
    return v21;
  }

  result = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  v23 = 0;
  v45 = *(result - 8);
  v46 = result;
  v44 = a2 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
  v24 = *(a2 + 16);
  v48 = v6;
  v49 = v24;
  v42 = (v6 + 16);
  v43 = a3 + 32;
  v41[2] = v6 + 32;
  v47 = v9;
  while (v49 != v23)
  {
    v25 = v57;
    v26 = *(v57 + 48);
    v27 = v55;
    sub_22C542C74(v44 + *(v45 + 72) * v23, v55, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    *(v27 + v26) = *(v43 + 8 * v23);
    v28 = v56;
    sub_22C3D7EEC(v27, v56, &qword_27D9BC048, &qword_22C91AC70);
    v29 = *(v25 + 48);
    v30 = v5;
    v58 = v21;
    v31 = v54;
    v32 = *(v54 + 48);
    v33 = v51;
    sub_22C542CD4(v28, v51, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    *(v33 + v32) = *(v28 + v29);
    v34 = v52;
    sub_22C542D34(v33, v52);
    v35 = *(v31 + 48);
    v36 = *(v34 + v35);
    v37 = v53;
    sub_22C542CD4(v34, v53, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    *(v37 + v35) = v36;
    v38 = v47;
    v5 = v30;
    (*v42)(v47, v37 + *(v46 + 20), v30);

    v39 = v37;
    v21 = v58;
    sub_22C36DD28(v39, &qword_27D9BDBB0, &qword_22C91AC88);
    sub_22C36DD28(v33, &qword_27D9BDBB0, &qword_22C91AC88);
    v59 = v21;
    v40 = *(v21 + 16);
    if (v40 >= *(v21 + 24) >> 1)
    {
      sub_22C3B6EDC();
      v21 = v59;
    }

    ++v23;
    *(v21 + 16) = v40 + 1;
    result = (*(v48 + 32))(v21 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v40, v38, v30);
    if (v50 == v23)
    {
      return v21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C53E3B4(uint64_t a1)
{
  v2 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0);
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v42 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = v39 - v6;
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v47 = MEMORY[0x277D84F98];
  v45 = *(a1 + 16);
  v40 = xmmword_22C90F800;
  v41 = a1;
  while (1)
  {
    if (v45 == v7)
    {

      return v8;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v9 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v10 = *(v43 + 72);
    v11 = v46;
    sub_22C542C74(a1 + v9 + v10 * v7, v46, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
    v12 = *(v11 + *(v44 + 24));
    v20 = sub_22C628AF8(v12);
    v21 = v8[2];
    v22 = (v13 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_19;
    }

    v24 = v13;
    if (v8[3] < v23)
    {
      sub_22C88EB24(v23, 1, v14, v15, v16, v17, v18, v19, v39[0], v39[1], v40, SBYTE4(v40));
      v8 = v47;
      v25 = sub_22C628AF8(v12);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_21;
      }

      v20 = v25;
    }

    if (v24)
    {
      v27 = v8[7];
      sub_22C542CD4(v46, v42, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
      v28 = *(v27 + 8 * v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v20) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = *(v28 + 16);
        sub_22C592F08();
        v28 = v36;
        *(v27 + 8 * v20) = v36;
      }

      v30 = *(v28 + 16);
      if (v30 >= *(v28 + 24) >> 1)
      {
        sub_22C592F08();
        v28 = v37;
        *(v27 + 8 * v20) = v37;
      }

      *(v28 + 16) = v30 + 1;
      sub_22C542CD4(v42, v28 + v9 + v30 * v10, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
      a1 = v41;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAEF8, &unk_22C90D7A0);
      v31 = swift_allocObject();
      *(v31 + 16) = v40;
      sub_22C542CD4(v46, v31 + v9, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
      v8[(v20 >> 6) + 8] |= 1 << v20;
      *(v8[6] + v20) = v12;
      *(v8[7] + 8 * v20) = v31;
      v32 = v8[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_20;
      }

      v8[2] = v34;
    }

    ++v7;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C53E700(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 0uLL:
      v2 = *(a1 + 16);
      v1 = *(a1 + 24);
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      *(v3 + 24) = v1;

      goto LABEL_6;
    case 3uLL:
      v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = swift_allocObject();
      v13 = *(v11 + 16);

      v14 = sub_22C53E948(v13);

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v12 + 16) = v15;
      v3 = v12 | 0x6000000000000000;
      goto LABEL_6;
    case 4uLL:
      v16 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      swift_beginAccess();
      v19 = *(v17 + 16);

      v20 = sub_22C53E700(v19);

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v18 + 24) = v21;
      v3 = v18 | 0x8000000000000000;
      goto LABEL_6;
    case 5uLL:
      v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v5;
      swift_beginAccess();
      v8 = *(v6 + 16);

      v9 = sub_22C53E700(v8);

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v7 + 32) = v10;
      v3 = v7 | 0xA000000000000000;
LABEL_6:
      result = v3;
      break;
    default:
      sub_22C3A5908(&qword_27D9BDBB8, qword_22C91AC90);
      result = sub_22C90B4EC();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_22C53E948(uint64_t a1)
{
  if (a1 < 0)
  {
    v10 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v11;
    v14 = *(v12 + 16);
    sub_22C480170(v10, v11);

    v15 = sub_22C53E948(v14);

    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v13 + 32) = v16;
    return v13 | 0x8000000000000000;
  }

  else
  {
    v1 = *(a1 + 16);
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v17 = *(a1 + 16);
      }

      v2 = sub_22C90B1BC();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v2)
    {
      goto LABEL_12;
    }

    v18 = MEMORY[0x277D84F90];

    result = sub_22C90B01C();
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2318B8460](v5, v1);
        }

        else
        {
          v6 = *(v1 + 8 * v5 + 32);
        }

        ++v5;
        swift_beginAccess();
        v7 = *(v6 + 16);

        v8 = sub_22C53E700(v7);

        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        *(swift_allocObject() + 16) = v8;
        sub_22C90AFEC();
        v9 = *(v18 + 16);
        sub_22C90B02C();
        sub_22C90B03C();
        sub_22C90AFFC();
      }

      while (v2 != v5);

      v3 = v18;
LABEL_12:
      result = swift_allocObject();
      *(result + 16) = v3;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C53EB6C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v333 = a1;
  v353 = sub_22C3A5908(&qword_27D9BC048, &qword_22C91AC70);
  v9 = sub_22C36985C(v353);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v352 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  v351 = v14;
  v350 = sub_22C3A5908(&qword_27D9BDBA0, &qword_22C91AC78);
  v15 = sub_22C36985C(v350);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v349 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  v348 = v20;
  v21 = sub_22C36BA0C();
  v22 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(v21);
  v23 = sub_22C369824(v22);
  v325 = v24;
  v326 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C3698E4();
  v343 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  v329 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA64();
  v330 = v31;
  sub_22C36BA0C();
  v359 = sub_22C901FAC();
  v32 = sub_22C369824(v359);
  v362 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  v318 = v36;
  sub_22C369930();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  v358 = v38;
  sub_22C36BA0C();
  v39 = sub_22C902D0C();
  v40 = sub_22C369824(v39);
  v360 = v41;
  v361 = v40;
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v40);
  v46 = (v317 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  v321 = v47;
  sub_22C369930();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA64();
  v334 = v49;
  v50 = sub_22C36BA0C();
  v51 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v50);
  v52 = sub_22C36985C(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  v331 = v317 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22C36BA0C();
  v332 = type metadata accessor for PromptTreeIdentifier(v56);
  v57 = sub_22C36985C(v332);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22C3698E4();
  v324 = v60;
  sub_22C369930();
  MEMORY[0x28223BE20](v61);
  sub_22C36BA58();
  v335 = v62;
  sub_22C369930();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA64();
  v345 = v64;
  sub_22C36BA0C();
  v344 = sub_22C9063DC();
  v65 = sub_22C369824(v344);
  v341 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  v70 = v317 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22C3A5908(&qword_27D9BDBA8, &qword_22C91AC80);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v74 = v317 - v73;
  v355 = sub_22C3A5908(&qword_27D9BDBB0, &qword_22C91AC88);
  v75 = sub_22C36985C(v355);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22C3698E4();
  v347 = v78;
  sub_22C369930();
  MEMORY[0x28223BE20](v79);
  sub_22C36BA58();
  v346 = v80;
  sub_22C369930();
  v82 = MEMORY[0x28223BE20](v81);
  v84 = (v317 - v83);
  MEMORY[0x28223BE20](v82);
  sub_22C36BA64();
  v354 = v85;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_92;
  }

  v342 = v46;

  sub_22C7E34FC();
  v87 = v86;

  v356 = v87;
  v357 = a3;
  if (*(v87 + 16) != 1)
  {
LABEL_5:
    sub_22C54072C(v333, a2, a3);
    v328 = v88;
    v89 = *(v88 + 16);
    v354 = *(a4 + 16);
    v91 = v354 < v89 || v354 > a5;
    sub_22C36C640(v331, 2, 3, v361);
    sub_22C38A984();
    swift_storeEnumTagMultiPayload();
    v322 = a2;
    v365 = sub_22C53DF58(a2, a3, a4);

    sub_22C5418A0(&v365);
    v323 = 0;
    v319 = v91;
    v327 = a4;
    v320 = v51;

    a3 = v365;
    v51 = *(v365 + 16);
    if (v51)
    {
      v365 = MEMORY[0x277D84F90];
      sub_22C542E9C();
      sub_22C38A984();
      sub_22C3B69C4(v92, v93, v94);
      v95 = 0;
      v70 = v365;
      sub_22C37054C();
      v344 = (a3 + v96);
      v341 = v97 + 16;
      v339 = *MEMORY[0x277D1D798];
      v337 = v97 + 8;
      v338 = (v360 + 104);
      v336 = v360 + 32;
      a2 = v321;
      v345 = a3;
      v340 = v51;
      while (1)
      {
        v85 = *(a3 + 16);
        if (v95 >= v85)
        {
          break;
        }

        v98 = v362;
        v99 = *(v362 + 16);
        v100 = v358;
        v101 = v359;
        v99(v358, v344 + *(v362 + 72) * v95, v359);
        v102 = swift_allocBox();
        v99(v103, v100, v101);
        *a2 = v102;
        v104 = v361;
        (*v338)(a2, v339, v361);
        (*(v98 + 8))(v100, v101);
        v365 = v70;
        v106 = *(v70 + 16);
        v105 = *(v70 + 24);
        if (v106 >= v105 >> 1)
        {
          v110 = sub_22C377E58(v105);
          sub_22C3B69C4(v110, v106 + 1, 1);
          v104 = v361;
          v70 = v365;
        }

        ++v95;
        *(v70 + 16) = v106 + 1;
        sub_22C37054C();
        v108 = sub_22C542E8C(v70 + v107);
        v109(v108, a2, v104);
        v51 = v340;
        a3 = v345;
        if (v340 == v95)
        {

          goto LABEL_19;
        }
      }

LABEL_90:
      __break(1u);
    }

    else
    {

      v70 = MEMORY[0x277D84F90];
LABEL_19:
      v111 = swift_allocBox();
      v113 = v112;
      sub_22C36D6EC();
      v114 = swift_allocObject();
      *(v114 + 16) = v70;
      *(v114 + 24) = 0;
      *(v114 + 32) = 4;
      *v113 = v114;
      v115 = v360 + 104;
      v116 = *(v360 + 104);
      LODWORD(v336) = *MEMORY[0x277D1D7E8];
      (v116)(v113);
      v321 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
      v117 = *(v321 + 20);
      v118 = v335;
      *(v335 + v117) = v111;
      v317[3] = *MEMORY[0x277D1D7A0];
      v344 = v116;
      v345 = v115;
      (v116)(v118 + v117);
      sub_22C542CD4(v331, v118, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category);
      swift_storeEnumTagMultiPayload();
      v119 = 0;
      v51 = v328;
      a2 = *(v328 + 16);
      v120 = MEMORY[0x277D84F90];
      v340 = MEMORY[0x277D84F90];
      v70 = v325;
      v121 = v326;
      a3 = v330;
      while (a2 != v119)
      {
        v85 = *(v51 + 16);
        if (v119 >= v85)
        {
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        sub_22C542C74(v51 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v119, a3, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
        if (*(a3 + *(v121 + 20)) == 1)
        {
          sub_22C37290C();
          sub_22C542CD4(a3, v329, v122);
          v123 = v340;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v365 = v123;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v125 = *(v123 + 16);
            v126 = sub_22C542E9C();
            sub_22C3B71E0(v126, v127, 1);
            v121 = v326;
            v123 = v365;
          }

          v129 = *(v123 + 16);
          v128 = *(v123 + 24);
          v130 = v123;
          if (v129 >= v128 >> 1)
          {
            v133 = sub_22C377E58(v128);
            sub_22C3B71E0(v133, v129 + 1, 1);
            v121 = v326;
            v130 = v365;
          }

          ++v119;
          *(v130 + 16) = v129 + 1;
          v340 = v130;
          sub_22C37290C();
          sub_22C542CD4(v329, v131, v132);
          a3 = v330;
          v51 = v328;
        }

        else
        {
          sub_22C542DA4(a3, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
          ++v119;
        }
      }

      v134 = v340;
      v135 = *(v340 + 16);
      if (v135)
      {
        v365 = v120;
        sub_22C542E9C();
        sub_22C3B6EDC();
        v136 = v365;
        v51 = v134 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
        v341 = *(v70 + 72);
        v137 = (v362 + 16);
        v138 = v359;
        v139 = v318;
        do
        {
          v140 = v343;
          sub_22C542C74(v51, v343, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
          (*v137)(v139, v140, v138);
          sub_22C542DA4(v140, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
          v365 = v136;
          v142 = *(v136 + 16);
          v141 = *(v136 + 24);
          if (v142 >= v141 >> 1)
          {
            sub_22C377E58(v141);
            sub_22C3B6EDC();
            v136 = v365;
          }

          *(v136 + 16) = v142 + 1;
          sub_22C37054C();
          v144 = sub_22C542E8C(v136 + v143);
          v145(v144, v139, v138);
          v51 += v341;
          --v135;
        }

        while (v135);

        v120 = MEMORY[0x277D84F90];
      }

      else
      {

        v136 = MEMORY[0x277D84F90];
      }

      v365 = v136;

      v146 = v323;
      sub_22C5418A0(&v365);
      if (v146)
      {

        __break(1u);
        return result;
      }

      a3 = v365;
      v70 = *(v365 + 16);
      if (!v70)
      {

        a2 = MEMORY[0x277D84F90];
LABEL_45:
        if (*(a2 + 16))
        {
          sub_22C36D6EC();
          v167 = swift_allocObject();
          *(v167 + 16) = a2;
          *(v167 + 24) = 0;
          *(v167 + 32) = 4;
          v168 = v344;
        }

        else
        {
          v169 = v361;
          v167 = swift_allocBox();
          v171 = v170;
          sub_22C36D6EC();
          v172 = swift_allocObject();
          *(v172 + 16) = a2;
          *(v172 + 24) = 0;
          *(v172 + 32) = 4;
          *v171 = v172;
          v168 = v344;
          (v344)(v171, v336, v169);
        }

        *v334 = v167;
        v168();
        sub_22C36A83C();
        v70 = swift_allocObject();
        *(v70 + 16) = 0x746E695B74636964;
        *(v70 + 24) = 0xEA0000000000202CLL;
        sub_22C374C14();
        sub_22C591324();
        v174 = v173;
        v51 = *(v173 + 16);
        v85 = *(v173 + 24);
        v175 = v85 >> 1;
        a3 = v51 + 1;
        a2 = v322;
        if (v85 >> 1 > v51)
        {
          goto LABEL_49;
        }

        goto LABEL_93;
      }

      v365 = v120;
      v147 = sub_22C542E9C();
      sub_22C3B69C4(v147, v70, 0);
      v148 = 0;
      a2 = v365;
      sub_22C37054C();
      v341 = a3 + v149;
      v340 = v150 + 16;
      v339 = *MEMORY[0x277D1D798];
      v337 = v360 + 32;
      v338 = (v150 + 8);
      v343 = a3;
      v151 = v358;
      while (1)
      {
        v85 = *(a3 + 16);
        if (v148 >= v85)
        {
          break;
        }

        v51 = v362;
        v152 = *(v362 + 16);
        v153 = v359;
        v152(v151, v341 + *(v362 + 72) * v148, v359);
        v154 = swift_allocBox();
        v152(v155, v151, v153);
        v156 = v342;
        *v342 = v154;
        v157 = v361;
        (v344)(v156, v339, v361);
        v158 = *(v51 + 8);
        v159 = sub_22C37FE24();
        v160(v159);
        v365 = a2;
        v162 = *(a2 + 16);
        v161 = *(a2 + 24);
        if (v162 >= v161 >> 1)
        {
          v166 = sub_22C377E58(v161);
          sub_22C3B69C4(v166, v162 + 1, 1);
          v157 = v361;
          a2 = v365;
        }

        ++v148;
        *(a2 + 16) = v162 + 1;
        sub_22C37054C();
        v164 = sub_22C542E8C(a2 + v163);
        v165(v164, v156, v157);
        a3 = v343;
        if (v70 == v148)
        {

          goto LABEL_45;
        }
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    sub_22C369AB0(v85);
    sub_22C591324();
    v174 = v304;
    v85 = *(v304 + 24);
    v175 = v85 >> 1;
LABEL_49:
    *(v174 + 16) = a3;
    *(v174 + 8 * v51 + 32) = v70;
    v176 = *(v333 + 40);
    v177 = v51 + 2;
    if (v175 < (v51 + 2))
    {
      sub_22C369AB0(v85);
      sub_22C591324();
      v174 = v305;
    }

    *(v174 + 16) = v177;
    *(v174 + 8 * a3 + 32) = v176;
    sub_22C36A83C();
    v178 = swift_allocObject();
    *(v178 + 16) = 93;
    *(v178 + 24) = 0xE100000000000000;
    v179 = *(v174 + 24);
    v180 = v51 + 3;

    if (v180 > (v179 >> 1))
    {
      sub_22C591324();
      v174 = v306;
    }

    *(v174 + 16) = v180;
    *(v174 + 8 * v177 + 32) = v178;
    v181 = sub_22C3DB9B0(v174);

    sub_22C369AEC();
    v182 = swift_allocObject();
    v358 = sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v183 = swift_allocObject();
    *(v183 + 16) = v181;
    *(v182 + 16) = v183;
    v345 = v182;
    v184 = v182 | 0x6000000000000000;
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C919310;
    *(inited + 32) = sub_22C540D38(a2, v357);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v186 = swift_allocBox();
    sub_22C486784();
    v344 = inited;
    *(inited + 40) = v186 | 0x2000000000000000;
    sub_22C36A83C();
    v187 = swift_allocObject();
    *(v187 + 16) = 8250;
    *(v187 + 24) = 0xE200000000000000;
    v188 = MEMORY[0x277D84F90];
    sub_22C374C14();
    sub_22C591324();
    v190 = v189;
    v192 = *(v189 + 16);
    v191 = *(v189 + 24);
    v193 = v191 >> 1;
    v194 = v192 + 1;
    if (v191 >> 1 <= v192)
    {
      sub_22C369AB0(v191);
      sub_22C3871F8();
      v190 = v307;
      v191 = *(v307 + 24);
      v193 = v191 >> 1;
    }

    *(v190 + 16) = v194;
    *(v190 + 8 * v192 + 32) = v187;
    v195 = v192 + 2;
    if (v193 < (v192 + 2))
    {
      sub_22C369AB0(v191);
      sub_22C3871F8();
      v190 = v308;
    }

    *(v190 + 16) = v195;
    *(v190 + 8 * v194 + 32) = v184;
    sub_22C36A83C();
    v51 = swift_allocObject();
    *(v51 + 16) = 0xA7B203D20;
    *(v51 + 24) = 0xE500000000000000;
    v196 = *(v190 + 24);

    if ((v192 + 3) > (v196 >> 1))
    {
      sub_22C3871F8();
      v190 = v309;
    }

    *(v190 + 16) = v192 + 3;
    *(v190 + 8 * v195 + 32) = v51;
    a3 = sub_22C3DB9B0(v190);

    sub_22C369AEC();
    v70 = swift_allocObject();
    sub_22C369AEC();
    v197 = swift_allocObject();
    *(v197 + 16) = a3;
    *(v70 + 16) = v197;
    *(v344 + 6) = v70 | 0x6000000000000000;
    v343 = swift_initStackObject();
    *(v343 + 16) = xmmword_22C90F870;
    v365 = v188;
    sub_22C542E9C();
    sub_22C3B63D4();
    a2 = 0;
    v359 = v327 + 32;
    v198 = v365;
    while (1)
    {
      v199 = v357;
      if (v354 == a2)
      {
        break;
      }

      v85 = *(v357 + 16);
      if (a2 >= v85)
      {
        goto LABEL_89;
      }

      v200 = v353;
      v201 = *(v353 + 48);
      v202 = *(type metadata accessor for PromptTreeIdentifier.ContextSubItem(0) - 8);
      v203 = v199 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * a2;
      v204 = v351;
      sub_22C542C74(v203, v351, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
      v362 = v198;
      *(v204 + v201) = *(v359 + 8 * a2);
      v205 = v352;
      sub_22C3D7EEC(v204, v352, &qword_27D9BC048, &qword_22C91AC70);
      v206 = *(v200 + 48);
      v207 = v355;
      v208 = *(v355 + 48);
      v209 = v347;
      sub_22C542CD4(v205, v347, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
      *(v209 + v208) = *(v205 + v206);
      v210 = v209;
      v211 = v346;
      sub_22C3D7EEC(v210, v346, &qword_27D9BDBB0, &qword_22C91AC88);
      v212 = v349;
      v213 = v350;
      v214 = *(v350 + 48);
      *v349 = a2;
      v215 = v356;
      sub_22C3D7EEC(v211, v212 + v214, &qword_27D9BDBB0, &qword_22C91AC88);
      v216 = v348;
      v70 = &qword_27D9BDBA0;
      a3 = &qword_22C91AC78;
      sub_22C3D7EEC(v212, v348, &qword_27D9BDBA0, &qword_22C91AC78);
      v217 = *v216;
      v218 = v216 + *(v213 + 48);
      v219 = *(v218 + *(v207 + 48));
      v198 = v362;

      v51 = sub_22C5410C4(v217, v218, v219, v215);
      sub_22C36DD28(v216, &qword_27D9BDBA0, &qword_22C91AC78);
      v365 = v198;
      v221 = *(v198 + 16);
      v220 = *(v198 + 24);
      if (v221 >= v220 >> 1)
      {
        sub_22C377E58(v220);
        sub_22C3B63D4();
        v198 = v365;
      }

      *(v198 + 16) = v221 + 1;
      *(v198 + 8 * v221 + 32) = v51;
      ++a2;
    }

    v222 = sub_22C3DB9B0(v198);

    sub_22C369AEC();
    v223 = swift_allocObject();
    sub_22C369AEC();
    v224 = swift_allocObject();
    *(v224 + 16) = v222;
    *(v223 + 16) = v224;
    v225 = v343;
    *(v343 + 32) = v223 | 0x6000000000000000;
    sub_22C36A83C();
    v226 = swift_allocObject();
    if (v319)
    {
      v365 = 774778378;
      v366 = 0xE400000000000000;
      v227 = sub_22C90A49C();
    }

    else
    {
      v227 = 0;
      v228 = 0xE000000000000000;
    }

    v229 = v321;
    *(v226 + 16) = v227;
    *(v226 + 24) = v228;
    *(v225 + 40) = v226;
    v230 = sub_22C3DB9B0(v225);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v231 = swift_allocObject();
    sub_22C369AEC();
    v232 = swift_allocObject();
    *(v232 + 16) = v230;
    *(v231 + 16) = v232;
    v233 = v231 | 0x6000000000000000;
    v234 = swift_allocObject();
    *(v234 + 16) = 1;
    *(v234 + 24) = 1;
    v362 = sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v235 = swift_allocObject();
    *(v235 + 16) = v233;
    *(v234 + 32) = v235;
    v236 = v344;
    *(v344 + 7) = v234 | 0xA000000000000000;
    sub_22C36A83C();
    v237 = swift_allocObject();
    v365 = 32010;
    v366 = 0xE200000000000000;
    *(v237 + 16) = sub_22C90A49C();
    *(v237 + 24) = v238;
    *(v236 + 64) = v237;
    v239 = v324;
    *v324 = 0x64657463656C6573;
    *(v239 + 8) = 0xE800000000000000;
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v240 = *(v229 + 20);
    v241 = v360;
    (*(v360 + 16))(v239 + v240, v334, v361);
    sub_22C38A984();
    swift_storeEnumTagMultiPayload();
    sub_22C36A83C();
    v242 = swift_allocObject();
    *(v242 + 16) = 0;
    *(v242 + 24) = 0xE000000000000000;
    v243 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    v244 = swift_allocBox();
    v246 = v245;
    v247 = *(v243 + 48);
    sub_22C542CD4(v239, v245, type metadata accessor for PromptTreeIdentifier);
    sub_22C369AEC();
    v248 = swift_allocObject();
    *(v248 + 16) = v242;
    *(v246 + v247) = v248;
    *(v236 + 72) = v244 | 0x4000000000000000;
    v249 = sub_22C3DB9B0(v236);

    swift_setDeallocating();
    sub_22C58FFB0();
    (*(v241 + 8))(v334, v361);
    sub_22C369AEC();
    v250 = swift_allocObject();
    sub_22C369AEC();
    v251 = swift_allocObject();
    *(v251 + 16) = v249;
    *(v250 + 16) = v251;
    v252 = swift_allocBox();
    v254 = (v253 + *(v243 + 48));
    sub_22C542CD4(v335, v253, type metadata accessor for PromptTreeIdentifier);
    goto LABEL_87;
  }

  sub_22C58B318(v356, v74);
  if (sub_22C370B74(v74, 1, v355) == 1)
  {
    sub_22C36DD28(v74, &qword_27D9BDBA8, &qword_22C91AC80);
    a3 = v357;
    goto LABEL_5;
  }

  sub_22C3D7EEC(v74, v354, &qword_27D9BDBB0, &qword_22C91AC88);
  sub_22C903F7C();
  sub_22C4AB1F0(v333, &v365);
  v255 = sub_22C9063CC();
  v256 = sub_22C90AACC();
  if (os_log_type_enabled(v255, v256))
  {
    v257 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    v364 = v258;
    *v257 = 136315138;
    sub_22C4AB1F0(&v365, &v363);
    v259 = sub_22C90A1AC();
    v261 = v260;
    sub_22C48A6C0(&v365);
    v262 = sub_22C36F9F4(v259, v261, &v364);

    *(v257 + 4) = v262;
    _os_log_impl(&dword_22C366000, v255, v256, "Only one item present in context group %s. Unwrapping", v257, 0xCu);
    sub_22C36FF94(v258);
    MEMORY[0x2318B9880](v258, -1, -1);
    MEMORY[0x2318B9880](v257, -1, -1);
  }

  else
  {

    sub_22C48A6C0(&v365);
  }

  (*(v341 + 8))(v70, v344);
  v263 = v359;
  v264 = v345;
  v265 = v361;
  sub_22C36C640(v345, 2, 3, v361);
  sub_22C38A984();
  swift_storeEnumTagMultiPayload();
  v266 = swift_allocBox();
  v268 = v267;
  v269 = sub_22C37FE24();
  sub_22C542D34(v269, v270);
  sub_22C388FE8();
  v271 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  (*(v362 + 16))(v268, v84 + *(v271 + 20), v263);
  sub_22C542DA4(v84, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
  v272 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v264 + v272) = v266;
  (*(v360 + 104))(v264 + v272, *MEMORY[0x277D1D798], v265);
  swift_storeEnumTagMultiPayload();
  v273 = sub_22C37FE24();
  sub_22C542D34(v273, v274);
  sub_22C388FE8();
  v275 = *(v84 + *(v271 + 24));

  sub_22C542DA4(v84, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
  v276 = sub_22C37FE24();
  sub_22C542D34(v276, v277);
  sub_22C388FE8();
  v278 = *v84;

  sub_22C542DA4(v84, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
  v279 = sub_22C53E700(v278);

  sub_22C36A83C();
  v280 = swift_allocObject();
  *(v280 + 16) = 0;
  *(v280 + 24) = 0xE000000000000000;
  sub_22C374C14();
  sub_22C591324();
  v282 = v281;
  v284 = *(v281 + 16);
  v283 = *(v281 + 24);
  if (v284 >= v283 >> 1)
  {
    sub_22C369AB0(v283);
    sub_22C3871F8();
    v282 = v310;
  }

  *(v282 + 16) = v284 + 1;
  *(v282 + 8 * v284 + 32) = v280;
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v285 = swift_allocBox();
  sub_22C486784();
  v286 = v285 | 0x2000000000000000;
  v288 = *(v282 + 16);
  v287 = *(v282 + 24);
  if (v288 >= v287 >> 1)
  {
    sub_22C369AB0(v287);
    sub_22C3871F8();
    v282 = v311;
  }

  *(v282 + 16) = v288 + 1;
  *(v282 + 8 * v288 + 32) = v286;
  sub_22C36A83C();
  v289 = swift_allocObject();
  *(v289 + 16) = 2112800;
  *(v289 + 24) = 0xE300000000000000;
  v290 = *(v282 + 24);
  if ((v288 + 2) > (v290 >> 1))
  {
    sub_22C369AB0(v290);
    sub_22C3871F8();
    v282 = v312;
  }

  sub_22C370730();
  if ((v288 + 3) > (v291 >> 1))
  {
    sub_22C369AB0(v291);
    sub_22C3871F8();
    v282 = v313;
  }

  *(v282 + 16) = v288 + 3;
  *(v282 + 8 * (v288 + 2) + 32) = v275;
  sub_22C36A83C();
  v292 = swift_allocObject();
  *(v292 + 16) = 0;
  *(v292 + 24) = 0xE000000000000000;
  v293 = *(v282 + 24);

  if ((v288 + 4) > (v293 >> 1))
  {
    sub_22C3871F8();
    v282 = v314;
  }

  sub_22C370730();
  v295 = v288 + 5;
  if ((v288 + 5) > (v294 >> 1))
  {
    sub_22C369AB0(v294);
    sub_22C3871F8();
    v282 = v315;
  }

  *(v282 + 16) = v295;
  *(v282 + 8 * (v288 + 4) + 32) = v279;
  sub_22C36A83C();
  v296 = swift_allocObject();
  *(v296 + 16) = 0;
  *(v296 + 24) = 0xE000000000000000;
  v297 = *(v282 + 24);

  if ((v288 + 6) > (v297 >> 1))
  {
    sub_22C3871F8();
    v282 = v316;
  }

  *(v282 + 16) = v288 + 6;
  *(v282 + 8 * v295 + 32) = v296;
  v298 = sub_22C3DB9B0(v282);

  sub_22C36DD28(v354, &qword_27D9BDBB0, &qword_22C91AC88);
  sub_22C369AEC();
  v250 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v299 = swift_allocObject();
  *(v299 + 16) = v298;
  *(v250 + 16) = v299;
  v300 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v252 = swift_allocBox();
  v254 = (v301 + *(v300 + 48));
  sub_22C542CD4(v264, v301, type metadata accessor for PromptTreeIdentifier);
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
LABEL_87:
  sub_22C369AEC();
  v302 = swift_allocObject();
  *(v302 + 16) = v250 | 0x6000000000000000;
  *v254 = v302;
  return v252 | 0x4000000000000000;
}
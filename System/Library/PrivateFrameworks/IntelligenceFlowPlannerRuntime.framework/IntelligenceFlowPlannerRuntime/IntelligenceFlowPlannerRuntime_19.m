uint64_t sub_22C501A48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v110 = a4;
  v107 = a3;
  v90 = a2;
  v89 = a6;
  v8 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v114 = &v88 - v14;
  v15 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v98 = &v88 - v17;
  v97 = sub_22C3A5908(&qword_27D9BB110, &qword_22C90D9B0);
  v96 = *(v97 - 8);
  v18 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v99 = &v88 - v19;
  v113 = 0;
  v95 = type metadata accessor for DynamicEnumeration.Case(0);
  v106 = *(v95 - 8);
  v20 = *(v106 + 64);
  MEMORY[0x28223BE20](v95);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22C3A5908(&qword_27D9BD938, &qword_22C919B38);
  v23 = *(*(v117 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v117);
  v93 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v116 = &v88 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v105 = &v88 - v29;
  MEMORY[0x28223BE20](v28);
  v104 = &v88 - v30;
  v103 = sub_22C3A5908(&qword_27D9BD940, &qword_22C919B40);
  v31 = *(*(v103 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v103);
  v102 = (&v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v115 = (&v88 - v34);
  v35 = *a1;
  v36 = *(*a1 + 16);
  v37 = MEMORY[0x277D84F90];
  v101 = v8;
  if (v36)
  {
    v118 = a5;
    v119 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v38 = v119;
    v39 = (v35 + 32);
    v40 = *(v119 + 16);
    do
    {
      v42 = *v39;
      v39 += 5;
      v41 = v42;
      v119 = v38;
      v43 = *(v38 + 24);

      if (v40 >= v43 >> 1)
      {
        sub_22C3B63D4();
        v38 = v119;
      }

      *(v38 + 16) = v40 + 1;
      *(v38 + 8 * v40++ + 32) = v41;
      --v36;
    }

    while (v36);
    v44 = v38;
    a5 = v118;
    v37 = MEMORY[0x277D84F90];
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v121 = v37;
  swift_unknownObjectRetain();
  sub_22C3B735C(0, 0, 0);
  v45 = v121;
  v108 = a5 >> 1;
  v91 = (v9 + 8);
  swift_unknownObjectRetain();

  v47 = 0;
  v109 = v110 - (a5 >> 1);
  v94 = v22;
  v92 = v44;
  v100 = v13;
  while (1)
  {
    if (!(v109 + v47))
    {

      swift_unknownObjectRelease();
LABEL_25:

      result = swift_unknownObjectRelease();
      *v89 = v45;
      return result;
    }

    if ((v110 + v47) >= v108)
    {
      break;
    }

    v48 = *(v106 + 72);
    result = sub_22C50A6A4();
    v49 = *(v44 + 16);
    if (v47 == v49)
    {

      swift_unknownObjectRelease();
      sub_22C50A6FC();
      goto LABEL_25;
    }

    if (v47 >= v49)
    {
      goto LABEL_27;
    }

    v50 = *(v44 + 8 * v47 + 32);
    v51 = v117;
    v52 = *(v117 + 48);
    v53 = v105;
    sub_22C50B07C();
    *&v53[v52] = v50;
    sub_22C407C2C();
    v54 = v103;
    v55 = *(v103 + 48);
    v112 = v47;
    *v102 = v47;
    sub_22C407C2C();
    v56 = v115;
    sub_22C407C2C();
    v57 = *v56;
    v58 = *(v56 + *(v54 + 48) + *(v51 + 48));
    v59 = v116;
    result = sub_22C50A6A4();
    *&v59[*(v51 + 48)] = v58;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_28;
    }

    v111 = v45;
    v119 = v57 + 1;

    v60 = sub_22C90B47C();
    v62 = v61;

    v63 = sub_22C8124CC(1);
    v64 = v100;
    v65 = v101;
    v66 = v63;
    v68 = v67;
    sub_22C90306C();
    sub_22C50B118(&qword_27D9BC2F8, &qword_27D9BC170, &unk_22C912180);
    result = sub_22C90305C();
    if (v68 >> 14 < v66 >> 14)
    {
      goto LABEL_29;
    }

    v118 = v60;
    sub_22C90ACCC();
    v69 = v98;
    v70 = v113;
    sub_22C90309C();
    v71 = v91;
    if (v70)
    {

      v72 = *v71;
      v72(v64, v65);
      v73 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
      sub_22C36C640(v69, 1, 1, v73);
      v113 = 0;
    }

    else
    {
      v113 = 0;
      v72 = *v91;
      (*v91)(v64, v65);
    }

    v72(v114, v65);
    v74 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
    v75 = sub_22C370B74(v69, 1, v74);
    sub_22C36DD28(v69, &qword_27D9BC160, &unk_22C912170);
    if (v75 != 1)
    {
      v119 = 95;
      v120 = 0xE100000000000000;
      MEMORY[0x2318B7850](v118, v62);

      v62 = v120;
      v118 = v119;
    }

    v76 = v99;
    v77 = *(v97 + 64);
    v78 = v93;
    sub_22C3A7214();
    v79 = v117;
    v80 = *&v78[*(v117 + 48)];
    sub_22C50A6FC();
    sub_22C407C2C();
    v81 = *&v78[*(v79 + 48)];

    v82 = *(v95 + 20);
    v83 = sub_22C901FAC();
    (*(*(v83 - 8) + 16))(v76 + v77, &v78[v82], v83);
    sub_22C50A6FC();
    *v76 = v118;
    v76[1] = v62;
    v76[2] = v80;
    sub_22C36DD28(v115, &qword_27D9BD940, &qword_22C919B40);
    v45 = v111;
    v121 = v111;
    v85 = *(v111 + 16);
    v84 = *(v111 + 24);
    if (v85 >= v84 >> 1)
    {
      sub_22C3B735C(v84 > 1, v85 + 1, 1);
      v45 = v121;
    }

    *(v45 + 16) = v85 + 1;
    v86 = v45 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v87 = *(v96 + 72);
    result = sub_22C407C2C();
    v47 = v112 + 1;
    v44 = v92;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22C5024E4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB110, &qword_22C90D9B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v63 - v7);
  v9 = *a1;
  v10 = *(a2 + 16);
  if (v10)
  {
    v63 = *a1;
    v70 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v9 = 0;
    v66 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = v70;
    v12 = *(v5 + 72);
    v64 = v10;
    v65 = v12;
    v68 = v8;
    while (1)
    {
      v67 = v11;
      sub_22C3A7214();
      v13 = swift_allocObject();
      *(v13 + 16) = 538976288;
      *(v13 + 24) = 0xE400000000000000;
      sub_22C591324();
      v15 = v14;
      v16 = *(v14 + 16);
      v17 = v16 + 1;
      if (v16 >= *(v14 + 24) >> 1)
      {
        sub_22C591324();
        v15 = v39;
      }

      *(v15 + 16) = v17;
      *(v15 + 8 * v16 + 32) = v13;
      v19 = *v8;
      v18 = v8[1];
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v18;
      v21 = *(v15 + 24);
      v22 = v16 + 2;

      if ((v16 + 2) > (v21 >> 1))
      {
        sub_22C591324();
        v15 = v40;
      }

      *(v15 + 16) = v22;
      *(v15 + 8 * v17 + 32) = v20;
      v23 = swift_allocObject();
      *(v23 + 16) = 2112800;
      *(v23 + 24) = 0xE300000000000000;
      v24 = v16 + 3;
      v25 = v68;
      if ((v16 + 3) > *(v15 + 24) >> 1)
      {
        sub_22C591324();
        v15 = v41;
      }

      *(v15 + 16) = v24;
      *(v15 + 8 * v22 + 32) = v23;
      v26 = *(v25 + 16);
      v27 = v16 + 4;
      if ((v16 + 4) > *(v15 + 24) >> 1)
      {
        sub_22C591324();
        v15 = v42;
      }

      *(v15 + 16) = v27;
      *(v15 + 8 * v24 + 32) = v26;
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0xE000000000000000;
      v29 = *(v15 + 24);
      v30 = v16 + 5;

      if ((v16 + 5) > (v29 >> 1))
      {
        sub_22C591324();
        v15 = v43;
      }

      *(v15 + 16) = v30;
      *(v15 + 8 * v27 + 32) = v28;
      v69 = MEMORY[0x277D84F90];
      sub_22C90B01C();
      if (v30 < 1)
      {
        break;
      }

      v31 = 32;
      do
      {
        v32 = *(v15 + v31);
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        *(swift_allocObject() + 16) = v32;

        sub_22C90AFEC();
        v33 = *(v69 + 16);
        sub_22C90B02C();
        sub_22C90B03C();
        sub_22C90AFFC();
        v31 += 8;
        --v30;
      }

      while (v30);
      v34 = v69;
      v35 = swift_allocObject();
      *(v35 + 16) = v34;

      v36 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v37 = swift_allocObject();
      *(v37 + 16) = v35;
      *(v36 + 16) = v37;
      v8 = v68;
      sub_22C36DD28(v68, &qword_27D9BB110, &qword_22C90D9B0);
      v11 = v67;
      v70 = v67;
      v38 = *(v67 + 16);
      if (v38 >= *(v67 + 24) >> 1)
      {
        sub_22C3B63D4();
        v11 = v70;
      }

      ++v9;
      *(v11 + 16) = v38 + 1;
      *(v11 + 8 * v38 + 32) = v36 | 0x6000000000000000;
      if (v9 == v64)
      {
        v9 = v63;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    sub_22C591324();
    v45 = v58;
    v46 = *(v58 + 24) >> 1;
    goto LABEL_22;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_21:
  v16 = sub_22C47D738(10, 0xE100000000000000, v11);

  v15 = swift_allocObject();
  *(v15 + 16) = 0x207373616C63;
  *(v15 + 24) = 0xE600000000000000;
  sub_22C591324();
  v45 = v44;
  v30 = *(v44 + 16);
  v46 = *(v44 + 24) >> 1;
  v26 = v30 + 1;
  if (v46 <= v30)
  {
    goto LABEL_32;
  }

LABEL_22:
  *(v45 + 16) = v26;
  *(v45 + 8 * v30 + 32) = v15;
  v47 = v30 + 2;
  if (v46 < v30 + 2)
  {
    sub_22C591324();
    v45 = v59;
  }

  *(v45 + 16) = v47;
  *(v45 + 8 * v26 + 32) = v9;
  v48 = swift_allocObject();
  *(v48 + 16) = 0xA3A296D756E4528;
  *(v48 + 24) = 0xE800000000000000;
  v49 = *(v45 + 24);
  v50 = v30 + 3;

  if (v30 + 3 > (v49 >> 1))
  {
    sub_22C591324();
    v45 = v60;
  }

  *(v45 + 16) = v50;
  *(v45 + 8 * v47 + 32) = v48;
  v51 = v30 + 4;
  if (v30 + 4 > *(v45 + 24) >> 1)
  {
    sub_22C591324();
    v45 = v61;
  }

  *(v45 + 16) = v51;
  *(v45 + 8 * v50 + 32) = v16;
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = 0xE000000000000000;
  v53 = *(v45 + 24);

  if (v30 + 5 > (v53 >> 1))
  {
    sub_22C591324();
    v45 = v62;
  }

  *(v45 + 16) = v30 + 5;
  *(v45 + 8 * v51 + 32) = v52;
  v54 = sub_22C3DB9B0(v45);

  v55 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  *(v55 + 16) = v56;
  return v55 | 0x6000000000000000;
}

void sub_22C502BF8(uint64_t a1@<X8>)
{
  v3 = v1[9];
  sub_22C3766E0(v1 + 5, v1[8]);
  sub_22C50B688();
  v4 = sub_22C37B988();
  v5(v4);
  sub_22C37B988();
  sub_22C5013EC();
  if (__dst[5])
  {
    sub_22C456CE4(__dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5]);
    *a1 = LOBYTE(__dst[0]);
    sub_22C37274C();
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
    sub_22C502D5C(__src, &__src[5], a1);
    memcpy(__dst, __src, 0x50uLL);
    sub_22C36DD28(__dst, &qword_27D9BD8F8, &qword_22C91A3B0);
    *(a1 + 40) = 0;
  }
}

uint64_t sub_22C502D5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
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

void sub_22C502ED4()
{
  sub_22C36BA7C();
  v4 = v3;
  v5 = sub_22C3727F4();
  v6 = type metadata accessor for PromptTreeIdentifier(v5);
  v7 = sub_22C36985C(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C50B530();
  v10 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C37FDDC();
  sub_22C90915C();
  v14 = sub_22C90993C();
  sub_22C36D0A8(v2, 1, v14);
  if (v15)
  {
    sub_22C36DD28(v2, &qword_27D9BC390, &qword_22C912AC0);
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v16 = sub_22C9098BC();
    v18 = v17;
    sub_22C36BBA8(v14);
    v20 = *(v19 + 8);
    v21 = sub_22C374C34();
    v22(v21);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  *(v23 + 24) = v18;
  *(v23 + 32) = 3;
  *v1 = v23;
  v24 = *MEMORY[0x277D1D7E8];
  v25 = sub_22C902D0C();
  sub_22C36985C(v25);
  v27 = *(v26 + 104);
  v27(v1, v24, v25);
  sub_22C36C640(v1, 0, 3, v25);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v28 = sub_22C901FAC();
  v29 = swift_allocBox();
  v31 = v30;
  v32 = type metadata accessor for DynamicEnumeration.Case(0);
  (*(*(v28 - 8) + 16))(v31, v4 + *(v32 + 20), v28);
  v33 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v1 + v33) = v29;
  v27((v1 + v33), *MEMORY[0x277D1D798], v25);
  sub_22C37335C();
  swift_storeEnumTagMultiPayload();
  sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  swift_allocBox();
  sub_22C381A40();
  sub_22C50A6A4();
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v34 = swift_allocBox();
  sub_22C486784();
  sub_22C36D29C();
  sub_22C50A6FC();
  sub_22C36D2A8();
  v35 = swift_allocObject();
  sub_22C37B2A4(v35, 3);
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v36 = swift_allocObject();
  *(v36 + 16) = v34 | 0x2000000000000000;
  *(v35 + 32) = v36;
  sub_22C369AEC();
  v37 = swift_allocObject();
  *(v37 + 16) = v35 | 0xA000000000000000;
  *(v4 + v31) = v37;
  *v0 = v6 | 0x4000000000000000;
  *(v0 + 40) = 0;
  sub_22C37274C();
  sub_22C36CC48();
}

void sub_22C5031F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C503328();
  v4 = v20[0];
  v5 = v20[1];
  v6 = v20[2];
  v17 = v21;
  v18 = v22;
  v7 = v23;
  sub_22C3A7214();
  if (!v21)
  {
    sub_22C36DD28(v20, &qword_27D9BD890, &unk_22C919A80);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:

    v15 = sub_22C36D29C();
    sub_22C456CE4(v15, v16, v6, v17, v18, 0);
    goto LABEL_6;
  }

  v8 = sub_22C374168(v20, v21);
  sub_22C533C80(a1, *v8, v19);
  v9 = v19[0];
  v10 = v19[1];
  v11 = v19[2];
  v12 = v19[3];
  sub_22C36FF94(v20);
  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_22C36FC2C();
  sub_22C456D48(v13, v14);
  v9 = v5;
  v10 = v6;
  v11 = v17;
  v12 = v18;
LABEL_6:
  *a2 = v4;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v7;
}

void sub_22C503328()
{
  sub_22C36BA7C();
  sub_22C3727F4();
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C50B3FC();
  v9 = sub_22C9094EC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C37FDDC();
  v15 = v12[2];
  v16 = sub_22C36CA88();
  v17(v16);
  v18 = v12[11];
  v19 = sub_22C3806B8();
  v21 = v20(v19);
  if (v21 == *MEMORY[0x277D72C50])
  {
    v22 = v12[12];
    v23 = sub_22C3806B8();
    v24(v23);
    v25 = *v2;
    sub_22C36A83C();
    v26 = swift_allocObject();
    v27 = v26;
    if (v25 == 22)
    {
      v71 = 0x6D6572757361654DLL;
      v72 = 0xEB00000000746E65;
      *(v26 + 16) = sub_22C90A49C();
      *(v27 + 24) = v28;
      *v0 = v27;
    }

    else
    {
      *(v26 + 16) = 0x6D6572757361654DLL;
      *(v26 + 24) = 0xEF74696E55746E65;
      sub_22C591324();
      v31 = v30;
      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_22C369AB0(v32);
        sub_22C591324();
        v31 = v61;
      }

      *(v31 + 16) = v33 + 1;
      *(v31 + 8 * v33 + 32) = v27;
      LOBYTE(v71) = v25;
      v34 = sub_22C90A1AC();
      v36 = v35;
      sub_22C36A83C();
      v37 = swift_allocObject();
      *(v37 + 16) = v34;
      *(v37 + 24) = v36;
      v38 = *(v31 + 16);
      v39 = *(v31 + 24);

      if (v38 >= v39 >> 1)
      {
        sub_22C375CCC();
        sub_22C591324();
        v31 = v62;
      }

      *(v31 + 16) = v38 + 1;
      *(v31 + 8 * v38 + 32) = v37;

      sub_22C36A83C();
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = 0xE000000000000000;
      v42 = *(v31 + 16);
      v41 = *(v31 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_22C369AB0(v41);
        sub_22C591324();
        v31 = v63;
      }

      *(v31 + 16) = v42 + 1;
      *(v31 + 8 * v42 + 32) = v40;
      v43 = sub_22C3DB9B0(v31);

      sub_22C369AEC();
      v44 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v45 = swift_allocObject();
      *(v45 + 16) = v43;
      *(v44 + 16) = v45;
      *v0 = v44 | 0x6000000000000000;
    }

    goto LABEL_17;
  }

  if (v21 == *MEMORY[0x277D72CC8])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v29 = 1701736270;
LABEL_15:
    v46 = 0xE400000000000000;
LABEL_16:
    v71 = v29;
    v72 = v46;
    *(v1 + 16) = sub_22C90A49C();
    *(v1 + 24) = v47;
    *v0 = v1;
LABEL_17:
    sub_22C37274C();
    *(v0 + 40) = 0;
    goto LABEL_18;
  }

  if (v21 == *MEMORY[0x277D72CB0])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v29 = 1819242338;
    goto LABEL_15;
  }

  if (v21 == *MEMORY[0x277D72CA0])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v29 = 7630441;
LABEL_29:
    v46 = 0xE300000000000000;
    goto LABEL_16;
  }

  if (v21 == *MEMORY[0x277D72CD0] || v21 == *MEMORY[0x277D72CE8])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v29 = 0x74616F6C66;
    v46 = 0xE500000000000000;
    goto LABEL_16;
  }

  if (v21 == *MEMORY[0x277D72CE0])
  {
LABEL_28:
    sub_22C36A83C();
    v1 = swift_allocObject();
    v29 = 7500915;
    goto LABEL_29;
  }

  if (v21 == *MEMORY[0x277D72CB8])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v29 = 1702125892;
    goto LABEL_15;
  }

  if (v21 == *MEMORY[0x277D72C70])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v29 = 0x706D6F4365746144;
    v46 = 0xEE0073746E656E6FLL;
    goto LABEL_16;
  }

  if (v21 == *MEMORY[0x277D72CA8])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v29 = 5001813;
    goto LABEL_29;
  }

  if (v21 != *MEMORY[0x277D72C40])
  {
    if (v21 == *MEMORY[0x277D72C88] || v21 == *MEMORY[0x277D72C68])
    {
      goto LABEL_28;
    }

    if (v21 == *MEMORY[0x277D72C60])
    {
      sub_22C36A83C();
      v1 = swift_allocObject();
      v29 = 0x4D746E656D796150;
      v46 = 0xED0000646F687465;
      goto LABEL_16;
    }

    if (v21 == *MEMORY[0x277D72D00])
    {
      sub_22C36A83C();
      v1 = swift_allocObject();
      v29 = 0x6D6563616C504C43;
      v46 = 0xEB000000006B7261;
      goto LABEL_16;
    }

    if (v21 == *MEMORY[0x277D72CD8])
    {
      sub_22C36A83C();
      swift_allocObject();
      sub_22C50B674();
      v29 = v64 & 0xFFFFFFFFFFFFLL | 0x6550000000000000;
      v46 = 0xEC0000006E6F7372;
      goto LABEL_16;
    }

    if (v21 != *MEMORY[0x277D72CC0])
    {
      if (v21 == *MEMORY[0x277D72C98])
      {
        sub_22C36A83C();
        v66 = swift_allocObject();
        *(v66 + 16) = 0xD000000000000011;
        *(v66 + 24) = 0x800000022C931D20;
        *v0 = v66;
        goto LABEL_17;
      }

      if (v21 == *MEMORY[0x277D72C80])
      {
        goto LABEL_37;
      }

      if (v21 != *MEMORY[0x277D72C48])
      {
        v67 = v12[1];
        v68 = sub_22C3806B8();
        v69(v68);
        goto LABEL_37;
      }
    }

    sub_22C36A83C();
    swift_allocObject();
    sub_22C50B674();
    v29 = v65 & 0xFFFFFFFFFFFFLL | 0x6946000000000000;
    v46 = 0xEA0000000000656CLL;
    goto LABEL_16;
  }

LABEL_37:
  sub_22C903F7C();
  sub_22C4BECC0(v1, &v71);
  v49 = sub_22C9063CC();
  v50 = sub_22C90AACC();
  if (sub_22C370048(v50))
  {
    v51 = sub_22C36FB44();
    v52 = sub_22C370060();
    v70[5] = v52;
    *v51 = 136315138;
    sub_22C4BECC0(&v71, v70);
    sub_22C90A1AC();
    sub_22C50B4BC();
    sub_22C4BF394(&v71);
    v53 = sub_22C3726C4();
    v56 = sub_22C36F9F4(v53, v54, v55);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_22C366000, v49, v50, "%s unknown: Unsupported type in action", v51, 0xCu);
    sub_22C36FF94(v52);
    sub_22C370510();
    sub_22C3699EC();
  }

  else
  {

    sub_22C4BF394(&v71);
  }

  v58 = *(v6 + 8);
  v59 = sub_22C36BC58();
  v60(v59);
  sub_22C37D980();
LABEL_18:
  sub_22C36CC48();
}

void sub_22C503B44()
{
  sub_22C36BA7C();
  v2 = sub_22C90952C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C377D60();
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = sub_22C379FC8();
  sub_22C374168(v10, v11);
  sub_22C9090AC();
  v12 = sub_22C381274();
  v13(v12);
  (*(v5 + 8))(v1, v2);
  sub_22C38649C();
  sub_22C50B6B4();
  sub_22C36DD28(&v14, &qword_27D9BAB08, &qword_22C91A110);
  sub_22C36CC48();
}

uint64_t sub_22C503C58(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  sub_22C90915C();
  v6 = sub_22C90993C();
  if (sub_22C370B74(v5, 1, v6) == 1)
  {
    sub_22C36DD28(v5, &qword_27D9BC390, &qword_22C912AC0);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0xE000000000000000;
    v8 = v7;
  }

  else
  {
    v9 = sub_22C9098BC();
    v11 = v10;
    (*(*(v6 - 8) + 8))(v5, v6);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = 2;
    *(v13 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v13 + 32) = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = 3;
    *(v15 + 24) = 1;
    v16 = swift_allocObject();
    *(v16 + 16) = v13 | 0xA000000000000000;
    *(v15 + 32) = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = 4;
    *(v17 + 24) = 1;
    v18 = swift_allocObject();
    *(v18 + 16) = v15 | 0xA000000000000000;
    *(v17 + 32) = v18;
    v8 = v17 | 0xA000000000000000;
  }

  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90D070;
  *(inited + 32) = a1;
  v20 = swift_allocObject();
  v28 = 40;
  v29 = 0xE100000000000000;

  *(v20 + 16) = sub_22C90A49C();
  *(v20 + 24) = v21;
  *(inited + 40) = v20;
  *(inited + 48) = v8;
  v22 = swift_allocObject();
  v28 = 41;
  v29 = 0xE100000000000000;
  *(v22 + 16) = sub_22C90A49C();
  *(v22 + 24) = v23;
  *(inited + 56) = v22;
  v24 = sub_22C3DB9B0(inited);

  swift_setDeallocating();
  sub_22C58FFB0();
  v25 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v25 + 16) = v26;
  return v25 | 0x6000000000000000;
}

void sub_22C503FD4()
{
  sub_22C36BA7C();
  v2 = sub_22C90952C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C377D60();
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = sub_22C379FC8();
  sub_22C374168(v10, v11);
  sub_22C9090AC();
  v12 = sub_22C381274();
  v13(v12);
  (*(v5 + 8))(v1, v2);
  sub_22C38649C();
  sub_22C50B6B4();
  sub_22C36DD28(&v14, &qword_27D9BAB08, &qword_22C91A110);
  sub_22C36CC48();
}

uint64_t sub_22C504100(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  sub_22C9090DC();
  v6 = sub_22C90993C();
  if (sub_22C370B74(v5, 1, v6) == 1)
  {
    sub_22C36DD28(v5, &qword_27D9BC390, &qword_22C912AC0);
    v7 = swift_allocObject();
    *(v7 + 16) = 10536;
    *(v7 + 24) = 0xE200000000000000;
    v8 = sub_22C47D60C(a1, v7);
  }

  else
  {
    sub_22C9098BC();
    (*(*(v6 - 8) + 8))(v5, v6);
    v9 = sub_22C90A2AC();
    v11 = v10;

    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = 3;
    *(v13 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v13 + 32) = v14;
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90D070;
    *(inited + 32) = a1;
    v16 = swift_allocObject();
    v24 = 40;
    v25 = 0xE100000000000000;

    *(v16 + 16) = sub_22C90A49C();
    *(v16 + 24) = v17;
    *(inited + 40) = v16;
    *(inited + 48) = v13 | 0xA000000000000000;
    v18 = swift_allocObject();
    v24 = 41;
    v25 = 0xE100000000000000;

    *(v18 + 16) = sub_22C90A49C();
    *(v18 + 24) = v19;
    *(inited + 56) = v18;
    v20 = sub_22C3DB9B0(inited);

    swift_setDeallocating();
    sub_22C58FFB0();
    v21 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v21 + 16) = v22;
    return v21 | 0x6000000000000000;
  }

  return v8;
}

void sub_22C50443C()
{
  sub_22C36BA7C();
  v244 = v1;
  v243 = v3;
  v241 = v4;
  v239 = v5;
  v242 = v6;
  v8 = v7;
  v245 = v9;
  v10 = sub_22C9063DC();
  v11 = sub_22C36A7A4(v10, &v247[4]);
  v231 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  sub_22C3698F8(v17);
  v18 = sub_22C9091CC();
  v19 = sub_22C36A7A4(v18, &v247[1] + 8);
  v227 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  sub_22C3698F8(v24);
  v25 = sub_22C90906C();
  v26 = sub_22C36A7A4(v25, &v249);
  v234 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  sub_22C3698F8(v30);
  v31 = sub_22C90952C();
  v32 = sub_22C36A7A4(v31, v252);
  v237 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698A8();
  sub_22C3698F8(v36);
  v37 = sub_22C90931C();
  v38 = sub_22C369824(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C387B64();
  v44 = sub_22C9093BC();
  v45 = sub_22C369824(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C369838();
  sub_22C38B184();
  v50 = sub_22C9090BC();
  v51 = sub_22C369824(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C369838();
  v58 = v57 - v56;
  v59 = v47[2];
  v225[2] = v8;
  v59(v0, v8, v44);
  v60 = v47[11];
  v61 = sub_22C36BAFC();
  v63 = v62(v61);
  if (v63 == *MEMORY[0x277D72A58])
  {
    v64 = v47[12];
    v65 = sub_22C36BAFC();
    v66(v65);
    v234 = *v0;
    v67 = swift_projectBox();
    v233 = v40[2];
    v233(v2, v67, v37);
    v68 = v244[8];
    v69 = v244[9];
    sub_22C3766E0(v244 + 5, v68);
    v70 = v241;
    (*(v69 + 8))(v247, v2, v242 & 1, v241, v243, v68, v69);
    v235 = *(&v247[0] + 1);
    v243 = *&v247[0];
    v72 = *(&v247[1] + 1);
    v71 = *&v247[1];
    v73 = *&v247[2];
    v242 = BYTE8(v247[2]);
    v74 = v240;
    v75 = sub_22C36FC2C();
    (v233)(v75);
    v76 = v40[11];
    v77 = sub_22C50B578();
    v79 = v78(v77);
    v80 = v244;
    if (v79 == *MEMORY[0x277D72988] || v79 == *MEMORY[0x277D72978] || v79 == *MEMORY[0x277D729A8] || v79 == *MEMORY[0x277D729C0])
    {
      goto LABEL_6;
    }

    v142 = v79 == *MEMORY[0x277D729B8];
    v233 = v71;
    if (v142)
    {
      v120 = v40[1];
      v121 = sub_22C3726C4();
      v120(v121);
      v122 = sub_22C50B578();
      v120(v122);
      if (v242)
      {
        sub_22C38012C();

        v123 = v245;
        v124 = v235;
        *v245 = v243;
        *(v123 + 8) = v124;
        *(v123 + 16) = v233;
        *(v123 + 24) = v72;
        *(v123 + 32) = v73;
LABEL_46:
        *(v123 + 40) = 1;
        goto LABEL_47;
      }

      sub_22C36D2A8();
      v170 = swift_allocObject();
      sub_22C37B2A4(v170, 2);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v171 = swift_allocObject();
      *(v171 + 16) = v243;
      *(v170 + 32) = v171;
      v172 = v235;
      v173 = v233;
      sub_22C456C94(v235, v233);

      sub_22C50B478();
      sub_22C50B46C();
      sub_22C456CE4(v174, v175, v176, v177, v178, v179);
      v180 = v245;
      *v245 = v170 | 0xA000000000000000;
      *(v180 + 8) = v172;
      *(v180 + 16) = v173;
      *(v180 + 24) = v72;
      *(v180 + 32) = v73;
      *(v180 + 40) = 0;
    }

    else
    {
      v142 = v79 == *MEMORY[0x277D72990] || v79 == *MEMORY[0x277D72958];
      if (!v142 && v79 != *MEMORY[0x277D72980])
      {
        if (v79 == *MEMORY[0x277D72968])
        {
LABEL_49:
          v184 = v40[1];
          v185 = sub_22C3726C4();
          v184(v185);
          v186 = sub_22C50B578();
          v184(v186);
          v71 = v233;
          goto LABEL_7;
        }

        if (v79 != *MEMORY[0x277D72940])
        {
          if (v79 == *MEMORY[0x277D72950])
          {
            goto LABEL_49;
          }

          v187 = v79 == *MEMORY[0x277D72948] || v79 == *MEMORY[0x277D729D0];
          v188 = v187 || v79 == *MEMORY[0x277D729B0];
          v189 = v188 || v79 == *MEMORY[0x277D72998];
          if (!v189 && v79 != *MEMORY[0x277D72970])
          {
            if (v79 == *MEMORY[0x277D72960])
            {
LABEL_66:
              v191 = v40[1];
              v192 = sub_22C3726C4();
              v191(v192);
              v193 = sub_22C37EFC0();
              sub_22C456CE4(v193, v235, v71, v72, v73, v242);
              v194 = sub_22C50B578();
              v191(v194);
              sub_22C38012C();
LABEL_44:

              goto LABEL_45;
            }

            if (v79 != *MEMORY[0x277D72938])
            {
              if (v79 == *MEMORY[0x277D729A0])
              {
LABEL_6:
                v81 = v40[1];
                v82 = sub_22C3726C4();
                v83(v82);
LABEL_7:
                sub_22C38012C();

                v84 = v245;
                v85 = v235;
                *v245 = v243;
                *(v84 + 8) = v85;
                *(v84 + 16) = v71;
                *(v84 + 24) = v72;
                *(v84 + 32) = v73;
                *(v84 + 40) = v242;
                goto LABEL_47;
              }

              goto LABEL_66;
            }
          }
        }
      }

      v232 = v2;
      v144 = v40[1];
      v240 = v37;
      v230 = v144;
      v144(v74, v37);
      v145 = v243;
      if ((v242 & 1) == 0)
      {
        *&v247[0] = MEMORY[0x277D84F90];
        v2 = v243;
        sub_22C50B46C();
        sub_22C456C30(v146, v147, v148, v149, v150, v151);
        v152 = sub_22C441720();
        sub_22C456C94(v152, v153);
        sub_22C496A94();
        v155 = v154;

        if (v155)
        {

          sub_22C50B4E8();
          sub_22C50B46C();
          sub_22C456CE4(v156, v157, v158, v159, v160, v161);
          v145 = v243;
        }

        else
        {
          sub_22C36D2A8();
          v195 = swift_allocObject();
          sub_22C37B2A4(v195, 2);
          sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
          sub_22C369AEC();
          v196 = swift_allocObject();
          *(v196 + 16) = v243;
          *(v195 + 32) = v196;

          sub_22C50B4E8();
          sub_22C50B46C();
          sub_22C456CE4(v197, v198, v199, v200, v201, v202);
          v145 = v195 | 0xA000000000000000;
        }
      }

      v231 = v73;
      v203 = v72;
      v204 = v80[3];
      v205 = v80[4];
      sub_22C374168(v80, v204);
      sub_22C37443C(&v250);
      sub_22C90935C();
      (*(v205 + 24))(&v248, v2, v239, v70, v204, v205);
      sub_22C36FB04(&v251);
      v206(v2, v238);
      v207 = v248;
      if (v252[8])
      {
        sub_22C50B5DC();
LABEL_72:
        v212 = sub_22C37EFC0();
        sub_22C456CE4(v212, v2, v233, v203, v231, v242);
        v213 = sub_22C383CCC();
        sub_22C456CE4(v213, v214, v233, v203, v231, v242);
        v215 = sub_22C50B53C();
        v216(v215);
        sub_22C38012C();

        v123 = v245;
        *v245 = v207;
        *(v123 + 8) = 0u;
        *(v123 + 24) = 0u;
        goto LABEL_46;
      }

      sub_22C50B5DC();
      if (v242)
      {
        sub_22C456CE4(v207, v208, v209, v210, v211, 0);
        v242 = 1;
        LOBYTE(v207) = v145;
        goto LABEL_72;
      }

      *&v246[0] = v207;
      *(&v246[0] + 1) = v208;
      *&v246[1] = v209;
      *(&v246[1] + 1) = v210;
      *&v246[2] = v211;
      *(&v246[2] + 1) = v145;
      *&v246[3] = v2;
      *(&v246[3] + 1) = v233;
      *&v246[4] = v203;
      *(&v246[4] + 1) = v231;
      sub_22C5056B8(v246, &v246[2] + 1, v245);
      sub_22C37EFC0();
      sub_22C50B46C();
      sub_22C456CE4(v217, v218, v219, v220, v221, v222);
      memcpy(v247, v246, sizeof(v247));
      sub_22C36DD28(v247, &qword_27D9BD8F8, &qword_22C91A3B0);
      v223 = sub_22C50B53C();
      v224(v223);
      *(v245 + 40) = 0;
    }

    sub_22C38012C();
LABEL_14:

    goto LABEL_47;
  }

  v86 = v242;
  v87 = v243;
  v88 = v244;
  if (v63 == *MEMORY[0x277D729E8])
  {
    v89 = v47[12];
    v90 = sub_22C36BAFC();
    v91(v90);
    v92 = sub_22C50B6D4();
    (*(v53 + 16))(v58, v92, v50);

    v93 = v244[3];
    v94 = v244[4];
    sub_22C374168(v244, v93);
    sub_22C9090AC();
    (*(v94 + 24))(v246, v236, v239, v241, v93, v94);
    sub_22C36FB04(&v251);
    v96 = v95(v236, v238);
    v247[0] = v246[0];
    v247[1] = v246[1];
    *(&v247[1] + 9) = *(&v246[1] + 9);
    MEMORY[0x28223BE20](v96);
    v225[-2] = v58;
    sub_22C54DBA0(sub_22C50B008, v245);
    sub_22C36DD28(v247, &qword_27D9BAB08, &qword_22C91A110);
    v97 = *(v53 + 8);
    v98 = sub_22C50B648();
    v99(v98);
    goto LABEL_47;
  }

  if (v63 == *MEMORY[0x277D72A38])
  {
LABEL_11:
    v100 = v47[1];
    v101 = sub_22C36BAFC();
    v102(v101);
LABEL_45:
    v123 = v245;
    *(v245 + 32) = 0;
    *v123 = 0u;
    *(v123 + 16) = 0u;
    goto LABEL_46;
  }

  if (v63 == *MEMORY[0x277D729E0])
  {
    v103 = v47[12];
    v104 = sub_22C36BAFC();
    v105(v104);
    v106 = sub_22C50B6D4();
    v107 = v234;
    v108 = v233;
    v109 = v235;
    (*(v234 + 16))(v233, v106, v235);
    v110 = sub_22C90905C();
    MEMORY[0x28223BE20](v110);
    v225[-6] = v88;
    LOBYTE(v225[-5]) = v86 & 1;
    v111 = v241;
    v225[-4] = v239;
    v225[-3] = v111;
    v225[-2] = v87;
    v112 = sub_22C3B2C0C(sub_22C50AFCC, &v225[-8], v110);

    sub_22C47F330(v112, v245);

    (*(v107 + 8))(v108, v109);
    goto LABEL_14;
  }

  if (v63 == *MEMORY[0x277D72A30])
  {
    goto LABEL_16;
  }

  if (v63 == *MEMORY[0x277D72A40])
  {
    v125 = v47[12];
    v126 = sub_22C36BAFC();
    v127(v126);
    v128 = sub_22C50B6D4();
    v129 = v227;
    v130 = *(v227 + 16);
    v131 = v228;
    v130(v229, v128, v228);
    sub_22C903F7C();
    v132 = v226;
    v130(v226, v229, v228);
    v133 = sub_22C9063CC();
    v134 = sub_22C90AADC();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = sub_22C383050();
      *&v247[0] = swift_slowAlloc();
      *v135 = 136315394;
      *(v135 + 4) = sub_22C50B3C4("reference(_:detailLevel:direction:renderingState:identifierResolvedAST:)");
      *(v135 + 12) = 2080;
      sub_22C9091AC();
      v136 = *(v129 + 8);
      v136(v132, v131);
      v137 = sub_22C379FC8();
      v140 = sub_22C36F9F4(v137, v138, v139);

      *(v135 + 14) = v140;
      _os_log_impl(&dword_22C366000, v133, v134, "[%s] ❗️Could not render deferred value: %s. Skipping.", v135, 0x16u);
      swift_arrayDestroy();
      sub_22C370510();
      sub_22C3699EC();

      sub_22C36FB04(&v247[3] + 8);
      sub_22C50B668();
      v141();
      v136(v229, v131);
    }

    else
    {

      v181 = *(v227 + 8);
      v182 = sub_22C3726C4();
      v181(v182);
      sub_22C36FB04(&v247[3] + 8);
      sub_22C50B668();
      v183();
      (v181)(v229, v228);
    }

    goto LABEL_44;
  }

  if (v63 == *MEMORY[0x277D729F8])
  {
    goto LABEL_11;
  }

  if (v63 == *MEMORY[0x277D72A60])
  {
LABEL_16:
    v113 = v47[1];
    v114 = sub_22C36BAFC();
    v115(v114);
    sub_22C903F7C();
    v116 = sub_22C9063CC();
    v117 = sub_22C90AACC();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = sub_22C36FB44();
      *&v247[0] = sub_22C370060();
      *v118 = 136315138;
      *(v118 + 4) = sub_22C50B3C4("reference(_:detailLevel:direction:renderingState:identifierResolvedAST:)");
      _os_log_impl(&dword_22C366000, v116, v117, "[%s] Unsupported type: skipping event", v118, 0xCu);
      sub_22C38652C();
      sub_22C3699EC();
    }

    sub_22C36FB04(&v247[3] + 8);
    sub_22C50B668();
    v119();
    goto LABEL_45;
  }

  sub_22C37443C(&v246[4] + 8);
  sub_22C903F7C();
  v162 = sub_22C9063CC();
  v163 = sub_22C90AACC();
  if (sub_22C370048(v163))
  {
    v164 = sub_22C36FB44();
    v165 = sub_22C370060();
    *&v247[0] = v165;
    *v164 = 136315138;
    *(v164 + 4) = sub_22C50B3C4("reference(_:detailLevel:direction:renderingState:identifierResolvedAST:)");
    _os_log_impl(&dword_22C366000, v162, v163, "[%s] Unsupported type: skipping event", v164, 0xCu);
    sub_22C36FF94(v165);
    sub_22C3699EC();
    sub_22C370510();
  }

  sub_22C36FB04(&v247[3] + 8);
  sub_22C50B668();
  v166();
  sub_22C50B300();
  v167 = v47[1];
  v168 = sub_22C36BAFC();
  v169(v168);
LABEL_47:
  sub_22C36CC48();
}

double sub_22C5056B8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90D070;
  *(inited + 32) = v4;
  v7 = swift_allocObject();

  *(v7 + 16) = sub_22C90A49C();
  *(v7 + 24) = v8;
  *(inited + 40) = v7;
  *(inited + 48) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22C90A49C();
  *(v9 + 24) = v10;
  *(inited + 56) = v9;
  v11 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v12 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 16) = v13;
  *a3 = v12 | 0x6000000000000000;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  return result;
}

uint64_t sub_22C505848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = sub_22C36ECB4();
  sub_22C456C94(v12, v13);
  result = a3(v7, a2);
  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = v10;
  a4[4] = v11;
  return result;
}

uint64_t sub_22C5058CC(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  sub_22C591324();
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24) >> 1;
  v7 = v5 + 1;
  if (v6 <= v5)
  {
    sub_22C591324();
    v4 = v25;
    v6 = *(v25 + 24) >> 1;
  }

  *(v4 + 16) = v7;
  *(v4 + 8 * v5 + 32) = v2;
  v8 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    sub_22C591324();
    v4 = v26;
  }

  *(v4 + 16) = v8;
  *(v4 + 8 * v7 + 32) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 46;
  *(v9 + 24) = 0xE100000000000000;
  v10 = *(v4 + 24);
  v11 = v5 + 3;

  if (v11 > (v10 >> 1))
  {
    sub_22C591324();
    v4 = v27;
  }

  *(v4 + 16) = v11;
  *(v4 + 8 * v8 + 32) = v9;
  sub_22C90908C();
  sub_22C90A28C();

  sub_22C501204();
  v13 = v12;
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  v18 = *(v4 + 16);
  v17 = *(v4 + 24);

  if (v18 >= v17 >> 1)
  {
    sub_22C591324();
    v4 = v28;
  }

  *(v4 + 16) = v18 + 1;
  *(v4 + 8 * v18 + 32) = v16;

  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0xE000000000000000;
  v20 = *(v4 + 16);
  if (v20 >= *(v4 + 24) >> 1)
  {
    sub_22C591324();
    v4 = v29;
  }

  *(v4 + 16) = v20 + 1;
  *(v4 + 8 * v20 + 32) = v19;
  v21 = sub_22C3DB9B0(v4);

  v22 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v22 + 16) = v23;
  return v22 | 0x6000000000000000;
}

double sub_22C505B90@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v273 = a1;
  v274 = a2;
  v4 = sub_22C90926C();
  v5 = sub_22C36A7A4(v4, &v276);
  v256 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C3698F8(v9);
  v10 = sub_22C90929C();
  v11 = sub_22C36A7A4(v10, v281);
  v259 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  sub_22C3698F8(v15);
  v16 = sub_22C9092DC();
  v17 = sub_22C36A7A4(v16, &v279);
  v258 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C3698A8();
  sub_22C3698F8(v21);
  v22 = sub_22C90930C();
  v23 = sub_22C36A7A4(v22, &v282[24]);
  v262 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C3698A8();
  sub_22C3698F8(v27);
  v28 = sub_22C9091EC();
  v29 = sub_22C36A7A4(v28, &v285);
  v265 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  v264 = v33;
  v34 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v35 = sub_22C369914(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  sub_22C3698F8(v40);
  v41 = sub_22C90922C();
  v42 = sub_22C36A7A4(v41, &v288);
  v267 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C3698A8();
  v266 = v46;
  v47 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  sub_22C36A7A4(v47, &v290);
  v269 = v48;
  v50 = *(v49 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v51);
  sub_22C3698F8(&v253 - v52);
  v53 = sub_22C90046C();
  v54 = sub_22C369824(v53);
  v270 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C369838();
  sub_22C36D0FC();
  v58 = sub_22C90014C();
  v59 = sub_22C36A7A4(v58, &v293);
  v271 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C3698A8();
  sub_22C3698F8(v63);
  v64 = sub_22C90083C();
  v65 = sub_22C369824(v64);
  *&v272 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C369838();
  sub_22C36BE24();
  v69 = sub_22C90063C();
  v70 = sub_22C369824(v69);
  v72 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22C369838();
  v75 = sub_22C90931C();
  v76 = sub_22C369824(v75);
  v78 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22C369838();
  v83 = (v82 - v81);
  (*(v78 + 16))(v82 - v81, v273, v75);
  v84 = *(v78 + 88);
  v85 = sub_22C37B988();
  v87 = v86(v85);
  if (v87 == *MEMORY[0x277D72988])
  {
    v88 = sub_22C50B318();
    v89(v88);
    v90 = *v83;
    sub_22C36A83C();
    v91 = swift_allocObject();
    if (v90 == 1)
    {
      v92 = 1702195796;
      v93 = 0xE400000000000000;
    }

    else
    {
      v92 = 0x65736C6146;
      v93 = 0xE500000000000000;
    }

    *v282 = v92;
    *&v282[8] = v93;
    *(v91 + 16) = sub_22C90A49C();
    *(v91 + 24) = v100;
    *v282 = v91;
    goto LABEL_13;
  }

  if (v87 == *MEMORY[0x277D72978])
  {
    v94 = sub_22C50B318();
    v95(v94);
    v96 = *v83;
    sub_22C36A83C();
    v97 = swift_allocObject();
    *v282 = v96;
    v98 = sub_22C90B47C();
LABEL_10:
    *(v97 + 16) = v98;
    *(v97 + 24) = v99;
LABEL_11:
    sub_22C36D2A8();
    v104 = swift_allocObject();
    sub_22C38A010(v104);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v105 = swift_allocObject();
    *(v105 + 16) = v97;
    *(v104 + 32) = v105;
    sub_22C36D2A8();
    v106 = swift_allocObject();
    sub_22C50B3E8(v106);
    sub_22C369AEC();
    v107 = swift_allocObject();
    *(v107 + 16) = v104 | 0xA000000000000000;
    *(v97 + 32) = v107;
    v108 = v97 | 0xA000000000000000;
LABEL_12:
    *v282 = v108;
LABEL_13:
    memset(&v282[8], 0, 32);
    v283[0] = 0;
    goto LABEL_14;
  }

  if (v87 == *MEMORY[0x277D729A8])
  {
    v101 = sub_22C50B318();
    v102(v101);
    v103 = *v83;
    sub_22C36A83C();
    v97 = swift_allocObject();
    v98 = sub_22C90A84C();
    goto LABEL_10;
  }

  if (v87 == *MEMORY[0x277D729C0])
  {
    v114 = sub_22C50B318();
    v115(v114);
    v116 = *(v83 + 4);
    v118 = *v83;
    v117 = *(v83 + 1);
    sub_22C36A83C();
    v119 = swift_allocObject();
    *(v119 + 16) = sub_22C90AC4C();
    *(v119 + 24) = v120;
    sub_22C36D2A8();
    v121 = swift_allocObject();
    sub_22C38A010(v121);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v122 = swift_allocObject();
    *(v122 + 16) = v119;
    *(v121 + 32) = v122;
    sub_22C36D2A8();
    v123 = swift_allocObject();
    sub_22C50B3E8(v123);
    sub_22C369AEC();
    v124 = swift_allocObject();
    *(v124 + 16) = v121 | 0xA000000000000000;
    qword_283FB9070 = v124;
    v108 = 0xA000000283FB9050;
    goto LABEL_12;
  }

  if (v87 == *MEMORY[0x277D729B8])
  {
    v125 = sub_22C50B318();
    v126(v125);
    v127 = *v83;
    v128 = *(v83 + 1);
    sub_22C36A83C();
    v97 = swift_allocObject();
    *(v97 + 16) = v127;
    *(v97 + 24) = v128;
    goto LABEL_11;
  }

  if (v87 == *MEMORY[0x277D72990])
  {
    v129 = sub_22C50B318();
    v130(v129);
    v131 = *(v72 + 32);
    v132 = sub_22C37B9B0();
    v133(v132);
    sub_22C36A83C();
    v134 = swift_allocObject();
    sub_22C90082C();
    v135 = sub_22C56D8A4(0xD000000000000013, 0x800000022C931D40);
    v136 = *(v272 + 8);
    v137 = sub_22C377B94();
    v138(v137);
    v139 = sub_22C9005AC();
    v140 = [v135 stringFromDate_];

    v141 = sub_22C90A11C();
    v143 = v142;

    v144 = *(v72 + 8);
    v145 = sub_22C379FC8();
    v146(v145);
    *(v134 + 16) = v141;
    *(v134 + 24) = v143;
LABEL_21:
    sub_22C36D2A8();
    v147 = swift_allocObject();
    sub_22C38A010(v147);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v148 = swift_allocObject();
    *(v148 + 16) = v134;
    *(v147 + 32) = v148;
    sub_22C36D2A8();
    v149 = swift_allocObject();
    sub_22C50B3E8(v149);
    sub_22C369AEC();
    v150 = swift_allocObject();
    *(v150 + 16) = v147 | 0xA000000000000000;
    qword_283FB9070 = v150;
    v108 = 0xA000000283FB9050;
    goto LABEL_12;
  }

  if (v87 == *MEMORY[0x277D72958])
  {
    v151 = sub_22C50B318();
    v152(v151);
    sub_22C385E64(&v292);
    sub_22C50B3B4();
    sub_22C50B63C();
    v153();
    if (qword_27D9BA6C8 != -1)
    {
      swift_once();
    }

    v154 = qword_27D9E3FC0;
    v155 = sub_22C9000BC();
    v156 = [v154 stringFromDateComponents_];

    if (v156)
    {
      sub_22C90A11C();
      sub_22C385630();

      v276 = v155;
      v277 = v83;
      sub_22C506EB8(&v276, v282);

      v157 = *&v282[32];
      v158 = v283[0];
      v272 = *&v282[16];
      v273 = *v282;
      v159 = sub_22C37186C();
      v160(v159);
      *v282 = v273;
      *&v282[16] = v272;
      *&v282[32] = v157;
      v283[0] = v158;
      goto LABEL_14;
    }

    v173 = sub_22C37186C();
    v174(v173);
    *v282 = 2;
    memset(&v282[8], 0, 32);
LABEL_33:
    v283[0] = 1;
    goto LABEL_14;
  }

  if (v87 == *MEMORY[0x277D72980])
  {
    v161 = sub_22C50B318();
    v162(v161);
    sub_22C38169C(&v291);
    v163(v3, v83, v53);
    sub_22C36A83C();
    v164 = swift_allocObject();
    sub_22C90036C();
    sub_22C385D88();
    v165 = *(v2 + 8);
    v166 = sub_22C36FC74();
    v167(v166);
    *(v164 + 16) = v3;
    *(v164 + 24) = v78;
    sub_22C36D2A8();
    v168 = swift_allocObject();
    sub_22C37B2A4(v168, 3);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v169 = swift_allocObject();
    *(v169 + 16) = v164;
    *(v168 + 32) = v169;
    v108 = v168 | 0xA000000000000000;
    goto LABEL_12;
  }

  if (v87 == *MEMORY[0x277D72968])
  {
    goto LABEL_30;
  }

  if (v87 == *MEMORY[0x277D72940])
  {
    v175 = sub_22C50B318();
    v176(v175);
    sub_22C38169C(&v289);
    v177 = v268;
    v178 = sub_22C36D384();
    v179(v178);
    sub_22C36A83C();
    v97 = swift_allocObject();
    sub_22C8FFF6C();
    sub_22C385630();
    v180 = *(v2 + 8);
    v181 = sub_22C372FCC();
    v182(v181);
    *(v97 + 16) = v177;
    *(v97 + 24) = v83;
    goto LABEL_11;
  }

  if (v87 == *MEMORY[0x277D72950])
  {
    v183 = sub_22C50B318();
    v184(v183);
    sub_22C385E64(&v287);
    sub_22C50B3B4();
    sub_22C50B63C();
    v185();
    sub_22C36A83C();
    v97 = swift_allocObject();
    sub_22C37443C(&v286);
    sub_22C90920C();
LABEL_40:
    v189 = sub_22C90993C();
    sub_22C36D0A8(v69, 1, v189);
    if (v190)
    {
      sub_22C36DD28(v69, &qword_27D9BC390, &qword_22C912AC0);
      v191 = 0;
      v78 = 0xE000000000000000;
    }

    else
    {
      v191 = v69;
      sub_22C9098BC();
      sub_22C385D88();
      sub_22C36BBA8(v189);
      (*(v192 + 8))(v69, v189);
    }

    v193 = sub_22C37186C();
    v194(v193);
    goto LABEL_44;
  }

  if (v87 == *MEMORY[0x277D72948])
  {
    v186 = sub_22C50B318();
    v187(v186);
    sub_22C385E64(v284);
    sub_22C50B3B4();
    sub_22C50B63C();
    v188();
    sub_22C36A83C();
    v97 = swift_allocObject();
    sub_22C37443C(v283);
    sub_22C9091DC();
    goto LABEL_40;
  }

  if (v87 != *MEMORY[0x277D729D0])
  {
    if (v87 == *MEMORY[0x277D729B0])
    {
      v217 = sub_22C50B318();
      v218(v217);
      sub_22C38169C(&v278);
      v219 = sub_22C37B9B0();
      v220(v219);
      sub_22C374168(v263 + 10, v263[13]);
      v221 = sub_22C9092CC();
      sub_22C507FF8(v221, 0, v282);

      v222 = *(v2 + 8);
      v223 = sub_22C37170C();
      v224(v223);
      goto LABEL_14;
    }

    if (v87 == *MEMORY[0x277D72998])
    {
      v225 = sub_22C50B318();
      v226(v225);
      v227 = *(v259 + 32);
      v228 = sub_22C37B9B0();
      v229(v228);
      v230 = sub_22C90928C();
      v231 = [v230 filename];

      sub_22C90A11C();
      sub_22C50B5FC();

      v232 = HIBYTE(v78) & 0xF;
      if ((v78 & 0x2000000000000000) == 0)
      {
        v232 = v230 & 0xFFFFFFFFFFFFLL;
      }

      if (v232)
      {
        v233 = sub_22C90928C();
        v234 = [v233 filename];

        v235 = sub_22C90A11C();
        v237 = v236;
      }

      else
      {
        v235 = 0;
        v237 = 0xE000000000000000;
      }

      sub_22C36A83C();
      v134 = swift_allocObject();
      sub_22C36FB04(&v280);
      v247(v261, v260);
      *(v134 + 16) = v235;
      *(v134 + 24) = v237;
      goto LABEL_21;
    }

    if (v87 != *MEMORY[0x277D72970])
    {
      if (v87 != *MEMORY[0x277D72960])
      {
        if (v87 == *MEMORY[0x277D72938])
        {
LABEL_30:
          v170 = *(v78 + 8);
          v171 = sub_22C37B988();
          v172(v171);
LABEL_31:
          memset(v282, 0, sizeof(v282));
          goto LABEL_33;
        }

        if (v87 == *MEMORY[0x277D729A0])
        {
          goto LABEL_31;
        }
      }

      memset(v282, 0, sizeof(v282));
      v283[0] = 1;
      v244 = *(v78 + 8);
      v245 = sub_22C37B988();
      v246(v245);
      goto LABEL_14;
    }

    v238 = sub_22C50B318();
    v239(v238);
    v240 = *(v256 + 32);
    v241 = sub_22C37B9B0();
    v242(v241);
    sub_22C36A83C();
    v97 = swift_allocObject();
    v78 = v254;
    sub_22C90925C();
    v243 = sub_22C90993C();
    sub_22C36D0A8(v78, 1, v243);
    if (v190)
    {
      sub_22C36DD28(v254, &qword_27D9BC390, &qword_22C912AC0);
      v191 = 0;
      v78 = 0xE000000000000000;
    }

    else
    {
      v191 = v254;
      sub_22C9098BC();
      sub_22C385D88();
      sub_22C36BBA8(v243);
      v249 = *(v248 + 8);
      v250 = sub_22C36EBF0();
      v251(v250);
    }

    sub_22C36FB04(v275);
    v252(v255, v257);
LABEL_44:
    *(v97 + 16) = v191;
    *(v97 + 24) = v78;
    goto LABEL_11;
  }

  v195 = sub_22C50B318();
  v196(v195);
  sub_22C38169C(&v282[16]);
  v197 = sub_22C37B9B0();
  v198(v197);
  sub_22C374168(v263 + 5, v263[8]);
  v199 = sub_22C9092FC();
  sub_22C507BC0(v199, &v276);

  v200 = *(v2 + 8);
  v201 = sub_22C37170C();
  v202(v201);
  v204 = v276;
  v203 = v277;
  v205 = v278;
  v206 = v279;
  v207 = v280;
  v208 = v281[0];
  if ((v281[0] & 1) == 0)
  {
    sub_22C36D2A8();
    v209 = swift_allocObject();
    *(v209 + 16) = 3;
    *(v209 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v210 = swift_allocObject();
    *(v210 + 16) = v204;
    *(v209 + 32) = v210;
    sub_22C36D2A8();
    v211 = swift_allocObject();
    *(v211 + 16) = 4;
    *(v211 + 24) = 1;
    sub_22C369AEC();
    v212 = swift_allocObject();
    *(v212 + 16) = v209 | 0xA000000000000000;
    *(v211 + 32) = v212;
    v213 = sub_22C36BA00();
    sub_22C456C94(v213, v214);

    v215 = sub_22C377B94();
    sub_22C456CE4(v215, v216, v205, v206, v207, 0);
    v204 = v211 | 0xA000000000000000;
  }

  *v282 = v204;
  *&v282[8] = v203;
  *&v282[16] = v205;
  *&v282[24] = v206;
  *&v282[32] = v207;
  v283[0] = v208;
LABEL_14:
  v109 = *&v282[32];
  v110 = v283[0];
  result = *v282;
  v112 = *&v282[16];
  v113 = v274;
  *v274 = *v282;
  v113[1] = v112;
  *(v113 + 4) = v109;
  *(v113 + 40) = v110;
  return result;
}

uint64_t sub_22C506EB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = 3;
  *(v6 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = 4;
  *(v8 + 24) = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = v6 | 0xA000000000000000;
  *(v8 + 32) = v9;
  *a2 = v8 | 0xA000000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
}

void sub_22C506FDC()
{
  sub_22C36BA7C();
  v153 = v1;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  LODWORD(v152) = v8;
  sub_22C3704C4();
  v9 = sub_22C9093BC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  sub_22C3698F8(v15);
  v16 = sub_22C90910C();
  v17 = sub_22C369824(v16);
  v142 = v18;
  v143 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C3698A8();
  sub_22C3698F8(v21);
  v22 = sub_22C90963C();
  v23 = sub_22C369824(v22);
  v150 = v24;
  v151 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C3698A8();
  v149 = v27;
  sub_22C36BA0C();
  v28 = sub_22C90919C();
  v29 = sub_22C369824(v28);
  v147 = v30;
  v148 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  sub_22C50B3FC();
  v33 = sub_22C90906C();
  v34 = sub_22C369824(v33);
  v145 = v35;
  v146 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v40 = v39 - v38;
  v41 = type metadata accessor for DirectionalTypedValue();
  v42 = sub_22C36985C(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C369ABC();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  sub_22C50B4C8();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = (&v138 - v51);
  MEMORY[0x28223BE20](v50);
  sub_22C36CAC0();
  sub_22C50B2E8();
  v139 = v0;
  sub_22C50A6A4();
  sub_22C36CA88();
  v53 = (v12 + 88);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C50B2E8();
    v144 = v3;
    sub_22C3806B8();
    sub_22C50A6A4();
    v65 = *v53;
    v66 = sub_22C36D7F0();
    v68 = v67(v66);
    if (v68 == *MEMORY[0x277D72A38])
    {
      v69 = *(v12 + 96);
      v70 = sub_22C36D7F0();
      v71(v70);
      v72 = *v52;
      swift_projectBox();
      v73 = v147;
      v74 = sub_22C383BD4(v147);
      v75(v74);
      sub_22C378AB0(v153 + 56, v157);
      sub_22C3766E0(v157, v158);
      v76 = v151;
      (*(v150 + 104))(v149, *MEMORY[0x277D72E10], v151);
      sub_22C37E2B0();
      v77(v2);
      v78 = sub_22C50B61C();
      v79(v78, v76);
      v80 = *(v73 + 8);
      v81 = sub_22C37B988();
      v82(v81);
    }

    else
    {
      if (v68 == *MEMORY[0x277D729E0])
      {
        v94 = *(v12 + 96);
        v95 = sub_22C36D7F0();
        v96(v95);
        v97 = *v52;
        v98 = swift_projectBox();
        v100 = v145;
        v99 = v146;
        (*(v145 + 16))(v40, v98, v146);
        v101 = sub_22C90905C();
        MEMORY[0x28223BE20](v101);
        sub_22C388200();
        v103 = sub_22C3B2C0C(sub_22C507B78, v102, v101);

        sub_22C47F330(v103, v156);

        (*(v100 + 8))(v40, v99);
        goto LABEL_11;
      }

      if (v68 != *MEMORY[0x277D729F8])
      {
        goto LABEL_17;
      }

      v118 = *(v12 + 96);
      v119 = sub_22C36D7F0();
      v120(v119);
      v121 = *v52;
      v122 = swift_projectBox();
      (*(v142 + 16))(v141, v122, v143);
      sub_22C378AB0(v153 + 96, v157);
      sub_22C3766E0(v157, v158);
      v124 = v149;
      v123 = v150;
      v125 = v151;
      (*(v150 + 104))(v149, *MEMORY[0x277D72E10], v151);
      sub_22C50B590();
      v126 = sub_22C50B648();
      v127(v126);
      (*(v123 + 8))(v124, v125);
      v128 = sub_22C3728B8();
      v129(v128);
    }

    sub_22C36FF94(v157);
    goto LABEL_11;
  }

  sub_22C50B2E8();
  sub_22C374C34();
  sub_22C50A6A4();
  v54 = (*v53)(v4, v9);
  if (v54 != *MEMORY[0x277D72A38])
  {
    if (v54 == *MEMORY[0x277D729E0])
    {
      v83 = sub_22C36CAB0();
      v84(v83);
      v85 = *v4;
      v86 = swift_projectBox();
      v87 = v145;
      (*(v145 + 16))(v40, v86, v146);
      v88 = sub_22C90905C();
      MEMORY[0x28223BE20](v88);
      sub_22C388200();
      v90 = sub_22C3B2C0C(sub_22C507B5C, v89, v88);

      sub_22C47F330(v90, v156);

      v91 = *(v87 + 8);
      v92 = sub_22C38644C();
      v93(v92);
      goto LABEL_11;
    }

    if (v54 == *MEMORY[0x277D729F8])
    {
      v104 = sub_22C36CAB0();
      v105(v104);
      v152 = *v4;
      v106 = swift_projectBox();
      v108 = v142;
      v107 = v143;
      v109 = v141;
      (*(v142 + 16))(v141, v106, v143);
      sub_22C378AB0(v153 + 96, v157);
      v110 = v158;
      v111 = v159;
      sub_22C3766E0(v157, v158);
      v113 = v149;
      v112 = v150;
      (*(v150 + 104))(v149, *MEMORY[0x277D72E08], v151);
      sub_22C50B590();
      v114(v109, v113, v154, v155, v110, v111);
      v115 = *(v112 + 8);
      v116 = sub_22C379ED8();
      v117(v116);
      (*(v108 + 8))(v109, v107);
      sub_22C36FF94(v157);
      goto LABEL_11;
    }

    v144 = v3;
LABEL_17:
    v148 = *(v12 + 8);
    v130 = sub_22C36D7F0();
    v131(v130);
    sub_22C378AB0(v153 + 16, v157);
    sub_22C3766E0(v157, v158);
    sub_22C50B2E8();
    sub_22C50A6A4();
    v132 = v140;
    (*(v12 + 32))(v140, v47, v9);
    v134 = v149;
    v133 = v150;
    v135 = v151;
    (*(v150 + 104))(v149, *MEMORY[0x277D72E08], v151);
    sub_22C37E2B0();
    v136(v132);
    (*(v133 + 8))(v134, v135);
    v137 = sub_22C36BE34();
    v148(v137);
    sub_22C36FF94(v157);
    goto LABEL_18;
  }

  v55 = sub_22C36CAB0();
  v56(v55);
  v146 = *v4;
  v57 = swift_projectBox();
  v58 = v147;
  (*(v147 + 16))(v2, v57, v148);
  sub_22C378AB0(v153 + 56, v157);
  sub_22C3766E0(v157, v158);
  (*(v150 + 104))(v149, *MEMORY[0x277D72E08], v151);
  sub_22C37E2B0();
  v59(v2);
  v60 = sub_22C3728B8();
  v61(v60);
  v62 = *(v58 + 8);
  v63 = sub_22C36BC58();
  v64(v63);
  sub_22C36FF94(v157);
LABEL_11:

LABEL_18:
  sub_22C50B370();
  sub_22C50A6FC();
  sub_22C36CC48();
}

void sub_22C5079DC()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DirectionalTypedValue();
  v8 = sub_22C36985C(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C38B184();
  v11 = sub_22C9093BC();
  sub_22C36985C(v11);
  v13 = *(v12 + 16);
  v14 = sub_22C383CCC();
  v15(v14);
  swift_storeEnumTagMultiPayload();
  sub_22C506FDC(v0, v6 & 1, v4, v2);
  sub_22C50B370();
  sub_22C50A6FC();
  sub_22C36FB20();
}

uint64_t *sub_22C507ACC()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  sub_22C36FF94(v0 + 12);
  return v0;
}

uint64_t sub_22C507AFC()
{
  sub_22C507ACC();

  return swift_deallocClassInstance();
}

void sub_22C507B94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_22C5079DC();
}

void sub_22C507BC0(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C3A5908(&qword_27D9BAD88, &unk_22C90D630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C919310;
  *(inited + 32) = sub_22C8F8EA4(a1);
  *(inited + 40) = v6;
  v7 = sub_22C387D48();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 street];

    sub_22C90A11C();
    sub_22C388CA0();
  }

  else
  {
    v2 = 0;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v2;
  v10 = sub_22C387D48();
  v11 = v10;
  if (v10)
  {
    v12 = [v10 city];

    sub_22C90A11C();
    sub_22C388CA0();
  }

  else
  {
    v2 = 0;
  }

  *(inited + 64) = v11;
  *(inited + 72) = v2;
  v13 = sub_22C387D48();
  v14 = v13;
  if (v13)
  {
    v15 = [v13 state];

    sub_22C90A11C();
    sub_22C388CA0();
  }

  else
  {
    v2 = 0;
  }

  *(inited + 80) = v14;
  *(inited + 88) = v2;
  v16 = sub_22C387D48();
  v17 = v16;
  if (v16)
  {
    v18 = [v16 postalCode];

    sub_22C90A11C();
    sub_22C388CA0();
  }

  else
  {
    v2 = 0;
  }

  *(inited + 96) = v17;
  *(inited + 104) = v2;
  v19 = sub_22C387D48();
  v20 = v19;
  if (v19)
  {
    v21 = [v19 country];

    sub_22C90A11C();
    sub_22C385630();
  }

  else
  {
    v17 = 0;
  }

  v22 = 0;
  *(inited + 112) = v20;
  *(inited + 120) = v17;
  v23 = MEMORY[0x277D84F90];
  while (v22 != 6)
  {
    if (v22 > 5)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v24 = inited + 16 * v22;
    v25 = *(v24 + 32);
    v26 = *(v24 + 40);
    if (v26 && (!v25 ? (v27 = v26 == 0xE000000000000000) : (v27 = 0), v27 || (v55 = *(v24 + 32), v28 = sub_22C90B4FC(), v25 = v55, (v28 & 1) != 0)))
    {
      ++v22;
    }

    else
    {
      v56 = v25;

      v57 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = *(v23 + 16);
        v30 = sub_22C373310();
        sub_22C3B6D08(v30, v31, v32);
        v23 = v57;
      }

      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      v35 = v56;
      if (v34 >= v33 >> 1)
      {
        sub_22C369AB0(v33);
        sub_22C375CCC();
        sub_22C3B6D08(v36, v37, v38);
        v35 = v56;
        v23 = v57;
      }

      ++v22;
      *(v23 + 16) = v34 + 1;
      *(v23 + 16 * v34 + 32) = v35;
    }
  }

  swift_setDeallocating();
  sub_22C590040();
  v39 = 0;
  v40 = *(v23 + 16);
  v41 = MEMORY[0x277D84F90];
LABEL_32:
  v42 = 16 * v39 + 40;
  while (v40 != v39)
  {
    if (v39 >= *(v23 + 16))
    {
      goto LABEL_43;
    }

    ++v39;
    v43 = v42 + 16;
    v44 = *(v23 + v42);
    v42 += 16;
    if (v44)
    {
      v45 = *(v23 + v43 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = *(v41 + 16);
        sub_22C373310();
        sub_22C590270();
        v41 = v50;
      }

      v47 = *(v41 + 16);
      v46 = *(v41 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_22C369AB0(v46);
        sub_22C375CCC();
        sub_22C590270();
        v41 = v51;
      }

      *(v41 + 16) = v47 + 1;
      v48 = v41 + 16 * v47;
      *(v48 + 32) = v45;
      *(v48 + 40) = v44;
      goto LABEL_32;
    }
  }

  v57 = v41;
  v52 = sub_22C37B9B0();
  sub_22C3A5908(v52, v53);
  sub_22C50B388(&qword_28142F9F0);
  sub_22C90A04C();
  sub_22C385630();

  sub_22C36A83C();
  v54 = swift_allocObject();
  *(v54 + 16) = &v57;
  *(v54 + 24) = &unk_22C9112A0;
  *a2 = v54;
  sub_22C37274C();
  *(a2 + 40) = 0;
}

void sub_22C507FF8(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_22C36A83C();
  v8 = swift_allocObject();
  v9 = [a1 displayName];
  sub_22C90A11C();
  sub_22C50B42C();

  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  sub_22C36D2A8();
  v10 = swift_allocObject();
  *(v10 + 16) = 3;
  *(v10 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v10 + 32) = v11;
  sub_22C36D2A8();
  v12 = swift_allocObject();
  *(v12 + 16) = 4;
  *(v12 + 24) = 1;
  sub_22C369AEC();
  v13 = swift_allocObject();
  *(v13 + 16) = v10 | 0xA000000000000000;
  *(v12 + 32) = v13;
  v14 = v12 | 0xA000000000000000;
  if (a2)
  {
    sub_22C36A83C();
    v15 = swift_allocObject();
    *(v15 + 16) = 0x203A656D616ELL;
    *(v15 + 24) = 0xE600000000000000;
    v47 = sub_22C47D60C(v15, v12 | 0xA000000000000000);

    v16 = sub_22C50AE34(a1);
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v19 = sub_22C36E2B8(v18);
    for (i = 0; ; ++i)
    {
      if (v19 == i)
      {

        goto LABEL_17;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = sub_22C372FCC();
        v21 = MEMORY[0x2318B8460](v23);
      }

      else
      {
        if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v21 = *(v18 + 8 * i + 32);
      }

      v22 = v21;
      if (__OFADD__(i, 1))
      {
        goto LABEL_46;
      }

      if ([v21 type] == 2)
      {
        break;
      }
    }

    v24 = sub_22C8E62D8(v22);
    if (v25)
    {
      v49 = v24;
      v50 = v25;
      sub_22C50849C(&v49, 0x203A656E6F6870, &v48);

      v26 = v48;
      goto LABEL_18;
    }

LABEL_17:
    v26 = 0xF000000000000007;
LABEL_18:
    v27 = sub_22C50AE34(a1);
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v17;
    }

    v29 = sub_22C36E2B8(v28);
    for (j = 0; ; ++j)
    {
      if (v29 == j)
      {

        goto LABEL_33;
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x2318B8460](j, v28);
      }

      else
      {
        if (j >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v31 = *(v28 + 8 * j + 32);
      }

      v32 = v31;
      if (__OFADD__(j, 1))
      {
        goto LABEL_48;
      }

      if ([v31 type] == 1)
      {
        break;
      }
    }

    v33 = sub_22C8E62D8(v32);
    if (v34)
    {
      v49 = v33;
      v50 = v34;
      sub_22C50849C(&v49, 0x203A6C69616D65, &v48);

      v35 = v48;
      goto LABEL_34;
    }

LABEL_33:
    v35 = 0xF000000000000007;
LABEL_34:
    sub_22C3A5908(&qword_27D9BC368, &unk_22C912AA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90FB40;
    *(inited + 32) = v47;
    *(inited + 40) = v26;
    *(inited + 48) = v35;

    sub_22C454710(v26);
    sub_22C454710(v35);
    v37 = 0;
    v38 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v37 == 3)
      {
        swift_setDeallocating();
        sub_22C590054();
        v14 = sub_22C47D738(8236, 0xE200000000000000, v38);
        sub_22C4546F8(v35);
        sub_22C4546F8(v26);

        goto LABEL_44;
      }

      if (v37 > 2)
      {
        break;
      }

      v39 = *(inited + 8 * v37++ + 32);
      if ((~v39 & 0xF000000000000007) != 0)
      {
        v40 = a3;

        v41 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = *(v38 + 16);
          sub_22C373310();
          sub_22C591324();
          v38 = v45;
        }

        v43 = *(v38 + 16);
        v42 = *(v38 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_22C369AB0(v42);
          sub_22C591324();
          v38 = v46;
        }

        *(v38 + 16) = v43 + 1;
        *(v38 + 8 * v43 + 32) = v39;
        v26 = v41;
        a3 = v40;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
LABEL_44:
    *a3 = v14;
    sub_22C37274C();
    *(a3 + 40) = 0;
  }
}

uint64_t sub_22C50849C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_22C36A83C();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  sub_22C36D2A8();
  v7 = swift_allocObject();
  *(v7 + 16) = 3;
  *(v7 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 32) = v8;
  sub_22C36D2A8();
  v9 = swift_allocObject();
  *(v9 + 16) = 4;
  *(v9 + 24) = 1;
  sub_22C369AEC();
  v10 = swift_allocObject();
  *(v10 + 16) = v7 | 0xA000000000000000;
  *(v9 + 32) = v10;
  sub_22C36A83C();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = 0xE700000000000000;

  v12 = sub_22C47D60C(v11, v9 | 0xA000000000000000);

  *a3 = v12;
  return result;
}

uint64_t sub_22C5085D8(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD8B0, &qword_22C919AA8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  if (*(a1 + 16) && (sub_22C6284D4(), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56);
    v8 = type metadata accessor for DynamicEnumeration(0);
    v9 = *(*(v8 - 8) + 72);
    sub_22C50A6A4();
    v10 = 1;
    sub_22C36C640(v5, 0, 1, v8);
  }

  else
  {
    v11 = type metadata accessor for DynamicEnumeration(0);
    sub_22C36C640(v5, 1, 1, v11);
    v10 = 0;
  }

  sub_22C36DD28(v5, &qword_27D9BD8B0, &qword_22C919AA8);
  return v10;
}

void sub_22C50870C()
{
  sub_22C36BA7C();
  v43 = v0;
  v4 = v3;
  v5 = sub_22C90941C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  sub_22C382E94();
  v15 = sub_22C90952C();
  v16 = sub_22C369824(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  sub_22C37FDDC();
  v21 = *(v8 + 16);
  v21(v13, v43, v5);
  v22 = *(v8 + 88);
  v23 = sub_22C37170C();
  v25 = v24(v23);
  if (v25 != *MEMORY[0x277D72AD0])
  {
    if (v25 == *MEMORY[0x277D72AB0] || v25 == *MEMORY[0x277D72AE8])
    {
      v35 = *(v8 + 96);
      v36 = sub_22C37170C();
      v37(v36);
      v38 = *v13;
      v39 = swift_projectBox();
      v21(v1, v39, v5);

      sub_22C50870C(v4);
      (*(v8 + 8))(v1, v5);
      goto LABEL_11;
    }

    if (v25 != *MEMORY[0x277D72AB8])
    {
      v40 = *(v8 + 8);
      v41 = sub_22C37170C();
      v42(v41);
      goto LABEL_11;
    }
  }

  v26 = *(v8 + 96);
  v27 = sub_22C37170C();
  v28(v27);
  v29 = *v13;
  v30 = swift_projectBox();
  (*(v18 + 16))(v2, v30, v15);

  sub_22C4F6400();
  v31 = *(v18 + 8);
  v32 = sub_22C36D384();
  v33(v32);
LABEL_11:
  sub_22C36CC48();
}

void sub_22C5089A0()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C377D60();
  v8 = sub_22C90941C();
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  sub_22C3804A4();
  MEMORY[0x28223BE20](v18);
  sub_22C387B64();
  v19 = v11[2];
  v20 = sub_22C36D384();
  v19(v20);
  v21 = v11[11];
  v22 = sub_22C372FCC();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x277D72AD0])
  {
    goto LABEL_2;
  }

  v63 = v3;
  if (v24 == *MEMORY[0x277D72AB0] || v24 == *MEMORY[0x277D72AE8])
  {
    goto LABEL_8;
  }

  if (v24 != *MEMORY[0x277D72AD8])
  {
    if (v24 == *MEMORY[0x277D72AB8])
    {
LABEL_2:
      v25 = v11[1];
      v26 = sub_22C372FCC();
      v27(v26);
      sub_22C508DF8(v3);
      v29 = *(v28 + 16);

LABEL_28:
      sub_22C36CC48();
      return;
    }

    if (v24 != *MEMORY[0x277D72AE0])
    {
      sub_22C903F7C();
      v55 = sub_22C9063CC();
      v56 = sub_22C90AADC();
      if (sub_22C370048(v56))
      {
        *sub_22C36D240() = 0;
        sub_22C3699EC();
      }

      v58 = sub_22C50B584();
      v59(v58);
      sub_22C508DF8(v3);
      v61 = *(v60 + 16);

      (v11[1])(v0, v8);
      goto LABEL_28;
    }

LABEL_8:
    v31 = v11[12];
    v32 = sub_22C372FCC();
    v33(v32);
    v34 = *v0;
    v35 = swift_projectBox();
    (v19)(v1, v35, v8);

    sub_22C5089A0(v3);
    (v11[1])(v1, v8);
    goto LABEL_28;
  }

  v36 = v11[12];
  v37 = sub_22C372FCC();
  v38(v37);
  v39 = *(*v0 + 16);
  v42 = *(v39 + 56);
  v41 = v39 + 56;
  v40 = v42;
  v43 = 1 << *(*(*v0 + 16) + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v40;
  v46 = (v43 + 63) >> 6;
  v62 = *(*v0 + 16);

  v47 = 0;
  while (v45)
  {
    v48 = v47;
    v49 = v63;
LABEL_20:
    v50 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    (v19)(v16, *(v62 + 48) + v11[9] * (v50 | (v48 << 6)), v8);
    v51 = sub_22C5089A0(v49);
    v52 = v11[1];
    v53 = sub_22C37170C();
    v54(v53);
    if (v51)
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  v49 = v63;
  while (1)
  {
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v48 >= v46)
    {
      goto LABEL_27;
    }

    v45 = *(v41 + 8 * v48);
    ++v47;
    if (v45)
    {
      v47 = v48;
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_22C508DF8(uint64_t a1)
{
  v2 = sub_22C90430C();
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = sub_22C90963C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D72E10], v9);
  sub_22C47E8FC();
  v38 = v15;
  v39 = v14;
  (*(v10 + 8))(v13, v9);
  sub_22C9093DC();
  v45 = a1;
  sub_22C3B2ED0();
  v17 = v16;

  v18 = 0;
  v19 = *(v17 + 16);
  v20 = (v17 + 40);
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v19 == v18)
    {
      v24 = v21;

      v46 = v39;
      v47 = v38;
      v44 = v42 + 16;
      v25 = (v42 + 8);
      v40 = *(v24 + 16);
      v41 = v24;

      v26 = 0;
      for (i = v8; ; (*v25)(i, v2))
      {
        if (v26 == v40)
        {

          return;
        }

        v28 = *(v42 + 72);
        v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v43 = v26;
        v30 = v41 + v29 + v28 * v26;
        v31 = *(v42 + 16);
        v31(v8, v30, v2);
        v32 = v47 + v29;
        if (!v46)
        {
          break;
        }

        sub_22C7DB73C();
        v34 = v33;

        if (v34)
        {
          goto LABEL_14;
        }

LABEL_15:
        v26 = v43 + 1;
        v8 = i;
      }

      v35 = *(v47 + 16) + 1;
      while (--v35)
      {
        v31(v6, v32, v2);
        sub_22C50B0D4(&qword_27D9BC808, MEMORY[0x277D85578]);
        v36 = sub_22C90A0BC();
        (*v25)(v6, v2);
        v32 += v28;
        if (v36)
        {
          goto LABEL_15;
        }
      }

LABEL_14:
      sub_22C7D4BE0();
      goto LABEL_15;
    }

    if (v18 >= *(v17 + 16))
    {
      break;
    }

    ++v18;
    v23 = *(v20 - 1);
    v22 = *v20;
    v46 = v21;

    sub_22C3CDDE8();
    v21 = v46;
    v20 += 2;
  }

  __break(1u);
}

void sub_22C50920C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v53 = a1;
  v55 = a2;
  v2 = sub_22C90963C();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22C9095CC();
  v44 = *(v50 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22C90077C();
  v7 = *(v52 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v52);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C908A8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v43 - v18;
  v20 = sub_22C90947C();
  v48 = *(v20 - 8);
  v21 = *(v48 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v51 = &v43 - v25;
  v26 = sub_22C908B2C();
  MEMORY[0x2318B6010](v26);
  v27 = v54;
  sub_22C908B1C();
  if (v27)
  {

    (*(v7 + 8))(v10, v52);
    (*(v12 + 8))(v15, v11);
    sub_22C36C640(v19, 1, 1, v20);
    sub_22C36DD28(v19, &qword_27D9BC3B0, &unk_22C912AF0);
LABEL_6:
    sub_22C7F4FB4();
    v36 = v40;
    v38 = v41;
    goto LABEL_7;
  }

  (*(v7 + 8))(v10, v52);
  (*(v12 + 8))(v15, v11);
  sub_22C36C640(v19, 0, 1, v20);
  v28 = v48;
  v29 = v51;
  (*(v48 + 32))(v51, v19, v20);
  (*(v28 + 16))(v24, v29, v20);
  if ((*(v28 + 88))(v24, v20) != *MEMORY[0x277D72B68])
  {
    v39 = *(v28 + 8);
    v39(v51, v20);
    v39(v24, v20);
    goto LABEL_6;
  }

  (*(v28 + 96))(v24, v20);
  v30 = v44;
  (*(v44 + 32))(v49, v24, v50);
  v32 = v45;
  v31 = v46;
  v33 = v28;
  v34 = v47;
  (*(v46 + 104))(v45, *MEMORY[0x277D72E10], v47);
  sub_22C47E38C();
  v36 = v35;
  v38 = v37;
  (*(v31 + 8))(v32, v34);
  (*(v30 + 8))(v49, v50);
  (*(v33 + 8))(v51, v20);
LABEL_7:
  v42 = v55;
  *v55 = v36;
  v42[1] = v38;
}

uint64_t sub_22C5097BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *v4;
  v10 = sub_22C36E2BC(a3, a4);
  if (__OFADD__(*(v19 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
  if (sub_22C90B15C())
  {
    v14 = sub_22C36E2BC(a3, a4);
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v13)
  {
    v16 = (*(v19 + 56) + 16 * v12);
    result = *v16;
    v18 = v16[1];
    *v16 = a1;
    v16[1] = a2;
  }

  else
  {
    sub_22C62F600(v12, a3, a4, a1, a2, v19);

    result = 0;
  }

  *v4 = v19;
  return result;
}

uint64_t sub_22C509938()
{
  result = sub_22C90077C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FullPlannerPreferences();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C509A64()
{
  result = sub_22C457168(319, &qword_281430160);
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281430018);
    if (v2 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_281434518);
      if (v3 <= 0x3F)
      {
        result = sub_22C908AEC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C509B90()
{
  result = sub_22C457168(319, qword_281430CF8);
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281430538);
    if (v2 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_281431C28);
      if (v3 <= 0x3F)
      {
        result = sub_22C457168(319, &qword_281432550);
        if (v4 <= 0x3F)
        {
          result = sub_22C908AEC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_22C509D04()
{
  sub_22C457168(319, &qword_27D9BD838);
  if (v0 <= 0x3F)
  {
    sub_22C457168(319, &qword_27D9BD840);
    if (v1 <= 0x3F)
    {
      sub_22C50A654(319, &qword_27D9BD848, MEMORY[0x277D1E8F0]);
      if (v2 <= 0x3F)
      {
        sub_22C50A654(319, &qword_281435830, MEMORY[0x277CC9788]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for FullPlannerPreferences();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22C509E28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

      return sub_22C375CC0(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return sub_22C375CC0(result, a2);
    }
  }

  return result;
}

void sub_22C509EC0()
{
  sub_22C50A22C(319, qword_281430748, &qword_27D9BD860, qword_22C919668);
  if (v0 <= 0x3F)
  {
    sub_22C457168(319, qword_281432558);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FullPlannerPreferences();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C509FA4(uint64_t result, int a2, int a3)
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

      return sub_22C375CC0(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return sub_22C375CC0(result, a2);
    }
  }

  return result;
}

uint64_t sub_22C50A014()
{
  sub_22C37ABC4();
  if (v1)
  {
    return sub_22C37FDC4();
  }

  v3 = sub_22C374A1C();
  v4(v3);
  v5 = sub_22C36ECCC(*(v0 + 32));

  return sub_22C370B74(v5, v6, v7);
}

void sub_22C50A090()
{
  sub_22C3700E0();
  if (v1)
  {
    sub_22C50B5F0();
  }

  else
  {
    v2 = sub_22C36D3B4();
    v3(v2);
    v4 = sub_22C36FCD8(*(v0 + 32));

    sub_22C36C640(v4, v5, v6, v7);
  }
}

void sub_22C50A118()
{
  sub_22C457168(319, qword_281430480);
  if (v0 <= 0x3F)
  {
    sub_22C457168(319, qword_281434258);
    if (v1 <= 0x3F)
    {
      sub_22C50A22C(319, qword_281433480, &qword_27D9BD878, &unk_22C919790);
      if (v2 <= 0x3F)
      {
        sub_22C457168(319, qword_281432558);
        if (v3 <= 0x3F)
        {
          type metadata accessor for FullPlannerPreferences();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C50A22C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_22C3AC1A0(a3, a4);
    sub_22C37FDE8();
    v5 = sub_22C90AC6C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22C50A2C4()
{
  result = sub_22C457168(319, &qword_27D9BD7A0);
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281430540);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FullPlannerPreferences();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C50A3C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C50A414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_22C50A4C8()
{
  result = sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281430540);
    if (v2 <= 0x3F)
    {
      result = sub_22C457168(319, qword_281430548);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_22C50A5CC()
{
  sub_22C50A654(319, &qword_28142FAD0, MEMORY[0x277D1DD30]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22C50A654(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_22C37FDE8();
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22C50A6A4()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C50A6FC()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  sub_22C36985C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_22C50A750(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v69 = a2;
  v70 = a3;
  v6 = sub_22C3A5908(&qword_27D9BB0F0, &qword_22C90D990);
  v74 = *(v6 - 8);
  v7 = *(v74 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v66 = &v66 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - v13;
  v77 = sub_22C3A5908(&qword_27D9BB100, &qword_22C90D9A0);
  v67 = *(v77 - 8);
  v15 = *(v67 + 64);
  MEMORY[0x28223BE20](v77);
  v68 = &v66 - v16;
  v17 = sub_22C3A5908(&qword_27D9BD928, &qword_22C919B20);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v80 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v66 - v21;
  v23 = sub_22C3A5908(&qword_27D9BD930, &unk_22C919B28);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v79 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = (&v66 - v27);
  v81 = a4;
  v31 = a4[2];
  v29 = a4 + 2;
  v30 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C3D8(v30);
    v30 = v32;
  }

  v33 = 0;
  v81[2] = v30;
  v34 = *(a1 + 16);
  v84 = v14;
  v72 = v28;
  v73 = v29;
  v71 = v34;
  v75 = a1;
  v76 = v22;
  while (1)
  {
    v83 = v30;
    if (v33 == v34)
    {
      v35 = 1;
      v82 = v34;
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

    v36 = a1 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v37 = *(v67 + 72);
    sub_22C3A7214();
    v35 = 0;
    v82 = v33 + 1;
LABEL_9:
    v38 = 1;
    v39 = v77;
    sub_22C36C640(v22, v35, 1, v77);
    v40 = v80;
    sub_22C407C2C();
    if (sub_22C370B74(v40, 1, v39) != 1)
    {
      v41 = v68;
      sub_22C407C2C();
      v69(v41);
      sub_22C36DD28(v41, &qword_27D9BB100, &qword_22C90D9A0);
      v38 = 0;
    }

    v42 = sub_22C3A5908(&qword_27D9BD910, &unk_22C91A410);
    sub_22C36C640(v79, v38, 1, v42);
    sub_22C407C2C();
    v43 = sub_22C3A5908(&qword_27D9BD910, &unk_22C91A410);
    if (sub_22C370B74(v28, 1, v43) == 1)
    {

      return;
    }

    v44 = v10;
    v45 = *(v43 + 48);
    v46 = *v28;
    sub_22C407C2C();
    v48 = *v81;
    v47 = v81[1];
    v49 = v47 + 32;
    v50 = *(v47 + 16);
    if (!*v81)
    {
      v52 = 0;
      v30 = v83;
      while (v50 != v52)
      {
        v55 = *(v49 + 8 * v52);

        v56 = sub_22C48819C(v55, v46);

        if (v56)
        {
          v22 = v76;
          goto LABEL_24;
        }

        ++v52;
      }

LABEL_20:
      v57 = v81;
      sub_22C7D5818();
      v58 = v84;
      sub_22C3A7214();
      v57[2] = v30;
      v59 = *(v30 + 16);
      v60 = v73;
      if (v59 >= *(v30 + 24) >> 1)
      {
        sub_22C3B731C();
      }

      sub_22C36DD28(v58, &qword_27D9BB0F0, &qword_22C90D990);
      v30 = *v60;
      *(v30 + 16) = v59 + 1;
      v61 = v30 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v62 = *(v74 + 72);
      sub_22C407C2C();
      v22 = v76;
      v10 = v44;
      goto LABEL_27;
    }

    sub_22C7DD014(v46, v49, v50, (v48 + 16));
    v52 = v51;
    v54 = v53;

    v30 = v83;
    if (v54)
    {
      goto LABEL_20;
    }

    v22 = v76;
    if ((v52 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

LABEL_24:
    if (v52 >= *(v30 + 16))
    {
      goto LABEL_33;
    }

    v63 = v30 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v52;
    v64 = v84;
    v65 = v78;
    sub_22C4FFD14(v63, v66);
    sub_22C36DD28(v64, &qword_27D9BB0F0, &qword_22C90D990);
    v78 = v65;
    if (v65)
    {

      *v73 = v30;
      return;
    }

    sub_22C36DD28(v63, &qword_27D9BB0F0, &qword_22C90D990);
    sub_22C407C2C();
    v10 = v44;
    v60 = v73;
LABEL_27:
    *v60 = v30;
    a1 = v75;
    v34 = v71;
    v28 = v72;
    v33 = v82;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_22C50AE34(void *a1)
{
  v1 = [a1 aliases];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22C50AE94();
  v3 = sub_22C90A5EC();

  return v3;
}

unint64_t sub_22C50AE94()
{
  result = qword_27D9BD8A0;
  if (!qword_27D9BD8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BD8A0);
  }

  return result;
}

void sub_22C50AF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_22C456C30(a1, a2, a3, a4, a5, a6 & 1);
  }
}

uint64_t sub_22C50AF74(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_22C50AF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_22C456D48(a1, a2);
  }

  return a1;
}

uint64_t sub_22C50AF90(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_22C50AFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_22C456C94(a1, a2);
  }

  return a1;
}

uint64_t sub_22C50B068@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22C4FB9F4(a1, a2);
}

uint64_t sub_22C50B070(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_22C50B07C()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C50B0D4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C50B118(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(a2, a3);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *_s15PiranaClassTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C50B26C()
{
  result = qword_27D9BD948;
  if (!qword_27D9BD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD948);
  }

  return result;
}

double sub_22C50B300()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 40) = 1;
  return result;
}

uint64_t sub_22C50B388(unint64_t *a1)
{

  return sub_22C50B118(a1, v1, v2);
}

uint64_t sub_22C50B3C4@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000048, (a1 - 32) | 0x8000000000000000, (v1 - 224));
}

uint64_t sub_22C50B3E8(uint64_t result)
{
  *(result + 16) = 4;
  *(result + 24) = v1;
  return result;
}

double sub_22C50B450(uint64_t a1)
{
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return result;
}

BOOL sub_22C50B484(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

double sub_22C50B518()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 88) = -1;
  return result;
}

uint64_t sub_22C50B53C()
{
  result = *(v0 - 416);
  v2 = *(v0 - 432);
  return result;
}

uint64_t sub_22C50B554()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t sub_22C50B560()
{
  v3 = *(v1 - 120);
  v2 = *(v1 - 112);
  result = v0;
  v5 = *(v1 - 104);
  return result;
}

void sub_22C50B59C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

unint64_t sub_22C50B5B8()
{
  *(v0 - 112) = 95;
  *(v0 - 104) = 0xE100000000000000;
  *(v0 - 128) = 32;
  *(v0 - 120) = 0xE100000000000000;

  return sub_22C3858B4();
}

uint64_t sub_22C50B694()
{

  return sub_22C3B68D4(0, v0 & ~(v0 >> 63), 0);
}

uint64_t sub_22C50B6B4()
{
  v3 = *(v1 - 216);

  return sub_22C54DBA0(v0, v3);
}

uint64_t sub_22C50B6D4()
{
  v2 = *v0;

  return swift_projectBox();
}

uint64_t sub_22C50B6EC()
{
}

double sub_22C50B704@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = *(type metadata accessor for FullPlannerPreferences() + 128);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  if (v19 == 1)
  {
    sub_22C903F7C();
    v14 = sub_22C9063CC();
    v15 = sub_22C90AADC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      MEMORY[0x2318B9880](v16, -1, -1);
    }

    (*(v7 + 8))(v12, v4);
    *(a2 + 24) = type metadata accessor for RouteRequestToSearch();
    *(a2 + 32) = &off_283FBBB40;
    v17 = sub_22C36D548(a2);
    sub_22C3E17AC(a1, v17);
  }

  else
  {
    sub_22C3FEA64(a1);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_22C50B8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22C902D3C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22C369838();
  v8 = sub_22C90888C();
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v16 = v15 - v14;
  sub_22C50BB18(v3, &v29);
  if (v30 && (sub_22C36C730(&v29, v26), v17 = v27, v18 = v28, sub_22C374168(v26, v27), v19 = (*(v18 + 8))(a1, v17, v18), sub_22C36FF94(v26), v19))
  {
    (*(v11 + 104))(v16, *MEMORY[0x277D1E6C0], v8);

    sub_22C9088AC();
    sub_22C90889C();
    v20 = *MEMORY[0x277D1E6F8];
    v21 = sub_22C9089DC();
    (*(*(v21 - 8) + 104))(a2, v20, v21);

    v22 = a2;
    v23 = 0;
    v24 = v21;
  }

  else
  {
    v24 = sub_22C9089DC();
    v22 = a2;
    v23 = 1;
  }

  return sub_22C36C640(v22, v23, 1, v24);
}

uint64_t sub_22C50BAF0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C50BB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD950, &unk_22C919C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ToolRenderer_v1_0()
{
  result = qword_281434248;
  if (!qword_281434248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C50BF60(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD958, &qword_22C919CA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v40 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  v36 = *(v40 - 8);
  v6 = *(v36 + 64);
  v7 = MEMORY[0x28223BE20](v40);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v35 - v9;
  v39 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = (v15 << 9) | (8 * v17);
    v19 = *(*(a1 + 48) + v18);
    v20 = *(*(a1 + 56) + v18);
    swift_getKeyPath();
    v41[0] = v20;

    swift_getAtKeyPath();

    if (sub_22C370B74(v5, 1, v40) == 1)
    {

      result = sub_22C3770B0(v5, &qword_27D9BD958, &qword_22C919CA0);
    }

    else
    {
      v21 = v37;
      sub_22C50D904(v5, v37, type metadata accessor for _PromptMapper._ToolPromptMap);
      sub_22C50D904(v21, v38, type metadata accessor for _PromptMapper._ToolPromptMap);
      v22 = v39;
      if (v39[3] <= v39[2])
      {
        sub_22C88D114();
        v22 = v42;
      }

      v23 = v22[5];
      v24 = v22;
      sub_22C90B62C();
      sub_22C48A9B4(v41, v19);
      result = sub_22C90B66C();
      v25 = v24 + 8;
      v39 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~v24[(v27 >> 6) + 8]) == 0)
      {
        v30 = 0;
        v31 = (63 - v26) >> 6;
        while (++v28 != v31 || (v30 & 1) == 0)
        {
          v32 = v28 == v31;
          if (v28 == v31)
          {
            v28 = 0;
          }

          v30 |= v32;
          v33 = v25[v28];
          if (v33 != -1)
          {
            v29 = __clz(__rbit64(~v33)) + (v28 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~v24[(v27 >> 6) + 8])) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v34 = v39;
      *(v39[6] + 8 * v29) = v19;
      result = sub_22C50D904(v38, v34[7] + *(v36 + 72) * v29, type metadata accessor for _PromptMapper._ToolPromptMap);
      ++v34[2];
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return v39;
    }

    v12 = *(a1 + 64 + 8 * v15);
    ++v16;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C50C338()
{
  v0 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v15 - v2;
  v4 = sub_22C9079FC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
  sub_22C907EEC();

  if (sub_22C370B74(v3, 1, v4) == 1)
  {
    sub_22C3770B0(v3, &qword_27D9BD798, &unk_22C919070);
    return sub_22C4B9B90(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v7 + 32))(v11, v3, v4);
    v13 = sub_22C90799C();
    v12 = sub_22C4B9B90(v13);
    (*(v7 + 8))(v11, v4);
  }

  return v12;
}

uint64_t sub_22C50C530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v213 = a3;
  v214 = a2;
  v204 = a4;
  v5 = type metadata accessor for RenderableTool();
  v6 = sub_22C369824(v5);
  v223 = v7;
  v224 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v206 = &v203 - v14;
  v15 = sub_22C9036EC();
  v16 = sub_22C369824(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v21);
  v23 = &v203 - v22;
  v222 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v24 = sub_22C369824(v222);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v29);
  sub_22C3698D4();
  v31 = MEMORY[0x28223BE20](v30);
  v221 = &v203 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v215 = &v203 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v203 - v35;
  v205 = a1;
  v37 = v26;
  v38 = sub_22C4AF928();
  v39 = 0;
  v226 = *(v38 + 16);
  v232 = v18 + 16;
  *&v229 = v18 + 88;
  LODWORD(v225) = *MEMORY[0x277D1ECE0];
  LODWORD(v227) = *MEMORY[0x277D1ECE8];
  LODWORD(v220) = *MEMORY[0x277D1ECD8];
  v40 = *MEMORY[0x277D1ECD0];
  v218 = *MEMORY[0x277D1ECF8];
  LODWORD(v219) = v40;
  v209 = v18;
  v228 = (v18 + 8);
  v216 = MEMORY[0x277D84F90];
  v217 = v26;
  while (v226 != v39)
  {
    if (v39 >= *(v38 + 16))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_77:
        sub_22C50D998();
        v180 = v200;
        v181 = *(v200 + 24) >> 1;
LABEL_62:
        *(v180 + 16) = v36;
        *(v180 + 8 * v26 + 32) = v18;
        v182 = v26 + 2;
        if (v181 < (v26 + 2))
        {
          sub_22C591324();
          v180 = v201;
        }

        *(v180 + 16) = v182;
        *(v180 + 8 * v36 + 32) = v12;
        sub_22C36A83C();
        v183 = swift_allocObject();
        *(v183 + 16) = 1616928778;
        *(v183 + 24) = 0xE400000000000000;
        v184 = *(v180 + 24);
        v185 = v26 + 3;

        if ((v26 + 3) > (v184 >> 1))
        {
          sub_22C50D998();
          v180 = v202;
        }

        v176 = v38;
        *(v180 + 16) = v185;
        *(v180 + 8 * v182 + 32) = v183;
        v186 = sub_22C3DB9B0(v180);

        sub_22C369AEC();
        v187 = swift_allocObject();
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        sub_22C369AEC();
        v188 = swift_allocObject();
        *(v188 + 16) = v186;
        *(v187 + 16) = v188;
        v18 = v187 | 0x6000000000000000;
LABEL_67:
        v230 = v15;
        v12 = *(v39 + 16);
        if (!v12)
        {
          break;
        }

        v38 = v176;
        v36 = 0;
        v189 = *(type metadata accessor for _PromptToolData(0) - 8);
        v190 = *(v189 + 80);
        sub_22C36BA94();
        v26 = v39 + v191 + 24;
        while (v36 < *(v39 + 16))
        {
          v192 = *(v189 + 72) * v36++;
          v193 = *(v26 + v192);

          sub_22C3CD230();
          if (v12 == v36)
          {
            v15 = v230;
            goto LABEL_72;
          }
        }
      }

LABEL_72:
      sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
      sub_22C3D32C8(&qword_27D9BB778, &qword_27D9BAF08, &qword_22C90D7B0);
      v194 = sub_22C909F0C();
      sub_22C36A83C();
      v195 = swift_allocObject();
      v230 = 0;
      v231 = 0xE000000000000000;
      v196 = sub_22C90A49C();
      v198 = v197;

      *(v195 + 16) = v196;
      *(v195 + 24) = v198;
      v199 = v204;
      *v204 = v18;
      v199[1] = v194;
      v199[2] = v227;
      v199[3] = v15;
      *(v199 + 2) = 0u;
      *(v199 + 3) = 0u;
      v199[8] = v195;
      return result;
    }

    v18 = v12;
    v26 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v41 = *(v37 + 72);
    sub_22C36AB10();
    sub_22C50D8A8(v42, v36, v43);
    (*v232)(v23, v36, v15);
    v44 = sub_22C37FDF4();
    v46 = v45(v44);
    if (v46 == v225 || v46 != v227 && (v46 != v220 ? (v47 = v46 == v219) : (v47 = 1), !v47 ? (v48 = v46 == v218) : (v48 = 1), v48))
    {
      v51 = sub_22C37FDF4();
      v52(v51);
      sub_22C36AAF8();
      sub_22C50D904(v36, v215, v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v216;
      v230 = v216;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C50D978(*(v216 + 16));
        v37 = v217;
        v55 = v230;
      }

      v57 = *(v55 + 16);
      v56 = *(v55 + 24);
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v61 = sub_22C37187C(v56);
        v216 = v62;
        v203 = v63;
        sub_22C3B685C(v61, v62, 1);
        v58 = v216;
        v37 = v217;
        v55 = v230;
      }

      ++v39;
      *(v55 + 16) = v58;
      v216 = v55;
      sub_22C36AAF8();
      sub_22C50D904(v215, v59, v60);
      v12 = v18;
    }

    else
    {
      v49 = sub_22C37FDF4();
      v50(v49);
      sub_22C50D820(v36);
      ++v39;
      v12 = v18;
    }
  }

  v225 = v12;

  v64 = *(v216 + 16);
  if (v64)
  {
    v230 = MEMORY[0x277D84F90];
    v65 = sub_22C372264();
    v67 = v66;
    sub_22C3B696C(v65, v68, v69);
    v70 = v230;
    v71 = *(v217 + 80);
    sub_22C36BA94();
    v73 = v67 + v72;
    v226 = *(v74 + 72);
    v75 = (v209 + 32);
    v39 = v206;
    do
    {
      sub_22C36AB10();
      v76 = v221;
      sub_22C50D8A8(v73, v221, v77);
      v78 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      (*v75)(v39, v76, v15);
      v79 = *(v222 + 24);
      v80 = sub_22C9037DC();
      sub_22C369A9C(v80);
      (*(v81 + 32))(v39 + v78, v76 + v79);
      swift_storeEnumTagMultiPayload();
      v230 = v70;
      v83 = *(v70 + 16);
      v82 = *(v70 + 24);
      if (v83 >= v82 >> 1)
      {
        v89 = sub_22C37187C(v82);
        sub_22C3B696C(v89, v83 + 1, 1);
        v70 = v230;
      }

      *(v70 + 16) = v83 + 1;
      v84 = *(v223 + 80);
      sub_22C36BA94();
      v86 = *(v85 + 72);
      sub_22C377D78();
      sub_22C50D904(v39, v87, v88);
      v73 += v226;
      --v64;
    }

    while (v64);
  }

  MEMORY[0x28223BE20](v90);
  sub_22C387180();
  v92 = *(v91 - 256);
  v93 = v213;
  v94 = v214;
  *(v95 - 32) = v92;
  *(v95 - 24) = v94;
  *(v95 - 16) = v93;
  v96 = v210;
  sub_22C792A18();
  v38 = v211;
  if (v96)
  {
  }

  v219 = v97;
  v220 = 0;

  v36 = sub_22C4AF928();
  v18 = 0;
  v26 = *(v36 + 16);
  v226 = MEMORY[0x277D84F90];
  v98 = v217;
LABEL_26:
  v12 = v208;
  while (v26 != v18)
  {
    if (v18 >= *(v36 + 16))
    {
      goto LABEL_74;
    }

    v99 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v39 = *(v98 + 72);
    sub_22C36AB10();
    sub_22C50D8A8(v100, v38, v101);
    (*v232)(v12, v38, v15);
    v102 = (*v229)(v12, v15);
    (*v228)(v12, v15);
    if (v102 == v227)
    {
      sub_22C36AAF8();
      sub_22C50D904(v38, v207, v103);
      v104 = v226;
      v105 = swift_isUniquelyReferenced_nonNull_native();
      v230 = v104;
      if ((v105 & 1) == 0)
      {
        sub_22C50D978(*(v104 + 16));
        v104 = v230;
      }

      v98 = v217;
      v107 = *(v104 + 16);
      v106 = *(v104 + 24);
      v108 = v104;
      if (v107 >= v106 >> 1)
      {
        v111 = sub_22C37187C(v106);
        sub_22C3B685C(v111, v107 + 1, 1);
        v98 = v217;
        v108 = v230;
      }

      ++v18;
      *(v108 + 16) = v107 + 1;
      v226 = v108;
      sub_22C36AAF8();
      sub_22C50D904(v207, v109, v110);
      v38 = v211;
      goto LABEL_26;
    }

    sub_22C50D820(v38);
    ++v18;
    v98 = v217;
  }

  v112 = v226;
  v113 = *(v226 + 16);
  if (v113)
  {
    v230 = MEMORY[0x277D84F90];
    v114 = v98;
    v115 = sub_22C372264();
    sub_22C3B696C(v115, v116, v117);
    v118 = v230;
    v119 = *(v114 + 80);
    sub_22C36BA94();
    v38 = v112 + v120;
    v232 = *(v114 + 72);
    v121 = (v209 + 32);
    v122 = v225;
    do
    {
      sub_22C36AB10();
      v123 = v221;
      sub_22C50D8A8(v38, v221, v124);
      v125 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      (*v121)(v122, v123, v15);
      v126 = *(v222 + 24);
      v127 = sub_22C9037DC();
      sub_22C369A9C(v127);
      (*(v128 + 32))(v122 + v125, v123 + v126);
      swift_storeEnumTagMultiPayload();
      v230 = v118;
      v130 = *(v118 + 16);
      v129 = *(v118 + 24);
      if (v130 >= v129 >> 1)
      {
        v136 = sub_22C37187C(v129);
        sub_22C3B696C(v136, v130 + 1, 1);
        v118 = v230;
      }

      *(v118 + 16) = v130 + 1;
      v131 = *(v223 + 80);
      sub_22C36BA94();
      v133 = *(v132 + 72);
      sub_22C377D78();
      sub_22C50D904(v122, v134, v135);
      v38 += v232;
      --v113;
    }

    while (v113);
  }

  v12 = &v203;

  MEMORY[0x28223BE20](v137);
  sub_22C387180();
  v139 = *(v138 - 256);
  v140 = v213;
  v141 = v214;
  *(v142 - 32) = v139;
  *(v142 - 24) = v141;
  *(v142 - 16) = v140;
  v143 = v220;
  sub_22C792A18();
  v145 = v143;
  if (v143)
  {
  }

  v147 = v144;

  v230 = v147;
  sub_22C3CD560(v219);
  v228 = sub_22C7F4DE0(v230);
  v39 = v148;
  v36 = *(v148 + 16);
  v15 = MEMORY[0x277D84F90];
  v232 = v148;
  if (v36)
  {
    v220 = 0;
    v230 = MEMORY[0x277D84F90];
    sub_22C372264();
    sub_22C3B63D4();
    v15 = v230;
    v18 = 0;
    v149 = *(type metadata accessor for _PromptToolData(0) - 8);
    v150 = *(v149 + 80);
    sub_22C36BA94();
    v26 = v39 + v151 + 8;
    while (v18 < *(v39 + 16))
    {
      v38 = *(v26 + *(v149 + 72) * v18);
      v230 = v15;
      v153 = *(v15 + 16);
      v152 = *(v15 + 24);
      v12 = (v153 + 1);

      if (v153 >= v152 >> 1)
      {
        sub_22C3B63D4();
        v15 = v230;
      }

      ++v18;
      *(v15 + 16) = v12;
      *(v15 + 8 * v153 + 32) = v38;
      v39 = v232;
      if (v36 == v18)
      {
        v139 = v212;
        v145 = v220;
        goto LABEL_51;
      }
    }

    goto LABEL_75;
  }

LABEL_51:
  v154 = v228;

  v155 = sub_22C50BBFC(v154, v39);
  v227 = sub_22C50BF60(v155);
  v156 = v145;

  v157 = sub_22C4AF4A0();
  v158 = MEMORY[0x28223BE20](v157);
  v160 = v213;
  v159 = v214;
  *(&v203 - 4) = v139;
  *(&v203 - 3) = v159;
  *(&v203 - 2) = v160;
  sub_22C566700(v158, &unk_283FAF1C8, v139, v159, sub_22C50D89C, (&v203 - 6));
  v162 = v161;

  v163 = *(v162 + 16);
  if (v163)
  {
    v225 = v15;
    v226 = v145;
    v230 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v164 = 32;
    v165 = v230;
    v229 = xmmword_22C919C60;
    do
    {
      v166 = v162;
      v167 = *(v162 + v164);
      v168 = swift_allocObject();
      *(v168 + 16) = v229;
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v169 = swift_allocObject();
      *(v169 + 16) = v167;
      *(v168 + 32) = v169;
      sub_22C369AEC();
      v170 = swift_allocObject();
      sub_22C369AEC();
      v171 = swift_allocObject();
      *(v171 + 16) = v168 | 0x8000000000000000;
      *(v170 + 16) = v171;
      v230 = v165;
      v173 = *(v165 + 16);
      v172 = *(v165 + 24);

      if (v173 >= v172 >> 1)
      {
        sub_22C3B63D4();
        v165 = v230;
      }

      *(v165 + 16) = v173 + 1;
      *(v165 + 8 * v173 + 32) = v170 | 0x6000000000000000;
      v164 += 8;
      --v163;
      v162 = v166;
    }

    while (v163);

    v39 = v232;
    v15 = v225;
    v156 = v226;
  }

  else
  {

    v165 = MEMORY[0x277D84F90];
  }

  v230 = v165;
  sub_22C3CD124(v15);
  v12 = sub_22C47D738(2570, 0xE200000000000000, v230);

  v15 = MEMORY[0x277D84F90];
  v230 = MEMORY[0x277D84F90];
  sub_22C496A94();
  if (!v156)
  {
    v175 = v174;
    v176 = 0;

    sub_22C36A83C();
    v177 = swift_allocObject();
    v18 = v177;
    v232 = v12;
    if ((v175 & 1) == 0)
    {
      v38 = 0;
      *(v177 + 16) = 0x6F68747970606060;
      *(v177 + 24) = 0xEA00000000000A6ELL;
      sub_22C591324();
      v180 = v179;
      v26 = *(v179 + 16);
      v181 = *(v179 + 24) >> 1;
      v36 = v26 + 1;
      if (v181 > v26)
      {
        goto LABEL_62;
      }

      goto LABEL_77;
    }

    v230 = 0;
    v231 = 0xE000000000000000;
    *(v177 + 16) = sub_22C90A49C();
    *(v18 + 24) = v178;
    goto LABEL_67;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C50D600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a4;
  v18[2] = a5;
  v6 = sub_22C90963C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C90941C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3 + *(type metadata accessor for ToolRenderer_v1_0() + 20);
  sub_22C483378();
  sub_22C374168(v19, v19[3]);
  MEMORY[0x2318B6CE0]();
  (*(v7 + 104))(v10, *MEMORY[0x277D72E08], v6);
  sub_22C4FCD10();
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  return sub_22C36FF94(v19);
}

uint64_t sub_22C50D820(uint64_t a1)
{
  v2 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C50D8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C369A9C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C50D904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C369A9C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_22C50D978(uint64_t a1@<X8>)
{

  sub_22C3B685C(0, a1 + 1, 1);
}

void sub_22C50D998()
{

  sub_22C591324();
}

uint64_t sub_22C50D9B8()
{
  v1 = sub_22C90399C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C9063DC();
  v11 = sub_22C369824(v10);
  v49 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C90355C();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - v25;
  sub_22C90394C();
  v27 = (*(v21 + 88))(v26, v18);
  v33 = v27 == *MEMORY[0x277D1EAB8] || v27 == *MEMORY[0x277D1EB38] || v27 == *MEMORY[0x277D1EB28] || v27 == *MEMORY[0x277D1EB48] || v27 == *MEMORY[0x277D1EB00] || v27 == *MEMORY[0x277D1EB18] || v27 == *MEMORY[0x277D1EA80];
  result = v33;
  if (!v33)
  {
    v47 = result;
    v48 = v10;
    sub_22C903F7C();
    (*(v4 + 16))(v9, v0, v1);
    v35 = sub_22C9063CC();
    v36 = sub_22C90AACC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = sub_22C36FB44();
      v44 = v1;
      v38 = v37;
      v46 = swift_slowAlloc();
      v50 = v46;
      *v38 = 136315138;
      v45 = v36;
      sub_22C90394C();
      v39 = sub_22C90A1AC();
      v41 = v40;
      (*(v4 + 8))(v9, v44);
      v42 = sub_22C36F9F4(v39, v41, &v50);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_22C366000, v35, v45, "Context type unsupported in prompt: %s", v38, 0xCu);
      sub_22C36FF94(v46);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v4 + 8))(v9, v1);
    }

    (*(v49 + 8))(v17, v48);
    (*(v21 + 8))(v26, v18);
    return v47;
  }

  return result;
}

uint64_t sub_22C50DD60(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v253 = a4;
  v241 = a3;
  v245 = sub_22C901FAC();
  v5 = sub_22C369824(v245);
  v239 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C3698F8(v10 - v9);
  v252 = sub_22C902D0C();
  v11 = sub_22C369824(v252);
  v238 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C3698F8(v16 - v15);
  v250 = type metadata accessor for DirectionalTypedValue();
  v17 = sub_22C36985C(v250);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  sub_22C36D234(v21 - v20);
  v22 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v23 = sub_22C369914(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C3698F8(&v236 - v26);
  v267 = sub_22C9093BC();
  v27 = sub_22C369824(v267);
  v237 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  sub_22C3698F8(v32 - v31);
  v283 = sub_22C9063DC();
  v33 = sub_22C369824(v283);
  v286 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA58();
  sub_22C3698D4();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v236 - v40;
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  sub_22C3698F8(v42);
  v43 = sub_22C90355C();
  v44 = sub_22C369824(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C369ABC();
  ObjectType = v49 - v50;
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA64();
  sub_22C3698F8(v54);
  v55 = sub_22C90399C();
  v56 = sub_22C369824(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C3698E4();
  sub_22C3698D4();
  v62 = MEMORY[0x28223BE20](v61);
  v64 = (&v236 - v63);
  MEMORY[0x28223BE20](v62);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v66);
  v68 = (&v236 - v67);
  v69 = sub_22C9081CC();
  v70 = sub_22C369824(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v75);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v78);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v79);
  sub_22C36BA64();
  sub_22C36D234(v80);
  v82 = *(v254 + 272);
  v287 = v83 + 16;
  v280 = v46 + 11;
  v275 = v58 + 16;
  v282 = (v286 + 1);
  v274 = v46 + 1;
  v284 = (v83 + 8);
  v281 = v83;
  v243 = (v83 + 32);
  v286 = (v58 + 8);
  v273 = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v272 = v55;
  v285 = v69;
  v271 = a1;
  if (v82 == 1)
  {
    v84 = 0;
    v266 = *(a1 + 16);
    LODWORD(v263) = *MEMORY[0x277D1EAB8];
    LODWORD(v262) = *MEMORY[0x277D1EB38];
    LODWORD(v261) = *MEMORY[0x277D1EB28];
    LODWORD(v260) = *MEMORY[0x277D1EB48];
    v259 = *MEMORY[0x277D1EB00];
    v258 = *MEMORY[0x277D1EB18];
    v240 = MEMORY[0x277D84F90];
    LODWORD(v257) = *MEMORY[0x277D1EA80];
    *&v81 = 136315138;
    v256 = v81;
    v255 = v68;
LABEL_4:
    v124 = v246;
    while (v266 != v84)
    {
      ObjectType = (*(v281 + 80) + 32) & ~*(v281 + 80);
      v85 = *(v281 + 72);
      v278 = v84;
      v86 = *(v281 + 16);
      v87 = sub_22C3826F0();
      v88(v87);
      sub_22C9081AC();
      sub_22C36D818(&v297);
      sub_22C90394C();
      sub_22C36BA4C(&v298);
      v90 = v89(v46, v43);
      if (v90 == v263 || v90 == v262 || v90 == v261 || v90 == v260 || v90 == v259 || v90 == v258 || v90 == v257)
      {
        v110 = v68;
        v111 = v43;
        v112 = v110;
        (*v286)();
        v113 = *v243;
        (*v243)(v242, v277, v69);
        sub_22C37FE04(&v266);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v288[0] = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isa = v46[2].isa;
          v116 = sub_22C373310();
          sub_22C3B6170(v116, v117, v118);
          v46 = v288[0];
        }

        v119 = v278;
        v120 = v46;
        v69 = v46[2].isa;
        v121 = v46[3].isa;
        v46 = (v69 + 1);
        if (v69 >= v121 >> 1)
        {
          v122 = sub_22C369AB0(v121);
          sub_22C3B6170(v122, v69 + 1, 1);
          v119 = v278;
          v120 = v288[0];
        }

        v84 = (&v119->isa + 1);
        *(v120 + 16) = v46;
        v240 = v120;
        sub_22C383068(v268);
        v113();
        v43 = v111;
        v68 = v112;
        goto LABEL_4;
      }

      sub_22C903F7C();
      sub_22C36BA4C(&v296);
      ObjectType = v264;
      v97(v264, v68, v55);
      v46 = sub_22C9063CC();
      v98 = v55;
      v99 = sub_22C90AACC();
      if (sub_22C36FBB4(v99))
      {
        sub_22C36FB44();
        v100 = sub_22C379928();
        v293 = v100;
        *ObjectType = v256;
        sub_22C90394C();
        v101 = sub_22C90A1AC();
        v103 = v102;
        v104 = v43;
        v105 = *v286;
        (*v286)(ObjectType, v98);
        v106 = sub_22C36F9F4(v101, v103, &v293);

        *(ObjectType + 4) = v106;
        _os_log_impl(&dword_22C366000, v46, v99, "Context type unsupported in prompt: %s", ObjectType, 0xCu);
        sub_22C36FF94(v100);
        v69 = v285;
        sub_22C3699EC();
        sub_22C372FB0();

        v124 = v246;
        (*v282)(v246, v283);
      }

      else
      {

        v104 = v43;
        v105 = *v286;
        (*v286)(ObjectType, v98);
        (*v282)(v124, v283);
      }

      v55 = v98;
      v107 = v278;
      sub_22C36BA4C(&v295);
      v108(v276, v104);
      v109 = sub_22C37FE04(&v284);
      (v105)(v109, v98);
      (*v284)(v277, v69);
      v84 = (&v107->isa + 1);
      v43 = v104;
      v68 = v46;
    }

    sub_22C50F694(v240);
    v162 = v161;

    sub_22C38A944();
  }

  else
  {
    v255 = v64;
    v257 = v41;
    v123 = 0;
    v276 = *(a1 + 16);
    LODWORD(v264) = *MEMORY[0x277D1EAB8];
    LODWORD(v263) = *MEMORY[0x277D1EB38];
    LODWORD(v262) = *MEMORY[0x277D1EB28];
    LODWORD(v261) = *MEMORY[0x277D1EB48];
    LODWORD(v260) = *MEMORY[0x277D1EB00];
    v259 = *MEMORY[0x277D1EB18];
    v242 = MEMORY[0x277D84F90];
    v258 = *MEMORY[0x277D1EA80];
    *&v81 = 136315138;
    v246 = v81;
    v124 = v266;
    *&v256 = ObjectType;
LABEL_34:
    sub_22C38A944();
    while (v276 != v123)
    {
      v125 = (*(v281 + 80) + 32) & ~*(v281 + 80);
      v68 = *(v281 + 72);
      v277 = v123;
      v126 = *(v281 + 16);
      v127 = sub_22C3826F0();
      v128(v127);
      sub_22C9081AC();
      sub_22C90394C();
      sub_22C36BA4C(&v298);
      v130 = v129(ObjectType, v43);
      if (v130 == v264 || v130 == v263 || v130 == v262 || v130 == v261 || v130 == v260 || v130 == v259 || v130 == v258)
      {
        v46 = v43;
        (*v286)(v124, v55);
        v151 = *v243;
        (*v243)(v240, v278, v69);
        v152 = v242;
        v153 = swift_isUniquelyReferenced_nonNull_native();
        v288[0] = v152;
        if ((v153 & 1) == 0)
        {
          v154 = *(v152 + 16);
          v155 = sub_22C373310();
          sub_22C3B6170(v155, v156, v157);
          v152 = v288[0];
        }

        v69 = *(v152 + 16);
        v158 = *(v152 + 24);
        if (v69 >= v158 >> 1)
        {
          v160 = sub_22C369AB0(v158);
          sub_22C3B6170(v160, v69 + 1, 1);
          v152 = v288[0];
        }

        v159 = (v277 + 1);
        *(v152 + 16) = v69 + 1;
        v242 = v152;
        v123 = v159;
        sub_22C383068(&v266);
        v151();
        v43 = v46;
        goto LABEL_34;
      }

      v137 = v257;
      sub_22C903F7C();
      sub_22C36BA4C(&v296);
      v138 = v124;
      v124 = v255;
      v139(v255, v138, v55);
      v68 = sub_22C9063CC();
      v140 = sub_22C90AACC();
      if (os_log_type_enabled(v68, v140))
      {
        v141 = sub_22C36FB44();
        v142 = swift_slowAlloc();
        v293 = v142;
        *v141 = v246;
        sub_22C36D818(v290);
        sub_22C90394C();
        v143 = sub_22C90A1AC();
        v55 = v144;
        v145 = sub_22C37BA50();
        (v43)(v145, v272);
        sub_22C36F9F4(v143, v55, &v293);
        sub_22C512138();
        *(v141 + 4) = v143;
        _os_log_impl(&dword_22C366000, v68, v140, "Context type unsupported in prompt: %s", v141, 0xCu);
        sub_22C36FF94(v142);
        v69 = v285;
        sub_22C3699EC();
        sub_22C3699EC();
      }

      else
      {

        v146 = sub_22C37BA50();
        (v43)(v146, v55);
      }

      sub_22C37F230();
      v147(v137);
      v148 = v277;
      sub_22C36BA4C(&v295);
      ObjectType = v256;
      v149(v256, v46);
      v150 = sub_22C372274(v291);
      (v43)(v150, v55);
      (*v284)(v278, v69);
      v123 = (v148 + 1);
      sub_22C38A944();
      v43 = v46;
    }

    v162 = v242;
  }

  v163 = v162[2].isa;
  sub_22C512164();
  v164 = v267;
  sub_22C3701EC();
  if (v165)
  {
    LODWORD(v275) = v241 == 0;
    sub_22C37054C();
    v242 = v162;
    v260 = v167;
    v168 = (v162 + v167);
    v278 = *(v169 + 72);
    v170 = *(v169 + 16);
    v274 = v237 + 4;
    v273 = &v237[2];
    LODWORD(v271) = *MEMORY[0x277D1D7F8];
    v266 = v238 + 13;
    v265 = v238 + 1;
    v264 = &v237[1];
    v276 = MEMORY[0x277D84F90];
    v262 = v239 + 8;
    *&v172 = *(v171 + 32);
    v261 = v172;
    v277 = v170;
    do
    {
      v281 = v166;
      v280 = v168;
      v173 = v285;
      (v170)(v68);
      sub_22C36D818(v292);
      sub_22C9081AC();
      sub_22C90391C();
      (*v286)(v162, v55);
      if (sub_22C370B74(ObjectType, 1, v164) == 1)
      {
        sub_22C36DD28(ObjectType, &qword_27D9BB908, &qword_22C910960);
        sub_22C903F7C();
        (v170)(v248, v68, v173);
        v162 = sub_22C9063CC();
        v174 = sub_22C90AACC();
        if (sub_22C36FBB4(v174))
        {
          sub_22C36FB44();
          v263 = sub_22C379928();
          sub_22C512118(v263);
          sub_22C9068FC();
          sub_22C5117E8();
          sub_22C372274(&v272);
          v175 = sub_22C90B47C();
          v55 = v176;
          sub_22C36BA4C(v289);
          v177(v164, v124);
          v124 = *v284;
          v178 = sub_22C512158();
          (v124)(v178);
          sub_22C36F9F4(v175, v55, v288);
          sub_22C512138();
          *(ObjectType + 4) = v175;
          _os_log_impl(&dword_22C366000, v162, v174, "TypedValue for contextual entity with statementID: %s is nil.", ObjectType, 0xCu);
          sub_22C36FF94(v263);
          sub_22C3699EC();
          sub_22C372FB0();

          sub_22C37F230();
          v179(v270[1]);
          (v124)(v68, v173);
          sub_22C3701EC();
          v164 = v267;
          sub_22C512164();
        }

        else
        {

          v162 = *v284;
          v199 = sub_22C512158();
          (v162)(v199);
          sub_22C37F230();
          v200(v124);
          (v162)(v68, v173);
        }

        v170 = v277;
      }

      else
      {
        sub_22C36BA4C(&v295);
        v180 = v270[0];
        v181(v270[0], ObjectType, v164);
        v183 = *(v254 + 160);
        v182 = *(v254 + 168);
        ObjectType = swift_getObjectType();
        sub_22C36BA4C(&v294);
        v68 = v249;
        v184(v249, v180, v164);
        swift_storeEnumTagMultiPayload();
        v185 = v253[4];
        sub_22C36BA4C(v291);
        v124 = v251;
        v164 = v252;
        v186(v251, v271, v252);
        (*(v182 + 8))(v288, v68, v275, v185, v124, ObjectType, v182);
        sub_22C36BA4C(v290);
        v187(v124, v164);
        sub_22C5120C0(v68, type metadata accessor for DirectionalTypedValue);
        if (v289[0])
        {
          v188 = v244;
          sub_22C903F7C();
          sub_22C372274(v269);
          sub_22C38A944();
          v189 = v285;
          v170 = v277;
          v277();
          v162 = sub_22C9063CC();
          v190 = sub_22C90AADC();
          if (sub_22C36FBB4(v190))
          {
            sub_22C36FB44();
            v68 = sub_22C379928();
            sub_22C512118(v68);
            sub_22C9068FC();
            sub_22C5117E8();
            v191 = v124;
            sub_22C372274(&v272);
            v192 = sub_22C90B47C();
            v55 = v193;
            sub_22C36BA4C(v289);
            v194(v164, v124);
            v124 = v284;
            v164 = *v284;
            (*v284)(v191, v189);
            sub_22C36F9F4(v192, v55, v288);
            sub_22C512138();
            *(ObjectType + 4) = v192;
            _os_log_impl(&dword_22C366000, v162, v190, "Unable to render the contextual entity due to a rendering failure. StatementID: %s", ObjectType, 0xCu);
            sub_22C36FF94(v68);
            sub_22C38A944();
            sub_22C3699EC();
            sub_22C372FB0();

            sub_22C37F230();
            v195(v244);
            v196 = sub_22C377D90();
            v197(v196);
            v198 = sub_22C512158();
            (v164)(v198);
            v170 = v277;
          }

          else
          {

            ObjectType = v284;
            v162 = *v284;
            (*v284)(v124, v189);
            sub_22C37F230();
            v210(v188);
            v211 = sub_22C377D90();
            v212(v211);
            v213 = sub_22C512158();
            (v162)(v213);
          }

          sub_22C512164();
          sub_22C3701EC();
        }

        else
        {
          v201 = v288[0];
          v202 = v288[1];
          ObjectType = v288[2];
          v203 = v288[3];
          v204 = v288[4];
          v170 = v277;
          (v277)(v247, v279, v285);
          v205 = v276;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v214 = *(v205 + 16);
            sub_22C373310();
            sub_22C59238C();
            v205 = v215;
          }

          v124 = *(v205 + 16);
          v206 = *(v205 + 24);
          if (v124 >= v206 >> 1)
          {
            sub_22C369AB0(v206);
            sub_22C59238C();
            v276 = v216;
          }

          else
          {
            v276 = v205;
          }

          sub_22C456CE4(v201, v202, ObjectType, v203, v204, 0);
          v207 = sub_22C377D90();
          v208(v207);
          v162 = v285;
          v68 = v279;
          (*v284)(v279, v285);
          *(v276 + 16) = &v124->isa + 1;
          sub_22C36BA4C(v270);
          v209();
          sub_22C512164();
          sub_22C3701EC();
          v55 = v272;
        }
      }

      v168 = (v278 + v280);
      v166 = v281 - 1;
    }

    while (v281 != 1);

    v218 = v275;
  }

  else
  {
    v218 = v241 == 0;
  }

  MEMORY[0x28223BE20](v217);
  *(&v236 - 4) = v254;
  *(&v236 - 24) = v218;
  v219 = v253;
  *(&v236 - 2) = v253;
  v220 = sub_22C792DEC(sub_22C5117C4);

  if (*(v220 + 16))
  {
    v221 = v219[9];
    sub_22C374168(v219 + 5, v219[8]);
    sub_22C47D738(8202, 0xE200000000000000, v220);

    v222 = sub_22C512170(5);

    v223 = v219[9];
    sub_22C374168(v219 + 5, v219[8]);
    sub_22C36A83C();
    v224 = swift_allocObject();
    strcpy(v288, "get_context()");
    HIWORD(v288[1]) = -4864;
    *(v224 + 16) = sub_22C90A49C();
    *(v224 + 24) = v225;
    v226 = sub_22C512170(1);

    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v227 = swift_allocObject();
    *(v227 + 16) = xmmword_22C90F800;
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    *(inited + 32) = v226;
    *(inited + 40) = v222;

    v229 = sub_22C3DB9B0(inited);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v230 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v231 = swift_allocObject();
    *(v231 + 16) = v229;
    *(v230 + 16) = v231;
    v232 = v230 | 0x6000000000000000;
    sub_22C36A83C();
    v233 = swift_allocObject();
    *(v233 + 16) = v218;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v234 = swift_allocObject();
    *(v234 + 16) = v232;
    *(v233 + 24) = v234;
    *(v227 + 32) = v233 | 0x8000000000000000;
    *(v227 + 40) = 0;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v227;
}

void sub_22C50F694(uint64_t a1)
{
  v202 = sub_22C3A5908(&qword_27D9BC060, &unk_22C911E50);
  v2 = sub_22C369914(v202);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v5);
  sub_22C36BA64();
  sub_22C36D234(v6);
  v209 = sub_22C3A5908(&qword_27D9BD970, &qword_22C919DA8);
  v7 = sub_22C36985C(v209);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  sub_22C3698F8(v14);
  v220 = sub_22C90399C();
  v15 = sub_22C369824(v220);
  v218 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  sub_22C36D234(v20);
  v21 = sub_22C3A5908(&qword_27D9BD978, &unk_22C919DB0);
  v22 = sub_22C369914(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v25);
  v27 = v181 - v26;
  v224 = sub_22C9081CC();
  v28 = sub_22C369824(v224);
  v222 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  v223 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  v217 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  sub_22C36D234(v38);
  v39 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v215 = *(v39 - 8);
  v40 = *(v215 + 64);
  MEMORY[0x28223BE20](v39 - 8);
  sub_22C36D234(v181 - v41);
  v192 = sub_22C3A5908(&qword_27D9BD980, &qword_22C919DC0);
  v42 = sub_22C36985C(v192);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA64();
  sub_22C36D234(v46);
  v47 = sub_22C3A5908(&qword_27D9BD988, &qword_22C919DC8);
  v48 = sub_22C369914(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C3698E4();
  v219 = v51;
  MEMORY[0x28223BE20](v52);
  sub_22C36BA64();
  v214 = v53;
  v54 = sub_22C9063DC();
  v55 = sub_22C369824(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22C369ABC();
  v62 = v60 - v61;
  MEMORY[0x28223BE20](v63);
  v65 = v181 - v64;
  sub_22C903F7C();
  v66 = a1;

  v67 = sub_22C9063CC();
  v68 = sub_22C90AACC();
  v69 = os_log_type_enabled(v67, v68);
  v187 = v54;
  v186 = v57;
  v185 = v62;
  v211 = v27;
  if (v69)
  {
    swift_slowAlloc();
    v70 = sub_22C379928();
    v226 = v70;
    *v62 = 136315394;
    *(v62 + 4) = sub_22C36FCE8(":identifierResolvedAST:)");
    *(v62 + 12) = 2048;
    *(v62 + 14) = *(v66 + 16);

    _os_log_impl(&dword_22C366000, v67, v68, "%s Before size=%ld", v62, 0x16u);
    sub_22C36FF94(v70);
    sub_22C3699EC();
    sub_22C372FB0();
  }

  else
  {
  }

  v184 = *(v57 + 8);
  v184(v65, v54);

  sub_22C511840(v71);
  v183 = v72;
  v74 = v73;
  v76 = v75;
  sub_22C406550(MEMORY[0x277D84F90]);
  v203 = v77;
  v78 = 0;
  v226 = v79;
  v227 = v80;
  v190 = v76 + 32;
  v221 = v222 + 16;
  v193 = v76;
  v213 = *(v76 + 16);
  v182 = (v218 + 1);
  v218 = (v222 + 8);
  v216 = (v222 + 32);
  v212 = v74;
  v81 = v195;
  v82 = v194;
  v83 = v219;
  while (2)
  {
    v84 = v214;
LABEL_6:
    if (v78 >= v213)
    {
      v93 = sub_22C3A5908(&qword_27D9BD990, qword_22C919DD0);
      sub_22C36C640(v83, 1, 1, v93);
    }

    else
    {
      if ((v78 & 0x8000000000000000) != 0)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v78 >= *(v74 + 16))
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v85 = v192;
      v86 = *(v192 + 48);
      sub_22C37054C();
      sub_22C3DB138(v74 + v87 + *(v88 + 72) * v78, v82, &qword_27D9BB0C0, &qword_22C90D960);
      if (v78 >= *(v193 + 16))
      {
LABEL_54:
        __break(1u);
        return;
      }

      *(v82 + v86) = *(v190 + 8 * v78);
      v89 = v191;
      sub_22C3DB08C(v82, v191, &qword_27D9BD980, &qword_22C919DC0);
      v90 = *(v85 + 48);
      v91 = sub_22C3A5908(&qword_27D9BD990, qword_22C919DD0);
      v92 = *(v91 + 48);
      ++v78;
      sub_22C3DB08C(v89, v219, &qword_27D9BB0C0, &qword_22C90D960);
      *&v219[v92] = *(v89 + v90);
      v83 = v219;
      v82 = v194;
      v81 = v195;
      sub_22C36C640(v219, 0, 1, v91);
    }

    sub_22C3DB08C(v83, v84, &qword_27D9BD988, &qword_22C919DC8);
    v94 = sub_22C3A5908(&qword_27D9BD990, qword_22C919DD0);
    if (sub_22C370B74(v84, 1, v94) != 1)
    {
      v95 = *(v94 + 48);
      sub_22C3DB08C(v84, v81, &qword_27D9BB0C0, &qword_22C90D960);
      v96 = *(v84 + v95);
      v97 = *(v96 + 16);
      if (!v97)
      {

        sub_22C36DD28(v81, &qword_27D9BB0C0, &qword_22C90D960);
        v74 = v212;
        continue;
      }

      sub_22C37054C();
      v181[0] = v98;
      v100 = *(v99 + 16);
      v205 = (v96 + v98);
      v210 = v100;
      (v100)(v217);
      v101 = 1;
      v102 = v211;
      v103 = v182;
      while (1)
      {
        if (v97 == v101)
        {
          v112 = *v216;
          v113 = sub_22C37FE04(&v213);
          v114 = v224;
          v112(v113);
          v115 = v188;
          (v112)(v188, v81, v114);
          sub_22C405B44(v195);
          v210(v189, v115, v114);
          sub_22C37FE04(&v228);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v225 = v81;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v117 = *(v81 + 16);
            v118 = sub_22C373310();
            sub_22C3B6170(v118, v119, v120);
            v81 = v225;
          }

          v84 = v214;
          v122 = *(v81 + 16);
          v121 = *(v81 + 24);
          if (v122 >= v121 >> 1)
          {
            v127 = sub_22C369AB0(v121);
            sub_22C3B6170(v127, v122 + 1, 1);
          }

          v123 = v222;
          v124 = v224;
          (*(v222 + 8))(v188, v224);
          v125 = sub_22C37FE04(&v227);
          sub_22C36DD28(v125, &qword_27D9BB0C0, &qword_22C90D960);
          v126 = v225;
          *(v225 + 16) = v122 + 1;
          v203 = v126;
          (v112)(v126 + v181[0] + *(v123 + 72) * v122, v189, v124);
          v74 = v212;
          v82 = v194;
          v83 = v219;
          goto LABEL_6;
        }

        if (v101 >= *(v96 + 16))
        {
          __break(1u);
          goto LABEL_50;
        }

        v210(v223, v205 + *(v222 + 72) * v101, v224);
        sub_22C36D818(&v229);
        sub_22C9081AC();
        sub_22C90398C();
        v104 = *v103;
        (*v103)(v81, v220);
        v105 = sub_22C90352C();
        if (sub_22C370B74(v102, 1, v105) == 1)
        {
          sub_22C36DD28(v102, &qword_27D9BD978, &unk_22C919DB0);
          v106 = 0.0;
        }

        else
        {
          sub_22C90351C();
          v106 = v107;
          (*(*(v105 - 8) + 8))(v102, v105);
        }

        sub_22C36D818(&v230);
        sub_22C9081AC();
        v108 = v206;
        sub_22C90398C();
        v104(v81, v220);
        if (sub_22C370B74(v108, 1, v105) == 1)
        {
          sub_22C36DD28(v108, &qword_27D9BD978, &unk_22C919DB0);
          if (v106 >= 0.0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_22C90351C();
          v110 = v109;
          (*(*(v105 - 8) + 8))(v108, v105);
          if (v106 >= v110)
          {
LABEL_22:
            (*v218)(v223, v224);
            goto LABEL_25;
          }
        }

        v81 = v217;
        v111 = v224;
        (*v218)(v217, v224);
        (*v216)(v81, v223, v111);
LABEL_25:
        v102 = v211;
        ++v101;
      }
    }

    break;
  }

  v128 = v227;
  v205 = v226;
  sub_22C406550(MEMORY[0x277D84F90]);
  v130 = v129;
  v226 = v131;
  v227 = v132;
  v211 = *(v203 + 16);
  v214 = v128;
  if (v211)
  {
    v213 = v129;
    v133 = 0;
    v210 = (v128 + ((*(v215 + 80) + 32) & ~*(v215 + 80)));
    v134 = (*(v222 + 80) + 32) & ~*(v222 + 80);
    v208 = *(v209 + 48);
    v206 = v134;
    v207 = v203 + v134;
    v135 = &qword_27D9BB0C0;
    v136 = &qword_22C90D960;
    v137 = v202;
    v138 = v203;
    while (v133 < *(v128 + 16))
    {
      v139 = *(v137 + 48);
      v140 = v201;
      sub_22C3DB138(v210 + *(v215 + 72) * v133, v201, v135, v136);
      if (v133 >= *(v138 + 16))
      {
        goto LABEL_51;
      }

      v141 = *(v222 + 72);
      v223 = v133;
      v217 = v141;
      v220 = *(v222 + 16);
      v142 = v222;
      v143 = v224;
      v220(v140 + v139, v207 + v141 * v133, v224);
      v144 = v140;
      v145 = v200;
      sub_22C3DB08C(v144, v200, &qword_27D9BC060, &unk_22C911E50);
      v146 = *(v137 + 48);
      v147 = v196;
      sub_22C3DB08C(v145, v196, v135, v136);
      v148 = *(v142 + 32);
      v149 = v208;
      v148(v147 + v208, v145 + v146, v143);
      v150 = v209;
      v151 = *(v209 + 48);
      v152 = v136;
      v153 = v135;
      v154 = v204;
      sub_22C3DB08C(v147, v204, v153, v152);
      v219 = v148;
      v148(v154 + v151, v147 + v149, v143);
      v155 = v197;
      sub_22C3DB138(v154, v197, &qword_27D9BD970, &qword_22C919DA8);
      v156 = *(v150 + 48);
      v157 = v198;
      sub_22C3DB138(v155, v198, v153, v152);
      v220(v157 + *(v150 + 48), v155 + v156, v143);
      v158 = sub_22C90952C();
      LODWORD(v148) = sub_22C370B74(v157, 1, v158);
      sub_22C36DD28(v157, &qword_27D9BD970, &qword_22C919DA8);
      (*(v222 + 8))(v155 + v156, v143);
      v159 = v153;
      v160 = v153;
      v136 = v152;
      sub_22C36DD28(v155, v160, v152);
      if (v148 == 1)
      {
        sub_22C36DD28(v154, &qword_27D9BD970, &qword_22C919DA8);
        v128 = v214;
        v135 = v159;
        v161 = v223;
      }

      else
      {
        sub_22C405B44(v154);
        sub_22C3DB138(v154, v199, &qword_27D9BD970, &qword_22C919DA8);
        v162 = v213;
        v163 = swift_isUniquelyReferenced_nonNull_native();
        v225 = v162;
        if ((v163 & 1) == 0)
        {
          v164 = *(v162 + 16);
          v165 = sub_22C373310();
          sub_22C3B6170(v165, v166, v167);
          v162 = v225;
        }

        v135 = v159;
        v161 = v223;
        v168 = v217;
        v170 = *(v162 + 16);
        v169 = *(v162 + 24);
        if (v170 >= v169 >> 1)
        {
          v174 = sub_22C369AB0(v169);
          sub_22C3B6170(v174, v170 + 1, 1);
          v162 = v225;
        }

        v171 = *(v209 + 48);
        sub_22C36DD28(v204, &qword_27D9BD970, &qword_22C919DA8);
        *(v162 + 16) = v170 + 1;
        v213 = v162;
        v172 = v162 + v206 + v170 * v168;
        v173 = v199;
        (v219)(v172, v199 + v171, v224);
        sub_22C36DD28(v173, v159, v136);
        v128 = v214;
      }

      v133 = v161 + 1;
      v137 = v202;
      v138 = v203;
      if (v211 == v133)
      {
        v130 = v213;
        goto LABEL_45;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_45:

  v175 = v185;
  sub_22C903F7C();

  v176 = sub_22C9063CC();
  v177 = sub_22C90AACC();
  v178 = sub_22C36FBB4(v177);
  v179 = v187;
  if (v178)
  {
    swift_slowAlloc();
    v180 = sub_22C379928();
    v226 = v180;
    *v128 = 136315394;
    *(v128 + 4) = sub_22C36FCE8(":identifierResolvedAST:)");
    *(v128 + 12) = 2048;
    *(v128 + 14) = *(v130 + 16);

    _os_log_impl(&dword_22C366000, v176, v177, "%s After size=%ld", v128, 0x16u);
    sub_22C36FF94(v180);
    sub_22C3699EC();
    sub_22C372FB0();
  }

  else
  {
  }

  v184(v175, v179);
}

uint64_t sub_22C5108B4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _DWORD *a4@<X3>, uint64_t *a5@<X8>)
{
  v107 = a2;
  v108 = a4;
  LODWORD(v109) = a3;
  v117 = a5;
  v111 = sub_22C901FAC();
  v101 = *(v111 - 8);
  v6 = *(v101 + 64);
  MEMORY[0x28223BE20](v111);
  v100 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for PromptTreeIdentifier(0);
  v8 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v98 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22C902D0C();
  v106 = *(v110 - 1);
  v10 = *(v106 + 64);
  MEMORY[0x28223BE20](v110);
  v105 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for DirectionalTypedValue();
  v12 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v104 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C9081CC();
  v112 = *(v14 - 8);
  v113 = v14;
  v15 = *(v112 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v96 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v103 = &ObjectType - v18;
  v19 = sub_22C9063DC();
  v114 = *(v19 - 8);
  v115 = v19;
  v20 = *(v114 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v99 = &ObjectType - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v116 = &ObjectType - v23;
  v24 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &ObjectType - v26;
  v28 = sub_22C90399C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &ObjectType - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22C9093BC();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &ObjectType - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9081AC();
  sub_22C90391C();
  (*(v29 + 8))(v32, v28);
  v38 = v33;
  if (sub_22C370B74(v27, 1, v33) == 1)
  {
    sub_22C36DD28(v27, &qword_27D9BB908, &qword_22C910960);
    sub_22C903F7C();
    v39 = v112;
    v40 = v103;
    v41 = v113;
    (*(v112 + 16))(v103, a1, v113);
    v42 = sub_22C9063CC();
    v43 = sub_22C90AADC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v118[0] = v110;
      *v44 = 136315138;
      v45 = v100;
      sub_22C9068FC();
      sub_22C5117E8();
      v46 = v111;
      v109 = sub_22C90B47C();
      v47 = v40;
      v49 = v48;
      (*(v101 + 8))(v45, v46);
      (*(v39 + 8))(v47, v41);
      v50 = sub_22C36F9F4(v109, v49, v118);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_22C366000, v42, v43, "Ommitting empty context entity with statementID: %s", v44, 0xCu);
      v51 = v110;
      sub_22C36FF94(v110);
      MEMORY[0x2318B9880](v51, -1, -1);
      MEMORY[0x2318B9880](v44, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v40, v41);
    }

    result = (*(v114 + 8))(v116, v115);
    goto LABEL_9;
  }

  v103 = a1;
  (*(v34 + 32))(v37, v27, v33);
  v53 = *(v107 + 160);
  v52 = *(v107 + 168);
  ObjectType = swift_getObjectType();
  v107 = v34;
  v54 = v104;
  (*(v34 + 16))(v104, v37, v38);
  swift_storeEnumTagMultiPayload();
  v116 = v38;
  v55 = *(v108 + 4);
  v56 = *MEMORY[0x277D1D7F8];
  v57 = v105;
  v58 = v106;
  v59 = v110;
  v108 = *(v106 + 104);
  (v108)(v105, v56, v110);
  (*(v52 + 8))(v118, v54, v109 & 1, v55, v57, ObjectType, v52);
  (*(v58 + 8))(v57, v59);
  sub_22C5120C0(v54, type metadata accessor for DirectionalTypedValue);
  if (v119 == 1)
  {
    v60 = v116;
    v61 = v99;
    sub_22C903F7C();
    v62 = v112;
    v63 = v113;
    v64 = v96;
    (*(v112 + 16))(v96, v103, v113);
    v65 = sub_22C9063CC();
    v66 = sub_22C90AADC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v108 = v67;
      v68 = swift_slowAlloc();
      v109 = v37;
      v110 = v68;
      v118[0] = v68;
      *v67 = 136315138;
      v69 = v100;
      sub_22C9068FC();
      sub_22C5117E8();
      v70 = v64;
      v71 = v111;
      v72 = sub_22C90B47C();
      v74 = v73;
      (*(v101 + 8))(v69, v71);
      (*(v62 + 8))(v70, v63);
      v75 = sub_22C36F9F4(v72, v74, v118);

      v76 = v108;
      *(v108 + 1) = v75;
      v77 = v76;
      _os_log_impl(&dword_22C366000, v65, v66, "Unable to produce a rendering for contextual entity with statementID: %s", v76, 0xCu);
      v78 = v110;
      sub_22C36FF94(v110);
      MEMORY[0x2318B9880](v78, -1, -1);
      MEMORY[0x2318B9880](v77, -1, -1);

      (*(v114 + 8))(v99, v115);
      result = (*(v107 + 8))(v109, v116);
    }

    else
    {

      (*(v62 + 8))(v64, v63);
      (*(v114 + 8))(v61, v115);
      result = (*(v107 + 8))(v37, v60);
    }

LABEL_9:
    v80 = 0xF000000000000007;
LABEL_12:
    *v117 = v80;
    return result;
  }

  v109 = v37;
  v81 = v118[0];
  v114 = v118[2];
  v115 = v118[1];
  v113 = v118[3];
  v82 = v118[4];
  v83 = v98;
  sub_22C36C640(v98, 2, 3, v59);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v84 = swift_allocBox();

  sub_22C9068FC();
  v85 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v83 + v85) = v84;
  (v108)(v83 + v85, *MEMORY[0x277D1D798], v59);
  swift_storeEnumTagMultiPayload();
  v86 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v87 = swift_allocBox();
  v89 = v88;
  sub_22C45769C(v83, v88);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v90 = swift_allocBox();
  sub_22C486784();
  v91 = v120;
  v92 = sub_22C511458(v90 | 0x2000000000000000, v81);
  if (!v91)
  {
    v93 = v92;

    v94 = *(v86 + 48);

    sub_22C456CE4(v81, v115, v114, v113, v82, 0);
    sub_22C5120C0(v83, type metadata accessor for PromptTreeIdentifier);
    (*(v107 + 8))(v109, v116);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    result = swift_allocObject();
    *(result + 16) = v93;
    *(v89 + v94) = result;
    v80 = v87 | 0x4000000000000000;
    goto LABEL_12;
  }

  sub_22C5120C0(v89, type metadata accessor for PromptTreeIdentifier);
  result = swift_deallocBox();
  __break(1u);
  return result;
}

uint64_t sub_22C511458(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 2112800;
  *(v11 + 24) = 0xE300000000000000;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C5116EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 273))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C51172C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22C5117E8()
{
  result = qword_27D9BAA48;
  if (!qword_27D9BAA48)
  {
    sub_22C901FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAA48);
  }

  return result;
}

void sub_22C511840(uint64_t a1)
{
  v88 = sub_22C90952C();
  v2 = *(v88 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v88);
  v81 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v80 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v77 - v9;
  v11 = sub_22C90399C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v91 = *(v16 - 8);
  v17 = *(v91 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v87 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v77 - v20;
  v101 = sub_22C9081CC();
  v22 = *(*(v101 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v101);
  v86 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v82 = &v77 - v26;
  MEMORY[0x28223BE20](v25);
  v100 = &v77 - v27;
  v28 = 0;
  v102 = 0;
  v103 = MEMORY[0x277D84F90];
  v98 = v29 + 16;
  v79 = (v2 + 16);
  v78 = (v2 + 8);
  v92 = *(a1 + 16);
  v93 = v21;
  v89 = (v12 + 8);
  v90 = v29;
  v83 = (v29 + 8);
  v84 = (v29 + 32);
  v99 = MEMORY[0x277D84F90];
  for (i = a1; ; a1 = i)
  {
    if (v92 == v28)
    {

      return;
    }

    if (v28 >= *(a1 + 16))
    {
      break;
    }

    v30 = *(v90 + 72);
    v95 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v96 = v28;
    v94 = v30;
    v97 = *(v90 + 16);
    v97(v100, a1 + v95 + v30 * v28, v101);
    sub_22C9081AC();
    sub_22C90391C();
    v31 = sub_22C9093BC();
    if (sub_22C370B74(v10, 1, v31) == 1)
    {
      v32 = v87;
      sub_22C36C640(v87, 1, 1, v88);
    }

    else
    {
      v33 = v10;
      v34 = v15;
      v35 = v10;
      v36 = v80;
      sub_22C3DB138(v33, v80, &qword_27D9BB908, &qword_22C910960);
      v37 = v81;
      sub_22C90935C();
      v32 = v87;
      v38 = v88;
      (*v79)(v87, v37, v88);
      sub_22C36C640(v32, 0, 1, v38);
      v21 = v93;
      (*v78)(v37, v38);
      v39 = v36;
      v10 = v35;
      v15 = v34;
      (*(*(v31 - 8) + 8))(v39, v31);
    }

    sub_22C36DD28(v10, &qword_27D9BB908, &qword_22C910960);
    (*v89)(v15, v11);
    sub_22C3DB08C(v32, v21, &qword_27D9BB0C0, &qword_22C90D960);
    v41 = v102;
    v40 = v103;
    v42 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v43 = *(v103 + 16);
    if (v102)
    {

      sub_22C7DB87C(v21, v40 + v42, v43, v41 + 16, v41 + 32, v44, v45, v46, v77, v78, v79, v80, v81, v82, v83, v84, i, v86, v87, v88);
      v48 = v47;
      v50 = v49;

      if (v50)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v51 = *(v103 + 16);
      sub_22C7D9774();
      if (v53)
      {
LABEL_11:
        sub_22C7D4D7C();
        v54 = v99;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = *(v54 + 16);
          sub_22C3B6D48();
          v54 = v104;
        }

        v57 = *(v54 + 16);
        if (v57 >= *(v54 + 24) >> 1)
        {
          sub_22C3B6D48();
          v54 = v104;
        }

        *(v54 + 16) = v57 + 1;
        v58 = v54 + 32;
        *(v54 + 32 + 8 * v57) = MEMORY[0x277D84F90];
        v97(v86, v100, v101);
        v59 = *(v54 + 32 + 8 * v57);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        *(v54 + 32 + 8 * v57) = v59;
        v99 = v54;
        if ((v60 & 1) == 0)
        {
          v69 = *(v59 + 16);

          sub_22C59238C();
          v70 = *(v58 + 8 * v57);
          *(v58 + 8 * v57) = v71;

          v59 = *(v58 + 8 * v57);
        }

        v61 = *(v59 + 16);
        v62 = v61 + 1;
        if (v61 >= *(v59 + 24) >> 1)
        {
          sub_22C59238C();
          v59 = v72;
          *(v58 + 8 * v57) = v72;
        }

        v63 = v86;
        goto LABEL_30;
      }

      v48 = v52;
    }

    v64 = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C270(v64);
      v64 = v65;
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (v48 >= *(v64 + 16))
    {
      goto LABEL_34;
    }

    v66 = v64 + 32;
    v97(v82, v100, v101);
    v59 = *(v64 + 32 + 8 * v48);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    *(v64 + 32 + 8 * v48) = v59;
    v99 = v64;
    if ((v67 & 1) == 0)
    {
      v73 = *(v59 + 16);

      sub_22C59238C();
      v74 = *(v66 + 8 * v48);
      *(v66 + 8 * v48) = v75;

      v59 = *(v66 + 8 * v48);
    }

    v61 = *(v59 + 16);
    v62 = v61 + 1;
    if (v61 >= *(v59 + 24) >> 1)
    {
      sub_22C59238C();
      v59 = v76;
      *(v66 + 8 * v48) = v76;
    }

    v63 = v82;
LABEL_30:
    *(v59 + 16) = v62;
    v68 = v101;
    (*v84)(v59 + v95 + v61 * v94, v63, v101);
    v21 = v93;
    sub_22C36DD28(v93, &qword_27D9BB0C0, &qword_22C90D960);
    (*v83)(v100, v68);
    v28 = v96 + 1;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_22C5120C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

__n128 sub_22C512118(uint64_t a1)
{
  *(v2 - 200) = a1;
  result = *(v2 - 432);
  *v1 = result.n128_u32[0];
  v4 = *(v2 - 592);
  return result;
}

uint64_t sub_22C512138()
{
  v2 = *(v0 - 328);
}

uint64_t sub_22C512170(char a1)
{

  return sub_22C457454(a1, v3, v1, v2);
}

uint64_t sub_22C5121E8()
{
  result = sub_22C457168(319, qword_281430CF8);
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281430538);
    if (v2 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_281431C28);
      if (v3 <= 0x3F)
      {
        result = sub_22C457168(319, &qword_281432550);
        if (v4 <= 0x3F)
        {
          result = sub_22C457168(319, qword_2814328F8);
          if (v5 <= 0x3F)
          {
            result = sub_22C908AEC();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C51234C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C51238C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C512414()
{
  sub_22C37ABC4();
  if (v1)
  {
    return sub_22C37FDC4();
  }

  sub_22C374A1C();
  sub_22C908AEC();
  v3 = sub_22C36ECCC(*(v0 + 36));

  return sub_22C370B74(v3, v4, v5);
}

void sub_22C51248C()
{
  sub_22C3700E0();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_22C908AEC();
    v5 = sub_22C36ECCC(*(v4 + 36));

    sub_22C36C640(v5, v6, v0, v7);
  }
}

void sub_22C51251C()
{
  sub_22C457168(319, &qword_281430160);
  if (v0 <= 0x3F)
  {
    sub_22C457168(319, &qword_281430018);
    if (v1 <= 0x3F)
    {
      sub_22C457168(319, &qword_281433340);
      if (v2 <= 0x3F)
      {
        sub_22C457168(319, &qword_281434518);
        if (v3 <= 0x3F)
        {
          sub_22C512640();
          if (v4 <= 0x3F)
          {
            sub_22C908AEC();
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

void sub_22C512640()
{
  if (!qword_281431C20)
  {
    sub_22C3AC1A0(&qword_27D9BD998, &unk_22C919FD0);
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_281431C20);
    }
  }
}

uint64_t sub_22C5126EC()
{
  result = sub_22C457168(319, &qword_27D9BD9B0);
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_27D9BD9B8);
    if (v2 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_27D9BD9C0);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FullPlannerPreferences();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C512848()
{
  sub_22C37ABC4();
  if (v1)
  {
    return sub_22C37FDC4();
  }

  sub_22C374A1C();
  sub_22C908AEC();
  v3 = sub_22C36ECCC(*(v0 + 24));

  return sub_22C370B74(v3, v4, v5);
}

void sub_22C5128C0()
{
  sub_22C3700E0();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_22C908AEC();
    v5 = sub_22C36ECCC(*(v4 + 24));

    sub_22C36C640(v5, v6, v0, v7);
  }
}

uint64_t sub_22C512964(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = sub_22C457168(319, &qword_281430170);
  if (v6 <= 0x3F)
  {
    result = sub_22C457168(319, a4);
    if (v7 <= 0x3F)
    {
      result = sub_22C908AEC();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C512A28@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (v2[5])
  {
    v3 = *(v2 + 1);
    *a2 = *v2;
    a2[1] = v3;
    *(a2 + 25) = *(v2 + 25);
  }

  else
  {
    v4 = result;
    v6 = v2[3];
    v5 = v2[4];
    v8 = v2[1];
    v7 = v2[2];
    v11 = *v2;
    v12 = v8;
    v13 = v7;
    v14 = v6;
    v15 = v5;

    sub_22C456C94(v8, v7);
    v4(&v11);
    v9 = v12;
    v10 = v13;

    return sub_22C456D48(v9, v10);
  }

  return result;
}

uint64_t sub_22C512B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v138 = a3;
  v134 = a2;
  v7 = sub_22C9099FC();
  v8 = sub_22C369824(v7);
  v131 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C9037DC();
  v16 = sub_22C36A7A4(v15, &v154);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA64();
  sub_22C3698F8(v23);
  v24 = sub_22C908EAC();
  v25 = sub_22C36A7A4(v24, &v152);
  v136 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  v32 = &v125 - v31;
  v33 = type metadata accessor for RenderableTool();
  v34 = sub_22C36985C(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v39 = (v38 - v37);
  sub_22C383080();
  sub_22C51E114(a1, v39, v40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = *v39;
    v42 = v4[23];
    v43 = v4[24];
    sub_22C3766E0(v4 + 20, v42);
    (*(v43 + 8))(v41, v138, v42, v43);
  }

  v125 = a4;
  v127 = v18;
  v45 = sub_22C3A5908(&qword_27D9BB818, qword_22C910430);
  sub_22C51E39C(*(v45 + 48));
  v46 = *(sub_22C9036EC() - 8);
  v47 = *(v46 + 88);
  v48 = sub_22C372158();
  v50 = v49(v48);
  if (v50 == *MEMORY[0x277D1ECE0])
  {
    v51 = sub_22C51E260();
    v52(v51);
    sub_22C370208(&v153);
    v54 = *(v53 + 32);
    v55 = sub_22C37A06C();
    v56 = v135;
    v57(v55);
    v58 = sub_22C51E33C();
    sub_22C51E2B8(v58, v149);
    *&v143[0] = MEMORY[0x277D84F90];
    sub_22C377480();
    sub_22C51E1E4(v59, v60);
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3766F8(&qword_27D9BB830);
    v61 = v137;
    v62 = v133;
    sub_22C90AE4C();
    sub_22C481D88(v32, v134, &v144, v138, v62, v7, v132);
    sub_22C383CD8();
    v63 = sub_22C36FC2C();
    v7(v63);
    (*(a4 + 8))(v32, v56);
    v64 = v39 + v126;
    v65 = v61;
    return (v7)(v64, v65);
  }

  v66 = v136;
  if (v50 == *MEMORY[0x277D1ECE8])
  {
    v67 = sub_22C51E260();
    v68(v67);
    sub_22C3701F8(v149);
    v69(v14, v39, v7);
    v70 = v4[9];
    sub_22C3766E0(v4 + 5, v4[8]);
    v71 = *(v70 + 8);
    v72 = sub_22C51E2E4();
    v73(v72);
    v74 = *(v33 + 8);
    v75 = sub_22C371530();
    v76(v75);
    sub_22C36FB04(&v147);
    v77 = sub_22C51E308();
    return v78(v77);
  }

  else if (v50 == *MEMORY[0x277D1ECD8])
  {
    v79 = sub_22C51E260();
    v80(v79);
    v81 = v130;
    (*(v66 + 32))(v130, v39, v135);
    v82 = v127;
    sub_22C51E3FC();
    v83 = v39 + v126;
    v84 = v137;
    v85(v132, v83, v137);
    v86 = sub_22C3766E0(v4 + 10, v4[13]);
    sub_22C378AB0(v86, &v148);
    v131 = v151;
    v133 = v150;
    v129 = sub_22C374168(&v148, v150);
    v87 = v66;
    v88 = v4[3];
    v89 = v4[4];
    v90 = sub_22C372FA4();
    sub_22C3766E0(v90, v91);
    v92 = v138;
    v93 = v153;
    (*(v89 + 32))(&v144, v81, v138, v88, v89);
    if (v93)
    {
      (*(v82 + 8))(v132, v84);
      v94 = *(v87 + 8);
      v95 = sub_22C37BD98();
      v96(v95);
    }

    else
    {
      v143[0] = v144;
      v143[1] = v145;
      v143[2] = v146;
      v143[3] = v147;
      v153 = 0;
      v116 = v144;
      v117 = v145;
      v118 = v146;
      v119 = BYTE8(v146);
      v120 = sub_22C372FA4();
      sub_22C456C30(v120, v121, v117, *(&v117 + 1), v118, v119);
      sub_22C3E022C(v143);
      v139 = v116;
      v140 = v117;
      v141 = v118;
      v142 = v119;
      v122 = v132;
      sub_22C481D88(v81, v134, &v139, v92, v132, v133, v131);
      sub_22C36FB04(&v147);
      v123(v122, v137);
      sub_22C36FB04(&v153);
      v124(v81, v135);
      sub_22C51E1CC(v139, *(&v139 + 1), v140, *(&v140 + 1), v141, v142);
    }

    return sub_22C36FF94(&v148);
  }

  else
  {
    v7 = v135;
    if (v50 == *MEMORY[0x277D1ECD0])
    {
      v97 = sub_22C51E260();
      v98(v97);
      v99 = v128;
      (*(v66 + 32))(v128, v39, v7);
      v100 = sub_22C51E33C();
      sub_22C51E2B8(v100, &v151);
      *&v143[0] = MEMORY[0x277D84F90];
      sub_22C377480();
      sub_22C51E1E4(v101, v102);
      sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
      sub_22C3766F8(&qword_27D9BB830);
      v103 = v137;
      sub_22C90AE4C();
      v104 = *(v132 + 16);
      v105 = sub_22C51E2E4();
      v106(v105);
      sub_22C383CD8();
      v107 = sub_22C51E290();
      v7(v107);
      (*(v66 + 8))(v99, v135);
      v64 = v39 + v126;
      v65 = v103;
      return (v7)(v64, v65);
    }

    if (v50 == *MEMORY[0x277D1ECF8])
    {
      v108 = *(v46 + 8);
      v109 = sub_22C372158();
      v110(v109);
      type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
      v111 = MEMORY[0x277D84F90];
      v112 = sub_22C909F0C();
      v113 = v125;
      *v125 = 0u;
      v113[1] = 0u;
      *(v113 + 4) = 0;
      *(v113 + 40) = 1;
      *(v113 + 6) = v112;
      *(v113 + 7) = v111;
      sub_22C36FB04(&v147);
      v114 = sub_22C51E308();
      return v115(v114);
    }

    else
    {
      result = sub_22C90B4EC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22C513518@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v106 = a1;
  v5 = sub_22C90384C();
  v6 = sub_22C369824(v5);
  v99 = v7;
  v100 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v101 = v11 - v10;
  v12 = sub_22C9099FC();
  v13 = sub_22C369824(v12);
  v102 = v14;
  v103 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C908EAC();
  v21 = sub_22C369824(v20);
  v104 = v22;
  v105 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369ABC();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  sub_22C51E3BC();
  MEMORY[0x28223BE20](v29);
  v31 = &v96 - v30;
  v32 = type metadata accessor for RenderableTool();
  v33 = sub_22C36985C(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369838();
  v38 = (v37 - v36);
  sub_22C383080();
  v39 = sub_22C38A024();
  sub_22C51E114(v39, v40, v41);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = *v38;
    v43 = v3[24];
    sub_22C374168(v3 + 20, v3[23]);
    sub_22C3869E0();
    v44 = sub_22C37BD98();
    v45(v44);
  }

  v97 = a2;
  v98 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  v47 = sub_22C9036EC();
  v48 = (*(*(v47 - 8) + 88))(v38, v47);
  if (v48 == *MEMORY[0x277D1ECE0])
  {
    v49 = sub_22C370720();
    v50(v49);
    v51 = sub_22C51E388();
    v52(v51, v38, v19);
    v53 = v3[3];
    v54 = v3[4];
    sub_22C3766E0(v3, v53);
    (*(v54 + 32))(v31, v106, v53, v54);
    (*(v32 + 8))(v31, v19);
  }

  else if (v48 == *MEMORY[0x277D1ECE8])
  {
    v55 = sub_22C370720();
    v56(v55);
    v58 = v102;
    v57 = v103;
    sub_22C51E3FC();
    sub_22C51E2FC();
    v59();
    v60 = v3[8];
    v61 = v3[9];
    sub_22C374168(v3 + 5, v60);
    sub_22C3869E0();
    v62(v19, v60, v61);
    (*(v58 + 8))(v19, v57);
  }

  else if (v48 == *MEMORY[0x277D1ECD8])
  {
    v63 = sub_22C370720();
    v64(v63);
    v66 = v104;
    v65 = v105;
    sub_22C51E3FC();
    sub_22C51E2FC();
    v67();
    v68 = sub_22C374168(v3 + 10, v3[13]);
    v69 = v68[3];
    v70 = v68[4];
    sub_22C3766E0(v68, v69);
    (*(v70 + 32))(v27, v106, v69, v70);
    (*(v66 + 8))(v27, v65);
  }

  else if (v48 == *MEMORY[0x277D1ECD0])
  {
    v71 = sub_22C370720();
    v72(v71);
    v74 = v104;
    v73 = v105;
    sub_22C51E3FC();
    sub_22C51E2FC();
    v75();
    v76 = v3[3];
    v77 = v3[4];
    sub_22C3766E0(v3, v76);
    (*(v77 + 40))(v2, 1, v106, v76, v77);
    (*(v74 + 8))(v2, v73);
  }

  else
  {
    if (v48 != *MEMORY[0x277D1ECF8])
    {
      result = sub_22C90B4EC();
      __break(1u);
      return result;
    }

    v80 = sub_22C370720();
    v81(v80);
    v83 = v99;
    v82 = v100;
    v84 = v101;
    (*(v99 + 32))(v101, v38, v100);
    v85 = sub_22C374168(v3 + 15, v3[18]);
    v86 = v85[3];
    v87 = v85[4];
    sub_22C374168(v85, v86);
    sub_22C3869E0();
    v88(v107, v84, v106, v86, v87);
    v89 = v107[1];
    v90 = v108;
    if (v108)
    {

      v91 = 2;
    }

    else
    {
      v92 = v107[0];
      sub_22C36A83C();
      v91 = swift_allocObject();
      *(v91 + 16) = v92;
      *(v91 + 24) = v89;
    }

    v93 = v97;
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v94 = MEMORY[0x277D84F90];
    v95 = sub_22C909F0C();
    (*(v83 + 8))(v101, v82);
    *v93 = v91;
    *(v93 + 8) = 0u;
    *(v93 + 24) = 0u;
    *(v93 + 40) = v90;
    *(v93 + 48) = v95;
    *(v93 + 56) = v94;
  }

  v78 = sub_22C9037DC();
  sub_22C36985C(v78);
  return (*(v79 + 8))(&v38[v98]);
}

uint64_t sub_22C513BCC(uint64_t a1)
{
  v2 = sub_22C908D6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = sub_22C908EAC();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = *(a1 + 16);
  v37 = a1;
  v38 = v16;
  v35 = v17 + 16;
  v18 = *MEMORY[0x277D72188];
  v40 = *MEMORY[0x277D72178];
  v19 = (v3 + 8);
  v36 = v17;
  v31 = v7;
  v32 = (v17 + 8);
  v33 = v14;
  v34 = v12;
  while (1)
  {
    if (v15 == v38)
    {
      return v15 == v38;
    }

    v20 = v15;
    (*(v36 + 16))(v14, v37 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v15, v10);
    v30 = v20;
    v39 = v20 + 1;
    v21 = sub_22C908DEC();
    v22 = 0;
    v23 = *(v21 + 16);
    while (1)
    {
      if (v23 == v22)
      {
        v22 = v23;
        goto LABEL_10;
      }

      (*(v3 + 16))(v9, v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, v2);
      v24 = (*(v3 + 88))(v9, v2);
      if (v24 == v18)
      {
        break;
      }

      if (v24 == v40)
      {
        goto LABEL_10;
      }

      (*v19)(v9, v2);
      ++v22;
    }

    (*v19)(v9, v2);
LABEL_10:
    v25 = *(v21 + 16);
    if (v22 == v25)
    {

      (*v32)(v33, v34);
      v15 = v30;
      return v15 == v38;
    }

    if (v22 >= v25)
    {
      break;
    }

    v26 = v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22;
    v22 = v31;
    (*(v3 + 16))(v31, v26, v2);
    v27 = (*(v3 + 88))(v22, v2);
    if (v27 == v18)
    {
      (*v19)(v22, v2);
    }

    else if (v27 != v40)
    {
      goto LABEL_19;
    }

    v14 = v33;
    v10 = v34;
    (*v32)(v33, v34);
    v15 = v39;
  }

  __break(1u);
LABEL_19:
  result = (*v19)(v22, v2);
  __break(1u);
  return result;
}

void sub_22C513F8C(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v2 = sub_22C3B34E0(sub_22C51E0AC, v23, a1);
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = v2 + 64;
  v22 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v5 + 40 * v3); ; i += 40)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    if (*i)
    {
      v8 = *(i - 4);
      v7 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      if (v8 == 0x695F686372616573 && v7 == 0xED00007070615F6ELL)
      {
        v8 = 0x695F686372616573;
        v20 = 0xED00007070615F6ELL;
LABEL_14:

        sub_22C36FC2C();
        sub_22C90A28C();
        v12 = sub_22C90A2AC();
        v21 = v13;
        sub_22C43627C(v8, v20, v9, v10, 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v22 + 16);
          sub_22C590270();
          v22 = v18;
        }

        v15 = *(v22 + 16);
        v14 = *(v22 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_22C369AB0(v14);
          sub_22C3726E0();
          sub_22C590270();
          v22 = v19;
        }

        ++v3;
        *(v22 + 16) = v15 + 1;
        v16 = v22 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v21;
        v5 = v2 + 64;
        goto LABEL_2;
      }

      sub_22C372280();
      if (sub_22C90B4FC())
      {
        v20 = v7;
        goto LABEL_14;
      }
    }

    ++v3;
  }

  __break(1u);
}

uint64_t sub_22C514170(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[3];
  v6 = a2[4];
  sub_22C374168(a2, v5);
  return (*(v6 + 8))(a1, 0, a3, v5, v6);
}

void sub_22C5141F4()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22C9063DC();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C513BCC(v3);
  v16 = MEMORY[0x277D84F90];
  if ((v15 & 1) == 0)
  {
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v24 = sub_22C909F0C();
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0;
LABEL_9:
    *(v5 + 40) = 1;
    goto LABEL_10;
  }

  sub_22C513F8C(v3, v1);
  v18 = v17;
  v19 = *(v3 + 16);
  if (*(v17 + 16) != v19)
  {
    sub_22C903F7C();

    v25 = sub_22C9063CC();
    v26 = sub_22C90AADC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134218240;
      v28 = *(v18 + 16);

      *(v27 + 4) = v28;

      *(v27 + 12) = 2048;
      *(v27 + 14) = v19;

      _os_log_impl(&dword_22C366000, v25, v26, "Failed to render system protocol because count of applications %ld does not equal to count of conforming tools %ld.", v27, 0x16u);
      v16 = MEMORY[0x277D84F90];
      sub_22C3699EC();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v9 + 8))(v14, v6);
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    sub_22C909F0C();
    *v5 = 2;
    sub_22C37274C();
    goto LABEL_9;
  }

  sub_22C90AF5C();
  MEMORY[0x2318B7850](543581540, 0xE400000000000000);
  MEMORY[0x2318B7850](0x695F686372616573, 0xED00007070615F6ELL);
  MEMORY[0x2318B7850](0x4C203D2070706128, 0xEF5B6C6172657469);
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0);
  v20 = sub_22C90A04C();
  v22 = v21;

  MEMORY[0x2318B7850](v20, v22);

  MEMORY[0x2318B7850](0xD000000000000094, 0x800000022C931DD0);
  sub_22C36A83C();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0xE000000000000000;
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  sub_22C909F0C();
  *v5 = v23;
  sub_22C37274C();
  *(v5 + 40) = 0;
LABEL_10:
  *(v5 + 48) = v24;
  *(v5 + 56) = v16;
  sub_22C36CC48();
}

void sub_22C5145AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_22C513BCC(a1);
  if (v3)
  {
    sub_22C36A83C();
    v4 = swift_allocObject();
    strcpy((v4 + 16), "search_in_app");
    *(v4 + 30) = -4864;
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v5 = MEMORY[0x277D84F90];
  sub_22C909F0C();
  *a2 = v4;
  sub_22C37274C();
  *(a2 + 40) = (v3 & 1) == 0;
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
}

void sub_22C514820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v391 = v24;
  v396 = v25;
  v376 = v26;
  v369 = v27;
  v399 = v28;
  v30 = sub_22C51E39C(v29);
  v31 = type metadata accessor for TypeIdentifierRenderer_v2_0(v30);
  v32 = sub_22C36985C(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA64();
  sub_22C3698F8(v37);
  v38 = sub_22C9094EC();
  v39 = sub_22C36A7A4(v38, &v409);
  v386 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  sub_22C3698F8(v44 - v43);
  v45 = sub_22C90952C();
  v46 = sub_22C36A7A4(v45, &v418);
  v395 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA64();
  sub_22C3698F8(v52);
  v53 = sub_22C9063DC();
  v54 = sub_22C36A7A4(v53, &v417);
  v392 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA64();
  sub_22C3698F8(v61);
  v62 = sub_22C90430C();
  v63 = sub_22C369824(v62);
  v403 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22C369ABC();
  v69 = v67 - v68;
  MEMORY[0x28223BE20](v70);
  sub_22C36BA64();
  v406 = v71;
  v72 = sub_22C9095CC();
  v73 = sub_22C36A7A4(v72, &v408);
  v378 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22C369838();
  sub_22C3698F8(v78 - v77);
  v79 = sub_22C90998C();
  v80 = sub_22C36A7A4(v79, &v405);
  v374 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22C369838();
  sub_22C3698F8(v85 - v84);
  v86 = sub_22C90947C();
  v87 = sub_22C36A7A4(v86, &a11);
  v390 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v91);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v92);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v93);
  sub_22C36BA64();
  sub_22C3698F8(v94);
  v405 = sub_22C90077C();
  v95 = sub_22C369824(v405);
  v97 = v96;
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22C369838();
  v102 = v101 - v100;
  v103 = sub_22C908A8C();
  v104 = sub_22C36A7A4(v103, &a16);
  v106 = v105;
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v104);
  sub_22C369838();
  v111 = v110 - v109;
  v112 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  v113 = sub_22C369914(v112);
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v113);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v116);
  sub_22C37B03C();
  MEMORY[0x28223BE20](v117);
  v119 = &v365 - v118;
  v368 = v31;
  v120 = *(v31 + 36);
  v121 = sub_22C908B2C();
  MEMORY[0x2318B6010](v121);
  v397 = v20;
  v400 = v119;
  sub_22C908B1C();
  v385 = 0;
  (*(v97 + 8))(v102, v405);
  (*(v106 + 8))(v111, v402);
  v122 = v400;
  v123 = v398[0];
  sub_22C36C640(v400, 0, 1, v398[0]);
  sub_22C3E8FB4(v122, v21, &qword_27D9BC3B0, &unk_22C912AF0);
  sub_22C36D0A8(v21, 1, v123);
  v124 = v391;
  if (v125)
  {
    sub_22C36DD28(v21, &qword_27D9BC3B0, &unk_22C912AF0);
    sub_22C51E3F0();
  }

  else
  {
    sub_22C37A078(v415);
    v127 = *(v126 + 32);
    v128 = v382;
    v129 = sub_22C37A06C();
    v130(v129);
    v131 = v381;
    MEMORY[0x10](v381, v128, v123);
    v132 = sub_22C36FC74();
    v134 = v133(v132);
    v111 = v398[1];
    if (v134 == *MEMORY[0x277D72B48])
    {
      v135 = sub_22C36FC74();
      v136(v135);
      sub_22C3701F8(&v404);
      v137 = v373;
      v138(v373, v131, v375);
      v139 = v397[3];
      v140 = v397[4];
      sub_22C374168(v397, v139);
      (*(v140 + 16))(v137, v376, v139, v140);
      v141 = *(v62 + 8);
      v142 = sub_22C51E290();
      v143(v142);
      MEMORY[8](v128, v123);
      v144 = sub_22C381A64();
      sub_22C36DD28(v144, v145, v146);
      goto LABEL_64;
    }

    v147 = MEMORY[8];
    MEMORY[8](v128, v123);
    v148 = sub_22C36FC74();
    v147(v148);
  }

  v416 = v396;
  v417 = v124;
  v149 = sub_22C381A64();
  v150 = v383;
  sub_22C3E8FB4(v149, v383, v151, v152);
  v153 = v398[0];
  sub_22C36D0A8(v150, 1, v398[0]);
  v154 = v404;
  v155 = v401;
  if (v125)
  {

    sub_22C36DD28(v150, &qword_27D9BC3B0, &unk_22C912AF0);
    goto LABEL_24;
  }

  sub_22C370208(v415);
  (*(v156 + 32))(v154, v150, v153);
  v157 = *(v123 + 16);
  v158 = sub_22C372158();
  v159(v158);
  v160 = (*(v123 + 88))(v155, v153);
  if (v160 != *MEMORY[0x277D72B68])
  {
    v173 = *(v123 + 8);

    v173(v154, v153);
    v173(v155, v153);
    goto LABEL_24;
  }

  (*(v123 + 96))(v155, v153);
  (*(v378 + 32))(v377, v155, v379);

  sub_22C47E38C();
  v383 = v161;
  v162 = 0;
  v402 = v163;
  v401 = *(v163 + 16);
  v111 = v403 + 8;
  v164 = v406;
  while (v162 != v401)
  {
    v165 = *(v403 + 72);
    v166 = (*(v403 + 80) + 32) & ~*(v403 + 80);
    v405 = v162;
    v167 = *(v403 + 16);
    v167(v164, v402 + v166 + v165 * v162, v62);
    v168 = v417 + v166;
    if (!v416)
    {
      v171 = *(v417 + 16) + 1;
      while (--v171)
      {
        v167(v69, v168, v62);
        sub_22C51E1E4(&qword_27D9BC808, MEMORY[0x277D85578]);
        v172 = sub_22C90A0BC();
        (*v111)(v69, v62);
        v168 += v165;
        if (v172)
        {
          goto LABEL_21;
        }
      }

LABEL_20:
      sub_22C372280();
      sub_22C7D4BE0();
      goto LABEL_21;
    }

    sub_22C7DB73C();
    v170 = v169;

    if (v170)
    {
      goto LABEL_20;
    }

LABEL_21:
    v164 = v406;
    v162 = v405 + 1;
    (*v111)(v406, v62);
    v154 = v404;
  }

  sub_22C36FB04(&v407);
  v174(v377, v379);
  sub_22C36FB04(v415);
  v175(v154, v398[0]);
  sub_22C51E3F0();
  v124 = v391;
LABEL_24:
  v406 = v417;
  v176 = v384;
  if (*(v417 + 16))
  {
    v177 = v388;
    sub_22C903F7C();
    v178 = v395;
    v179 = v124;
    v180 = *(v395 + 16);
    v181 = v394;
    v180(v176, v399, v394);
    v111 = v396;

    v182 = sub_22C9063CC();
    v183 = sub_22C90AACC();

    if (os_log_type_enabled(v182, v183))
    {
      v184 = v178;
      v178 = swift_slowAlloc();
      v405 = swift_slowAlloc();
      v409 = v405;
      *v178 = 136315394;
      v111 = v372;
      v180(v372, v176, v181);
      v185 = sub_22C90A1AC();
      v186 = v181;
      v188 = v187;
      (*(v184 + 8))(v176, v186);
      v189 = sub_22C36F9F4(v185, v188, &v409);

      *(v178 + 4) = v189;
      *(v178 + 12) = 2080;
      sub_22C557B40();
      v192 = sub_22C36F9F4(v190, v191, &v409);

      *(v178 + 14) = v192;
      _os_log_impl(&dword_22C366000, v182, v183, "Rendering type identifier %s with supplimentary UTTypes: %s", v178, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();

      v193 = *(v392 + 8);
      v193(v388, v393);
    }

    else
    {

      (*(v178 + 8))(v176, v181);
      v193 = *(v392 + 8);
      v193(v177, v393);
    }

    sub_22C386758(v410);
    sub_22C903F7C();
    v194 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C383098();
    if (os_log_type_enabled(v194, v195))
    {
      v196 = sub_22C36FB44();
      v111 = sub_22C370060();
      v409 = v111;
      *v196 = 136315138;
      swift_beginAccess();

      sub_22C557B40();

      v197 = sub_22C36FC2C();
      v200 = sub_22C36F9F4(v197, v198, v199);

      *(v196 + 4) = v200;
      _os_log_impl(&dword_22C366000, v194, v178, "Final list of UTTypes after extracting those from the type identifier: %s", v196, 0xCu);
      sub_22C36FF94(v111);
      sub_22C36D69C();
      sub_22C3699EC();
    }

    v193(v179, v393);
    sub_22C51E3F0();
  }

  v201 = swift_beginAccess();
  v202 = v416;
  MEMORY[0x28223BE20](v201);
  *(&v365 - 2) = v397;

  v203 = v406;

  v204 = v385;
  sub_22C792C70(sub_22C51E0F8, (&v365 - 4), v202, v203, v205, v206, v207, v208, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378);
  v210 = v209;

  v405 = v202;

  v211 = sub_22C3DB9B0(v210);

  sub_22C36D2A8();
  v212 = swift_allocObject();
  *(v212 + 16) = 0;
  *(v212 + 24) = 0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v213 = swift_allocObject();
  *(v213 + 16) = v211;
  *(v212 + 32) = v213;
  v214 = sub_22C529D00(2128928, 0xE300000000000000, v212 | 0x8000000000000000);

  sub_22C369AEC();
  v215 = swift_allocObject();
  sub_22C369AEC();
  v216 = swift_allocObject();
  *(v216 + 16) = v214;
  *(v215 + 16) = v216;
  v409 = MEMORY[0x277D84F90];
  sub_22C496A94();
  v218 = v217;

  sub_22C36A83C();
  v219 = swift_allocObject();
  v220 = v219;
  if (v218)
  {
    *(v219 + 16) = 0;
    *(v219 + 24) = 0xE000000000000000;
    v221 = v386;
  }

  else
  {
    *(v219 + 16) = 60;
    *(v219 + 24) = 0xE100000000000000;
    sub_22C374C14();
    sub_22C591324();
    v223 = v222;
    v225 = *(v222 + 16);
    v224 = *(v222 + 24);
    v226 = v224 >> 1;
    v227 = v225 + 1;
    v221 = v386;
    if (v224 >> 1 <= v225)
    {
      sub_22C369AB0(v224);
      sub_22C388CAC();
      sub_22C591324();
      v223 = v362;
      v224 = *(v362 + 24);
      v226 = v224 >> 1;
    }

    *(v223 + 16) = v227;
    *(v223 + 8 * v225 + 32) = v220;
    v228 = v225 + 2;
    if (v226 < (v225 + 2))
    {
      sub_22C369AB0(v224);
      sub_22C591324();
      v223 = v363;
    }

    *(v223 + 16) = v228;
    *(v223 + 8 * v227 + 32) = v215 | 0x6000000000000000;
    sub_22C36A83C();
    v229 = swift_allocObject();
    *(v229 + 16) = 62;
    *(v229 + 24) = 0xE100000000000000;
    v230 = *(v223 + 24);

    if ((v225 + 3) > (v230 >> 1))
    {
      sub_22C388CAC();
      sub_22C591324();
      v223 = v364;
    }

    *(v223 + 16) = v225 + 3;
    *(v223 + 8 * v228 + 32) = v229;
    v231 = sub_22C3DB9B0(v223);

    sub_22C369AEC();
    v111 = swift_allocObject();
    sub_22C369AEC();
    v232 = swift_allocObject();
    *(v232 + 16) = v231;
    *(v111 + 16) = v232;
    v220 = v111 | 0x6000000000000000;
    sub_22C51E3F0();
  }

  v233 = v387;
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v387);
  v234 = v395;
  v235 = v394;
  v236 = (*(v395 + 88))(v233, v394);
  if (v236 == *MEMORY[0x277D72D50])
  {
    v237 = v220;
    v404 = v215;
    v238 = *(v234 + 96);
    v239 = sub_22C371510();
    v240(v239);
    v403 = *v233;
    v241 = swift_projectBox();
    v242 = v380;
    (*(v221 + 16))(v111, v241, v380);
    v243 = v397[9];
    sub_22C374168(v397 + 5, v397[8]);
    v244 = *(v243 + 8);
    sub_22C51E2FC();
    v245();
    v247 = v409;
    v246 = v410[0];
    v248 = v410[1];
    v249 = v411;
    v250 = v412;
    v251 = v413;
    if (v413)
    {

      (*(v221 + 8))(v111, v242);
      v252 = sub_22C381A64();
      sub_22C36DD28(v252, v253, v254);
    }

    else
    {
      v275 = sub_22C51E244();
      sub_22C456C30(v275, v276, v277, v278, v279, v280);
      sub_22C51E2FC();
      sub_22C456C94(v281, v282);
      v402 = sub_22C47D60C(v247, v237);

      v283 = sub_22C51E244();
      sub_22C456CE4(v283, v284, v285, v286, v287, v288);

      (*(v221 + 8))(v111, v242);
      v289 = sub_22C381A64();
      sub_22C36DD28(v289, v290, v291);
      v292 = sub_22C51E244();
      sub_22C456CE4(v292, v293, v294, v295, v296, v297);
      v247 = v402;
    }

    v298 = v389;
    *v389 = v247;
    v298[1] = v246;
    v298[2] = v248;
    v298[3] = v249;
    v298[4] = v250;
    *(v298 + 40) = v251;
  }

  else
  {
    v255 = v397;
    if (v236 == *MEMORY[0x277D72D30])
    {
      v256 = *(v234 + 8);
      v257 = sub_22C371510();
      v258(v257);
      sub_22C36D818(&v400);
      sub_22C903F7C();
      sub_22C377DB4();
      sub_22C37E2C4(&v401);
      sub_22C51E114(v259, v260, v261);
      v262 = sub_22C9063CC();
      sub_22C90AACC();
      sub_22C383098();
      if (os_log_type_enabled(v262, v263))
      {
        sub_22C36FB44();
        v264 = sub_22C379928();
        v409 = v264;
        *v204 = 136315138;
        sub_22C377DB4();
        sub_22C37E2C4(v398);
        sub_22C51E114(v265, v266, v267);
        sub_22C90A1AC();
        sub_22C51E22C();
        sub_22C51E174(v235, v268);
        v269 = sub_22C374C34();
        v272 = sub_22C36F9F4(v269, v270, v271);

        *(v204 + 4) = v272;
        sub_22C51E43C(&dword_22C366000, v273, v274, "%s .builtin: Unsupported type in action");
        sub_22C36FF94(v264);
        sub_22C3699EC();
        sub_22C372FB0();
      }

      else
      {

        sub_22C51E22C();
        sub_22C51E174(v235, v310);
      }

      sub_22C36FB04(&v416);
      v311(v221, v393);
      v312 = sub_22C381A64();
      sub_22C36DD28(v312, v313, v314);

      sub_22C386198();
    }

    else if (v236 == *MEMORY[0x277D72D28])
    {
      v404 = v215;
      v299 = *(v234 + 96);
      v300 = sub_22C371510();
      v301(v300);
      v302 = *(*v233 + 16);
      v303 = *(*v233 + 24);
      v305 = *(*v233 + 32);
      v304 = *(*v233 + 40);
      sub_22C900AAC();
      sub_22C54CE60();

      sub_22C3AD9E8();
      if (qword_27D9BA698 != -1)
      {
        sub_22C37B648();
      }

      v306 = v220;

      sub_22C7B539C();
      sub_22C5E94F0();
      v308 = v307;

      v309 = v397;
      if ((v308 & 1) == 0)
      {
        v330 = sub_22C374168(v397 + 15, v397[18]);
        v331 = MEMORY[0x28223BE20](v330);
        *(&v365 - 4) = v302;
        *(&v365 - 3) = v303;
        *(&v365 - 2) = v376;
        *(&v365 - 1) = v331;
        v332 = sub_22C374C34();
        sub_22C4FB170(v332, v333, v334, v335, v336);
      }

      v337 = sub_22C90A28C();
      v339 = v338;

      v340 = sub_22C90A28C();
      v342 = v341;
      v409 = v337;
      v410[0] = v339;

      MEMORY[0x2318B7850](v340, v342);

      v343 = v409;
      v344 = v410[0];
      sub_22C3E8FB4((v309 + 20), &v409, &qword_27D9BD9C8, &qword_22C91A118);
      if (v411)
      {
        sub_22C374168(&v409, v411);
        sub_22C533B78(v414);
        v345 = v414[0];
        v346 = v414[1];
        v347 = v414[2];
        v348 = v414[3];
        sub_22C36FF94(&v409);
      }

      else
      {
        sub_22C36DD28(&v409, &qword_27D9BD9C8, &qword_22C91A118);
        v345 = 0;
        v346 = 0;
        v347 = 0;
        v348 = 0;
      }

      sub_22C36A83C();
      v356 = swift_allocObject();
      *(v356 + 16) = v343;
      *(v356 + 24) = v344;
      v357 = sub_22C47D60C(v356, v306);

      v358 = sub_22C381A64();
      sub_22C36DD28(v358, v359, v360);

      v361 = v389;
      *v389 = v357;
      v361[1] = v345;
      v361[2] = v346;
      v361[3] = v347;
      v361[4] = v348;
      *(v361 + 40) = 0;
    }

    else
    {
      sub_22C36D818(&v396);
      sub_22C903F7C();
      sub_22C377DB4();
      v315 = v366;
      sub_22C51E114(v255, v366, v316);
      v317 = sub_22C9063CC();
      sub_22C90AACC();
      sub_22C383098();
      if (os_log_type_enabled(v317, v318))
      {
        sub_22C36FB44();
        v319 = sub_22C379928();
        v409 = v319;
        *v315 = 136315138;
        sub_22C377DB4();
        sub_22C37E2C4(v398);
        sub_22C51E114(v320, v321, v322);
        sub_22C90A1AC();
        sub_22C51E22C();
        sub_22C51E174(v315, v323);
        v324 = sub_22C374C34();
        v327 = sub_22C36F9F4(v324, v325, v326);

        *(v315 + 4) = v327;
        sub_22C51E43C(&dword_22C366000, v328, v329, "%s unknown: Unsupported type in action");
        sub_22C36FF94(v319);
        sub_22C3699EC();
        sub_22C372FB0();
      }

      else
      {

        sub_22C51E22C();
        sub_22C51E174(v315, v349);
      }

      sub_22C36FB04(&v416);
      v350(v221, v393);
      v351 = sub_22C381A64();
      sub_22C36DD28(v351, v352, v353);
      sub_22C386198();
      sub_22C36FB04(&v419);
      v354 = sub_22C371510();
      v355(v354);
    }
  }

LABEL_64:
  sub_22C36CC48();
}

uint64_t sub_22C516270@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_22C90422C();
  *(v2 + 24) = v3;
  result = sub_22C456D48(0, 0);
  *a1 = v2;
  return result;
}

void sub_22C5162E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v133 = v23;
  v134 = v24;
  v129 = v26;
  v130 = v25;
  v132 = v27;
  v136 = v28;
  v29 = sub_22C9063DC();
  v30 = sub_22C36A7A4(v29, &a13);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  sub_22C3698F8(v35);
  v36 = sub_22C90906C();
  v37 = sub_22C36A7A4(v36, &a16);
  v127 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C369838();
  sub_22C3698F8(v42 - v41);
  v43 = sub_22C90952C();
  v44 = sub_22C369824(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C369838();
  v49 = v48 - v47;
  v128 = sub_22C9090BC();
  v50 = sub_22C369824(v128);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22C369838();
  v55 = v54 - v53;
  v56 = sub_22C90931C();
  v57 = sub_22C369824(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22C369838();
  v64 = v63 - v62;
  v65 = sub_22C9093BC();
  v66 = sub_22C369824(v65);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22C369838();
  v73 = (v72 - v71);
  (*(v68 + 16))(v72 - v71, v130, v65);
  v74 = *(v68 + 88);
  v75 = sub_22C36A724();
  v77 = v76(v75);
  if (v77 == *MEMORY[0x277D72A58])
  {
    v78 = *(v68 + 96);
    v79 = sub_22C36A724();
    v80(v79);
    v81 = *v73;
    v82 = swift_projectBox();
    (*(v59 + 16))(v64, v82, v56);
    v83 = v20[8];
    v84 = v20[9];
    sub_22C374168(v20 + 5, v83);
    (*(v84 + 8))(v64, v132 & 1, v133, v134, v83, v84);
    (*(v59 + 8))(v64, v56);
LABEL_5:

    goto LABEL_6;
  }

  if (v77 == *MEMORY[0x277D729E8])
  {
    v85 = *(v68 + 96);
    v86 = sub_22C36A724();
    v87(v86);
    v135 = *v73;
    swift_projectBox();
    sub_22C36D818(&a18);
    (*(v88 + 16))(v55);
    v89 = v20[3];
    v90 = v20[4];
    sub_22C374168(v20, v89);
    sub_22C9090AC();
    (*(v90 + 24))(&v137, v49, v129, v133, v89, v90);
    sub_22C36FB04(&a17);
    v91 = sub_22C38A024();
    v92(v91);
    sub_22C386560();
    MEMORY[0x28223BE20](v93);
    sub_22C369920();
    *(v94 - 16) = v55;
    v95 = sub_22C51E430();
    sub_22C54DBA0(v95, v136);
    sub_22C36DD28(&v138, &qword_27D9BAB08, &qword_22C91A110);
    (*(v65 + 8))(v55, v128);
    goto LABEL_5;
  }

  if (v77 == *MEMORY[0x277D72A38])
  {
    goto LABEL_8;
  }

  if (v77 == *MEMORY[0x277D729E0])
  {
    v98 = *(v68 + 96);
    v99 = sub_22C36A724();
    v100(v99);
    v131 = *v73;
    v101 = swift_projectBox();
    (*(v127 + 16))(v126, v101);
    v102 = sub_22C90905C();
    MEMORY[0x28223BE20](v102);
    sub_22C51E2D4();
    *(v103 - 48) = v20;
    *(v103 - 40) = v132 & 1;
    *(v103 - 32) = v129;
    *(v103 - 24) = v133;
    *(v103 - 16) = v134;
    v105 = sub_22C3B2C0C(sub_22C51B35C, v104, v102);

    sub_22C47FA7C(v105, v136);

    (*(v127 + 8))();
    goto LABEL_5;
  }

  if (v77 == *MEMORY[0x277D72A30])
  {
    goto LABEL_12;
  }

  if (v77 == *MEMORY[0x277D72A40])
  {
    v114 = sub_22C37BA64();
    v115(v114);
    v108 = v124;
    sub_22C903F7C();
    v109 = sub_22C9063CC();
    v110 = sub_22C90AADC();
    if (os_log_type_enabled(v109, v110))
    {
      sub_22C36FB44();
      v111 = sub_22C379928();
      v138 = v111;
      *v73 = 136315138;
      *(v73 + 4) = sub_22C37F7A8("reference(_:detailLevel:direction:renderingState:identifierResolvedAST:)");
      v113 = "[%s] Unexpected TypedValue found: TypedValue.DeferredValue";
      goto LABEL_17;
    }

LABEL_18:

    sub_22C36FB04(&a12);
    v116(v108);
    goto LABEL_19;
  }

  if (v77 == *MEMORY[0x277D729F8])
  {
LABEL_8:
    v96 = sub_22C37BA64();
    v97(v96);
LABEL_19:
    sub_22C51E29C();
    goto LABEL_6;
  }

  if (v77 == *MEMORY[0x277D72A60])
  {
LABEL_12:
    v106 = sub_22C37BA64();
    v107(v106);
    v108 = v125;
    sub_22C903F7C();
    v109 = sub_22C9063CC();
    v110 = sub_22C90AACC();
    if (os_log_type_enabled(v109, v110))
    {
      sub_22C36FB44();
      v111 = sub_22C379928();
      v138 = v111;
      *v73 = 136315138;
      *(v73 + 4) = sub_22C37F7A8("reference(_:detailLevel:direction:renderingState:identifierResolvedAST:)");
      v113 = "[%s] Unsupported type: skipping event";
LABEL_17:
      sub_22C51E320(&dword_22C366000, v112, v110, v113);
      sub_22C36FF94(v111);
      sub_22C3699EC();
      sub_22C372FB0();
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  sub_22C386758(&a9);
  sub_22C903F7C();
  v117 = sub_22C9063CC();
  sub_22C90AACC();
  sub_22C383098();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = sub_22C36FB44();
    v120 = sub_22C370060();
    v138 = v120;
    *v119 = 136315138;
    *(v119 + 4) = sub_22C37F7A8("reference(_:detailLevel:direction:renderingState:identifierResolvedAST:)");
    _os_log_impl(&dword_22C366000, v117, v43, "[%s] Unsupported type: skipping event", v119, 0xCu);
    sub_22C36FF94(v120);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  sub_22C36FB04(&a12);
  v121(v49);
  sub_22C51E29C();
  v122 = sub_22C37BA64();
  v123(v122);
LABEL_6:
  sub_22C36CC48();
}

uint64_t sub_22C516BA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  sub_22C456C94(v4, v5);
  result = sub_22C516C28(v3);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  return result;
}

uint64_t sub_22C516C28(uint64_t a1)
{
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90FB40;
  *(inited + 32) = a1;
  v3 = swift_allocObject();

  *(v3 + 16) = sub_22C90A49C();
  *(v3 + 24) = v4;
  *(inited + 40) = v3;
  v5 = swift_allocObject();
  sub_22C90908C();
  sub_22C90A28C();

  sub_22C501204();
  v7 = v6;
  v9 = v8;

  *(v5 + 16) = v7;
  *(v5 + 24) = v9;
  *(inited + 48) = v5;
  v10 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v11 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = v12;
  return v11 | 0x6000000000000000;
}

void sub_22C516DB0()
{
  sub_22C36BA7C();
  v3 = v1;
  v199 = v4;
  v198 = v5;
  v197 = v6;
  v202 = v7;
  v9 = v8;
  sub_22C51E39C(v10);
  v11 = sub_22C90919C();
  v12 = sub_22C36A7A4(v11, &v214);
  v186 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C36D83C();
  v16 = sub_22C9063DC();
  v17 = sub_22C36A7A4(v16, &v212);
  v179 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA64();
  sub_22C36D234(v22);
  v196 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v23 = sub_22C36985C(v196);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C3698E4();
  v210 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22C36BA64();
  sub_22C36D234(v28);
  v29 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v30 = sub_22C369914(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C38822C();
  v182 = 0;
  v35 = sub_22C90952C();
  v36 = sub_22C369824(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v41);
  v43 = &v176 - v42;
  if (qword_27D9BA698 != -1)
  {
    goto LABEL_107;
  }

  while (1)
  {
    sub_22C9090AC();
    sub_22C38A024();
    sub_22C5E94F0();
    v45 = v44;
    v46 = v38[1];
    v46(v43, v35);
    v189 = v9;
    v187 = v38 + 1;
    v183 = v46;
    v185 = v43;
    if (v45)
    {
      sub_22C9090AC();
      v47 = v188;
      TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v188);
      v46(v43, v35);
      if (qword_27D9BA668 != -1)
      {
        sub_22C51E270();
      }

      sub_22C37AA60(v35, qword_27D9E3EE0);
      sub_22C51E1E4(&qword_28142FA78, MEMORY[0x277D72D58]);
      v48 = sub_22C90A0BC();
      v46(v47, v35);
      if ((v48 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if ((v202 & 1) == 0)
    {
LABEL_31:
      sub_22C36A83C();
      v89 = swift_allocObject();
      sub_22C90915C();
      v90 = sub_22C90993C();
      sub_22C36D0A8(v0, 1, v90);
      if (v138)
      {
        sub_22C36DD28(v0, &qword_27D9BC390, &qword_22C912AC0);
        v91 = 0;
        v93 = 0xE000000000000000;
      }

      else
      {
        v91 = sub_22C9098BC();
        v93 = v92;
        sub_22C36BBA8(v90);
        v95 = *(v94 + 8);
        v96 = sub_22C37BD98();
        v97(v96);
      }

      goto LABEL_96;
    }

    v177 = v35;
    v9 = v189;
    v38 = sub_22C90914C();
    v0 = v38[2];
    v200 = v2;
    v201 = v3;
    if (v0)
    {
      v216[0] = MEMORY[0x277D84F90];
      v9 = v216;
      sub_22C3B6CE8(0, v0, 0);
      v43 = v216[0];
      v51 = sub_22C6339F8(v38);
      v52 = 0;
      v53 = v38 + 8;
      v191 = v49;
      v190 = v38 + 9;
      v194 = v38;
      v192 = v0;
      v193 = v38 + 8;
      while ((v51 & 0x8000000000000000) == 0 && v51 < 1 << *(v38 + 32))
      {
        if ((v53[v51 >> 6] & (1 << v51)) == 0)
        {
          goto LABEL_100;
        }

        if (*(v38 + 9) != v49)
        {
          goto LABEL_101;
        }

        v207 = v51 >> 6;
        v208 = 1 << v51;
        v205 = v52;
        v206 = v49;
        v203 = v50;
        v209 = v43;
        v54 = v196;
        v55 = *(v196 + 48);
        v56 = v38[6];
        v57 = v38[7];
        v58 = (v56 + 16 * v51);
        v35 = *v58;
        v2 = v58[1];
        v59 = sub_22C9093BC();
        sub_22C369824(v59);
        v61 = v60;
        v63 = v57 + *(v62 + 72) * v51;
        v64 = v195;
        (*(v60 + 16))(v195 + v55, v63, v59);
        v65 = v210;
        v204 = v35;
        *v210 = v35;
        *(v65 + 1) = v2;
        v66 = *(v54 + 48);
        (*(v61 + 32))(&v65[v66], v64 + v55, v59);
        v67 = *(v3 + 72);
        v68 = *(v3 + 80);
        sub_22C374168((v3 + 48), v67);
        v69 = *(v68 + 8);

        v69(&v211, &v65[v66], v202 & 1, v197, v198, v199, v67, v68);
        if (v214)
        {
          v0 = 0;
          v2 = 0;
          v70 = 0;
          v43 = v209;
        }

        else
        {
          v72 = v213[1];
          v71 = v213[2];
          v74 = v212;
          v73 = v213[0];
          v70 = v211;

          sub_22C456CE4(v70, v74, v73, v72, v71, 0);

          v43 = v209;
          v0 = v204;
        }

        sub_22C36DD28(v210, &qword_27D9BADA0, &unk_22C90FA80);
        v216[0] = v43;
        v76 = *(v43 + 2);
        v75 = *(v43 + 3);
        v3 = v201;
        if (v76 >= v75 >> 1)
        {
          sub_22C369AB0(v75);
          sub_22C3726E0();
          sub_22C3B6CE8(v86, v87, v88);
          v43 = v216[0];
        }

        *(v43 + 2) = v76 + 1;
        v77 = &v43[24 * v76];
        *(v77 + 4) = v0;
        *(v77 + 5) = v2;
        *(v77 + 6) = v70;
        v38 = v194;
        v9 = 1 << *(v194 + 32);
        if (v51 >= v9)
        {
          goto LABEL_102;
        }

        v53 = v193;
        v78 = v193[v207];
        if ((v78 & v208) == 0)
        {
          goto LABEL_103;
        }

        if (*(v194 + 9) != v206)
        {
          goto LABEL_104;
        }

        v79 = v78 & (-2 << (v51 & 0x3F));
        if (v79)
        {
          v9 = __clz(__rbit64(v79)) | v51 & 0x7FFFFFFFFFFFFFC0;
          v2 = v200;
          v80 = v205;
        }

        else
        {
          v81 = v207 << 6;
          v82 = v207 + 1;
          v83 = &v190[v207];
          v2 = v200;
          while (v82 < (v9 + 63) >> 6)
          {
            v85 = *v83++;
            v84 = v85;
            v81 += 64;
            ++v82;
            if (v85)
            {
              sub_22C3A5038(v51, v206, v203 & 1);
              v9 = __clz(__rbit64(v84)) + v81;
              goto LABEL_28;
            }
          }

          sub_22C3A5038(v51, v206, v203 & 1);
LABEL_28:
          v80 = v205;
        }

        v50 = 0;
        v52 = v80 + 1;
        v51 = v9;
        v49 = v191;
        v0 = v192;
        if (v52 == v192)
        {

          goto LABEL_35;
        }
      }

LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v43 = MEMORY[0x277D84F90];
LABEL_35:
    v98 = 0;
    v35 = *(v43 + 2);
    v38 = v43 + 40;
    v0 = MEMORY[0x277D84F90];
LABEL_36:
    v99 = &v38[3 * v98];
    while (v35 != v98)
    {
      if (v98 >= *(v43 + 2))
      {
        __break(1u);
        goto LABEL_99;
      }

      ++v98;
      v100 = v99 + 3;
      v9 = *v99;
      v99 += 3;
      if (v9)
      {
        v101 = v43;
        v102 = *(v100 - 4);
        v103 = *(v100 - 2);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = *(v0 + 16);
          sub_22C51E3E4();
          sub_22C5922A4();
          v0 = v108;
        }

        v105 = *(v0 + 16);
        v104 = *(v0 + 24);
        if (v105 >= v104 >> 1)
        {
          sub_22C369AB0(v104);
          sub_22C51E3E4();
          sub_22C5922A4();
          v0 = v109;
        }

        *(v0 + 16) = v105 + 1;
        v106 = (v0 + 24 * v105);
        v106[4] = v102;
        v106[5] = v9;
        v106[6] = v103;
        v2 = v200;
        v3 = v201;
        v43 = v101;
        goto LABEL_36;
      }
    }

    v211 = v0;

    v110 = v182;
    sub_22C51B3A0(&v211, sub_22C56C1F4, sub_22C51B424);
    v111 = v189;
    if (v110)
    {

      __break(1u);
      return;
    }

    v210 = v211;
    v0 = v177;
    v112 = v184;
    v113 = v186;
    v38 = v188;
    v114 = v185;
    if (!v211[2])
    {
      sub_22C36D818(&v209);
      sub_22C903F7C();
      (*(v113 + 16))(v2, v111, v112);
      v115 = sub_22C9063CC();
      v38 = sub_22C90AACC();
      if (os_log_type_enabled(v115, v38))
      {
        v208 = 0;
        v116 = sub_22C36FB44();
        v117 = sub_22C370060();
        v211 = v117;
        *v116 = 136642819;
        v118 = v176;
        sub_22C90915C();
        v119 = sub_22C90993C();
        sub_22C36D0A8(v118, 1, v119);
        if (v138)
        {
          sub_22C36DD28(v118, &qword_27D9BC390, &qword_22C912AC0);
          v122 = 0;
          v124 = 0xE000000000000000;
        }

        else
        {
          v122 = sub_22C9098BC();
          v124 = v123;
          sub_22C36BBA8(v119);
          (*(v125 + 8))(v126, v119);
        }

        v110 = v208;
        sub_22C36FB04(&v215);
        v127(v200, v112);
        v2 = sub_22C36F9F4(v122, v124, &v211);

        *(v116 + 4) = v2;
        _os_log_impl(&dword_22C366000, v115, v38, "Empty argument list found for entity with display representation: %{sensitive}s", v116, 0xCu);
        sub_22C36FF94(v117);
        sub_22C3699EC();
        sub_22C36D69C();

        v128 = sub_22C37EC08();
        v129(v128);
        sub_22C36FD08();
        v114 = v185;
      }

      else
      {

        (*(v113 + 8))(v2, v112);
        v120 = sub_22C37EC08();
        v121(v120);
        sub_22C36FD08();
      }
    }

    sub_22C9090AC();
    TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v38);
    v35 = v183;
    v183(v114, v0);
    if (qword_27D9BA660 != -1)
    {
      swift_once();
    }

    sub_22C37AA60(v0, qword_27D9E3EC8);
    v9 = sub_22C90950C();
    v130 = sub_22C372280();
    (v35)(v130);
    if (v9)
    {
      v43 = 0;
      v3 = v210[2];
      v208 = v110;
      v209 = (v210 + 4);
      v131 = MEMORY[0x277D84F90];
LABEL_57:
      while (v43 != v3)
      {
        if (v43 >= v210[2])
        {
          goto LABEL_106;
        }

        v132 = &v209[24 * v43];
        v133 = *v132;
        v38 = *(v132 + 1);
        v134 = *(v132 + 2);
        v0 = qword_27D9BA6A0;

        if (v0 != -1)
        {
          swift_once();
        }

        ++v43;
        v2 = qword_27D9E3F78;
        if (*(qword_27D9E3F78 + 16))
        {
          v135 = *(qword_27D9E3F78 + 40);
          sub_22C90B62C();
          sub_22C909FFC();
          v136 = sub_22C90B66C();
          v9 = v2 + 56;
          v0 = ~(-1 << *(v2 + 32));
          while (1)
          {
            v35 = v136 & v0;
            if (((*(v9 + (((v136 & v0) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v136 & v0)) & 1) == 0)
            {
              break;
            }

            v137 = (*(v2 + 48) + 16 * v35);
            v138 = *v137 == v133 && v137[1] == v38;
            if (!v138)
            {
              v139 = sub_22C90B4FC();
              v136 = v35 + 1;
              if ((v139 & 1) == 0)
              {
                continue;
              }
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v216[0] = v131;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v141 = v131[2];
              v9 = v216;
              sub_22C3B6CC8();
              v131 = v216[0];
            }

            v0 = v131[2];
            v142 = v131[3];
            v2 = v0 + 1;
            if (v0 >= v142 >> 1)
            {
              sub_22C369AB0(v142);
              v9 = v216;
              sub_22C388CAC();
              sub_22C3B6CC8();
              v131 = v216[0];
            }

            v131[2] = v2;
            v143 = &v131[3 * v0];
            v143[4] = v133;
            v143[5] = v38;
            v143[6] = v134;
            goto LABEL_57;
          }
        }
      }

      v3 = v201;
      v110 = v208;
    }

    else
    {
      v131 = v210;
    }

    v0 = v131[2];
    if (!v0)
    {
      break;
    }

    v211 = MEMORY[0x277D84F90];
    sub_22C3B63D4();
    v43 = 0;
    v9 = v211;
    v2 = (v131 + 6);
    while (v43 < v131[2])
    {
      v144 = *(v2 - 16);
      v145 = *(v2 - 8);
      v146 = *v2;

      v35 = sub_22C517FBC(v144, v145, v146);

      v211 = v9;
      v148 = *(v9 + 16);
      v147 = *(v9 + 24);
      v38 = (v148 + 1);
      if (v148 >= v147 >> 1)
      {
        sub_22C369AB0(v147);
        sub_22C3B63D4();
        v9 = v211;
      }

      ++v43;
      *(v9 + 16) = v38;
      *(v9 + 8 * v148 + 32) = v35;
      v2 += 24;
      if (v0 == v43)
      {

        goto LABEL_85;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    sub_22C37B648();
  }

  v9 = MEMORY[0x277D84F90];
LABEL_85:
  v149 = sub_22C47D738(8236, 0xE200000000000000, v9);

  if (*(v3 + 40))
  {
    v150 = v149;
  }

  else
  {
    v151 = *(v3 + 32);
    sub_22C36D2A8();
    v152 = swift_allocObject();
    *(v152 + 16) = v151;
    *(v152 + 24) = 0;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v153 = swift_allocObject();
    *(v153 + 16) = v149;
    *(v152 + 32) = v153;
    v150 = v152 | 0xA000000000000000;
  }

  v211 = MEMORY[0x277D84F90];

  sub_22C496A94();
  v155 = v154;

  if ((v155 & 1) == 0)
  {

    sub_22C36D2A8();
    v162 = swift_allocObject();
    sub_22C51E41C(v162);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    goto LABEL_97;
  }

  sub_22C37A078(v213);
  sub_22C903F7C();
  v156 = sub_22C9063CC();
  v157 = sub_22C90AACC();
  if (os_log_type_enabled(v156, v157))
  {
    v158 = swift_slowAlloc();
    *v158 = 0;
    _os_log_impl(&dword_22C366000, v156, v157, "Falling back on display representation because there are no properties to render", v158, 2u);
    sub_22C36D69C();
  }

  sub_22C36FB04(&v211);
  v159(v181, v180);
  sub_22C36A83C();
  v89 = swift_allocObject();
  v160 = v178;
  sub_22C90915C();
  v161 = sub_22C90993C();
  sub_22C36D0A8(v160, 1, v161);
  if (v138)
  {
    sub_22C36DD28(v160, &qword_27D9BC390, &qword_22C912AC0);
    v91 = 0;
    v93 = 0xE000000000000000;
  }

  else
  {
    v91 = sub_22C9098BC();
    v93 = v163;
    sub_22C36BBA8(v161);
    v165 = *(v164 + 8);
    v166 = sub_22C371510();
    v167(v166);
  }

LABEL_96:
  *(v89 + 16) = v91;
  *(v89 + 24) = v93;
  sub_22C36D2A8();
  v168 = swift_allocObject();
  *(v168 + 16) = 3;
  *(v168 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v169 = swift_allocObject();
  *(v169 + 16) = v89;
  *(v168 + 32) = v169;
  v110 = 0xA000000000000000;
  v170 = v168 | 0xA000000000000000;
  sub_22C36D2A8();
  v171 = swift_allocObject();
  *(v171 + 16) = 4;
  *(v171 + 24) = 1;
  sub_22C369AEC();
  v172 = swift_allocObject();
  *(v172 + 16) = v170;
  *(v171 + 32) = v172;
  v150 = v171 | 0xA000000000000000;
  sub_22C36D2A8();
  v173 = swift_allocObject();
  sub_22C51E41C(v173);
LABEL_97:
  sub_22C369AEC();
  v174 = swift_allocObject();
  *(v174 + 16) = v150;
  *(v110 + 32) = v174;
  sub_22C36CCD8(v110 | 0xA000000000000000);
  *(v175 + 40) = 0;
  sub_22C36CC48();
}
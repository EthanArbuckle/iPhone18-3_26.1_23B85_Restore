void sub_22C54072C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0);
  v59 = *(v5 - 8);
  v6 = *(v59 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - v9;
  v11 = sub_22C901FAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  v19 = *(a1 + 48);

  v21 = sub_22C53E3B4(v20);
  v22 = *(v21 + 16);
  v52 = 0;
  if (v22)
  {
    v23 = sub_22C628AF8(1);
    if (v24)
    {
      v25 = *(*(v21 + 56) + 8 * v23);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    if (*(v21 + 16) && (v26 = sub_22C628AF8(0), (v27 & 1) != 0))
    {
      v53 = *(*(v21 + 56) + 8 * v26);
    }

    else
    {
      v53 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];
  }

  v28 = *(a3 + 16);
  v55 = v25;
  if (v28)
  {
    v58 = v10;
    v64 = MEMORY[0x277D84F90];
    sub_22C3B6EDC();
    v29 = v64;
    v63 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
    v30 = a3 + ((*(*(v63 - 8) + 80) + 32) & ~*(*(v63 - 8) + 80));
    v62 = *(*(v63 - 8) + 72);
    v31 = *(v12 + 16);
    v60 = (v12 + 32);
    v61 = v31;
    do
    {
      v61(v18, v30 + *(v63 + 20), v11);
      v64 = v29;
      v32 = *(v29 + 16);
      if (v32 >= *(v29 + 24) >> 1)
      {
        sub_22C3B6EDC();
        v29 = v64;
      }

      *(v29 + 16) = v32 + 1;
      (*(v12 + 32))(v29 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v32, v18, v11);
      v30 += v62;
      --v28;
    }

    while (v28);
    v10 = v58;
    v25 = v55;
  }

  sub_22C3ADC38();
  v34 = v33;
  v35 = 0;
  v60 = *(v25 + 16);
  v36 = v33 + 56;
  v63 = v12 + 16;
  v56 = MEMORY[0x277D84F90];
  v62 = v12 + 8;
  while (1)
  {
    if (v35 == v60)
    {

      v64 = v56;
      sub_22C3CE328(v53);
      return;
    }

    if (v35 >= *(v25 + 16))
    {
      break;
    }

    v37 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v38 = *(v59 + 72);
    v39 = (v35 + 1);
    sub_22C542C74(v25 + v37 + v38 * v35, v10, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
    if (*(v34 + 16))
    {
      v57 = v38;
      v58 = v37;
      v61 = v39;
      v40 = *(v34 + 40);
      sub_22C4E9D34(&qword_2814357B0);
      v41 = v10;
      v42 = sub_22C909F7C();
      v43 = ~(-1 << *(v34 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v36 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {
          v10 = v41;
          v25 = v55;
          v39 = v61;
          goto LABEL_29;
        }

        (*(v12 + 16))(v16, *(v34 + 48) + *(v12 + 72) * v44, v11);
        sub_22C4E9D34(&qword_27D9BAA28);
        v45 = sub_22C90A0BC();
        (*(v12 + 8))(v16, v11);
        v42 = v44 + 1;
      }

      while ((v45 & 1) == 0);
      v10 = v41;
      sub_22C542CD4(v41, v54, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
      v46 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v46;
      v64 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B71E0(0, *(v46 + 16) + 1, 1);
        v48 = v64;
      }

      v49 = v57;
      v51 = *(v48 + 16);
      v50 = *(v48 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_22C3B71E0(v50 > 1, v51 + 1, 1);
        v48 = v64;
      }

      *(v48 + 16) = v51 + 1;
      v56 = v48;
      sub_22C542CD4(v54, &v58[v48 + v51 * v49], type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
      v35 = v61;
      v25 = v55;
    }

    else
    {
LABEL_29:
      sub_22C542DA4(v10, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
      v35 = v39;
    }
  }

  __break(1u);
}

uint64_t sub_22C540D38(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PromptTreeIdentifier(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v36 - v12;
  v14 = *(a2 + 16);
  if (v14)
  {
    sub_22C4055C0(v14 - 1, a2);
    sub_22C542CD4(v11, v13, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    v15 = sub_22C3A5908(&qword_27D9BC330, &qword_22C9126C8);
    v16 = swift_allocBox();
    v18 = v17;
    v36[1] = v3;
    v19 = *(v15 + 48);
    *v17 = 1;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_22C912340;
    *(v20 + 32) = 1;
    *&v18[v19] = v20;
    v21 = *MEMORY[0x277D1D7E8];
    v22 = sub_22C902D0C();
    v23 = *(*(v22 - 8) + 104);
    v23(&v18[v19], v21, v22);
    *v6 = v16;
    v23(v6, *MEMORY[0x277D1D7E0], v22);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
    swift_storeEnumTagMultiPayload();
    v24 = sub_22C901FAC();
    v25 = swift_allocBox();
    (*(*(v24 - 8) + 16))(v26, &v13[*(v7 + 20)], v24);
    v27 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
    *(v6 + v27) = v25;
    v23((v6 + v27), *MEMORY[0x277D1D798], v22);
    swift_storeEnumTagMultiPayload();
    v28 = swift_allocObject();
    sub_22C542DA4(v13, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    *(v28 + 16) = 0;
    *(v28 + 24) = 0xE000000000000000;
    v29 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    v30 = swift_allocBox();
    v32 = v31;
    v33 = *(v29 + 48);
    sub_22C542CD4(v6, v31, type metadata accessor for PromptTreeIdentifier);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    v34 = swift_allocObject();
    *(v34 + 16) = v28;
    *(v32 + v33) = v34;
    return v30 | 0x4000000000000000;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = 0xE000000000000000;
  }

  return result;
}

uint64_t sub_22C5410C4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v65 = a4;
  v64 = a1;
  v63 = type metadata accessor for PromptTreeIdentifier(0);
  v6 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BDBB0, &qword_22C91AC88);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v66 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  sub_22C542C74(a2, &v62 - v16, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
  *&v17[*(v9 + 48)] = a3;
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v18 = sub_22C901FAC();
  v19 = swift_allocBox();
  v21 = v20;
  sub_22C542D34(v17, v15);
  v22 = *&v15[*(v9 + 48)];

  v23 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  (*(*(v18 - 8) + 16))(v21, &v15[*(v23 + 20)], v18);
  sub_22C542DA4(v15, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
  v24 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *&v8[v24] = v19;
  v25 = *MEMORY[0x277D1D798];
  v26 = sub_22C902D0C();
  (*(*(v26 - 8) + 104))(&v8[v24], v25, v26);
  swift_storeEnumTagMultiPayload();
  v27 = *(v65 + 2) - 1;
  if (v27 > v64)
  {
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C919310;
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v29 = swift_allocBox();
    sub_22C486784();
    *(inited + 32) = v29 | 0x2000000000000000;
    v30 = swift_allocObject();
    v67 = 8250;
    v68 = 0xE200000000000000;
    v65 = v8;
    *(v30 + 16) = sub_22C90A49C();
    *(v30 + 24) = v31;
    *(inited + 40) = v30;
    sub_22C542D34(v17, v15);
    *(inited + 48) = *&v15[*(v9 + 48)];
    v32 = swift_allocObject();
    v67 = 44;
    v68 = 0xE100000000000000;
    *(v32 + 16) = sub_22C90A49C();
    *(v32 + 24) = v33;
    *(inited + 56) = v32;
    v34 = v66;
    sub_22C542D34(v17, v66);
    v35 = *(v34 + *(v9 + 48));

    v36 = *v34;

    sub_22C542DA4(v34, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    v37 = sub_22C53E700(v36);

    *(inited + 64) = v37;
    v38 = swift_allocObject();
    v67 = 10;
    v68 = 0xE100000000000000;
    v8 = v65;
    *(v38 + 16) = sub_22C90A49C();
    *(v38 + 24) = v39;
    *(inited + 72) = v38;
    sub_22C542DA4(v15, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    v40 = sub_22C3DB9B0(inited);
    swift_setDeallocating();
    sub_22C58FFB0();
    v41 = v17;
LABEL_6:
    sub_22C36DD28(v41, &qword_27D9BDBB0, &qword_22C91AC88);
    v52 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v53 = swift_allocObject();
    *(v53 + 16) = v40;
    *(v52 + 16) = v53;
    v54 = v52 | 0x6000000000000000;
    goto LABEL_7;
  }

  v42 = v9;
  v43 = v17;
  v44 = v66;
  if (v27 == v64)
  {
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_22C90D070;
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v46 = swift_allocBox();
    sub_22C486784();
    *(v45 + 32) = v46 | 0x2000000000000000;
    v47 = swift_allocObject();
    v67 = 8250;
    v68 = 0xE200000000000000;
    *(v47 + 16) = sub_22C90A49C();
    *(v47 + 24) = v48;
    *(v45 + 40) = v47;
    sub_22C542D34(v43, v15);
    *(v45 + 48) = *&v15[*(v42 + 48)];
    sub_22C542D34(v43, v44);
    v49 = *(v44 + *(v42 + 48));

    v50 = *v44;

    sub_22C542DA4(v44, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    v51 = sub_22C53E700(v50);

    *(v45 + 56) = v51;
    sub_22C542DA4(v15, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    v40 = sub_22C3DB9B0(v45);
    swift_setDeallocating();
    sub_22C58FFB0();
    v41 = v43;
    goto LABEL_6;
  }

  v54 = swift_allocObject();
  sub_22C36DD28(v43, &qword_27D9BDBB0, &qword_22C91AC88);
  *(v54 + 16) = 0;
  *(v54 + 24) = 0xE000000000000000;
LABEL_7:
  v55 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v56 = swift_allocBox();
  v58 = v57;
  v59 = *(v55 + 48);
  sub_22C542CD4(v8, v57, type metadata accessor for PromptTreeIdentifier);
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v60 = swift_allocObject();
  *(v60 + 16) = v54;
  *(v58 + v59) = v60;
  return v56 | 0x4000000000000000;
}

uint64_t sub_22C5417F8(uint64_t a1)
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](a1);
  return sub_22C90B66C();
}

uint64_t sub_22C541850()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

uint64_t sub_22C5418A0(uint64_t *a1)
{
  v2 = *(sub_22C901FAC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C2B8(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C541948(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C541948(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22C90B45C();
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
        sub_22C901FAC();
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C901FAC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C541D20(v8, v9, a1, v4);
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
    return sub_22C541A78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C541A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22C901FAC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v32 - v13;
  result = MEMORY[0x28223BE20](v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v37 = v20;
      v38 = a3;
      v35 = v22;
      v36 = v21;
      v23 = v20;
      do
      {
        v24 = v45;
        v25 = v43;
        v43(v45, v22, v8);
        v26 = v46;
        v25(v46, v23, v8);
        sub_22C4E9D34(&qword_27D9BC868);
        v27 = sub_22C90A06C();
        v28 = *v19;
        (*v19)(v26, v8);
        result = v28(v24, v8);
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v41)
        {
          __break(1u);
          return result;
        }

        v29 = *v40;
        v30 = v42;
        (*v40)(v42, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v29)(v23, v30, v8);
        v23 += v39;
        v22 += v39;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v38 + 1;
      v20 = v37 + v33;
      v21 = v36 - 1;
      v22 = v35 + v33;
      if (v38 + 1 != v34)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C541D20(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v120 = a1;
  v8 = sub_22C901FAC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v133 = &v117 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v139 = &v117 - v15;
  MEMORY[0x28223BE20](v14);
  v138 = &v117 - v17;
  v130 = v9;
  v131 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_99:
    v140 = *v120;
    if (!v140)
    {
      goto LABEL_141;
    }

    a4 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v110 = (v20 + 16);
      v111 = *(v20 + 16);
      while (v111 >= 2)
      {
        if (!*v131)
        {
          goto LABEL_138;
        }

        v112 = a4;
        v113 = v20;
        v114 = (v20 + 16 * v111);
        v20 = *v114;
        a4 = &v110[2 * v111];
        v115 = *(a4 + 8);
        sub_22C54272C(&(*v131)[v9[9] * *v114], &(*v131)[v9[9] * *a4], &(*v131)[v9[9] * v115], v140);
        v9 = v112;
        if (v112)
        {
          break;
        }

        if (v115 < v20)
        {
          goto LABEL_126;
        }

        if (v111 - 2 >= *v110)
        {
          goto LABEL_127;
        }

        *v114 = v20;
        v114[1] = v115;
        v116 = *v110 - v111;
        if (*v110 < v111)
        {
          goto LABEL_128;
        }

        v111 = *v110 - 1;
        sub_22C56BFF0((a4 + 16), v116, a4);
        *v110 = v111;
        a4 = 0;
        v9 = v130;
        v20 = v113;
      }

LABEL_109:

      return;
    }

LABEL_135:
    v20 = sub_22C56BFD8(v20);
    goto LABEL_101;
  }

  v118 = a4;
  v19 = 0;
  v136 = (v9 + 1);
  v137 = v9 + 2;
  v135 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v123 = v16;
  v140 = v8;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v122 = v19;
    if (v19 + 1 < v18)
    {
      v124 = v5;
      v119 = v20;
      v23 = v19;
      v24 = *v131;
      v25 = v9[9];
      a4 = &(*v131)[v25 * v22];
      v26 = v9[2];
      v129 = v19 + 1;
      v27 = v138;
      v132 = v18;
      v26(v138, a4, v8);
      v28 = &v24[v25 * v23];
      v29 = v8;
      v30 = v139;
      v127 = v26;
      v26(v139, v28, v29);
      v126 = sub_22C4E9D34(&qword_27D9BC868);
      LODWORD(v128) = sub_22C90A06C();
      v20 = v9[1];
      (v20)(v30, v29);
      v31 = v27;
      v22 = v129;
      v125 = v20;
      (v20)(v31, v29);
      v32 = v132;
      v33 = (v122 + 2);
      v134 = v25;
      v34 = &v24[v25 * (v122 + 2)];
      while (1)
      {
        v9 = v33;
        v35 = v22 + 1;
        if (v35 >= v32)
        {
          break;
        }

        v36 = v138;
        v37 = v140;
        v38 = v127;
        (v127)(v138, v34, v140);
        v39 = v35;
        v40 = v139;
        v38(v139, a4, v37);
        v41 = sub_22C90A06C() & 1;
        v42 = v40;
        v22 = v39;
        v20 = v125;
        v125(v42, v37);
        (v20)(v36, v37);
        v32 = v132;
        v34 += v134;
        a4 += v134;
        v33 = (v9 + 1);
        if ((v128 & 1) != v41)
        {
          goto LABEL_9;
        }
      }

      v22 = v32;
LABEL_9:
      if (v128)
      {
        v21 = v122;
        if (v22 < v122)
        {
          goto LABEL_132;
        }

        if (v122 >= v22)
        {
          v9 = v130;
          v20 = v119;
          v8 = v140;
          v5 = v124;
        }

        else
        {
          if (v32 >= v9)
          {
            v43 = v9;
          }

          else
          {
            v43 = v32;
          }

          v44 = v134 * (v43 - 1);
          v45 = v134 * v43;
          v46 = v122 * v134;
          v47 = v22;
          v48 = v122;
          v5 = v124;
          do
          {
            if (v48 != --v47)
            {
              v124 = v5;
              v49 = *v131;
              if (!*v131)
              {
                goto LABEL_139;
              }

              a4 = &v49[v46];
              v50 = v140;
              v132 = *v135;
              (v132)(v123, &v49[v46], v140);
              v51 = v46 < v44 || a4 >= &v49[v45];
              if (v51)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v46 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v132)(&v49[v44], v123, v50);
              v5 = v124;
              v21 = v122;
            }

            ++v48;
            v44 -= v134;
            v45 -= v134;
            v46 += v134;
          }

          while (v48 < v47);
          v9 = v130;
          v20 = v119;
          v8 = v140;
        }
      }

      else
      {
        v9 = v130;
        v20 = v119;
        v8 = v140;
        v5 = v124;
        v21 = v122;
      }
    }

    v52 = v131[1];
    if (v22 < v52)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_131;
      }

      if (v22 - v21 < v118)
      {
        break;
      }
    }

LABEL_47:
    if (v22 < v21)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = *(v20 + 16);
      sub_22C590218();
      v20 = v108;
    }

    v68 = *(v20 + 16);
    a4 = v68 + 1;
    if (v68 >= *(v20 + 24) >> 1)
    {
      sub_22C590218();
      v20 = v109;
    }

    *(v20 + 16) = a4;
    v69 = v20 + 32;
    v70 = (v20 + 32 + 16 * v68);
    *v70 = v21;
    v70[1] = v22;
    v134 = *v120;
    if (!v134)
    {
      goto LABEL_140;
    }

    v129 = v22;
    if (v68)
    {
      while (1)
      {
        v71 = a4 - 1;
        v72 = (v69 + 16 * (a4 - 1));
        v73 = (v20 + 16 * a4);
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v74 = *(v20 + 32);
          v75 = *(v20 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_67:
          if (v77)
          {
            goto LABEL_117;
          }

          v89 = *v73;
          v88 = v73[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_120;
          }

          v93 = v72[1];
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_125;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = a4 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (a4 < 2)
        {
          goto LABEL_119;
        }

        v96 = *v73;
        v95 = v73[1];
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_82:
        if (v92)
        {
          goto LABEL_122;
        }

        v98 = *v72;
        v97 = v72[1];
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_124;
        }

        if (v99 < v91)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v71 - 1 >= a4)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
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
          goto LABEL_134;
        }

        if (!*v131)
        {
          goto LABEL_137;
        }

        v103 = v20;
        v104 = (v69 + 16 * (v71 - 1));
        a4 = *v104;
        v105 = v69 + 16 * v71;
        v20 = *(v105 + 8);
        sub_22C54272C(&(*v131)[v9[9] * *v104], &(*v131)[v9[9] * *v105], &(*v131)[v9[9] * v20], v134);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v20 < a4)
        {
          goto LABEL_112;
        }

        v9 = *(v103 + 16);
        if (v71 > v9)
        {
          goto LABEL_113;
        }

        *v104 = a4;
        v104[1] = v20;
        if (v71 >= v9)
        {
          goto LABEL_114;
        }

        a4 = v9 - 1;
        sub_22C56BFF0((v105 + 16), v9 - v71 - 1, (v69 + 16 * v71));
        v20 = v103;
        *(v103 + 16) = v9 - 1;
        v106 = v9 > 2;
        v9 = v130;
        if (!v106)
        {
          goto LABEL_96;
        }
      }

      v78 = v69 + 16 * a4;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_115;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_116;
      }

      v85 = v73[1];
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_118;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_121;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = v72[1];
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_129;
        }

        if (v76 < v102)
        {
          v71 = a4 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v18 = v131[1];
    v19 = v129;
    v8 = v140;
    if (v129 >= v18)
    {
      goto LABEL_99;
    }
  }

  v53 = (v21 + v118);
  if (__OFADD__(v21, v118))
  {
    goto LABEL_133;
  }

  if (v53 >= v52)
  {
    v53 = v131[1];
  }

  if (v53 < v21)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v22 == v53)
  {
    goto LABEL_47;
  }

  v119 = v20;
  v124 = v5;
  v125 = v53;
  v54 = *v131;
  v55 = v9[9];
  v134 = v9[2];
  v56 = &v54[v55 * (v22 - 1)];
  v57 = -v55;
  v58 = (v21 - v22);
  v132 = v54;
  v121 = v55;
  a4 = &v54[v22 * v55];
LABEL_40:
  v128 = v56;
  v129 = v22;
  v126 = a4;
  v127 = v58;
  v59 = v56;
  while (1)
  {
    v60 = v138;
    v61 = v134;
    (v134)(v138, a4, v8);
    v62 = v139;
    v61(v139, v59, v140);
    sub_22C4E9D34(&qword_27D9BC868);
    v63 = sub_22C90A06C();
    v64 = *v136;
    v65 = v62;
    v8 = v140;
    (*v136)(v65, v140);
    v64(v60, v8);
    if ((v63 & 1) == 0)
    {
LABEL_45:
      v22 = v129 + 1;
      v56 = &v128[v121];
      v58 = v127 - 1;
      a4 = v126 + v121;
      if ((v129 + 1) == v125)
      {
        v22 = v125;
        v5 = v124;
        v9 = v130;
        v20 = v119;
        v21 = v122;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v132)
    {
      break;
    }

    v66 = *v135;
    v67 = v133;
    (*v135)(v133, a4, v8);
    swift_arrayInitWithTakeFrontToBack();
    v66(v59, v67, v8);
    v59 += v57;
    a4 += v57;
    v51 = __CFADD__(v58++, 1);
    if (v51)
    {
      goto LABEL_45;
    }
  }

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
}

uint64_t sub_22C54272C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = a4;
  v7 = sub_22C901FAC();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v61 = &v52 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v16 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v19 = (a2 - a1) / v15;
  v67 = a1;
  v66 = v64;
  v59 = (v12 + 8);
  v60 = (v12 + 16);
  v20 = v15;
  v21 = v17 / v15;
  if (v19 >= v17 / v15)
  {
    v36 = v64;
    sub_22C3D735C(a2, v17 / v15, v64);
    v37 = v36 + v21 * v20;
    v38 = -v20;
    v39 = v37;
    v55 = -v20;
    v56 = a1;
LABEL_36:
    v57 = a2;
    v58 = a2 + v38;
    v40 = a3;
    v53 = v39;
    while (1)
    {
      if (v37 <= v64)
      {
        v67 = a2;
        v65 = v39;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v54 = v39;
      v63 = v40 + v38;
      v41 = v37 + v38;
      v42 = v37;
      v43 = v61;
      v44 = *v60;
      (*v60)(v61, v41, v7);
      v45 = v62;
      v44(v62, v58, v7);
      sub_22C4E9D34(&qword_27D9BC868);
      LOBYTE(v44) = sub_22C90A06C();
      v46 = *v59;
      (*v59)(v45, v7);
      v46(v43, v7);
      if (v44)
      {
        v37 = v42;
        a3 = v63;
        if (v40 < v57 || v63 >= v57)
        {
          a2 = v58;
          swift_arrayInitWithTakeFrontToBack();
          v39 = v54;
          v38 = v55;
          a1 = v56;
        }

        else
        {
          v50 = v54;
          v38 = v55;
          v39 = v54;
          v16 = v40 == v57;
          v51 = v58;
          a2 = v58;
          a1 = v56;
          if (!v16)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v51;
            v39 = v50;
          }
        }

        goto LABEL_36;
      }

      v47 = v63;
      if (v40 < v42 || v63 >= v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        v40 = v47;
        v37 = v41;
        v39 = v41;
        a1 = v56;
        a2 = v57;
        v38 = v55;
      }

      else
      {
        v39 = v41;
        v16 = v42 == v40;
        v40 = v63;
        v37 = v41;
        a1 = v56;
        a2 = v57;
        v38 = v55;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v40 = v47;
          v37 = v41;
          v39 = v41;
        }
      }
    }

    v67 = a2;
    v65 = v53;
  }

  else
  {
    v22 = v64;
    sub_22C3D735C(a1, (a2 - a1) / v15, v64);
    v58 = v22 + v19 * v20;
    v65 = v58;
    v23 = v20;
    v63 = a3;
    while (v64 < v58 && a2 < a3)
    {
      v25 = a1;
      v26 = v61;
      v27 = *v60;
      (*v60)(v61, a2, v7);
      v28 = a2;
      v29 = v62;
      v27(v62, v64, v7);
      sub_22C4E9D34(&qword_27D9BC868);
      v30 = sub_22C90A06C();
      v31 = *v59;
      (*v59)(v29, v7);
      v31(v26, v7);
      if (v30)
      {
        a2 = v28 + v23;
        v32 = v25;
        if (v25 < v28 || v25 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v63;
        }

        else
        {
          a3 = v63;
          if (v25 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v34 = v64 + v23;
        v32 = v25;
        if (v25 < v64 || v25 >= v34)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v28;
          a3 = v63;
        }

        else
        {
          a3 = v63;
          a2 = v28;
          if (v25 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v66 = v34;
        v64 = v34;
      }

      a1 = v32 + v23;
      v67 = a1;
    }
  }

LABEL_58:
  sub_22C8381A0(&v67, &v66, &v65);
  return 1;
}

uint64_t sub_22C542C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C542CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C542D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BDBB0, &qword_22C91AC88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C542DA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22C542E0C(uint64_t a1)
{
  result = sub_22C48A760();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C542E38()
{
  result = qword_27D9BDBC0;
  if (!qword_27D9BDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDBC0);
  }

  return result;
}

uint64_t sub_22C542E8C@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v1 + 72) * v2;
  v4 = *(v1 + 32);
  return result;
}

unint64_t sub_22C542EF0()
{
  result = sub_22C542F8C();
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

unint64_t sub_22C542F8C()
{
  result = qword_27D9BDBD8;
  if (!qword_27D9BDBD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D9BDBD8);
  }

  return result;
}

uint64_t sub_22C542FE8(uint64_t a1)
{
  v2 = sub_22C54CDE0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C543024(uint64_t a1)
{
  v2 = sub_22C54CDE0();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_22C54307C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v213 = a4;
  v226 = a3;
  v5 = sub_22C3A5908(&qword_27D9BD980, &qword_22C919DC0);
  v6 = sub_22C36985C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v9);
  sub_22C36D234(v208 - v10);
  v222 = sub_22C3A5908(&qword_27D9BD990, qword_22C919DD0);
  v11 = sub_22C36985C(v222);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C36D234(v208 - v14);
  v15 = sub_22C901FAC();
  v238 = sub_22C369824(v15);
  v239 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v238);
  sub_22C369838();
  sub_22C36D234(v20 - v19);
  v21 = type metadata accessor for ContextEventPromptGenerator_v5_0(0);
  v22 = sub_22C369914(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v236 = v26 - v25;
  v219 = sub_22C9063DC();
  v27 = sub_22C369824(v219);
  v217 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36D234(v208 - v33);
  v34 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  v35 = sub_22C369914(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  v40 = v208 - v39;
  v241 = sub_22C90399C();
  v41 = sub_22C369824(v241);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  v48 = v47 - v46;
  v49 = sub_22C9081CC();
  v50 = sub_22C369824(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22C3698E4();
  v237 = v53;
  MEMORY[0x28223BE20](v54);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C3698D4();
  v57 = MEMORY[0x28223BE20](v56);
  v60 = v208 - v59;
  v61 = *(a1 + 16);
  v240 = v57;
  v218 = v58;
  v234 = v61;
  v235 = v5;
  v209 = a1;
  if (v61)
  {
    v62 = *(v58 + 16);
    v63 = *(v58 + 80);
    sub_22C36BA94();
    v65 = a1 + v64;
    v231 = *(v66 + 56);
    v232 = v67;
    v230 = v43 + 8;
    v242 = MEMORY[0x277D84F90];
    v233 = v66;
    v229 = (v66 - 8);
    v220 = v48;
    do
    {
      v68 = v5;
      v232(v60, v65, v49);
      sub_22C9081AC();
      sub_22C90397C();
      v69 = v48;
      v70 = sub_22C9038BC();
      if (sub_22C370B74(v40, 1, v70) == 1)
      {
        sub_22C36DD28(v40, &qword_27D9BDBE0, &qword_22C9275D0);
        v71 = sub_22C389004();
        v72(v71);
        (*v229)(v60, v49);
        v48 = v69;
        v5 = v68;
      }

      else
      {
        v73 = v221;
        sub_22C3A7214();
        LODWORD(v228) = sub_22C90385C();
        sub_22C36BBA8(v70);
        (*(v74 + 8))(v73, v70);
        sub_22C36DD28(v40, &qword_27D9BDBE0, &qword_22C9275D0);
        v75 = sub_22C389004();
        v76(v75);
        (*v229)(v60, v49);
        v77 = v242;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = *(v77 + 16);
          sub_22C36D270();
          sub_22C592364();
          v77 = v81;
        }

        v79 = *(v77 + 16);
        v78 = *(v77 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_22C369AB0(v78);
          sub_22C592364();
          v77 = v82;
        }

        *(v77 + 16) = v79 + 1;
        v242 = v77;
        *(v77 + v79 + 32) = v228 & 1;
        v49 = v240;
        v5 = v235;
        v48 = v220;
      }

      v65 += v231;
      --v61;
    }

    while (v61);
  }

  else
  {
    v242 = MEMORY[0x277D84F90];
  }

  v83 = sub_22C8B5310(1, v242);

  LODWORD(v232) = v83;
  v84 = v218;
  v85 = v209;
  v86 = v234;
  if (v83)
  {
    v87 = v208[1];
    sub_22C903F7C();
    v88 = sub_22C9063CC();
    v89 = sub_22C90AADC();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      v84 = v218;
      sub_22C3699EC();
    }

    (*(v217 + 8))(v87, v219);
  }

  sub_22C54CA2C();
  v91 = 0;
  v241 = (v84 + 8);
  v242 = v84 + 16;
  v231 = v84 + 32;
  v233 = MEMORY[0x277D84F90];
  v92 = v214;
LABEL_18:
  v93 = v240;
  while (v86 != v91)
  {
    v94 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v95 = *(v84 + 72);
    (*(v84 + 16))(v92, v85 + v94 + v95 * v91, v93);
    if (sub_22C544484(v92))
    {
      v96 = *v231;
      (*v231)(v215, v92, v93);
      v97 = v233;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v244[0] = v97;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B6170(0, *(v97 + 16) + 1, 1);
        v92 = v214;
        v97 = v244[0];
      }

      v100 = *(v97 + 16);
      v99 = *(v97 + 24);
      if (v100 >= v99 >> 1)
      {
        v101 = sub_22C369AB0(v99);
        sub_22C3B6170(v101, v100 + 1, 1);
        v92 = v214;
        v97 = v244[0];
      }

      ++v91;
      *(v97 + 16) = v100 + 1;
      v233 = v97;
      v96((v97 + v94 + v100 * v95), v215, v240);
      v86 = v234;
      v5 = v235;
      v84 = v218;
      goto LABEL_18;
    }

    (*v241)(v92, v93);
    ++v91;
    v86 = v234;
  }

  sub_22C54CA84(v236, type metadata accessor for ContextEventPromptGenerator_v5_0);
  v102 = v210;
  sub_22C903F7C();
  v103 = v233;

  v104 = sub_22C9063CC();
  v105 = sub_22C90AACC();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 134217984;
    *(v106 + 4) = *(v103 + 16);

    _os_log_impl(&dword_22C366000, v104, v105, "Processing %ld contextual entities.", v106, 0xCu);
    sub_22C3699EC();
  }

  else
  {
  }

  v107 = v212;
  v108 = v211;
  v109 = v217 + 8;
  v215 = *(v217 + 8);
  v215(v102, v219);
  v110 = v108;
  sub_22C54BB58(v103);
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v117 = v110;
  sub_22C903F7C();

  v118 = v114;
  v119 = sub_22C9063CC();
  v120 = sub_22C90AACC();

  v220 = v112;

  LODWORD(v214) = v120;
  v121 = os_log_type_enabled(v119, v120);
  v233 = v118;
  v234 = v116;
  if (v121)
  {
    v122 = v220;
    v212 = v119;
    v123 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v244[0] = v210;
    v124 = v123;
    *v123 = 136315138;
    v125 = *(v116 + 16);
    v126 = v219;
    v211 = v124;
    if (v125)
    {
      v209 = v117;
      v245 = MEMORY[0x277D84F90];

      v221 = v125;
      sub_22C3B6D68(0, v125, 0);
      v127 = v221;
      v128 = 0;
      v129 = v245;
      v228 = v116 + 32;
      v236 = v239 + 32;
      v217 = v109;
      do
      {
        v130 = *(v228 + 8 * v128);
        v131 = *(v130 + 16);
        if (v131)
        {
          v231 = v128;
          v230 = v129;
          v243 = MEMORY[0x277D84F90];

          sub_22C3B6EDC();
          v132 = v243;
          v133 = *(v218 + 80);
          sub_22C36BA94();
          v229 = v130;
          v135 = v130 + v134;
          v137 = *(v136 + 72);
          v138 = *(v136 + 16);
          do
          {
            v139 = v237;
            v140 = v240;
            v138(v237, v135, v240);
            sub_22C9068FC();
            (*v241)(v139, v140);
            v243 = v132;
            v142 = *(v132 + 16);
            v141 = *(v132 + 24);
            if (v142 >= v141 >> 1)
            {
              sub_22C369AB0(v141);
              sub_22C3B6EDC();
              v132 = v243;
            }

            *(v132 + 16) = v142 + 1;
            v143 = *(v239 + 80);
            sub_22C36BA94();
            (*(v145 + 32))(v132 + v144 + *(v145 + 72) * v142, v107);
            v135 += v137;
            --v131;
          }

          while (v131);

          v116 = v234;
          v5 = v235;
          v126 = v219;
          v127 = v221;
          v129 = v230;
          v128 = v231;
        }

        else
        {
          v132 = MEMORY[0x277D84F90];
        }

        v245 = v129;
        v147 = *(v129 + 16);
        v146 = *(v129 + 24);
        if (v147 >= v146 >> 1)
        {
          v148 = sub_22C369AB0(v146);
          v231 = v149;
          sub_22C3B6D68(v148, v147 + 1, 1);
          v128 = v231;
          v127 = v221;
          v129 = v245;
        }

        ++v128;
        *(v129 + 16) = v147 + 1;
        *(v129 + 8 * v147 + 32) = v132;
      }

      while (v128 != v127);
      v117 = v209;
      v152 = v220;
      v118 = v233;
    }

    else
    {
      v152 = v122;

      v129 = MEMORY[0x277D84F90];
    }

    sub_22C54C3D8(v152, v118, v129);

    v153 = sub_22C36BA00();
    v156 = sub_22C36F9F4(v153, v154, v155);
    v118 = v233;

    v157 = v211;
    *(v211 + 1) = v156;
    v158 = v212;
    _os_log_impl(&dword_22C366000, v212, v214, "Grouped contextual entities by type: %s", v157, 0xCu);
    sub_22C36FF94(v210);
    sub_22C3699EC();
    sub_22C3699EC();

    v150 = v216;
    v151 = v126;
  }

  else
  {

    v150 = v216;
    v151 = v219;
  }

  v215(v150, v151);
  v159 = 0;
  v241 = v213[4];
  v240 = MEMORY[0x277D84F90];
  v242 = *(v116 + 16);
  while (v159 < v242)
  {
    if (v159 >= *(v118 + 16))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      return;
    }

    v160 = *(v5 + 48);
    v161 = *(sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960) - 8);
    v162 = v118 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    v163 = *(v161 + 72);
    v164 = v225;
    sub_22C3A7214();
    if (v159 >= *(v116 + 16))
    {
      goto LABEL_73;
    }

    *(v164 + v160) = *(v116 + 8 * v159 + 32);
    v165 = v117;
    v166 = v224;
    sub_22C407C2C();
    v167 = *(v5 + 48);
    v168 = *(v222 + 48);
    v169 = v223;
    sub_22C407C2C();
    v170 = *(v166 + v167);
    *(v169 + v168) = v170;

    v171 = sub_22C545710(v169, v170, v227, v226, 0, v241, v232 & 1);
    v117 = v165;
    if (v165)
    {

      sub_22C379838();

      sub_22C36DD28(v169, &qword_27D9BD990, qword_22C919DD0);

      return;
    }

    v172 = v171;
    ++v159;
    sub_22C36DD28(v169, &qword_27D9BD990, qword_22C919DD0);
    v116 = v234;
    v5 = v235;
    v118 = v233;
    if ((~v172 & 0xF000000000000007) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v177 = *(v240 + 16);
        sub_22C36D270();
        sub_22C591324();
        v240 = v178;
      }

      v174 = *(v240 + 16);
      v173 = *(v240 + 24);
      v175 = v174 + 1;
      if (v174 >= v173 >> 1)
      {
        sub_22C369AB0(v173);
        v239 = v179;
        sub_22C591324();
        v175 = v239;
        v240 = v180;
      }

      v176 = v240;
      *(v240 + 16) = v175;
      *(v176 + 8 * v174 + 32) = v172;
    }
  }

  v181 = v240;
  if (*(v240 + 16))
  {
    v182 = v213;
    v183 = v213[8];
    v184 = v213[9];
    sub_22C374168(v213 + 5, v183);
    v185 = sub_22C3DB9B0(v181);

    v186 = swift_allocObject();
    *(v186 + 16) = xmmword_22C911490;
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v187 = swift_allocObject();
    *(v187 + 16) = v185;
    *(v186 + 32) = v187;
    v188 = sub_22C529D00(8202, 0xE200000000000000, v186 | 0x8000000000000000);

    sub_22C369AEC();
    v189 = swift_allocObject();
    sub_22C369AEC();
    v190 = swift_allocObject();
    *(v190 + 16) = v188;
    *(v189 + 16) = v190;
    v191 = sub_22C457454(5, v189 | 0x6000000000000000, v183, v184);

    if (v227[39].isa)
    {
      v192 = v182[8];
      v193 = v182[9];
      sub_22C374168(v182 + 5, v192);
      sub_22C36A83C();
      v194 = swift_allocObject();
      strcpy(v244, "get_context()");
      HIWORD(v244[1]) = -4864;
      *(v194 + 16) = sub_22C90A49C();
      *(v194 + 24) = v195;
      v196 = sub_22C457454(1, v194, v192, v193);

      sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
      v197 = swift_allocObject();
      sub_22C37A10C(v197, xmmword_22C90F800);
      if (v198)
      {
        v199 = 1;
      }

      else
      {
        v199 = 0;
      }

      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F870;
      *(inited + 32) = v196;
      *(inited + 40) = v191;

      v201 = sub_22C3DB9B0(inited);
      swift_setDeallocating();
      sub_22C58FFB0();
      sub_22C369AEC();
      v202 = swift_allocObject();
      sub_22C369AEC();
      v203 = swift_allocObject();
      *(v203 + 16) = v201;
      *(v202 + 16) = v203;
      sub_22C36A83C();
      *(swift_allocObject() + 16) = v199;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v204 = swift_allocObject();
      *(v204 + 16) = v202 | 0x6000000000000000;
      sub_22C37F7E8(v204);
      sub_22C379838();
    }

    else
    {
      sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
      v205 = swift_allocObject();
      sub_22C37A10C(v205, xmmword_22C90F800);
      if (v198)
      {
        v206 = 1;
      }

      else
      {
        v206 = 0;
      }

      sub_22C36A83C();
      *(swift_allocObject() + 16) = v206;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v207 = swift_allocObject();
      *(v207 + 16) = v191;
      sub_22C37F7E8(v207);
      sub_22C379838();
    }
  }

  else
  {

    sub_22C379838();
  }
}

uint64_t sub_22C544484(uint64_t a1)
{
  v2 = sub_22C901FAC();
  v160 = *(v2 - 8);
  v161 = v2;
  v3 = *(v160 + 64);
  MEMORY[0x28223BE20](v2);
  v159 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C9081CC();
  v164 = *(v5 - 8);
  v165 = v5;
  v6 = *(v164 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v168 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v162 = &v139 - v10;
  MEMORY[0x28223BE20](v9);
  v157 = &v139 - v11;
  v12 = sub_22C9063DC();
  v166 = *(v12 - 8);
  v167 = v12;
  v13 = *(v166 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v169 = (&v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v158 = &v139 - v17;
  MEMORY[0x28223BE20](v16);
  v145 = &v139 - v18;
  v147 = sub_22C90993C();
  v144 = *(v147 - 8);
  v19 = *(v144 + 64);
  MEMORY[0x28223BE20](v147);
  v141 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_22C3A5908(&qword_27D9BDC18, &unk_22C91ADC0);
  v21 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v151 = &v139 - v22;
  v23 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v143 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v149 = &v139 - v28;
  MEMORY[0x28223BE20](v27);
  v150 = &v139 - v29;
  v30 = sub_22C90931C();
  v153 = *(v30 - 8);
  v154 = v30;
  v31 = *(v153 + 64);
  MEMORY[0x28223BE20](v30);
  v152 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22C90926C();
  v155 = *(v33 - 8);
  v156 = v33;
  v34 = *(v155 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v140 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v142 = &v139 - v38;
  MEMORY[0x28223BE20](v37);
  v148 = &v139 - v39;
  v40 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = &v139 - v42;
  v44 = sub_22C90399C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v139 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v51 = &v139 - v50;
  v52 = sub_22C9093BC();
  v163 = *(v52 - 8);
  v53 = *(v163 + 64);
  v54 = MEMORY[0x28223BE20](v52);
  v56 = (&v139 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v54);
  v58 = &v139 - v57;
  v170 = a1;
  sub_22C9081AC();
  sub_22C90391C();
  v61 = *(v45 + 8);
  v59 = (v45 + 8);
  v60 = v61;
  (v61)(v51, v44);
  if (sub_22C370B74(v43, 1, v52) == 1)
  {
    v157 = v60;
    v158 = v59;
    v163 = v44;
    sub_22C36DD28(v43, &qword_27D9BB908, &qword_22C910960);
    sub_22C903F7C();
    v62 = v164;
    v63 = v165;
    v64 = *(v164 + 16);
    v65 = v162;
    v66 = v170;
    v64(v162, v170, v165);
    v64(v168, v66, v63);
    v67 = sub_22C9063CC();
    v68 = sub_22C90AACC();
    v69 = v62;
    if (os_log_type_enabled(v67, v68))
    {
      v70 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v171 = v170;
      *v70 = 136315394;
      v71 = v159;
      LODWORD(v156) = v68;
      sub_22C9068FC();
      sub_22C54CC10(&qword_27D9BAA48, MEMORY[0x277D1C338]);
      v72 = v65;
      v73 = v161;
      v74 = sub_22C90B47C();
      v76 = v75;
      (*(v160 + 8))(v71, v73);
      v77 = *(v69 + 8);
      v77(v72, v63);
      v78 = sub_22C36F9F4(v74, v76, &v171);

      *(v70 + 4) = v78;
      *(v70 + 12) = 2080;
      v79 = v168;
      sub_22C9081AC();
      v80 = sub_22C90390C();
      v82 = v81;
      (v157)(v49, v163);
      v77(v79, v63);
      v83 = sub_22C36F9F4(v80, v82, &v171);

      *(v70 + 14) = v83;
      _os_log_impl(&dword_22C366000, v67, v156, "No typedValue found on retrievedContext. StatementID: %s, Identifier: %s", v70, 0x16u);
      v84 = v170;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v84, -1, -1);
      MEMORY[0x2318B9880](v70, -1, -1);
    }

    else
    {

      v104 = *(v62 + 8);
      v104(v168, v63);
      v104(v65, v63);
    }

    (*(v166 + 8))(v169, v167);
    return 0;
  }

  v85 = v163;
  (*(v163 + 32))(v58, v43, v52);
  sub_22C9081AC();
  v86 = sub_22C50D9B8();
  (v60)(v49, v44);
  v87 = v85;
  if ((v86 & 1) == 0)
  {
    v139 = v58;
    v106 = v158;
    sub_22C903F7C();
    v107 = v164;
    v108 = v165;
    v109 = v157;
    (*(v164 + 16))(v157, v170, v165);
    v110 = sub_22C9063CC();
    v111 = sub_22C90AACC();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v171 = v169;
      *v112 = 136315138;
      v113 = v159;
      sub_22C9068FC();
      sub_22C54CC10(&qword_27D9BAA48, MEMORY[0x277D1C338]);
      v114 = v161;
      v115 = sub_22C90B47C();
      v170 = v52;
      v117 = v116;
      (*(v160 + 8))(v113, v114);
      (*(v107 + 8))(v109, v108);
      v118 = sub_22C36F9F4(v115, v117, &v171);

      *(v112 + 4) = v118;
      _os_log_impl(&dword_22C366000, v110, v111, "Entity %s should not be rendered in the prompt. Skipping rendering.", v112, 0xCu);
      v119 = v169;
      sub_22C36FF94(v169);
      MEMORY[0x2318B9880](v119, -1, -1);
      MEMORY[0x2318B9880](v112, -1, -1);

      (*(v166 + 8))(v158, v167);
      (*(v163 + 8))(v139, v170);
    }

    else
    {

      (*(v107 + 8))(v109, v108);
      (*(v166 + 8))(v106, v167);
      (*(v85 + 8))(v139, v52);
    }

    return 0;
  }

  (*(v85 + 16))(v56, v58, v52);
  if ((*(v85 + 88))(v56, v52) == *MEMORY[0x277D72A58])
  {
    (*(v85 + 96))(v56, v52);
    v88 = *v56;
    v89 = swift_projectBox();
    v91 = v152;
    v90 = v153;
    v92 = v154;
    (*(v153 + 16))(v152, v89, v154);
    if ((*(v90 + 88))(v91, v92) == *MEMORY[0x277D72970])
    {
      v139 = v58;
      (*(v90 + 96))(v91, v92);
      v93 = v148;
      (*(v155 + 32))(v148, v91, v156);

      v94 = v150;
      sub_22C90925C();
      v95 = v149;
      v96 = v147;
      sub_22C36C640(v149, 1, 1, v147);
      v97 = *(v146 + 48);
      v98 = v151;
      sub_22C3A7214();
      sub_22C3A7214();
      if (sub_22C370B74(v98, 1, v96) == 1)
      {
        sub_22C36DD28(v95, &qword_27D9BC390, &qword_22C912AC0);
        v99 = v151;
        sub_22C36DD28(v94, &qword_27D9BC390, &qword_22C912AC0);
        v100 = sub_22C370B74(v99 + v97, 1, v96);
        v101 = v139;
        v102 = v155;
        if (v100 == 1)
        {
          sub_22C36DD28(v99, &qword_27D9BC390, &qword_22C912AC0);
          v103 = v156;
LABEL_24:
          v170 = v52;
          v126 = v145;
          sub_22C903F7C();
          v127 = *(v102 + 16);
          v128 = v142;
          v127(v142, v93, v103);
          v129 = sub_22C9063CC();
          v130 = sub_22C90AACC();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            v171 = v169;
            *v131 = 136315138;
            v127(v140, v128, v103);
            v132 = sub_22C90A1AC();
            v134 = v133;
            v135 = *(v102 + 8);
            v135(v128, v103);
            v136 = sub_22C36F9F4(v132, v134, &v171);

            *(v131 + 4) = v136;
            _os_log_impl(&dword_22C366000, v129, v130, "Context rendering is skipping app value %s because it will fail to render!", v131, 0xCu);
            v137 = v169;
            sub_22C36FF94(v169);
            MEMORY[0x2318B9880](v137, -1, -1);
            MEMORY[0x2318B9880](v131, -1, -1);

            (*(v166 + 8))(v145, v167);
            v135(v148, v103);
          }

          else
          {

            v138 = *(v102 + 8);
            v138(v128, v103);
            (*(v166 + 8))(v126, v167);
            v138(v93, v103);
          }

          (*(v87 + 8))(v139, v170);
          return 0;
        }
      }

      else
      {
        v121 = v143;
        sub_22C3A7214();
        if (sub_22C370B74(v98 + v97, 1, v96) != 1)
        {
          v122 = v144;
          v123 = v98 + v97;
          v124 = v141;
          (*(v144 + 32))(v141, v123, v96);
          sub_22C54CC10(&qword_27D9BDC20, MEMORY[0x277D73220]);
          LODWORD(v170) = sub_22C90A0BC();
          v125 = *(v122 + 8);
          v125(v124, v96);
          sub_22C36DD28(v149, &qword_27D9BC390, &qword_22C912AC0);
          sub_22C36DD28(v150, &qword_27D9BC390, &qword_22C912AC0);
          v125(v121, v96);
          v93 = v148;
          sub_22C36DD28(v98, &qword_27D9BC390, &qword_22C912AC0);
          v101 = v139;
          v102 = v155;
          v103 = v156;
          if (v170)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }

        sub_22C36DD28(v149, &qword_27D9BC390, &qword_22C912AC0);
        v99 = v151;
        sub_22C36DD28(v150, &qword_27D9BC390, &qword_22C912AC0);
        (*(v144 + 8))(v121, v96);
        v101 = v139;
        v102 = v155;
      }

      sub_22C36DD28(v99, &qword_27D9BDC18, &unk_22C91ADC0);
      v103 = v156;
LABEL_21:
      (*(v102 + 8))(v93, v103);
      (*(v87 + 8))(v101, v52);
      return 1;
    }

    (*(v85 + 8))(v58, v52);
    (*(v90 + 8))(v91, v92);
  }

  else
  {
    v120 = *(v85 + 8);
    v120(v58, v52);
    v120(v56, v52);
  }

  return 1;
}

unint64_t sub_22C545710(uint64_t a1, uint64_t a2, NSObject *a3, int a4, int a5, uint64_t a6, int a7)
{
  v64 = a6;
  LODWORD(v60) = a7;
  LODWORD(v59) = a5;
  LODWORD(v62) = a4;
  v63 = a3;
  v66 = a1;
  v67 = a2;
  v69 = sub_22C9081CC();
  v72 = *(v69 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C901FAC();
  v70 = *(v10 - 8);
  v71 = v10;
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C9063DC();
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v58 - v20;
  v22 = sub_22C90952C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v68 = (&v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22C3A7214();
  if (sub_22C370B74(v21, 1, v22) == 1)
  {
    sub_22C36DD28(v21, &qword_27D9BB0C0, &qword_22C90D960);
    sub_22C903F7C();

    v26 = sub_22C9063CC();
    v27 = sub_22C90AACC();

    v28 = v17;
    if (os_log_type_enabled(v26, v27))
    {
      LODWORD(v63) = v27;
      v64 = v14;
      v29 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v74 = v60;
      v62 = v29;
      *v29 = 136315138;
      v30 = *(v67 + 16);
      v31 = MEMORY[0x277D84F90];
      if (v30)
      {
        v58 = v26;
        v59 = v17;
        v73 = MEMORY[0x277D84F90];
        sub_22C3B6EDC();
        v31 = v73;
        v32 = *(v72 + 16);
        v33 = v67 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
        v67 = *(v72 + 72);
        v68 = v32;
        v72 += 16;
        v34 = (v72 - 8);
        v66 = v70 + 32;
        do
        {
          v35 = v69;
          (v68)(v9, v33, v69);
          sub_22C9068FC();
          (*v34)(v9, v35);
          v73 = v31;
          v36 = *(v31 + 16);
          if (v36 >= *(v31 + 24) >> 1)
          {
            sub_22C3B6EDC();
            v31 = v73;
          }

          *(v31 + 16) = v36 + 1;
          (*(v70 + 32))(v31 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v36, v13, v71);
          v33 += v67;
          --v30;
        }

        while (v30);
        v26 = v58;
        v28 = v59;
      }

      v51 = MEMORY[0x2318B7AD0](v31, v71);
      v53 = v52;

      v54 = sub_22C36F9F4(v51, v53, &v74);

      v55 = v62;
      *(v62 + 1) = v54;
      _os_log_impl(&dword_22C366000, v26, v63, "Skipping rendering of contextual entity group with no type identifier. StatementIDs: %s", v55, 0xCu);
      v56 = v60;
      sub_22C36FF94(v60);
      MEMORY[0x2318B9880](v56, -1, -1);
      MEMORY[0x2318B9880](v55, -1, -1);

      (*(v61 + 8))(v28, v64);
      return 0xF000000000000007;
    }

    else
    {

      (*(v61 + 8))(v17, v14);
      return 0xF000000000000007;
    }
  }

  else
  {
    v37 = (*(v23 + 32))(v68, v21, v22);
    MEMORY[0x28223BE20](v37);
    v38 = v63;
    *(&v58 - 2) = v63;
    v39 = v62;
    LOBYTE((&v58)[-1]) = v62;
    v40 = v67;

    v41 = v65;
    sub_22C47B610(sub_22C54C948, &(&v58)[-4], v40);

    v43 = sub_22C546928(v42);
    v45 = v44;
    v46 = MEMORY[0x28223BE20](v43);
    *(&v58 - 6) = v38;
    LOBYTE((&v58)[-5]) = v59 & 1;
    *(&v58 - 4) = v64;
    *(&v58 - 3) = v46;
    *(&v58 - 2) = v45;
    LOBYTE((&v58)[-1]) = v39;
    v47 = v60 & 1;
    BYTE1((&v58)[-1]) = v60 & 1;
    sub_22C7936D8();
    if (v41)
    {
      (*(v23 + 8))(v68, v22);
    }

    else
    {
      v49 = v48;

      v43 = sub_22C5484B0(v49, v67, v47, v68, v62, v64);

      if ((~v43 & 0xF000000000000007) == 0)
      {
        sub_22C54C9B8();
        swift_allocError();
        *v50 = 1;
        swift_willThrow();
      }

      (*(v23 + 8))(v68, v22);
    }
  }

  return v43;
}

uint64_t sub_22C545E98(uint64_t *a1, char a2)
{
  v3 = v2;
  v6 = sub_22C90399C();
  v109 = *(v6 - 8);
  v110 = v6;
  v7 = *(v109 + 64);
  MEMORY[0x28223BE20](v6);
  v108 = &v98[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22C901FAC();
  v113 = *(v9 - 8);
  v114 = v9;
  v10 = *(v113 + 64);
  MEMORY[0x28223BE20](v9);
  v112 = &v98[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for ContextEventPromptGenerator_v5_0(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v98[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = sub_22C9081CC();
  v117 = *(v119 - 8);
  v16 = v117[8];
  v17 = MEMORY[0x28223BE20](v119);
  v19 = &v98[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v111 = &v98[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v98[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v98[-v25];
  v27 = sub_22C9063DC();
  v115 = *(v27 - 8);
  v116 = v27;
  v28 = v115[8];
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v98[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v29);
  v107 = &v98[-v33];
  MEMORY[0x28223BE20](v32);
  v35 = &v98[-v34];
  v118 = a1;
  v36 = sub_22C544484(a1);
  if (v36 & 1) != 0 && (a2)
  {
    v37 = v118;
    if (sub_22C549778())
    {
      v38 = sub_22C54993C();
      v39 = v3 + *(v12 + 28);
      v40 = v37;
      v106 = type metadata accessor for FullPlannerPreferences();
      v41 = *(v106 + 80);
      v105 = sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
      sub_22C901EDC();
      if (*v121 < v38)
      {
LABEL_18:
        v36 = 1;
        return v36 & 1;
      }

      sub_22C903F7C();
      v43 = v117 + 2;
      v42 = v117[2];
      v44 = v119;
      v42(v26, v40, v119);
      v103 = v42;
      v104 = v43;
      v42(v24, v40, v44);
      sub_22C54CA2C();
      v45 = sub_22C9063CC();
      v46 = sub_22C90AACC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v121[0] = v101;
        *v47 = 136315650;
        v48 = v112;
        v100 = v45;
        sub_22C9068FC();
        sub_22C54CC10(&qword_27D9BAA48, MEMORY[0x277D1C338]);
        v99 = v46;
        v49 = v114;
        v50 = sub_22C90B47C();
        v52 = v51;
        (*(v113 + 8))(v48, v49);
        v53 = v117[1];
        v53(v26, v119);
        v54 = sub_22C36F9F4(v50, v52, v121);

        *(v47 + 4) = v54;
        *(v47 + 12) = 2048;
        v55 = sub_22C54993C();
        v102 = v53;
        v53(v24, v119);
        *(v47 + 14) = v55;
        *(v47 + 22) = 2048;
        v56 = &v15[*(v12 + 28) + *(v106 + 80)];
        sub_22C901EDC();
        sub_22C54CA84(v15, type metadata accessor for ContextEventPromptGenerator_v5_0);
        *(v47 + 24) = v120;
        v57 = v100;
        _os_log_impl(&dword_22C366000, v100, v99, "Entity %s is under the visibility threshold: %f%% visible (threshold=%f%%)", v47, 0x20u);
        v58 = v101;
        sub_22C36FF94(v101);
        MEMORY[0x2318B9880](v58, -1, -1);
        v59 = v47;
        v44 = v119;
        MEMORY[0x2318B9880](v59, -1, -1);
      }

      else
      {

        sub_22C54CA84(v15, type metadata accessor for ContextEventPromptGenerator_v5_0);
        v74 = v117[1];
        v74(v24, v44);
        v102 = v74;
        v74(v26, v44);
      }

      v75 = v115[1];
      v76 = v35;
      v77 = v116;
      v75(v76, v116);
      v78 = v108;
      v79 = v118;
      sub_22C9081AC();
      v80 = sub_22C50D9B8();
      (*(v109 + 8))(v78, v110);
      v81 = v111;
      if (v80)
      {
        v82 = v107;
        sub_22C903F7C();
        v103(v81, v79, v44);
        v83 = sub_22C9063CC();
        v84 = sub_22C90AACC();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v115 = v85;
          v118 = swift_slowAlloc();
          v121[0] = v118;
          *v85 = 136315138;
          LODWORD(v116) = v84;
          v86 = v112;
          sub_22C9068FC();
          sub_22C54CC10(&qword_27D9BAA48, MEMORY[0x277D1C338]);
          v87 = v114;
          v88 = sub_22C90B47C();
          v89 = v44;
          v91 = v90;
          (*(v113 + 8))(v86, v87);
          v102(v81, v89);
          v92 = sub_22C36F9F4(v88, v91, v121);

          v93 = v115;
          *(v115 + 4) = v92;
          v94 = v93;
          _os_log_impl(&dword_22C366000, v83, v116, "Entity %s is under the visibility threshold but should be rendered in the prompt based on the entity type", v93, 0xCu);
          v95 = v118;
          sub_22C36FF94(v118);
          MEMORY[0x2318B9880](v95, -1, -1);
          MEMORY[0x2318B9880](v94, -1, -1);

          v96 = v107;
        }

        else
        {

          v102(v81, v44);
          v96 = v82;
        }

        v75(v96, v77);
        goto LABEL_18;
      }
    }

    else
    {
      sub_22C903F7C();
      v60 = v117;
      v61 = v119;
      (v117[2])(v19, v37, v119);
      v62 = sub_22C9063CC();
      v63 = sub_22C90AACC();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v118 = v64;
        v65 = swift_slowAlloc();
        v121[0] = v65;
        *v64 = 136315138;
        v66 = v112;
        sub_22C9068FC();
        sub_22C54CC10(&qword_27D9BAA48, MEMORY[0x277D1C338]);
        v67 = v114;
        v68 = sub_22C90B47C();
        v70 = v69;
        (*(v113 + 8))(v66, v67);
        (v60[1])(v19, v119);
        v71 = sub_22C36F9F4(v68, v70, v121);

        v72 = v118;
        *(v118 + 4) = v71;
        v73 = v72;
        _os_log_impl(&dword_22C366000, v62, v63, "Entity %s is not in view. Skipping rendering since this is the current turn.", v72, 0xCu);
        sub_22C36FF94(v65);
        MEMORY[0x2318B9880](v65, -1, -1);
        MEMORY[0x2318B9880](v73, -1, -1);
      }

      else
      {

        (v60[1])(v19, v61);
      }

      (v115[1])(v31, v116);
    }

    v36 = 0;
  }

  return v36 & 1;
}

uint64_t sub_22C546928(uint64_t a1)
{
  v2 = sub_22C90399C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v8);
  v10 = &v133 - v9;
  v11 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  v12 = sub_22C369914(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  v146 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v133 - v17;
  v19 = sub_22C9081CC();
  v20 = sub_22C369824(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  v142 = v23;
  v25 = MEMORY[0x28223BE20](v24);
  v28 = &v133 - v27;
  v29 = *(a1 + 16);
  v30 = MEMORY[0x277D84F90];
  v141 = v2;
  v144 = v25;
  v147 = v29;
  v134 = a1;
  v143 = v26;
  v133 = v5;
  if (v29)
  {
    v31 = 0;
    v32 = *(v26 + 16);
    v33 = *(v26 + 80);
    sub_22C36BA94();
    v138 = a1 + v34;
    v139 = v35;
    v137 = *(v36 + 56);
    v37 = (v5 + 8);
    v39 = *v38;
    v145 = v38[1];
    v41 = v38[2];
    v40 = v38[3];
    v140 = v36;
    v42 = (v36 - 8);
    v135 = v37;
    do
    {
      (v139)(v28, v138 + v137 * v31, v19);
      sub_22C9081AC();
      sub_22C90397C();
      (*v37)(v10, v2);
      v43 = v19;
      v44 = sub_22C9038BC();
      if (sub_22C370B74(v18, 1, v44) == 1)
      {
        sub_22C36DD28(v18, &qword_27D9BDBE0, &qword_22C9275D0);
        v45 = *v42;
        v46 = sub_22C36BA00();
        v47(v46);
        v19 = v43;
      }

      else
      {
        v48 = sub_22C90389C();
        sub_22C54CE54(v48);
        sub_22C38BAAC();
        if (v2)
        {
          v49 = (v18 + 56);
          sub_22C38BAAC();
          do
          {
            v50 = *(v49 - 3);
            v51 = *(v49 - 2);
            v52 = *(v49 - 1);
            v53 = *v49;
            v149.origin.x = sub_22C37191C();
            CGRectUnion(v149, v155);
            sub_22C376724();
            v49 += 4;
            --v2;
          }

          while (v2);
        }

        v150.origin.x = sub_22C37191C();
        MidX = CGRectGetMidX(v150);
        v55 = sub_22C90389C();
        sub_22C54CE54(v55);
        sub_22C54CE34();

        v151.origin.x = sub_22C377E68();
        MidY = CGRectGetMidY(v151);
        sub_22C36BBA8(v44);
        (*(v57 + 8))(v18, v44);
        (*v42)(v28, v144);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = v30[2];
          sub_22C36D270();
          sub_22C593544();
          v30 = v62;
        }

        v2 = v141;
        v59 = v30[2];
        v58 = v30[3];
        v37 = v135;
        if (v59 >= v58 >> 1)
        {
          sub_22C369AB0(v58);
          sub_22C593544();
          v30 = v63;
        }

        v30[2] = v59 + 1;
        v60 = &v30[2 * v59];
        v60[4] = MidX;
        v60[5] = MidY;
        v19 = v144;
      }

      ++v31;
    }

    while (v31 != v147);
  }

  if (v30[2])
  {
    sub_22C37F28C(MEMORY[0x277D84F90]);
    v64 = v148[0];
    v65 = v148[0][2];
    do
    {
      v66 = v30[4];
      sub_22C3722C8();
      if (v67)
      {
        sub_22C3B7454();
        v64 = v148[0];
      }

      sub_22C374C5C();
    }

    while (!v68);
  }

  else
  {

    v64 = MEMORY[0x277D84F90];
  }

  v148[0] = v64;

  sub_22C549D0C(v148);
  v135 = 0;

  v145 = sub_22C7F54FC(v148[0]);
  v70 = v69;
  v71 = v69[2];
  if (v71)
  {
    v72 = 0;
    v73 = MEMORY[0x277D84F98];
    while (v72 < v70[2])
    {
      v74 = *&v70[v72 + 4];
      swift_isUniquelyReferenced_nonNull_native();
      v148[0] = v73;
      v75 = sub_22C628B5C(v74);
      if (__OFADD__(v73[2], (v76 & 1) == 0))
      {
        goto LABEL_72;
      }

      v77 = v75;
      v78 = v76;
      sub_22C3A5908(&qword_27D9BDC10, &unk_22C91ADB0);
      if (sub_22C90B15C())
      {
        v79 = sub_22C628B5C(v74);
        if ((v78 & 1) != (v80 & 1))
        {
          goto LABEL_77;
        }

        v77 = v79;
      }

      v73 = v148[0];
      if (v78)
      {
        *(v148[0][7] + 8 * v77) = v72;
      }

      else
      {
        v148[0][(v77 >> 6) + 8] |= 1 << v77;
        *(v73[6] + 8 * v77) = v74;
        *(v73[7] + 8 * v77) = v72;
        v81 = v73[2];
        v82 = __OFADD__(v81, 1);
        v83 = v81 + 1;
        if (v82)
        {
          goto LABEL_75;
        }

        v73[2] = v83;
      }

      if (v71 == ++v72)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
  }

  else
  {
    v73 = MEMORY[0x277D84F98];
LABEL_36:

    v84 = MEMORY[0x277D84F90];
    if (v147)
    {
      v85 = v2;
      v86 = 0;
      v140 = *(v143 + 16);
      v87 = *(v143 + 80);
      sub_22C36BA94();
      v139 = (v134 + v88);
      v138 = *(v89 + 56);
      v137 = (v133 + 8);
      v90 = *MEMORY[0x277CBF398];
      v145 = *(MEMORY[0x277CBF398] + 8);
      v92 = *(MEMORY[0x277CBF398] + 16);
      v91 = *(MEMORY[0x277CBF398] + 24);
      v143 = v89;
      v93 = (v89 - 8);
      v94 = v144;
      v95 = v142;
      do
      {
        v140(v95, &v139[v138 * v86], v94);
        v96 = v136;
        sub_22C9081AC();
        v97 = v146;
        sub_22C90397C();
        v98 = v97;
        (*v137)(v96, v85);
        v99 = sub_22C9038BC();
        if (sub_22C370B74(v98, 1, v99) == 1)
        {
          sub_22C36DD28(v98, &qword_27D9BDBE0, &qword_22C9275D0);
          (*v93)(v95, v94);
        }

        else
        {
          v100 = sub_22C90389C();
          sub_22C54CE54(v100);
          sub_22C38BAAC();
          if (v95)
          {
            v101 = (v98 + 56);
            sub_22C38BAAC();
            do
            {
              v102 = *(v101 - 3);
              v103 = *(v101 - 2);
              v104 = *(v101 - 1);
              v105 = *v101;
              v152.origin.x = sub_22C37191C();
              CGRectUnion(v152, v156);
              sub_22C376724();
              v101 += 4;
              --v95;
            }

            while (v95);
          }

          v153.origin.x = sub_22C37191C();
          v106 = CGRectGetMidX(v153);
          v107 = sub_22C90389C();
          sub_22C54CE54(v107);
          sub_22C54CE34();

          v154.origin.x = sub_22C377E68();
          v108 = CGRectGetMidY(v154);
          sub_22C36BBA8(v99);
          (*(v109 + 8))(v146, v99);
          v94 = v144;
          (*v93)(v142, v144);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = v84[2];
            sub_22C36D270();
            sub_22C593544();
            v84 = v114;
          }

          v85 = v141;
          v111 = v84[2];
          v110 = v84[3];
          if (v111 >= v110 >> 1)
          {
            sub_22C369AB0(v110);
            sub_22C593544();
            v84 = v115;
          }

          v84[2] = v111 + 1;
          v112 = &v84[2 * v111];
          v112[4] = v106;
          v112[5] = v108;
          v95 = v142;
        }

        ++v86;
      }

      while (v86 != v147);
    }

    if (v84[2])
    {
      sub_22C37F28C(MEMORY[0x277D84F90]);
      v116 = v148[0];
      v117 = v148[0][2];
      do
      {
        v118 = v84[5];
        sub_22C3722C8();
        if (v67)
        {
          sub_22C3B7454();
          v116 = v148[0];
        }

        sub_22C374C5C();
      }

      while (!v68);
    }

    else
    {

      v116 = MEMORY[0x277D84F90];
    }

    v148[0] = v116;

    v70 = v135;
    sub_22C549D0C(v148);
    if (v70)
    {
      goto LABEL_78;
    }

    v147 = sub_22C7F54FC(v148[0]);
    v70 = v119;
    v120 = v119[2];
    if (!v120)
    {
LABEL_70:

      return v73;
    }

    v121 = 0;
    v122 = MEMORY[0x277D84F98];
    while (v121 < v70[2])
    {
      v123 = *&v70[v121 + 4];
      swift_isUniquelyReferenced_nonNull_native();
      v148[0] = v122;
      v124 = sub_22C628B5C(v123);
      if (__OFADD__(v122[2], (v125 & 1) == 0))
      {
        goto LABEL_74;
      }

      v126 = v124;
      v127 = v125;
      sub_22C3A5908(&qword_27D9BDC10, &unk_22C91ADB0);
      if (sub_22C90B15C())
      {
        v128 = sub_22C628B5C(v123);
        if ((v127 & 1) != (v129 & 1))
        {
          goto LABEL_77;
        }

        v126 = v128;
      }

      v122 = v148[0];
      if (v127)
      {
        *(v148[0][7] + 8 * v126) = v121;
      }

      else
      {
        v148[0][(v126 >> 6) + 8] |= 1 << v126;
        *(v122[6] + 8 * v126) = v123;
        *(v122[7] + 8 * v126) = v121;
        v130 = v122[2];
        v82 = __OFADD__(v130, 1);
        v131 = v130 + 1;
        if (v82)
        {
          goto LABEL_76;
        }

        v122[2] = v131;
      }

      if (v120 == ++v121)
      {
        goto LABEL_70;
      }
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  sub_22C90B54C();
  __break(1u);
LABEL_78:

  __break(1u);
  return result;
}

uint64_t sub_22C547424@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, _DWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t *a9@<X8>)
{
  v116 = a8;
  v114 = a7;
  v117 = a6;
  v115 = a5;
  v132 = a4;
  v131 = a3;
  v130 = a2;
  v121 = a9;
  v10 = sub_22C9081CC();
  v134 = *(v10 - 8);
  v135 = v10;
  v11 = *(v134 + 64);
  MEMORY[0x28223BE20](v10);
  v133 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9063DC();
  v137 = *(v13 - 8);
  v138 = v13;
  v14 = *(v137 + 64);
  MEMORY[0x28223BE20](v13);
  v136 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C901FAC();
  v125 = *(v16 - 8);
  v126 = v16;
  v17 = *(v125 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v124 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v123 = &v106 - v20;
  v21 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v120 = &v106 - v23;
  v129 = sub_22C902D0C();
  v24 = *(v129 - 8);
  v25 = v24[8];
  MEMORY[0x28223BE20](v129);
  v128 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for DirectionalTypedValue();
  v27 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v106 - v32;
  v34 = sub_22C90399C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v118 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v106 - v39;
  v41 = sub_22C9093BC();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v146 = (&v106 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = a1;
  sub_22C9081AC();
  sub_22C90391C();
  v45 = v41;
  v46 = *(v35 + 8);
  v119 = v35 + 8;
  v46(v40, v34);
  if (sub_22C370B74(v33, 1, v45) == 1)
  {
    sub_22C36DD28(v33, &qword_27D9BB908, &qword_22C910960);
LABEL_7:
    v66 = v139;
    v67 = v136;
    sub_22C903F7C();
    v69 = v133;
    v68 = v134;
    v70 = v135;
    (*(v134 + 16))(v133, v66, v135);
    v71 = sub_22C9063CC();
    v72 = sub_22C90AADC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v132 = v73;
      v146 = swift_slowAlloc();
      v140 = v146;
      *v73 = 136315138;
      v74 = v124;
      LODWORD(v139) = v72;
      sub_22C9068FC();
      sub_22C54CC10(&qword_27D9BAA48, MEMORY[0x277D1C338]);
      v75 = v126;
      v76 = sub_22C90B47C();
      v77 = v69;
      v79 = v78;
      (*(v125 + 8))(v74, v75);
      (*(v68 + 8))(v77, v70);
      v80 = sub_22C36F9F4(v76, v79, &v140);

      v81 = v132;
      *(v132 + 1) = v80;
      v82 = v81;
      _os_log_impl(&dword_22C366000, v71, v139, "Unable to build ContextualEntityRenderingData for entity with statementID: %s", v81, 0xCu);
      v83 = v146;
      sub_22C36FF94(v146);
      MEMORY[0x2318B9880](v83, -1, -1);
      MEMORY[0x2318B9880](v82, -1, -1);
    }

    else
    {

      (*(v68 + 8))(v69, v70);
    }

    (*(v137 + 8))(v67, v138);
    sub_22C54C9B8();
    swift_allocError();
    *v84 = 0;
    return swift_willThrow();
  }

  v108 = v46;
  v109 = v34;
  v47 = v146;
  (*(v42 + 32))(v146, v33, v45);
  v48 = v45;
  v49 = v130[20];
  v50 = v130[21];
  ObjectType = swift_getObjectType();
  v51 = *(v42 + 16);
  v122 = v48;
  v112 = v51;
  v51(v29, v47, v48);
  swift_storeEnumTagMultiPayload();
  v52 = v24[13];
  v53 = v128;
  v111 = *MEMORY[0x277D1D7F8];
  v54 = v129;
  v110 = v52;
  v52(v128);
  (*(v50 + 8))(&v140, v29, v131 & 1, v132, v53, ObjectType, v50);
  v55 = v24[1];
  v55(v53, v54);
  sub_22C54CA84(v29, type metadata accessor for DirectionalTypedValue);
  if (v145 == 1)
  {
    (*(v42 + 8))(v146, v122);
    goto LABEL_7;
  }

  ObjectType = v42;
  v107 = v55;
  v56 = v143;
  v57 = v144;
  v59 = v141;
  v58 = v142;
  v60 = v140;

  sub_22C456CE4(v60, v59, v58, v56, v57, 0);
  v61 = v130[22];
  v62 = v130[23];
  v63 = swift_getObjectType();
  v112(v29, v146, v122);
  swift_storeEnumTagMultiPayload();
  v64 = v128;
  v65 = v129;
  v110(v128, v111, v129);
  (*(v62 + 8))(&v140, v29, v131 & 1, v132, v64, v63, v62);
  v107(v64, v65);
  sub_22C54CA84(v29, type metadata accessor for DirectionalTypedValue);
  if (v145)
  {
    (*(ObjectType + 8))(v146, v122);

    goto LABEL_7;
  }

  v138 = v60;
  v86 = v143;
  v87 = v144;
  v89 = v141;
  v88 = v142;
  v90 = v140;

  v137 = v90;
  sub_22C456CE4(v90, v89, v88, v86, v87, 0);
  v91 = v118;
  sub_22C9081AC();
  v92 = v120;
  sub_22C90397C();
  v108(v91, v109);
  v93 = sub_22C9038BC();
  if (sub_22C370B74(v92, 1, v93) == 1)
  {
    sub_22C36DD28(v92, &qword_27D9BDBE0, &qword_22C9275D0);
    v94 = swift_allocObject();
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    *(v94 + 16) = 0;
    *(v94 + 24) = 0xE000000000000000;
    v99 = 0xF000000000000007;
  }

  else
  {
    sub_22C548070(v115, v117, v114 == 0, v116 & 1, &v140);
    v100 = v92;
    v94 = v140;
    v95 = v141;
    v96 = v142;
    v97 = v143;
    v98 = v144;
    (*(*(v93 - 8) + 8))(v100, v93);

    v99 = v94;
  }

  sub_22C9068FC();
  (*(ObjectType + 8))(v146, v122);
  if ((~v99 & 0xF000000000000007) != 0)
  {
    sub_22C4546F8(v99);
  }

  else
  {
    v97 = 0;
    v95 = 0;
    v98 = 1;
    v96 = 1;
  }

  v101 = v121;
  v102 = v138;
  *v121 = v137;
  *(v101 + 8) = v102;
  *(v101 + 16) = v94;
  v103 = type metadata accessor for ContextualEntityRenderingData(0);
  (*(v125 + 32))(v101 + v103[7], v123, v126);
  v104 = v101 + v103[8];
  *v104 = v95;
  *(v104 + 8) = v96;
  v105 = v101 + v103[9];
  *v105 = v97;
  *(v105 + 8) = v98;
  return sub_22C36C640(v101, 0, 1, v103);
}

uint64_t sub_22C548070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a3 & 1) == 0 || (sub_22C90386C(), (v23) || (v24.origin.x = sub_22C549C64(), !CGRectIntersectsRect(v24, v22)))
  {
    v10 = 0;
    v15 = 0;
    v12 = 1;
    goto LABEL_10;
  }

  v25.origin.x = sub_22C549C64();
  CGRectGetMidX(v25);
  v26.origin.x = sub_22C549C64();
  MidY = CGRectGetMidY(v26);
  v10 = sub_22C605904(a2, MidY);
  v12 = v11;
  v27.origin.x = sub_22C549C64();
  MidX = CGRectGetMidX(v27);
  v28.origin.x = sub_22C549C64();
  CGRectGetMidY(v28);
  v15 = sub_22C605904(a1, MidX);
  v16 = v14;
  if (*(a1 + 16) >= 2uLL && *(a2 + 16) >= 2uLL)
  {
    if ((v14 & 1) == 0)
    {
      if (v12)
      {
        v16 = 0;
        v12 = 1;
      }

      else
      {
        v20 = sub_22C90B47C();
        MEMORY[0x2318B7850](v20);

        MEMORY[0x2318B7850](44, 0xE100000000000000);
        v21 = sub_22C90B47C();
        MEMORY[0x2318B7850](v21);

        MEMORY[0x2318B7850](32, 0xE100000000000000);

        v12 = 0;
        v16 = 0;
      }

      goto LABEL_11;
    }

LABEL_10:
    v16 = 1;
  }

LABEL_11:
  if (sub_22C549AE4(a4 & 1))
  {
    MEMORY[0x2318B7850](0x657463656C657320, 0xE900000000000064);
  }

  v17 = swift_allocObject();
  result = sub_22C90A49C();
  *(v17 + 16) = result;
  *(v17 + 24) = v19;
  *a5 = v17;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16 & 1;
  *(a5 + 24) = v10;
  *(a5 + 32) = v12 & 1;
  return result;
}

uint64_t sub_22C5484B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v186 = a6;
  v154 = a5;
  v163 = a3;
  v173 = sub_22C90399C();
  v153 = *(v173 - 8);
  v9 = *(v153 + 64);
  MEMORY[0x28223BE20](v173);
  v172 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v176 = &v150 - v13;
  v183 = sub_22C9081CC();
  v179 = *(v183 - 8);
  v14 = *(v179 + 64);
  MEMORY[0x28223BE20](v183);
  v182 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0);
  v170 = *(v171 - 8);
  v16 = *(v170 + 64);
  MEMORY[0x28223BE20](v171);
  v175 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for ContextualEntityRenderingData(0);
  v158 = *(v185 - 8);
  v18 = *(v158 + 64);
  MEMORY[0x28223BE20](v185);
  v184 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C901FAC();
  v180 = *(v20 - 8);
  v21 = *(v180 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v169 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v181 = &v150 - v25;
  MEMORY[0x28223BE20](v24);
  v152 = &v150 - v26;
  v177 = type metadata accessor for PromptTreeIdentifier(0);
  v27 = *(*(v177 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v177);
  v174 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v162 = &v150 - v30;
  v166 = sub_22C90963C();
  v165 = *(v166 - 8);
  v31 = *(v165 + 64);
  MEMORY[0x28223BE20](v166);
  v164 = &v150 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for ContextEventPromptGenerator_v5_0(0);
  v33 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v35 = &v150 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22C90952C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22C9063DC();
  v159 = *(v41 - 8);
  v42 = *(v159 + 64);
  v43 = MEMORY[0x28223BE20](v41);
  v157 = &v150 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = &v150 - v45;
  sub_22C903F7C();
  v47 = *(v37 + 16);
  v168 = a4;
  v47(v40, a4, v36);
  v160 = v35;
  sub_22C54CA2C();
  v48 = a1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v161 = v46;
  v49 = sub_22C9063CC();
  v50 = sub_22C90AACC();
  v51 = os_log_type_enabled(v49, v50);
  v178 = v20;
  v155 = v41;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *&v188 = v151;
    *v52 = 136315906;
    v150 = v49;
    v53 = sub_22C9094FC();
    v54 = a2;
    v56 = v55;
    (*(v37 + 8))(v40, v36);
    v57 = sub_22C36F9F4(v53, v56, &v188);
    a2 = v54;

    *(v52 + 4) = v57;
    *(v52 + 12) = 2048;
    v58 = *(v54 + 16);

    *(v52 + 14) = v58;

    *(v52 + 22) = 2048;
    a1 = v48;
    v59 = *(v48 + 16);

    *(v52 + 24) = v59;

    *(v52 + 32) = 2048;
    v60 = *(v156 + 28);
    v61 = v60 + *(type metadata accessor for FullPlannerPreferences() + 72);
    sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
    v62 = v50;
    v63 = v160;
    sub_22C901EDC();
    if (v59 >= v187)
    {
      v64 = v187;
    }

    else
    {
      v64 = v59;
    }

    sub_22C54CA84(v63, type metadata accessor for ContextEventPromptGenerator_v5_0);

    *(v52 + 34) = v64;

    v65 = v150;
    _os_log_impl(&dword_22C366000, v150, v62, "Generating context group item for TypeIdentifier %s with %ld entities (%ld renderable). After list truncation, there will be %ld entities rendered (assuming no pruning).", v52, 0x2Au);
    v66 = v151;
    sub_22C36FF94(v151);
    MEMORY[0x2318B9880](v66, -1, -1);
    MEMORY[0x2318B9880](v52, -1, -1);
  }

  else
  {
    sub_22C54CA84(v160, type metadata accessor for ContextEventPromptGenerator_v5_0);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    (*(v37 + 8))(v40, v36);
  }

  v67 = *(v159 + 8);
  v67(v161, v41);
  v68 = a2;
  *&v188 = a1;

  sub_22C549D78(&v188);
  v69 = v188;
  v70 = *(v167 + 256);
  v71 = *(v167 + 264);
  sub_22C374168((v167 + 232), v70);
  v72 = v165;
  v73 = v164;
  v74 = v166;
  (*(v165 + 104))(v164, *MEMORY[0x277D72E08], v166);
  (*(v71 + 24))(&v188, v168, v73, v186, v70, v71);
  (*(v72 + 8))(v73, v74);
  if (v192)
  {

    v75 = v157;
    sub_22C903F7C();
    v76 = sub_22C9063CC();
    v77 = sub_22C90AADC();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_22C366000, v76, v77, "Unable to render the TypeIdentifier for a collection of contextual entities. Skipping.", v78, 2u);
      MEMORY[0x2318B9880](v78, -1, -1);
    }

    v67(v75, v155);
    return 0xF000000000000007;
  }

  else
  {
    v166 = v68;
    v81 = v190;
    v80 = v191;
    v83 = *(&v188 + 1);
    v82 = v189;
    v84 = v188;

    v160 = v84;
    sub_22C456CE4(v84, v83, v82, v81, v80, 0);
    v85 = *(v69 + 2);
    v86 = MEMORY[0x277D84F90];
    v87 = v162;
    v161 = v69;
    v186 = v85;
    if (v85)
    {
      *&v188 = MEMORY[0x277D84F90];
      sub_22C3B6EDC();
      v88 = v188;
      v89 = &v69[(*(v158 + 80) + 32) & ~*(v158 + 80)];
      v168 = *(v158 + 72);
      v90 = (v180 + 16);
      v91 = v85;
      v92 = v178;
      v93 = v152;
      do
      {
        v94 = v184;
        sub_22C54CA2C();
        (*v90)(v93, v94 + *(v185 + 28), v92);
        sub_22C54CA84(v94, type metadata accessor for ContextualEntityRenderingData);
        *&v188 = v88;
        v95 = *(v88 + 16);
        if (v95 >= *(v88 + 24) >> 1)
        {
          sub_22C3B6EDC();
          v88 = v188;
        }

        *(v88 + 16) = v95 + 1;
        (*(v180 + 32))(v88 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v95, v93, v92);
        v89 += v168;
        --v91;
      }

      while (v91);
      v87 = v162;
      v85 = v186;
      v86 = MEMORY[0x277D84F90];
    }

    else
    {
      v92 = v178;
    }

    sub_22C3ADC38();
    v97 = v96;
    sub_22C378A4C(v167 + 272, &v188);
    v98 = v166;
    v99 = *(v166 + 16);
    v100 = v176;
    if (v99)
    {
      v168 = v97;
      v187 = v86;
      sub_22C3B71E0(0, v99, 0);
      v101 = v187;
      v167 = *(v179 + 16);
      v102 = v98 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
      v166 = *(v179 + 72);
      v165 = v153 + 8;
      v164 = (v180 + 8);
      v179 += 16;
      v103 = (v179 - 8);
      v104 = (v180 + 32);
      do
      {
        (v167)(v182, v102, v183);
        sub_22C9068FC();
        v105 = v172;
        sub_22C9081AC();
        sub_22C90397C();
        (*v165)(v105, v173);
        v106 = sub_22C9038BC();
        if (sub_22C370B74(v100, 1, v106) == 1)
        {
          sub_22C36DD28(v100, &qword_27D9BDBE0, &qword_22C9275D0);
          v107 = 0;
        }

        else
        {
          v108 = sub_22C549AE4(v163 & 1);
          v109 = v100;
          v107 = v108;
          (*(*(v106 - 8) + 8))(v109, v106);
        }

        v110 = v169;
        v111 = v182;
        sub_22C9068FC();
        sub_22C5E9614();
        v113 = v112;
        (*v164)(v110, v92);
        (*v103)(v111, v183);
        v114 = v175;
        (*v104)(v175, v181, v92);
        v115 = v171;
        v114[*(v171 + 20)] = v107 & 1;
        v114[*(v115 + 24)] = v113 & 1;
        v187 = v101;
        v117 = *(v101 + 16);
        v116 = *(v101 + 24);
        if (v117 >= v116 >> 1)
        {
          sub_22C3B71E0(v116 > 1, v117 + 1, 1);
          v101 = v187;
        }

        *(v101 + 16) = v117 + 1;
        v118 = v101 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
        v119 = *(v170 + 72);
        sub_22C54CADC();
        v102 += v166;
        --v99;
        v100 = v176;
      }

      while (v99);

      v87 = v162;
      v85 = v186;
      v86 = MEMORY[0x277D84F90];
    }

    else
    {

      v101 = MEMORY[0x277D84F90];
    }

    sub_22C36C730(&v188, v87);
    *(v87 + 40) = v160;
    *(v87 + 48) = v101;
    swift_storeEnumTagMultiPayload();
    v120 = v158;
    if (v85)
    {
      *&v188 = v86;

      sub_22C3B63D4();
      LODWORD(v182) = v154 == 0;
      v121 = v188;
      v122 = &v161[(*(v120 + 80) + 32) & ~*(v120 + 80)];
      v123 = (v180 + 16);
      v180 = *(v120 + 72);
      v181 = v123;
      do
      {
        v183 = v121;
        v186 = v85;
        v124 = v184;
        sub_22C54CA2C();
        v125 = *(v124 + 2);
        v126 = *(v185 + 28);
        v127 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
        v128 = v174;
        (*v181)(&v174[*(v127 + 20)], &v124[v126], v92);
        v129 = *(v124 + 1);
        *v128 = v125;
        *(v128 + *(v127 + 24)) = v129;
        swift_storeEnumTagMultiPayload();
        v130 = *v124;
        v131 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
        v132 = swift_allocBox();
        v134 = v133;
        v135 = *(v131 + 48);
        sub_22C54CADC();
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        v136 = swift_allocObject();
        *(v136 + 16) = v130;
        *(v134 + v135) = v136;
        v137 = swift_allocObject();
        *(v137 + 16) = v182;
        v138 = swift_allocObject();
        *(v138 + 16) = v132 | 0x4000000000000000;
        *(v137 + 24) = v138;
        v121 = v183;

        sub_22C54CA84(v124, type metadata accessor for ContextualEntityRenderingData);
        *&v188 = v121;
        v139 = *(v121 + 16);
        if (v139 >= *(v121 + 24) >> 1)
        {
          sub_22C3B63D4();
          v121 = v188;
        }

        *(v121 + 16) = v139 + 1;
        *(v121 + 8 * v139 + 32) = v137 | 0x8000000000000000;
        v122 += v180;
        v85 = v186 - 1;
        v92 = v178;
      }

      while (v186 != 1);
    }

    else
    {

      v121 = MEMORY[0x277D84F90];
    }

    v140 = sub_22C3DB9B0(v121);

    v141 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v142 = swift_allocObject();
    *(v142 + 16) = v140;
    *(v141 + 16) = v142;
    v143 = v141 | 0x6000000000000000;
    v144 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    v145 = swift_allocBox();
    v147 = v146;
    v148 = *(v144 + 48);
    sub_22C54CADC();
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    v149 = swift_allocObject();
    *(v149 + 16) = v143;
    *(v147 + v148) = v149;
    return v145 | 0x4000000000000000;
  }
}

uint64_t sub_22C549778()
{
  v1 = sub_22C90399C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  v11 = sub_22C369914(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C385658();
  sub_22C90397C();
  (*(v4 + 8))(v9, v1);
  v14 = sub_22C9038BC();
  if (sub_22C370B74(v0, 1, v14) == 1)
  {
    sub_22C36DD28(v0, &qword_27D9BDBE0, &qword_22C9275D0);
    return 1;
  }

  else
  {
    sub_22C90386C();
    if (v19)
    {
      v15 = 0;
    }

    else
    {
      v20.origin.x = sub_22C549C64();
      v15 = CGRectIntersectsRect(v20, v18);
    }

    sub_22C36BBA8(v14);
    (*(v16 + 8))(v0, v14);
  }

  return v15;
}

double sub_22C54993C()
{
  v1 = sub_22C90399C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  v11 = sub_22C369914(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C385658();
  sub_22C90397C();
  (*(v4 + 8))(v9, v1);
  v14 = sub_22C9038BC();
  if (sub_22C370B74(v0, 1, v14) == 1)
  {
    sub_22C36DD28(v0, &qword_27D9BDBE0, &qword_22C9275D0);
    return 0.0;
  }

  else
  {
    v16 = COERCE_DOUBLE(sub_22C90388C());
    v18 = v17;
    sub_22C36BBA8(v14);
    (*(v19 + 8))(v0, v14);
    result = 0.0;
    if ((v18 & 1) == 0)
    {
      return v16 * 100.0;
    }
  }

  return result;
}

uint64_t sub_22C549AE4(char a1)
{
  v2 = sub_22C9063DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    return sub_22C90385C();
  }

  else
  {
    sub_22C903F7C();
    v8 = sub_22C9063CC();
    v9 = sub_22C90AACC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      MEMORY[0x2318B9880](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return sub_22C9038AC() & 1;
  }
}

double sub_22C549C64()
{
  v0 = sub_22C90389C();
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = v0 + 56;
    do
    {
      v8.origin.x = x;
      v8.origin.y = y;
      v8.size.width = width;
      v8.size.height = height;
      v9 = CGRectUnion(v8, *(v6 - 24));
      x = v9.origin.x;
      y = v9.origin.y;
      width = v9.size.width;
      height = v9.size.height;
      v6 += 32;
      --v5;
    }

    while (v5);
  }

  return x;
}

uint64_t sub_22C549D0C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C438(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C549E20(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22C549D78(uint64_t *a1)
{
  v2 = *(type metadata accessor for ContextualEntityRenderingData(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C450(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C549F14(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C549E20(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C54A36C(v7, v8, a1, v4);
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
    return sub_22C54A044(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C549F14(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        type metadata accessor for ContextualEntityRenderingData(0);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ContextualEntityRenderingData(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C54A81C(v8, v9, a1, v4);
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
    return sub_22C54A0A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C54A044(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22C54A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ContextualEntityRenderingData(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v38 - v17;
  v40 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v45 = v19;
    v39 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v43 = v21;
      v44 = a3;
      v41 = v24;
      v42 = v23;
      while (1)
      {
        sub_22C54CA2C();
        sub_22C54CA2C();
        v25 = *(v8 + 32);
        v26 = &v18[v25];
        if (v18[v25 + 8])
        {
          break;
        }

        v27 = *(v8 + 36);
        v28 = &v18[v27];
        if (v18[v27 + 8])
        {
          break;
        }

        v29 = &v14[v25];
        if (v29[8])
        {
          break;
        }

        v30 = &v14[v27];
        if (v30[8])
        {
          break;
        }

        v31 = *v28;
        v32 = *v30;
        v33 = *v26 < *v29;
        v34 = v31 == v32;
        v35 = v31 < v32;
        if (v34)
        {
          v36 = v33;
        }

        else
        {
          v36 = v35;
        }

        sub_22C54CA84(v14, type metadata accessor for ContextualEntityRenderingData);
        result = sub_22C54CA84(v18, type metadata accessor for ContextualEntityRenderingData);
        if (v36)
        {
          if (!v45)
          {
            __break(1u);
            return result;
          }

          sub_22C54CADC();
          swift_arrayInitWithTakeFrontToBack();
          result = sub_22C54CADC();
          v21 += v22;
          v24 += v22;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      sub_22C54CA84(v14, type metadata accessor for ContextualEntityRenderingData);
      result = sub_22C54CA84(v18, type metadata accessor for ContextualEntityRenderingData);
LABEL_17:
      a3 = v44 + 1;
      v21 = v43 + v39;
      v23 = v42 - 1;
      v24 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C54A36C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v75 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = v7[2];
        sub_22C590218();
        v7 = v73;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_22C590218();
        v7 = v74;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v78 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
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
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
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
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_22C54B440((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_22C54B314(&v80, *a1, a3);
LABEL_89:
}

void sub_22C54A81C(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v152 = a1;
  v8 = type metadata accessor for ContextualEntityRenderingData(0);
  v159 = *(v8 - 8);
  v9 = *(v159 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v156 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v165 = &v147 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v147 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v168 = &v147 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v163 = &v147 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v149 = &v147 - v23;
  MEMORY[0x28223BE20](v22);
  v148 = &v147 - v25;
  v161 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_123:
    v168 = *v152;
    if (!v168)
    {
      goto LABEL_164;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_125:
      v140 = v28 + 16;
      v141 = *(v28 + 2);
      while (v141 >= 2)
      {
        if (!*v161)
        {
          goto LABEL_161;
        }

        v142 = v28;
        v143 = &v28[16 * v141];
        v144 = *v143;
        v28 = &v140[2 * v141];
        v145 = *(v28 + 1);
        sub_22C54B5B4(*v161 + *(v159 + 72) * *v143, *v161 + *(v159 + 72) * *v28, *v161 + *(v159 + 72) * v145, v168);
        if (v5)
        {
          break;
        }

        if (v145 < v144)
        {
          goto LABEL_149;
        }

        if (v141 - 2 >= *v140)
        {
          goto LABEL_150;
        }

        *v143 = v144;
        *(v143 + 1) = v145;
        v146 = *v140 - v141;
        if (*v140 < v141)
        {
          goto LABEL_151;
        }

        v141 = *v140 - 1;
        sub_22C56BFF0(v28 + 16, v146, v28);
        *v140 = v141;
        v28 = v142;
      }

LABEL_133:

      return;
    }

LABEL_158:
    v28 = sub_22C56BFD8(v28);
    goto LABEL_125;
  }

  v162 = v24;
  v147 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v166 = v16;
  v167 = v8;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v160 = v26;
      v151 = v5;
      v31 = *v161;
      v5 = *(v159 + 72);
      v32 = v27 + 1;
      v33 = v148;
      sub_22C54CA2C();
      v153 = v29;
      v34 = v149;
      sub_22C54CA2C();
      v35 = *(v8 + 32);
      v36 = (v33 + v35);
      if (*(v33 + v35 + 8) & 1) != 0 || (v37 = *(v8 + 36), (*(v33 + v37 + 8)) || (v38 = v34 + v35, (*(v38 + 8)))
      {
        LODWORD(v164) = 0;
      }

      else
      {
        v132 = *(v33 + v37);
        v133 = (v34 + v37);
        v134 = *v133;
        v135 = *(v133 + 8);
        v136 = *v36 < *v38;
        if (v132 != v134)
        {
          v136 = v132 < v134;
        }

        if (v135)
        {
          v136 = 0;
        }

        LODWORD(v164) = v136;
      }

      v150 = v28;
      sub_22C54CA84(v34, type metadata accessor for ContextualEntityRenderingData);
      sub_22C54CA84(v33, type metadata accessor for ContextualEntityRenderingData);
      v39 = v153 + 2;
      v40 = v5 * (v153 + 2);
      v41 = v31 + v40;
      v42 = v32;
      v43 = v5 * v32;
      v44 = v31 + v5 * v32;
      do
      {
        v45 = v39;
        v46 = v42;
        v47 = v43;
        v48 = v40;
        if (v39 >= v160)
        {
          break;
        }

        v49 = v162;
        sub_22C54CA2C();
        sub_22C54CA2C();
        v50 = *(v167 + 32);
        v51 = (v49 + v50);
        if (*(v49 + v50 + 8) & 1) != 0 || (v52 = *(v167 + 36), v53 = (v49 + v52), (*(v49 + v52 + 8)))
        {
          v54 = 0;
          v55 = v163;
        }

        else
        {
          v55 = v163;
          v56 = &v163[v50];
          if (v56[8] & 1) != 0 || (v57 = &v163[v52], (v57[8]))
          {
            v54 = 0;
          }

          else
          {
            v58 = *v53;
            v59 = *v57;
            v60 = *v51 < *v56;
            v54 = v58 == v59 ? v60 : v58 < v59;
          }
        }

        v28 = type metadata accessor for ContextualEntityRenderingData;
        sub_22C54CA84(v55, type metadata accessor for ContextualEntityRenderingData);
        sub_22C54CA84(v162, type metadata accessor for ContextualEntityRenderingData);
        v39 = v45 + 1;
        v41 += v5;
        v44 += v5;
        v42 = v46 + 1;
        v43 = v47 + v5;
        v40 = v48 + v5;
      }

      while (v164 == v54);
      if (v164)
      {
        v29 = v153;
        if (v45 < v153)
        {
          goto LABEL_155;
        }

        if (v153 >= v45)
        {
          v30 = v45;
          v28 = v150;
          v5 = v151;
          v16 = v166;
          v8 = v167;
          goto LABEL_39;
        }

        v61 = v153 * v5;
        do
        {
          if (v29 != v46)
          {
            v62 = *v161;
            if (!*v161)
            {
              goto LABEL_162;
            }

            sub_22C54CADC();
            v63 = v61 < v47 || v62 + v61 >= v62 + v48;
            if (v63)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22C54CADC();
          }

          ++v29;
          v47 -= v5;
          v48 -= v5;
          v61 += v5;
          v64 = v29 < v46--;
        }

        while (v64);
      }

      v30 = v45;
      v28 = v150;
      v5 = v151;
      v16 = v166;
      v8 = v167;
      v29 = v153;
    }

LABEL_39:
    v65 = v161[1];
    v160 = v30;
    if (v30 < v65)
    {
      v107 = __OFSUB__(v30, v29);
      v66 = v30 - v29;
      if (v107)
      {
        goto LABEL_154;
      }

      if (v66 < v147)
      {
        break;
      }
    }

LABEL_66:
    if (v160 < v29)
    {
      goto LABEL_153;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v137 = *(v28 + 2);
      sub_22C590218();
      v28 = v138;
    }

    v89 = *(v28 + 2);
    v90 = v89 + 1;
    if (v89 >= *(v28 + 3) >> 1)
    {
      sub_22C590218();
      v28 = v139;
    }

    *(v28 + 2) = v90;
    v91 = v28 + 32;
    v92 = &v28[16 * v89 + 32];
    v93 = v160;
    *v92 = v29;
    *(v92 + 1) = v93;
    v164 = *v152;
    if (!v164)
    {
      goto LABEL_163;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v28[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v28 + 4);
          v98 = *(v28 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_86:
          if (v100)
          {
            goto LABEL_140;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_143;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_146;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_148;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        if (v90 < 2)
        {
          goto LABEL_142;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_101:
        if (v115)
        {
          goto LABEL_145;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_147;
        }

        if (v122 < v114)
        {
          goto LABEL_115;
        }

LABEL_108:
        if (v94 - 1 >= v90)
        {
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
          goto LABEL_157;
        }

        if (!*v161)
        {
          goto LABEL_160;
        }

        v126 = v28;
        v127 = &v91[16 * v94 - 16];
        v128 = *v127;
        v129 = v94;
        v28 = &v91[16 * v94];
        v130 = *(v28 + 1);
        sub_22C54B5B4(*v161 + *(v159 + 72) * *v127, *v161 + *(v159 + 72) * *v28, *v161 + *(v159 + 72) * v130, v164);
        if (v5)
        {
          goto LABEL_133;
        }

        if (v130 < v128)
        {
          goto LABEL_135;
        }

        v5 = *(v126 + 2);
        if (v129 > v5)
        {
          goto LABEL_136;
        }

        *v127 = v128;
        *(v127 + 1) = v130;
        if (v129 >= v5)
        {
          goto LABEL_137;
        }

        v131 = v129;
        v90 = v5 - 1;
        sub_22C56BFF0(v28 + 16, v5 - 1 - v131, v28);
        v28 = v126;
        *(v126 + 2) = v5 - 1;
        v64 = v5 > 2;
        v5 = 0;
        v16 = v166;
        v8 = v167;
        if (!v64)
        {
          goto LABEL_115;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_138;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_139;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_141;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_144;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_152;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_86;
    }

LABEL_115:
    v27 = v160;
    v26 = v161[1];
    if (v160 >= v26)
    {
      goto LABEL_123;
    }
  }

  if (__OFADD__(v29, v147))
  {
    goto LABEL_156;
  }

  if (v29 + v147 >= v65)
  {
    v67 = v65;
  }

  else
  {
    v67 = v29 + v147;
  }

  if (v67 < v29)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v68 = v160;
  if (v160 == v67)
  {
    goto LABEL_66;
  }

  v150 = v28;
  v151 = v5;
  v69 = *v161;
  v70 = *(v159 + 72);
  v71 = *v161 + v70 * (v160 - 1);
  v72 = -v70;
  v153 = v29;
  v154 = v70;
  v73 = v29 - v160;
  v164 = v69;
  v74 = v69 + v160 * v70;
  v155 = v67;
LABEL_49:
  v160 = v68;
  v75 = v74;
  v157 = v73;
  v158 = v71;
  while (1)
  {
    v76 = v168;
    sub_22C54CA2C();
    sub_22C54CA2C();
    v77 = *(v8 + 32);
    v78 = (v76 + v77);
    if (*(v76 + v77 + 8) & 1) != 0 || (v79 = *(v8 + 36), v80 = (v168 + v79), (*(v168 + v79 + 8)) || (v81 = &v16[v77], (v81[8]) || (v82 = &v16[v79], (v82[8]))
    {
      sub_22C54CA84(v16, type metadata accessor for ContextualEntityRenderingData);
      sub_22C54CA84(v168, type metadata accessor for ContextualEntityRenderingData);
      goto LABEL_63;
    }

    v83 = *v80;
    v84 = *v82;
    v85 = *v78 < *v81;
    v86 = v83 == v84;
    v87 = v83 < v84;
    if (v86)
    {
      v88 = v85;
    }

    else
    {
      v88 = v87;
    }

    sub_22C54CA84(v16, type metadata accessor for ContextualEntityRenderingData);
    sub_22C54CA84(v168, type metadata accessor for ContextualEntityRenderingData);
    if (!v88)
    {
      v8 = v167;
LABEL_63:
      v68 = v160 + 1;
      v71 = v158 + v154;
      v73 = v157 - 1;
      v74 += v154;
      if (v160 + 1 == v155)
      {
        v160 = v155;
        v28 = v150;
        v5 = v151;
        v29 = v153;
        goto LABEL_66;
      }

      goto LABEL_49;
    }

    if (!v164)
    {
      break;
    }

    sub_22C54CADC();
    v8 = v167;
    swift_arrayInitWithTakeFrontToBack();
    sub_22C54CADC();
    v71 += v72;
    v75 += v72;
    v63 = __CFADD__(v73++, 1);
    v16 = v166;
    if (v63)
    {
      goto LABEL_63;
    }
  }

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
}

uint64_t sub_22C54B314(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C56BFD8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_22C54B440((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_22C54B440(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_22C3A4FA0(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_22C3A4FA0(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_22C54B5B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for ContextualEntityRenderingData(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v70 = &v63 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = &v63 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_80;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_81;
  }

  v74 = a1;
  v73 = a4;
  v25 = v23 / v21;
  if ((a2 - a1) / v21 < v23 / v21)
  {
    v71 = a3;
    sub_22C3D760C(a1, (a2 - a1) / v21, a4);
    v26 = a4 + (a2 - a1) / v21 * v21;
    v72 = v26;
    while (1)
    {
      if (a4 >= v26 || a2 >= v71)
      {
        goto LABEL_78;
      }

      sub_22C54CA2C();
      sub_22C54CA2C();
      v28 = *(v8 + 32);
      v29 = &v19[v28];
      if (v19[v28 + 8])
      {
        break;
      }

      v30 = *(v8 + 36);
      v31 = &v19[v30];
      if (v19[v30 + 8])
      {
        break;
      }

      v32 = &v15[v28];
      if (v32[8])
      {
        break;
      }

      v33 = &v15[v30];
      if (v33[8])
      {
        break;
      }

      v35 = *v31;
      v36 = *v33;
      v37 = *v29 < *v32;
      v22 = v35 == v36;
      v38 = v35 < v36;
      v68 = a2;
      if (v22)
      {
        v39 = v37;
      }

      else
      {
        v39 = v38;
      }

      sub_22C54CA84(v15, type metadata accessor for ContextualEntityRenderingData);
      sub_22C54CA84(v19, type metadata accessor for ContextualEntityRenderingData);
      v22 = v39;
      a2 = v68;
      if (!v22)
      {
        goto LABEL_21;
      }

      if (a1 < v68 || a1 >= v68 + v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v68)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v21;
LABEL_30:
      a1 += v21;
      v74 = a1;
    }

    sub_22C54CA84(v15, type metadata accessor for ContextualEntityRenderingData);
    sub_22C54CA84(v19, type metadata accessor for ContextualEntityRenderingData);
LABEL_21:
    if (a1 < a4 || a1 >= a4 + v21)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a1 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v73 = a4 + v21;
    a4 += v21;
    goto LABEL_30;
  }

  v69 = v17;
  sub_22C3D760C(a2, v23 / v21, a4);
  v41 = a4 + v25 * v21;
  v42 = -v21;
  v43 = v41;
  v66 = v8;
LABEL_46:
  v67 = a2 + v42;
  v68 = a2;
  v71 = a3;
  v64 = v43;
  while (1)
  {
    if (v41 <= a4)
    {
      v74 = a2;
      v72 = v43;
      goto LABEL_78;
    }

    if (a2 <= a1)
    {
      break;
    }

    v65 = v43;
    v44 = v41 + v42;
    v45 = v70;
    sub_22C54CA2C();
    sub_22C54CA2C();
    v46 = *(v8 + 32);
    v47 = (v45 + v46);
    if (*(v45 + v46 + 8) & 1) != 0 || (v48 = *(v8 + 36), (*(v45 + v48 + 8)))
    {
      v49 = 0;
      v50 = v69;
      v51 = v71;
    }

    else
    {
      v50 = v69;
      v54 = v69 + v46;
      v51 = v71;
      if (*(v54 + 8))
      {
        v49 = 0;
      }

      else
      {
        v55 = *(v45 + v48);
        v56 = (v69 + v48);
        v57 = *v56;
        v58 = *(v56 + 8);
        v59 = *v47 < *v54;
        if (v55 != v57)
        {
          v59 = v55 < v57;
        }

        v49 = (v58 & 1) == 0 && v59;
      }
    }

    v52 = v51 + v42;
    sub_22C54CA84(v50, type metadata accessor for ContextualEntityRenderingData);
    sub_22C54CA84(v70, type metadata accessor for ContextualEntityRenderingData);
    if (v49)
    {
      if (v51 < v68 || v52 >= v68)
      {
        v8 = v66;
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v65;
        a3 = v52;
      }

      else
      {
        v43 = v65;
        v22 = v51 == v68;
        v8 = v66;
        v61 = v67;
        a2 = v67;
        a3 = v52;
        if (!v22)
        {
          v62 = v65;
          swift_arrayInitWithTakeBackToFront();
          a2 = v61;
          v43 = v62;
        }
      }

      goto LABEL_46;
    }

    if (v51 < v41 || v52 >= v41)
    {
      v8 = v66;
      swift_arrayInitWithTakeFrontToBack();
      v71 = v52;
      v41 += v42;
      v43 = v44;
      a2 = v68;
    }

    else
    {
      v43 = v41 + v42;
      v22 = v41 == v51;
      v71 = v51 + v42;
      v41 += v42;
      a2 = v68;
      v8 = v66;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v71 = v52;
        v41 = v44;
        v43 = v44;
      }
    }
  }

  v74 = a2;
  v72 = v64;
LABEL_78:
  sub_22C8381E4(&v74, &v73, &v72);
  return 1;
}

void sub_22C54BB58(uint64_t a1)
{
  v87 = sub_22C90952C();
  v2 = *(v87 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v87);
  v80 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v79 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v76 - v9;
  v11 = sub_22C90399C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v90 = *(v16 - 8);
  v17 = *(v90 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v86 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v76 - v20;
  v100 = sub_22C9081CC();
  v22 = *(*(v100 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v100);
  v85 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v81 = &v76 - v26;
  MEMORY[0x28223BE20](v25);
  v99 = &v76 - v27;
  v28 = 0;
  v101 = 0;
  v102 = MEMORY[0x277D84F90];
  v97 = v29 + 16;
  v78 = (v2 + 16);
  v77 = (v2 + 8);
  v91 = *(a1 + 16);
  v92 = v21;
  v88 = (v12 + 8);
  v89 = v29;
  v82 = (v29 + 8);
  v83 = (v29 + 32);
  v98 = MEMORY[0x277D84F90];
  for (i = a1; ; a1 = i)
  {
    if (v91 == v28)
    {

      return;
    }

    if (v28 >= *(a1 + 16))
    {
      break;
    }

    v30 = *(v89 + 72);
    v94 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v95 = v28;
    v93 = v30;
    v96 = *(v89 + 16);
    v96(v99, a1 + v94 + v30 * v28, v100);
    sub_22C9081AC();
    sub_22C90391C();
    v31 = sub_22C9093BC();
    if (sub_22C370B74(v10, 1, v31) == 1)
    {
      sub_22C36C640(v86, 1, 1, v87);
    }

    else
    {
      v32 = v15;
      v33 = v10;
      v34 = v79;
      sub_22C3A7214();
      v35 = v80;
      sub_22C90935C();
      v37 = v86;
      v36 = v87;
      (*v78)(v86, v35, v87);
      sub_22C36C640(v37, 0, 1, v36);
      v21 = v92;
      (*v77)(v35, v36);
      v38 = v34;
      v10 = v33;
      v15 = v32;
      (*(*(v31 - 8) + 8))(v38, v31);
    }

    sub_22C36DD28(v10, &qword_27D9BB908, &qword_22C910960);
    (*v88)(v15, v11);
    sub_22C407C2C();
    v40 = v101;
    v39 = v102;
    v41 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v42 = *(v102 + 16);
    if (v101)
    {

      sub_22C7DB87C(v21, v39 + v41, v42, v40 + 16, v40 + 32, v43, v44, v45, v76, v77, v78, v79, v80, v81, v82, v83, i, v85, v86, v87);
      v47 = v46;
      v49 = v48;

      if (v49)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v50 = *(v102 + 16);
      sub_22C7D9774();
      if (v52)
      {
LABEL_11:
        sub_22C7D4D7C();
        v53 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = *(v53 + 16);
          sub_22C3B6D48();
          v53 = v103;
        }

        v56 = *(v53 + 16);
        if (v56 >= *(v53 + 24) >> 1)
        {
          sub_22C3B6D48();
          v53 = v103;
        }

        *(v53 + 16) = v56 + 1;
        v57 = v53 + 32;
        *(v53 + 32 + 8 * v56) = MEMORY[0x277D84F90];
        v96(v85, v99, v100);
        v58 = *(v53 + 32 + 8 * v56);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        *(v53 + 32 + 8 * v56) = v58;
        v98 = v53;
        if ((v59 & 1) == 0)
        {
          v68 = *(v58 + 16);

          sub_22C59238C();
          v69 = *(v57 + 8 * v56);
          *(v57 + 8 * v56) = v70;

          v58 = *(v57 + 8 * v56);
        }

        v60 = *(v58 + 16);
        v61 = v60 + 1;
        if (v60 >= *(v58 + 24) >> 1)
        {
          sub_22C59238C();
          v58 = v71;
          *(v57 + 8 * v56) = v71;
        }

        v62 = v85;
        goto LABEL_30;
      }

      v47 = v51;
    }

    v63 = v98;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C270(v63);
      v63 = v64;
    }

    if ((v47 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (v47 >= *(v63 + 16))
    {
      goto LABEL_34;
    }

    v65 = v63 + 32;
    v96(v81, v99, v100);
    v58 = *(v63 + 32 + 8 * v47);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *(v63 + 32 + 8 * v47) = v58;
    v98 = v63;
    if ((v66 & 1) == 0)
    {
      v72 = *(v58 + 16);

      sub_22C59238C();
      v73 = *(v65 + 8 * v47);
      *(v65 + 8 * v47) = v74;

      v58 = *(v65 + 8 * v47);
    }

    v60 = *(v58 + 16);
    v61 = v60 + 1;
    if (v60 >= *(v58 + 24) >> 1)
    {
      sub_22C59238C();
      v58 = v75;
      *(v65 + 8 * v47) = v75;
    }

    v62 = v81;
LABEL_30:
    *(v58 + 16) = v61;
    v67 = v100;
    (*v83)(v58 + v94 + v60 * v93, v62, v100);
    v21 = v92;
    sub_22C36DD28(v92, &qword_27D9BB0C0, &qword_22C90D960);
    (*v82)(v99, v67);
    v28 = v95 + 1;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_22C54C3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v47 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v45 = *(v47 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = v39 - v6;
  v44 = sub_22C3A5908(&qword_27D9BDBE8, &qword_22C91AD88);
  v7 = *(*(v44 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v44);
  v43 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = v39 - v10;
  v11 = sub_22C3A5908(&qword_27D9BDBF0, &qword_22C91AD90);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v52 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v39 - v15;
  v48 = *(a3 + 16);
  if (!v48)
  {
    return 6109787;
  }

  v53 = 91;
  v54 = 0xE100000000000000;
  v41 = a3 + 32;
  v39[1] = a1;

  v39[0] = a3;

  v18 = 0;
  LODWORD(v19) = 1;
  v50 = xmmword_22C90F800;
  v40 = v16;
  while (1)
  {
    if (v18 >= v48)
    {
      v32 = sub_22C3A5908(&qword_27D9BDBF8, &unk_22C91AD98);
      sub_22C36C640(v52, 1, 1, v32);
      goto LABEL_8;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v18 >= *(v49 + 16))
    {
      goto LABEL_16;
    }

    v20 = v52;
    v46 = v19;
    v19 = v44;
    v21 = *(v44 + 48);
    v22 = v49 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v23 = *(v45 + 72);
    v24 = v42;
    sub_22C3A7214();
    *&v24[v21] = *(v41 + 8 * v18);
    v25 = v18 + 1;
    v26 = v43;
    sub_22C407C2C();
    v27 = *(v19 + 48);
    LOBYTE(v19) = v46;
    v28 = sub_22C3A5908(&qword_27D9BDBF8, &unk_22C91AD98);
    v29 = *(v28 + 48);
    sub_22C407C2C();
    v30 = *&v26[v27];
    v18 = v25;
    *(v20 + v29) = v30;
    v31 = v20;
    v16 = v40;
    sub_22C36C640(v31, 0, 1, v28);

LABEL_8:
    sub_22C407C2C();
    v33 = sub_22C3A5908(&qword_27D9BDBF8, &unk_22C91AD98);
    if (sub_22C370B74(v16, 1, v33) == 1)
    {

      MEMORY[0x2318B7850](93, 0xE100000000000000);
      return v53;
    }

    v34 = *(v33 + 48);
    sub_22C407C2C();
    v35 = *&v16[v34];
    if ((v19 & 1) == 0)
    {
      MEMORY[0x2318B7850](8236, 0xE200000000000000);
    }

    sub_22C3A5908(&qword_27D9BAAE0, &qword_22C90D380);
    v36 = swift_allocObject();
    *(v36 + 16) = v50;
    *(v36 + 56) = v47;
    sub_22C36D548((v36 + 32));
    v37 = v51;
    sub_22C3A7214();
    sub_22C90AE9C();

    MEMORY[0x2318B7850](8250, 0xE200000000000000);
    v38 = swift_allocObject();
    *(v38 + 16) = v50;
    *(v38 + 56) = sub_22C3A5908(&qword_27D9BB090, &unk_22C90D930);
    *(v38 + 32) = v35;

    sub_22C90AE9C();

    result = sub_22C36DD28(v37, &qword_27D9BB0C0, &qword_22C90D960);
    LODWORD(v19) = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_22C54C9B8()
{
  result = qword_27D9BDC00;
  if (!qword_27D9BDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDC00);
  }

  return result;
}

uint64_t sub_22C54CA2C()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C54CA84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C54CADC()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

void sub_22C54CB5C()
{
  sub_22C45924C();
  if (v0 <= 0x3F)
  {
    sub_22C48425C();
    if (v1 <= 0x3F)
    {
      sub_22C901FAC();
      if (v2 <= 0x3F)
      {
        sub_22C54CC58();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22C54CC10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22C54CC58()
{
  if (!qword_27D9BDC38)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BDC38);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ContextEventPromptGeneratorError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C54CD8C()
{
  result = qword_27D9BDC40;
  if (!qword_27D9BDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDC40);
  }

  return result;
}

unint64_t sub_22C54CDE0()
{
  result = qword_27D9BDC48;
  if (!qword_27D9BDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDC48);
  }

  return result;
}

void sub_22C54CE60()
{
  sub_22C370030();
  v3 = v1;
  sub_22C369A48();
  v4 = sub_22C8FFDEC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C36BE24();
  v53 = sub_22C90952C();
  v10 = sub_22C369824(v53);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v56 = v16;
  v17 = *(v0 + 16);
  if (v17)
  {
    v52 = v2;
    v57 = MEMORY[0x277D84F90];
    v54 = v15;
    sub_22C3B6AF0(0, v17, 0);
    v19 = sub_22C36C88C(v54);
    v20 = v54;
    v21 = 0;
    v55 = v54 + 64;
    v51 = v12;
    v48 = v7;
    v49 = v4;
    v50 = v17;
    if ((v19 & 0x8000000000000000) == 0)
    {
      while (v19 < 1 << *(v20 + 32))
      {
        v22 = v19 >> 6;
        if ((*(v55 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v20 + 36) != v18)
        {
          goto LABEL_25;
        }

        v23 = v18;
        (*(v7 + 16))(v52, *(v20 + 56) + *(v7 + 72) * v19, v4);
        sub_22C483004(v56);
        if (v3)
        {
          goto LABEL_29;
        }

        v24 = sub_22C37FDF4();
        v25(v24);
        v27 = *(v57 + 16);
        v26 = *(v57 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22C3B6AF0(v26 > 1, v27 + 1, 1);
        }

        *(v57 + 16) = v27 + 1;
        v28 = *(v51 + 80);
        sub_22C36BA94();
        (*(v30 + 32))(v57 + v29 + *(v30 + 72) * v27, v56, v53);
        v20 = v54;
        v31 = 1 << *(v54 + 32);
        if (v19 >= v31)
        {
          goto LABEL_26;
        }

        v32 = *(v55 + 8 * v22);
        if ((v32 & (1 << v19)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v54 + 36) != v23)
        {
          goto LABEL_28;
        }

        v33 = v32 & (-2 << (v19 & 0x3F));
        if (v33)
        {
          v31 = __clz(__rbit64(v33)) | v19 & 0x7FFFFFFFFFFFFFC0;
          v34 = v50;
        }

        else
        {
          v35 = v22 << 6;
          v36 = v22 + 1;
          v37 = (v54 + 72 + 8 * v22);
          v34 = v50;
          while (v36 < (v31 + 63) >> 6)
          {
            v39 = *v37++;
            v38 = v39;
            v35 += 64;
            ++v36;
            if (v39)
            {
              v40 = sub_22C36EBF0();
              sub_22C3A5038(v40, v41, v42);
              v20 = v54;
              v31 = __clz(__rbit64(v38)) + v35;
              goto LABEL_19;
            }
          }

          v43 = sub_22C36EBF0();
          sub_22C3A5038(v43, v44, v45);
          v20 = v54;
        }

LABEL_19:
        if (++v21 == v34)
        {
          goto LABEL_22;
        }

        v18 = *(v20 + 36);
        v19 = v31;
        v3 = 0;
        v7 = v48;
        v4 = v49;
        if (v19 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v46 = sub_22C37FDF4();
    v47(v46);

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_22C36FB20();
  }
}

void sub_22C54D210()
{
  sub_22C370030();
  sub_22C369A48();
  v43 = sub_22C90981C();
  v1 = sub_22C369824(v43);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C3698E4();
  v38 = v4;
  sub_22C369930();
  MEMORY[0x28223BE20](v5);
  sub_22C36BA64();
  v42 = v6;
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v44 = MEMORY[0x277D84F98];
  v39 = v9;
  v40 = *(v0 + 16);
  v41 = (v9 + 32);
  v37 = v0;
  while (1)
  {
    if (v40 == v7)
    {

      sub_22C36FB20();
      return;
    }

    if (v7 >= *(v0 + 16))
    {
      break;
    }

    v10 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v11 = *(v39 + 72);
    v12 = v7;
    (*(v39 + 16))(v42, v0 + v10 + v11 * v7, v43);
    v13 = sub_22C9097DC();
    v15 = v14;
    v17 = sub_22C36E2BC(v13, v14);
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v20 = v16;
    if (v8[3] < v18 + v19)
    {
      sub_22C88E43C();
      v8 = v44;
      v21 = sub_22C36E2BC(v13, v15);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      v17 = v21;
    }

    if (v20)
    {

      v23 = v8[7];
      v24 = *v41;
      (*v41)(v38, v42, v43);
      v25 = *(v23 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = *(v25 + 16);
        sub_22C36D270();
        sub_22C59266C();
        v25 = v35;
        *(v23 + 8 * v17) = v35;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_22C59266C();
        v25 = v36;
        *(v23 + 8 * v17) = v36;
      }

      v0 = v37;
      v28 = v12;
      *(v25 + 16) = v27 + 1;
      v24(v25 + v10 + v27 * v11, v38, v43);
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAD28, &qword_22C91B1B0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_22C90F800;
      (*v41)(v29 + v10, v42, v43);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      v30 = (v8[6] + 16 * v17);
      *v30 = v13;
      v30[1] = v15;
      *(v8[7] + 8 * v17) = v29;
      v31 = v8[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_20;
      }

      v8[2] = v33;
      v0 = v37;
      v28 = v12;
    }

    v7 = v28 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_22C90B54C();
  __break(1u);
}

uint64_t sub_22C54D548(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v41 - v4;
  v47 = sub_22C90981C();
  v6 = *(*(v47 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v47);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v41 - v10;
  v12 = a1 + 64;
  v11 = *(a1 + 64);
  v46 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v13 = 1 << *(a1 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v42 = v9;
  v43 = (v9 + 32);
  v48 = a1;

  v18 = 0;
  while (1)
  {
    v19 = v18;
    if (!v15)
    {
      break;
    }

LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v18 << 6);
    v22 = (*(v48 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(*(v48 + 56) + 8 * v21);
    swift_getKeyPath();
    v49 = v25;

    swift_getAtKeyPath();

    if (sub_22C370B74(v5, 1, v47) == 1)
    {

      result = sub_22C36DD28(v5, &qword_27D9BC0C0, &unk_22C911FA0);
    }

    else
    {
      v26 = *v43;
      (*v43)(v45, v5, v47);
      v41 = v26;
      v26(v44, v45, v47);
      if (v46[3] <= v46[2])
      {
        sub_22C88E414();
      }

      v27 = v50;
      v28 = *(v50 + 40);
      sub_22C90B62C();
      sub_22C909FFC();
      result = sub_22C90B66C();
      v29 = v27 + 64;
      v46 = v27;
      v30 = -1 << *(v27 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v27 + 64 + 8 * (v31 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v30) >> 6;
        while (++v32 != v35 || (v34 & 1) == 0)
        {
          v36 = v32 == v35;
          if (v32 == v35)
          {
            v32 = 0;
          }

          v34 |= v36;
          v37 = *(v29 + 8 * v32);
          if (v37 != -1)
          {
            v33 = __clz(__rbit64(~v37)) + (v32 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v33 = __clz(__rbit64((-1 << v31) & ~*(v27 + 64 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      v39 = v46;
      v38 = v47;
      v40 = (v46[6] + 16 * v33);
      *v40 = v24;
      v40[1] = v23;
      result = (v41)(v39[7] + *(v42 + 72) * v33, v44, v38);
      ++v39[2];
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      return v46;
    }

    v15 = *(v12 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C54D92C(uint64_t a1)
{
  v30 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    swift_getKeyPath();

    swift_getAtKeyPath();

    if (v32)
    {
      v16 = v30;
      v17 = *(v30 + 16);
      if (*(v30 + 24) <= v17)
      {
        sub_22C88E938(v17 + 1);
        v16 = v33;
      }

      v30 = v16;
      v18 = *(v16 + 40);
      sub_22C90B62C();
      sub_22C909FFC();
      result = sub_22C90B66C();
      v19 = v30 + 64;
      v20 = -1 << *(v30 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v30 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v30 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = (*(v30 + 48) + 16 * v23);
      *v28 = v14;
      v28[1] = v13;
      v29 = (*(v30 + 56) + 16 * v23);
      *v29 = v31;
      v29[1] = v32;
      ++*(v30 + 16);
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v30;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C54DBA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 40))
  {
    v4 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v4;
    *(a2 + 25) = *(v2 + 25);
  }

  else
  {
    v5 = result;
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);
    v9 = *(v2 + 8);
    v8 = *(v2 + 16);
    v12[0] = *v2;
    v12[1] = v9;
    v12[2] = v8;
    v12[3] = v7;
    v12[4] = v6;

    sub_22C456C94(v9, v8);
    v5(v12);

    v10 = sub_22C38B418();
    result = sub_22C456D48(v10, v11);
    *(a2 + 40) = 0;
  }

  return result;
}

void sub_22C54DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v24;
  a20 = v25;
  a10 = v22;
  v144 = v26;
  v141 = v27;
  v29 = v28;
  v31 = v30;
  v32 = sub_22C9099FC();
  v33 = sub_22C36A7A4(v32, &v158);
  v138 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369838();
  sub_22C387210();
  v37 = sub_22C9037DC();
  v38 = sub_22C36A7A4(v37, &a10);
  v143 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v43);
  v45 = &v132 - v44;
  v46 = sub_22C908EAC();
  v47 = sub_22C36A7A4(v46, &a9);
  v140 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  v54 = &v132 - v53;
  v55 = type metadata accessor for RenderableTool();
  v56 = sub_22C36985C(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C369838();
  v61 = (v60 - v59);
  sub_22C557A88(v29, v60 - v59);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = *v61;
    v63 = v21[23];
    v64 = v21[24];
    sub_22C374168(v21 + 20, v63);
    (*(v64 + 8))(v62, v144, v63, v64);

LABEL_16:
    sub_22C36FB20();
    return;
  }

  v133 = v23;
  v134 = v31;
  v65 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  v66 = sub_22C9036EC();
  sub_22C3699C8(v66);
  v68 = v67;
  v69 = (*(v67 + 88))(v61, v66);
  if (v69 == *MEMORY[0x277D1ECE0])
  {
    v70 = sub_22C557EB8();
    v71(v70);
    sub_22C374490(v159);
    v73 = v142;
    (*(v72 + 32))(v54, v61, v142);
    sub_22C36D2E8(&a11);
    v75 = *(v74 + 32);
    sub_22C557FD0();
    v76();
    v77 = v21[3];
    v78 = v21[4];
    sub_22C374168(v21, v77);
    sub_22C37E2E0();
    sub_22C386578();
    sub_22C481D88(v54, v141, v79, v144, v45, v77, v78);
    (*(v55 + 8))(v45, v61);
    (*(v68 + 8))(v54, v73);
    goto LABEL_16;
  }

  if (v69 == *MEMORY[0x277D1ECE8])
  {
    v80 = sub_22C557EB8();
    v81(v80);
    sub_22C374490(&v157);
    v83 = *(v82 + 32);
    sub_22C557F60();
    v84();
    v85 = v21[8];
    v86 = v21[9];
    sub_22C374168(v21 + 5, v85);
    v87 = *(v86 + 8);
    sub_22C386578();
    v88(v20, v141, v144, v85, v86);
    v89 = *(v68 + 8);
    v90 = sub_22C37B220();
    v91(v90);
    sub_22C36FB04(&a11);
    sub_22C3837F8();
    v92();
    goto LABEL_16;
  }

  if (v69 == *MEMORY[0x277D1ECD8])
  {
    v93 = sub_22C557EB8();
    v94(v93);
    sub_22C3759C4(v159);
    v96 = v136;
    (*(v95 + 32))(v136, v61, v142);
    sub_22C37205C(&a11);
    v98 = *(v97 + 32);
    v99 = v137;
    sub_22C557FD0();
    v100();
    v101 = sub_22C374168(v21 + 10, v21[13]);
    sub_22C378AB0(v101, v156);
    v138 = v159[0];
    v139 = v158;
    v135 = sub_22C374168(v156, v158);
    v102 = v101[3];
    v103 = v101[4];
    v104 = sub_22C372FA4();
    sub_22C374168(v104, v105);
    v106 = v144;
    v107 = a10;
    (*(v103 + 32))(&v152, v96, v144, v102, v103);
    if (v107)
    {
      (*(v65 + 8))(v99, v61);
      (*(v66 + 8))(v96, v142);
    }

    else
    {
      v151[0] = v152;
      v151[1] = v153;
      v151[2] = v154;
      v151[3] = v155;
      a10 = 0;
      v121 = v152;
      v122 = v153;
      v123 = v99;
      v124 = v154;
      v125 = BYTE8(v154);
      v126 = sub_22C372FA4();
      sub_22C456C30(v126, v127, v122, *(&v122 + 1), v124, v125);
      sub_22C3E022C(v151);
      v145 = v121;
      sub_22C5580C4();
      v148 = *(&v122 + 1);
      v149 = v124;
      v150 = v125;
      sub_22C386578();
      sub_22C481D88(v96, v141, v128, v106, v123, v139, v138);
      sub_22C36FB04(&a11);
      sub_22C3837F8();
      v129();
      sub_22C36FB04(v159);
      v130(v96, v142);
      v131 = sub_22C3720E8();
      sub_22C51E1CC(v131, v146, v147, v148, v149, v150);
    }

    sub_22C36FF94(v156);
    goto LABEL_16;
  }

  v108 = v134;
  if (v69 == *MEMORY[0x277D1ECD0])
  {
    v109 = sub_22C557EB8();
    v110(v109);
    sub_22C374490(v159);
    v112 = v135;
    (*(v111 + 32))(v135, v61, v142);
    sub_22C385E64(&a11);
    v113 = v133;
    sub_22C557FD0();
    v114();
    v116 = v21[3];
    v115 = v21[4];
    sub_22C374168(v21, v116);
    v117 = sub_22C37E2E0();
    (*(v115 + 16))(v112, v141, 1, &v152, v144, v113, v116, v115, v117);
    (*(v45 + 1))(v113, v61);
    (*(v68 + 8))(v112, v142);
    goto LABEL_16;
  }

  if (v69 == *MEMORY[0x277D1ECF8])
  {
    (*(v68 + 8))(v61, v66);
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v118 = MEMORY[0x277D84F90];
    v119 = sub_22C909F0C();
    *v108 = 0u;
    *(v108 + 16) = 0u;
    *(v108 + 32) = 0;
    *(v108 + 40) = 1;
    *(v108 + 48) = v119;
    *(v108 + 56) = v118;
    sub_22C36FB04(&a11);
    sub_22C3837F8();
    v120();
    goto LABEL_16;
  }

  sub_22C90B4EC();
  __break(1u);
}

uint64_t sub_22C54E568()
{
  v1 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C36CA88();
  sub_22C378AB0(v7, v8);
  sub_22C378AB0(v0 + 40, v6 + 40);
  sub_22C378AB0(v0 + 80, v6 + 80);
  sub_22C378AB0(v0 + 120, v6 + 120);
  sub_22C378AB0(v0 + 160, v6 + 160);
  v9 = *(type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0(0) + 36);
  v10 = *(v2 + 44);
  v11 = sub_22C908AEC();
  sub_22C36985C(v11);
  (*(v12 + 16))(v6 + v10, v0 + v9);
  sub_22C38674C();
  sub_22C513518(v13, v14);
  return sub_22C557AE0(v6, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
}

void sub_22C54E6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  a10 = v21;
  v25 = v24;
  v101 = v26;
  v27 = sub_22C908AEC();
  v28 = sub_22C369824(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v35 = v34 - v33;
  v36 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  sub_22C369914(v36);
  v38 = *(v37 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v39);
  sub_22C36D5B4();
  sub_22C3698F8(v40);
  v41 = sub_22C908DAC();
  v42 = sub_22C369824(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C369838();
  v47 = v46 - v45;
  v48 = type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0(0);
  v49 = v20;
  (*(v30 + 16))(v35, v20 + *(v48 + 28), v27);
  v50 = a10;
  sub_22C9099CC();
  if (v50)
  {
    (*(v30 + 8))(v35, v27);
    goto LABEL_11;
  }

  v98 = v25;
  a10 = 0;
  sub_22C37205C(&a9);
  sub_22C908ACC();

  (*(v30 + 8))(v35, v27);
  v51 = sub_22C908ABC();
  v52 = sub_22C36E638();
  sub_22C36D0A8(v52, v53, v51);
  if (v54)
  {
    sub_22C36DD28(v47, &qword_27D9BC0B0, &unk_22C912AD0);
    v55 = v101;
LABEL_10:
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v72 = MEMORY[0x277D84F90];
    v73 = sub_22C909F0C();
    *v55 = 2;
    *(v55 + 8) = 0u;
    *(v55 + 24) = 0u;
    *(v55 + 40) = 1;
    *(v55 + 48) = v73;
    *(v55 + 56) = v72;
    goto LABEL_11;
  }

  sub_22C36A948();
  v57 = v56;
  v59 = *(v58 + 88);
  v60 = sub_22C38674C();
  v62 = v61(v60);
  v55 = v101;
  if (v62 != *MEMORY[0x277D1E8D0])
  {
    v69 = *(v57 + 8);
    v70 = sub_22C38674C();
    v71(v70);
    goto LABEL_10;
  }

  v63 = *(v57 + 96);
  v64 = sub_22C38674C();
  v65(v64);
  sub_22C36D2E8(v113);
  (*(v66 + 32))(v47, v47, v41);
  v67 = a10;
  v68 = sub_22C54EC48(v98, &v109);
  if (v67)
  {
    (*(v35 + 8))(v47, v41, v68);
  }

  else
  {
    a10 = 0;
    v108[0] = v109;
    v108[1] = v110;
    v108[2] = v111;
    v108[3] = v112;
    v74 = v111;
    v75 = BYTE8(v111);
    v99 = v109;
    v102 = v110;
    v76 = sub_22C3722DC();
    sub_22C456C30(v76, v77, v78, v79, v80, v75);
    sub_22C3E022C(v108);
    v97 = v75;
    if ((v75 & 1) == 0)
    {
      v105 = v99;
      v106 = v102;
      v107 = v74;
      v81 = sub_22C3722DC();
      sub_22C456C30(v81, v82, v83, v84, v85, 0);
      sub_22C54ED48(&v105, v49, v103);
      v102 = v103[1];
      v99 = v103[0];
      v100 = v104;
      v86 = *(&v105 + 1);
      v87 = v106;

      v88 = v87;
      v55 = v101;
      sub_22C456D48(v86, v88);
      v89 = sub_22C3722DC();
      sub_22C456CE4(v89, v90, v91, v92, v93, 0);
      v74 = v100;
    }

    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v94 = MEMORY[0x277D84F90];
    v95 = sub_22C909F0C();
    *v55 = v99;
    *(v55 + 16) = v102;
    *(v55 + 32) = v74;
    *(v55 + 40) = v97;
    *(v55 + 48) = v95;
    *(v55 + 56) = v94;
    sub_22C36FB04(v113);
    sub_22C558070();
    v96();
  }

LABEL_11:
  sub_22C36FB20();
}

double sub_22C54EC48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = sub_22C372FA4();
  sub_22C374168(v7, v8);
  (*(v6 + 16))(v16, a1, v5, v6);
  v9 = v16[1];
  v10 = v17;
  if (v17)
  {

    v11 = 2;
  }

  else
  {
    v12 = v16[0];
    sub_22C36A83C();
    v11 = swift_allocObject();
    *(v11 + 16) = v12;
    *(v11 + 24) = v9;
  }

  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v13 = MEMORY[0x277D84F90];
  v14 = sub_22C909F0C();
  *a2 = v11;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = v10;
  *(a2 + 48) = v14;
  *(a2 + 56) = v13;
  return result;
}

uint64_t sub_22C54ED48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = *a1;
  sub_22C374168((a2 + 80), *(a2 + 104));
  sub_22C4FA634();
  v58 = v4;
  v6 = v5;
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90FB40;
  v8 = swift_allocObject();
  v62[0] = 0x6F636F746F727040;
  v62[1] = 0xE90000000000006CLL;
  *(v8 + 16) = sub_22C90A49C();
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 543581540;
  *(v10 + 24) = 0xE400000000000000;
  sub_22C591324();
  v12 = v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 24) >> 1;
  v15 = v13 + 1;
  if (v14 <= v13)
  {
    sub_22C591324();
    v12 = v52;
    v14 = *(v52 + 24) >> 1;
  }

  *(v12 + 16) = v15;
  *(v12 + 8 * v13 + 32) = v10;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C591324();
    v12 = v53;
  }

  *(v12 + 16) = v16;
  *(v12 + 8 * v15 + 32) = v60;
  v17 = swift_allocObject();
  *(v17 + 16) = 0x6F4E203E2D202928;
  *(v17 + 24) = 0xEB000000003A656ELL;
  v18 = *(v12 + 24);

  if ((v13 + 3) > (v18 >> 1))
  {
    sub_22C591324();
    v12 = v54;
  }

  *(v12 + 16) = v13 + 3;
  *(v12 + 8 * v16 + 32) = v17;
  v19 = sub_22C3DB9B0(v12);

  v20 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v20 + 16) = v21;
  *(inited + 40) = v20 | 0x6000000000000000;
  v22 = swift_allocObject();
  *(v22 + 16) = 2236962;
  *(v22 + 24) = 0xE300000000000000;
  sub_22C591324();
  v24 = v23;
  v25 = *(v23 + 16);
  v26 = v25 + 1;
  v27 = a2;
  if (v25 >= *(v23 + 24) >> 1)
  {
    sub_22C591324();
    v24 = v55;
  }

  *(v24 + 16) = v26;
  *(v24 + 8 * v25 + 32) = v22;
  v28 = swift_allocObject();
  *(v28 + 16) = v58;
  *(v28 + 24) = v6;
  v29 = *(v24 + 24);
  v30 = v25 + 2;

  if (v30 > (v29 >> 1))
  {
    sub_22C591324();
    v24 = v56;
  }

  v31 = v27;
  *(v24 + 16) = v30;
  *(v24 + 8 * v26 + 32) = v28;

  v32 = swift_allocObject();
  *(v32 + 16) = 2236962;
  *(v32 + 24) = 0xE300000000000000;
  v33 = *(v24 + 16);
  if (v33 >= *(v24 + 24) >> 1)
  {
    sub_22C591324();
    v24 = v57;
  }

  *(v24 + 16) = v33 + 1;
  *(v24 + 8 * v33 + 32) = v32;
  v34 = sub_22C3DB9B0(v24);

  v35 = swift_allocObject();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v35 + 16) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = 1;
  *(v37 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v38 = swift_allocObject();
  *(v38 + 16) = v35 | 0x6000000000000000;
  *(v37 + 32) = v38;
  *(inited + 48) = v37 | 0xA000000000000000;
  v39 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v40 = sub_22C529D00(10, 0xE100000000000000, v39);

  v41 = swift_allocObject();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v41 + 16) = v42;
  v43 = type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0(0);
  v44 = sub_22C49FB90(v60, v31 + *(v43 + 32));
  v46 = v45;

  sub_22C379DF8(v31 + 40, v62, &qword_27D9BD908, &unk_22C919AF8);
  if (v63)
  {
    sub_22C374168(v62, v63);
    sub_22C534758(v44, v46, v61);

    v47 = v61[0];
    v48 = v61[1];
    v49 = v61[2];
    v50 = v61[3];
    result = sub_22C36FF94(v62);
  }

  else
  {

    result = sub_22C36DD28(v62, &qword_27D9BD908, &unk_22C919AF8);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  *a3 = v41 | 0x6000000000000000;
  a3[1] = v47;
  a3[2] = v48;
  a3[3] = v49;
  a3[4] = v50;
  return result;
}

void sub_22C54F358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v300 = v20;
  v268 = v23;
  v287 = v24;
  v286 = v25;
  v266 = v26;
  v265 = v27;
  v285 = v28;
  v30 = v29;
  v32 = v31;
  v274 = v33;
  v296 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  v34 = sub_22C36985C(v296);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  v294 = v38;
  v298 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v39 = sub_22C36985C(v298);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA64();
  sub_22C3698F8(v44);
  v45 = sub_22C9097AC();
  v46 = sub_22C36A7A4(v45, &a9);
  v288 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA64();
  sub_22C3698F8(v51);
  v52 = sub_22C90963C();
  v53 = sub_22C36A7A4(v52, &v315);
  v283 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22C3698A8();
  sub_22C3698F8(v57);
  v58 = type metadata accessor for PromptToolsHelper.RenderableParameter();
  v59 = sub_22C36A7A4(v58, &v329);
  v312 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  v66 = &v263 - v65;
  v67 = sub_22C90981C();
  v68 = sub_22C36A7A4(v67, &a11);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  v76 = &v263 - v75;
  v275 = v32;
  v77 = *(sub_22C908D8C() + 16);
  v299 = v70;
  if (v77)
  {
    v79 = *(v70 + 16);
    v78 = v70 + 16;
    v306 = v79;
    v80 = *(v78 + 64);
    sub_22C36BA94();
    v281 = v81;
    v291 = v82;
    v83 = v81 + v82;
    v84 = *(v78 + 56);
    v85 = (v78 - 8);
    v301 = v78 + 16;
    v305 = MEMORY[0x277D84F90];
    sub_22C383CEC();
    v310 = v30;
    while (1)
    {
      (v306)(v76, v83, v32);
      v86 = sub_22C9097DC();
      if (v30[2])
      {
        v88 = sub_22C36E2BC(v86, v87);
        v90 = v89;

        if (v90)
        {
          v91 = v310[7] + v88 * v84;
          sub_22C372274(&v322);
          sub_22C383CEC();
          v306();
          v92 = *v85;
          v93 = sub_22C36BA00();
          v94(v93);
          sub_22C386578();
          v96 = *v95;
          (*v95)(v303, v90, v88);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v97 = v305;
          }

          else
          {
            v100 = *(v305 + 16);
            sub_22C36D270();
            sub_22C59266C();
            v97 = v101;
          }

          v99 = *(v97 + 16);
          v98 = *(v97 + 24);
          v32 = v99 + 1;
          if (v99 >= v98 >> 1)
          {
            sub_22C369AB0(v98);
            sub_22C59266C();
            v97 = v102;
          }

          *(v97 + 16) = v32;
          v305 = v97;
          sub_22C383CEC();
          sub_22C386578();
          v96();
          goto LABEL_12;
        }
      }

      else
      {
      }

      v32 = v311;
      (*v85)(v76, v311);
LABEL_12:
      v83 += v84;
      --v77;
      v30 = v310;
      if (!v77)
      {

        v103 = v305;
        goto LABEL_16;
      }
    }
  }

  v103 = MEMORY[0x277D84F90];
LABEL_16:
  v104 = *(v103 + 16);
  v105 = v299;
  if (v104)
  {
    v323 = MEMORY[0x277D84F90];
    v106 = v103;
    sub_22C3B6F58();
    v109 = *(v105 + 16);
    v107 = v105 + 16;
    v108 = v109;
    v110 = v323;
    v111 = *(v107 + 64);
    sub_22C36BA94();
    v305 = v106;
    v113 = v106 + v112;
    v114 = *(v107 + 56);
    sub_22C383CEC();
    do
    {
      v108(v66, v113, &v323);
      sub_22C37449C();
      v116 = &v66[*(v115 + 20)];
      *v116 = 0;
      *(v116 + 1) = 0;
      v323 = v110;
      v118 = *(v110 + 16);
      v117 = *(v110 + 24);
      if (v118 >= v117 >> 1)
      {
        sub_22C369AB0(v117);
        sub_22C3B6F58();
        sub_22C383CEC();
        v110 = v323;
      }

      *(v110 + 16) = v118 + 1;
      v119 = *(v312 + 80);
      sub_22C36BA94();
      sub_22C557D60(v66, v110 + v120 + *(v121 + 72) * v118);
      v113 += v114;
      --v104;
    }

    while (v104);
  }

  else
  {

    v110 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v122);
  v261 = v300;
  v323 = v110;

  sub_22C563F04(sub_22C557DC4, &v259);
  v304 = 0;

  v123 = v323;
  v124 = 0;
  v310 = *(v323 + 16);
  v125 = (v288 + 8);
  v305 = MEMORY[0x277D84F90];
  v126 = v289;
  v306 = v323;
  v127 = v307;
  v128 = v308;
  while (1)
  {
    if (v310 == v124)
    {

      v269 = type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(0);
      v140 = v300;
      v141 = (v300 + *(v269 + 24));
      v142 = v141[3];
      v143 = v141[4];
      v144 = sub_22C36BA00();
      sub_22C374168(v144, v145);
      v323 = v305;
      sub_22C3A5908(&qword_27D9BD8D0, &unk_22C919AC0);
      sub_22C3D32C8(&qword_27D9BD8D8, &qword_27D9BD8D0, &unk_22C919AC0);
      v277 = sub_22C577748();
      v280 = v146;
      v279 = v147;

      v148 = v141[3];
      v149 = v141[4];
      sub_22C374168(v141, v148);
      sub_22C36D10C();
      v150(v320, v148, v149);
      sub_22C374168(v320, v321);
      v151 = *MEMORY[0x277D72E10];
      sub_22C37205C(&v314);
      (*(v152 + 104))(v282);
      sub_22C4FCF6C();
      v153 = *(v149 + 8);
      v154 = sub_22C372FCC();
      v155(v154);
      v156 = v323;
      v157 = v324;
      v158 = v325;
      v284 = v326;
      v276 = v327;
      v159 = v328;
      sub_22C36FF94(v320);
      v160 = v275;
      sub_22C5509B8();
      v161 = v323;
      v162 = v328;
      v283 = v324;
      v282 = v325;
      v288 = v326;
      v287 = v327;
      sub_22C456C30(v323, v324, v325, v326, v327, v328);
      sub_22C3E022C(&v323);
      v163 = sub_22C374168(v140, v140[3]);
      sub_22C4FA634();
      v272 = v162 | v159;
      v286 = v156;
      v285 = v157;
      v281 = v158;
      v278 = v161;
      v273 = __PAIR64__(v159, v162);
      if ((v162 | v159))
      {
        if (v162)
        {
          v166 = v161;
        }

        else
        {
          v166 = v156;
        }

        sub_22C385D94();
        v167 = v166;
        v168 = MEMORY[0x277D84F90];
        v169 = v276;
        goto LABEL_59;
      }

      v308 = v141[3];
      v309 = v141[4];
      v312 = v164;
      v267 = v165;
      v310 = sub_22C374168(v141, v308);
      v170 = v157;
      v171 = v283;
      v172 = v282;
      sub_22C456C30(v161, v283, v282, v288, v287, 0);
      v173 = v156;
      v174 = v170;
      v175 = v158;
      v176 = v276;
      sub_22C456C30(v173, v174, v158, v284, v276, 0);

      sub_22C456C94(v171, v172);
      v177 = v286;

      v178 = v176;
      sub_22C456C94(v285, v175);
      sub_22C908D8C();
      v179 = v304;
      sub_22C54D210();
      v141 = sub_22C54D92C(v180);
      v264 = v179;

      v181 = sub_22C909F0C();
      v182 = v308;
      v183 = v309;
      LOBYTE(v179) = _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      v184 = sub_22C55DE44();
      v260 = v182;
      BYTE1(v258) = 1;
      LOBYTE(v258) = v179 & 1;
      v257 = v177;
      v160 = v177;
      v156 = v267;
      v185 = v279;
      sub_22C5777F4(v161, v312, v267, v277, v280, v279, v141, v181, v310, v257, v268, v258, v184, v260, v183, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v273, v274, v275);
      v275 = v186;

      v163 = v269;
      sub_22C379DF8(v140 + *(v269 + 32), v320, &qword_27D9BD658, &qword_22C9186E0);
      if (v321)
      {
        v187 = sub_22C374168(v320, v321);
        v303 = *(v185 + 16);
        if (v303)
        {
          v268 = v187;
          v297 = (v302 + *(v298 + 48));
          v188 = v299;
          v189 = *(v299 + 80);
          sub_22C36BA94();
          v291 = v280 + v190;
          v301 = *(v280 + 16);
          v290 = v188 + 16;
          v289 = v188 + 32;

          v191 = 0;
          v192 = (v185 + 64);
          v304 = MEMORY[0x277D84F90];
          while (1)
          {
            sub_22C386578();
            if (v129 == v191)
            {
              goto LABEL_61;
            }

            v193 = v296;
            v194 = v294;
            v195 = (v294 + *(v296 + 48));
            v196 = *(v188 + 72);
            v312 = v191;
            v197 = v311;
            (*(v188 + 16))(v294, v291 + v196 * v191, v311);
            v305 = *(v192 - 4);
            v309 = *(v192 - 3);
            v198 = v309;
            v308 = *(v192 - 2);
            v199 = v308;
            v307 = *(v192 - 1);
            v200 = v307;
            v310 = v192;
            v306 = *v192;
            v201 = v306;
            *v195 = v305;
            v195[1] = v198;
            v195[2] = v199;
            v195[3] = v200;
            v195[4] = v201;
            v202 = v295;
            sub_22C557E2C(v194, v295);
            v203 = v202 + *(v193 + 48);
            v204 = *(v188 + 32);
            v205 = sub_22C37022C(&v327);
            v204(v205, v202, v197);
            v206 = *(v203 + 32);
            v207 = *(v203 + 16);
            v208 = v297;
            *v297 = *v203;
            v208[1] = v207;
            *(v208 + 4) = v206;
            v188 = v292;
            sub_22C379DF8(v191, v292, &qword_27D9BD8E8, &unk_22C919AD0);
            v209 = *(v298 + 48);
            v210 = *(v188 + v209);
            v141 = *(v188 + v209 + 8);
            v211 = *(v188 + v209 + 24);
            v212 = *(v188 + v209 + 32);
            v213 = v293;
            v214 = (v293 + v209);
            v215 = v197;
            v216 = *(v188 + v209 + 16);
            v204(v293, v188, v215);
            *v214 = v210;
            v214[1] = v141;
            v214[2] = v216;
            v214[3] = v211;
            v214[4] = v212;

            sub_22C456C94(v309, v308);
            sub_22C36CCEC();
            sub_22C456C94(v217, v218);
            sub_22C36DD28(v213, &qword_27D9BD8E8, &unk_22C919AD0);
            sub_22C36DD28(v302, &qword_27D9BD8E8, &unk_22C919AD0);
            if (v216)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v224 = *(v304 + 16);
                sub_22C36D270();
                sub_22C591018();
                v304 = v225;
              }

              sub_22C558090();
              sub_22C37449C();
              v221 = *(v219 + 16);
              v220 = *(v219 + 24);
              if (v221 >= v220 >> 1)
              {
                sub_22C369AB0(v220);
                sub_22C591018();
                v304 = v226;
              }

              sub_22C37449C();
              *(v222 + 16) = v221 + 1;
              v223 = (v222 + 32 * v221);
              v223[4] = v141;
              v223[5] = v216;
              v223[6] = v211;
              v223[7] = v212;
            }

            else
            {
              sub_22C558090();
            }

            v191 = &qword_27D9BD8E8 + 1;
            v192 = v310 + 5;
            v140 = v300;
            if (v303 == (&qword_27D9BD8E8 + 1))
            {

              v161 = v278;
              v163 = v269;
              v187 = v268;
              goto LABEL_54;
            }
          }
        }

        v304 = MEMORY[0x277D84F90];
LABEL_54:
        v230 = *v187;
        v160 = v264;
        v231 = sub_22C49FB90(v161, v140 + *(v163 + 9));
        v227 = v283;
        if (!v160)
        {
          v233 = v231;
          v234 = v232;

          sub_22C532604(v233, v234, v304, v230, &v316);
          v169 = v276;

          v313 = v316;
          v314 = v317;
          v315 = v318;
          sub_22C474C14(v319);

          sub_22C36FF94(v320);

          sub_22C37F2B0();

          sub_22C557FE0();
          sub_22C36CCEC();
          sub_22C456D48(v255, v256);

          v141 = v319[0];
          v163 = v319[1];
          v160 = v319[2];
          v156 = v319[3];
LABEL_58:

          sub_22C456D48(v227, v140);

          sub_22C557FE0();
          sub_22C36CCEC();
          sub_22C456D48(v237, v238);
          v167 = v275;
          v168 = MEMORY[0x277D84F90];
LABEL_59:
          v239 = v272 & 1;
          v240 = v167;
          sub_22C558030();
          sub_22C456C30(v241, v242, v243, v244, v245, v246);
          type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
          v247 = sub_22C909F0C();

          sub_22C456CE4(v278, v283, v282, v288, v287, v273);
          sub_22C456CE4(v286, v285, v281, v284, v169, BYTE4(v273) & 1);
          sub_22C558030();
          sub_22C456CE4(v248, v249, v250, v251, v252, v253);
          v254 = v274;
          *v274 = v240;
          v254[1] = v141;
          v254[2] = v163;
          v254[3] = v160;
          v254[4] = v156;
          *(v254 + 40) = v239;
          v254[6] = v247;
          v254[7] = v168;
          sub_22C36CC48();
          return;
        }

        v156 = v286;
        sub_22C388CB8();
        v169 = v276;

        sub_22C36FF94(v320);

        sub_22C37F2B0();

        sub_22C377B94();
        sub_22C36CCEC();
        sub_22C456D48(v235, v236);
      }

      else
      {
        sub_22C36DD28(v320, &qword_27D9BD658, &qword_22C9186E0);

        v227 = v283;
        sub_22C37F2B0();

        sub_22C557FE0();
        v169 = v178;
        sub_22C36CCEC();
        sub_22C456D48(v228, v229);
      }

      sub_22C385D94();
      goto LABEL_58;
    }

    v129 = *(v123 + 16);
    if (v124 >= v129)
    {
      break;
    }

    v130 = (*(v312 + 80) + 32) & ~*(v312 + 80);
    v131 = *(v312 + 72);
    sub_22C557A88(v123 + v130 + v131 * v124, v126);
    sub_22C9097FC();
    sub_22C908FAC();
    sub_22C557DE4(&qword_27D9BD8C8, MEMORY[0x277D73128]);
    v132 = v126;
    v133 = v309;
    v134 = sub_22C90AE0C();
    v135 = *v125;
    (*v125)(v128, v133);
    v135(v127, v133);
    if (v134)
    {
      sub_22C557AE0(v132, type metadata accessor for PromptToolsHelper.RenderableParameter);
      ++v124;
      v126 = v132;
    }

    else
    {
      sub_22C557D60(v132, v290);
      sub_22C37022C(&v330);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v331 = v134;
      v126 = v132;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v137 = *(v134 + 16);
        sub_22C3B6F58();
        v134 = v331;
      }

      v139 = *(v134 + 16);
      v138 = *(v134 + 24);
      if (v139 >= v138 >> 1)
      {
        sub_22C369AB0(v138);
        sub_22C3B6F58();
        v134 = v331;
      }

      ++v124;
      *(v134 + 16) = v139 + 1;
      v305 = v134;
      sub_22C557D60(v290, v134 + v130 + v139 * v131);
    }

    v123 = v306;
  }

  __break(1u);
LABEL_61:
  __break(1u);

  __break(1u);
}

uint64_t sub_22C5508A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + *(type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(0) + 24));
  v6 = v5[3];
  v7 = v5[4];
  sub_22C374168(v5, v6);
  v8 = (*(v7 + 32))(a1, v6, v7);
  v10 = v9;
  v11 = v5[3];
  v12 = v5[4];
  sub_22C374168(v5, v11);
  if (v8 == (*(v12 + 32))(a2, v11, v12) && v10 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_22C90B4FC();
  }

  return v15 & 1;
}

void sub_22C5509B8()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C9099FC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v10 = sub_22C36BE24();
  v11 = (v0 + *(type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(v10) + 28));
  v12 = v11[3];
  v13 = v11[4];
  sub_22C374168(v11, v12);
  sub_22C908D7C();
  (*(v13 + 16))(v23, v1, v12, v13);
  v14 = *(v7 + 8);
  v15 = sub_22C36EBF0();
  v16(v15);
  v17 = v23[1];
  v18 = v24;
  if (v24)
  {

    v19 = 2;
  }

  else
  {
    v20 = v23[0];
    sub_22C36A83C();
    v19 = swift_allocObject();
    *(v19 + 16) = v20;
    *(v19 + 24) = v17;
  }

  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v21 = MEMORY[0x277D84F90];
  v22 = sub_22C909F0C();
  *v3 = v19;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = v18;
  *(v3 + 48) = v22;
  *(v3 + 56) = v21;
  sub_22C36CC48();
}

void sub_22C550B90()
{
  sub_22C370030();
  v2 = v0;
  v209 = v3;
  v210 = v4;
  v6 = v5;
  LODWORD(v223) = v7;
  v208 = v8;
  v211 = v9;
  v204 = v10;
  v11 = sub_22C90941C();
  v12 = sub_22C369824(v11);
  v185 = v13;
  v186 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v184 = v16;
  sub_22C36BA0C();
  v17 = sub_22C9063DC();
  v18 = sub_22C369824(v17);
  v196 = v19;
  v197 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v195 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  v187 = v24;
  sub_22C36BA0C();
  v219 = sub_22C908AEC();
  v25 = sub_22C369824(v219);
  v199 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  v203 = v29;
  v30 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  sub_22C369914(v30);
  v32 = *(v31 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  sub_22C36D5B4();
  v191 = v34;
  sub_22C36BA0C();
  v35 = sub_22C908DAC();
  v36 = sub_22C369824(v35);
  v189 = v37;
  v190 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  v188 = v40;
  sub_22C36BA0C();
  v202 = sub_22C908D6C();
  v41 = sub_22C369824(v202);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3698A8();
  v201 = v46;
  v47 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v48 = sub_22C369914(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C3698E4();
  v193 = v51;
  sub_22C369930();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  v192 = v53;
  sub_22C369930();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  v200 = v55;
  sub_22C369930();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA64();
  v198 = v57;
  sub_22C36BA0C();
  v207 = sub_22C9099FC();
  v58 = sub_22C369824(v207);
  v205 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C3698E4();
  v182 = v62;
  sub_22C369930();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA58();
  v183 = v64;
  sub_22C369930();
  v66 = MEMORY[0x28223BE20](v65);
  v68 = (&v180 - v67);
  MEMORY[0x28223BE20](v66);
  sub_22C36BA64();
  v206 = v69;
  v70 = *(v6 + 4);
  v71 = *(v6 + 40);
  v72 = type metadata accessor for ToolDefinitionRenderer_v5_0(0);
  v73 = *(v72 + 40);
  v194 = v2;
  v74 = &v2[v73];
  v75 = *&v2[v73 + 24];
  v76 = *(v74 + 4);
  sub_22C374168(v74, v75);
  v77 = *v6;
  v233[1] = v6[1];
  v233[0] = v77;
  v234 = v70;
  v235 = v71;
  (*(v76 + 16))(v236, v211, v208, v223, v233, v209, v210, v75, v76);
  if (v1)
  {
    goto LABEL_30;
  }

  v223 = v68;
  v180 = v72;
  v181 = 0;
  v229 = v236[0];
  v230 = v236[1];
  v231 = v236[2];
  v232 = v236[3];
  v78 = sub_22C908DEC();
  v79 = 0;
  v237 = *(v78 + 16);
  v221 = v43 + 88;
  v222 = v43 + 16;
  v220 = *MEMORY[0x277D72148];
  v213 = (v43 + 96);
  v214 = (v43 + 8);
  v212 = 0x800000022C932110;
  v216 = (v205 + 8);
  v217 = (v205 + 32);
  v80 = v207;
  v81 = v219;
  v83 = v201;
  v82 = v202;
  v84 = v200;
  v218 = v78;
  v215 = v43;
  while (v237 != v79)
  {
    v85 = *(v43 + 80);
    sub_22C36BA94();
    (*(v43 + 16))(v83, v78 + v86 + *(v43 + 72) * v79, v82);
    v87 = (*(v43 + 88))(v83, v82);
    if (v87 == v220)
    {
      v88 = v84;
      (*v213)(v83, v82);
      v89 = *v217;
      v90 = v80;
      (*v217)(v223, v83, v80);
      sub_22C9099DC();
      sub_22C37BE28();
      v92 = v92 && v212 == v91;
      if (v92)
      {
      }

      else
      {
        v93 = sub_22C382CE4();

        if ((v93 & 1) == 0)
        {
          v80 = v90;
          v89(v88, v223, v90);
          sub_22C36BECC();
          sub_22C36C640(v130, v131, v132, v90);
          sub_22C36DD28(v88, &qword_27D9BDC50, &unk_22C91B470);
          v78 = v218;
          v81 = v219;
          v43 = v215;
          goto LABEL_16;
        }
      }

      v80 = v90;
      (*v216)(v223, v90);
      v84 = v88;
      v43 = v215;
      v78 = v218;
      v81 = v219;
    }

    else
    {
      (*v214)(v83, v82);
    }

    v94 = sub_22C36E638();
    sub_22C36C640(v94, v95, 1, v80);
    sub_22C36DD28(v84, &qword_27D9BDC50, &unk_22C91B470);
    ++v79;
  }

  v79 = v237;
LABEL_16:
  v96 = *(v78 + 16);
  v97 = v206;
  v98 = v203;
  if (v79 == v96)
  {
    v99 = 1;
    v100 = v204;
    v101 = v198;
    v102 = v199;
    goto LABEL_21;
  }

  if (v79 >= v96)
  {
    __break(1u);
  }

  else
  {
    v103 = *(v43 + 80);
    sub_22C36BA94();
    v104 = *(v43 + 72);
    v105 = v192;
    sub_22C5791C0();
    v106 = v193;
    sub_22C379DF8(v105, v193, &qword_27D9BDC50, &unk_22C91B470);
    sub_22C36D0A8(v106, 1, v80);
    if (!v92)
    {
      v101 = v198;
      (*v217)(v198, v106, v80);
      sub_22C36DD28(v105, &qword_27D9BDC50, &unk_22C91B470);
      v99 = 0;
      v100 = v204;
      v102 = v199;
LABEL_21:
      sub_22C36C640(v101, v99, 1, v80);

      v107 = sub_22C36E638();
      sub_22C36D0A8(v107, v108, v80);
      if (v92)
      {
        v109 = &qword_27D9BDC50;
        v110 = &unk_22C91B470;
        v111 = v101;
      }

      else
      {
        v124 = *v217;
        v125 = sub_22C36EBF0();
        v126(v125);
        (*(v102 + 16))(v98, &v194[*(v180 + 36)], v81);
        v127 = v181;
        sub_22C9099CC();
        if (v127)
        {
          sub_22C3E022C(&v229);
          (*(v102 + 8))(v98, v81);
          v128 = sub_22C557EF4();
          v129(v128);
LABEL_30:
          sub_22C36FB20();
          return;
        }

        v181 = 0;
        v133 = v98;
        v134 = v81;
        v135 = v191;
        sub_22C908ACC();

        (*(v102 + 8))(v133, v134);
        v136 = sub_22C908ABC();
        sub_22C36D0A8(v135, 1, v136);
        if (!v92)
        {
          sub_22C36A948();
          v140 = v139;
          v142 = (*(v141 + 88))(v135, v136);
          if (v142 == *MEMORY[0x277D1E8D0])
          {
            (*(v140 + 96))(v135, v136);
            (*(v189 + 32))(v188, v135, v190);
            v143 = v187;
            sub_22C903F7C();
            v144 = *(v205 + 16);
            v145 = v183;
            v144(v183, v97, v80);
            v146 = sub_22C9063CC();
            sub_22C90AACC();
            v147 = sub_22C37E2D0();
            if (os_log_type_enabled(v147, v148))
            {
              sub_22C36BED8();
              v149 = swift_slowAlloc();
              sub_22C370220();
              v223 = swift_slowAlloc();
              *&v225 = v223;
              *v149 = 136315138;
              v144(v182, v145, v80);
              v150 = sub_22C90A1AC();
              v151 = v80;
              v153 = v152;
              v238 = *v216;
              (*v216)(v145, v151);
              v154 = sub_22C36F9F4(v150, v153, &v225);

              *(v149 + 4) = v154;
              sub_22C3839B4();
              _os_log_impl(v155, v156, v157, v158, v149, 0xCu);
              sub_22C36FF94(v223);
              sub_22C369B50();
              MEMORY[0x2318B9880]();
              v159 = sub_22C36D66C();
              MEMORY[0x2318B9880](v159);

              (*(v196 + 8))(v187, v197);
            }

            else
            {

              v238 = *v216;
              (*v216)(v145, v80);
              (*(v196 + 8))(v143, v197);
            }

            v163 = *(v194 + 23);
            v162 = *(v194 + 24);
            sub_22C374168(v194 + 20, v163);
            sub_22C908DCC();
            v164 = v181;
            sub_22C54D210();
            v166 = sub_22C54D548(v165);

            v168 = v184;
            MEMORY[0x2318B6290](v167);
            v169 = sub_22C908E7C();
            v179 = v163;
            v170 = v188;
            (*(v162 + 8))(&v225, v188, v166, v168, v169, v171, v208, v209, v210, v179, v162);
            if (v164)
            {

              sub_22C3E022C(&v229);
              (*(v185 + 8))(v168, v186);
              (*(v189 + 8))(v170, v190);
              v238(v206, v207);
            }

            else
            {
              (*(v185 + 8))(v168, v186);

              v224[0] = v225;
              v224[1] = v226;
              v224[2] = v227;
              v224[3] = v228;
              v181 = 0;
              v172 = v225;
              v173 = v226;
              v174 = v227;
              v175 = BYTE8(v227);
              v176 = v232;
              sub_22C456C30(v225, *(&v225 + 1), v226, *(&v226 + 1), v227, SBYTE8(v227));

              sub_22C3E022C(v224);
              (*(v189 + 8))(v170, v190);
              v238(v206, v207);
              sub_22C3E022C(&v229);
              v177 = v204;
              *v204 = v172;
              v177[1] = v173;
              *(v177 + 4) = v174;
              *(v177 + 40) = v175;
              v178 = MEMORY[0x277D84F90];
              *(v177 + 6) = v176;
              *(v177 + 7) = v178;
            }

            goto LABEL_30;
          }

          v160 = sub_22C557EF4();
          v161(v160);
          (*(v140 + 8))(v135, v136);
LABEL_25:
          v112 = v195;
          sub_22C903F7C();
          v113 = sub_22C9063CC();
          sub_22C90AACC();
          v114 = sub_22C37E2D0();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            *v116 = 0;
            sub_22C3839B4();
            _os_log_impl(v117, v118, v119, v120, v116, 2u);
            v121 = sub_22C36D66C();
            MEMORY[0x2318B9880](v121);
          }

          (*(v196 + 8))(v112, v197);
          v122 = v230;
          *v100 = v229;
          v100[1] = v122;
          v123 = v232;
          v100[2] = v231;
          v100[3] = v123;
          goto LABEL_30;
        }

        v137 = sub_22C557EF4();
        v138(v137);
        v109 = &qword_27D9BC0B0;
        v110 = &unk_22C912AD0;
        v111 = v135;
      }

      sub_22C36DD28(v111, v109, v110);
      goto LABEL_25;
    }
  }

  __break(1u);
}

void sub_22C551934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v24;
  a20 = v25;
  v174 = v21;
  v171 = v26;
  v169 = v27;
  v29 = v28;
  v30 = sub_22C9063DC();
  v31 = sub_22C36A7A4(v30, &a10);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  sub_22C3698F8(v34);
  v35 = sub_22C908AEC();
  v36 = sub_22C369824(v35);
  v173 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  v40 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  sub_22C369914(v40);
  v42 = *(v41 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v43);
  sub_22C36D5B4();
  sub_22C3698F8(v44);
  v45 = sub_22C908DAC();
  v46 = sub_22C36A7A4(v45, &a12);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698A8();
  sub_22C3698F8(v49);
  v50 = sub_22C908D6C();
  v51 = sub_22C369824(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C369838();
  sub_22C387210();
  v56 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v57 = sub_22C369914(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v61);
  sub_22C36BA58();
  v180 = v62;
  sub_22C369930();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA64();
  v172 = v64;
  sub_22C36BA0C();
  v65 = sub_22C9099FC();
  v66 = sub_22C369824(v65);
  v167 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v70);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v71);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v72);
  sub_22C36BA64();
  v170 = v29;
  v73 = sub_22C908DEC();
  v74 = sub_22C557F24(v73);
  sub_22C3812C4(v74, *MEMORY[0x277D72148]);
  sub_22C372FE8("ShowInAppSearchResultsIntent");
  while (v181 != v22)
  {
    sub_22C557EA0();
    v75 = sub_22C37E178();
    v76(v75);
    v77 = *(v53 + 88);
    v78 = sub_22C37B220();
    if (v79(v78) == v179)
    {
      v80 = sub_22C37FDF4();
      v81(v80);
      v23 = *v178;
      v82 = sub_22C377B94();
      v83 = v65;
      v23(v82);
      sub_22C9099DC();
      sub_22C37BE28();
      v85 = v85 && v175 == v84;
      if (v85)
      {
      }

      else
      {
        v65 = sub_22C382CE4();

        if ((v65 & 1) == 0)
        {
          v119 = sub_22C557FA4();
          v23(v119);
          sub_22C36BECC();
          sub_22C36C640(v120, v121, v122, v83);
          sub_22C36DD28(v20, &qword_27D9BDC50, &unk_22C91B470);
          v23 = v176;
          v29 = v177;
          goto LABEL_15;
        }
      }

      v88 = sub_22C558018();
      v89(v88);
      v29 = v177;
    }

    else
    {
      v86 = sub_22C37FDF4();
      v87(v86);
    }

    v90 = sub_22C36E638();
    sub_22C5580F8(v90, v91);
    sub_22C36DD28(v180, &qword_27D9BDC50, &unk_22C91B470);
    v22 = (v22 + 1);
  }

  v22 = v181;
LABEL_15:
  v92 = *(v29 + 16);
  if (v22 == v92)
  {
    sub_22C558064();
    goto LABEL_20;
  }

  if (v22 >= v92)
  {
    __break(1u);
  }

  else
  {
    sub_22C557EA0();
    sub_22C374490(&a16);
    sub_22C5791C0();
    sub_22C5580B8(&a17);
    sub_22C379DF8(v94, v95, v96, v97);
    sub_22C36D0A8(v29, 1, v65);
    if (!v85)
    {
      v98 = *v178;
      v99 = sub_22C38674C();
      v100(v99);
      sub_22C36DD28(v22, &qword_27D9BDC50, &unk_22C91B470);
      sub_22C558064();
LABEL_20:
      sub_22C5580F8(v172, v93);

      v101 = sub_22C36E638();
      sub_22C36D0A8(v101, v102, v65);
      if (v85)
      {
        v103 = &qword_27D9BDC50;
        v104 = &unk_22C91B470;
        v105 = v172;
      }

      else
      {
        v110 = sub_22C557F44();
        v111(v110);
        v112 = type metadata accessor for ToolDefinitionRenderer_v5_0(0);
        v113 = sub_22C37AC38(v112);
        v114(v113);
        sub_22C9099CC();
        if (v53)
        {
          v115 = *(v173 + 8);
          v116 = sub_22C372FA4();
          v117(v116);
          v23 = *v23;
          v118 = sub_22C557F18();
LABEL_27:
          v23(v118);
          goto LABEL_28;
        }

        sub_22C36D2E8(&a15);
        sub_22C908ACC();

        v123 = *(v173 + 8);
        v124 = sub_22C372FA4();
        v125(v124);
        v126 = sub_22C908ABC();
        sub_22C36D0A8(v173, 1, v126);
        if (!v85)
        {
          sub_22C36A948();
          v130 = v129;
          v132 = *(v131 + 88);
          v133 = sub_22C377B94();
          v135 = v134(v133);
          if (v135 == *MEMORY[0x277D1E8D0])
          {
            v136 = *(v130 + 96);
            v137 = sub_22C377B94();
            v138(v137);
            sub_22C3722F4(&a11);
            v139(v168, v173);
            sub_22C903F7C();
            v140 = *(v167 + 16);
            v141 = sub_22C55807C(&v181);
            v140(v141);
            v142 = sub_22C9063CC();
            LODWORD(v180) = sub_22C90AACC();
            if (os_log_type_enabled(v142, v180))
            {
              sub_22C36BED8();
              v143 = swift_slowAlloc();
              v181 = v65;
              v144 = v143;
              sub_22C370220();
              v145 = swift_slowAlloc();
              a10 = v145;
              *v144 = 136315138;
              v146 = sub_22C372274(&v180);
              (v140)(v146, v173, v181);
              sub_22C90A1AC();
              sub_22C50B42C();
              v147 = sub_22C381A8C();
              (v23)(v147, v181);
              v148 = sub_22C36CA88();
              sub_22C36F9F4(v148, v149, v150);
              sub_22C383BE4();
              v22 = v174;

              *(v144 + 4) = v140;
              sub_22C38B1A0(&dword_22C366000, v151, v152, "Tool definition has a conformance to assistant schema %s. Rendering the schema");
              sub_22C36FF94(v145);
              sub_22C369B50();
              MEMORY[0x2318B9880]();
              sub_22C369B50();
              MEMORY[0x2318B9880]();

              sub_22C36FB04(&a9);
            }

            else
            {

              v158 = sub_22C381A8C();
              (v23)(v158, v65);
              sub_22C36FB04(&a9);
            }

            sub_22C3837F8();
            v159();
            v160 = v22[23];
            v161 = v22[24];
            sub_22C386CB8(v22 + 20);
            v163 = *(v162 + 24);
            v164 = sub_22C558000();
            v165(v164);
            sub_22C36FB04(&a11);
            v166(v173);
            v118 = sub_22C557F18();
            goto LABEL_27;
          }

          v153 = sub_22C36FD3C();
          v154(v153);
          v155 = *(v130 + 8);
          v156 = sub_22C377B94();
          v157(v156);
LABEL_24:
          v106 = (v22 + *(type metadata accessor for ToolDefinitionRenderer_v5_0(0) + 40));
          v107 = v106[3];
          v108 = v106[4];
          sub_22C386CB8(v106);
          (*(v109 + 40))(v170, v169 & 1, v171, v107, v108);
LABEL_28:
          sub_22C36FB20();
          return;
        }

        v127 = sub_22C36FD3C();
        v128(v127);
        v103 = &qword_27D9BC0B0;
        v104 = &unk_22C912AD0;
        v105 = v173;
      }

      sub_22C36DD28(v105, v103, v104);
      goto LABEL_24;
    }
  }

  __break(1u);
}

void sub_22C5522E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v24;
  a20 = v25;
  v169 = v21;
  v166 = v26;
  sub_22C369A48();
  v27 = sub_22C9063DC();
  v28 = sub_22C36A7A4(v27, &a11);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  sub_22C3698F8(v31);
  v32 = sub_22C908AEC();
  v33 = sub_22C369824(v32);
  v168 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C3698A8();
  v37 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  sub_22C369914(v37);
  v39 = *(v38 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v40);
  sub_22C36D5B4();
  sub_22C3698F8(v41);
  v42 = sub_22C908DAC();
  v43 = sub_22C36A7A4(v42, &a13);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22C3698A8();
  sub_22C3698F8(v46);
  v47 = sub_22C908D6C();
  v48 = sub_22C369824(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C369838();
  sub_22C387210();
  v53 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v54 = sub_22C369914(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  v175 = v59;
  sub_22C369930();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA64();
  v167 = v61;
  sub_22C36BA0C();
  v62 = sub_22C9099FC();
  v63 = sub_22C369824(v62);
  v163 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v68);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v69);
  sub_22C36BA64();
  v165 = v21;
  v70 = sub_22C908DEC();
  v71 = sub_22C557F24(v70);
  sub_22C3812C4(v71, *MEMORY[0x277D72148]);
  sub_22C372FE8("ShowInAppSearchResultsIntent");
  while (v177 != v22)
  {
    sub_22C557EA0();
    v72 = sub_22C37E178();
    v73(v72);
    v74 = *(v50 + 88);
    v75 = sub_22C37B220();
    if (v76(v75) == v174)
    {
      v77 = sub_22C37FDF4();
      v78(v77);
      v23 = *v173;
      v79 = sub_22C377B94();
      v80 = v62;
      v23(v79);
      sub_22C9099DC();
      sub_22C37BE28();
      v82 = v82 && v170 == v81;
      if (v82)
      {
      }

      else
      {
        v62 = sub_22C382CE4();

        if ((v62 & 1) == 0)
        {
          v116 = sub_22C557FA4();
          v23(v116);
          sub_22C36BECC();
          sub_22C36C640(v117, v118, v119, v80);
          sub_22C36DD28(v20, &qword_27D9BDC50, &unk_22C91B470);
          v23 = v171;
          v21 = v172;
          goto LABEL_15;
        }
      }

      v85 = sub_22C558018();
      v86(v85);
      v21 = v172;
    }

    else
    {
      v83 = sub_22C37FDF4();
      v84(v83);
    }

    v87 = sub_22C36E638();
    sub_22C5580F8(v87, v88);
    sub_22C36DD28(v175, &qword_27D9BDC50, &unk_22C91B470);
    v22 = (v22 + 1);
  }

  v22 = v177;
LABEL_15:
  v89 = *(v21 + 16);
  if (v22 == v89)
  {
    sub_22C558064();
    goto LABEL_20;
  }

  if (v22 >= v89)
  {
    __break(1u);
  }

  else
  {
    sub_22C557EA0();
    sub_22C374490(&a17);
    sub_22C5791C0();
    sub_22C5580B8(&a18);
    sub_22C379DF8(v91, v92, v93, v94);
    sub_22C36D0A8(v21, 1, v62);
    if (!v82)
    {
      v95 = *v173;
      v96 = sub_22C38674C();
      v97(v96);
      sub_22C36DD28(v22, &qword_27D9BDC50, &unk_22C91B470);
      sub_22C558064();
LABEL_20:
      sub_22C5580F8(v167, v90);

      v98 = sub_22C36E638();
      sub_22C36D0A8(v98, v99, v62);
      if (v82)
      {
        v100 = &qword_27D9BDC50;
        v101 = &unk_22C91B470;
        v102 = v167;
      }

      else
      {
        v107 = sub_22C557F44();
        v108(v107);
        v109 = type metadata accessor for ToolDefinitionRenderer_v5_0(0);
        v110 = sub_22C37AC38(v109);
        v111(v110);
        sub_22C9099CC();
        if (v50)
        {
          v112 = *(v168 + 8);
          v113 = sub_22C372FA4();
          v114(v113);
          v23 = *v23;
          v115 = sub_22C557F18();
LABEL_27:
          v23(v115);
          goto LABEL_28;
        }

        sub_22C36D2E8(&a16);
        sub_22C908ACC();

        v120 = *(v168 + 8);
        v121 = sub_22C372FA4();
        v122(v121);
        v123 = sub_22C908ABC();
        sub_22C36D0A8(v168, 1, v123);
        if (!v82)
        {
          sub_22C36A948();
          v127 = v126;
          v129 = *(v128 + 88);
          v130 = sub_22C377B94();
          v132 = v131(v130);
          if (v132 == *MEMORY[0x277D1E8D0])
          {
            v133 = *(v127 + 96);
            v134 = sub_22C377B94();
            v135(v134);
            sub_22C3722F4(&a12);
            v136(v164, v168);
            sub_22C903F7C();
            v137 = *(v163 + 16);
            v138 = sub_22C55807C(&v178);
            v137(v138);
            v139 = sub_22C9063CC();
            v176 = sub_22C90AACC();
            if (os_log_type_enabled(v139, v176))
            {
              sub_22C36BED8();
              v177 = v62;
              v140 = swift_slowAlloc();
              sub_22C370220();
              v141 = swift_slowAlloc();
              a10 = v141;
              *v140 = 136315138;
              v142 = sub_22C372274(&v177);
              (v137)(v142, v168, v177);
              sub_22C90A1AC();
              sub_22C50B42C();
              v143 = sub_22C381A8C();
              (v23)(v143, v177);
              v144 = sub_22C36CA88();
              sub_22C36F9F4(v144, v145, v146);
              sub_22C383BE4();
              v22 = v169;

              *(v140 + 4) = v137;
              sub_22C38B1A0(&dword_22C366000, v147, v148, "Tool definition has a conformance to assistant schema %s. Rendering the schema");
              sub_22C36FF94(v141);
              sub_22C369B50();
              MEMORY[0x2318B9880]();
              sub_22C369B50();
              MEMORY[0x2318B9880]();

              sub_22C36FB04(&a10);
            }

            else
            {

              v155 = sub_22C381A8C();
              (v23)(v155, v62);
              sub_22C36FB04(&a10);
            }

            v149();
            v156 = v22[23];
            v157 = v22[24];
            sub_22C386CB8(v22 + 20);
            v159 = *(v158 + 24);
            v160 = sub_22C558000();
            v161(v160);
            sub_22C36FB04(&a12);
            v162(v168);
            v115 = sub_22C557F18();
            goto LABEL_27;
          }

          v150 = sub_22C36FD3C();
          v151(v150);
          v152 = *(v127 + 8);
          v153 = sub_22C377B94();
          v154(v153);
LABEL_24:
          v103 = (v22 + *(type metadata accessor for ToolDefinitionRenderer_v5_0(0) + 40));
          v104 = v103[3];
          v105 = v103[4];
          sub_22C386CB8(v103);
          (*(v106 + 32))(v165, v166, v104, v105);
LABEL_28:
          sub_22C36FB20();
          return;
        }

        v124 = sub_22C36FD3C();
        v125(v124);
        v100 = &qword_27D9BC0B0;
        v101 = &unk_22C912AD0;
        v102 = v168;
      }

      sub_22C36DD28(v102, v100, v101);
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t sub_22C552CC4()
{
  sub_22C51E374();
  sub_22C378AB0(v0, v7);
  sub_22C379DF8(v0 + 40, v10, &qword_27D9BD8A8, &qword_22C919AA0);
  v1 = v8;
  v2 = v9;
  sub_22C374168(v7, v8);
  v5[3] = v1;
  v5[4] = *(v2 + 8);
  sub_22C557D04(v5);
  sub_22C36BBA8(v1);
  (*(v3 + 16))();
  sub_22C379DF8(v10, &v6, &qword_27D9BD8A8, &qword_22C919AA0);
  sub_22C3804EC();
  sub_22C4FC044();
  sub_22C4BF340(v5);
  return sub_22C4C3588(v7);
}

uint64_t sub_22C552DC8()
{
  sub_22C51E374();
  sub_22C378AB0(v0, v2);
  sub_22C379DF8(v0 + 40, &v3, &qword_27D9BD8A8, &qword_22C919AA0);
  sub_22C3804EC();
  sub_22C51A210();
  return sub_22C4C3588(v2);
}

uint64_t sub_22C552F70()
{
  sub_22C51E374();
  sub_22C7F4FB4();
  sub_22C50B42C();
  sub_22C3804EC();
  sub_22C552FE4();
}

void sub_22C552FE4()
{
  sub_22C36BA7C();
  v461 = v0;
  v460 = v2;
  v459 = v3;
  v433 = v4;
  v446 = v5;
  v7 = v6;
  v452 = v8;
  v425 = type metadata accessor for PromptTreeIdentifier(0);
  v9 = sub_22C36985C(v425);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v426 = v12;
  v13 = sub_22C3A5908(&qword_27D9BD8B8, &qword_22C919AB0);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C36D5B4();
  sub_22C3698F8(v17);
  v18 = sub_22C9096DC();
  v19 = sub_22C36A7A4(v18, &v465);
  v442 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698A8();
  v441 = v23;
  v24 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v25 = sub_22C369914(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA64();
  sub_22C3698F8(v32);
  v33 = sub_22C9099FC();
  v34 = sub_22C36A7A4(v33, &v473);
  v422 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA64();
  v40 = sub_22C3698F8(v39);
  v449 = type metadata accessor for TypeIdentifierRenderer_v5_0(v40);
  v41 = sub_22C36985C(v449);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA64();
  sub_22C3698F8(v46);
  v47 = sub_22C9094EC();
  v48 = sub_22C36A7A4(v47, &v471);
  v440 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C3698A8();
  sub_22C3698F8(v52);
  v53 = sub_22C90952C();
  v54 = sub_22C36A7A4(v53, &v477);
  v457 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA64();
  sub_22C3698F8(v60);
  v61 = sub_22C9063DC();
  v62 = sub_22C36A7A4(v61, &v480);
  v453 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v66);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v68);
  sub_22C36BA64();
  sub_22C3698F8(v69);
  v70 = sub_22C90430C();
  v71 = sub_22C369824(v70);
  v465 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22C369ABC();
  v77 = v75 - v76;
  MEMORY[0x28223BE20](v78);
  sub_22C36BA64();
  v469 = v79;
  sub_22C36BA0C();
  v80 = sub_22C9095CC();
  v81 = sub_22C36A7A4(v80, &v469);
  v437 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  sub_22C3698A8();
  sub_22C3698F8(v85);
  v86 = sub_22C90998C();
  v87 = sub_22C36A7A4(v86, &v462);
  v432 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22C3698A8();
  sub_22C3698F8(v91);
  v92 = sub_22C90947C();
  v93 = sub_22C36A7A4(v92, &v481);
  v456 = v94;
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v93);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v97);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v98);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v99);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v100);
  sub_22C36BA64();
  sub_22C3698F8(v101);
  v468 = sub_22C90077C();
  v102 = sub_22C369824(v468);
  v104 = v103;
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v102);
  sub_22C369838();
  v109 = v108 - v107;
  v110 = sub_22C908A8C();
  v111 = sub_22C369824(v110);
  v113 = v112;
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v111);
  sub_22C369838();
  v118 = v117 - v116;
  v119 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  v120 = sub_22C369914(v119);
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v123);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v124);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v125);
  v127 = &v418 - v126;
  v128 = sub_22C908B2C();
  MEMORY[0x2318B6010](v128);
  v462 = v127;
  v458 = v7;
  sub_22C908B1C();
  v447 = 0;
  (*(v104 + 8))(v109, v468);
  (*(v113 + 8))(v118, v110);
  v129 = v462;
  v130 = v455;
  sub_22C36C640(v462, 0, 1, v455);
  sub_22C379DF8(v129, v1, &qword_27D9BC3B0, &unk_22C912AF0);
  sub_22C376738(v1);
  v131 = v467;
  if (v368)
  {
    sub_22C36DD28(v1, &qword_27D9BC3B0, &unk_22C912AF0);
    v118 = v456;
  }

  else
  {
    sub_22C36D2E8(&v482);
    v133 = v463;
    (*(v132 + 32))(v463, v1, v130);
    (*(v118 + 16))(v445, v133, v130);
    v134 = *(v118 + 88);
    v135 = sub_22C36BC58();
    v137 = v136(v135);
    if (v137 == *MEMORY[0x277D72B48])
    {
      v138 = *(v118 + 96);
      v139 = sub_22C36BC58();
      v140(v139);
      sub_22C374490(&v461);
      v142 = *(v141 + 32);
      v143 = v431;
      sub_22C557F60();
      v144();
      v145 = (v461 + *(v449 + 24));
      v146 = v130;
      v147 = v145[3];
      v148 = v145[4];
      sub_22C375EAC(v145);
      (*(v148 + 16))(v143, v433, v147, v148);
      v149 = sub_22C557FC0();
      v150(v149);
      (*(v118 + 8))(v133, v146);
      v151 = sub_22C3720E8();
      sub_22C36DD28(v151, v152, v153);
      goto LABEL_74;
    }

    v154 = *(v118 + 8);
    v155 = sub_22C372FCC();
    v154(v155);
    v156 = sub_22C36BC58();
    v154(v156);
  }

  v475 = v459;
  v476 = v460;
  v157 = sub_22C3720E8();
  v158 = v464;
  sub_22C379DF8(v157, v464, v159, v160);
  sub_22C376738(v158);
  if (v368)
  {

    sub_22C36DD28(v158, &qword_27D9BC3B0, &unk_22C912AF0);
    goto LABEL_24;
  }

  (*(v118 + 32))(v466, v158, v130);
  v161 = *(v118 + 16);
  sub_22C38399C();
  v162();
  v163 = *(v118 + 88);
  v164 = sub_22C372FCC();
  v166 = v165(v164);
  if (v166 != *MEMORY[0x277D72B68])
  {
    v185 = *(v118 + 8);

    v186 = sub_22C36BC58();
    v185(v186);
    v187 = sub_22C372FCC();
    v185(v187);
    goto LABEL_24;
  }

  v167 = *(v118 + 96);
  v168 = sub_22C372FCC();
  v169(v168);
  sub_22C3722F4(&v468);
  v170 = sub_22C37B220();
  v171(v170);

  sub_22C47E38C();
  v445 = v172;
  v173 = 0;
  v464 = v174;
  v463 = *(v174 + 16);
  v175 = (v465 + 8);
  v176 = v469;
  while (v173 != v463)
  {
    v177 = *(v465 + 72);
    v178 = (*(v465 + 80) + 32) & ~*(v465 + 80);
    v468 = v173;
    v179 = *(v465 + 16);
    v179(v176, v464 + v178 + v177 * v173, v70);
    v180 = v476 + v178;
    if (!v475)
    {
      v183 = *(v476 + 16) + 1;
      while (--v183)
      {
        v179(v77, v180, v70);
        sub_22C557DE4(&qword_27D9BC808, MEMORY[0x277D85578]);
        v184 = sub_22C90A0BC();
        (*v175)(v77, v70);
        v180 += v177;
        if (v184)
        {
          goto LABEL_21;
        }
      }

LABEL_20:
      sub_22C7D4BE0();
      goto LABEL_21;
    }

    sub_22C36BA00();
    sub_22C7DB73C();
    v182 = v181;

    if (v182)
    {
      goto LABEL_20;
    }

LABEL_21:
    v176 = v469;
    v173 = v468 + 1;
    (*v175)(v469, v70);
    v131 = v467;
  }

  sub_22C36FB04(&v468);
  v188(v436, v438);
  v189 = *(v456 + 8);
  sub_22C558070();
  v190();
LABEL_24:
  v469 = v476;
  v191 = v461;
  v192 = v451;
  if (*(v476 + 16))
  {
    v193 = v450;
    sub_22C903F7C();
    v194 = v457;
    v195 = *(v457 + 16);
    v195(v131, v458, v192);

    v196 = sub_22C9063CC();
    v197 = sub_22C90AACC();

    if (os_log_type_enabled(v196, v197))
    {
      v198 = v194;
      v199 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      sub_22C37E870(v200);
      *v199 = 136315394;
      v201 = v197;
      v202 = sub_22C372274(&v459);
      v195(v202, v131, v192);
      sub_22C90A1AC();
      sub_22C50B42C();
      (*(v198 + 8))(v131, v192);
      v203 = sub_22C36CA88();
      sub_22C36F9F4(v203, v204, v205);
      sub_22C383BE4();

      *(v199 + 4) = v195;
      *(v199 + 12) = 2080;
      sub_22C557B40();
      v208 = sub_22C36F9F4(v206, v207, &v477);

      *(v199 + 14) = v208;
      _os_log_impl(&dword_22C366000, v196, v201, "Rendering type identifier %s with supplimentary UTTypes: %s", v199, 0x16u);
      swift_arrayDestroy();
      v209 = sub_22C36D66C();
      MEMORY[0x2318B9880](v209);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      sub_22C37449C();
      v211 = *(v210 + 8);
      (v211)(v450, v454);
    }

    else
    {

      (*(v194 + 8))(v131, v192);
      sub_22C37449C();
      v211 = *(v212 + 8);
      (v211)(v193, v454);
    }

    sub_22C3759C4(&v474);
    sub_22C903F7C();
    v213 = sub_22C9063CC();
    v214 = sub_22C90AACC();
    if (os_log_type_enabled(v213, v214))
    {
      sub_22C36BED8();
      v215 = swift_slowAlloc();
      sub_22C370220();
      v216 = swift_slowAlloc();
      v468 = v211;
      sub_22C37E870(v216);
      *v215 = 136315138;
      swift_beginAccess();

      sub_22C36CA88();
      sub_22C557B40();
      v218 = v217;
      v220 = v219;

      v192 = v451;
      v221 = sub_22C36F9F4(v218, v220, &v477);
      v191 = v461;

      *(v215 + 4) = v221;
      _os_log_impl(&dword_22C366000, v213, v214, "Final list of UTTypes after extracting those from the type identifier: %s", v215, 0xCu);
      sub_22C36FF94(v211);
      v222 = sub_22C36D66C();
      MEMORY[0x2318B9880](v222);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      sub_22C37449C();
      v223 = sub_22C3814BC();
      v468(v223);
    }

    else
    {

      sub_22C37449C();
      v224 = sub_22C3814BC();
      (v211)(v224);
      v191 = v461;
    }
  }

  v225 = swift_beginAccess();
  v226 = v475;
  MEMORY[0x28223BE20](v225);
  *(&v418 - 2) = v191;

  v227 = v469;

  sub_22C604438(MEMORY[0x277D84F98], sub_22C557A6C, (&v418 - 4), v226, v227);

  sub_22C37205C(&v475);
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v228);
  v229 = v457;
  v230 = *(v457 + 88);
  v231 = sub_22C371530();
  v233 = v232(v231);
  v234 = v191;
  if (v233 == *MEMORY[0x277D72D50])
  {
    v235 = *(v229 + 96);
    v236 = sub_22C371530();
    v237(v236);
    swift_projectBox();
    sub_22C374490(&v470);
    v239 = *(v238 + 16);
    v240 = v439;
    sub_22C557F60();
    v241();
    v242 = (v191 + *(v449 + 28));
    v243 = v242[3];
    v244 = v242[4];
    sub_22C374168(v242, v243);
    sub_22C36D10C();
    v246 = v245(&v477, v240, v243, v244);
    MEMORY[0x28223BE20](v246);
    v247 = v446;
    *(&v418 - 2) = &v475;
    *(&v418 - 1) = v247;
    sub_22C54DBA0(sub_22C557B38, v452);
    sub_22C36DD28(&v477, &qword_27D9BAB08, &qword_22C91A110);
    v248 = sub_22C557FC0();
    v249(v248);
    v250 = sub_22C3720E8();
    sub_22C36DD28(v250, v251, v252);

    goto LABEL_33;
  }

  if (v233 == *MEMORY[0x277D72D30])
  {
    v253 = *(v229 + 8);
    v254 = sub_22C371530();
    v255(v254);
    sub_22C3759C4(&v457);
    sub_22C903F7C();
    sub_22C38BAC0();
    v256 = v430;
    sub_22C557A88(v191, v430);
    v257 = sub_22C9063CC();
    sub_22C90AACC();
    v258 = sub_22C37E2D0();
    if (os_log_type_enabled(v258, v259))
    {
      sub_22C36BED8();
      v260 = swift_slowAlloc();
      sub_22C370220();
      v261 = swift_slowAlloc();
      sub_22C37E870(v261);
      *v260 = 136315138;
      sub_22C38BAC0();
      v262 = v429;
      sub_22C557A88(v256, v429);
      sub_22C90A1AC();
      sub_22C50B42C();
      sub_22C371930();
      sub_22C557AE0(v256, v263);
      v264 = sub_22C36CA88();
      sub_22C36F9F4(v264, v265, v266);
      sub_22C383BE4();

      *(v260 + 4) = v262;
      sub_22C3839B4();
      _os_log_impl(v267, v268, v269, v270, v260, 0xCu);
      sub_22C36FF94(&v475);
      v271 = sub_22C36D66C();
      MEMORY[0x2318B9880](v271);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {

      sub_22C371930();
      sub_22C557AE0(v256, v284);
    }

    sub_22C36FB04(&v479);
    v285(v131, v454);
    v286 = sub_22C3720E8();
    sub_22C36DD28(v286, v287, v288);

    sub_22C388268();
    goto LABEL_74;
  }

  if (v233 != *MEMORY[0x277D72D28])
  {
    v289 = v427;
    sub_22C903F7C();
    sub_22C38BAC0();
    v290 = v428;
    sub_22C557A88(v191, v428);
    v291 = sub_22C9063CC();
    sub_22C90AACC();
    v292 = sub_22C37E2D0();
    if (os_log_type_enabled(v292, v293))
    {
      sub_22C36BED8();
      v294 = v289;
      v295 = swift_slowAlloc();
      sub_22C370220();
      v296 = swift_slowAlloc();
      sub_22C37E870(v296);
      *v295 = 136315138;
      sub_22C38BAC0();
      v297 = v429;
      sub_22C557A88(v290, v429);
      sub_22C90A1AC();
      sub_22C50B42C();
      sub_22C371930();
      sub_22C557AE0(v290, v298);
      v299 = sub_22C36CA88();
      sub_22C36F9F4(v299, v300, v301);
      sub_22C383BE4();

      *(v295 + 4) = v297;
      sub_22C3839B4();
      _os_log_impl(v302, v303, v304, v305, v295, 0xCu);
      sub_22C36FF94(&v475);
      v306 = sub_22C36D66C();
      MEMORY[0x2318B9880](v306);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      sub_22C36FB04(&v479);
      v308 = v294;
    }

    else
    {

      sub_22C371930();
      sub_22C557AE0(v290, v315);
      sub_22C36FB04(&v479);
      v308 = v289;
    }

    v307(v308, v454);
    v316 = sub_22C3720E8();
    sub_22C36DD28(v316, v317, v318);
    sub_22C388268();
    sub_22C36FB04(&v483);
    v319(v448, v192);

LABEL_33:

    goto LABEL_74;
  }

  v272 = *(v229 + 96);
  v273 = sub_22C371530();
  v274(v273);
  v276 = v418[2];
  v275 = v418[3];
  v277 = v418[4];
  v278 = v418[5];
  v467 = v418;

  sub_22C900AAC();
  sub_22C54CE60();

  sub_22C3AD9E8();
  v279 = v449;
  if (qword_27D9BA698 != -1)
  {
    sub_22C37B648();
  }

  sub_22C7B539C();
  sub_22C5E94F0();
  v281 = v280;

  v282 = v456;
  v466 = v226;
  if (v281)
  {
    v283 = v234;
    goto LABEL_70;
  }

  v309 = sub_22C3720E8();
  v310 = v424;
  sub_22C379DF8(v309, v424, v311, v312);
  v313 = v455;
  v314 = sub_22C370B74(v310, 1, v455);
  v465 = v277;
  if (v314 == 1)
  {
    sub_22C36DD28(v310, &qword_27D9BC3B0, &unk_22C912AF0);
    goto LABEL_64;
  }

  v320 = v278;
  sub_22C5580C4();
  v321 = v310;
  v322 = v423;
  (*(v282 + 32))(v423, v321, v313);
  v323 = v322;
  v324 = 0;
  v468 = sub_22C57E808();
  v325 = *(v468 + 2);
  v326 = *MEMORY[0x277D73010];
  v327 = (v442 + 8);
  v328 = v441;
  while (1)
  {
    if (v325 == v324)
    {
      v324 = v325;
      v338 = v443;
      goto LABEL_56;
    }

    v329 = v442;
    v330 = *(v442 + 80);
    sub_22C36BA94();
    v332 = v328;
    v333 = v435;
    (*(v329 + 16))(v332, v468 + v331 + *(v329 + 72) * v324, v435);
    v334 = *(v329 + 88);
    v323 = v333;
    v328 = v441;
    if (v334(v441, v323) == v326)
    {
      break;
    }

    (*v327)(v328, v323);
    sub_22C37022C(&v464);
    sub_22C36A748();
    sub_22C36C640(v335, v336, v337, v443);
    sub_22C36DD28(v323, &qword_27D9BDC50, &unk_22C91B470);
    ++v324;
  }

  (*(v442 + 96))(v328, v323);
  sub_22C3722F4(&v449);
  v323 = v434;
  v339 = v328;
  v338 = v443;
  v340(v434, v339, v443);
  sub_22C36BECC();
  sub_22C36C640(v341, v342, v343, v338);
  sub_22C36DD28(v323, &qword_27D9BDC50, &unk_22C91B470);
LABEL_56:
  v344 = *(v468 + 2);
  v234 = v461;
  v279 = v449;
  v282 = v421;
  if (v324 == v344)
  {
    v345 = 1;
    goto LABEL_61;
  }

  if (v324 >= v344)
  {
    __break(1u);
    goto LABEL_76;
  }

  v346 = *(v442 + 80);
  sub_22C36BA94();
  v349 = v419;
  sub_22C57EBC4(v468 + v347 + *(v348 + 72) * v324, v419);
  sub_22C5580B8(&v444);
  sub_22C379DF8(v350, v351, v352, v353);
  sub_22C376738(v323);
  if (v368)
  {
LABEL_76:
    __break(1u);
    return;
  }

  sub_22C3722F4(&v449);
  sub_22C38399C();
  v354();
  sub_22C36DD28(v349, &qword_27D9BDC50, &unk_22C91B470);
  v345 = 0;
LABEL_61:
  sub_22C36C640(v282, v345, 1, v338);

  sub_22C376738(v282);
  if (!v368)
  {

    sub_22C3759C4(&v449);
    v283 = v234;
    v378 = v420;
    (*(v377 + 32))(v420, v282, v338);
    sub_22C374168((v283 + *(v279 + 36)), *(v283 + *(v279 + 36) + 24));
    sub_22C557F08();
    MEMORY[0x28223BE20](v379);
    sub_22C3759B4();
    v382 = sub_22C3864B4(v380, v381);
    sub_22C5580D8(v382, v383, v384, v385, v386);
    sub_22C36CAEC();
    sub_22C9099DC();
    (*(v320 + 8))(v378, v443);
    sub_22C36FB04(&v482);
    sub_22C558070();
    v387();
    goto LABEL_70;
  }

  sub_22C36FB04(&v482);
  sub_22C558070();
  v355();
  sub_22C36DD28(v282, &qword_27D9BDC50, &unk_22C91B470);
  v275 = v463;
LABEL_64:
  sub_22C908A4C();
  sub_22C374168(&v477, v480);
  sub_22C36D2E8(&v447);
  sub_22C38399C();
  sub_22C57D7C4(v356, v357, v358);
  v359 = v282;
  v360 = sub_22C909A7C();
  sub_22C376738(v282);
  if (v368)
  {
    sub_22C36FF94(&v477);
    sub_22C36DD28(v282, &qword_27D9BD8B8, &qword_22C919AB0);
    sub_22C37022C(&v448);
    sub_22C36A748();
    sub_22C36C640(v361, v362, v363, v443);
  }

  else
  {
    sub_22C36D2E8(&v448);
    sub_22C57E564();
    v359 = v282;
    sub_22C36BBA8(v360);
    (*(v364 + 8))(v282, v360);
    sub_22C36BECC();
    sub_22C36C640(v365, v366, v367, v443);
    sub_22C36FF94(&v477);
    sub_22C376738(v282);
    if (!v368)
    {

      sub_22C385E64(&v449);
      v283 = v234;
      v388 = v418;
      sub_22C38399C();
      v389();
      sub_22C9099EC();
      sub_22C9099DC();
      (*(v275 + 8))(v388, v443);
      goto LABEL_70;
    }
  }

  sub_22C36DD28(v359, &qword_27D9BDC50, &unk_22C91B470);
  sub_22C374168((v234 + *(v279 + 36)), *(v234 + *(v279 + 36) + 24));
  sub_22C557F08();
  MEMORY[0x28223BE20](v369);
  sub_22C3759B4();
  v372 = sub_22C3864B4(v370, v371);
  sub_22C5580D8(v372, v373, v374, v375, v376);
  sub_22C36CAEC();
  v283 = v234;
LABEL_70:
  v390 = sub_22C90A28C();
  v392 = v391;

  v393 = sub_22C90A28C();
  v395 = v394;

  v477 = v390;
  v478 = v392;

  MEMORY[0x2318B7850](v393, v395);

  v396 = v477;
  v397 = v478;
  sub_22C379DF8(v283 + *(v279 + 40), &v477, &qword_27D9BD9C8, &qword_22C91A118);
  if (v480)
  {
    sub_22C374168(&v477, v480);
    sub_22C533B78(v472);
    v398 = v472[0];
    v468 = v472[1];
    v399 = v473;
    v400 = v474;
    sub_22C36FF94(&v477);
  }

  else
  {
    sub_22C36DD28(&v477, &qword_27D9BD9C8, &qword_22C91A118);
    v398 = 0;
    v468 = 0;
    v399 = 0;
    v400 = 0;
  }

  sub_22C36A83C();
  v401 = swift_allocObject();
  *(v401 + 16) = v396;
  *(v401 + 24) = v397;
  v402 = *(type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0) + 24);
  v403 = sub_22C90963C();
  sub_22C36985C(v403);
  v405 = v426;
  (*(v404 + 16))(v426 + v402, v446);
  v406 = v469;
  *v405 = v401;
  v405[1] = v406;
  swift_storeEnumTagMultiPayload();
  v407 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v408 = swift_allocBox();
  v410 = v409;
  v411 = *(v407 + 48);
  sub_22C557A88(v405, v409);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v412 = swift_allocBox();

  sub_22C486784();
  sub_22C557AE0(v405, type metadata accessor for PromptTreeIdentifier);
  v413 = sub_22C3720E8();
  sub_22C36DD28(v413, v414, v415);
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v416 = swift_allocObject();
  *(v416 + 16) = v412 | 0x2000000000000000;
  *(v410 + v411) = v416;

  v417 = v452;
  *v452 = v408 | 0x4000000000000000;
  v417[1] = v398;
  v417[2] = v468;
  v417[3] = v399;
  v417[4] = v400;
  *(v417 + 40) = 0;
LABEL_74:
  sub_22C36CC48();
}
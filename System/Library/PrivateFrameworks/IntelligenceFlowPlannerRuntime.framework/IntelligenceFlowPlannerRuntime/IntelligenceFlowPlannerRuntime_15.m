uint64_t sub_22C4A3004(void *a1, uint64_t a2, uint64_t a3)
{
  v78 = a1;
  v6 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v73 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v73 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v73 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v73 - v20;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v73 = a3;
    v22 = *(a2 + 16);
    v23 = sub_22C36E2B8(v22);
    v75 = v22 & 0xC000000000000001;
    v76 = v23;
    v74 = v22 & 0xFFFFFFFFFFFFFF8;
    v77 = v22;

    v24 = 0;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v25 = v79;
      if (v76 == v24)
      {
        goto LABEL_42;
      }

      if (v75)
      {
        v26 = MEMORY[0x2318B8460](v24, v77);
      }

      else
      {
        if (v24 >= *(v74 + 16))
        {
          goto LABEL_44;
        }

        v26 = *(v77 + 8 * v24 + 32);
      }

      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      swift_beginAccess();
      v27 = *(v26 + 16);

      v28 = v21;
      v29 = sub_22C4A0390(v78, v27, v21);
      if (v25)
      {

        goto LABEL_33;
      }

      v32 = v29;
      v33 = v30;
      v34 = v31;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = *(v3 + 16);
        sub_22C591140();
        v3 = v39;
      }

      v36 = *(v3 + 16);
      if (v36 >= *(v3 + 24) >> 1)
      {
        sub_22C591140();
        v3 = v40;
      }

      *(v3 + 16) = v36 + 1;
      v37 = (v3 + 24 * v36);
      v37[4] = v32;
      v37[5] = v33;
      v37[6] = v34;
      ++v24;
      v21 = v28;
    }
  }

  v41 = a2 & 0x7FFFFFFFFFFFFFFFLL;
  v42 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v43 = *(*((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);
  if (v42)
  {
    if (v42 == 1)
    {

      v62 = v79;
      v63 = sub_22C4A3004(v78, v43, v16);
      if (!v62)
      {
        v64 = v63;

        v80[0] = v64;

        sub_22C4A80C0(v80);

        return v80[0];
      }
    }

    else if (v42 == 2)
    {

      v44 = v79;
      v45 = sub_22C4A3004(v78, v43, v10);
      if (!v44)
      {
        v25 = v45;
        v79 = 0;

        v46 = 0;
        v47 = v25[2];
        v48 = v25 + 5;
        v3 = MEMORY[0x277D84F90];
LABEL_20:
        v49 = &v48[3 * v46];
        while (v47 != v46)
        {
          if (v46 >= v25[2])
          {
LABEL_45:
            __break(1u);

            __break(1u);
            return result;
          }

          ++v46;
          v50 = v49 + 3;
          v52 = *(v49 - 1);
          v51 = *v49;
          v53 = HIBYTE(*v49) & 0xF;
          v54 = v52 & 0xFFFFFFFFFFFFLL;
          if ((v51 & 0x2000000000000000) != 0)
          {
            v54 = v53;
          }

          v49 = v50;
          if (v54)
          {
            v55 = *(v50 - 2);

            v56 = swift_isUniquelyReferenced_nonNull_native();
            v80[0] = v3;
            if ((v56 & 1) == 0)
            {
              v57 = *(v3 + 16);
              sub_22C3B6540();
              v3 = v80[0];
            }

            v58 = *(v3 + 16);
            v59 = v58 + 1;
            if (v58 >= *(v3 + 24) >> 1)
            {
              v78 = v48;
              sub_22C3B6540();
              v59 = v58 + 1;
              v48 = v78;
              v3 = v80[0];
            }

            *(v3 + 16) = v59;
            v60 = (v3 + 24 * v58);
            v60[4] = v52;
            v60[5] = v51;
            v60[6] = v55;
            goto LABEL_20;
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
      v69 = *(v41 + 16);
      sub_22C480170(v69, v42);

      v70 = v79;
      v71 = sub_22C4A3004(v78, v43, v13);
      if (!v70)
      {
        v72 = v71;

        v80[4] = v72;
        v80[0] = v69;
        v80[1] = v42;
        v80[2] = MEMORY[0x277D84FA0];
        sub_22C3A5908(&qword_27D9BD038, &qword_22C917408);
        sub_22C3D32C8(&qword_27D9BD040, &qword_27D9BD038, &qword_22C917408);
        v3 = sub_22C90A94C();
        sub_22C48FEE0(v69, v42);
LABEL_42:

        return v3;
      }

      sub_22C48FEE0(v69, v42);
    }
  }

  else
  {

    v65 = v79;
    v66 = sub_22C4A3004(v78, v43, v19);
    if (!v65)
    {
      v67 = v66;

      sub_22C4A3BDC(v67);
      v3 = v68;

      return v3;
    }
  }

LABEL_33:

  sub_22C407C2C();
  return v3;
}

uint64_t sub_22C4A35F0(void *a1, uint64_t a2, uint64_t a3)
{
  v78 = a1;
  v6 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v73 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v73 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v73 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v73 - v20;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v73 = a3;
    v22 = *(a2 + 16);
    v23 = sub_22C36E2B8(v22);
    v75 = v22 & 0xC000000000000001;
    v76 = v23;
    v74 = v22 & 0xFFFFFFFFFFFFFF8;
    v77 = v22;

    v24 = 0;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v25 = v79;
      if (v76 == v24)
      {
        goto LABEL_42;
      }

      if (v75)
      {
        v26 = MEMORY[0x2318B8460](v24, v77);
      }

      else
      {
        if (v24 >= *(v74 + 16))
        {
          goto LABEL_44;
        }

        v26 = *(v77 + 8 * v24 + 32);
      }

      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      swift_beginAccess();
      v27 = *(v26 + 16);

      v28 = v21;
      v29 = sub_22C4A1448(v78, v27, v21);
      if (v25)
      {

        goto LABEL_33;
      }

      v32 = v29;
      v33 = v30;
      v34 = v31;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = *(v3 + 16);
        sub_22C591140();
        v3 = v39;
      }

      v36 = *(v3 + 16);
      if (v36 >= *(v3 + 24) >> 1)
      {
        sub_22C591140();
        v3 = v40;
      }

      *(v3 + 16) = v36 + 1;
      v37 = (v3 + 24 * v36);
      v37[4] = v32;
      v37[5] = v33;
      v37[6] = v34;
      ++v24;
      v21 = v28;
    }
  }

  v41 = a2 & 0x7FFFFFFFFFFFFFFFLL;
  v42 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v43 = *(*((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);
  if (v42)
  {
    if (v42 == 1)
    {

      v62 = v79;
      v63 = sub_22C4A35F0(v78, v43, v16);
      if (!v62)
      {
        v64 = v63;

        v80[0] = v64;

        sub_22C4A80C0(v80);

        return v80[0];
      }
    }

    else if (v42 == 2)
    {

      v44 = v79;
      v45 = sub_22C4A35F0(v78, v43, v10);
      if (!v44)
      {
        v25 = v45;
        v79 = 0;

        v46 = 0;
        v47 = v25[2];
        v48 = v25 + 5;
        v3 = MEMORY[0x277D84F90];
LABEL_20:
        v49 = &v48[3 * v46];
        while (v47 != v46)
        {
          if (v46 >= v25[2])
          {
LABEL_45:
            __break(1u);

            __break(1u);
            return result;
          }

          ++v46;
          v50 = v49 + 3;
          v52 = *(v49 - 1);
          v51 = *v49;
          v53 = HIBYTE(*v49) & 0xF;
          v54 = v52 & 0xFFFFFFFFFFFFLL;
          if ((v51 & 0x2000000000000000) != 0)
          {
            v54 = v53;
          }

          v49 = v50;
          if (v54)
          {
            v55 = *(v50 - 2);

            v56 = swift_isUniquelyReferenced_nonNull_native();
            v80[0] = v3;
            if ((v56 & 1) == 0)
            {
              v57 = *(v3 + 16);
              sub_22C3B6540();
              v3 = v80[0];
            }

            v58 = *(v3 + 16);
            v59 = v58 + 1;
            if (v58 >= *(v3 + 24) >> 1)
            {
              v78 = v48;
              sub_22C3B6540();
              v59 = v58 + 1;
              v48 = v78;
              v3 = v80[0];
            }

            *(v3 + 16) = v59;
            v60 = (v3 + 24 * v58);
            v60[4] = v52;
            v60[5] = v51;
            v60[6] = v55;
            goto LABEL_20;
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
      v69 = *(v41 + 16);
      sub_22C480170(v69, v42);

      v70 = v79;
      v71 = sub_22C4A35F0(v78, v43, v13);
      if (!v70)
      {
        v72 = v71;

        v80[4] = v72;
        v80[0] = v69;
        v80[1] = v42;
        v80[2] = MEMORY[0x277D84FA0];
        sub_22C3A5908(&qword_27D9BD038, &qword_22C917408);
        sub_22C3D32C8(&qword_27D9BD040, &qword_27D9BD038, &qword_22C917408);
        v3 = sub_22C90A94C();
        sub_22C48FEE0(v69, v42);
LABEL_42:

        return v3;
      }

      sub_22C48FEE0(v69, v42);
    }
  }

  else
  {

    v65 = v79;
    v66 = sub_22C4A35F0(v78, v43, v19);
    if (!v65)
    {
      v67 = v66;

      sub_22C4A3BDC(v67);
      v3 = v68;

      return v3;
    }
  }

LABEL_33:

  sub_22C407C2C();
  return v3;
}

uint64_t sub_22C4A3BDC(uint64_t a1)
{
  v3[5] = a1;

  sub_22C3A5908(&qword_27D9BD038, &qword_22C917408);
  sub_22C3A5908(&qword_27D9BD048, &unk_22C917410);
  if (swift_dynamicCast())
  {
    sub_22C36FF94(v3);
    sub_22C3B0E80();
    result = sub_22C7D602C(a1);
    if (*(a1 + 16) <= 0xFuLL)
    {

      return 0;
    }
  }

  else
  {
    sub_22C4076EC(*(a1 + 16), 0);
    sub_22C4A75E4(a1);

    return 0;
  }

  return result;
}

uint64_t sub_22C4A3CCC(uint64_t a1, unint64_t a2)
{
  v21 = a1;
  v22 = a2;

  sub_22C3A5908(&qword_27D9BD048, &unk_22C917410);
  if (swift_dynamicCast())
  {
    sub_22C36FF94(&v17);

    v4 = sub_22C4AAE9C(a1, a2);

    sub_22C3B0E80();
    v5 = sub_22C7D60B0(v4);
    v6 = v4[2];

    if (v6 <= 0xF)
    {

      return 0;
    }
  }

  else
  {
    v7 = sub_22C90A30C();
    v18 = MEMORY[0x277D84F90];
    sub_22C40772C(v7, 0);
    v21 = 0;
    v22 = v18;
    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v17 = a1;
    v18 = a2;
    v19 = 0;
    v20 = v8;

    while (1)
    {
      v9 = sub_22C90A3AC();
      if (!v10)
      {
        break;
      }

      v11 = v9;
      v12 = v10;
      v13 = (v22 + 40);
      v14 = *(v22 + 16) + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v11 || v12 != *v13)
        {
          v13 += 2;
          if ((sub_22C90B4FC() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      sub_22C7D47FC();
LABEL_17:
    }

    return v21;
  }

  return v5;
}

uint64_t sub_22C4A3EB8(uint64_t a1)
{
  v3 = sub_22C9063DC();
  v132 = *(v3 - 8);
  v133 = v3;
  v4 = *(v132 + 64);
  MEMORY[0x28223BE20](v3);
  v130 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v6 = *(*(v131 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v131);
  v9 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v134 = &v122 - v11;
  MEMORY[0x28223BE20](v10);
  v129 = &v122 - v12;
  v145 = sub_22C3A5908(&qword_27D9BD030, &qword_22C917400);
  v13 = *(*(v145 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v145);
  v144 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v143 = &v122 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v142 = &v122 - v19;
  MEMORY[0x28223BE20](v18);
  v141 = &v122 - v20;
  v21 = type metadata accessor for TranscriptReferenceResolver.BoundVariable();
  v148 = *(v21 - 8);
  v149 = v21;
  v22 = *(v148 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22C3A5908(&qword_27D9BAEB8, &qword_22C90D760);
  v151 = *(v25 - 8);
  v152 = v25;
  v26 = *(v151 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v140 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v122 - v29;
  v31 = type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C4AB0E0(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label);
  v32 = MEMORY[0x277D84F90];
  v150 = v31;
  sub_22C909F0C();
  v153 = v32;
  v33 = sub_22C4966D4();
  if (v1)
  {
LABEL_42:

    __break(1u);
    return result;
  }

  v34 = v33;

  v41 = sub_22C492D00(a1, v34, v35, v36, v37, v38, v39, v40, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);

  v42 = sub_22C4A4CD0(v41);

  v43 = sub_22C49D5DC(v42);

  sub_22C4AC054(v43);
  v45 = v44;
  v47 = v46;

  v147 = 0;
  v123 = a1;
  v48 = *(v47 + 16);
  v126 = v9;
  v128 = v45;
  v127 = v47;
  if (v48)
  {
    v153 = v32;
    swift_retain_n();
    sub_22C3B672C(0, v48, 0);
    v49 = v153;
    v50 = v47 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
    v148 = *(v148 + 72);
    do
    {
      sub_22C4AB80C();
      v51 = *(v152 + 48);
      v52 = sub_22C902D0C();
      (*(*(v52 - 8) + 16))(v30, v24, v52);
      swift_storeEnumTagMultiPayload();
      v53 = swift_allocObject();
      v54 = &v24[*(v149 + 20)];
      v55 = sub_22C902CEC();
      v57 = v56;
      sub_22C4AB864(v24, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      *&v30[v51] = v53;
      *(v53 + 16) = v55;
      *(v53 + 24) = v57;
      v153 = v49;
      v59 = *(v49 + 16);
      v58 = *(v49 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_22C3B672C(v58 > 1, v59 + 1, 1);
        v49 = v153;
      }

      *(v49 + 16) = v59 + 1;
      v60 = v49 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
      v61 = *(v151 + 72);
      sub_22C407C2C();
      v50 += v148;
      --v48;
    }

    while (v48);
    v9 = v126;
    v47 = v127;
    v32 = MEMORY[0x277D84F90];
  }

  else
  {
    swift_retain_n();
    v49 = MEMORY[0x277D84F90];
  }

  v62 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v153 = v62;
  v64 = v147;
  sub_22C4AAAB4(v49, isUniquelyReferenced_nonNull_native, &v153);
  v124 = v153;
  v65 = sub_22C4A4DA0(v47);

  v66 = swift_isUniquelyReferenced_nonNull_native();
  v153 = v62;
  sub_22C4AA670(v65, sub_22C4AA2B0, 0, v66, &v153);
  v67 = v64;

  v125 = v153;
  v68 = sub_22C4A4F9C();
  v69 = *(v68 + 16);
  if (v69)
  {
    v122 = v64;
    v153 = v32;
    sub_22C3B672C(0, v69, 0);
    v149 = v153;
    v72 = sub_22C6339F8(v68);
    v73 = 0;
    v74 = v68 + 64;
    v136 = v70;
    v137 = v69;
    v135 = v68 + 72;
    v138 = v68 + 64;
    v139 = v68;
    while ((v72 & 0x8000000000000000) == 0 && v72 < 1 << *(v68 + 32))
    {
      v75 = v72 >> 6;
      if ((*(v74 + 8 * (v72 >> 6)) & (1 << v72)) == 0)
      {
        goto LABEL_37;
      }

      if (*(v68 + 36) != v70)
      {
        goto LABEL_38;
      }

      v147 = v73;
      v148 = v70;
      v146 = v71;
      v76 = *(v68 + 48);
      v77 = *(*(type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0) - 8) + 72);
      sub_22C4AB80C();
      v78 = *(*(v68 + 56) + 8 * v72);
      v79 = v142;
      sub_22C4AB198();
      v80 = v145;
      *&v79[*(v145 + 48)] = v78;
      v81 = *(v152 + 48);
      v82 = v143;
      sub_22C3A7214();
      v83 = *&v82[*(v80 + 48)];

      v84 = v140;
      sub_22C4AB198();
      swift_storeEnumTagMultiPayload();
      v85 = v144;
      sub_22C407C2C();
      *&v84[v81] = *(v85 + *(v80 + 48));
      sub_22C4AB864(v85, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      v86 = v149;
      v153 = v149;
      v88 = *(v149 + 16);
      v87 = *(v149 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_22C3B672C(v87 > 1, v88 + 1, 1);
        v86 = v153;
      }

      *(v86 + 16) = v88 + 1;
      v89 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v149 = v86;
      v90 = *(v151 + 72);
      sub_22C407C2C();
      v68 = v139;
      v91 = 1 << *(v139 + 32);
      if (v72 >= v91)
      {
        goto LABEL_39;
      }

      v74 = v138;
      v92 = *(v138 + 8 * v75);
      if ((v92 & (1 << v72)) == 0)
      {
        goto LABEL_40;
      }

      if (*(v139 + 36) != v148)
      {
        goto LABEL_41;
      }

      v93 = v92 & (-2 << (v72 & 0x3F));
      if (v93)
      {
        v91 = __clz(__rbit64(v93)) | v72 & 0x7FFFFFFFFFFFFFC0;
        v94 = v137;
      }

      else
      {
        v95 = v75 << 6;
        v96 = v75 + 1;
        v97 = (v135 + 8 * v75);
        v94 = v137;
        while (v96 < (v91 + 63) >> 6)
        {
          v99 = *v97++;
          v98 = v99;
          v95 += 64;
          ++v96;
          if (v99)
          {
            sub_22C3A5038(v72, v148, v146 & 1);
            v91 = __clz(__rbit64(v98)) + v95;
            goto LABEL_27;
          }
        }

        sub_22C3A5038(v72, v148, v146 & 1);
      }

LABEL_27:
      v71 = 0;
      v73 = v147 + 1;
      v72 = v91;
      v70 = v136;
      if (v147 + 1 == v94)
      {

        v9 = v126;
        v67 = v122;
        v100 = v149;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v100 = MEMORY[0x277D84F90];
LABEL_30:
  v101 = v124;
  v102 = swift_isUniquelyReferenced_nonNull_native();
  v153 = v101;
  sub_22C4AAAB4(v100, v102, &v153);
  v103 = v67;
  v104 = v153;
  v105 = v128;
  v106 = sub_22C4A5318();
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v153 = v104;
  sub_22C4AA32C(v106, sub_22C4AA240, 0, v107, &v153);
  v108 = sub_22C8A5524(v153);

  sub_22C4A1448(v108, v105, v134);
  if (v103)
  {

    sub_22C407C2C();
    sub_22C407C2C();
    v110 = v130;
    sub_22C903F7C();

    v111 = sub_22C9063CC();
    v112 = sub_22C90AADC();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v153 = v114;
      *v113 = 136315138;
      v115 = sub_22C491AFC();
      v116 = sub_22C4A25D4(v115);
      v118 = v117;

      v119 = sub_22C36F9F4(v116, v118, &v153);

      *(v113 + 4) = v119;
      v9 = v126;
      sub_22C36FF94(v114);
      MEMORY[0x2318B9880](v114, -1, -1);
      MEMORY[0x2318B9880](v113, -1, -1);
    }

    (*(v132 + 8))(v110, v133);
    v120 = &qword_27D9BC490;
    sub_22C3D32C8(&qword_27D9BC4A8, &qword_27D9BC490, &unk_22C914240);
    swift_allocError();
    sub_22C3A7214();
    swift_willThrow();

    sub_22C36DD28(v9, &qword_27D9BC490, &unk_22C914240);
  }

  else
  {
    v120 = v109;
  }

  return v120;
}

unint64_t sub_22C4A4C7C()
{
  result = qword_27D9BD028;
  if (!qword_27D9BD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD028);
  }

  return result;
}

uint64_t sub_22C4A4DA0(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptReferenceResolver.BoundVariable();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;

  sub_22C4A812C(&v14);
  v7 = v14;
  sub_22C902D0C();
  sub_22C4AB0E0(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
  v8 = 0;
  v14 = sub_22C909F0C();
  v9 = *(v7 + 16);
  while (1)
  {
    if (v9 == v8)
    {

      return v14;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_22C4AB80C();
    sub_22C4A6914(&v14, v6);
    ++v8;
    sub_22C4AB864(v6, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
  }

  __break(1u);

  sub_22C4AB864(v6, type metadata accessor for TranscriptReferenceResolver.BoundVariable);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C4A4F9C()
{
  v1 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v47 = (v7 - v8);
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C3804A4();
  MEMORY[0x28223BE20](v10);
  v12 = (v45 - v11);
  v49 = MEMORY[0x277D84F90];
  v13 = 0;
  sub_22C495588();
  v15 = v14;
  v17 = v16;

  v48 = sub_22C4A5964(v15, v17);
  v19 = v18;
  v20 = 0;
  v49 = MEMORY[0x277D84F98];
  v21 = *(v18 + 16);
  while (v21 != v20)
  {
    if (v20 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_22C3819F8();
    v22 = *(v4 + 72);
    sub_22C37FD68();
    sub_22C4AB80C();
    sub_22C4A5B50(&v49, v12, v48);
    ++v20;
    sub_22C37F138();
  }

  v45[2] = v17;
  v45[3] = v15;

  v23 = v49;
  v24 = v48;
  v46 = *(v48 + 16);
  if (!v46)
  {
LABEL_18:

    return v23;
  }

  v45[1] = v1;
  v25 = 0;
  sub_22C3819F8();
  v45[4] = v26;
  v13 = v47;
  while (v25 < *(v24 + 16))
  {
    v27 = *(v4 + 72);
    sub_22C4AB80C();
    sub_22C4AB80C();
    v28 = *v0;

    swift_isUniquelyReferenced_nonNull_native();
    v49 = v23;
    sub_22C628410();
    sub_22C369DA4();
    v13 = (v31 + v32);
    if (__OFADD__(v31, v32))
    {
      goto LABEL_21;
    }

    v33 = v29;
    v34 = v30;
    sub_22C3A5908(&qword_27D9BD070, &unk_22C922820);
    if (sub_22C90B15C())
    {
      v13 = v47;
      v35 = sub_22C628410();
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_23;
      }

      v33 = v35;
    }

    else
    {
      v13 = v47;
    }

    v23 = v49;
    if (v34)
    {
      v37 = *(v49 + 56);
      v38 = *(v37 + 8 * v33);
      *(v37 + 8 * v33) = v28;

      sub_22C370660();
      sub_22C4AB864(v13, v39);
      sub_22C4AB864(v0, v33);
    }

    else
    {
      sub_22C37A010();
      sub_22C37FD68();
      sub_22C4AB80C();
      *(*(v23 + 56) + 8 * v33) = v28;
      sub_22C370660();
      sub_22C4AB864(v13, v40);
      sub_22C4AB864(v0, v33);
      v41 = *(v23 + 16);
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_22;
      }

      *(v23 + 16) = v43;
    }

    ++v25;
    v24 = v48;
    if (v46 == v25)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);

  sub_22C37F138();

  __break(1u);
LABEL_23:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4A5318()
{
  v1 = type metadata accessor for PromptTreeResolution.State();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  v7 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  sub_22C36C640(v0, 1, 1, v7);
  v8 = *(v2 + 28);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
  sub_22C4AB0E0(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label);
  v9 = MEMORY[0x277D84F90];
  *(v0 + v8) = sub_22C909F0C();
  v12[1] = v9;
  sub_22C495A5C();

  sub_22C4AB864(v0, type metadata accessor for PromptTreeResolution.State);
  v10 = *&v6[*(v2 + 28)];

  sub_22C4AB864(v6, type metadata accessor for PromptTreeResolution.State);
  return v10;
}

void sub_22C4A54AC()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  sub_22C36985C(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C38165C();
  v10 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(v9);
  v11 = sub_22C369914(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v16 = v15 - v14;
  v17 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v17);
  v19 = *(v18 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  v22 = v51 - v21;
  sub_22C3A7214();
  v23 = type metadata accessor for PromptTreeIdentifier(0);
  if (sub_22C370B74(v22, 1, v23) == 1)
  {
    sub_22C36DD28(v22, &qword_27D9BCF28, qword_22C9175E0);
LABEL_16:
    sub_22C36FB20();
    return;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_22C388F44();
    v50 = v22;
LABEL_15:
    sub_22C4AB864(v50, v49);
    goto LABEL_16;
  }

  v24 = *(v22 + 1);
  v52[0] = *v22;
  v52[1] = v24;
  v52[2] = *(v22 + 2);
  v53 = *(v22 + 6);
  if (v2 >> 61 != 2)
  {
LABEL_13:
    sub_22C48A6C0(v52);
    goto LABEL_16;
  }

  swift_projectBox();
  sub_22C3A7214();
  v25 = *(v0 + *(v5 + 48));
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_22C48A6C0(v52);

    sub_22C388F44();
    v50 = v0;
    goto LABEL_15;
  }

  sub_22C4AB198();
  sub_22C3870A4();
  swift_beginAccess();
  v26 = *(v25 + 16);

  v27 = *v4;
  swift_isUniquelyReferenced_nonNull_native();
  v51[0] = *v4;
  sub_22C628AA0();
  sub_22C369DA4();
  if (__OFADD__(v30, v31))
  {
    __break(1u);
  }

  else
  {
    v32 = v28;
    v33 = v29;
    sub_22C3A5908(&qword_27D9BD0A8, &qword_22C917490);
    v34 = sub_22C90B15C();
    v35 = v51[0];
    if ((v34 & 1) == 0)
    {
LABEL_10:
      *v4 = v35;
      if ((v33 & 1) == 0)
      {
        v38 = v26;
        v39 = sub_22C406E58(MEMORY[0x277D84F90]);
        v41 = v40;
        v43 = v42;
        sub_22C4AB1F0(v52, v51);
        v44 = v39;
        v26 = v38;
        sub_22C62F884(v32, v51, v44, v41, v43, v35);
      }

      v45 = *(v35 + 56) + 24 * v32;
      sub_22C4A580C(v26, v16);
      v47 = v46;

      sub_22C4546F8(v47);
      sub_22C4AB8C0();
      sub_22C4AB864(v16, v48);
      goto LABEL_13;
    }

    v36 = sub_22C628AA0();
    if ((v33 & 1) == (v37 & 1))
    {
      v32 = v36;
      goto LABEL_10;
    }
  }

  sub_22C90B54C();
  __break(1u);
}

void sub_22C4A580C(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v18[2] = *v2;
  v18[3] = v4;
  v18[4] = a2;
  v5 = sub_22C7D5CC4(sub_22C4AB418, v18, v4);
  if (v6)
  {
    sub_22C7D5308();
    v9 = v2[2];
    v7 = v2 + 2;
    v8 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v8 + 16);
      sub_22C3B63D4();
      v8 = *v7;
    }

    v12 = *(v8 + 16);
    if (v12 >= *(v8 + 24) >> 1)
    {
      sub_22C3B63D4();
      v8 = *v7;
    }

    *(v8 + 16) = v12 + 1;
    *(v8 + 8 * v12 + 32) = a1;
    *v7 = v8;
  }

  else
  {
    v13 = v5;
    v14 = v2[2];
    sub_22C405578(v5, v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C360(v14);
      v14 = v15;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *(v14 + 16))
    {
      v16 = v14 + 8 * v13;
      v17 = *(v16 + 32);
      *(v16 + 32) = a1;

      v2[2] = v14;
      return;
    }

    __break(1u);
  }
}

uint64_t sub_22C4A5964(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90963C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v22[-v10];

  v12 = sub_22C49FE24(a1, a2);
  v13 = v5[13];
  v13(v11, *MEMORY[0x277D72E08], v4);
  if (*(v12 + 16) && (sub_22C628358(), (v15 & 1) != 0))
  {
    v16 = *(*(v12 + 56) + 8 * v14);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = v5[1];
  v17(v11, v4);
  v13(v9, *MEMORY[0x277D72E10], v4);
  if (*(v12 + 16))
  {
    sub_22C628358();
    if (v19)
    {
      v20 = *(*(v12 + 56) + 8 * v18);
    }
  }

  v17(v9, v4);
  return v16;
}

void sub_22C4A5B50(uint64_t *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = a2;

  v12 = sub_22C47B6D0(sub_22C4AB0C0, v37, a3);
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  v14 = inited;
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = *a2;
  v15 = *(v12 + 16);
  if (v15)
  {
    v32 = inited;
    v34 = v3;
    v35 = a2;
    v36 = a1;
    v39 = MEMORY[0x277D84F90];

    sub_22C3B63D4();
    v16 = v39;
    v17 = *(v8 + 80);
    v33 = v12;
    v18 = v12 + ((v17 + 32) & ~v17);
    v19 = *(v8 + 72);
    do
    {
      sub_22C4AB80C();
      v20 = *v11;

      sub_22C4AB864(v11, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      v39 = v16;
      v21 = *(v16 + 16);
      if (v21 >= *(v16 + 24) >> 1)
      {
        sub_22C3B63D4();
        v16 = v39;
      }

      *(v16 + 16) = v21 + 1;
      *(v16 + 8 * v21 + 32) = v20;
      v18 += v19;
      --v15;
    }

    while (v15);

    a1 = v36;
    v14 = v32;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v39 = v14;
  sub_22C3CD124(v16);
  v22 = sub_22C3DB9B0(v39);

  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 32) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22C9173F0;
  v26 = swift_allocObject();
  *(v26 + 16) = v23 | 0x8000000000000000;
  *(v25 + 32) = v26;
  v27 = v25 | 0x8000000000000000;
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v28 + 16) = v29;
  v30 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v39 = *a1;
  sub_22C62C26C();
  *a1 = v39;
}

BOOL sub_22C4A5EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD078, &qword_22C917450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = sub_22C3A5908(&qword_27D9BD080, &qword_22C917458);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v15 - v10;
  v15[3] = *(a2 + 8);
  v15[1] = *(a1 + 8);
  sub_22C3A5908(&qword_27D9BD088, &unk_22C917460);
  sub_22C3D32C8(&qword_27D9BD090, &qword_27D9BD088, &unk_22C917460);
  sub_22C90A4EC();
  sub_22C90B11C();
  do
  {
    sub_22C90B1FC();
    v12 = sub_22C370B74(v11, 1, v4);
    if (v12 == 1)
    {
      break;
    }

    sub_22C407C2C();
    v13 = &v7[*(v4 + 48)];
    LOBYTE(v13) = sub_22C9042DC();
    sub_22C36DD28(v7, &qword_27D9BD078, &qword_22C917450);
  }

  while ((v13 & 1) == 0);

  return v12 != 1;
}

uint64_t sub_22C4A60B4()
{
  v1 = v0;
  v2 = sub_22C902CDC();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C902D0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v73 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v73 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v73 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v73 - v21;
  v78 = *(v7 + 16);
  v78(v14, v1, v6);
  LODWORD(result) = (*(v7 + 88))(v14, v6);
  if (result == *MEMORY[0x277D1D7C8] || result == *MEMORY[0x277D1D798])
  {
    (*(v7 + 8))(v14, v6);
    return 1;
  }

  else
  {
    if (result != *MEMORY[0x277D1D7E8])
    {
      if (result == *MEMORY[0x277D1D7E0])
      {
        (*(v7 + 96))(v14, v6);
        v25 = *v14;
        v11 = sub_22C3A5908(&qword_27D9BC330, &qword_22C9126C8);
        v26 = swift_projectBox() + *(v11 + 48);
        goto LABEL_20;
      }

      if (result == *MEMORY[0x277D1D7D8])
      {
        (*(v7 + 96))(v14, v6);
        v27 = *v14;
        v28 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
        v29 = swift_projectBox();
        v30 = v29 + *(v28 + 48);
        v31 = (v28 + 64);
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    (*(v7 + 96))(v14, v6);
    v17 = *v14;
    v5 = *(*v14 + 16);
    v1 = *(*v14 + 24);
    switch(*(*v14 + 32))
    {
      case 4:
        goto LABEL_22;
      case 5:
        v46 = *(*v14 + 16);

        sub_22C49F4D4();
        v6 = v47;
        v14 = sub_22C3D0CD0(v47);
        v22 = v48;
        sub_22C4242E4(v5, v1, 5);

        if (v22)
        {
          v49 = 0;
        }

        else
        {
          v49 = v14;
        }

        result = v49 + 1;
        if (v49 != -1)
        {
          return result;
        }

        __break(1u);
        break;
      default:
        v24 = *v14;

        return 1;
    }

    do
    {
      if (result != *MEMORY[0x277D1D7D0])
      {
        if (result != *MEMORY[0x277D1D7C0])
        {
          goto LABEL_47;
        }

        v52 = *(v7 + 96);
        v7 += 96;
        v52(v14, v6);
        v53 = *v14;
        v54 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
        v55 = *(swift_projectBox() + *(v54 + 48));

        sub_22C49F4D4();
        v22 = v56;

        v57 = sub_22C3D0CD0(v22);
        v59 = v58;

        if (v59)
        {
          v60 = 0;
        }

        else
        {
          v60 = v57;
        }

        result = v60 + 1;
        if (v60 == -1)
        {
          __break(1u);
          goto LABEL_41;
        }

        return result;
      }

      (*(v7 + 96))(v14, v6);
      v50 = *v14;
      v51 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
      v29 = swift_projectBox();
      v31 = (v51 + 48);
      v30 = v29;
LABEL_13:
      v11 = *v31;
      v5 = v78;
      v78(v20, v30, v6);
      (v5)(v17, v29 + v11, v6);

      v22 = sub_22C4A60B4(v32);
      v33 = *(v7 + 8);
      v7 += 8;
      v34 = v33(v20, v6);
      v14 = sub_22C4A60B4(v34);
      v33(v17, v6);
      if (v14 <= v22)
      {
        v35 = v22;
      }

      else
      {
        v35 = v14;
      }

      result = v35 + 1;
      if (v35 != -1)
      {
        return result;
      }

      __break(1u);
LABEL_18:
      ;
    }

    while (result != *MEMORY[0x277D1D7B8]);
    while (1)
    {
      (*(v7 + 96))(v14, v6);
      v36 = *v14;
      v26 = swift_projectBox();
LABEL_20:
      v78(v22, v26, v6);

      v38 = sub_22C4A60B4(v37);
      v39 = *(v7 + 8);
      v7 += 8;
      v39(v22, v6);
      result = v38 + 1;
      if (v38 != -1)
      {
        break;
      }

      __break(1u);
LABEL_22:
      v22 = *(v5 + 2);
      if (v22)
      {
        v73 = v1;
        v75 = v17;
        v79 = MEMORY[0x277D84F90];

        sub_22C3B7290();
        v40 = v79;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v74 = v5;
        v42 = &v5[v41];
        v43 = *(v7 + 72);
        v76 = v7 + 8;
        v77 = v43;
        do
        {
          v44 = (v78)(v11, v42, v6);
          v7 = sub_22C4A60B4(v44);
          (*v76)(v11, v6);
          v79 = v40;
          v45 = v40[2];
          if (v45 >= v40[3] >> 1)
          {
            sub_22C3B7290();
            v40 = v79;
          }

          v40[2] = v45 + 1;
          v40[v45 + 4] = v7;
          v42 += v77;
          --v22;
        }

        while (v22);
        v5 = v74;
        v17 = v75;
        v1 = v73;
      }

      else
      {
LABEL_41:

        v40 = MEMORY[0x277D84F90];
      }

      v6 = sub_22C3D0CD0(v40);
      v14 = v61;
      sub_22C4242E4(v5, v1, 4);

      v62 = (v14 & 1) != 0 ? 0 : v6;
      result = v62 + 1;
      if (v62 != -1)
      {
        break;
      }

      __break(1u);
LABEL_47:
      if (result == *MEMORY[0x277D1D7B0])
      {
        v63 = *(v7 + 96);
        v7 += 96;
        v63(v14, v6);
        v6 = *v14;
        v64 = swift_projectBox();
        v66 = v76;
        v65 = v77;
        (*(v76 + 16))(v5, v64, v77);
        v67 = sub_22C902CAC();
        sub_22C49F7C8(v67);
        v22 = v68;

        v14 = sub_22C3D0CD0(v22);
        v11 = v69;

        v70 = *(v66 + 8);
        v17 = (v66 + 8);
        v70(v5, v65);

        if (v11)
        {
          v71 = 0;
        }

        else
        {
          v71 = v14;
        }

        result = v71 + 1;
        if (v71 != -1)
        {
          return result;
        }

        __break(1u);
      }

      if (result != *MEMORY[0x277D1D7F0] && result != *MEMORY[0x277D1D7A0])
      {
        if (result != *MEMORY[0x277D1D7F8] && result != *MEMORY[0x277D1D7A8])
        {
          result = sub_22C90B4EC();
          __break(1u);
          return result;
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_22C4A6914(uint64_t a1, uint64_t a2)
{
  v98 = a1;
  v94 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
  v4 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v96 = &v82 - v5;
  v87 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
  v6 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v82 - v7;
  v8 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v82 - v10;
  v12 = sub_22C902D0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v93 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v82 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v82 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v92 = (&v82 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v82 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v82 - v27;
  v29 = *(type metadata accessor for TranscriptReferenceResolver.BoundVariable() + 20);
  v100 = a2;
  v101 = a1;
  v30 = v11;
  v31 = v13;
  sub_22C439F24(a2 + v29, sub_22C4AB128, v99, v32, v33, v34, v35, v36, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v37 = *(v13 + 16);
  v37(v26, v28, v12);
  v38 = a2;
  v39 = v26;
  v40 = v12;
  v88 = v38;
  (v37)(v30);
  sub_22C36C640(v30, 0, 1, v12);
  v86 = v30;
  sub_22C603588();
  v41 = v28;
  v37(v21, v28, v12);
  v90 = *(v13 + 88);
  v91 = v13 + 88;
  v42 = v90(v21, v12);
  HIDWORD(v84) = *MEMORY[0x277D1D7B8];
  v102 = v13;
  v95 = v28;
  v97 = v13 + 16;
  if (v42 == HIDWORD(v84))
  {
    (*(v13 + 96))(v21, v12);
    v43 = *v21;
    swift_projectBox();
    v44 = v85;
    sub_22C3A7214();
    v45 = &v44[*(v87 + 48)];
    v46 = *(v45 + 1);
    v83 = *v45;
    v47 = v92;
    (*(v31 + 32))(v92, v44, v40);

    v48 = v94;
    v85 = swift_allocBox();
    v50 = v49;
    v51 = *(v48 + 48);
    v37(v49, v47, v40);
    v52 = swift_allocObject();
    *(v52 + 16) = v83;
    *(v52 + 24) = v46;
    *(v52 + 32) = 3;
    *&v50[v51] = v52;
    v53 = *(v31 + 104);
    v53(&v50[v51], *MEMORY[0x277D1D7E8], v40);
    *v39 = v85;
    v54 = *MEMORY[0x277D1D7D0];
    v53(v39, *MEMORY[0x277D1D7D0], v40);
    v55 = v86;
    v37(v86, v88, v40);
    sub_22C36C640(v55, 0, 1, v40);
    sub_22C603588();
    v41 = v95;
    v56 = v92;
    v92 = *(v102 + 8);
    (v92)(v56, v40);
  }

  else
  {
    v92 = *(v13 + 8);
    (v92)(v21, v12);
    v54 = *MEMORY[0x277D1D7D0];
  }

  v57 = v93;
  v85 = v37;
  v37(v93, v41, v40);
  v58 = v57;
  v59 = v90;
  v60 = v90(v57, v40);
  v61 = v96;
  if (v60 != v54)
  {
    v77 = v92;
    (v92)(v41, v40);
    v78 = v58;
    return (v77)(v78, v40);
  }

  v82 = v39;
  v62 = v102;
  v83 = *(v102 + 96);
  (v83)(v58, v40);
  v63 = *v58;
  swift_projectBox();
  sub_22C3A7214();
  v64 = *(v94 + 48);
  v65 = v89;
  (*(v62 + 32))(v89, v61, v40);
  if (v59(&v61[v64], v40) == *MEMORY[0x277D1D7E8])
  {
    (v83)(&v61[v64], v40);
    v66 = *&v61[v64];
    if (*(v66 + 32) == 3)
    {
      v67 = *(v66 + 16);
      v68 = *(v66 + 24);

      v69 = v87;
      v70 = swift_allocBox();
      v72 = (v71 + *(v69 + 48));
      v73 = v89;
      v74 = v85;
      (v85)(v71, v89, v40);
      *v72 = v67;
      v72[1] = v68;
      v75 = v82;
      *v82 = v70;
      (*(v102 + 104))(v75, HIDWORD(v84), v40);
      v76 = v86;
      (v74)(v86, v88, v40);
      sub_22C36C640(v76, 0, 1, v40);
      sub_22C603588();
      v77 = v92;
      (v92)(v73, v40);
      v78 = v95;
      return (v77)(v78, v40);
    }

    v81 = v92;
    (v92)(v89, v40);
    (v81)(v95, v40);
  }

  else
  {
    v80 = v92;
    (v92)(v65, v40);
    (v80)(v95, v40);
    (v80)(&v61[v64], v40);
  }
}

uint64_t sub_22C4A713C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22C4A60B4();
  v9 = a2 + *(type metadata accessor for TranscriptReferenceResolver.BoundVariable() + 20);
  if (v8 < sub_22C4A60B4())
  {
    return sub_22C605684(a1, *a3);
  }

  v11 = sub_22C902D0C();
  return sub_22C36C640(a4, 1, 1, v11);
}

void sub_22C4A71E0()
{
  sub_22C370030();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C3A5908(&qword_27D9BD068, &unk_22C917440);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22C38165C();
  v11 = type metadata accessor for PromptTreeIdentifier.Label(v10);
  v12 = sub_22C36985C(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v19 = sub_22C36985C(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369ABC();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v42 - v26;
  if (v3 >> 61 == 1)
  {
    swift_projectBox();
    sub_22C369D8C();
    sub_22C4AB80C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C4AB910();
      sub_22C4AB198();
      v44 = 0;
      v45 = 0xE000000000000000;
      v28 = *v27;
      if (sub_22C370B74(v5, 1, v18) || !sub_22C45D170(v28, *v5))
      {
        sub_22C3A7214();
        if (sub_22C370B74(v0, 1, v18) == 1)
        {
          sub_22C36DD28(v0, &qword_27D9BD068, &unk_22C917440);
        }

        else
        {
          sub_22C4AB910();
          sub_22C4AB198();
          MEMORY[0x2318B7850](*(v24 + 24), *(v24 + 32));
          sub_22C4AB8F8();
          sub_22C4AB864(v24, v31);
        }

        MEMORY[0x2318B7850](*(v27 + 1), *(v27 + 2));
        v32 = sub_22C45D144(v28);
        v33 = sub_22C45CFCC(v32);
        v34 = *(v27 + 5);
        v35 = *(v27 + 6);
        v42 = v33;
        v43 = v36;

        MEMORY[0x2318B7850](v34, v35);

        MEMORY[0x2318B7850](v42, v43);
      }

      else
      {
        MEMORY[0x2318B7850](*(v27 + 5), *(v27 + 6));
      }

      sub_22C36DD28(v5, &qword_27D9BD068, &unk_22C917440);
      sub_22C4AB80C();
      sub_22C36C640(v5, 0, 1, v18);
      sub_22C4AB80C();
      swift_storeEnumTagMultiPayload();
      v37 = swift_allocObject();
      v38 = v45;
      *(v37 + 16) = v44;
      *(v37 + 24) = v38;
      v39 = *(type metadata accessor for PromptTreeResolution.State() + 20);
      v40 = *&v5[v39];
      swift_isUniquelyReferenced_nonNull_native();
      v42 = *&v5[v39];
      sub_22C62DA9C();
      *&v5[v39] = v42;
      sub_22C3733F8();
      sub_22C4AB864(v1, v41);
      sub_22C4AB8F8();
      v30 = v27;
    }

    else
    {
      sub_22C3733F8();
      v30 = v17;
    }

    sub_22C4AB864(v30, v29);
  }

  sub_22C36FB20();
}

uint64_t sub_22C4A7550(uint64_t a1)
{
  v2 = sub_22C4AB7B8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C4A758C(uint64_t a1)
{
  v2 = sub_22C4AB7B8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C4A75E4(uint64_t result)
{
  v2 = 0;
  v3 = *(result + 16);
  v53 = result + 32;
  while (1)
  {
LABEL_2:
    if (v2 == v3)
    {
      return result;
    }

    v4 = (v53 + 24 * v2);
    v6 = *v4;
    v5 = v4[1];
    v7 = v4[2];
    ++v2;
    v9 = *v1;
    v8 = v1[1];
    v10 = v8 + 32;
    v11 = *(v8 + 16);
    if (!*v1)
    {
      break;
    }

    sub_22C7DAA5C(v6, v5, v7, v10, v11, (v9 + 16));
    v13 = v12;
    v15 = v14;

    if (v13)
    {
      goto LABEL_40;
    }

LABEL_41:
  }

  v54 = *(v8 + 16);
  v55 = v8 + 32;
  v50 = v2;
  if (!v11)
  {
LABEL_39:

    v15 = 0;
    v1 = v49;
    v2 = v50;
    v3 = v48;
LABEL_40:
    sub_22C7D4404(v6, v5, v7, v15);
    goto LABEL_41;
  }

  v16 = 0;
  v17 = v7 + 56;
  v56 = v6;
  v57 = v5;
  v51 = v7;
  while (2)
  {
    v18 = (v55 + 24 * v16);
    result = *v18;
    v19 = v18[2];
    if (*v18 != v6 || v18[1] != v5)
    {
      v21 = v18[2];
      result = sub_22C90B4FC();
      v19 = v21;
      if ((result & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (v19 == v7)
    {
LABEL_42:
      v1 = v49;
      v2 = v50;
      v3 = v48;
      goto LABEL_2;
    }

    if (*(v19 + 16) != *(v7 + 16))
    {
LABEL_38:
      ++v16;
      v6 = v56;
      v5 = v57;
      if (v16 == v54)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  v22 = 0;
  v23 = v19 + 56;
  v24 = 1 << *(v19 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(v19 + 56);
  v27 = (v24 + 63) >> 6;
  if (v26)
  {
    do
    {
      v28 = __clz(__rbit64(v26));
      v52 = (v26 - 1) & v26;
LABEL_25:
      v31 = *(v19 + 48) + 24 * (v28 | (v22 << 6));
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      v35 = *(v7 + 40);
      v36 = v19;
      sub_22C90B62C();
      MEMORY[0x2318B8B30](v32 >> 14);
      v37 = v33 >> 14;
      MEMORY[0x2318B8B30](v37);
      MEMORY[0x2318B8B10](v34);
      result = sub_22C90B66C();
      v19 = v36;
      v7 = v51;
      v38 = -1 << *(v51 + 32);
      v39 = result & ~v38;
      if (((*(v17 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_38;
      }

      v40 = ~v38;
      while (1)
      {
        v41 = *(v51 + 48) + 24 * v39;
        v42 = *v41;
        v43 = *(v41 + 8);
        v44 = *(v41 + 16);
        v45 = v43 >> 14;
        v46 = v32 >> 14 == v42 >> 14 && v45 == v37;
        if (v46 && v44 == v34)
        {
          break;
        }

        v39 = (v39 + 1) & v40;
        if (((*(v17 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v26 = v52;
    }

    while (v52);
  }

  v29 = v22;
  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v22 >= v27)
    {
      goto LABEL_42;
    }

    v30 = *(v23 + 8 * v22);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v52 = (v30 - 1) & v30;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4A78F8(uint64_t a1, uint64_t a2, int64_t a3, unint64_t a4)
{
  v44 = a2;
  v8 = type metadata accessor for _PromptToolData(0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_22C369ABC();
  sub_22C3804A4();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v41 - v12);
  result = MEMORY[0x28223BE20](v11);
  v16 = (&v41 - v15);
  v45 = a4 >> 1;
  v42 = (&v41 - v15);
  v41 = v4;
  while (a3 != v45)
  {
    if (a3 >= v45)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v17 = v43;
    v18 = *(v43 + 72);
    sub_22C377CDC();
    sub_22C4AB80C();
    v20 = *v4;
    v19 = *(v4 + 8);
    v21 = v19 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    if (*v4)
    {
      v46 = a3;
      v22 = *(v20 + 16);
      sub_22C90B62C();
      v23 = v16[1];

      sub_22C48A9B4(&v47, v23);
      a3 = *v16;
      sub_22C48A9B4(&v47, *v16);
      result = sub_22C90B66C();
      v24 = 1 << *(v20 + 16);
      v25 = __OFSUB__(v24, 1);
      v26 = v24 - 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v27 = v26 & result;
      v28 = sub_22C9030FC();
      *&v53 = v20 + 16;
      *(&v53 + 1) = v20 + 32;
      *&v54 = v27;
      *(&v54 + 1) = v28;
      *&v55 = v29;
      *(&v55 + 1) = v30;
      v56 = 0;
      v4 = &v53;
      sub_22C90313C();
      v47 = v53;
      v48 = v54;
      v49 = v55;
      v50 = v56;
      if ((v31 & 1) == 0)
      {
        do
        {
          sub_22C377CDC();
          sub_22C4AB80C();
          if (sub_22C48819C(*v13, a3))
          {
            v4 = sub_22C48819C(v13[1], v23);
            sub_22C36A9D8();
            sub_22C4AB864(v13, v32);
            if (v4)
            {

              sub_22C4AB928();
              v16 = v42;
              goto LABEL_22;
            }
          }

          else
          {
            sub_22C36A9D8();
            sub_22C4AB864(v13, v33);
          }

          sub_22C90315C();
          v51[0] = v47;
          v51[1] = v48;
          v51[2] = v49;
          v52 = v50;
          v4 = v51;
          sub_22C90313C();
        }

        while ((v34 & 1) == 0);
      }

      sub_22C4AB928();
    }

    else
    {
      v35 = *(v19 + 16);
      if (v35)
      {
        v36 = *v16;
        do
        {
          sub_22C377CDC();
          sub_22C4AB80C();
          if (sub_22C48819C(*v5, v36))
          {
            v37 = sub_22C48819C(v5[1], v16[1]);
            sub_22C36A9D8();
            sub_22C4AB864(v5, v38);
            if (v37)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_22C36A9D8();
            sub_22C4AB864(v5, v39);
          }

          v21 += v18;
          --v35;
        }

        while (v35);
      }
    }

    v16 = v42;
    sub_22C7D4A48();
LABEL_22:
    ++a3;
    sub_22C36A9D8();
    result = sub_22C4AB864(v16, v40);
  }

  return result;
}

void sub_22C4A7C6C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = sub_22C379890(a1, a2, a3, a4);
  sub_22C37017C();
  v13 = sub_22C4A7FB0(v10, v11, v12) >> 14;
  if (v9 >> 14 >= v13)
  {
    if (v13 >= v9 >> 14)
    {
      return;
    }

    v20 = 0;
    while (1)
    {
      if (__OFSUB__(v20--, 1))
      {
        goto LABEL_36;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        break;
      }

      sub_22C37017C();
      v9 = sub_22C90A24C();
LABEL_32:
      if (v13 >= v9 >> 14)
      {
        return;
      }
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      v26 = v5;
      v27 = v4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v26 + (v9 >> 16) - 1) & 0xC0) == 0x80)
      {
        v23 = -2;
        do
        {
          sub_22C38A8F0(v23);
        }

        while (v24);
        goto LABEL_29;
      }
    }

    else
    {
      v22 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v5 & 0x1000000000000000) == 0)
      {
        v22 = sub_22C37BDB0();
      }

      if ((*(v22 + (v9 >> 16) - 1) & 0xC0) == 0x80)
      {
        v23 = -2;
        do
        {
          sub_22C38A8F0(v23);
        }

        while (v24);
LABEL_29:
        v25 = v23 + 1;
LABEL_31:
        v9 = (v9 + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        goto LABEL_32;
      }
    }

    v25 = -1;
    goto LABEL_31;
  }

  v14 = 0;
  sub_22C3758F8();
  while (!__OFADD__(v14, 1))
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      sub_22C37017C();
      v9 = sub_22C90A23C();
    }

    else
    {
      v15 = v9 >> 16;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v26 = v5;
        v27 = v6;
        v18 = *(&v26 + v15);
      }

      else
      {
        v16 = v7;
        if ((v5 & 0x1000000000000000) == 0)
        {
          v16 = sub_22C37BDB0();
        }

        v17 = *(v16 + v15);
      }

      sub_22C382FB4();
      v9 = v8 | ((v15 + v19) << 16);
    }

    ++v14;
    if (v13 <= v9 >> 14)
    {
      return;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_22C4A7E20(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = sub_22C379890(a1, a2, a3, a4);
  if (v6 < 0)
  {
    v17 = 0;
    sub_22C3758F8();
    while (1)
    {
      if (v18 < 0x10000)
      {
        goto LABEL_37;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        break;
      }

      sub_22C37017C();
      v18 = sub_22C90A24C();
LABEL_34:
      if (--v17 <= v6)
      {
        return;
      }
    }

    v19 = v18 >> 16;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v26 = v5;
      v27 = v7;
      if ((*(&v26 + v19 - 1) & 0xC0) == 0x80)
      {
        v24 = -2;
        do
        {
          sub_22C38A8F0(v24);
        }

        while (v25);
        v23 = v24 + 1;
        goto LABEL_33;
      }
    }

    else
    {
      v20 = v8;
      if ((v5 & 0x1000000000000000) == 0)
      {
        v20 = sub_22C37BDB0();
      }

      if ((*(v20 + v19 - 1) & 0xC0) == 0x80)
      {
        v21 = -2;
        do
        {
          v22 = *(v20 + v19 + v21--) & 0xC0;
        }

        while (v22 == 128);
        v23 = v21 + 1;
        goto LABEL_33;
      }
    }

    v23 = -1;
LABEL_33:
    v18 = v9 | ((v23 + v19) << 16);
    goto LABEL_34;
  }

  if (v6)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v11 = v5 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v12 = v10 >> 16;
      if (v10 >> 16 >= v11)
      {
        break;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        sub_22C37017C();
        v10 = sub_22C90A23C();
      }

      else
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v26 = v5;
          v27 = v4 & 0xFFFFFFFFFFFFFFLL;
          v15 = *(&v26 + v12);
        }

        else
        {
          v13 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v13 = sub_22C37BDB0();
          }

          v14 = *(v13 + v12);
        }

        sub_22C382FB4();
        v10 = ((v12 + v16) << 16) | 5;
      }

      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }
}

unint64_t sub_22C4A7FB0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_22C4A8050(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22C763484(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22C4A8050(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_22C8A3F0C(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C4A80C0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C164(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C4A81D4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22C4A812C(uint64_t *a1)
{
  v2 = *(type metadata accessor for TranscriptReferenceResolver.BoundVariable() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C194(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C4A82C8(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C4A81D4(uint64_t *a1)
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

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_22C4A8820(v7, v8, a1, v4);
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
    return sub_22C4A83F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C4A82C8(unint64_t *a1)
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
        type metadata accessor for TranscriptReferenceResolver.BoundVariable();
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TranscriptReferenceResolver.BoundVariable() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C4A9068(v8, v9, a1, v4);
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
    return sub_22C4A85B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C4A83F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = a2;
  if (a3 != a2)
  {
    v44 = *a4;
    v4 = (*a4 + 24 * a3);
    v5 = result - a3;
    while (2)
    {
      v40 = v4;
      v42 = a3;
      v6 = (v44 + 24 * a3);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v38 = v5;
      v10 = v5;
      do
      {
        v11 = *(v4 - 1);
        v12 = v8 == *(v4 - 3) && v7 == *(v4 - 2);
        if (v12 || (v13 = *(v4 - 3), v14 = *(v4 - 2), (sub_22C90B4FC() & 1) != 0))
        {

          sub_22C874128(v9, v15, v16, v17, v18, v19, v20, v21, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, vars0, vars8);
          v23 = v22;
          sub_22C874128(v11, v24, v25, v26, v27, v28, v29, v30, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, vars0a, vars8a);
          v48 = v10;
          v32 = sub_22C4737D0(v31, v23);
        }

        else
        {
          v32 = sub_22C90B4FC();
        }

        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v44)
        {
          __break(1u);
          return result;
        }

        v8 = *v4;
        v7 = v4[1];
        v9 = v4[2];
        *v4 = *(v4 - 3);
        v4[2] = *(v4 - 1);
        *(v4 - 2) = v7;
        *(v4 - 1) = v9;
        *(v4 - 3) = v8;
        v4 -= 3;
      }

      while (!__CFADD__(v10++, 1));
      a3 = v42 + 1;
      v4 = (v40 + 24);
      v5 = v38 - 1;
      if (v42 + 1 != v36)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22C4A85B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TranscriptReferenceResolver.BoundVariable();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v39 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v30 - v17;
  v32 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v37 = -v20;
    v38 = v19;
    v22 = a1 - a3;
    v31 = v20;
    v23 = v19 + v20 * a3;
    while (2)
    {
      v35 = v21;
      v36 = a3;
      v33 = v23;
      v34 = v22;
      v24 = v21;
      do
      {
        sub_22C4AB80C();
        sub_22C4AB80C();
        v25 = &v18[*(v8 + 20)];
        v26 = sub_22C4A60B4();
        v27 = &v14[*(v8 + 20)];
        v28 = sub_22C4A60B4();
        sub_22C4AB864(v14, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
        result = sub_22C4AB864(v18, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
        if (v26 >= v28)
        {
          break;
        }

        if (!v38)
        {
          __break(1u);
          return result;
        }

        sub_22C4AB198();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22C4AB198();
        v24 += v37;
        v23 += v37;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v36 + 1;
      v21 = v35 + v31;
      v22 = v34 - 1;
      v23 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C4A8820(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v169 = a3;
  v153 = a1;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_105:
    v187 = *v153;
    if (!*v153)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_107;
    }

    goto LABEL_141;
  }

  v146 = a4;
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v166 = v6;
    if (v5 + 1 < v4)
    {
      v180 = v4;
      v9 = *v169;
      v10 = v5 + 1;
      v11 = (*v169 + 24 * v8);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = (*v169 + 24 * v7);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];

      LODWORD(v187) = sub_22C4AADD0(v12, v13, v14, v16, v17, v18);
      if (v172)
      {

LABEL_115:

        return;
      }

      v162 = 24 * v7;
      v19 = (v9 + 24 * v7 + 32);
      v149 = v7;
      v20 = v7 + 2;
      v6 = v166;
      v8 = v10;
      v21 = v180;
      while (1)
      {
        v22 = v20;
        if (v8 + 1 >= v21)
        {
          break;
        }

        v175 = v8;
        v23 = v19[4];
        v24 = v19[1];
        v25 = v19[2] == *(v19 - 1) && v19[3] == *v19;
        if (v25 || (v26 = v19[2], v27 = v19[3], v28 = *(v19 - 1), v29 = *v19, (sub_22C90B4FC() & 1) != 0))
        {

          sub_22C874128(v23, v30, v31, v32, v33, v34, v35, v36, v143, v146, v149, v153, v156, v159, v162, v166, v169, v172, v8, v180, v184, v187, v190, v193, v196, v199);
          v38 = v37;
          sub_22C874128(v24, v39, v40, v41, v42, v43, v44, v45, v144, v147, v150, v154, v157, v160, v163, v167, v170, v173, v176, v181, v185, v188, v191, v194, v197, v200);
          v47 = sub_22C4737D0(v46, v38);

          v21 = v180;
        }

        else
        {
          v47 = sub_22C90B4FC();
        }

        v19 += 3;
        v8 = v175 + 1;
        v20 = v22 + 1;
        v6 = v166;
        if ((v187 ^ v47))
        {
          goto LABEL_17;
        }
      }

      v8 = v21;
LABEL_17:
      if (v187)
      {
        v7 = v149;
        if (v8 < v149)
        {
          goto LABEL_140;
        }

        if (v149 < v8)
        {
          if (v21 >= v22)
          {
            v48 = v22;
          }

          else
          {
            v48 = v21;
          }

          v49 = 24 * v48;
          v50 = v8;
          v51 = v149;
          v52 = v162;
          do
          {
            if (v51 != --v50)
            {
              v53 = *v169;
              if (!*v169)
              {
                goto LABEL_145;
              }

              v54 = (v53 + v52);
              v55 = v53 + v49;
              v56 = *v54;
              v57 = *(v54 + 1);
              v58 = *(v55 - 24);
              v54[2] = *(v55 - 8);
              *v54 = v58;
              *(v55 - 24) = v56;
              *(v55 - 16) = v57;
            }

            ++v51;
            v49 -= 24;
            v52 += 24;
          }

          while (v51 < v50);
        }
      }

      else
      {
        v7 = v149;
      }
    }

    v59 = v169[1];
    if (v8 < v59)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < v146)
      {
        break;
      }
    }

LABEL_53:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    v179 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v133 = *(v6 + 16);
      sub_22C590218();
      v6 = v134;
    }

    v91 = *(v6 + 16);
    v92 = v91 + 1;
    if (v91 >= *(v6 + 24) >> 1)
    {
      sub_22C590218();
      v6 = v135;
    }

    *(v6 + 16) = v92;
    v93 = v6 + 32;
    v94 = (v6 + 32 + 16 * v91);
    *v94 = v7;
    v94[1] = v179;
    v95 = *v153;
    if (!*v153)
    {
      goto LABEL_146;
    }

    if (v91)
    {
      while (1)
      {
        v96 = v92 - 1;
        v97 = (v93 + 16 * (v92 - 1));
        v98 = (v6 + 16 * v92);
        if (v92 >= 4)
        {
          break;
        }

        if (v92 == 3)
        {
          v99 = *(v6 + 32);
          v100 = *(v6 + 40);
          v109 = __OFSUB__(v100, v99);
          v101 = v100 - v99;
          v102 = v109;
LABEL_73:
          if (v102)
          {
            goto LABEL_123;
          }

          v114 = *v98;
          v113 = v98[1];
          v115 = __OFSUB__(v113, v114);
          v116 = v113 - v114;
          v117 = v115;
          if (v115)
          {
            goto LABEL_126;
          }

          v118 = v97[1];
          v119 = v118 - *v97;
          if (__OFSUB__(v118, *v97))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v116, v119))
          {
            goto LABEL_131;
          }

          if (v116 + v119 >= v101)
          {
            if (v101 < v119)
            {
              v96 = v92 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        if (v92 < 2)
        {
          goto LABEL_125;
        }

        v121 = *v98;
        v120 = v98[1];
        v109 = __OFSUB__(v120, v121);
        v116 = v120 - v121;
        v117 = v109;
LABEL_88:
        if (v117)
        {
          goto LABEL_128;
        }

        v123 = *v97;
        v122 = v97[1];
        v109 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v109)
        {
          goto LABEL_130;
        }

        if (v124 < v116)
        {
          goto LABEL_102;
        }

LABEL_95:
        if (v96 - 1 >= v92)
        {
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
          goto LABEL_139;
        }

        if (!*v169)
        {
          goto LABEL_143;
        }

        v128 = (v93 + 16 * (v96 - 1));
        v129 = *v128;
        v130 = v93 + 16 * v96;
        v131 = *(v130 + 8);
        sub_22C4A99B4((*v169 + 24 * *v128), (*v169 + 24 * *v130), *v169 + 24 * v131, v95);
        if (v172)
        {
          goto LABEL_115;
        }

        if (v131 < v129)
        {
          goto LABEL_118;
        }

        v132 = *(v6 + 16);
        if (v96 > v132)
        {
          goto LABEL_119;
        }

        *v128 = v129;
        v128[1] = v131;
        if (v96 >= v132)
        {
          goto LABEL_120;
        }

        v92 = v132 - 1;
        sub_22C56BFF0((v130 + 16), v132 - 1 - v96, (v93 + 16 * v96));
        *(v6 + 16) = v132 - 1;
        if (v132 <= 2)
        {
          goto LABEL_102;
        }
      }

      v103 = v93 + 16 * v92;
      v104 = *(v103 - 64);
      v105 = *(v103 - 56);
      v109 = __OFSUB__(v105, v104);
      v106 = v105 - v104;
      if (v109)
      {
        goto LABEL_121;
      }

      v108 = *(v103 - 48);
      v107 = *(v103 - 40);
      v109 = __OFSUB__(v107, v108);
      v101 = v107 - v108;
      v102 = v109;
      if (v109)
      {
        goto LABEL_122;
      }

      v110 = v98[1];
      v111 = v110 - *v98;
      if (__OFSUB__(v110, *v98))
      {
        goto LABEL_124;
      }

      v109 = __OFADD__(v101, v111);
      v112 = v101 + v111;
      if (v109)
      {
        goto LABEL_127;
      }

      if (v112 >= v106)
      {
        v126 = *v97;
        v125 = v97[1];
        v109 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v109)
        {
          goto LABEL_135;
        }

        if (v101 < v127)
        {
          v96 = v92 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_73;
    }

LABEL_102:
    v4 = v169[1];
    v5 = v179;
    if (v179 >= v4)
    {
      goto LABEL_105;
    }
  }

  v60 = v7 + v146;
  if (__OFADD__(v7, v146))
  {
    goto LABEL_138;
  }

  if (v60 >= v59)
  {
    v60 = v169[1];
  }

  if (v60 < v7)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    v6 = sub_22C56BFD8(v6);
LABEL_107:
    v136 = (v6 + 16);
    v137 = *(v6 + 16);
    while (v137 >= 2)
    {
      if (!*v169)
      {
        goto LABEL_144;
      }

      v138 = v6;
      v139 = (v6 + 16 * v137);
      v140 = *v139;
      v141 = &v136[2 * v137];
      v6 = *(v141 + 1);
      sub_22C4A99B4((*v169 + 24 * *v139), (*v169 + 24 * *v141), *v169 + 24 * v6, v187);
      if (v172)
      {
        break;
      }

      if (v6 < v140)
      {
        goto LABEL_132;
      }

      if (v137 - 2 >= *v136)
      {
        goto LABEL_133;
      }

      *v139 = v140;
      v139[1] = v6;
      v142 = *v136 - v137;
      if (*v136 < v137)
      {
        goto LABEL_134;
      }

      v137 = *v136 - 1;
      sub_22C56BFF0(v141 + 16, v142, v141);
      *v136 = v137;
      v6 = v138;
    }

    goto LABEL_115;
  }

  if (v8 == v60)
  {
    goto LABEL_53;
  }

  v182 = *v169;
  v61 = (*v169 + 24 * v8);
  v151 = v7;
  v62 = v7 - v8;
  v156 = v60;
LABEL_39:
  v177 = v8;
  v63 = (v182 + 24 * v8);
  v65 = *v63;
  v64 = v63[1];
  v66 = v63[2];
  v159 = v62;
  v164 = v61;
  v67 = v62;
  while (1)
  {
    v68 = *(v61 - 1);
    v69 = v65 == *(v61 - 3) && v64 == *(v61 - 2);
    if (v69 || (v70 = *(v61 - 3), v71 = *(v61 - 2), (sub_22C90B4FC() & 1) != 0))
    {

      sub_22C874128(v66, v72, v73, v74, v75, v76, v77, v78, v143, v146, v151, v153, v156, v159, v164, v166, v169, v172, v177, v182, v184, v187, v190, v193, v196, v199);
      v189 = v67;
      v80 = v79;
      sub_22C874128(v68, v81, v82, v83, v84, v85, v86, v87, v145, v148, v152, v155, v158, v161, v165, v168, v171, v174, v178, v183, v186, v189, v192, v195, v198, v201);
      v89 = sub_22C4737D0(v88, v80);

      v67 = v187;
    }

    else
    {
      v89 = sub_22C90B4FC();
    }

    if ((v89 & 1) == 0)
    {
LABEL_51:
      v8 = v177 + 1;
      v61 = (v164 + 24);
      v62 = v159 - 1;
      if (v177 + 1 == v156)
      {
        v8 = v156;
        v6 = v166;
        v7 = v151;
        goto LABEL_53;
      }

      goto LABEL_39;
    }

    if (!v182)
    {
      break;
    }

    v65 = *v61;
    v64 = v61[1];
    v66 = v61[2];
    *v61 = *(v61 - 3);
    v61[2] = *(v61 - 1);
    *(v61 - 2) = v64;
    *(v61 - 1) = v66;
    *(v61 - 3) = v65;
    v61 -= 3;
    if (__CFADD__(v67++, 1))
    {
      goto LABEL_51;
    }
  }

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
}

void sub_22C4A9068(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v115 = a1;
  v6 = type metadata accessor for TranscriptReferenceResolver.BoundVariable();
  v123 = *(v6 - 8);
  v7 = *(v123 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v119 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v128 = &v113 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v130 = &v113 - v13;
  MEMORY[0x28223BE20](v12);
  v129 = &v113 - v14;
  v125 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_101:
    v131 = *v115;
    if (!v131)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v126;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v106 = v17 + 2;
      for (i = v17[2]; i >= 2; *v106 = i)
      {
        if (!*v125)
        {
          goto LABEL_138;
        }

        v108 = &v17[2 * i];
        v109 = *v108;
        v110 = &v106[2 * i];
        v111 = *(v110 + 1);
        sub_22C4A9D54(*v125 + *(v123 + 72) * *v108, *v125 + *(v123 + 72) * *v110, *v125 + *(v123 + 72) * v111, v131);
        if (v16)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v106)
        {
          goto LABEL_127;
        }

        *v108 = v109;
        v108[1] = v111;
        v112 = *v106 - i;
        if (*v106 < i)
        {
          goto LABEL_128;
        }

        i = *v106 - 1;
        sub_22C56BFF0(v110 + 16, v112, v110);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v17 = sub_22C56BFD8(v17);
    goto LABEL_103;
  }

  v113 = a4;
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v131 = v6;
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v114 = v17;
      v19 = *v125;
      v20 = *(v123 + 72);
      v21 = *v125 + v20 * v16;
      v22 = v129;
      v122 = v15;
      sub_22C4AB80C();
      v116 = v18;
      v23 = v130;
      sub_22C4AB80C();
      v24 = v22 + *(v6 + 20);
      v121 = sub_22C4A60B4();
      v17 = (v23 + *(v6 + 20));
      v120 = sub_22C4A60B4();
      sub_22C4AB864(v23, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      sub_22C4AB864(v22, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      v25 = v122;
      v26 = v116 + 2;
      v124 = v20;
      v27 = v19 + v20 * (v116 + 2);
      while (1)
      {
        v28 = v26;
        v29 = v16 + 1;
        if (v29 >= v25)
        {
          break;
        }

        LODWORD(v127) = v121 < v120;
        v30 = v29;
        v31 = v129;
        sub_22C4AB80C();
        v32 = v130;
        sub_22C4AB80C();
        v33 = v131;
        v34 = &v31[*(v131 + 20)];
        v35 = sub_22C4A60B4();
        v36 = v32 + *(v33 + 20);
        v17 = sub_22C4A60B4();
        sub_22C4AB864(v32, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
        v37 = v31;
        v16 = v30;
        sub_22C4AB864(v37, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
        v25 = v122;
        v27 += v124;
        v21 += v124;
        v26 = v28 + 1;
        if (((v127 ^ (v35 >= v17)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v16 = v25;
LABEL_9:
      if (v121 < v120)
      {
        if (v16 < v116)
        {
          goto LABEL_132;
        }

        if (v116 >= v16)
        {
          v6 = v131;
          v17 = v114;
          v18 = v116;
          goto LABEL_30;
        }

        if (v25 >= v28)
        {
          v38 = v28;
        }

        else
        {
          v38 = v25;
        }

        v39 = v124 * (v38 - 1);
        v40 = v124 * v38;
        v41 = v116 * v124;
        v42 = v16;
        v43 = v116;
        do
        {
          if (v43 != --v42)
          {
            v44 = *v125;
            if (!*v125)
            {
              goto LABEL_139;
            }

            sub_22C4AB198();
            v45 = v41 < v39 || v44 + v41 >= v44 + v40;
            if (v45)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v41 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22C4AB198();
          }

          ++v43;
          v39 -= v124;
          v40 -= v124;
          v41 += v124;
        }

        while (v43 < v42);
      }

      v6 = v131;
      v17 = v114;
      v18 = v116;
    }

LABEL_30:
    v46 = v125[1];
    if (v16 < v46)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_131;
      }

      if (v16 - v18 < v113)
      {
        break;
      }
    }

LABEL_48:
    if (v16 < v18)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = v17[2];
      sub_22C590218();
      v17 = v103;
    }

    v60 = v17[2];
    v61 = v60 + 1;
    if (v60 >= v17[3] >> 1)
    {
      sub_22C590218();
      v17 = v104;
    }

    v17[2] = v61;
    v62 = v17 + 4;
    v63 = &v17[2 * v60 + 4];
    *v63 = v18;
    v63[1] = v16;
    v127 = *v115;
    if (!v127)
    {
      goto LABEL_140;
    }

    if (v60)
    {
      while (1)
      {
        v64 = v61 - 1;
        v65 = &v62[2 * v61 - 2];
        v66 = &v17[2 * v61];
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v67 = v17[4];
          v68 = v17[5];
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_68:
          if (v70)
          {
            goto LABEL_117;
          }

          v82 = *v66;
          v81 = v66[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_120;
          }

          v86 = v65[1];
          v87 = v86 - *v65;
          if (__OFSUB__(v86, *v65))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v84, v87))
          {
            goto LABEL_125;
          }

          if (v84 + v87 >= v69)
          {
            if (v69 < v87)
            {
              v64 = v61 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v61 < 2)
        {
          goto LABEL_119;
        }

        v89 = *v66;
        v88 = v66[1];
        v77 = __OFSUB__(v88, v89);
        v84 = v88 - v89;
        v85 = v77;
LABEL_83:
        if (v85)
        {
          goto LABEL_122;
        }

        v91 = *v65;
        v90 = v65[1];
        v77 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v77)
        {
          goto LABEL_124;
        }

        if (v92 < v84)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v64 - 1 >= v61)
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

        if (!*v125)
        {
          goto LABEL_137;
        }

        v96 = &v62[2 * v64 - 2];
        v97 = *v96;
        v98 = &v62[2 * v64];
        v99 = *(v98 + 1);
        v100 = v126;
        sub_22C4A9D54(*v125 + *(v123 + 72) * *v96, *v125 + *(v123 + 72) * *v98, *v125 + *(v123 + 72) * v99, v127);
        v126 = v100;
        if (v100)
        {
          goto LABEL_99;
        }

        if (v99 < v97)
        {
          goto LABEL_112;
        }

        v101 = v17[2];
        if (v64 > v101)
        {
          goto LABEL_113;
        }

        *v96 = v97;
        v96[1] = v99;
        if (v64 >= v101)
        {
          goto LABEL_114;
        }

        v61 = v101 - 1;
        sub_22C56BFF0(v98 + 16, v101 - 1 - v64, &v62[2 * v64]);
        v17[2] = v101 - 1;
        if (v101 <= 2)
        {
          goto LABEL_97;
        }
      }

      v71 = &v62[2 * v61];
      v72 = *(v71 - 8);
      v73 = *(v71 - 7);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_115;
      }

      v76 = *(v71 - 6);
      v75 = *(v71 - 5);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_116;
      }

      v78 = v66[1];
      v79 = v78 - *v66;
      if (__OFSUB__(v78, *v66))
      {
        goto LABEL_118;
      }

      v77 = __OFADD__(v69, v79);
      v80 = v69 + v79;
      if (v77)
      {
        goto LABEL_121;
      }

      if (v80 >= v74)
      {
        v94 = *v65;
        v93 = v65[1];
        v77 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v77)
        {
          goto LABEL_129;
        }

        if (v69 < v95)
        {
          v64 = v61 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v15 = v125[1];
    v6 = v131;
    if (v16 >= v15)
    {
      goto LABEL_101;
    }
  }

  v47 = v18 + v113;
  if (__OFADD__(v18, v113))
  {
    goto LABEL_133;
  }

  if (v47 >= v46)
  {
    v47 = v125[1];
  }

  if (v47 < v18)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v16 == v47)
  {
    goto LABEL_48;
  }

  v114 = v17;
  v48 = *v125;
  v49 = *(v123 + 72);
  v50 = *v125 + v49 * (v16 - 1);
  v51 = -v49;
  v116 = v18;
  v117 = v49;
  v52 = v18 - v16;
  v127 = v48;
  v53 = v48 + v16 * v49;
  v118 = v47;
LABEL_39:
  v124 = v16;
  v120 = v53;
  v121 = v52;
  v122 = v50;
  while (1)
  {
    v54 = v129;
    sub_22C4AB80C();
    v55 = v130;
    sub_22C4AB80C();
    v56 = v54 + *(v6 + 20);
    v57 = sub_22C4A60B4();
    v58 = v55 + *(v6 + 20);
    v59 = sub_22C4A60B4();
    sub_22C4AB864(v55, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
    sub_22C4AB864(v54, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
    if (v57 >= v59)
    {
      v6 = v131;
LABEL_46:
      v16 = v124 + 1;
      v50 = v122 + v117;
      v52 = v121 - 1;
      v53 = v120 + v117;
      if (v124 + 1 == v118)
      {
        v16 = v118;
        v17 = v114;
        v18 = v116;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (!v127)
    {
      break;
    }

    sub_22C4AB198();
    v6 = v131;
    swift_arrayInitWithTakeFrontToBack();
    sub_22C4AB198();
    v50 += v51;
    v53 += v51;
    v45 = __CFADD__(v52++, 1);
    if (v45)
    {
      goto LABEL_46;
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

uint64_t sub_22C4A99B4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_22C38D024(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    v98 = v5;
    v91 = v10;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = *(v6 + 2);
      v13 = *(v4 + 2);
      v14 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v14 || (v15 = *v6, v16 = *(v6 + 1), v17 = *v4, v18 = *(v4 + 1), (sub_22C90B4FC() & 1) != 0))
      {

        sub_22C874128(v12, v19, v20, v21, v22, v23, v24, v25, v73, v76, v79, v83, v87, v91, v95, v98, v102, v105, v108, v111, v114, v117, v120, v123, vars0, vars8);
        v27 = v26;
        sub_22C874128(v13, v28, v29, v30, v31, v32, v33, v34, v74, v77, v80, v84, v88, v92, v96, v99, v103, v106, v109, v112, v115, v118, v121, v124, vars0a, vars8a);
        v87 = v12;
        v36 = sub_22C4737D0(v35, v27);
      }

      else
      {
        v36 = sub_22C90B4FC();
      }

      v5 = v98;
      v10 = v91;
      if ((v36 & 1) == 0)
      {
        break;
      }

      v37 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 += 24;
    }

    v37 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_20;
    }

LABEL_19:
    v38 = *v37;
    *(v7 + 2) = *(v37 + 2);
    *v7 = v38;
    goto LABEL_20;
  }

  sub_22C38D024(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
  v81 = v7;
  v85 = v4;
LABEL_22:
  v39 = v5 - 24;
  v89 = (v6 - 24);
  while (v10 > v4 && v6 > v7)
  {
    v100 = v39;
    v93 = v10;
    v41 = v10 - 24;
    v42 = *(v10 - 1);
    v43 = *(v6 - 1);
    v44 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (v44 || (v45 = *(v10 - 3), v46 = *(v10 - 2), v47 = *(v6 - 3), v48 = *(v6 - 2), (sub_22C90B4FC() & 1) != 0))
    {

      sub_22C874128(v42, v49, v50, v51, v52, v53, v54, v55, v73, v76, v81, v85, v89, v93, v95, v39, v102, v105, v108, v111, v114, v117, v120, v123, vars0, vars8);
      v57 = v56;
      sub_22C874128(v43, v58, v59, v60, v61, v62, v63, v64, v75, v78, v82, v86, v90, v94, v97, v101, v104, v107, v110, v113, v116, v119, v122, v125, vars0b, vars8b);
      v66 = sub_22C4737D0(v65, v57);
    }

    else
    {
      v66 = sub_22C90B4FC();
    }

    v5 = v100;
    v10 = v93;
    v67 = (v100 + 24);
    if (v66)
    {
      v14 = v67 == v6;
      v6 = v89;
      v7 = v81;
      v4 = v85;
      if (!v14)
      {
        v69 = *v89;
        *(v100 + 16) = *(v89 + 16);
        *v100 = v69;
        v6 = v89;
      }

      goto LABEL_22;
    }

    v7 = v81;
    if (v93 != v67)
    {
      v68 = *v41;
      *(v100 + 16) = *(v41 + 2);
      *v100 = v68;
    }

    v39 = v100 - 24;
    v10 = v41;
    v4 = v85;
  }

LABEL_42:
  v70 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v70])
  {
    memmove(v6, v4, 24 * v70);
  }

  return 1;
}

uint64_t sub_22C4A9D54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v68 = a4;
  v67 = type metadata accessor for TranscriptReferenceResolver.BoundVariable();
  v7 = *(*(v67 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v67);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v65 = &v58 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v14 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v13;
  v71 = a1;
  v70 = v68;
  v18 = v15 / v13;
  if (v17 >= v15 / v13)
  {
    v37 = v68;
    sub_22C3D70E0(a2, v15 / v13, v68);
    v38 = v37 + v18 * v13;
    v39 = -v13;
    v40 = v38;
    v61 = -v13;
    v62 = a1;
LABEL_36:
    v41 = a3;
    v59 = v40;
    v42 = v40;
    v63 = a2 + v39;
    while (1)
    {
      if (v38 <= v68)
      {
        v71 = a2;
        v69 = v42;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v60 = v42;
      v43 = a2;
      a3 = v41 + v39;
      v44 = v38 + v39;
      v45 = v65;
      v46 = v38;
      sub_22C4AB80C();
      v47 = v66;
      sub_22C4AB80C();
      v48 = v67;
      v49 = v45 + *(v67 + 20);
      v64 = sub_22C4A60B4();
      v50 = v47 + *(v48 + 20);
      v51 = sub_22C4A60B4();
      sub_22C4AB864(v47, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      sub_22C4AB864(v45, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      if (v64 < v51)
      {
        v53 = v46;
        if (v41 < v43 || a3 >= v43)
        {
          a2 = v63;
          swift_arrayInitWithTakeFrontToBack();
          v40 = v60;
          v39 = v61;
          a1 = v62;
          v38 = v53;
        }

        else
        {
          v39 = v61;
          v40 = v60;
          a1 = v62;
          v55 = v63;
          a2 = v63;
          v38 = v53;
          if (v41 != v43)
          {
            v56 = v60;
            v57 = v38;
            swift_arrayInitWithTakeBackToFront();
            v38 = v57;
            a2 = v55;
            v40 = v56;
          }
        }

        goto LABEL_36;
      }

      v52 = v41 < v46 || a3 >= v46;
      a2 = v43;
      if (v52)
      {
        swift_arrayInitWithTakeFrontToBack();
        v41 = a3;
        v38 = v44;
        v42 = v44;
        v39 = v61;
        a1 = v62;
      }

      else
      {
        v42 = v44;
        v14 = v46 == v41;
        v41 = a3;
        v38 = v44;
        v39 = v61;
        a1 = v62;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v41 = a3;
          v38 = v44;
          v42 = v44;
        }
      }
    }

    v71 = a2;
    v69 = v59;
  }

  else
  {
    v19 = v68;
    sub_22C3D70E0(a1, (a2 - a1) / v13, v68);
    v64 = v19 + v17 * v13;
    v69 = v64;
    v20 = v13;
    while (v68 < v64 && a2 < a3)
    {
      v22 = a1;
      v23 = a3;
      v24 = v65;
      sub_22C4AB80C();
      v25 = a2;
      v26 = v66;
      sub_22C4AB80C();
      v27 = v67;
      v28 = v24 + *(v67 + 20);
      v29 = sub_22C4A60B4();
      v30 = v26 + *(v27 + 20);
      v31 = sub_22C4A60B4();
      sub_22C4AB864(v26, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      sub_22C4AB864(v24, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      if (v29 >= v31)
      {
        a2 = v25;
        v35 = v68 + v20;
        v32 = v22;
        if (v22 < v68 || v22 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v23;
        }

        else
        {
          a3 = v23;
          if (v22 != v68)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v70 = v35;
        v68 = v35;
      }

      else
      {
        a2 = v25 + v20;
        v32 = v22;
        v33 = v22 < v25 || v22 >= a2;
        v34 = v25;
        if (v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v23;
        }

        else
        {
          a3 = v23;
          if (v22 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v32 + v20;
      v71 = a1;
    }
  }

LABEL_58:
  sub_22C838170(&v71, &v70, &v69);
  return 1;
}

uint64_t sub_22C4AA240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BD050, &qword_22C917420) + 48);
  v5 = *(sub_22C3A5908(&qword_27D9BAEB8, &qword_22C90D760) + 48);
  result = sub_22C88FBBC(a2, a1, *(a1 + v4));
  *(a2 + v5) = result;
  return result;
}

uint64_t sub_22C4AA2B0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(sub_22C3A5908(&qword_27D9BC210, &unk_22C917470) + 48);
  v3 = a1 + *(sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0) + 48);

  return sub_22C88FBFC();
}

uint64_t sub_22C4AA32C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v45 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v55 = *(v45 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v45);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BD058, &qword_22C917428);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  sub_22C8920A0(v53, a1, a2, a3);
  v49 = v53[0];
  v50 = v53[1];
  v51 = v53[2];
  v52 = v54;
  v47 = a1;

  v46 = a3;

  while (1)
  {
    sub_22C8902AC();
    v17 = sub_22C3A5908(&qword_27D9BAEB8, &qword_22C90D760);
    if (sub_22C370B74(v16, 1, v17) == 1)
    {
      sub_22C36A674();
    }

    v18 = *(v17 + 48);
    sub_22C4AB198();
    v19 = *&v16[v18];
    v20 = *a5;
    v28 = sub_22C62832C(v12);
    v29 = v20[2];
    v30 = (v21 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v21;
    if (v20[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BD060, &unk_22C917430);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88C78C(v31, a4 & 1, v22, v23, v24, v25, v26, v27, v45, v46, v47, v48, v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1), v52, *&v53[0]);
      v33 = *a5;
      v34 = sub_22C62832C(v12);
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_16;
      }

      v28 = v34;
    }

    v36 = *a5;
    if (v32)
    {
      sub_22C4AB864(v12, type metadata accessor for PromptTreeIdentifier.Label);
      v37 = v36[7];
      v38 = *(v37 + 8 * v28);
      *(v37 + 8 * v28) = v19;

      a4 = 1;
    }

    else
    {
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v39 = v36[6];
      v40 = *(v55 + 72);
      sub_22C4AB198();
      *(v36[7] + 8 * v28) = v19;
      v41 = v36[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_15;
      }

      v36[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4AA670(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v59 = a5;
  v9 = sub_22C902D0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v49 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v52 = v48 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v48 - v16;
  v18 = sub_22C3A5908(&qword_27D9BC248, &unk_22C912440);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v48 - v20;
  sub_22C8920A0(v57, a1, a2, a3);
  v53 = v57[0];
  v54 = v57[1];
  v55 = v57[2];
  v56 = v58;
  v50 = v10;
  v51 = (v10 + 32);
  v48[4] = v10 + 8;
  v48[5] = v10 + 16;
  v48[3] = v10 + 40;
  v48[1] = a1;

  v48[0] = a3;

  while (1)
  {
    sub_22C890534();
    v22 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
    if (sub_22C370B74(v21, 1, v22) == 1)
    {
      sub_22C36A674();
    }

    v23 = *(v22 + 48);
    v24 = *v51;
    (*v51)(v17, v21, v9);
    v24(v52, &v21[v23], v9);
    v25 = *v59;
    sub_22C6280AC();
    v28 = v27;
    v29 = *(v25 + 16);
    v30 = (v26 & 1) == 0;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v31 = v26;
    if (*(v25 + 24) >= v29 + v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC250, qword_22C912450);
        sub_22C90B16C();
      }
    }

    else
    {
      v32 = v59;
      sub_22C88CA14();
      v33 = *v32;
      sub_22C6280AC();
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_16;
      }

      v28 = v34;
    }

    v36 = *v59;
    if (v31)
    {
      v38 = v49;
      v37 = v50;
      v39 = v17;
      v40 = v52;
      (*(v50 + 16))(v49, v52, v9);
      v41 = *(v37 + 8);
      v42 = v40;
      v17 = v39;
      v41(v42, v9);
      v41(v39, v9);
      (*(v37 + 40))(v36[7] + *(v37 + 72) * v28, v38, v9);
      a4 = 1;
    }

    else
    {
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v43 = *(v50 + 72) * v28;
      v24((v36[6] + v43), v17, v9);
      v24((v36[7] + v43), v52, v9);
      v44 = v36[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_15;
      }

      v36[2] = v46;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4AAD90(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_22C90AE5C();
  v4 = *(a1 + 36);
  return result;
}

void *sub_22C4AAE9C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22C90A30C();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v6 = sub_22C4AAFF8(v4, 0);

  v7 = sub_22C4AAF2C(&v9, v6 + 4, v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_22C4AAF2C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_22C90A3AC();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22C4AAFF8(uint64_t a1, uint64_t a2)
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

  sub_22C3A5908(&qword_27D9BAE90, &qword_22C90D738);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t type metadata accessor for PromptTreeResolution.State()
{
  result = qword_27D9BD0B0;
  if (!qword_27D9BD0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4AB0E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22C4AB144()
{
  result = qword_27D9BD0A0;
  if (!qword_27D9BD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD0A0);
  }

  return result;
}

uint64_t sub_22C4AB198()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

void sub_22C4AB24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v37 = (&a9 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v26)
  {

    sub_22C7DBFD0();
    v39 = v38;
    v41 = v40;
    v28 = v42;
  }

  else if (v28)
  {
    a10 = v20;
    v39 = 0;
    v43 = *v24;
    v44 = *(v35 + 72);
    while (1)
    {
      sub_22C4AB80C();
      if (sub_22C48865C(*v37, v43))
      {
        v45 = *(v33 + 20);
        if (sub_22C901F6C() & 1) != 0 && (sub_22C48819C(*(v37 + *(v33 + 24)), *(v24 + *(v33 + 24))))
        {
          break;
        }
      }

      sub_22C4AB8C0();
      sub_22C4AB864(v37, v46);
      ++v39;
      v30 += v44;
      if (v28 == v39)
      {
        v28 = 0;
        v39 = 0;
        v41 = 1;
        goto LABEL_12;
      }
    }

    sub_22C4AB8C0();
    sub_22C4AB864(v37, v47);
    v28 = 0;
    v41 = 0;
  }

  else
  {
    v39 = 0;
    v41 = 1;
  }

LABEL_12:
  *v32 = v39;
  *(v32 + 8) = v41 & 1;
  *(v32 + 16) = v28;
  sub_22C36FB20();
}

void sub_22C4AB464()
{
  sub_22C4AB4E8();
  if (v0 <= 0x3F)
  {
    sub_22C4AB540();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C4AB4E8()
{
  if (!qword_27D9BD0C0)
  {
    type metadata accessor for PromptTreeIdentifier.TurnChange(255);
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BD0C0);
    }
  }
}

void sub_22C4AB540()
{
  if (!qword_27D9BD0C8)
  {
    type metadata accessor for PromptTreeIdentifier.Label(255);
    sub_22C3AC1A0(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C4AB0E0(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label);
    v0 = sub_22C909F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BD0C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for PromptTreeResolutionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PromptTreeResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C4AB764()
{
  result = qword_27D9BD0D0;
  if (!qword_27D9BD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD0D0);
  }

  return result;
}

unint64_t sub_22C4AB7B8()
{
  result = qword_27D9BD0D8;
  if (!qword_27D9BD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD0D8);
  }

  return result;
}

uint64_t sub_22C4AB80C()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C4AB864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C4AB8D8()
{
  result = *(v0 - 72);
  v2 = *(v0 - 280);
  return result;
}

uint64_t sub_22C4AB93C()
{
  v2 = *(v0 + 16);
}

uint64_t (*sub_22C4AB954(uint64_t (*a1)(unint64_t), uint64_t (*a2)(uint64_t a1), unint64_t a3))(uint64_t a1)
{
  v7 = type metadata accessor for PromptTreeIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3 >> 61)
  {
    case 2uLL:
      v16 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v17 = swift_projectBox();
      v18 = *(v17 + *(v16 + 48));
      sub_22C4AEC28(v17, v10);
      v44 = swift_allocBox();
      v20 = v19;
      sub_22C4AEC28(v10, v19);
      swift_beginAccess();
      v21 = *(v18 + 16);

      v22 = sub_22C4AB954(a1, a2, v21);
      if (!v3)
      {
        v38 = v22;

        v39 = *(v16 + 48);

        sub_22C4AEBD0(v10, type metadata accessor for PromptTreeIdentifier);
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        v40 = swift_allocObject();
        *(v40 + 16) = v38;
        *(v20 + v39) = v40;
        a3 = v44 | 0x4000000000000000;
        goto LABEL_3;
      }

      a2 = type metadata accessor for PromptTreeIdentifier;
      sub_22C4AEBD0(v10, type metadata accessor for PromptTreeIdentifier);
      sub_22C4AEBD0(v20, type metadata accessor for PromptTreeIdentifier);
      swift_deallocBox();
      return a2;
    case 3uLL:
      v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = swift_allocObject();
      v13 = *(v11 + 16);

      sub_22C4ABDA8(a1, a2, v13);
      v15 = v14;

      if (v3)
      {
        goto LABEL_11;
      }

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v37 = swift_allocObject();
      *(v37 + 16) = v15;
      *(v12 + 16) = v37;
      a3 = v12 | 0x6000000000000000;
      goto LABEL_3;
    case 4uLL:
      v30 = a3 & 0x1FFFFFFFFFFFFFFFLL;
      v31 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *(v30 + 24);
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      swift_beginAccess();
      v34 = *(v32 + 16);

      v35 = sub_22C4AB954(a1, a2, v34);

      if (v3)
      {
        goto LABEL_11;
      }

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      v42 = swift_allocObject();
      *(v42 + 16) = v35;
      *(v33 + 24) = v42;
      a3 = v33 | 0x8000000000000000;
      goto LABEL_3;
    case 5uLL:
      v23 = a3 & 0x1FFFFFFFFFFFFFFFLL;
      v24 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *(v23 + 24);
      v26 = *(v23 + 32);
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      *(v27 + 24) = v25;
      swift_beginAccess();
      v28 = *(v26 + 16);

      v29 = sub_22C4AB954(a1, a2, v28);

      if (v3)
      {
LABEL_11:
        swift_deallocUninitializedObject();
      }

      else
      {
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        v41 = swift_allocObject();
        *(v41 + 16) = v29;
        *(v27 + 32) = v41;
        a3 = v27 | 0xA000000000000000;
LABEL_3:
        a2 = a1(a3);
      }

      return a2;
    default:

      goto LABEL_3;
  }
}

void sub_22C4ABDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v18 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v20 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v21 = swift_allocObject();
    v21[2] = v18;
    v21[3] = v19;
    v22 = *(v20 + 16);
    sub_22C480170(v18, v19);

    v23 = sub_22C4ABDA8(a1, a2, v22);

    if (v3)
    {
      sub_22C48FEE0(v21[2], v21[3]);
      swift_deallocUninitializedObject();
    }

    else
    {
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v21[4] = v24;
    }
  }

  else
  {
    v6 = *(a3 + 16);
    v7 = sub_22C36E2B8(v6);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = v7;
      v27 = MEMORY[0x277D84F90];

      sub_22C3B63D4();
      if ((v9 & 0x8000000000000000) == 0)
      {
        v25 = v9;
        v26 = a1;
        v10 = 0;
        v8 = v27;
        while (1)
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if ((v6 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x2318B8460](v10, v6);
          }

          else
          {
            if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v12 = *(v6 + 8 * v10 + 32);
          }

          swift_beginAccess();
          v13 = *(v12 + 16);

          v14 = a2;
          v15 = sub_22C4AB954(v26, a2, v13);
          if (v3)
          {

            return;
          }

          v16 = v15;

          v17 = *(v27 + 16);
          if (v17 >= *(v27 + 24) >> 1)
          {
            sub_22C3B63D4();
          }

          *(v27 + 16) = v17 + 1;
          *(v27 + 8 * v17 + 32) = v16;
          ++v10;
          a2 = v14;
          if (v11 == v25)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
LABEL_18:
      sub_22C3DB9B0(v8);
    }
  }
}

void sub_22C4AC054(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = v69 - v13;
  v15 = type metadata accessor for TranscriptReferenceResolver.BoundVariable();
  v85 = *(v15 - 8);
  v16 = *(v85 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C3A5908(&qword_27D9BD0E0, &qword_22C9175C8);
  sub_22C36985C(v20);
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  v25 = (v69 - v24);
  v86 = MEMORY[0x277D84F90];
  sub_22C493F24();
  if (v1)
  {

    return;
  }

  v83 = a1;
  v70 = v19;
  v79 = v3;
  v80 = v6;
  v29 = v26;
  v30 = v27;
  v31 = v28;

  swift_retain_n();
  swift_retain_n();

  v75 = v30;
  v76 = v29;
  v74 = v31;
  sub_22C4AE47C(v29, v30, v29, v30, v31);
  v77 = v32;
  v34 = v33;
  v36 = v35;
  sub_22C4060D8(MEMORY[0x277D84F90]);
  v37 = 0;
  v86 = v38;
  v87 = v39;
  v88 = v40;
  v41 = *(v36 + 16);
  v42 = v34 + 32;
  v89 = v36;
  v43 = v36 + 32;
  v84 = v11;
  v78 = v14;
  v82 = v34;
  v72 = v34 + 32;
  v73 = v41;
  v71 = v36 + 32;
LABEL_4:
  if (v37 != v41)
  {
    if (v37 < *(v34 + 16))
    {
      if (v37 >= *(v89 + 16))
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v44 = *(v42 + 8 * v37);
      v45 = *(v43 + 8 * v37);
      v81 = v37 + 1;
      v46 = *(v45 + 16);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      for (i = 0; ; ++i)
      {
        if (v46 == i)
        {
          swift_bridgeObjectRelease_n();

          v11 = v84;
          v37 = v81;
          v34 = v82;
          v42 = v72;
          v41 = v73;
          v43 = v71;
          goto LABEL_4;
        }

        if (i >= *(v45 + 16))
        {
          break;
        }

        v48 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) - 8);
        v49 = v45 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
        v50 = *(v48 + 72);
        v51 = *(v20 + 48);
        *v25 = i;
        sub_22C4AEE10();
        sub_22C4AEC28(v52, v25 + v51);
        sub_22C4AC718(i, v25 + v51, v44, &v86);
        sub_22C36DD28(v25, &qword_27D9BD0E0, &qword_22C9175C8);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  v53 = v86;
  v54 = v87;
  v55 = v88;

  sub_22C492838();
  v57 = *(v55 + 16);
  if (!v57)
  {

    return;
  }

  v69[1] = v56;
  v86 = MEMORY[0x277D84F90];
  v72 = v53;

  v71 = v54;

  v83 = v57;
  sub_22C3B65D4();
  v58 = 0;
  v59 = v86;
  v60 = v80;
  v81 = v55 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
  v61 = v70;
  v73 = v55;
  while (v58 < *(v55 + 16))
  {
    v62 = v78;
    sub_22C3E8FB4(v81 + *(v60 + 72) * v58, v78, &qword_27D9BAEC8, &unk_22C90D770);
    v63 = v62[1];
    v64 = *(v79 + 48);
    *v11 = *v62;
    v11[1] = v63;
    sub_22C388694();
    sub_22C4AEC84(v62 + v64, v11 + v64);
    sub_22C4AEC28(v11 + v64, v61);
    sub_22C36DD28(v11, &qword_27D9BAEC8, &unk_22C90D770);
    v86 = v59;
    v65 = *(v59 + 16);
    if (v65 >= *(v59 + 24) >> 1)
    {
      sub_22C3B65D4();
      v59 = v86;
    }

    ++v58;
    *(v59 + 16) = v65 + 1;
    v66 = v59 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v67 = *(v85 + 72);
    sub_22C388694();
    sub_22C4AEC84(v61, v68);
    v11 = v84;
    v60 = v80;
    v55 = v73;
    if (v83 == v58)
    {

      return;
    }
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_22C4AC718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v143 = a4;
  v140 = a2;
  v132 = a1;
  v5 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v129 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for TranscriptReferenceResolver.BoundVariable();
  v8 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v128 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BD0E8, &qword_22C9175D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v137 = (&v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = &v126 - v14;
  v138 = type metadata accessor for PromptTreeIdentifier(0);
  v16 = *(*(v138 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v138);
  v139 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v126 - v19;
  v21 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  v134 = *(v21 - 8);
  v135 = v21;
  v22 = *(v134 + 64);
  MEMORY[0x28223BE20](v21);
  v133 = &v126 - v23;
  v24 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22C902D0C();
  v144 = *(v28 - 8);
  v29 = *(v144 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v126 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v127 = &v126 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v146 = (&v126 - v35);
  MEMORY[0x28223BE20](v34);
  v130 = &v126 - v36;
  v37 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = (&v126 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22C4AD420(a3, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v131 = v5;
  if (EnumCaseMultiPayload != 1)
  {
    v42 = v28;
    switch(sub_22C370B74(v40, 3, v28))
    {
      case 1u:
        v84 = 120;
        break;
      case 2u:
        v84 = 114;
        break;
      case 3u:
        v147 = 0x5F797469746E65;
        v148 = 0xE700000000000000;
        v149 = v132;
        v85 = sub_22C90B47C();
        MEMORY[0x2318B7850](v85);

        v136 = sub_22C90A2AC();
        v142 = v86;

        if (a3 < 0)
        {
          goto LABEL_8;
        }

        goto LABEL_23;
      default:
        goto LABEL_7;
    }

    v147 = v84;
    v148 = 0xE100000000000000;
    v149 = v132;
    v87 = sub_22C90B47C();
    MEMORY[0x2318B7850](v87);

    v65 = v147;
    v64 = v148;
LABEL_22:
    v136 = v65;
    v142 = v64;
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_8:
    v48 = swift_projectBox();
    (*(v134 + 16))(v133, v48, v135);
    v49 = sub_22C90677C();
    v51 = *v143;
    v50 = v143[1];
    v52 = v143[2];
    MEMORY[0x28223BE20](v49);
    *(&v126 - 4) = v54;
    *(&v126 - 3) = v53;
    *(&v126 - 2) = v20;
    v55 = v145;
    v56 = sub_22C7D5C6C(sub_22C4AE9CC, (&v126 - 6), v53);
    if (v57)
    {
      v58 = 1;
    }

    else
    {
      sub_22C405404(v56, v52);
      v58 = 0;
    }

    v59 = v146;
    v60 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
    sub_22C36C640(v15, v58, 1, v60);
    sub_22C4AEBD0(v20, type metadata accessor for PromptTreeIdentifier);
    v61 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
    if (sub_22C370B74(v15, 1, v61))
    {

      sub_22C36DD28(v15, &qword_27D9BD0E8, &qword_22C9175D0);
      sub_22C4A4C7C();
      swift_allocError();
      *v62 = 3;
      swift_willThrow();
      return (*(v134 + 8))(v133, v135);
    }

    v145 = v55;
    v66 = v128;
    sub_22C4AEC28(&v15[*(v61 + 48)], v128);
    sub_22C36DD28(v15, &qword_27D9BD0E8, &qword_22C9175D0);
    v67 = v144;
    v68 = v126;
    v69 = v42;
    (*(v144 + 16))(v126, v66 + *(v141 + 20), v42);
    sub_22C4AEBD0(v66, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
    v70 = *(v67 + 32);
    v71 = v127;
    v72 = v69;
    v70(v127, v68, v69);
    v73 = v129;
    v74 = v135;
    v75 = v133;
    sub_22C90676C();
    (*(v134 + 8))(v75, v74);
    v76 = swift_getEnumCaseMultiPayload();
    if (v76)
    {
      if (v76 == 1)
      {
        v77 = v130;
        v70(v130, v73, v72);
        v78 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
        v79 = swift_allocBox();
        v81 = v80;
        v82 = *(v78 + 48);
        v70(v80, v71, v72);
        v70(&v81[v82], v77, v72);
        *v59 = v79;
        v83 = v144;
        v42 = v72;
        (*(v144 + 104))(v59, *MEMORY[0x277D1D7D0], v72);
      }

      else
      {
        v119 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
        v120 = swift_allocBox();
        v122 = v121;
        v123 = *(v119 + 48);
        v70(v121, v71, v72);
        v124 = swift_allocObject();
        *(v124 + 16) = v132;
        *(v124 + 24) = 0;
        *(v124 + 32) = 1;
        *&v122[v123] = v124;
        v83 = v144;
        v125 = *(v144 + 104);
        v125(&v122[v123], *MEMORY[0x277D1D7E8], v72);
        *v59 = v120;
        v42 = v72;
        v125(v59, *MEMORY[0x277D1D7D0], v72);
      }
    }

    else
    {
      v108 = v71;
      v109 = v59;
      v111 = *v73;
      v110 = v73[1];
      v112 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
      v135 = swift_allocBox();
      v114 = v113;
      v115 = *(v112 + 48);
      v70(v113, v108, v72);
      v116 = swift_allocObject();
      *(v116 + 16) = v111;
      *(v116 + 24) = v110;
      *(v116 + 32) = 3;
      *&v114[v115] = v116;
      v117 = *(v144 + 104);
      v83 = v144;
      v117(&v114[v115], *MEMORY[0x277D1D7E8], v72);
      *v109 = v135;
      v118 = v109;
      v42 = v72;
      v117(v118, *MEMORY[0x277D1D7D0], v72);
    }

    goto LABEL_29;
  }

  v42 = v28;
  v43 = swift_getEnumCaseMultiPayload();
  if (!v43)
  {
    v65 = *v40;
    v64 = v40[1];
    goto LABEL_22;
  }

  if (v43 == 1)
  {
LABEL_7:
    v45 = v144;
    v46 = v130;
    (*(v144 + 32))(v130, v40, v42);
    v136 = sub_22C902CEC();
    v142 = v47;
    (*(v45 + 8))(v46, v42);
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  v147 = v132;
  v136 = sub_22C90B47C();
  v142 = v44;
  if (a3 < 0)
  {
    goto LABEL_8;
  }

LABEL_23:
  v88 = swift_projectBox();
  v89 = v42;
  v90 = sub_22C370B74(v88, 3, v42);
  if ((v90 - 1) >= 2)
  {
    v95 = v146;
    if (v90)
    {
      v96 = swift_allocObject();
      v147 = 0x5F797469746E65;
      v148 = 0xE700000000000000;
      v149 = v132;
      v97 = sub_22C90B47C();
      MEMORY[0x2318B7850](v97);

      v98 = v148;
      *(v96 + 16) = v147;
      *(v96 + 24) = v98;
      *(v96 + 32) = 3;
      *v95 = v96;
      v83 = v144;
      (*(v144 + 104))(v95, *MEMORY[0x277D1D7E8], v89);
    }

    else
    {
      sub_22C4AEC28(v88, v27);
      v83 = v144;
      (*(v144 + 32))(v95, v27, v89);
    }

    v42 = v89;
LABEL_29:
    v92 = v136;
    v93 = v142;
    goto LABEL_30;
  }

  v91 = swift_allocObject();
  v92 = v136;
  v93 = v142;
  *(v91 + 16) = v136;
  *(v91 + 24) = v93;
  v94 = v146;
  *v146 = v91;
  v83 = v144;
  (*(v144 + 104))(v94, *MEMORY[0x277D1D7C8], v42);

LABEL_30:
  v99 = v140;
  sub_22C4AEC28(v140, v139);
  swift_storeEnumTagMultiPayload();
  v100 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  v101 = v137;
  v102 = v137 + *(v100 + 48);
  *v137 = v92;
  *(v101 + 8) = v93;
  v103 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v104 = *(v83 + 16);
  v105 = v99 + *(v103 + 20);
  v106 = v42;
  v104(v102, v105, v42);
  v107 = v146;
  v104(&v102[*(v141 + 20)], v146, v106);
  sub_22C36C640(v101, 0, 1, v100);
  sub_22C7C6EE4();
  return (*(v83 + 8))(v107, v106);
}

uint64_t sub_22C4AD420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  if (a1 < 0)
  {
    v11 = swift_projectBox();
    (*(v5 + 16))(v8, v11, v4);
    sub_22C90676C();
    (*(v5 + 8))(v8, v4);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
    v9 = swift_projectBox();
    sub_22C4AEC28(v9, a2);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t (*sub_22C4AD5AC(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v39 = a4;
  v7 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  sub_22C36985C(v7);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v12 = (&v38 - v11);
  v13 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  sub_22C36985C(v13);
  v15 = *(v14 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v19 = type metadata accessor for PromptTreeIdentifier(0);
  v20 = sub_22C369914(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v25 = v24 - v23;
  if (a1 >> 61 == 2)
  {
    v26 = swift_projectBox();
    sub_22C3E8FB4(v26, v18, &qword_27D9BC420, &qword_22C919300);
    v27 = *&v18[*(v13 + 48)];
    sub_22C3870B0();
    v28 = sub_22C4AEC84(v18, v25);
    MEMORY[0x28223BE20](v28);
    *(&v38 - 4) = a2;
    *(&v38 - 3) = a3;
    *(&v38 - 2) = v25;
    v29 = sub_22C7D5C6C(sub_22C4AEDF8, (&v38 - 6), a3);
    if ((v30 & 1) == 0)
    {
      sub_22C405404(v29, v39);
      v32 = *v12;
      v33 = v12[1];
      sub_22C4AEBD0(v12 + *(v7 + 48), type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      v34 = swift_beginAccess();
      v35 = *(v27 + 16);
      MEMORY[0x28223BE20](v34);
      *(&v38 - 4) = v25;
      *(&v38 - 3) = v32;
      *(&v38 - 2) = v33;

      a1 = sub_22C4AB954(sub_22C4AEA08, (&v38 - 6), v35);

      sub_22C36A9F0();
      sub_22C4AEBD0(v25, v36);
      return a1;
    }

    sub_22C36A9F0();
    sub_22C4AEBD0(v25, v31);
  }

  return a1;
}

unint64_t sub_22C4AD860(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  if (a1 >> 61 == 1 && (v14 = swift_projectBox(), sub_22C4AEC28(v14, v13), sub_22C486784(), sub_22C485FE8(), v16 = v15, sub_22C4AEBD0(v11, type metadata accessor for PromptTreeIdentifier.Label), sub_22C4AEBD0(v13, type metadata accessor for PromptTreeIdentifier.Label), (v16 & 1) != 0))
  {
    a1 = swift_allocObject();
    *(a1 + 16) = a3;
    *(a1 + 24) = a4;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_22C4AD9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v17 = sub_22C369914(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  if (a1 < 0)
  {
    if (a2 < 0)
    {
      v29 = swift_projectBox();
      v30 = swift_projectBox();
      v31 = *(v7 + 16);
      v31(v15, v29, v4);
      v31(v12, v30, v4);
      type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
      type metadata accessor for PromptTreeIdentifier(0);
      sub_22C3727C8();
      sub_22C4AEB88(v32, v33);
      sub_22C36BD24();
      sub_22C4AEB88(v34, v35);
      v28 = sub_22C90675C();
      v36 = *(v7 + 8);
      v36(v12, v4);
      v36(v15, v4);
      return v28 & 1;
    }

    goto LABEL_5;
  }

  if (a2 < 0)
  {
LABEL_5:
    v28 = 0;
    return v28 & 1;
  }

  v26 = swift_projectBox();
  swift_projectBox();
  sub_22C4AEE28();
  sub_22C4AEC28(v26, v25);
  sub_22C4AEC28(v12, v22);
  sub_22C486D10();
  v28 = v27;
  sub_22C4AEBD0(v22, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
  sub_22C4AEBD0(v25, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
  return v28 & 1;
}

uint64_t sub_22C4ADC7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  sub_22C369824(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v12 = sub_22C369914(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = swift_projectBox();
  if (a2 < 0)
  {
    (*(v5 + 16))(v10, v18, v3);
    MEMORY[0x2318B8B10](1);
    sub_22C4AEB24();
    sub_22C909F8C();
    return (*(v5 + 8))(v10, v3);
  }

  else
  {
    sub_22C4AEC28(v18, v17);
    MEMORY[0x2318B8B10](0);
    sub_22C486F70();
    sub_22C4AEE40();
    return sub_22C4AEBD0(v17, v19);
  }
}

uint64_t sub_22C4ADE08(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C4ADC7C(v3, a1);
  return sub_22C90B66C();
}

uint64_t sub_22C4ADE60()
{
  v1 = *v0;
  sub_22C90B62C();
  sub_22C4ADC7C(v3, v1);
  return sub_22C90B66C();
}

uint64_t sub_22C4ADEB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v79 = a2;
  v82 = a1;
  v4 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v80 = &v73 - v8;
  v9 = type metadata accessor for PromptTreeIdentifier(0);
  v10 = sub_22C36985C(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  v77 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v78 = &v73 - v16;
  v76 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  v17 = sub_22C36985C(v76);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v75 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v81 = &v73 - v23;
  v24 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v25 = sub_22C36985C(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v30 = v29 - v28;
  v31 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  v32 = sub_22C36985C(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v37 = v36 - v35;
  v38 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  sub_22C36985C(v38);
  v40 = *(v39 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v41);
  v43 = &v73 - v42;
  v44 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v45 = sub_22C369914(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C369ABC();
  v50 = v48 - v49;
  result = MEMORY[0x28223BE20](v51);
  if (a3 >> 61 == 2)
  {
    v74 = &v73 - v53;
    v54 = swift_projectBox();
    sub_22C3E8FB4(v54, v43, &qword_27D9BC420, &qword_22C919300);
    v55 = *&v43[*(v38 + 48)];

    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C36A9F0();
      v57 = v43;
    }

    else
    {
      v58 = v9;
      v59 = v74;
      sub_22C4AEC84(v43, v74);
      sub_22C4AEC28(v59, v37);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v60 = v81;
        sub_22C4AEC84(v37, v81);
        v61 = v80;
        sub_22C3E8FB4(v79, v80, &qword_27D9BCF28, qword_22C9175E0);
        if (sub_22C370B74(v61, 1, v58) == 1)
        {
          sub_22C36DD28(v61, &qword_27D9BCF28, qword_22C9175E0);
          sub_22C4A4C7C();
          swift_allocError();
          *v62 = 3;
          swift_willThrow();
          sub_22C374B64();
          sub_22C369DB4();
          return sub_22C4AEBD0(v74, v63);
        }

        sub_22C3870B0();
        v66 = v78;
        sub_22C4AEC84(v61, v78);
        sub_22C4AEE10();
        sub_22C4AEC28(v74, v50);
        sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
        v67 = swift_allocBox();
        sub_22C4AEC28(v60, v75);
        sub_22C4AEC28(v66, v77);
        sub_22C3727C8();
        sub_22C4AEB88(v68, v69);
        sub_22C36BD24();
        sub_22C4AEB88(v70, v71);
        sub_22C90678C();
        sub_22C7C7320(v67 | 0x8000000000000000, v50);
        sub_22C36A9F0();
        sub_22C4AEBD0(v66, v72);
        sub_22C374B64();
        sub_22C369DB4();
        v57 = v74;
      }

      else
      {
        sub_22C4AEC84(v37, v30);
        sub_22C4AEE10();
        sub_22C4AEC28(v59, v50);
        swift_allocBox();
        sub_22C4AEE28();
        sub_22C4AEC28(v30, v64);
        sub_22C7C7320(v9, v50);
        sub_22C4AEE40();
        sub_22C4AEBD0(v30, v65);
        sub_22C369DB4();
        v57 = v59;
      }
    }

    return sub_22C4AEBD0(v57, v56);
  }

  return result;
}

uint64_t type metadata accessor for TranscriptReferenceResolver.BoundVariable()
{
  result = qword_27D9BD108;
  if (!qword_27D9BD108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C4AE47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a1;
  v9 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v69 = *(v9 - 8);
  v10 = *(v69 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v68 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - v15;
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v74 = 0;
  v75 = MEMORY[0x277D84F90];
  v19 = *(a2 + 16);
  v70 = a5;
  v71 = v19;
  v66 = a3;
  v67 = a5 + 32;
  v64 = a2;
  v65 = a4;
  v73 = &v60 - v15;
  while (1)
  {
    if (v71 == v17)
    {

      return;
    }

    if (v17 >= *(a2 + 16))
    {
      break;
    }

    v20 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v72 = *(v69 + 72);
    sub_22C4AEC28(a2 + v20 + v72 * v17, v16);
    v21 = *(a4 + 16);
    if (a3)
    {

      sub_22C7DC5D4(v16, a4 + v20, v21, a3 + 16, a3 + 32, v22, v23, v24, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
      v26 = v25;
      v28 = v27;

      if (v28)
      {
        goto LABEL_41;
      }

      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v29 = *(a4 + 16);
      sub_22C7D9F30();
      if (v31)
      {
        goto LABEL_41;
      }

      v26 = v30;
      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    if (v26 >= *(v70 + 16))
    {
      goto LABEL_38;
    }

    v32 = *(v67 + 8 * v26);
    v33 = *(v75 + 16);
    if (v74)
    {

      sub_22C7DACF8();
      v35 = v34;
      v37 = v36;

      if (v37)
      {
        goto LABEL_15;
      }
    }

    else
    {

      sub_22C7D918C();
      if (v39)
      {
LABEL_15:
        sub_22C7D46C0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = *(v18 + 16);
          sub_22C3B6684();
          v18 = v76;
        }

        v42 = *(v18 + 16);
        if (v42 >= *(v18 + 24) >> 1)
        {
          sub_22C3B6684();
          v18 = v76;
        }

        *(v18 + 16) = v42 + 1;
        v43 = v18 + 32;
        *(v18 + 32 + 8 * v42) = MEMORY[0x277D84F90];
        sub_22C4AEC28(v73, v68);
        v44 = *(v18 + 32 + 8 * v42);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        *(v18 + 32 + 8 * v42) = v44;
        if ((v45 & 1) == 0)
        {
          v52 = *(v44 + 16);

          sub_22C59148C();
          v53 = *(v43 + 8 * v42);
          *(v43 + 8 * v42) = v54;

          v44 = *(v43 + 8 * v42);
        }

        v46 = *(v44 + 16);
        v47 = v46 + 1;
        if (v46 >= *(v44 + 24) >> 1)
        {
          sub_22C59148C();
          v44 = v55;
          *(v43 + 8 * v42) = v55;
        }

        v48 = v68;
        goto LABEL_34;
      }

      v35 = v38;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C17C(v18);
      v18 = v49;
    }

    if ((v35 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    if (v35 >= *(v18 + 16))
    {
      goto LABEL_40;
    }

    v50 = v18 + 32;
    sub_22C4AEC28(v73, v63);
    v44 = *(v18 + 32 + 8 * v35);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(v18 + 32 + 8 * v35) = v44;
    if ((v51 & 1) == 0)
    {
      v56 = *(v44 + 16);

      sub_22C59148C();
      v57 = *(v50 + 8 * v35);
      *(v50 + 8 * v35) = v58;

      v44 = *(v50 + 8 * v35);
    }

    v46 = *(v44 + 16);
    v47 = v46 + 1;
    if (v46 >= *(v44 + 24) >> 1)
    {
      sub_22C59148C();
      v44 = v59;
      *(v50 + 8 * v35) = v59;
    }

    v48 = v63;
LABEL_34:
    *(v44 + 16) = v47;
    sub_22C4AEC84(v48, v44 + v20 + v46 * v72);

    v16 = v73;
    sub_22C4AEBD0(v73, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
    ++v17;
    a4 = v65;
    a3 = v66;
    a2 = v64;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_22C4AE9CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_22C38B964();
  return sub_22C4AEA68(v4, v5, v6, v7, v8, sub_22C7D909C, v9);
}

uint64_t sub_22C4AEA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a7@<X8>)
{
  if (a3)
  {

    v13 = a5(a4, a1, a2, a3 + 16, a3 + 32);
    v15 = v14;
    v17 = v16;
  }

  else
  {
    result = a6(a4, a1, a2);
    v13 = result;
    v15 = v19;
    v17 = 0;
  }

  *a7 = v13;
  *(a7 + 8) = v15 & 1;
  *(a7 + 16) = v17;
  return result;
}

unint64_t sub_22C4AEB24()
{
  result = qword_27D9BD0F8;
  if (!qword_27D9BD0F8)
  {
    sub_22C3AC1A0(&qword_27D9BD0F0, &qword_22C9175D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD0F8);
  }

  return result;
}

uint64_t sub_22C4AEB88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C4AEBD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C4AEC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v6 = v5(v4);
  sub_22C36985C(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22C4AEC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v6 = v5(v4);
  sub_22C36985C(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22C4AED34()
{
  result = sub_22C902D0C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22C4AEDA4()
{
  result = qword_27D9BD118;
  if (!qword_27D9BD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD118);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemToolProtocolGrouping(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C4AEF08()
{
  result = qword_27D9BD120;
  if (!qword_27D9BD120)
  {
    sub_22C3AC1A0(&qword_27D9BD128, qword_22C917760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD120);
  }

  return result;
}

uint64_t sub_22C4AEF6C()
{
  v0 = sub_22C908D6C();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C908DEC();
  v9 = result;
  v10 = 0;
  v11 = *(result + 16);
  v18[1] = v3 + 16;
  v12 = *MEMORY[0x277D72188];
  v13 = *MEMORY[0x277D72178];
  v14 = (v3 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v10 = v11;
      goto LABEL_9;
    }

    v15 = v9;
    (*(v3 + 16))(v7, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v0);
    result = (*(v3 + 88))(v7, v0);
    if (result == v12)
    {
      break;
    }

    if (result == v13)
    {
      goto LABEL_8;
    }

    result = (*v14)(v7, v0);
    ++v10;
    v9 = v15;
  }

  result = (*v14)(v7, v0);
LABEL_8:
  v9 = v15;
LABEL_9:
  v16 = *(v9 + 16);
  if (v10 == v16)
  {
    goto LABEL_12;
  }

  if (v10 >= v16)
  {
    __break(1u);
  }

  else
  {
    v17 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10;
    result = sub_22C4AF1C0();
    if ((result & 1) == 0)
    {
LABEL_12:

      return v10 == v16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22C4AF16C()
{
  result = qword_27D9BD130;
  if (!qword_27D9BD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD130);
  }

  return result;
}

BOOL sub_22C4AF1C0()
{
  v1 = v0;
  v2 = sub_22C908D6C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v1, v2);
  v10 = (*(v5 + 88))(v9, v2);
  v11 = v10 != *MEMORY[0x277D72188];
  if (v10 != *MEMORY[0x277D72188] && v10 == *MEMORY[0x277D72178])
  {
    return 0;
  }

  (*(v5 + 8))(v9, v2);
  return v11;
}

void sub_22C4AF300()
{
  sub_22C4AF374();
  if (v0 <= 0x3F)
  {
    sub_22C908EAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C4AF374()
{
  if (!qword_27D9BD148)
  {
    type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(255);
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BD148);
    }
  }
}

uint64_t sub_22C4AF414()
{
  result = sub_22C9036EC();
  if (v1 <= 0x3F)
  {
    result = sub_22C9037DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C4AF4A0()
{
  v58 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v1 = sub_22C369824(v58);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v60 = v7 - v6;
  sub_22C36BA0C();
  v8 = sub_22C9036EC();
  v9 = sub_22C369824(v8);
  v61 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v15 = v14 - v13;
  v16 = sub_22C908EAC();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  v27 = v26;
  v28 = sub_22C36BA0C();
  v29 = type metadata accessor for FetchedTools(v28);
  v30 = sub_22C36985C(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v35 = (v34 - v33);
  sub_22C36AA08();
  sub_22C4B7E50(v0, v35);
  v59 = v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v19 + 32))(v27, v35, v16);
    sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
    v36 = *(v3 + 72);
    v37 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_22C90F800;
    (*(v19 + 16))(v24, v27, v16);
    sub_22C9036CC();
    sub_22C9037DC();
    v57 = *(v58 + 24);
    sub_22C373410();
    sub_22C4B1ACC(v39, v40);
    v41 = sub_22C37B5F4();
    sub_22C3A5908(v41, v42);
    sub_22C388F5C();
    sub_22C3D32C8(v43, &qword_27D9BB828, &unk_22C912AE0);
    sub_22C90AE4C();
    *(v38 + v37 + *(v58 + 20)) = 0;
    (*(v19 + 8))(v27, v16);
  }

  else
  {
    v38 = *v35;
  }

  v44 = *(v38 + 16);
  if (v44)
  {
    v62 = MEMORY[0x277D84F90];
    sub_22C3B657C(0, v44, 0);
    v45 = *(v59 + 80);
    sub_22C36BA94();
    v47 = v38 + v46;
    v48 = *(v59 + 72);
    v49 = v62;
    do
    {
      sub_22C4B7E50(v47, v60);
      (*(v61 + 16))(v15, v60, v8);
      sub_22C4B7EA8(v60, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v50 = v8;
      v52 = *(v62 + 16);
      v51 = *(v62 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_22C3B657C(v51 > 1, v52 + 1, 1);
      }

      *(v62 + 16) = v52 + 1;
      v53 = *(v61 + 80);
      sub_22C36BA94();
      (*(v55 + 32))(v62 + v54 + *(v55 + 72) * v52, v15, v50);
      v47 += v48;
      --v44;
      v8 = v50;
    }

    while (v44);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v49;
}

uint64_t sub_22C4AF928()
{
  v1 = v0;
  v2 = sub_22C908EAC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v32 - v12;
  v14 = type metadata accessor for FetchedTools(0);
  v15 = sub_22C36985C(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v20 = v19 - v18;
  sub_22C36AA08();
  sub_22C4B7E50(v1, v20);
  sub_22C37B5F4();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v20;
  }

  v21 = *(v5 + 32);
  v22 = sub_22C37335C();
  v23(v22);
  sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
  v24 = (type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0) - 8);
  v25 = *(*v24 + 72);
  v26 = (*(*v24 + 80) + 32) & ~*(*v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22C90F800;
  (*(v5 + 16))(v10, v13, v2);
  sub_22C9036CC();
  sub_22C9037DC();
  v34 = MEMORY[0x277D84F90];
  v32[1] = v24[8];
  sub_22C373410();
  sub_22C4B1ACC(v28, v29);
  v33 = v2;
  sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
  sub_22C388F5C();
  sub_22C3D32C8(v30, &qword_27D9BB828, &unk_22C912AE0);
  sub_22C90AE4C();
  *(v27 + v26 + v24[7]) = 0;
  (*(v5 + 8))(v13, v33);
  return v27;
}

BOOL sub_22C4AFBFC(uint64_t a1, uint64_t a2)
{
  if ((sub_22C9036DC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  sub_22C9037DC();
  sub_22C373410();
  sub_22C4B1ACC(v7, v8);
  sub_22C37335C();
  sub_22C90A56C();
  sub_22C37335C();
  sub_22C90A56C();
  return v10 == v9;
}

uint64_t sub_22C4AFCCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7269447070417369 && a2 == 0xED00006465746365;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C4AFDE8(char a1)
{
  if (!a1)
  {
    return 0x6974696E69666564;
  }

  if (a1 == 1)
  {
    return 0x7269447070417369;
  }

  return 0x656372756F73;
}

uint64_t sub_22C4AFE4C(void *a1)
{
  v4 = v1;
  v6 = sub_22C3A5908(&qword_27D9BD210, &qword_22C917A08);
  sub_22C369824(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C37FCFC();
  v12 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C4B7DFC();
  sub_22C90B6CC();
  sub_22C9036EC();
  sub_22C4B8808();
  sub_22C4B1ACC(v13, v14);
  sub_22C36FC80();
  if (!v2)
  {
    v15 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
    v16 = *(v4 + *(v15 + 20));
    sub_22C90B3DC();
    v17 = *(v15 + 24);
    sub_22C9037DC();
    sub_22C373410();
    sub_22C4B1ACC(v18, v19);
    sub_22C36FC80();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_22C4B0024()
{
  sub_22C9036EC();
  sub_22C4B8808();
  sub_22C4B1ACC(v1, v2);
  sub_22C909F8C();
  v3 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v4 = *(v0 + *(v3 + 20));
  sub_22C90B64C();
  v5 = *(v3 + 24);
  sub_22C9037DC();
  sub_22C373410();
  sub_22C4B1ACC(v6, v7);
  return sub_22C909F8C();
}

uint64_t sub_22C4B00F4()
{
  sub_22C90B62C();
  sub_22C9036EC();
  sub_22C4B8808();
  sub_22C4B1ACC(v1, v2);
  sub_22C909F8C();
  v3 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v4 = *(v0 + *(v3 + 20));
  sub_22C90B64C();
  v5 = *(v3 + 24);
  sub_22C9037DC();
  sub_22C373410();
  sub_22C4B1ACC(v6, v7);
  sub_22C909F8C();
  return sub_22C90B66C();
}

void sub_22C4B01DC()
{
  sub_22C370030();
  v2 = v1;
  v33 = v3;
  v34 = sub_22C9037DC();
  v4 = sub_22C369824(v34);
  v32 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v10 = v9 - v8;
  v36 = sub_22C9036EC();
  v11 = sub_22C369824(v36);
  v35 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v37 = sub_22C3A5908(&qword_27D9BD1F0, &qword_22C917A00);
  sub_22C369824(v37);
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  v18 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v19 = sub_22C36985C(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v24 = v23 - v22;
  v25 = v2[4];
  sub_22C374168(v2, v2[3]);
  sub_22C4B7DFC();
  sub_22C90B6BC();
  if (v0)
  {
    sub_22C36FF94(v2);
  }

  else
  {
    sub_22C4B8808();
    sub_22C4B1ACC(v26, v27);
    sub_22C90B32C();
    (*(v35 + 32))();
    *(v24 + *(v18 + 20)) = sub_22C90B2EC() & 1;
    sub_22C373410();
    sub_22C4B1ACC(v28, v29);
    sub_22C90B32C();
    v30 = sub_22C374B8C();
    v31(v30);
    (*(v32 + 32))(v24 + *(v18 + 24), v10, v34);
    sub_22C4B7E50(v24, v33);
    sub_22C36FF94(v2);
    sub_22C4B7EA8(v24, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
  }

  sub_22C36FB20();
}

uint64_t sub_22C4B05CC(uint64_t a1, uint64_t a2)
{
  v40 = sub_22C908EAC();
  v4 = sub_22C369824(v40);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = type metadata accessor for FetchedTools(0);
  v13 = sub_22C36985C(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v39 - v20);
  v22 = sub_22C3A5908(&qword_27D9BD1E8, &qword_22C9179F8);
  sub_22C369914(v22);
  v24 = *(v23 + 64);
  sub_22C36D5A8();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v39 - v27;
  v29 = *(v26 + 56);
  sub_22C4B7E50(a1, &v39 - v27);
  sub_22C4B7E50(a2, &v28[v29]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C36AA08();
    sub_22C4B7E50(v28, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = &v28[v29];
      v31 = v40;
      (*(v6 + 32))(v11, v30, v40);
      v32 = sub_22C908E6C();
      v33 = *(v6 + 8);
      v33(v11, v31);
      v34 = sub_22C37B5F4();
      (v33)(v34);
LABEL_9:
      sub_22C4B7EA8(v28, type metadata accessor for FetchedTools);
      return v32 & 1;
    }

    (*(v6 + 8))(v18, v40);
  }

  else
  {
    sub_22C36AA08();
    sub_22C4B7E50(v28, v21);
    v35 = *v21;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = *&v28[v29];
      sub_22C46E974();
      v32 = v37;

      goto LABEL_9;
    }
  }

  sub_22C36DD28(v28, &qword_27D9BD1E8, &qword_22C9179F8);
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_22C4B089C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x727465526C6F6F74 && a2 == 0xED00006C61766569;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022C930D90 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C4B0974(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x727465526C6F6F74;
  }
}

void sub_22C4B09BC()
{
  sub_22C370030();
  v64 = v1;
  v62 = v0;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BD1B8, &qword_22C9179E0);
  v5 = sub_22C369824(v4);
  v60 = v6;
  v61 = v5;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D5B4();
  v57 = v10;
  sub_22C36BA0C();
  v11 = sub_22C908EAC();
  v12 = sub_22C369824(v11);
  v58 = v13;
  v59 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v18 = v17 - v16;
  v19 = sub_22C3A5908(&qword_27D9BD1C0, &qword_22C9179E8);
  v20 = sub_22C369824(v19);
  v55 = v21;
  v56 = v20;
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  v26 = &v54 - v25;
  v27 = type metadata accessor for FetchedTools(0);
  v28 = sub_22C36985C(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v33 = (v32 - v31);
  v63 = sub_22C3A5908(&qword_27D9BD1C8, &qword_22C9179F0);
  sub_22C369824(v63);
  v35 = v34;
  v37 = *(v36 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  v40 = &v54 - v39;
  v41 = v3[4];
  sub_22C374168(v3, v3[3]);
  sub_22C4B7C64();
  sub_22C90B6CC();
  sub_22C36AA08();
  sub_22C4B7E50(v62, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v58;
    (*(v58 + 32))(v18, v33, v59);
    sub_22C4B7CB8();
    v43 = v57;
    v44 = v63;
    sub_22C90B36C();
    sub_22C38B97C();
    sub_22C4B1ACC(v45, v46);
    v47 = v61;
    sub_22C90B41C();
    (*(v60 + 8))(v43, v47);
    v48 = *(v42 + 8);
    v49 = sub_22C36FC74();
    v50(v49);
    (*(v35 + 8))(v40, v44);
  }

  else
  {
    v51 = *v33;
    sub_22C4B7D0C();
    v52 = v63;
    sub_22C36D77C();
    sub_22C90B36C();
    v65 = v51;
    sub_22C3A5908(&qword_27D9BAF98, &qword_22C90D838);
    sub_22C4B7D60(&qword_27D9BD1D8, &qword_27D9BD1E0);
    v53 = v56;
    sub_22C90B41C();
    (*(v55 + 8))(v26, v53);
    (*(v35 + 8))(v40, v52);
  }

  sub_22C36FB20();
}

uint64_t sub_22C4B0E10()
{
  sub_22C369A48();
  v1 = sub_22C908EAC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = type metadata accessor for FetchedTools(0);
  v11 = sub_22C36985C(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v16 = (v15 - v14);
  sub_22C36AA08();
  sub_22C4B7E50(v0, v16);
  sub_22C37B5F4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v4 + 32);
    v18 = sub_22C37335C();
    v19(v18);
    MEMORY[0x2318B8B10](1);
    sub_22C38B97C();
    sub_22C4B1ACC(v20, v21);
    sub_22C909F8C();
    return (*(v4 + 8))(v9, v1);
  }

  else
  {
    v23 = *v16;
    MEMORY[0x2318B8B10](0);
    sub_22C47216C();
  }
}

uint64_t sub_22C4B0FA4()
{
  sub_22C90B62C();
  sub_22C4B0E10();
  return sub_22C90B66C();
}

void sub_22C4B0FE4()
{
  sub_22C370030();
  v85 = v0;
  v3 = v2;
  v82 = v4;
  v5 = sub_22C3A5908(&qword_27D9BD170, &qword_22C9179C8);
  v78 = sub_22C369824(v5);
  v79 = v6;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D5B4();
  v81 = v10;
  v11 = sub_22C3A5908(&qword_27D9BD178, &qword_22C9179D0);
  v12 = sub_22C369824(v11);
  v76 = v13;
  v77 = v12;
  v15 = *(v14 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C36D5B4();
  v80 = v17;
  v18 = sub_22C3A5908(&qword_27D9BD180, &qword_22C9179D8);
  v19 = sub_22C369824(v18);
  v83 = v20;
  v84 = v19;
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C37FCFC();
  v24 = type metadata accessor for FetchedTools(0);
  v25 = sub_22C36985C(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369ABC();
  v30 = v28 - v29;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v71 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v71 - v35;
  v37 = v3[4];
  sub_22C374168(v3, v3[3]);
  sub_22C4B7C64();
  v38 = v85;
  sub_22C90B6BC();
  if (v38)
  {
    goto LABEL_10;
  }

  v73 = v36;
  v74 = v30;
  v72 = v34;
  v75 = v24;
  v85 = v3;
  v39 = v84;
  v40 = sub_22C90B34C();
  sub_22C3E1F24(v40, 0);
  if (v42 == v43 >> 1)
  {
    v44 = v75;
LABEL_9:
    v54 = sub_22C90AFBC();
    swift_allocError();
    v56 = v55;
    v57 = *(sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0) + 48);
    *v56 = v44;
    sub_22C90B25C();
    sub_22C90AFAC();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v83 + 8))(v1, v39);
    v3 = v85;
LABEL_10:
    v58 = v3;
LABEL_11:
    sub_22C36FF94(v58);
    sub_22C36FB20();
    return;
  }

  if (v42 < (v43 >> 1))
  {
    v45 = *(v41 + v42);
    sub_22C3E1F20(v42 + 1);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    v50 = v74;
    if (v47 == v49 >> 1)
    {
      v51 = v45;
      v52 = v39;
      if (v51)
      {
        sub_22C4B7CB8();
        sub_22C36D77C();
        sub_22C90B24C();
        v53 = v82;
        sub_22C908EAC();
        sub_22C38B97C();
        sub_22C4B1ACC(v59, v60);
        sub_22C90B32C();
        swift_unknownObjectRelease();
        v62 = sub_22C370188();
        v63(v62);
        v64 = sub_22C3727E0();
        v65(v64);
        swift_storeEnumTagMultiPayload();
        sub_22C36AA08();
        v66 = v50;
      }

      else
      {
        sub_22C4B7D0C();
        sub_22C36D77C();
        sub_22C90B24C();
        v53 = v82;
        sub_22C3A5908(&qword_27D9BAF98, &qword_22C90D838);
        sub_22C4B7D60(&qword_27D9BD1A8, &qword_27D9BD1B0);
        sub_22C90B32C();
        v61 = v83;
        swift_unknownObjectRelease();
        v67 = sub_22C4B8844();
        v68(v67);
        (*(v61 + 8))(v1, v52);
        v69 = v72;
        *v72 = v86;
        swift_storeEnumTagMultiPayload();
        sub_22C36AA08();
        v66 = v69;
      }

      v70 = v73;
      sub_22C4B86BC(v66, v73);
      sub_22C36AA08();
      sub_22C4B86BC(v70, v53);
      v58 = v85;
      goto LABEL_11;
    }

    v44 = v75;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_22C4B1654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C4AFCCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C4B167C(uint64_t a1)
{
  v2 = sub_22C4B7DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4B16B8(uint64_t a1)
{
  v2 = sub_22C4B7DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C4B16FC(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  sub_22C9036EC();
  sub_22C4B1ACC(&qword_281435770, MEMORY[0x277D1ED00]);
  sub_22C909F8C();
  v4 = *(v2 + *(a2 + 20));
  sub_22C90B64C();
  v5 = *(a2 + 24);
  sub_22C9037DC();
  sub_22C4B1ACC(&qword_27D9BC7F0, MEMORY[0x277D1ED48]);
  sub_22C909F8C();
  return sub_22C90B66C();
}

uint64_t sub_22C4B187C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C4B089C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C4B18A4(uint64_t a1)
{
  v2 = sub_22C4B7C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4B18E0(uint64_t a1)
{
  v2 = sub_22C4B7C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C4B191C(uint64_t a1)
{
  v2 = sub_22C4B7CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4B1958(uint64_t a1)
{
  v2 = sub_22C4B7CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C4B1994(uint64_t a1)
{
  v2 = sub_22C4B7D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4B19D0(uint64_t a1)
{
  v2 = sub_22C4B7D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C4B1A14()
{
  sub_22C90B62C();
  sub_22C4B0E10();
  return sub_22C90B66C();
}

uint64_t sub_22C4B1ACC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22C4B1B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v23;
  a20 = v24;
  v257 = v21;
  v255 = v20;
  v26 = v25;
  v256 = v27;
  v28 = sub_22C3A5908(&qword_27D9BD288, &qword_22C917EB8);
  sub_22C369914(v28);
  v30 = *(v29 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  sub_22C36D5B4();
  v250 = v32;
  sub_22C36BA0C();
  v33 = sub_22C9063DC();
  v34 = sub_22C369824(v33);
  v258 = v35;
  v259 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C369ABC();
  v264 = v38 - v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA64();
  v251 = v41;
  sub_22C36BA0C();
  v242 = sub_22C906CAC();
  v42 = sub_22C369824(v242);
  v241 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C369838();
  v240 = v47 - v46;
  v48 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v48);
  v50 = *(v49 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v51);
  sub_22C36D5B4();
  v260 = v52;
  sub_22C36BA0C();
  v245 = sub_22C903F4C();
  v53 = sub_22C369824(v245);
  v244 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22C369838();
  v243 = v58 - v57;
  sub_22C36BA0C();
  v248 = sub_22C9079FC();
  v59 = sub_22C369824(v248);
  v247 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C369838();
  v246 = v64 - v63;
  sub_22C36BA0C();
  v272 = sub_22C90377C();
  v65 = sub_22C369824(v272);
  v261 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C369ABC();
  v271 = v69 - v70;
  sub_22C369930();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA64();
  v270 = v72;
  sub_22C36BA0C();
  v269 = sub_22C9037EC();
  v73 = sub_22C369824(v269);
  v273 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22C369838();
  v268 = v78 - v77;
  v79 = sub_22C36BA0C();
  v274 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(v79);
  v80 = sub_22C369824(v274);
  v267 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22C369ABC();
  v265 = (v84 - v85);
  sub_22C369930();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA64();
  v266 = v87;
  sub_22C36BA0C();
  v88 = sub_22C9089DC();
  v275 = sub_22C369824(v88);
  v276 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v275);
  sub_22C369ABC();
  v262 = (v92 - v93);
  sub_22C369930();
  MEMORY[0x28223BE20](v94);
  v263 = &v236 - v95;
  sub_22C369930();
  MEMORY[0x28223BE20](v96);
  v98 = &v236 - v97;
  v254 = sub_22C907C8C();
  v99 = sub_22C369824(v254);
  v253 = v100;
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v99);
  sub_22C369838();
  v252 = v104 - v103;
  v105 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v105);
  v107 = *(v106 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v108);
  sub_22C37FCFC();
  v109 = sub_22C908A0C();
  v110 = sub_22C369824(v109);
  v112 = v111;
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v110);
  sub_22C369838();
  v117 = v116 - v115;
  v249 = v26;
  a10 = sub_22C9087DC();
  v118 = sub_22C36BA00();
  sub_22C3A5908(v118, v119);
  sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
  v120 = v109;
  sub_22C907E0C();
  if (sub_22C370B74(v22, 1, v109) != 1)
  {
    (*(v112 + 32))(v117, v22, v109);

    sub_22C9089EC();
    v130 = v275;
    v131 = v276;
    v132 = *(v276 + 88);
    v133 = sub_22C37B5F4();
    v134 = v132(v133) == *MEMORY[0x277D1E740];
    v239 = v120;
    v238 = v112;
    if (v134)
    {
      v237 = v117;
      v135 = *(v131 + 96);
      v136 = sub_22C37B5F4();
      v137(v136);
      v138 = *(v253 + 32);
      v139 = sub_22C37BA1C();
      v140(v139, v98, v254);
      v141 = *(sub_22C907C6C() + 16);
      if (v141)
      {
        a10 = MEMORY[0x277D84F90];
        sub_22C3B685C(0, v141, 0);
        v265 = *(v273 + 16);
        v142 = a10;
        v143 = *(v273 + 80);
        sub_22C36BA94();
        sub_22C37F76C();
        sub_22C4B8820(*MEMORY[0x277D1ED30]);
        v144 = v261;
        do
        {
          v275 = v141;
          v276 = v142;
          v146 = v268;
          v145 = v269;
          v265(v268, v120, v269);
          sub_22C90371C();
          v147 = v270;
          sub_22C90378C();
          v149 = v271;
          v148 = v272;
          (*v262)(v271, v263, v272);
          v150 = sub_22C90376C();
          v151 = *v144;
          (*v144)(v149, v148);
          v152 = v147;
          v153 = v266;
          v151(v152, v148);
          v154 = v274;
          v155 = v153 + *(v274 + 24);
          sub_22C90379C();
          v156 = v145;
          v142 = v276;
          (*v260)(v146, v156);
          *(v153 + *(v154 + 20)) = v150 & 1;
          a10 = v142;
          v158 = *(v142 + 16);
          v157 = *(v142 + 24);
          if (v158 >= v157 >> 1)
          {
            sub_22C382FD0(v157);
            v142 = a10;
          }

          *(v142 + 16) = v158 + 1;
          v159 = *(v267 + 80);
          sub_22C36BA94();
          sub_22C3870C8(v162, v142 + v160 + *(v161 + 72) * v158);
          v120 += v264;
          v141 = v275 - 1;
        }

        while (v275 != 1);
      }

      v179 = v256;
      sub_22C38267C();
      v195 = sub_22C4B2B54(v193, v194);

      sub_22C36FB04(&a16);
      v197 = v252;
      v198 = &a17;
    }

    else
    {
      v163 = *(v131 + 8);
      v164 = sub_22C37B5F4();
      v163(v164);
      v165 = v263;
      v166 = v132;
      sub_22C9089EC();
      v167 = v165;
      v168 = sub_22C37B5F4();
      v266 = v166;
      v169 = v166(v168);
      v170 = *MEMORY[0x277D1E808];
      v171 = v117;
      v264 = v131 + 8;
      if (v169 != v170)
      {
        (v163)(v167, v130);
        sub_22C38267C();
        v179 = v256;
        goto LABEL_17;
      }

      v254 = v163;
      v237 = v117;
      (*(v276 + 96))(v167, v130);
      v172 = v247;
      v173 = *(v247 + 32);
      v174 = sub_22C37BA1C();
      v175 = v248;
      v176(v174);
      v177 = v260;
      sub_22C90798C();
      v178 = v245;
      if (sub_22C370B74(v177, 1, v245) == 1)
      {
        (*(v172 + 8))(v167, v175);
        sub_22C36DD28(v177, &qword_27D9BD290, &qword_22C917EC0);
        sub_22C38267C();
        v179 = v256;
        v171 = v237;
        v163 = v254;
LABEL_17:
        v180 = v262;
        v181 = v171;
        sub_22C9089EC();
        v182 = sub_22C36FC74();
        if (v266(v182) == *MEMORY[0x277D1E738])
        {
          v183 = *(v276 + 96);
          v184 = sub_22C36FC74();
          v185(v184);
          v186 = v171;
          v187 = v241;
          v188 = *(v241 + 32);
          v189 = sub_22C37BA1C();
          v190 = v242;
          v191(v189, v180, v242);
          sub_22C906C8C();
          (*(v187 + 8))(v181, v190);
          sub_22C36FB04(&v270);
          v192(v186, v239);
          type metadata accessor for FetchedTools(0);
LABEL_27:
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
        }

        v200 = sub_22C36FC74();
        v163(v200);
        v195 = MEMORY[0x277D84F90];
        v199 = v250;
        goto LABEL_23;
      }

      v208 = *(v244 + 32);
      v209 = sub_22C37BA1C();
      v210(v209, v177, v178);
      v211 = *(sub_22C903F1C() + 16);
      if (v211)
      {
        a10 = MEMORY[0x277D84F90];
        sub_22C3B685C(0, v211, 0);
        v266 = *(v273 + 16);
        v212 = a10;
        v213 = *(v273 + 80);
        sub_22C36BA94();
        sub_22C37F76C();
        sub_22C4B8820(*MEMORY[0x277D1ED30]);
        v214 = v261;
        do
        {
          v275 = v211;
          v276 = v212;
          v216 = v268;
          v215 = v269;
          (v266)(v268, v120, v269);
          sub_22C90371C();
          v217 = v270;
          sub_22C90378C();
          v219 = v271;
          v218 = v272;
          (*v262)(v271, v263, v272);
          v220 = sub_22C90376C();
          v221 = *v214;
          (*v214)(v219, v218);
          v222 = v217;
          v223 = v265;
          v221(v222, v218);
          v224 = v274;
          v225 = v223 + *(v274 + 24);
          sub_22C90379C();
          v226 = v215;
          v212 = v276;
          (*v260)(v216, v226);
          *(v223 + *(v224 + 20)) = v220 & 1;
          a10 = v212;
          v228 = *(v212 + 16);
          v227 = *(v212 + 24);
          if (v228 >= v227 >> 1)
          {
            sub_22C382FD0(v227);
            v212 = a10;
          }

          *(v212 + 16) = v228 + 1;
          v229 = *(v267 + 80);
          sub_22C36BA94();
          sub_22C3870C8(v232, v212 + v230 + *(v231 + 72) * v228);
          v120 += v264;
          v211 = v275 - 1;
        }

        while (v275 != 1);

        v179 = v256;
        v178 = v245;
      }

      else
      {

        v179 = v256;
      }

      sub_22C38267C();
      v195 = sub_22C4B2B54(v233, v234);

      sub_22C36FB04(&v276);
      v235(v243, v178);
      sub_22C36FB04(&a10);
      v197 = v246;
      v198 = &a11;
    }

    v196(v197, *(v198 - 32));
    v199 = v250;
    v171 = v237;
    if (*(v195 + 16))
    {
LABEL_26:
      sub_22C36C640(v199, 1, 1, v274);
      sub_22C4B3BB0(v195, v199);
      v206 = v205;

      sub_22C36DD28(v199, &qword_27D9BD288, &qword_22C917EB8);
      sub_22C36FB04(&v270);
      v207(v171, v239);
      *v179 = v206;
      type metadata accessor for FetchedTools(0);
      goto LABEL_27;
    }

LABEL_23:
    v201 = v171;
    sub_22C903F7C();
    v202 = sub_22C9063CC();
    v203 = sub_22C90AADC();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      *v204 = 0;
      _os_log_impl(&dword_22C366000, v202, v203, "No tools provided. Proceeding with no tools.", v204, 2u);
      MEMORY[0x2318B9880](v204, -1, -1);
    }

    (*(v258 + 8))(v251, v259);
    v171 = v201;
    goto LABEL_26;
  }

  sub_22C36DD28(v22, &qword_27D9BA808, &qword_22C90C6E0);

  v121 = v264;
  sub_22C903F7C();
  v122 = sub_22C9063CC();
  v123 = sub_22C90AADC();
  v124 = os_log_type_enabled(v122, v123);
  v125 = v259;
  if (v124)
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    _os_log_impl(&dword_22C366000, v122, v123, "Could not find a tool retrieval or tool resolution event. Cannot proceed", v126, 2u);
    MEMORY[0x2318B9880](v126, -1, -1);
  }

  (*(v258 + 8))(v121, v125);
  type metadata accessor for FullPlannerError();
  sub_22C4B1ACC(qword_27D9BB910, type metadata accessor for FullPlannerError);
  swift_allocError();
  v128 = v127;
  v129 = sub_22C901E8C();
  sub_22C36C640(v128, 8, 15, v129);
  swift_willThrow();
LABEL_28:
  sub_22C36FB20();
}

uint64_t sub_22C4B2B54(uint64_t a1, uint64_t a2)
{
  v146 = a2;
  v2 = sub_22C9036EC();
  v135 = *(v2 - 8);
  v3 = *(v135 + 64);
  MEMORY[0x28223BE20](v2);
  v150 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BD298, &qword_22C925EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v126 - v7;
  v9 = sub_22C9063DC();
  v137 = *(v9 - 8);
  v138 = v9;
  v10 = *(v137 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v149 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v132 = &v126 - v14;
  MEMORY[0x28223BE20](v13);
  v131 = &v126 - v15;
  v148 = sub_22C908D6C();
  v144 = *(v148 - 1);
  v16 = *(v144 + 64);
  MEMORY[0x28223BE20](v148);
  v147 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v129 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v128 = &v126 - v23;
  MEMORY[0x28223BE20](v22);
  v136 = &v126 - v24;
  v25 = sub_22C3A5908(&qword_27D9BD288, &qword_22C917EB8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v134 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v152 = &v126 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v126 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v126 - v34;
  v36 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v145 = *(v36 - 8);
  v37 = *(v145 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v133 = &v126 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v143 = &v126 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v130 = &v126 - v43;
  MEMORY[0x28223BE20](v42);
  v151 = &v126 - v44;
  v153 = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
  v45 = sub_22C907F2C();
  v47 = v46;

  if (!v47)
  {
  }

  sub_22C4B4038(v45, v47, v35);

  if (sub_22C370B74(v35, 1, v36) == 1)
  {
    sub_22C36DD28(v35, &qword_27D9BD288, &qword_22C917EB8);
    v48 = v149;
    sub_22C903F7C();
    v49 = sub_22C9063CC();
    v50 = sub_22C90AACC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_22C366000, v49, v50, "Could not find the MRU tool in the latest plan or toolbox", v51, 2u);
      MEMORY[0x2318B9880](v51, -1, -1);
    }

    (*(v137 + 8))(v48, v138);
LABEL_6:
    v52 = v146;

    return v52;
  }

  v149 = v36;
  sub_22C4B86BC(v35, v151);
  v53 = v136;
  sub_22C9036BC();
  v127 = sub_22C908EAC();
  if (sub_22C370B74(v53, 1, v127) == 1)
  {
    sub_22C36DD28(v53, &qword_27D9BC1E8, &qword_22C9123B0);
LABEL_20:
    v66 = *(v146 + 16);
    v148 = (v135 + 16);
    v67 = (v135 + 32);
    v68 = (v135 + 8);

    v69 = 0;
    while (1)
    {
      if (v69 == v66)
      {
        v70 = 1;
        v69 = v66;
      }

      else
      {
        if (v69 >= v66)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        result = sub_22C4B7E50(v146 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v69, v33);
        if (__OFADD__(v69++, 1))
        {
          goto LABEL_50;
        }

        v70 = 0;
      }

      v72 = 1;
      v73 = v149;
      sub_22C36C640(v33, v70, 1, v149);
      v74 = v152;
      sub_22C4B8714(v33, v152);
      if (sub_22C370B74(v74, 1, v73) != 1)
      {
        v75 = v143;
        sub_22C4B86BC(v152, v143);
        (*v148)(v8, v75, v2);
        sub_22C4B7EA8(v75, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        v72 = 0;
      }

      sub_22C36C640(v8, v72, 1, v2);
      if (sub_22C370B74(v8, 1, v2) == 1)
      {

        sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
        v83 = *(v145 + 72);
        v84 = (*(v145 + 80) + 32) & ~*(v145 + 80);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_22C90F800;
        v86 = v151;
        sub_22C4B7E50(v151, v85 + v84);
        v153 = v85;

        sub_22C3CD1D8(v87);
        v88 = v153;
        v89 = v132;
        sub_22C903F7C();
        v90 = v133;
        sub_22C4B7E50(v86, v133);
        v91 = sub_22C9063CC();
        v92 = sub_22C90AACC();
        if (os_log_type_enabled(v91, v92))
        {
          v152 = v88;
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v155[0] = v94;
          *v93 = 136315138;
          v95 = v129;
          sub_22C9036BC();
          v96 = v127;
          if (sub_22C370B74(v95, 1, v127) == 1)
          {
            sub_22C36DD28(v95, &qword_27D9BC1E8, &qword_22C9123B0);
            v97 = 0;
            v98 = 0;
          }

          else
          {
            v97 = sub_22C908E8C();
            v98 = v114;
            (*(*(v96 - 8) + 8))(v95, v96);
          }

          v153 = v97;
          v154 = v98;
          sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
          v115 = sub_22C90A1AC();
          v117 = v116;
          sub_22C4B7EA8(v133, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
          v118 = sub_22C36F9F4(v115, v117, v155);

          *(v93 + 4) = v118;
          _os_log_impl(&dword_22C366000, v91, v92, "Inserted tool from last plan to the list of tools to be used in the prompt: %s", v93, 0xCu);
          sub_22C36FF94(v94);
          MEMORY[0x2318B9880](v94, -1, -1);
          MEMORY[0x2318B9880](v93, -1, -1);

          (*(v137 + 8))(v89, v138);
          v112 = v134;
          v88 = v152;
        }

        else
        {

          sub_22C4B7EA8(v90, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
          (*(v137 + 8))(v89, v138);
          v112 = v134;
        }

        sub_22C4B7E50(v86, v112);
        sub_22C36C640(v112, 0, 1, v149);
        sub_22C4B3BB0(v88, v112);
        v52 = v119;

        sub_22C36DD28(v112, &qword_27D9BD288, &qword_22C917EB8);
        v82 = v86;
        goto LABEL_44;
      }

      v76 = v150;
      (*v67)(v150, v8, v2);
      sub_22C4B1ACC(&qword_27D9BD2A0, MEMORY[0x277D1ED00]);
      v77 = sub_22C90A0BC();
      result = (*v68)(v76, v2);
      if (v77)
      {
        v78 = v146;

        v79 = v151;
        v80 = v134;
        sub_22C4B7E50(v151, v134);
        sub_22C36C640(v80, 0, 1, v149);
        sub_22C4B3BB0(v78, v80);
        v52 = v81;
        sub_22C36DD28(v80, &qword_27D9BD288, &qword_22C917EB8);
        v82 = v79;
LABEL_44:
        sub_22C4B7EA8(v82, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        return v52;
      }
    }
  }

  result = sub_22C908DEC();
  v55 = result;
  v56 = 0;
  v142 = *(result + 16);
  v141 = v144 + 16;
  v140 = v144 + 88;
  v57 = *MEMORY[0x277D72188];
  v139 = *MEMORY[0x277D72178];
  v58 = (v144 + 8);
  while (1)
  {
    if (v142 == v56)
    {
      v56 = v142;
      goto LABEL_18;
    }

    v59 = v33;
    v60 = v144;
    v61 = v55;
    v62 = v55 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v56;
    v64 = v147;
    v63 = v148;
    (*(v144 + 16))(v147, v62, v148);
    result = (*(v60 + 88))(v64, v63);
    if (result == v57)
    {
      break;
    }

    if (result == v139)
    {
      goto LABEL_17;
    }

    result = (*v58)(v147, v148);
    ++v56;
    v55 = v61;
    v33 = v59;
  }

  result = (*v58)(v147, v148);
LABEL_17:
  v55 = v61;
  v33 = v59;
LABEL_18:
  v65 = *(v55 + 16);
  if (v56 == v65)
  {

    (*(*(v127 - 8) + 8))(v136);
    goto LABEL_20;
  }

  if (v56 >= v65)
  {
    goto LABEL_51;
  }

  v99 = v55 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v56;
  result = sub_22C4AF1C0();
  v100 = v151;
  v101 = v127;
  v102 = v130;
  if ((result & 1) == 0)
  {

    v103 = *(*(v101 - 8) + 8);
    v103(v136, v101);
    v104 = v131;
    sub_22C903F7C();
    sub_22C4B7E50(v100, v102);
    v105 = sub_22C9063CC();
    v106 = sub_22C90AACC();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v155[0] = v108;
      *v107 = 136315138;
      v109 = v128;
      sub_22C9036BC();
      if (sub_22C370B74(v109, 1, v101) == 1)
      {
        sub_22C36DD28(v109, &qword_27D9BC1E8, &qword_22C9123B0);
        v110 = 0;
        v111 = 0;
      }

      else
      {
        v110 = sub_22C908E8C();
        v120 = v101;
        v111 = v121;
        v103(v109, v120);
      }

      v153 = v110;
      v154 = v111;
      sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
      v122 = sub_22C90A1AC();
      v124 = v123;
      sub_22C4B7EA8(v130, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v125 = sub_22C36F9F4(v122, v124, v155);

      *(v107 + 4) = v125;
      _os_log_impl(&dword_22C366000, v105, v106, "Ignoring MRU tool %s because it conforms to searchInApp", v107, 0xCu);
      sub_22C36FF94(v108);
      MEMORY[0x2318B9880](v108, -1, -1);
      MEMORY[0x2318B9880](v107, -1, -1);

      (*(v137 + 8))(v131, v138);
      v113 = v100;
    }

    else
    {

      sub_22C4B7EA8(v102, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      (*(v137 + 8))(v104, v138);
      v113 = v100;
    }

    sub_22C4B7EA8(v113, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
    goto LABEL_6;
  }

LABEL_52:
  __break(1u);
  return result;
}

void sub_22C4B3BB0(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v4 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v57 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v54 = v48 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v48 - v10;
  v12 = sub_22C3A5908(&qword_27D9BD288, &qword_22C917EB8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v48 - v17;
  sub_22C379DF8(a2, v48 - v17, &qword_27D9BD288, &qword_22C917EB8);
  v19 = v4;
  v20 = sub_22C370B74(v18, 1, v4);
  if (v20 == 1)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 255;
  }

  else
  {
    v53 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition;
    sub_22C4B86BC(v18, v11);
    sub_22C4B5130(v11, v2, &v58);
    v22 = *(&v58 + 1);
    v21 = v58;
    v23 = v59;
    v24 = v60;
    v26 = v61;
    v20 = sub_22C4B7EA8(v11, v53);
    v25 = v26;
  }

  v52 = v22;
  v53 = v21;
  v63[0] = v21;
  v63[1] = v22;
  v50 = v24;
  v51 = v23;
  v63[2] = v23;
  v63[3] = v24;
  v49 = v25;
  v64 = v25;
  MEMORY[0x28223BE20](v20);
  v48[-2] = v27;

  sub_22C4B7478(v28, sub_22C4B8784, &v48[-4]);
  v48[1] = v29;
  v31 = v30;
  v33 = v32;
  v34 = 0;
  v35 = *(v32 + 16);
  v36 = (v30 + 64);
  v37 = MEMORY[0x277D84F90];
  v56 = a2;
  while (1)
  {
    if (v35 == v34)
    {

      sub_22C4B878C(v53, v52, v51, v50, v49);
      return;
    }

    if (v34 >= *(v31 + 16))
    {
      break;
    }

    if (v34 >= *(v33 + 16))
    {
      goto LABEL_18;
    }

    v38 = *v36;
    v39 = *(v36 - 2);
    v40 = *(v36 - 1);
    v41 = *(v36 - 3);
    v42 = *(v33 + 8 * v34 + 32);
    *&v58 = *(v36 - 4);
    *(&v58 + 1) = v41;
    v59 = v39;
    v60 = v40;
    v61 = v38;
    v62 = v42;
    sub_22C480D88(v58, v41, v39, v40, v38);

    sub_22C4B57C8(&v58, v42, v63, a2, v16);
    sub_22C43627C(v58, *(&v58 + 1), v59, v60, v61);

    if (sub_22C370B74(v16, 1, v19) == 1)
    {
      sub_22C36DD28(v16, &qword_27D9BD288, &qword_22C917EB8);
    }

    else
    {
      v43 = v54;
      sub_22C4B86BC(v16, v54);
      sub_22C4B86BC(v43, v57);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = *(v37 + 16);
        sub_22C59161C();
        v37 = v46;
      }

      v44 = *(v37 + 16);
      if (v44 >= *(v37 + 24) >> 1)
      {
        sub_22C59161C();
        v37 = v47;
      }

      *(v37 + 16) = v44 + 1;
      sub_22C4B86BC(v57, v37 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v44);
      a2 = v56;
    }

    v36 += 40;
    ++v34;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_22C4B4038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v141 = a3;
  v142 = a1;
  v121 = sub_22C908A7C();
  v119 = *(v121 - 8);
  v4 = *(v119 + 64);
  v5 = MEMORY[0x28223BE20](v121);
  v120 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v118 = &v113 - v7;
  v117 = sub_22C908DAC();
  v116 = *(v117 - 8);
  v8 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v115 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_22C9063DC();
  v125 = *(v126 - 8);
  v10 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v140 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v139 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v137 = &v113 - v16;
  v133 = sub_22C908ABC();
  v129 = *(v133 - 8);
  v17 = *(v129 + 64);
  MEMORY[0x28223BE20](v133);
  v122 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_22C9036EC();
  v128 = *(v127 - 8);
  v19 = *(v128 + 64);
  v20 = MEMORY[0x28223BE20](v127);
  v114 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v123 = &v113 - v23;
  MEMORY[0x28223BE20](v22);
  v124 = &v113 - v24;
  v25 = sub_22C9037EC();
  v135 = *(v25 - 8);
  v26 = *(v135 + 64);
  MEMORY[0x28223BE20](v25);
  v132 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v136 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v131 = &v113 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v130 = &v113 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v113 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v113 - v40;
  MEMORY[0x28223BE20](v39);
  v138 = &v113 - v42;
  v43 = a2;
  v44 = sub_22C9087DC();
  v45 = *(v44 + 16);

  for (i = 0; v45 != i; ++i)
  {
    v47 = *(sub_22C908A0C() - 8);
    v48 = v44;
    sub_22C4B62F8(v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * i, v142, v43, v41);
    v49 = v25;
    v50 = sub_22C370B74(v41, 1, v25);
    sub_22C36DD28(v41, &qword_27D9BD2A8, &qword_22C920540);
    if (v50 != 1)
    {
      v45 = i;
      v25 = v49;
      v44 = v48;
      break;
    }

    v25 = v49;
    v44 = v48;
  }

  v51 = *(v44 + 16);
  v52 = v139;
  v53 = v140;
  v54 = v141;
  if (v45 == v51)
  {
    v55 = v138;
    sub_22C36C640(v138, 1, 1, v25);

    v56 = v137;
  }

  else
  {
    if (!v51)
    {
LABEL_33:
      __break(1u);
LABEL_34:

      __break(1u);
      goto LABEL_35;
    }

    v57 = v43;
    v58 = *(sub_22C908A0C() - 8);
    v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v113 = v44;
    v60 = v44 + v59;
    v61 = v51 - 1;
    do
    {
      if (v61 >= v51)
      {
        __break(1u);
        goto LABEL_33;
      }

      v62 = v60 + *(v58 + 72) * v61;
      sub_22C4B62F8(v62, v142, v57, v38);
      v63 = sub_22C370B74(v38, 1, v25);
      sub_22C36DD28(v38, &qword_27D9BD2A8, &qword_22C920540);
      --v61;
    }

    while (v63 == 1);
    v64 = v130;
    v43 = v57;
    sub_22C4B62F8(v62, v142, v57, v130);
    v65 = v131;
    sub_22C379DF8(v64, v131, &qword_27D9BD2A8, &qword_22C920540);
    if (sub_22C370B74(v65, 1, v25) == 1)
    {
      goto LABEL_34;
    }

    v55 = v138;
    (*(v135 + 32))(v138, v65, v25);
    sub_22C36DD28(v64, &qword_27D9BD2A8, &qword_22C920540);
    sub_22C36C640(v55, 0, 1, v25);

    v53 = v140;
    v54 = v141;
    v56 = v137;
    v52 = v139;
  }

  v66 = v136;
  sub_22C379DF8(v55, v136, &qword_27D9BD2A8, &qword_22C920540);
  if (sub_22C370B74(v66, 1, v25) != 1)
  {
    v86 = v135;
    v87 = v132;
    (*(v135 + 32))(v132, v66, v25);
    sub_22C90371C();
    v88 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
    v89 = v54 + *(v88 + 24);
    sub_22C90379C();
    (*(v86 + 8))(v87, v25);
    sub_22C36DD28(v55, &qword_27D9BD2A8, &qword_22C920540);
    *(v54 + *(v88 + 20)) = 0;
    v84 = v54;
    v85 = 0;
    v83 = v88;
    return sub_22C36C640(v84, v85, 1, v83);
  }

  sub_22C36DD28(v66, &qword_27D9BD2A8, &qword_22C920540);
  v67 = v43;
  v68 = v134 + *(type metadata accessor for ToolFetcher(0) + 20);
  sub_22C908ACC();
  sub_22C379DF8(v56, v52, &qword_27D9BC0B0, &unk_22C912AD0);
  v69 = v133;
  if (sub_22C370B74(v52, 1, v133) == 1)
  {
    v70 = v56;
    sub_22C36DD28(v52, &qword_27D9BC0B0, &unk_22C912AD0);
    sub_22C90735C();
    sub_22C3A5F00();
    v71 = swift_allocError();
    v72 = v146;
    v73 = v145;
    *v74 = v144;
    *(v74 + 16) = v73;
    *(v74 + 32) = v72;
    swift_willThrow();
    sub_22C36DD28(v70, &qword_27D9BC0B0, &unk_22C912AD0);
    sub_22C903F7C();

    v75 = v71;
    v76 = sub_22C9063CC();
    v77 = sub_22C90AADC();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v143 = v80;
      *v78 = 136315394;
      *(v78 + 4) = sub_22C36F9F4(v142, v67, &v143);
      *(v78 + 12) = 2112;
      v81 = v71;
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 14) = v82;
      *v79 = v82;
      _os_log_impl(&dword_22C366000, v76, v77, "Error reading tool definition for %s from toolbox. %@", v78, 0x16u);
      sub_22C36DD28(v79, &qword_27D9BB158, qword_22C910FD0);
      MEMORY[0x2318B9880](v79, -1, -1);
      sub_22C36FF94(v80);
      MEMORY[0x2318B9880](v80, -1, -1);
      MEMORY[0x2318B9880](v78, -1, -1);
    }

    (*(v125 + 8))(v53, v126);
    sub_22C36DD28(v55, &qword_27D9BD2A8, &qword_22C920540);
    v83 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
    v84 = v54;
    v85 = 1;
    return sub_22C36C640(v84, v85, 1, v83);
  }

  sub_22C36DD28(v56, &qword_27D9BC0B0, &unk_22C912AD0);
  v90 = v129;
  v91 = v122;
  (*(v129 + 32))(v122, v52, v69);
  v92 = (*(v90 + 88))(v91, v69);
  if (v92 == *MEMORY[0x277D1E8E0])
  {
    v93 = v54;
    (*(v90 + 96))(v91, v69);
    v94 = sub_22C908EAC();
    v95 = v123;
    (*(*(v94 - 8) + 32))(v123, v91, v94);
    v96 = v128;
    v97 = v127;
    (*(v128 + 104))(v95, *MEMORY[0x277D1ECE0], v127);
LABEL_27:
    v103 = v124;
    (*(v96 + 32))(v124, v95, v97);
    (*(v96 + 16))(v93, v103, v97);
    sub_22C9037DC();
    *&v144 = MEMORY[0x277D84F90];
    v104 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
    v142 = *(v104 + 24);
    sub_22C4B1ACC(&qword_27D9BB820, MEMORY[0x277D1ED48]);
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
    sub_22C90AE4C();
    (*(v96 + 8))(v103, v97);
    sub_22C36DD28(v138, &qword_27D9BD2A8, &qword_22C920540);
    *(v93 + *(v104 + 20)) = 0;
    v84 = v93;
    v85 = 0;
    v83 = v104;
    return sub_22C36C640(v84, v85, 1, v83);
  }

  v97 = v127;
  v96 = v128;
  if (v92 == *MEMORY[0x277D1E8C8])
  {
    v93 = v54;
    (*(v129 + 96))(v91, v69);
    v98 = sub_22C908EAC();
    v95 = v123;
    (*(*(v98 - 8) + 32))(v123, v91, v98);
    v99 = MEMORY[0x277D1ECD0];
LABEL_26:
    (*(v96 + 104))(v95, *v99, v97);
    goto LABEL_27;
  }

  if (v92 == *MEMORY[0x277D1E8D0])
  {
    v93 = v54;
    (*(v129 + 96))(v91, v69);
    v100 = v116;
    v101 = v115;
    v102 = v117;
    (*(v116 + 32))(v115, v91, v117);
    v95 = v123;
    sub_22C908D7C();
    v96 = v128;
    (*(v100 + 8))(v101, v102);
    v99 = MEMORY[0x277D1ECE8];
    goto LABEL_26;
  }

  if (v92 == *MEMORY[0x277D1E8D8])
  {
    (*(v129 + 96))(v91, v69);
    v106 = v119;
    v107 = v91;
    v108 = v118;
    v109 = v121;
    (*(v119 + 32))(v118, v107, v121);
    v110 = v120;
    (*(v106 + 16))(v120, v108, v109);
    if ((*(v106 + 88))(v110, v109) == *MEMORY[0x277D1E8B8])
    {
      v93 = v54;
      (*(v106 + 8))(v108, v109);
      (*(v106 + 96))(v110, v109);
      v111 = sub_22C908EAC();
      v112 = v114;
      (*(*(v111 - 8) + 32))(v114, v110, v111);
      (*(v96 + 104))(v112, *MEMORY[0x277D1ECE0], v97);
      v95 = v123;
      (*(v96 + 32))(v123, v112, v97);
      goto LABEL_27;
    }
  }

LABEL_35:
  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C4B5130@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v68 = a1;
  v69 = a3;
  v4 = sub_22C90384C();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v62 - v9;
  v10 = sub_22C9099FC();
  v66 = *(v10 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C9036EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C908EAC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v62 - v25;
  (*(v15 + 16))(v18, v68, v14);
  v27 = (*(v15 + 88))(v18, v14);
  if (v27 == *MEMORY[0x277D1ECE0])
  {
    goto LABEL_2;
  }

  if (v27 == *MEMORY[0x277D1ECE8])
  {
    (*(v15 + 96))(v18, v14);
    v37 = v66;
    (*(v66 + 32))(v13, v18, v10);
    v38 = a2[3];
    v39 = a2[4];
    sub_22C374168(a2, v38);
    (*(v39 + 16))(v70, v13, v38, v39);
    result = (*(v37 + 8))(v13, v10);
LABEL_6:
    v40 = v71;
    v41 = v70[1];
    v42 = v69;
    *v69 = v70[0];
    v42[1] = v41;
    *(v42 + 32) = v40;
    return result;
  }

  if (v27 == *MEMORY[0x277D1ECD8])
  {
LABEL_2:
    (*(v15 + 96))(v18, v14);
    (*(v20 + 32))(v26, v18, v19);
    v28 = a2[3];
    v29 = a2[4];
    sub_22C374168(a2, v28);
    v30 = sub_22C906D3C();
    v31 = v67;
    sub_22C36C640(v67, 1, 1, v30);
    v32 = type metadata accessor for RenderingState();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = sub_22C480800(v31);
    (*(v29 + 8))(v70, v26, 0, v35, v28, v29);

    result = (*(v20 + 8))(v26, v19);
    goto LABEL_6;
  }

  if (v27 == *MEMORY[0x277D1ECD0])
  {
    (*(v15 + 96))(v18, v14);
    (*(v20 + 32))(v24, v18, v19);
    v43 = a2[3];
    v44 = a2[4];
    sub_22C374168(a2, v43);
    v45 = sub_22C906D3C();
    v46 = v67;
    sub_22C36C640(v67, 1, 1, v45);
    v47 = type metadata accessor for RenderingState();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    v50 = sub_22C480800(v46);
    (*(v44 + 8))(v70, v24, 1, v50, v43, v44);

    result = (*(v20 + 8))(v24, v19);
    goto LABEL_6;
  }

  if (v27 == *MEMORY[0x277D1ECF8])
  {
    (*(v15 + 96))(v18, v14);
    v52 = v63;
    v51 = v64;
    v53 = v65;
    (*(v64 + 32))(v63, v18, v65);
    v54 = a2[3];
    v55 = a2[4];
    sub_22C374168(a2, v54);
    v56 = sub_22C906D3C();
    v57 = v67;
    sub_22C36C640(v67, 1, 1, v56);
    v58 = type metadata accessor for RenderingState();
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    v61 = sub_22C480800(v57);
    (*(v55 + 24))(v70, v52, v61, v54, v55);

    result = (*(v51 + 8))(v52, v53);
    goto LABEL_6;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C4B57C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v113 = a3;
  v114 = a5;
  v105 = sub_22C9036EC();
  v104 = *(v105 - 8);
  v8 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BD288, &qword_22C917EB8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v106 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v112 = &v89 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v101 = &v89 - v17;
  MEMORY[0x28223BE20](v16);
  v107 = &v89 - v18;
  v109 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v19 = *(v109 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v109);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22C9063DC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v108 = &v89 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = *a1;
  v33 = a1[1];
  v34 = *(a1 + 32);
  v35 = *(a2 + 16);
  v111 = a2;
  if (v35 >= 2)
  {
    v95 = v19;
    v36 = v23;
    v98 = v34;
    v99 = v33;
    v100 = v32;
    v37 = &v89 - v31;
    sub_22C903F7C();

    v38 = sub_22C9063CC();
    v39 = sub_22C90AADC();

    v96 = v39;
    if (os_log_type_enabled(v38, v39))
    {
      v92 = v38;
      v93 = v37;
      v102 = v28;
      v97 = a4;
      v110 = v24;
      v94 = v36;
      v40 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v117[0] = v90;
      v91 = v40;
      *v40 = 136315138;
      *&v115[0] = MEMORY[0x277D84F90];
      sub_22C3B5E2C();
      v41 = *&v115[0];
      v42 = a2 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
      v43 = *(v95 + 72);
      do
      {
        sub_22C4B7E50(v42, v22);
        v44 = sub_22C434DCC();
        v46 = v45;
        sub_22C4B7EA8(v22, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        *&v115[0] = v41;
        v47 = *(v41 + 16);
        if (v47 >= *(v41 + 24) >> 1)
        {
          sub_22C3B5E2C();
          v41 = *&v115[0];
        }

        *(v41 + 16) = v47 + 1;
        v48 = v41 + 16 * v47;
        *(v48 + 32) = v44;
        *(v48 + 40) = v46;
        v42 += v43;
        --v35;
      }

      while (v35);
      v49 = MEMORY[0x2318B7AD0](v41, MEMORY[0x277D837D0]);
      v51 = v50;

      v52 = sub_22C36F9F4(v49, v51, v117);

      v53 = v91;
      *(v91 + 1) = v52;
      v54 = v92;
      _os_log_impl(&dword_22C366000, v92, v96, "We have multiple tools with the same rendered name! %s", v53, 0xCu);
      v55 = v90;
      sub_22C36FF94(v90);
      MEMORY[0x2318B9880](v55, -1, -1);
      MEMORY[0x2318B9880](v53, -1, -1);

      v24 = v110;
      v23 = v94;
      (*(v110 + 8))(v93, v94);
      a4 = v97;
      v28 = v102;
    }

    else
    {

      v23 = v36;
      (*(v24 + 8))(v37, v36);
    }

    v32 = v100;
    v33 = v99;
    LOBYTE(v34) = v98;
  }

  v56 = *(v113 + 32);
  if (v56 == 255 || (v57 = *(v113 + 16), v115[0] = *v113, v115[1] = v57, v117[0] = v32, v117[1] = v33, v118 = v34, v116 = v56, (static FullPlannerRenderableToolName.== infix(_:_:)(v117, v115) & 1) == 0))
  {
    sub_22C903F7C();
    v67 = v112;
    sub_22C379DF8(a4, v112, &qword_27D9BD288, &qword_22C917EB8);
    v68 = v28;
    v69 = sub_22C9063CC();
    v70 = sub_22C90AACC();
    if (os_log_type_enabled(v69, v70))
    {
      v102 = v68;
      v110 = v24;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v117[0] = v72;
      *v71 = 136315394;
      *(v71 + 4) = sub_22C36F9F4(0xD000000000000018, 0x800000022C930E80, v117);
      *(v71 + 12) = 2080;
      v73 = v106;
      sub_22C379DF8(v67, v106, &qword_27D9BD288, &qword_22C917EB8);
      if (sub_22C370B74(v73, 1, v109) == 1)
      {
        v74 = 0x6E776F6E6B6E753CLL;
        sub_22C36DD28(v73, &qword_27D9BD288, &qword_22C917EB8);
        v75 = 0xE90000000000003ELL;
      }

      else
      {
        v76 = v104;
        v77 = v103;
        v78 = v105;
        (*(v104 + 16))(v103, v73, v105);
        sub_22C4B7EA8(v73, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        v74 = sub_22C434DCC();
        v75 = v79;
        v80 = v78;
        v67 = v112;
        (*(v76 + 8))(v77, v80);
      }

      sub_22C36DD28(v67, &qword_27D9BD288, &qword_22C917EB8);
      v81 = sub_22C36F9F4(v74, v75, v117);

      *(v71 + 14) = v81;
      _os_log_impl(&dword_22C366000, v69, v70, "[%s] Choosing first tool, which has ID: %s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v72, -1, -1);
      MEMORY[0x2318B9880](v71, -1, -1);

      (*(v110 + 8))(v102, v23);
    }

    else
    {

      sub_22C36DD28(v67, &qword_27D9BD288, &qword_22C917EB8);
      (*(v24 + 8))(v68, v23);
    }

    return sub_22C58B32C(v111, v114);
  }

  else
  {
    v58 = v108;
    sub_22C903F7C();
    v59 = v107;
    sub_22C379DF8(a4, v107, &qword_27D9BD288, &qword_22C917EB8);
    v60 = sub_22C9063CC();
    v61 = sub_22C90AACC();
    if (os_log_type_enabled(v60, v61))
    {
      v97 = a4;
      v110 = v24;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v117[0] = v63;
      *v62 = 136315394;
      *(v62 + 4) = sub_22C36F9F4(0xD000000000000018, 0x800000022C930E80, v117);
      *(v62 + 12) = 2080;
      v64 = v101;
      sub_22C379DF8(v59, v101, &qword_27D9BD288, &qword_22C917EB8);
      if (sub_22C370B74(v64, 1, v109) == 1)
      {
        v65 = 0x6E776F6E6B6E753CLL;
        sub_22C36DD28(v64, &qword_27D9BD288, &qword_22C917EB8);
        v66 = 0xE90000000000003ELL;
      }

      else
      {
        v83 = v104;
        v84 = v103;
        v85 = v105;
        (*(v104 + 16))(v103, v64, v105);
        sub_22C4B7EA8(v64, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        v65 = sub_22C434DCC();
        v66 = v86;
        v87 = v85;
        v58 = v108;
        (*(v83 + 8))(v84, v87);
        v59 = v107;
      }

      sub_22C36DD28(v59, &qword_27D9BD288, &qword_22C917EB8);
      v88 = sub_22C36F9F4(v65, v66, v117);

      *(v62 + 14) = v88;
      _os_log_impl(&dword_22C366000, v60, v61, "[%s] Choosing prioritised tool, which has ID: %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v63, -1, -1);
      MEMORY[0x2318B9880](v62, -1, -1);

      (*(v110 + 8))(v58, v23);
      a4 = v97;
    }

    else
    {

      sub_22C36DD28(v59, &qword_27D9BD288, &qword_22C917EB8);
      (*(v24 + 8))(v58, v23);
    }

    return sub_22C379DF8(a4, v114, &qword_27D9BD288, &qword_22C917EB8);
  }
}

uint64_t sub_22C4B62F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v157 = a2;
  v158 = a3;
  v148 = a4;
  v5 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v144 = &v124 - v7;
  v8 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v147 = &v124 - v10;
  v145 = sub_22C9079FC();
  v146 = *(v145 - 8);
  v11 = *(v146 + 64);
  MEMORY[0x28223BE20](v145);
  v135 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_22C9037DC();
  v13 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v133 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_22C90377C();
  v130 = *(v131 - 8);
  v15 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v132 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_22C908EAC();
  v17 = *(v165 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v165);
  v136 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_22C906CAC();
  v141 = *(v142 - 8);
  v20 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v140 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_22C9036EC();
  v152 = *(v164 - 8);
  v22 = *(v152 + 64);
  v23 = MEMORY[0x28223BE20](v164);
  v154 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v129 = &v124 - v26;
  MEMORY[0x28223BE20](v25);
  v162 = &v124 - v27;
  v28 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v153 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v161 = &v124 - v32;
  v166 = sub_22C9037EC();
  v33 = *(v166 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v166);
  v156 = &v124 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v125 = &v124 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v167 = &v124 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v128 = &v124 - v42;
  MEMORY[0x28223BE20](v41);
  v127 = &v124 - v43;
  v44 = sub_22C9089DC();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v44);
  v137 = &v124 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v139 = &v124 - v50;
  MEMORY[0x28223BE20](v49);
  v52 = &v124 - v51;
  v53 = sub_22C907C8C();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v57 = &v124 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a1;
  sub_22C9089EC();
  v149 = *(v45 + 88);
  v150 = v45 + 88;
  v79 = v149(v52, v44) == *MEMORY[0x277D1E740];
  v163 = v33;
  v138 = v17;
  v151 = v45;
  if (v79)
  {
    v58 = v17;
    v59 = *(v45 + 96);
    v126 = v44;
    v59(v52, v44);
    v60 = v53;
    (*(v54 + 32))(v57, v52, v53);
    result = sub_22C907C6C();
    v62 = result;
    v63 = 0;
    v64 = *(result + 16);
    v159 = v33 + 16;
    v160 = v64;
    v65 = (v152 + 8);
    v155 = (v58 + 8);
    v66 = (v33 + 8);
    v67 = v166;
    v68 = v33;
    while (v160 != v63)
    {
      if (v63 >= *(v62 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      v69 = v57;
      v70 = v60;
      (*(v68 + 16))(v167, v62 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v63, v67);
      v71 = v162;
      sub_22C90371C();
      v72 = v161;
      sub_22C9036BC();
      (*v65)(v71, v164);
      v73 = v165;
      if (sub_22C370B74(v72, 1, v165) == 1)
      {
        sub_22C36DD28(v72, &qword_27D9BC1E8, &qword_22C9123B0);
        v60 = v70;
      }

      else
      {
        v74 = sub_22C908E7C();
        v75 = v72;
        v76 = v74;
        v78 = v77;
        (*v155)(v75, v73);
        v79 = v76 == v157 && v78 == v158;
        if (v79)
        {

          v101 = v166;
          v60 = v70;
          goto LABEL_32;
        }

        v80 = sub_22C90B4FC();

        v60 = v70;
        if (v80)
        {

          v101 = v166;
LABEL_32:
          (*(v54 + 8))(v69, v60);
          v105 = *(v163 + 32);
          v106 = v128;
          v105(v128, v167, v101);
          v107 = v127;
          v105(v127, v106, v101);
          v83 = v148;
LABEL_33:
          v105(v83, v107, v101);
          v102 = 0;
          return sub_22C36C640(v83, v102, 1, v101);
        }
      }

      v67 = v166;
      result = (*v66)(v167, v166);
      ++v63;
      v68 = v163;
      v57 = v69;
    }

    (*(v54 + 8))(v57, v60);
    v83 = v148;
    v85 = v147;
    v81 = v145;
    v84 = v146;
    v82 = v152;
    v44 = v126;
  }

  else
  {
    v81 = v145;
    (*(v45 + 8))(v52, v44);
    v82 = v152;
    v83 = v148;
    v84 = v146;
    v85 = v147;
  }

  v86 = v139;
  sub_22C9089EC();
  v87 = v86;
  v88 = v149(v86, v44);
  v89 = v165;
  v90 = v144;
  if (v88 == *MEMORY[0x277D1E738])
  {
    v91 = *(v151 + 96);
    v126 = v44;
    v91(v87, v44);
    (*(v141 + 32))(v140, v87, v142);
    v92 = v136;
    sub_22C906C8C();
    v93 = sub_22C908E7C();
    v95 = v94;
    (*(v138 + 8))(v92, v89);
    if (v93 == v157 && v95 == v158)
    {
    }

    else
    {
      v97 = sub_22C90B4FC();

      if ((v97 & 1) == 0)
      {
        (*(v141 + 8))(v140, v142);
        v84 = v146;
        v85 = v147;
        v44 = v126;
        goto LABEL_23;
      }
    }

    v103 = v129;
    v104 = v140;
    sub_22C906C8C();
    (*(v82 + 104))(v103, *MEMORY[0x277D1ECE0], v164);
    (*(v130 + 104))(v132, *MEMORY[0x277D1ED28], v131);
    v168 = MEMORY[0x277D84F90];
    sub_22C4B1ACC(&qword_27D9BB820, MEMORY[0x277D1ED48]);
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
    sub_22C90AE4C();
    sub_22C9036FC();
    (*(v141 + 8))(v104, v142);
    v102 = 0;
    goto LABEL_29;
  }

  (*(v151 + 8))(v87, v44);
LABEL_23:
  v98 = v137;
  sub_22C9089EC();
  if (v149(v98, v44) != *MEMORY[0x277D1E808])
  {
    (*(v151 + 8))(v98, v44);
    v102 = 1;
LABEL_29:
    v101 = v166;
    return sub_22C36C640(v83, v102, 1, v101);
  }

  (*(v151 + 96))(v98, v44);
  v99 = v135;
  (*(v84 + 32))();
  sub_22C90798C();
  v100 = sub_22C903F4C();
  if (sub_22C370B74(v90, 1, v100) == 1)
  {
    (*(v84 + 8))(v99, v81);
    sub_22C36DD28(v90, &qword_27D9BD290, &qword_22C917EC0);
    v101 = v166;
    sub_22C36C640(v85, 1, 1, v166);
    goto LABEL_49;
  }

  v108 = sub_22C903F1C();
  result = (*(*(v100 - 8) + 8))(v90, v100);
  v109 = 0;
  v110 = *(v108 + 16);
  v111 = v163;
  v167 = (v163 + 16);
  v112 = (v82 + 8);
  v113 = (v138 + 8);
  v114 = (v163 + 8);
  v101 = v166;
  while (1)
  {
    if (v110 == v109)
    {

      (*(v146 + 8))(v135, v145);
      v123 = 1;
      v83 = v148;
      v85 = v147;
      goto LABEL_48;
    }

    if (v109 >= *(v108 + 16))
    {
      goto LABEL_53;
    }

    (*(v111 + 16))(v156, v108 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v109, v101);
    v115 = v154;
    sub_22C90371C();
    v116 = v153;
    sub_22C9036BC();
    (*v112)(v115, v164);
    if (sub_22C370B74(v116, 1, v89) == 1)
    {
      sub_22C36DD28(v116, &qword_27D9BC1E8, &qword_22C9123B0);
      goto LABEL_44;
    }

    v117 = v89;
    v118 = sub_22C908E7C();
    v120 = v119;
    (*v113)(v116, v117);
    if (v118 == v157 && v120 == v158)
    {
      break;
    }

    v122 = sub_22C90B4FC();

    if (v122)
    {
      goto LABEL_47;
    }

LABEL_44:
    v101 = v166;
    result = (*v114)(v156, v166);
    ++v109;
    v111 = v163;
    v89 = v165;
  }

LABEL_47:

  v101 = v166;
  (*(v146 + 8))(v135, v145);
  v85 = v147;
  (*(v163 + 32))(v147, v156, v101);
  v123 = 0;
  v83 = v148;
LABEL_48:
  sub_22C36C640(v85, v123, 1, v101);
  if (sub_22C370B74(v85, 1, v101) != 1)
  {
    v105 = *(v163 + 32);
    v107 = v125;
    v105(v125, v85, v101);
    goto LABEL_33;
  }

LABEL_49:
  sub_22C36DD28(v85, &qword_27D9BD2A8, &qword_22C920540);
  v102 = 1;
  return sub_22C36C640(v83, v102, 1, v101);
}
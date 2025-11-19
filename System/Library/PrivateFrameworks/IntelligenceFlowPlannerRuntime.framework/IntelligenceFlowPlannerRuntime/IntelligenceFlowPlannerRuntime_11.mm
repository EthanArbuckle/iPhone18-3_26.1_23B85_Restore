uint64_t sub_22C458C64(uint64_t a1, uint64_t a2)
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

uint64_t sub_22C458EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36BBA8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C458F2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_22C458F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C459004()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2080;

  return sub_22C9089EC();
}

uint64_t sub_22C45903C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_22C45907C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_22C459128()
{
  type metadata accessor for RenderableTool();
  if (v0 <= 0x3F)
  {
    sub_22C4591C4();
    if (v1 <= 0x3F)
    {
      sub_22C45924C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C4591C4()
{
  if (!qword_27D9BC450)
  {
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(255);
    v0 = sub_22C909F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BC450);
    }
  }
}

void sub_22C45924C()
{
  if (!qword_27D9BC458)
  {
    type metadata accessor for PromptTreeIdentifier(255);
    sub_22C45C768(&qword_27D9BC460, type metadata accessor for PromptTreeIdentifier);
    v0 = type metadata accessor for PromptTree();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BC458);
    }
  }
}

void sub_22C459308()
{
  sub_22C90981C();
  if (v0 <= 0x3F)
  {
    sub_22C45924C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22C45938C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22C45B7A4(a1, sub_22C45B734, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_22C459410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[41] = a4;
  v5[42] = v4;
  v5[39] = a2;
  v5[40] = a3;
  v5[38] = a1;
  v6 = sub_22C3A5908(&qword_27D9BC478, &unk_22C9134A0);
  v5[43] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v8 = sub_22C3A5908(&qword_27D9BC480, &unk_22C92B6E0);
  v5[46] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = sub_22C9063DC();
  v5[49] = v10;
  v11 = *(v10 - 8);
  v5[50] = v11;
  v12 = *(v11 + 64) + 15;
  v5[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C459568, 0, 0);
}

uint64_t sub_22C459568()
{
  v1 = v0[51];
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    MEMORY[0x2318B9880](v4, -1, -1);
  }

  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[49];
  v8 = v0[41];
  v9 = v0[42];

  (*(v6 + 8))(v5, v7);
  v0[33] = sub_22C49FB90(*v9, v8);
  v0[34] = v10;
  v0[35] = v11;
  v0[36] = v12;
  v0[52] = v10;
  v0[53] = v11;
  v0[54] = v12;
  v13 = v0[41];
  v14 = *(v0[42] + 8);
  v15 = type metadata accessor for ToolPromptMap(0);
  v16 = MEMORY[0x277D84F90];
  sub_22C909F0C();
  *(swift_task_alloc() + 16) = v13;
  sub_22C6045F0();
  v18 = v17;
  v102 = v0[47];
  v103 = v0[48];
  v101 = v0[46];
  v109 = v0[44];
  v110 = v0[45];
  v108 = v0[43];

  sub_22C902D0C();
  sub_22C45C768(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
  sub_22C36BA70();
  v19 = sub_22C909F0C();
  sub_22C36BA70();
  v20 = sub_22C909F0C();
  sub_22C908EAC();
  sub_22C36BA70();
  v21 = sub_22C909F0C();
  sub_22C90941C();
  sub_22C36BA70();
  v22 = sub_22C909F0C();
  v0[2] = v18;
  v0[3] = v19;
  v0[4] = v16;
  v0[5] = v16;
  v0[6] = v20;
  v0[7] = v21;
  v0[8] = v22;
  v24 = v18 + 64;
  v23 = *(v18 + 64);
  v25 = *(v18 + 32);
  sub_22C36EC98();
  v107 = v27 & v26;
  v29 = (63 - v28) >> 6;
  v105 = v18;
  result = swift_bridgeObjectRetain_n();
  v31 = 0;
  v100 = v18 + 64;
  v104 = v15;
  v99 = v29;
  v111 = v0;
LABEL_4:
  v32 = v107;
  if (v107)
  {
    v33 = v31;
LABEL_9:
    v35 = v0[47];
    v34 = v0[48];
    v106 = v33;
    v107 = (v32 - 1) & v32;
    v36 = __clz(__rbit64(v32)) | (v33 << 6);
    v37 = *(v105 + 56);
    v38 = (*(v105 + 48) + 16 * v36);
    v39 = *v38;
    v40 = v38[1];
    v41 = *(*(v104 - 8) + 72);
    v42 = *(v101 + 48);
    sub_22C45B550();
    *v34 = v39;
    *(v103 + 8) = v40;
    sub_22C3A7214();
    v43 = *(v102 + 8);

    v44 = v35 + *(v101 + 48);
    v45 = *(v44 + *(v104 + 20));

    sub_22C45B5A8(v44, type metadata accessor for ToolPromptMap);
    v115 = v16;
    v47 = v45 + 64;
    v46 = *(v45 + 64);
    v48 = *(v45 + 32);
    sub_22C36EC98();
    v51 = v50 & v49;
    v16 = (63 - v52) >> 6;
    v112 = v45;

    v0 = 0;
    if (!v51)
    {
      goto LABEL_11;
    }

    while (2)
    {
      v53 = v0;
LABEL_15:
      v54 = v111[45];
      v113 = v111[44];
      v55 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v56 = v55 | (v53 << 6);
      v57 = *(v112 + 56);
      v58 = (*(v112 + 48) + 16 * v56);
      v59 = *v58;
      v60 = v58[1];
      v61 = (type metadata accessor for ParameterPromptMap(0) - 8);
      v62 = v57 + *(*v61 + 72) * v56;
      v63 = *(v108 + 48);
      sub_22C45B550();
      *v54 = v59;
      *(v110 + 8) = v60;
      sub_22C407C2C();
      v64 = *(v109 + 8);

      v65 = v113 + *(v108 + 48);
      v66 = *(v65 + v61[7]);

      sub_22C45B5A8(v65, type metadata accessor for ParameterPromptMap);
      sub_22C3CD674();
      if (v51)
      {
        continue;
      }

      break;
    }

LABEL_11:
    while (1)
    {
      v53 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      if (v53 >= v16)
      {
        v0 = v111;
        sub_22C36DD28(v111[48], &qword_27D9BC480, &unk_22C92B6E0);

        result = sub_22C3CD648(v115);
        v31 = v106;
        v16 = MEMORY[0x277D84F90];
        v24 = v100;
        v29 = v99;
        goto LABEL_4;
      }

      v51 = *(v47 + 8 * v53);
      v0 = (v0 + 1);
      if (v51)
      {
        v0 = v53;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_27:
    sub_22C36DD28((v0 + 28), &qword_27D9BB758, &qword_22C90FE60);
    sub_22C377BD4();
    v91 = v0[38];
    v93 = *(v92 + 32);
    v94 = *(v0 + 26);
    *v91 = v95;
    *(v91 + 8) = v94;

    v96 = *(v0 + 8);
    v97 = *(v0 + 9);
    v98 = v0[22];
    *(v91 + 56) = *(v0 + 10);
    *(v91 + 40) = v97;
    *(v91 + 24) = v96;
    *(v91 + 72) = v98;
    *(v91 + 80) = v16;
    *(v91 + 88) = v93;

    sub_22C369A24();
    sub_22C386FF4();

    __asm { BRAA            X1, X16 }
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v29)
    {
      v67 = v0[42];
      v68 = v0[39];

      sub_22C3ADB10();
      v70 = v69;
      v71 = *(v67 + 24);
      v72 = swift_task_alloc();
      *(v72 + 16) = v68;
      v75 = sub_22C604774(MEMORY[0x277D84F98], sub_22C45B600, v72, v71);

      v77 = sub_22C45BB2C(v76, v70);

      sub_22C494E64();
      v79 = v78;
      v80 = v0[40];

      v81 = sub_22C45BCF0(v77);

      v82 = sub_22C909F0C();
      v83 = sub_22C909F0C();
      v0[9] = v82;
      v0[10] = v77;
      v0[11] = v79;
      v0[12] = v16;
      v0[13] = v81;
      v0[14] = v83;
      v0[15] = v75;
      sub_22C56F2A0(v0 + 9, v0 + 2, v0 + 16);

      swift_bridgeObjectRelease_n();

      sub_22C3A7214();
      if (v0[31])
      {
        sub_22C3DBC3C(v0 + 14, (v0 + 23));
        v84 = v0[27];
        sub_22C374168(v0 + 23, v0[26]);
        v85 = *(v84 + 8);
        v114 = v85 + *v85;
        v86 = v85[1];
        v87 = swift_task_alloc();
        v0[55] = v87;
        *v87 = v0;
        v87[1] = sub_22C459F68;
        v88 = v0[42];
        sub_22C386FF4();

        __asm { BRAA            X4, X16 }
      }

      goto LABEL_27;
    }

    v32 = *(v24 + 8 * v33);
    ++v31;
    if (v32)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C459F68()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v9 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v5 = v2[53];
    v4 = v2[54];
    v6 = v2[52];
    sub_22C3DE2C8((v2 + 16));

    v7 = sub_22C45A1A0;
  }

  else
  {
    v7 = sub_22C45A0AC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C45A0AC()
{
  v1 = *(v0 + 296);
  sub_22C36FF94((v0 + 184));
  sub_22C377BD4();
  v2 = *(v0 + 304);
  v4 = *(v3 + 32);
  v5 = *(v0 + 416);
  *v2 = v6;
  *(v2 + 8) = v5;

  v7 = *(v0 + 128);
  v8 = *(v0 + 144);
  v9 = *(v0 + 176);
  *(v2 + 56) = *(v0 + 160);
  *(v2 + 40) = v8;
  *(v2 + 24) = v7;
  *(v2 + 72) = v9;
  *(v2 + 80) = v1;
  *(v2 + 88) = v4;

  sub_22C369A24();

  return v10();
}

uint64_t sub_22C45A1A0()
{
  sub_22C36FF94(v0 + 23);
  v1 = v0[56];
  v2 = v0[51];
  v4 = v0[47];
  v3 = v0[48];
  v6 = v0[44];
  v5 = v0[45];

  sub_22C369A24();

  return v7();
}

uint64_t sub_22C45A240(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = (&v45 - v7);
  v50 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v8 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v57 = &v45 - v9;
  v10 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v45 - v12;
  v14 = sub_22C90963C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C3A7214();
  v19 = v55;
  if (!v55)
  {
    return sub_22C36DD28(v54, &qword_27D9BC498, &unk_22C919020);
  }

  v48 = a1;
  v51 = v2;
  v20 = v56;
  sub_22C374168(v54, v55);
  (*(v15 + 104))(v18, *MEMORY[0x277D72E08], v14);
  v21 = sub_22C906D3C();
  sub_22C36C640(v13, 1, 1, v21);
  v22 = type metadata accessor for RenderingState();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_22C480800(v13);
  v26 = *(v20 + 24);
  v47 = a2;
  v26(v52, a2, v18, v25, v19, v20);

  (*(v15 + 8))(v18, v14);
  v28 = v52[0];
  v27 = v52[1];
  v30 = v52[2];
  v29 = v52[3];
  v31 = v52[4];
  v32 = v53;
  result = sub_22C36FF94(v54);
  if ((v32 & 1) == 0)
  {
    v45 = v29;
    v46 = v31;
    type metadata accessor for PromptTreeIdentifier.Label(0);

    sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C45C768(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C909F0C();
    v34 = v51;
    sub_22C4A0390();
    if (v34)
    {

      sub_22C3D32C8(&qword_27D9BC4A8, &qword_27D9BC490, &unk_22C914240);
      swift_allocError();
      sub_22C407C2C();
    }

    else
    {
      v37 = v35;
      v38 = v36;

      v39 = sub_22C90952C();
      v40 = swift_allocBox();
      (*(*(v39 - 8) + 16))(v41, v47, v39);
      v42 = v49;
      *v49 = v40;
      v43 = *MEMORY[0x277D72AD0];
      v44 = sub_22C90941C();
      (*(*(v44 - 8) + 104))(v42, v43, v44);
      sub_22C36C640(v42, 0, 1, v44);
      sub_22C603174(v42, v37, v38);
    }

    sub_22C456CE4(v28, v27, v30, v45, v46, 0);
  }

  return result;
}

void sub_22C45A76C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  switch((a2 >> 58) & 4 | (a2 >> 1) & 3)
  {
    case 1uLL:
      if (((a4 >> 58) & 4 | (a4 >> 1) & 3) == 1)
      {
        switch(a1)
        {
          case 3:
            if (a3 == 3)
            {
              goto LABEL_23;
            }

            break;
          case 4:
            if (a3 == 4)
            {
              goto LABEL_23;
            }

            break;
          case 5:
            if (a3 == 5)
            {
              goto LABEL_23;
            }

            break;
          case 6:
            if (a3 == 6)
            {
              goto LABEL_23;
            }

            break;
          default:
            if (a3 - 3 >= 4 && a3 == a1)
            {
LABEL_23:
              sub_22C48819C(a2 & 0xEFFFFFFFFFFFFFF9, a4 & 0xEFFFFFFFFFFFFFF9);
            }

            break;
        }
      }

      break;
    case 2uLL:
      if (((a4 >> 58) & 4 | (a4 >> 1) & 3) == 2)
      {
        sub_22C5DBC6C();
      }

      break;
    case 3uLL:
      if (((a4 >> 58) & 4 | (a4 >> 1) & 3) == 3)
      {
        sub_22C749ED4();
      }

      break;
    case 4uLL:
      if (((a4 >> 58) & 4 | (a4 >> 1) & 3) == 4)
      {
        sub_22C46DAF8(a1, a3);
      }

      break;
    default:
      if (!((a4 >> 58) & 4 | (a4 >> 1) & 3))
      {
        sub_22C48819C(a1, a3);
      }

      break;
  }
}

void sub_22C45A8C4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22C9063DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369BE8();
  switch((a2 >> 58) & 4 | (a2 >> 1) & 3)
  {
    case 1uLL:
      v23 = v2[8];
      v24 = v3[9];
      sub_22C374168(v3 + 5, v3[8]);
      v25 = sub_22C457454(a1, a2 & 0xEFFFFFFFFFFFFFF9, v23, v24);
      sub_22C45A8C4(v25, 0);

      break;
    case 2uLL:

      sub_22C8B5628();
      break;
    case 3uLL:

      sub_22C903F7C();

      v16 = sub_22C9063CC();
      v17 = sub_22C90AACC();
      sub_22C45C7CC(a1, a2);
      if (os_log_type_enabled(v16, v17))
      {
        v27 = v17;
        v18 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v28 = v26;
        *v18 = 136315138;

        sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
        type metadata accessor for _PromptMapper._ToolPromptMap(0);
        sub_22C3D32C8(&qword_27D9BB778, &qword_27D9BAF08, &qword_22C90D7B0);
        v19 = sub_22C909F1C();
        v21 = v20;
        sub_22C45C7CC(a1, a2);
        v22 = sub_22C36F9F4(v19, v21, &v28);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_22C366000, v16, v27, "Setting additional mapping data: %s", v18, 0xCu);
        sub_22C36FF94(v26);
        MEMORY[0x2318B9880](v26, -1, -1);
        MEMORY[0x2318B9880](v18, -1, -1);
      }

      (*(v7 + 8))(v2, v6);
      v2[1] = sub_22C45938C(a1, v2[1]);
      break;
    case 4uLL:
      v15 = v2[2];

      v3[2] = a1;
      break;
    default:
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F870;
      *(inited + 32) = *v3;
      v10 = swift_allocObject();
      *(v10 + 16) = 1;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v11 = swift_allocObject();
      *(v11 + 16) = a1;
      *(v10 + 24) = v11;
      *(inited + 40) = v10 | 0x8000000000000000;

      sub_22C45C81C(a1, a2);
      v12 = sub_22C3DB9B0(inited);
      swift_setDeallocating();
      sub_22C58FFB0();
      sub_22C369AEC();
      v13 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      *(v13 + 16) = v14;

      *v3 = v13 | 0x6000000000000000;
      break;
  }
}

uint64_t sub_22C45ACE8()
{
  sub_22C36986C();
  if ((sub_22C9097CC() & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0) + 20);
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);

  return sub_22C48819C(v3, v4);
}

uint64_t sub_22C45AD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for RenderableTool();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22C369BE8();
  sub_22C45B550();
  v8 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  v9 = *(v2 + *(v8 + 20));
  sub_22C435F74();
  if (v3)
  {
    return sub_22C3732B8();
  }

  v12 = v10;
  sub_22C49FB90(*(v2 + *(v8 + 24)), a1);
  v14 = v13;

  sub_22C45C86C();
  result = type metadata accessor for ToolPromptMap(0);
  *(a2 + *(result + 20)) = v12;
  *(a2 + *(result + 24)) = v14;
  return result;
}

uint64_t sub_22C45AEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C90981C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  sub_22C49FB90(*(a1 + *(v12 + 20)), a2);
  if (v3)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v15 = v13;

  (*(v8 + 32))(a3, v11, v7);
  result = type metadata accessor for ParameterPromptMap(0);
  *(a3 + *(result + 20)) = v15;
  return result;
}

uint64_t sub_22C45B01C()
{
  sub_22C36986C();
  if (!sub_22C483418(v2, v3))
  {
    return 0;
  }

  v4 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  v5 = *(v4 + 20);
  v6 = *(v1 + v5);
  v7 = *(v0 + v5);
  sub_22C74A28C();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(v4 + 24);
  v10 = *(v1 + v9);
  v11 = *(v0 + v9);

  return sub_22C48819C(v10, v11);
}

void sub_22C45B0A0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9BC298, &unk_22C912630);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_22C49FB90(*a2, a3);
  if (!v3)
  {

    v10 = a2 + *(sub_22C3A5908(&qword_27D9BC4B0, &unk_22C9134C0) + 48);
    sub_22C45AD48(a3, v9);
    v11 = type metadata accessor for ToolPromptMap(0);
    sub_22C36C640(v9, 0, 1, v11);
    sub_22C603314();
  }
}

uint64_t sub_22C45B1E0(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v15[0] = *a1;
  v15[1] = v2;
  v15[2] = v4;
  v14[0] = v6;
  v14[1] = v7;
  v14[2] = v9;
  swift_retain_n();

  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  v11 = static BNFGrammarRule.== infix(_:_:)(v15, v14);

  if ((v11 & 1) == 0)
  {

    return 0;
  }

  v12 = sub_22C46D2C8(v3, v8);

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  return sub_22C46DF1C(v5, v10);
}

uint64_t sub_22C45B370(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *a2;
  v4 = *(a2 + 2);
  v9 = *a1;
  v10 = v2;
  v11 = *(a1 + 24);
  v6 = v3;
  v7 = v4;
  v8 = *(a2 + 24);
  return sub_22C45B1E0(&v9, &v6) & 1;
}

uint64_t sub_22C45B3E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 64);
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    v5 = *(v2 - 4);
    v4 = *(v2 - 3);
    v7 = *(v2 - 2);
    v6 = *(v2 - 1);
    v8 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = *(i + 16);
      sub_22C5912F4();
      i = v12;
    }

    v9 = *(i + 16);
    if (v9 >= *(i + 24) >> 1)
    {
      sub_22C5912F4();
      i = v13;
    }

    *(i + 16) = v9 + 1;
    v10 = (i + 40 * v9);
    v10[4] = v5;
    v10[5] = v4;
    v10[6] = v7;
    v10[7] = v6;
    v10[8] = v8;
    v2 += 5;
  }

  return i;
}

uint64_t sub_22C45B550()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C45B5A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_22C45B61C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C45BE54(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_22C45B694(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_22C45C27C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_22C45B734@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BC4B0, &unk_22C9134C0) + 48);
  v5 = sub_22C3A5908(&qword_27D9BC4B8, &qword_22C9134D0);
  result = sub_22C88FC98(a2 + *(v5 + 48), *a1, a1 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_22C45B7A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  v17 = sub_22C3A5908(&qword_27D9BC4C0, &qword_22C9134D8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (v40 - v19);
  sub_22C8920A0(v45, a1, a2, a3);
  v41 = v45[0];
  v42 = v45[1];
  v43 = v45[2];
  v44 = v46;
  v40[2] = a1;

  v40[1] = a3;

  while (1)
  {
    sub_22C890844();
    v21 = sub_22C3A5908(&qword_27D9BC4B8, &qword_22C9134D0);
    if (sub_22C370B74(v20, 1, v21) == 1)
    {
      sub_22C36A674();
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    sub_22C45C86C();
    v24 = *a5;
    v26 = sub_22C62821C();
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v29 = v25;
    if (v24[3] >= v27 + v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC4C8, qword_22C9134E0);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88D114();
      v30 = *a5;
      v31 = sub_22C62821C();
      if ((v29 & 1) != (v32 & 1))
      {
        goto LABEL_16;
      }

      v26 = v31;
    }

    v33 = *a5;
    if (v29)
    {
      sub_22C45B550();
      sub_22C45B5A8(v16, type metadata accessor for _PromptMapper._ToolPromptMap);

      sub_22C45C8C4(v14, v33[7] + *(v47 + 72) * v26);
      a4 = 1;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v23;
      v34 = v33[7];
      v35 = *(v47 + 72);
      sub_22C45C86C();
      v36 = v33[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_15;
      }

      v33[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C45BB2C(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v4 = sub_22C45B694(v13, v7, v4, a2);
      MEMORY[0x2318B9880](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v7, v9);

  v10 = sub_22C45C27C(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_22C45BCF0(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_22C45B61C(v9, v4, v2);
      MEMORY[0x2318B9880](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C45BE54(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_22C45BE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v44 = a1;
  v56 = sub_22C3A5908(&qword_27D9BC210, &unk_22C917470);
  v4 = *(*(v56 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v56);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v43 - v8;
  v9 = sub_22C902D0C();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = &v43 - v15;
  v45 = 0;
  v17 = 0;
  v57 = a3;
  v20 = *(a3 + 64);
  v19 = a3 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v51 = v14 + 16;
  v49 = v14 + 88;
  v48 = *MEMORY[0x277D1D7C8];
  v53 = v7;
  v54 = v14;
  v47 = v14 + 8;
  v52 = v19;
  v50 = v24;
  while (v23)
  {
    v25 = v16;
    v26 = __clz(__rbit64(v23));
    v58 = (v23 - 1) & v23;
LABEL_11:
    v29 = v26 | (v17 << 6);
    v30 = v57;
    v31 = *(v57 + 48);
    v32 = v54;
    v33 = *(v54 + 72);
    v46 = v29;
    v34 = v33 * v29;
    v35 = *(v54 + 16);
    v35(v25, v31 + v33 * v29, v9);
    v35(v13, *(v30 + 56) + v34, v9);
    v36 = v55;
    v35(v55, v25, v9);
    v37 = v56;
    v35(&v36[*(v56 + 48)], v13, v9);
    v38 = v53;
    sub_22C407C2C();
    v39 = *(v37 + 48);
    v40 = (*(v32 + 88))(v38, v9);
    v41 = *(v32 + 8);
    if (v40 == v48)
    {
      v41(v38, v9);
      v41(&v38[v39], v9);
      v41(v13, v9);
      v41(v25, v9);
      *(v44 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v42 = __OFADD__(v45++, 1);
      v16 = v25;
      v19 = v52;
      v24 = v50;
      v23 = v58;
      if (v42)
      {
        __break(1u);
LABEL_16:
        sub_22C838C18();
        return;
      }
    }

    else
    {
      v41(&v38[v39], v9);
      v41(v38, v9);
      v41(v13, v9);
      v41(v25, v9);
      v16 = v25;
      v19 = v52;
      v24 = v50;
      v23 = v58;
    }
  }

  v27 = v17;
  while (1)
  {
    v17 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v17 >= v24)
    {
      goto LABEL_16;
    }

    v28 = *(v19 + 8 * v17);
    ++v27;
    if (v28)
    {
      v25 = v16;
      v26 = __clz(__rbit64(v28));
      v58 = (v28 - 1) & v28;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22C45C27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v50 = a1;
  v55 = sub_22C3A5908(&qword_27D9BC210, &unk_22C917470);
  v6 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v48 - v7;
  v8 = sub_22C902D0C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v48 - v14;
  result = MEMORY[0x28223BE20](v13);
  v61 = &v48 - v18;
  v56 = a3;
  v57 = 0;
  v19 = 0;
  v20 = *(a3 + 64);
  v49 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v65 = v17 + 16;
  v62 = a4 + 56;
  v53 = v24;
  v54 = v17;
  v64 = (v17 + 8);
  v51 = v15;
LABEL_5:
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v59 = (v23 - 1) & v23;
LABEL_12:
    v60 = v19;
    v28 = v25 | (v19 << 6);
    v29 = v56;
    v30 = *(v56 + 48);
    v31 = *(v54 + 72);
    v58 = v28;
    v63 = v31;
    v32 = v31 * v28;
    v33 = *(v54 + 16);
    v34 = v61;
    v33(v61, v30 + v31 * v28, v8);
    v33(v15, *(v29 + 56) + v32, v8);
    v35 = v52;
    v33(v52, v34, v8);
    v33((v35 + *(v55 + 48)), v15, v8);
    if (*(a4 + 16))
    {
      v36 = *(a4 + 40);
      sub_22C45C768(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
      v37 = v35;
      v38 = sub_22C909F7C();
      v39 = a4;
      v40 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v41 = v38 & v40;
        if (((*(v62 + (((v38 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v40)) & 1) == 0)
        {
          break;
        }

        v33(v12, *(v39 + 48) + v41 * v63, v8);
        sub_22C45C768(&qword_27D9BC488, MEMORY[0x277D1D800]);
        v42 = sub_22C90A0BC();
        v43 = *v64;
        (*v64)(v12, v8);
        v38 = v41 + 1;
        if (v42)
        {
          sub_22C36DD28(v37, &qword_27D9BC210, &unk_22C917470);
          v15 = v51;
          v43(v51, v8);
          result = (v43)(v61, v8);
          a4 = v39;
          v23 = v59;
          v19 = v60;
          v24 = v53;
          goto LABEL_5;
        }
      }

      a4 = v39;
      v35 = v37;
      v15 = v51;
    }

    v23 = v59;
    sub_22C36DD28(v35, &qword_27D9BC210, &unk_22C917470);
    v44 = *v64;
    (*v64)(v15, v8);
    result = (v44)(v61, v8);
    *(v50 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
    v45 = __OFADD__(v57++, 1);
    v19 = v60;
    v24 = v53;
    if (v45)
    {
      __break(1u);
LABEL_21:
      sub_22C838C18();
      v47 = v46;

      return v47;
    }
  }

  v26 = v19;
  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      goto LABEL_21;
    }

    v27 = *(v49 + 8 * v19);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v59 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C45C768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C45C7CC(uint64_t a1, unint64_t a2)
{
  switch((a2 >> 58) & 4 | (a2 >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:

      break;
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C45C81C(uint64_t a1, unint64_t a2)
{
  switch((a2 >> 58) & 4 | (a2 >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:

      break;
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C45C86C()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C45C8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C45C93C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xC && *(a1 + 16))
    {
      v2 = *a1 + 11;
    }

    else
    {
      v2 = ((((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7) >> 1) & 0xFFFFFFF7 | (8 * (*(a1 + 8) & 1))) ^ 0xF;
      if (v2 >= 0xB)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22C45C990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 1 | (2 * (-a2 & 0xF));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0x1000000000000007;
    }
  }

  return result;
}

uint64_t sub_22C45CA3C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0xF000000000000007;
  if ((a3 & 1) == 0)
  {
    sub_22C36A83C();
    v5 = swift_allocObject();
    *(v5 + 16) = 91;
    *(v5 + 24) = 0xE100000000000000;
    sub_22C591324();
    v7 = v6;
    v8 = *(v6 + 16);
    if (v8 >= *(v6 + 24) >> 1)
    {
      sub_22C369C2C();
      v7 = v35;
    }

    *(v7 + 16) = v8 + 1;
    *(v7 + 8 * v8 + 32) = v5;
    sub_22C36A83C();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_22C90B47C();
    *(v9 + 24) = v10;
    v11 = *(v7 + 16);
    v12 = v11 + 1;
    if (v11 >= *(v7 + 24) >> 1)
    {
      sub_22C591324();
      v7 = v36;
    }

    *(v7 + 16) = v12;
    *(v7 + 8 * v11 + 32) = v9;
    sub_22C36A83C();
    v13 = swift_allocObject();
    *(v13 + 16) = 93;
    *(v13 + 24) = 0xE100000000000000;
    if ((v11 + 2) > *(v7 + 24) >> 1)
    {
      sub_22C369C2C();
      v7 = v37;
    }

    *(v7 + 16) = v11 + 2;
    *(v7 + 8 * v12 + 32) = v13;
    v14 = sub_22C3DB9B0(v7);

    sub_22C369AEC();
    v15 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v15 + 16) = v16;
    v4 = v15 | 0x6000000000000000;
  }

  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90D070;
  sub_22C36A83C();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_22C90A49C();
  *(v18 + 24) = v19;
  *(inited + 32) = v18;
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v20 = swift_allocBox();
  v22 = v21;
  v23 = sub_22C901FAC();
  v24 = swift_allocBox();
  (*(*(v23 - 8) + 16))(v25, a1, v23);
  *v22 = v24;
  v26 = *MEMORY[0x277D1D798];
  v27 = sub_22C902D0C();
  (*(*(v27 - 8) + 104))(v22, v26, v27);
  swift_storeEnumTagMultiPayload();
  *(inited + 40) = v20 | 0x2000000000000000;
  v28 = v4;
  if ((~v4 & 0xF000000000000007) == 0)
  {
    sub_22C36A83C();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0xE000000000000000;
  }

  *(inited + 48) = v28;
  sub_22C36A83C();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_22C90A49C();
  *(v29 + 24) = v30;
  *(inited + 56) = v29;
  v31 = sub_22C3DB9B0(inited);
  sub_22C4546F8(v4);
  swift_setDeallocating();
  sub_22C58FFB0();
  sub_22C369AEC();
  v32 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v32 + 16) = v33;
  return v32 | 0x6000000000000000;
}

unsigned __int8 *sub_22C45CE18(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 3)
    {
      v7 = v6 - 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 5)
    {
      return (v7 - 4);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 6;
    if (a2 + 6 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 6);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_22C45CEC8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C45CF9C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_22C45CFB0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_22C45CFCC(char a1)
{
  result = 0x6D6574737973;
  switch(a1)
  {
    case 1:
      result = 0x6E61747369737361;
      break;
    case 2:
      result = 1919251317;
      break;
    case 3:
      result = 0x746C75736572;
      break;
    case 4:
      result = 1819242356;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C45D050()
{
  v0 = sub_22C90B21C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22C45D0C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C45D050();
  *a2 = result;
  return result;
}

uint64_t sub_22C45D0F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C45CFCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C45D144(unsigned __int8 a1)
{
  if (a1 >= 7u)
  {
    return 1;
  }

  else
  {
    return (0x4030200010101uLL >> (8 * a1));
  }
}

BOOL sub_22C45D170(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 3u:
      if (a2 == 3)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    case 4u:
      if (a2 == 4)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    case 5u:
      if (a2 != 5)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    case 6u:
      if (a2 != 6)
      {
        goto LABEL_11;
      }

LABEL_9:
      result = 1;
      break;
    default:
      if (a2 - 3 >= 4)
      {
        result = a1 == a2;
      }

      else
      {
LABEL_11:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_22C45D1F8(uint64_t a1, unsigned __int8 a2)
{
  if ((a2 - 3) >= 4u)
  {
    MEMORY[0x2318B8B10](1);
    v2 = a2;
  }

  else
  {
    v2 = qword_22C913928[(a2 - 3)];
  }

  return MEMORY[0x2318B8B10](v2);
}

uint64_t sub_22C45D250(unsigned __int8 a1)
{
  sub_22C90B62C();
  sub_22C45D1F8(v3, a1);
  return sub_22C90B66C();
}

uint64_t sub_22C45D2C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

unint64_t sub_22C45D31C()
{
  result = qword_27D9BC4D0;
  if (!qword_27D9BC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC4D0);
  }

  return result;
}

_BYTE *sub_22C45D370(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C45D44C()
{
  result = qword_27D9BC4D8;
  if (!qword_27D9BC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC4D8);
  }

  return result;
}

_BYTE *sub_22C45D4A0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C45D57C()
{
  result = qword_27D9BC4E0;
  if (!qword_27D9BC4E0)
  {
    sub_22C3AC1A0(&qword_27D9BC4E8, qword_22C913840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC4E0);
  }

  return result;
}

unint64_t sub_22C45D5E4()
{
  result = qword_27D9BC4F0;
  if (!qword_27D9BC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC4F0);
  }

  return result;
}

uint64_t GrammarToolDefinitionBundle.init(definition:enumerationDefinitions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C908EAC();
  sub_22C36985C(v6);
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for GrammarToolDefinitionBundle(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void sub_22C45D6F4()
{
  sub_22C908EAC();
  if (v0 <= 0x3F)
  {
    sub_22C45D778();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C45D778()
{
  if (!qword_27D9BC508)
  {
    sub_22C90952C();
    sub_22C90998C();
    sub_22C45F73C(&qword_28142FA80, MEMORY[0x277D72D58]);
    v0 = sub_22C909F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BC508);
    }
  }
}

uint64_t sub_22C45D86C()
{
  result = type metadata accessor for GrammarToolDefinitionBundle(319);
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_27D9BC520);
    if (v2 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_27D9BC528);
      if (v3 <= 0x3F)
      {
        result = sub_22C457168(319, &qword_27D9BC530);
        if (v4 <= 0x3F)
        {
          result = sub_22C457168(319, &qword_27D9BC538);
          if (v5 <= 0x3F)
          {
            result = sub_22C457168(319, &qword_27D9BC540);
            if (v6 <= 0x3F)
            {
              result = sub_22C457168(319, &qword_27D9BC548);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for FullPlannerPreferences();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C45D9F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22C45DA10, 0, 0);
}

uint64_t sub_22C45DA10()
{
  v28 = v0;
  v1 = v0[3];
  v2 = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0);
  v3 = v2[5];
  v4 = sub_22C908E8C();
  v6 = v5;
  *&v25 = sub_22C908DCC();

  sub_22C45F654(&v25);
  v7 = v0[3];

  v8 = v25;
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;
  v10 = sub_22C3B29B0(sub_22C45F6FC, v9, v8);

  v11 = v0[3];

  v12 = sub_22C374168((v11 + v2[6]), *(v11 + v2[6] + 24));
  v13 = v11[1];
  v24 = *v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v6;
  v15 = *v12;
  v16 = sub_22C49FB90(v14, v11 + v2[12]);
  v18 = v17;

  sub_22C532604(v16, v18, v10, v15, &v25);
  v20 = v0[2];

  v21 = v26;
  v22 = v27;
  *v20 = v25;
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  v23 = v0[1];

  return v23();
}

uint64_t sub_22C45DC60()
{
  v0 = sub_22C9097EC();
  v2 = v1;
  if (v0 == sub_22C9097EC() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_22C90B4FC();
  }

  return v5 & 1;
}

uint64_t sub_22C45DCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a4;
  v33 = a3;
  v6 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v31 - v8;
  v10 = type metadata accessor for ToolDefinitionGrammarGeneratorError(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C90941C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31[1] = a1;
  MEMORY[0x2318B6CE0](v17);
  v20 = v38;
  sub_22C45DFDC(v19, v13, &v34);
  (*(v15 + 8))(v19, v14);
  if (v20)
  {
    sub_22C45F73C(&qword_27D9BC550, type metadata accessor for ToolDefinitionGrammarGeneratorError);
    v21 = swift_allocError();
    result = sub_22C45F814(v13, v22, type metadata accessor for ToolDefinitionGrammarGeneratorError);
    *v33 = v21;
  }

  else
  {
    v24 = v35;
    v38 = v34;
    v25 = v36;
    v26 = v37;
    v27 = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0);
    sub_22C374168((a2 + *(v27 + 28)), *(a2 + *(v27 + 28) + 24));
    v28 = sub_22C9097EC();
    v30 = v29;
    v34 = v38;
    v35 = v24;
    v36 = v25;
    v37 = v26;
    sub_22C36C640(v9, 1, 1, v14);
    sub_22C532128(v28, v30, &v34, v9, v32);

    sub_22C36DD28(v9, &qword_27D9BC028, &unk_22C9134B0);
  }

  return result;
}

uint64_t sub_22C45DFDC@<X0>(void (*a1)(uint64_t, unint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v226 = a2;
  v246 = a1;
  v227 = a3;
  v3 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22C369ABC();
  v231 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  sub_22C3698F8(&v207 - v8);
  v235 = sub_22C90993C();
  v9 = sub_22C369824(v235);
  v222 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v230 = v13;
  v229 = sub_22C909A3C();
  v14 = sub_22C369824(v229);
  v232 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v228 = v18;
  v19 = sub_22C3A5908(&qword_27D9BC558, &qword_22C9139B8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  sub_22C3698F8(&v207 - v21);
  v215 = sub_22C90998C();
  v22 = sub_22C369824(v215);
  v214 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  sub_22C3698F8(v26);
  v220 = sub_22C9094EC();
  v27 = sub_22C369824(v220);
  v219 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C3698A8();
  sub_22C3698F8(v31);
  v225 = sub_22C90952C();
  v32 = sub_22C369824(v225);
  v224 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C369ABC();
  v38 = (v36 - v37);
  MEMORY[0x28223BE20](v39);
  v41 = &v207 - v40;
  v233 = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0);
  v42 = sub_22C369824(v233);
  v208 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  v209 = v46;
  v47 = sub_22C3698F8(&v207 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = type metadata accessor for ToolDefinitionGrammarGeneratorError(v47);
  v48 = sub_22C36985C(v221);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C369ABC();
  v216 = v51 - v52;
  v54 = MEMORY[0x28223BE20](v53);
  v210 = &v207 - v55;
  MEMORY[0x28223BE20](v54);
  sub_22C3698F8(&v207 - v56);
  v57 = sub_22C90941C();
  v58 = sub_22C369824(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C369ABC();
  v65 = (v63 - v64);
  v67 = MEMORY[0x28223BE20](v66);
  v69 = &v207 - v68;
  MEMORY[0x28223BE20](v67);
  v71 = &v207 - v70;
  v72 = *(v60 + 16);
  v72(&v207 - v70, v246, v57);
  v73 = *(v60 + 88);
  v74 = sub_22C36EBF0();
  v76 = v75(v74);
  if (v76 == *MEMORY[0x277D72AD0])
  {
    v77 = *(v60 + 96);
    v78 = sub_22C36EBF0();
    v79(v78);
    v80 = *v71;
    v81 = swift_projectBox();
    v82 = v224;
    v83 = *(v224 + 16);
    v84 = v225;
    v83(v41, v81, v225);
    TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v38);
    v85 = *(v82 + 88);
    v86 = sub_22C37493C();
    v88 = v87(v86);
    v89 = v41;
    if (v88 == *MEMORY[0x277D72D50])
    {
      v90 = *(v82 + 96);
      v91 = sub_22C37493C();
      v92(v91);
      v93 = *v38;
      v94 = swift_projectBox();
      v95 = v219;
      v96 = v218;
      v97 = v220;
      (*(v219 + 16))(v218, v94, v220);
      v98 = *sub_22C374168((v236 + *(v233 + 36)), *(v236 + *(v233 + 36) + 24));
      sub_22C387010();
      sub_22C533C80(v96, v99, v100);
      (*(v95 + 8))(v96, v97);
LABEL_4:
      (*(v82 + 8))(v89, v84);
    }

    v110 = v236;
    v111 = v233;
    if (v88 == *MEMORY[0x277D72D30])
    {
LABEL_10:
      v112 = *(v82 + 8);
      v113 = sub_22C37493C();
      v112(v113);
      v83(v226, v89, v84);
      sub_22C372704();
      swift_storeEnumTagMultiPayload();
      sub_22C36A848();
      sub_22C45F73C(v114, v115);
      swift_willThrowTypedImpl();
      (v112)(v89, v84);
    }

    if (v88 != *MEMORY[0x277D72D28])
    {
      if (v88 != *MEMORY[0x277D72D18])
      {
        v83(v226, v89, v84);
        sub_22C372704();
        swift_storeEnumTagMultiPayload();
        sub_22C36A848();
        sub_22C45F73C(v149, v150);
        swift_willThrowTypedImpl();
        v151 = *(v82 + 8);
        v151(v89, v84);
        v152 = sub_22C37493C();
        (v151)(v152);
      }

      goto LABEL_10;
    }

    v124 = *(v82 + 96);
    v125 = sub_22C37493C();
    v126(v125);
    v127 = *v38;
    v128 = *(*v38 + 24);
    v246 = *(*v38 + 16);
    v226 = v128;
    v129 = *(v127 + 40);
    v221 = *(v127 + 32);
    v220 = v129;
    v130 = v110 + *(v111 + 20);
    v131 = type metadata accessor for GrammarToolDefinitionBundle(0);
    v132 = v212;
    sub_22C60570C(v89, *(v130 + *(v131 + 20)));
    v133 = v215;
    if (sub_22C370B74(v132, 1, v215) == 1)
    {
      sub_22C36DD28(v132, &qword_27D9BC558, &qword_22C9139B8);
      sub_22C374168((v110 + *(v111 + 44)), *(v110 + *(v111 + 44) + 24));
      sub_22C387010();
      sub_22C533B78(v134);
      goto LABEL_4;
    }

    v159 = v111;
    v217 = v127;
    v218 = v80;
    v219 = v89;
    v160 = (*(v214 + 32))(v213, v132, v133);
    v161 = MEMORY[0x2318B6E50](v160);
    v162 = *(v161 + 16);
    if (v162)
    {
      v246 = *(v232 + 16);
      v163 = (*(v232 + 80) + 32) & ~*(v232 + 80);
      v216 = v161;
      v164 = v161 + v163;
      v226 = *(v232 + 72);
      v232 += 16;
      v165 = (v232 - 8);
      v166 = (v222 + 32);
      v167 = MEMORY[0x277D84F90];
      v168 = v223;
      do
      {
        v169 = v228;
        v170 = v229;
        v246(v228, v164, v229);
        v171 = v231;
        sub_22C909A1C();
        sub_22C45F784(v171, v168);
        (*v165)(v169, v170);
        v172 = v235;
        if (sub_22C370B74(v168, 1, v235) == 1)
        {
          sub_22C36DD28(v168, &qword_27D9BC390, &qword_22C912AC0);
        }

        else
        {
          v173 = *v166;
          (*v166)(v230, v168, v172);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v175 = *(v167 + 16);
            sub_22C592CB0();
            v167 = v176;
          }

          v174 = *(v167 + 16);
          if (v174 >= *(v167 + 24) >> 1)
          {
            sub_22C592CB0();
            v167 = v177;
          }

          *(v167 + 16) = v174 + 1;
          v173(v167 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v174, v230, v235);
          v168 = v223;
        }

        v164 += v226;
        --v162;
      }

      while (v162);

      v159 = v233;
    }

    else
    {

      v167 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v192);
    v199 = v236;
    *(&v207 - 2) = v236;
    v200 = v234;
    v201 = sub_22C3B3E54(sub_22C45F7F4, (&v207 - 4), v167);
    v234 = v200;

    v202 = (v199 + *(v159 + 40));
    v203 = v202[4];
    sub_22C374168(v202, v202[3]);
    v243 = v201;
    v204 = *(v203 + 8);
    sub_22C3A5908(&qword_27D9BC560, &unk_22C9139C0);
    sub_22C3D32C8(&qword_27D9BC568, &qword_27D9BC560, &unk_22C9139C0);
    sub_22C387010();
    v204(v221, v220);
    (*(v214 + 8))(v213, v215);
    (*(v224 + 8))(v219, v225);
  }

  else
  {
    if (v76 == *MEMORY[0x277D72AB0])
    {
      v102 = *(v60 + 96);
      v103 = sub_22C36EBF0();
      v104(v103);
      v105 = *v71;
      v106 = swift_projectBox();
      v72(v69, v106, v57);
      sub_22C378A4C(v236 + *(v233 + 32), &v243);
      sub_22C374168(&v243, v245);
      v107 = v234;
      v108 = v217;
      sub_22C45DFDC(v69, v217);
      if (v107)
      {
        (*(v60 + 8))(v69, v57);
        sub_22C461084();
        sub_22C45F814(v108, v226, v109);
      }

      else
      {
        v237 = v240;
        v238 = v241;
        v239 = v242;
        sub_22C387010();
        sub_22C533804(v147, v148);

        (*(v60 + 8))(v69, v57);
      }

      sub_22C36FF94(&v243);
    }

    if (v76 == *MEMORY[0x277D72AE8])
    {
      v116 = *(v60 + 96);
      v117 = sub_22C36EBF0();
      v118(v117);
      v119 = *v71;
      v120 = swift_projectBox();
      v72(v65, v120, v57);
      sub_22C387010();
      v121 = v234;
      v122 = v216;
      sub_22C45DFDC(v65, v216);
      (*(v60 + 8))(v65, v57);
      if (v121)
      {
        sub_22C461084();
        sub_22C45F814(v122, v226, v123);
      }
    }

    if (v76 == *MEMORY[0x277D72AD8])
    {
      v135 = *(v60 + 96);
      v136 = sub_22C36EBF0();
      v137(v136);
      v138 = *v71;
      v139 = *(*v71 + 16);
      v140 = v211;
      sub_22C460FC8(v236, v211, type metadata accessor for ToolDefinitionGrammarGenerator_v5_0);
      v141 = (*(v208 + 80) + 16) & ~*(v208 + 80);
      v142 = swift_allocObject();
      sub_22C45F814(v140, v142 + v141, type metadata accessor for ToolDefinitionGrammarGenerator_v5_0);
      v143 = v234;
      v144 = v210;
      sub_22C3B3AA0();
      if (v143)
      {
        sub_22C461084();
        sub_22C45F814(v144, v226, v146);
      }

      v183 = v145;

      v184 = *(v183 + 16);
      if (!v184)
      {

        swift_storeEnumTagMultiPayload();
        sub_22C36A848();
        sub_22C45F73C(v205, v206);
        swift_willThrowTypedImpl();
      }

      v246 = v138;
      v234 = 0;
      v243 = 0x5F6E6F696E75;
      v244 = 0xE600000000000000;
      *&v240 = MEMORY[0x277D84F90];
      sub_22C3B5E2C();
      v185 = v240;
      v186 = (v183 + 40);
      do
      {
        v188 = *(v186 - 1);
        v187 = *v186;
        *&v240 = v185;
        v189 = *(v185 + 16);
        v190 = *(v185 + 24);

        if (v189 >= v190 >> 1)
        {
          sub_22C3B5E2C();
          v185 = v240;
        }

        *(v185 + 16) = v189 + 1;
        v191 = v185 + 16 * v189;
        *(v191 + 32) = v188;
        *(v191 + 40) = v187;
        v186 += 4;
        --v184;
      }

      while (v184);
      *&v240 = v185;
      sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0);
      v193 = sub_22C90A04C();
      v195 = v194;

      MEMORY[0x2318B7850](v193, v195);

      v196 = v244;
      sub_22C387010();
      sub_22C46BF90(v197, v196, v183, v198);
    }

    else if (v76 == *MEMORY[0x277D72AB8] || v76 == *MEMORY[0x277D72AE0])
    {
      v154 = *(v60 + 8);
      v155 = sub_22C36EBF0();
      v156(v155);
      v72(v226, v246, v57);
      sub_22C372704();
      swift_storeEnumTagMultiPayload();
      sub_22C36A848();
      sub_22C45F73C(v157, v158);
      return swift_willThrowTypedImpl();
    }

    else
    {
      v72(v226, v246, v57);
      sub_22C372704();
      swift_storeEnumTagMultiPayload();
      sub_22C36A848();
      sub_22C45F73C(v178, v179);
      swift_willThrowTypedImpl();
      v180 = *(v60 + 8);
      v181 = sub_22C36EBF0();
      return v182(v181);
    }
  }
}

uint64_t sub_22C45F254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolDefinitionGrammarGeneratorError(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C45DFDC(a1, v9);
  if (v3)
  {
    return sub_22C45F814(v9, a3, type metadata accessor for ToolDefinitionGrammarGeneratorError);
  }

  return result;
}

uint64_t sub_22C45F318(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0) + 40));
  v3 = v2[3];
  v4 = v2[4];
  sub_22C374168(v2, v3);
  sub_22C9098BC();
  v5 = sub_22C90A2CC();
  v7 = v6;

  sub_22C9098BC();
  v8 = sub_22C90A2AC();
  v10 = v9;

  (*(v4 + 16))(v5, v7, v8, v10, v3, v4);
}

uint64_t sub_22C45F404(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3B00E8;

  return sub_22C45D9F0(a1);
}

uint64_t sub_22C45F49C()
{
  v1 = type metadata accessor for ToolDefinitionGrammarGeneratorError(0);
  v2 = sub_22C36985C(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C460FC8(v0, v6, type metadata accessor for ToolDefinitionGrammarGeneratorError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v8 = 1;
    goto LABEL_5;
  }

  v8 = 0;
  if (EnumCaseMultiPayload == 1)
  {
    v8 = 2;
LABEL_5:
    sub_22C461028(v6);
  }

  return v8;
}

uint64_t sub_22C45F55C(uint64_t a1)
{
  v2 = sub_22C45F73C(qword_27D9BC580, type metadata accessor for ToolDefinitionGrammarGeneratorError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C45F5C8(uint64_t a1)
{
  v2 = sub_22C45F73C(qword_27D9BC580, type metadata accessor for ToolDefinitionGrammarGeneratorError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C45F654(uint64_t *a1)
{
  v2 = *(sub_22C90981C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C1AC(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C45F8F8(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C45F73C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C45F784(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C45F814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C45F8F8(uint64_t a1)
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
        sub_22C90981C();
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C90981C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C45FD48(v8, v9, a1, v4);
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
    return sub_22C45FA28(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C45FA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22C90981C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = sub_22C9097EC();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == sub_22C9097EC() && v32 == v33)
        {
          break;
        }

        v35 = sub_22C90B4FC();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C45FD48(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = sub_22C90981C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v152 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v165 = &v143 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v143 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v161 = &v143 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v160 = &v143 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v27 = &v143 - v23;
  v158 = v24;
  v159 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_114:
    v170 = *v147;
    if (!v170)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v166 = v25;
  v143 = a4;
  v29 = 0;
  v170 = v24 + 16;
  v168 = (v24 + 32);
  v169 = (v24 + 8);
  v30 = MEMORY[0x277D84F90];
  v162 = v8;
  v154 = v16;
  v144 = v26;
  v146 = &v143 - v23;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v149 = v29;
    if (v29 + 1 < v28)
    {
      v164 = v28;
      v145 = v30;
      v33 = v27;
      v34 = *v159;
      v35 = *(v24 + 72);
      v36 = v26;
      v157 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v24 + 16);
      v39(v33, v38, v8);
      v40 = &v34[v35 * v37];
      v41 = v146;
      v156 = v39;
      v39(v36, v40, v8);
      LODWORD(v163) = sub_22C45DC60();
      if (v5)
      {
        v142 = *v169;
        (*v169)(v36, v8);
        (v142)(v41, v8);
LABEL_124:

        return;
      }

      v148 = 0;
      v30 = v169;
      v42 = *v169;
      (*v169)(v36, v8);
      v155 = v42;
      (v42)(v41, v8);
      v43 = v149 + 2;
      v44 = &v34[v35 * (v149 + 2)];
      v32 = v157;
      v45 = v35;
      v167 = v35;
      v46 = v164;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v162;
        v5 = v156;
        (v156)(v160, v44, v162);
        v5(v161, v38, v49);
        v50 = sub_22C9097EC();
        v52 = v51;
        if (v50 == sub_22C9097EC() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_22C90B4FC();
        }

        v56 = v162;
        v30 = v155;
        (v155)(v161, v162);
        (v30)(v160, v56);
        v45 = v167;
        v44 += v167;
        v38 += v167;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v164;
        if ((v163 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v163)
      {
        v31 = v149;
        if (v32 < v149)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v149 >= v32)
        {
          v24 = v158;
          v30 = v145;
          v8 = v162;
          v16 = v154;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v149;
        v61 = v149 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v159;
            if (!*v159)
            {
              goto LABEL_154;
            }

            v64 = v162;
            v164 = *v168;
            v164(v152, &v63[v61], v162);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v164(&v63[v58], v152, v64);
            v5 = v148;
            v45 = v167;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v148;
      }

      v24 = v158;
      v30 = v145;
      v8 = v162;
      v16 = v154;
      v31 = v149;
    }

LABEL_39:
    v66 = v159[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v143)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = *(v30 + 2);
      sub_22C590218();
      v30 = v133;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v157 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_22C590218();
      v30 = v134;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v157;
    *v92 = v149;
    *(v92 + 1) = v93;
    v167 = *v147;
    if (!v167)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
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
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_22C460904(&(*v159)[*(v158 + 72) * *v127], &(*v159)[*(v158 + 72) * *v128], &(*v159)[*(v158 + 72) * v129], v167);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        sub_22C56BFF0(v128 + 16, v130 - 1 - v94, &v91[16 * v94]);
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v16 = v154;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v24 = v158;
    v28 = v159[1];
    v29 = v157;
    v8 = v162;
    v26 = v144;
    v27 = v146;
    if (v157 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v143);
  if (__OFADD__(v31, v143))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v159[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_22C56BFD8(v30);
LABEL_116:
    v135 = v30 + 16;
    v136 = *(v30 + 2);
    while (v136 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_153;
      }

      v137 = v30;
      v30 += 16 * v136;
      v138 = *v30;
      v139 = &v135[2 * v136];
      v140 = *(v139 + 1);
      sub_22C460904(&(*v159)[*(v158 + 72) * *v30], &(*v159)[*(v158 + 72) * *v139], &(*v159)[*(v158 + 72) * v140], v170);
      if (v5)
      {
        break;
      }

      if (v140 < v138)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v30 = v138;
      *(v30 + 1) = v140;
      v141 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      sub_22C56BFF0(v139 + 16, v141, v139);
      *v135 = v136;
      v30 = v137;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v145 = v30;
  v148 = v5;
  v68 = *v159;
  v69 = *(v24 + 72);
  v167 = *(v24 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v163 = -v69;
  v164 = v68;
  v71 = (v31 - v32);
  v150 = v69;
  v151 = v67;
  v72 = &v68[v32 * v69];
  v73 = v166;
LABEL_48:
  v156 = v70;
  v157 = v32;
  v153 = v72;
  v155 = v71;
  while (1)
  {
    v74 = v167;
    (v167)(v73, v72, v8);
    v74(v16, v70, v8);
    v75 = v16;
    v76 = sub_22C9097EC();
    v77 = v8;
    v79 = v78;
    if (v76 == sub_22C9097EC() && v79 == v80)
    {

      v87 = *v169;
      (*v169)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v16 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = sub_22C90B4FC();

    v84 = *v169;
    (*v169)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v16 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v166;
LABEL_60:
      v32 = v157 + 1;
      v70 = &v156[v150];
      v71 = v155 - 1;
      v72 = &v153[v150];
      if (v157 + 1 == v151)
      {
        v32 = v151;
        v5 = v148;
        v30 = v145;
        v31 = v149;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v164)
    {
      break;
    }

    v85 = *v168;
    v86 = v165;
    (*v168)(v165, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v163;
    v72 += v163;
    v65 = __CFADD__(v71++, 1);
    v73 = v166;
    if (v65)
    {
      goto LABEL_60;
    }
  }

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
}

uint64_t sub_22C460904(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_22C90981C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v71 = &v65 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  result = MEMORY[0x28223BE20](v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v25 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v73 = (v18 + 8);
  v74 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v69 = &v65 - v19;
    v71 = v16;
    sub_22C3D7168(a1, (a2 - a1) / v21, a4);
    v72 = (a4 + v25 * v21);
    v76 = v72;
    v27 = a4;
    v28 = v21;
    v68 = v8;
    v70 = a3;
    while (1)
    {
      if (v27 >= v72 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v30 = a1;
      v31 = *v74;
      v32 = v69;
      v33 = a2;
      (*v74)(v69, a2, v8);
      v75 = v27;
      v34 = v71;
      v31();
      v35 = sub_22C9097EC();
      v37 = v36;
      if (v35 == sub_22C9097EC() && v37 == v38)
      {

        v45 = *v73;
        (*v73)(v34, v8);
        v45(v32, v8);
      }

      else
      {
        v40 = sub_22C90B4FC();

        v41 = *v73;
        (*v73)(v34, v8);
        v41(v32, v8);
        if (v40)
        {
          v42 = v33;
          a2 = v33 + v28;
          v43 = v30;
          if (v30 < v33 || v30 >= a2)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v70;
          }

          else
          {
            a3 = v70;
            v8 = v68;
            if (v30 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v75;
          goto LABEL_40;
        }
      }

      v27 = v75 + v28;
      v43 = v30;
      v46 = v30 < v75 || v30 >= v27;
      a2 = v33;
      if (v46)
      {
        v8 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v70;
      }

      else
      {
        a3 = v70;
        v8 = v68;
        if (v30 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v27;
LABEL_40:
      a1 = v43 + v28;
      v78 = a1;
    }
  }

  sub_22C3D7168(a2, v23 / v21, a4);
  v75 = a4;
  v47 = a4 + v26 * v21;
  v48 = -v21;
  v49 = v47;
  v69 = -v21;
LABEL_42:
  v70 = a2;
  v68 = a2 + v48;
  v50 = a3;
  v66 = v49;
  while (1)
  {
    if (v47 <= v75)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_70;
    }

    if (v70 <= a1)
    {
      break;
    }

    v67 = v49;
    v51 = v47 + v48;
    v52 = *v74;
    (*v74)(v71, v47 + v48, v8);
    (v52)(v72, v68, v8);
    v53 = sub_22C9097EC();
    v55 = v54;
    if (v53 == sub_22C9097EC() && v55 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_22C90B4FC();
    }

    v59 = (v50 + v69);
    v60 = *v73;
    (*v73)(v72, v8);
    v60(v71, v8);
    if (v58)
    {
      v62 = v50 < v70 || v59 >= v70;
      a3 = v59;
      if (v62)
      {
        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v67;
        v48 = v69;
      }

      else
      {
        v64 = v67;
        v63 = v68;
        v49 = v67;
        v22 = v50 == v70;
        a2 = v68;
        v48 = v69;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v63;
          v49 = v64;
        }
      }

      goto LABEL_42;
    }

    if (v50 < v47 || v59 >= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v59;
      v47 = v51;
      v49 = v51;
      v48 = v69;
    }

    else
    {
      v49 = v51;
      v22 = v47 == v50;
      v50 = v59;
      v47 = v51;
      v48 = v69;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v59;
        v47 = v51;
        v49 = v51;
      }
    }
  }

  v78 = v70;
  v76 = v66;
LABEL_70:
  sub_22C838188(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_22C460F0C()
{
  result = sub_22C90941C();
  if (v1 <= 0x3F)
  {
    result = sub_22C90952C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C460FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C461028(uint64_t a1)
{
  v2 = type metadata accessor for ToolDefinitionGrammarGeneratorError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C46109C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 56) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 48) = *a2;
  return sub_22C36A77C();
}

uint64_t sub_22C4610C0()
{
  v9 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v8[1] = *(v0 + 48);
  sub_22C474F34(v3, v4, v1, v2, v8);
  *v5 = v8[0];
  sub_22C369C50();

  return v6();
}

uint64_t sub_22C461144(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return sub_22C36A77C();
}

uint64_t sub_22C46115C()
{
  v5 = v0;
  v1 = *(v0 + 16);
  v4[1] = *(v0 + 24);
  sub_22C475B54(v4);
  *v1 = v4[0];
  sub_22C369C50();

  return v2();
}

uint64_t sub_22C4611D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_22C46127C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = AssociatedTypeWitness;
  v14 = *(v6 + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v22 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v22 = (a1 + v14) & ~v12;
    }

    return sub_22C370B74(v22, v10, v13);
  }

  v15 = (v14 & ~v12) + *(*(AssociatedTypeWitness - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_22C4614B0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = (v15 & ~v14) + *(*(AssociatedTypeWitness - 8) + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v12 = v9;
            AssociatedTypeWitness = v7;
          }

          else
          {
            v24 = &a1[v15] & ~v14;
            v25 = a2;
          }

          sub_22C36C640(v24, v25, v12, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C461784(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_22C90AC6C();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C4617F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_22C370B74(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_22C46196C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_22C36C640(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C461BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[5] = AssociatedTypeWitness;
  v9 = sub_22C90AC6C();
  v4[6] = v9;
  v10 = *(v9 - 8);
  sub_22C369B5C();
  v4[7] = v11;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v4[8] = v14;
  v15 = *(AssociatedTypeWitness - 8);
  v4[9] = v15;
  v16 = *(v15 + 64) + 15;
  v4[10] = swift_task_alloc();
  v17 = *(v6 + 16);
  sub_22C369B5C();
  v23 = (v18 + *v18);
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v4[11] = v21;
  *v21 = v4;
  v21[1] = sub_22C461DB4;

  return v23(v14, a2, v7, v6);
}

uint64_t sub_22C461DB4()
{
  sub_22C369980();
  v2 = *(*v1 + 88);
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  *(v5 + 96) = v0;

  if (v0)
  {
    v6 = sub_22C461FE0;
  }

  else
  {
    v6 = sub_22C461EBC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C461EBC()
{
  v1 = v0[8];
  v2 = v0[5];
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    v3 = v0[9];
    v5 = v0[3];
    v4 = v0[4];
    (*(v0[7] + 8))(v1, v0[6]);
    v6 = v4 + *(v5 + 36);
    v7 = *(v3 + 16);
    v8 = v0[10];
  }

  else
  {
    v7 = *(v0[9] + 32);
    v7(v0[10], v1, v2);
    v6 = v0[10];
  }

  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[2];
  v7(v11, v6, v10);
  sub_22C36C640(v11, 0, 1, v10);

  sub_22C369C50();

  return v12();
}

uint64_t sub_22C461FE0()
{
  sub_22C369980();
  v1 = v0[10];
  v2 = v0[8];

  sub_22C369A24();
  v4 = v0[12];

  return v3();
}

uint64_t sub_22C462048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C422A58;

  return sub_22C461BA4(a1, a2, a3);
}

uint64_t sub_22C4620F8()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *(v2 + 16);
  v5 = sub_22C90AC6C();
  v1[7] = v5;
  v6 = *(v5 - 8);
  sub_22C369B5C();
  v1[8] = v7;
  v9 = *(v8 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C4621BC, 0, 0);
}

uint64_t sub_22C4621BC()
{
  v1 = v0[9];
  v2 = v0[6];
  (*(v0[8] + 16))(v1, v0[5], v0[7]);
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    v3 = v0[6];
    v4 = v0[4];
    v5 = v0[2];
    (*(v0[8] + 8))(v0[9], v0[7]);
    v6 = *(v4 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_22C36C640(v5, 1, 1, AssociatedTypeWitness);
    v8 = v0[9];

    sub_22C369C50();

    return v9();
  }

  else
  {
    v11 = *(v0[4] + 24);
    v12 = *(v11 + 16);
    sub_22C369B5C();
    v21 = (v13 + *v13);
    v15 = *(v14 + 4);
    v16 = swift_task_alloc();
    v0[10] = v16;
    *v16 = v0;
    v16[1] = sub_22C4623A0;
    v17 = v0[9];
    v18 = v0[6];
    v19 = v0[2];
    v20 = v0[3];

    return v21(v19, v20, v18, v11);
  }
}

uint64_t sub_22C4623A0()
{
  sub_22C369980();
  v3 = *(*v1 + 80);
  v2 = *v1;
  sub_22C369970();
  *v4 = v2;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C4624FC, 0, 0);
  }

  else
  {
    (*(*(v2[6] - 8) + 8))(v2[9]);
    v5 = v2[9];

    sub_22C369A24();

    return v6();
  }
}

uint64_t sub_22C4624FC()
{
  sub_22C369980();
  (*(*(v0[6] - 8) + 8))(v0[9]);

  sub_22C369A24();
  v2 = v0[11];

  return v1();
}

uint64_t sub_22C46258C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46263C;

  return sub_22C4620F8();
}

unint64_t sub_22C462648(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_22C4629F4();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C4626D0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_22C370B74(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_22C46280C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_22C36C640(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_22C4629F4()
{
  result = qword_27D9BC708[0];
  if (!qword_27D9BC708[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27D9BC708);
  }

  return result;
}

uint64_t sub_22C462A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v6 = *(a3 + 32);
  v7 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[5] = AssociatedTypeWitness;
  v9 = sub_22C90AC6C();
  v4[6] = v9;
  v10 = *(v9 - 8);
  v4[7] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v4[8] = v12;
  v13 = *(AssociatedTypeWitness - 8);
  v4[9] = v13;
  v14 = *(v13 + 64) + 15;
  v4[10] = swift_task_alloc();
  v15 = *(v6 + 16);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v4[11] = v17;
  *v17 = v4;
  v17[1] = sub_22C462C58;

  return v19(v12, a2, v7, v6);
}

uint64_t sub_22C462C58()
{
  sub_22C369980();
  v2 = *(*v1 + 88);
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  *(v5 + 96) = v0;

  if (v0)
  {
    v6 = sub_22C4630AC;
  }

  else
  {
    v6 = sub_22C462D60;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C462D60()
{
  v1 = v0[8];
  v2 = v0[5];
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    v3 = v0[2];
    v4 = v0[3];
    (*(v0[7] + 8))(v1, v0[6]);
    sub_22C36C640(v3, 1, 1, *(v4 + 24));
    v5 = v0[10];
    v6 = v0[8];

    sub_22C369A24();

    return v7();
  }

  else
  {
    v10 = v0[3];
    v9 = v0[4];
    (*(v0[9] + 32))(v0[10], v1, v2);
    v11 = (v9 + *(v10 + 44));
    v12 = v11[1];
    v17 = (*v11 + **v11);
    v13 = (*v11)[1];
    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    v14[1] = sub_22C462F24;
    v15 = v0[10];
    v16 = v0[2];

    return v17(v16, v15);
  }
}

uint64_t sub_22C462F24()
{
  sub_22C369980();
  v2 = *(*v1 + 104);
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  *(v5 + 112) = v0;

  if (v0)
  {
    v6 = sub_22C463114;
  }

  else
  {
    v6 = sub_22C46302C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C46302C()
{
  sub_22C369980();
  (*(v0[9] + 8))(v0[10], v0[5]);
  v1 = v0[10];
  v2 = v0[8];

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C4630AC()
{
  sub_22C369980();
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C463114()
{
  sub_22C369980();
  (*(v0[9] + 8))(v0[10], v0[5]);
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[8];

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C463194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C422A58;

  return sub_22C462A3C(a1, a2, a3);
}

uint64_t sub_22C46325C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C4632CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_22C370B74(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_22C370B74(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_22C463408(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_22C36C640(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C463624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C46363C()
{
  sub_22C369980();
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  (*(*(v2 - 8) + 16))(v1, v0[4], v2);
  sub_22C36C640(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_22C4636E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C46403C;

  return sub_22C463624(a1, v6, a3);
}

uint64_t sub_22C46378C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C4637A4()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_22C46387C;
  v4 = v0[4];

  return (sub_22C77751C)(&unk_22C913CF0, v2, v4);
}

uint64_t sub_22C46387C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v8 + 56) = v7;

  if (v0)
  {
    v9 = *(v5 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22C4639C0, 0, 0);
  }
}

void sub_22C4639C0()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v2 == v3)
      {
        v0 = v16;
        v13 = *(v16 + 56);

        goto LABEL_18;
      }

      if (v3 >= *(v1 + 16))
      {
        break;
      }

      v5 = *(v1 + 32 + 8 * v3);
      v6 = *(v5 + 16);
      v7 = *(v4 + 16);
      if (__OFADD__(v7, v6))
      {
        goto LABEL_22;
      }

      v8 = *(v1 + 32 + 8 * v3);

      if (!swift_isUniquelyReferenced_nonNull_native() || v7 + v6 > *(v4 + 24) >> 1)
      {
        sub_22C590FE8();
        v4 = v9;
      }

      if (*(v5 + 16))
      {
        if ((*(v4 + 24) >> 1) - *(v4 + 16) < v6)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v10 = *(v4 + 16);
          v11 = __OFADD__(v10, v6);
          v12 = v10 + v6;
          if (v11)
          {
            goto LABEL_25;
          }

          *(v4 + 16) = v12;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_23;
        }
      }

      ++v3;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    v14 = *(v0 + 56);

    v4 = 0;
LABEL_18:
    **(v0 + 16) = v4;
    v15 = *(v0 + 8);

    v15();
  }
}

uint64_t sub_22C463B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22C463B8C, 0, 0);
}

uint64_t sub_22C463B8C()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  sub_22C374168(v1, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_22C463CBC;
  v7 = v0[5];

  return (v9)(v0 + 2, v7, v2, v3);
}

uint64_t sub_22C463CBC()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 48);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_22C463DE0;
  }

  else
  {
    v7 = sub_22C463DC0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C463DF8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C463EA8;

  return sub_22C46378C(a1, a2, v6);
}

uint64_t sub_22C463EA8()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_22C463F8C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C463EA8;

  return sub_22C463B68(a1, a2, v6);
}

uint64_t sub_22C464040(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C464058(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_22C464098(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C4640F8(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_22C9063DC();
  v3[16] = v4;
  sub_22C3699B8(v4);
  v3[17] = v5;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();
  v8 = sub_22C90634C();
  v3[19] = v8;
  sub_22C3699B8(v8);
  v3[20] = v9;
  v11 = *(v10 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v12 = sub_22C90636C();
  v3[23] = v12;
  sub_22C3699B8(v12);
  v3[24] = v13;
  v15 = *(v14 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C464274, 0, 0);
}

uint64_t sub_22C464274()
{
  v65 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v59 = *(v4 + 8);
  v59(v2, v3);
  v6 = sub_22C90635C();
  v7 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v8 = *(v0 + 176);
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v6, v7, v10, "QuotableStringGrammarComponent.generate", "", v9, 2u);
    MEMORY[0x2318B9880](v9, -1, -1);
  }

  v57 = *(v0 + 208);
  v12 = *(v0 + 176);
  v11 = *(v0 + 184);
  v14 = *(v0 + 160);
  v13 = *(v0 + 168);
  v15 = *(v0 + 152);
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);

  (*(v14 + 16))(v13, v12, v15);
  v18 = sub_22C9063AC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_22C90639C();
  (*(v14 + 8))(v12, v15);
  v59(v57, v11);
  v21 = *v17;
  v22 = v17[1];
  v23 = *v16;
  v61 = MEMORY[0x277D84F90];
  sub_22C494E64();
  v25 = v24;
  v27 = *(v0 + 112);
  v26 = *(v0 + 120);

  v28 = *(v26 + 56);
  v29 = *(v27 + 32);
  sub_22C464B30(v26 + 16, v0 + 16);
  if (*(v0 + 40))
  {
    sub_22C36C730((v0 + 16), v0 + 56);
    v30 = *(v0 + 80);
    v31 = *(v0 + 88);
    sub_22C374168((v0 + 56), v30);
    *(v0 + 96) = v25;
    (*(v31 + 16))(&v61, v0 + 96, v21, v22, v29, v30, v31);

    sub_22C36FF94((v0 + 56));
    v21 = v61;
    v22 = v62;
    v28 = v63;
    v32 = v64;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v0 + 144);
  sub_22C903F7C();

  v34 = sub_22C9063CC();
  v35 = sub_22C90AACC();

  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 136);
  v38 = *(v0 + 144);
  v39 = *(v0 + 128);
  if (v36)
  {
    v58 = v28;
    v40 = swift_slowAlloc();
    v56 = v38;
    v41 = swift_slowAlloc();
    v60 = v41;
    v61 = v21;
    *v40 = 136380675;
    v62 = v22;
    v63 = v58;
    v64 = v32;
    BNFGrammarRenderer.renderGrammar(grammar:)(&v61);
    v55 = v32;
    v44 = sub_22C36F9F4(v42, v43, &v60);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_22C366000, v34, v35, "Generated grammar for quotable content: \n%{private}s", v40, 0xCu);
    sub_22C36FF94(v41);
    MEMORY[0x2318B9880](v41, -1, -1);
    v45 = v40;
    v28 = v58;
    MEMORY[0x2318B9880](v45, -1, -1);

    (*(v37 + 8))(v56, v39);
    v46 = v55;
  }

  else
  {

    (*(v37 + 8))(v38, v39);
    v46 = v32;
  }

  v47 = *(v0 + 200);
  v48 = *(v0 + 208);
  v50 = *(v0 + 168);
  v49 = *(v0 + 176);
  v51 = *(v0 + 144);
  v52 = *(v0 + 104);
  *v52 = v21;
  v52[1] = v22;
  v52[2] = v28;
  v52[3] = v46;
  sub_22C46479C();

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_22C46479C()
{
  v0 = sub_22C90637C();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_22C90634C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C90364C();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v20 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v20, v17, "QuotableStringGrammarComponent.generate", v15, v16, 2u);
    MEMORY[0x2318B9880](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22C464A88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C3B00E8;

  return sub_22C4640F8(a1, a2);
}

uint64_t sub_22C464B8C()
{
  sub_22C369980();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v1[10] = v4;
  v5 = *(*(v4 - 8) + 64);
  v1[11] = sub_22C3699D4();
  v6 = type metadata accessor for _PromptToolData(0);
  v1[12] = v6;
  sub_22C3699B8(v6);
  v1[13] = v7;
  v9 = *(v8 + 64);
  v1[14] = sub_22C36D0D4();
  v1[15] = swift_task_alloc();
  v10 = sub_22C9036EC();
  v1[16] = v10;
  sub_22C3699B8(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = sub_22C36D0D4();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v14 = sub_22C9063DC();
  v1[24] = v14;
  sub_22C3699B8(v14);
  v1[25] = v15;
  v17 = *(v16 + 64);
  v1[26] = sub_22C36D0D4();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v18 = sub_22C90637C();
  v1[30] = v18;
  sub_22C3699B8(v18);
  v1[31] = v19;
  v21 = *(v20 + 64);
  v1[32] = sub_22C3699D4();
  v22 = sub_22C90634C();
  v1[33] = v22;
  sub_22C3699B8(v22);
  v1[34] = v23;
  v25 = *(v24 + 64);
  v1[35] = sub_22C36D0D4();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v26 = sub_22C90636C();
  v1[41] = v26;
  sub_22C3699B8(v26);
  v1[42] = v27;
  v29 = *(v28 + 64);
  v1[43] = sub_22C36D0D4();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v30 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_22C464EC8()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[40];
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v6 = *(v4 + 8);
  v0[49] = v6;
  v0[50] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46 = v6;
  v6(v2, v3);
  v7 = sub_22C90635C();
  sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v8 = v0[40];
    *sub_22C36D240() = 0;
    v9 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v10, v11, v9, "GlobalToolboxGrammarComponent.generate", "");
    sub_22C3699EC();
  }

  v12 = v0[47];
  v13 = v0[48];
  v14 = v0[46];
  v16 = v0[40];
  v15 = v0[41];
  v17 = v0[39];
  v43 = v0[38];
  v19 = v0[33];
  v18 = v0[34];

  v45 = *(v18 + 16);
  v45(v17, v16, v19);
  v20 = sub_22C9063AC();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v0[51] = sub_22C36D704();
  v23 = *(v18 + 8);
  v0[52] = v23;
  v0[53] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44 = v23;
  (v23)(v16, v19);
  v46(v13, v15);
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v24 = sub_22C36ECB4();
  (v46)(v24);
  v25 = sub_22C90635C();
  v26 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v27 = v0[38];
    v28 = sub_22C36D240();
    sub_22C37585C(v28);
    v29 = sub_22C90632C();
    sub_22C46BC48(&dword_22C366000, v25, v26, v29, "GlobalToolboxGrammarComponent.generate.getToolList", "");
    sub_22C3699EC();
  }

  v30 = v0[46];
  v31 = v0[41];
  v33 = v0[38];
  v32 = v0[39];
  v34 = v0[33];
  v35 = v0[9];

  v45(v32, v33, v34);
  v36 = *(v20 + 48);
  v37 = *(v20 + 52);
  swift_allocObject();
  v0[54] = sub_22C36D704();
  v38 = sub_22C36FC2C();
  v44(v38);
  v39 = sub_22C36ECB4();
  (v46)(v39);
  v40 = *sub_22C374168((v35 + 16), *(v35 + 40));
  v41 = swift_task_alloc();
  v0[55] = v41;
  *v41 = v0;
  v41[1] = sub_22C4651E0;

  return sub_22C478EB0(v40);
}

uint64_t sub_22C4651E0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 440);
  *v3 = *v1;
  *(v2 + 448) = v6;
  *(v2 + 456) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22C4652E4()
{
  v347 = v0;
  v1 = v0;
  v2 = v0[54];
  v3 = v0[45];
  v4 = v0[37];
  sub_22C90364C();
  v5 = sub_22C90635C();
  sub_22C90638C();
  v6 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v7 = v0[54];
    v8 = v0[31];
    v9 = v0[32];
    v10 = v0[30];

    sub_22C9063BC();

    v11 = *(v8 + 88);
    v12 = sub_22C36ECB4();
    if (v13(v12) == *MEMORY[0x277D85B00])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[31] + 8))(v0[32], v0[30]);
      v14 = "";
    }

    v15 = v0[37];
    v16 = sub_22C36D240();
    sub_22C37585C(v16);
    v17 = sub_22C90632C();
    sub_22C46BC48(&dword_22C366000, v5, v6, v17, "GlobalToolboxGrammarComponent.generate.getToolList", v14);
    sub_22C3699EC();
  }

  v335 = v0[56];
  v19 = v0[52];
  v18 = v1[53];
  v20 = v1[49];
  v21 = v1[50];
  v22 = v1[45];
  v23 = v1[41];
  v24 = v1[37];
  v25 = v5;
  v26 = v1[33];
  v27 = v1[29];

  v19(v24, v26);
  v20(v22, v23);
  sub_22C903F7C();

  v28 = sub_22C9063CC();
  v29 = sub_22C90AACC();

  v336 = v1;
  if (os_log_type_enabled(v28, v29))
  {
    v273 = v29;
    log = v28;
    v30 = v1[56];
    v31 = v1[17];
    v32 = swift_slowAlloc();
    v33 = 0;
    v340[0] = swift_slowAlloc();
    buf = v32;
    *v32 = 136315394;
    v330 = *(v30 + 16);
    v308 = *MEMORY[0x277D1ECE0];
    v313 = *MEMORY[0x277D1ECE8];
    v304 = *MEMORY[0x277D1ECD8];
    v300 = *MEMORY[0x277D1ECD0];
    v295 = *MEMORY[0x277D1ECF8];
    v34 = (v31 + 8);
    v290 = (v31 + 32);
    v286 = MEMORY[0x277D84F90];
    while (v330 != v33)
    {
      if (v33 >= *(v30 + 16))
      {
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v35 = v1[22];
      v36 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v37 = *(v31 + 72);
      v38 = *(v31 + 16);
      (v38)(v1[23], v1[56] + v36 + v37 * v33, v1[16]);
      v39 = sub_22C3773B8();
      v38(v39);
      v40 = *(v31 + 88);
      v41 = sub_22C3726C4();
      v43 = v42(v41);
      if (v43 == v308 || v43 != v313 && (v43 != v304 ? (v44 = v43 == v300) : (v44 = 1), !v44 ? (v45 = v43 == v295) : (v45 = 1), v45))
      {
        v49 = v336[23];
        v50 = v336[21];
        (*v34)(v336[22], v336[16]);
        v51 = *v290;
        v52 = sub_22C3773B8();
        v279 = v53;
        (v53)(v52);
        v54 = v286;
        v343 = v286;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = *(v286 + 16);
          v56 = sub_22C38262C();
          sub_22C3B657C(v56, v57, 1);
          v54 = v343;
        }

        v59 = *(v54 + 16);
        v58 = *(v54 + 24);
        v1 = v336;
        if (v59 >= v58 >> 1)
        {
          v62 = sub_22C374A9C(v58);
          sub_22C3B657C(v62, v59 + 1, 1);
          v54 = v343;
        }

        ++v33;
        v60 = v336[21];
        v61 = v336[16];
        *(v54 + 16) = v59 + 1;
        v286 = v54;
        v279(v54 + v36 + v59 * v37, v60, v61);
      }

      else
      {
        v1 = v336;
        v46 = v336[23];
        v47 = *v34;
        (*v34)(v336[22], v336[16]);
        v48 = sub_22C36FC2C();
        v47(v48);
        ++v33;
      }
    }

    MEMORY[0x2318B7AD0](v286, v1[16]);

    v69 = sub_22C36FC2C();
    v72 = sub_22C36F9F4(v69, v70, v71);

    v73 = 0;
    *(buf + 4) = v72;
    *(buf + 6) = 2080;
    v309 = MEMORY[0x277D84F90];
    while (v330 != v73)
    {
      if (v73 >= *(v30 + 16))
      {
        goto LABEL_73;
      }

      v74 = v1[19];
      v75 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v76 = *(v31 + 72);
      v77 = *(v31 + 16);
      (v77)(v1[20], v1[56] + v75 + v76 * v73, v336[16]);
      v78 = sub_22C3773B8();
      v77(v78);
      v79 = *(v31 + 88);
      v80 = sub_22C3726C4();
      v82 = v81(v80);
      v83 = *(v31 + 8);
      v84 = sub_22C3726C4();
      v1 = v336;
      v83(v84);
      v85 = v336[20];
      if (v82 == v313)
      {
        v86 = *v290;
        (*v290)(v336[18], v336[20], v336[16]);
        v87 = v309;
        v343 = v309;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = *(v309 + 16);
          v89 = sub_22C38262C();
          sub_22C3B657C(v89, v90, 1);
          v87 = v343;
        }

        v92 = *(v87 + 16);
        v91 = *(v87 + 24);
        if (v92 >= v91 >> 1)
        {
          v96 = sub_22C374A9C(v91);
          sub_22C3B657C(v96, v92 + 1, 1);
          v87 = v343;
        }

        ++v73;
        v93 = v336[18];
        v94 = v336[16];
        *(v87 + 16) = v92 + 1;
        v309 = v87;
        v95 = v87 + v75 + v92 * v76;
        v1 = v336;
        v86(v95, v93, v94);
      }

      else
      {
        (v83)(v336[20], v336[16]);
        ++v73;
      }
    }

    v97 = v1[29];
    v99 = v1[24];
    v98 = v1[25];
    v100 = MEMORY[0x2318B7AD0](v309, v1[16]);
    v102 = v101;

    v103 = v100;
    v1 = v336;
    v104 = sub_22C36F9F4(v103, v102, v340);

    *(buf + 14) = v104;
    _os_log_impl(&dword_22C366000, log, v273, "Generating global toolbox grammar for %s tools and %s assistant schemas.", buf, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    v105 = *(v98 + 8);
    v67 = sub_22C36FC2C();
  }

  else
  {
    v63 = v1[29];
    v64 = v1[24];
    v65 = v1[25];

    v66 = *(v65 + 8);
    v67 = v63;
    v68 = v64;
  }

  v325 = v66;
  v66(v67, v68);
  v107 = v1[56];
  v106 = v1[57];
  v108 = v1;
  v111 = v1 + 49;
  v110 = v1[49];
  v109 = v111[1];
  v112 = v108[47];
  v113 = v108[44];
  v114 = v108[41];
  v115 = v108[36];
  v116 = v108[9];
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v110(v112, v114);
  v117 = sub_22C36D240();
  sub_22C37585C(v117);
  v118 = sub_22C90635C();
  LOBYTE(v110) = sub_22C90AB6C();
  v119 = sub_22C90632C();
  sub_22C46BC48(&dword_22C366000, v118, v110, v119, "GlobalToolboxGrammarComponent.generate.buildDynamicEnumerationMap", "");
  v120 = sub_22C4668F0(v107);
  if (v106)
  {
    v121 = v108[56];
    v122 = v108[54];
    v124 = v108[51];
    v123 = v108[52];
    v337 = v108[50];
    v320 = v108[49];
    v326 = v108[53];
    v125 = v108[44];
    v126 = v108[41];
    v127 = v108[36];
    v128 = v108[33];

    v129 = sub_22C3726C4();
    v123(v129);
    v320(v125, v126);
    v130 = v108;
    sub_22C468A20(v124, "GlobalToolboxGrammarComponent.generate");

    v158 = v108[47];
    v157 = v108[48];
    v159 = v108[45];
    v160 = v108[46];
    v161 = v130[43];
    v162 = v130[44];
    v164 = v130[39];
    v163 = v130[40];
    v166 = v130[37];
    v165 = v130[38];
    v269 = v130[36];
    v271 = v130[35];
    v274 = v130[32];
    loga = v130[29];
    v280 = v130[28];
    bufb = v130[27];
    v287 = v130[26];
    v291 = v130[23];
    v296 = v130[22];
    v301 = v130[21];
    v305 = v130[20];
    v311 = v130[19];
    v317 = v130[18];
    v322 = v130[15];
    v327 = v130[14];
    v338 = v130[11];

    sub_22C369A24();
LABEL_43:

    v167();
    return;
  }

  v132 = v108[52];
  v131 = v108[53];
  v314 = v108[50];
  v321 = v120;
  v310 = v108[49];
  v133 = v108[44];
  v134 = v108[41];
  v135 = v108[36];
  v136 = v108[33];
  v137 = v108[28];
  v138 = sub_22C90AB5C();
  v139 = sub_22C90632C();
  sub_22C46BC48(&dword_22C366000, v118, v138, v139, "GlobalToolboxGrammarComponent.generate.buildDynamicEnumerationMap", "");

  sub_22C3699EC();
  v132(v135, v136);
  v310(v133, v134);
  sub_22C903F7C();

  v140 = sub_22C9063CC();
  v141 = sub_22C90AACC();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = sub_22C36FB44();
    *v142 = 134217984;
    *(v142 + 4) = *(v321 + 16);

    _os_log_impl(&dword_22C366000, v140, v141, "Identified %ld dynamic enumeration types in global tools. Using empty case map to enforce correct rendering.", v142, 0xCu);
    sub_22C3699EC();
  }

  else
  {
  }

  v315 = v336[56];
  v144 = v336[49];
  v143 = v336[50];
  v145 = v336[47];
  v146 = v336[43];
  v147 = v336[41];
  v148 = v336[35];
  v149 = v336[25] + 8;
  v150 = v336[8];
  v151 = v336[9];
  v325(v336[28], v336[24]);
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v144(v145, v147);
  v152 = sub_22C36D240();
  sub_22C37585C(v152);
  v153 = sub_22C90635C();
  LOBYTE(v146) = sub_22C90AB6C();
  v154 = sub_22C90632C();
  sub_22C46BC48(&dword_22C366000, v153, v146, v154, "GlobalToolboxGrammarComponent.generate.renderTools", "");
  v155 = swift_task_alloc();
  v155[2] = v151;
  v155[3] = v321;
  v155[4] = v150;
  sub_22C792E44();
  v316 = v336[56];
  v168 = v156;
  v169 = v336[52];
  v331 = v336[50];
  v297 = v336[53];
  v302 = v336[49];
  v292 = v336[43];
  v170 = v336[41];
  v171 = v336[35];
  v172 = v336[33];
  v173 = v336[9];

  v174 = sub_22C90AB5C();
  v175 = sub_22C90632C();
  sub_22C46BC48(&dword_22C366000, v153, v174, v175, "GlobalToolboxGrammarComponent.generate.renderTools", "");

  sub_22C3699EC();

  v176 = v171;
  v177 = v336;
  v169(v176, v172);
  v302(v292, v170);
  sub_22C378A4C(v173 + 328, (v336 + 2));
  sub_22C374168(v177 + 2, v177[5]);
  v178 = *(v168 + 16);
  v179 = MEMORY[0x277D84F90];
  v306 = v168;
  if (v178)
  {
    v180 = v336[13];
    v181 = (v336[15] + *(v336[12] + 36));
    v182 = v168 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
    v332 = *(v180 + 72);
    do
    {
      v183 = v177[15];
      sub_22C372714();
      v184 = sub_22C36A724();
      sub_22C46B904(v184, v185, v186);
      v187 = *v181;
      v188 = v181[1];
      v189 = v181[2];
      v190 = v181[3];
      v191 = sub_22C36ECB4();
      sub_22C456C94(v191, v192);
      sub_22C36A860();
      sub_22C46B9D0(v183, v193);
      if (v188)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v197 = *(v179 + 16);
          sub_22C591018();
          v179 = v198;
        }

        sub_22C37F0F4();
        if (v195)
        {
          sub_22C369AB0(v194);
          sub_22C379FA0();
          sub_22C591018();
          v179 = v199;
        }

        *(v179 + 16) = v183;
        v196 = (v179 + 32 * v169);
        v196[4] = v187;
        v196[5] = v188;
        v196[6] = v189;
        v196[7] = v190;
      }

      v177 = v336;
      v182 += v332;
      --v178;
    }

    while (v178);
  }

  sub_22C531C50(v179, &v343);

  v201 = v343;
  v200 = v344;
  v202 = v345;
  v203 = v346;
  sub_22C36FF94(v177 + 2);
  if (!v200)
  {
    v247 = v177[26];

    sub_22C903F7C();
    v248 = sub_22C9063CC();
    v249 = sub_22C90AACC();
    v250 = os_log_type_enabled(v248, v249);
    v251 = v177[54];
    if (v250)
    {
      v252 = sub_22C36D240();
      *v252 = 0;
      _os_log_impl(&dword_22C366000, v248, v249, "Failed to produce grammar when rendering global toolbox.", v252, 2u);
      sub_22C3699EC();

      sub_22C456D48(v201, 0);
    }

    else
    {
      v256 = v177[54];
    }

    v257 = v177[7];
    v325(v177[26], v177[24]);
    *(v257 + 32) = 0;
    *v257 = 0u;
    *(v257 + 16) = 0u;
LABEL_71:
    v258 = v177[51];
    v260 = v177[47];
    v259 = v177[48];
    v262 = v177[45];
    v261 = v177[46];
    v264 = v177[43];
    v263 = v177[44];
    v265 = v177;
    v266 = v177[40];
    v267 = v265[39];
    v268 = v265[38];
    v270 = v265[37];
    v272 = v265[36];
    v275 = v265[35];
    logb = v265[32];
    v281 = v265[29];
    bufc = v265[28];
    v289 = v265[27];
    v294 = v265[26];
    v299 = v265[23];
    v303 = v265[22];
    v307 = v265[21];
    v312 = v265[20];
    v319 = v265[19];
    v324 = v265[18];
    v329 = v265[15];
    v334 = v265[14];
    v339 = v265[11];
    sub_22C468A20(v258, "GlobalToolboxGrammarComponent.generate");

    sub_22C369C50();
    goto LABEL_43;
  }

  v204 = v177[27];
  v205 = v177[9];
  v343 = v201;
  v344 = v200;
  v345 = v202;
  v346 = v203;
  v206 = v205[1];
  v341 = *v205;
  v342 = v206;
  v293 = v200;
  v298 = v201;
  sub_22C456C94(v201, v200);

  MEMORY[0x2318B7850](0x5F6C61626F6C675FLL, 0xE800000000000000);
  sub_22C46763C(v341, v342, v340);

  v207 = v340[0];
  v208 = v340[1];
  v209 = v340[2];
  v210 = v340[3];
  sub_22C903F7C();

  v211 = sub_22C9063CC();
  v212 = sub_22C90AACC();

  v213 = os_log_type_enabled(v211, v212);
  v214 = v177[27];
  v215 = v177[24];
  v323 = v208;
  v333 = v207;
  bufa = v209;
  v288 = v210;
  if (v213)
  {
    v216 = sub_22C36FB44();
    v217 = swift_slowAlloc();
    v218 = v209;
    v219 = v217;
    v340[0] = v217;
    *v216 = 136315138;
    v343 = v333;
    v344 = v208;
    v345 = v218;
    v346 = v210;
    BNFGrammarRenderer.renderGrammar(grammar:)(&v343);
    v222 = sub_22C36F9F4(v220, v221, v340);

    *(v216 + 4) = v222;
    v177 = v336;
    sub_22C37B250(&dword_22C366000, v223, v224, "Generated grammar for global toolbox: \n%s");
    sub_22C36FF94(v219);
    sub_22C3699EC();
    v207 = v333;
    sub_22C3699EC();
  }

  v325(v214, v215);
  v225 = *(v306 + 16);
  if (!v225)
  {

    v228 = MEMORY[0x277D84F90];
LABEL_68:
    v253 = v177[54];
    v254 = v177[7];
    v255 = sub_22C3AD928(v228);
    sub_22C456D48(v298, v293);

    *v254 = v207;
    v254[1] = v208;
    v254[2] = bufa;
    v254[3] = v288;
    v254[4] = v255;
    goto LABEL_71;
  }

  v226 = v177[13];
  v343 = MEMORY[0x277D84F90];
  sub_22C36D6CC();
  sub_22C3B5E2C();
  v227 = 0;
  v328 = v226;
  v228 = v343;
  v318 = v306 + ((*(v226 + 80) + 32) & ~*(v226 + 80));
  while (v227 < *(v306 + 16))
  {
    v229 = v225;
    v230 = v177[14];
    v231 = v177[11];
    v232 = *(v328 + 72);
    sub_22C372714();
    sub_22C46B904(v233, v230, v234);
    v235 = *v230;
    type metadata accessor for PromptTreeIdentifier.Label(0);
    sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C3732E0();
    sub_22C46B854(&qword_27D9BC4A0, v236);
    v237 = sub_22C909F0C();
    sub_22C4A0390();
    v238 = v177;
    v240 = v239;
    v242 = v241;
    v243 = v238[14];

    sub_22C36A860();
    sub_22C46B9D0(v243, v244);
    v343 = v228;
    sub_22C37F0F4();
    if (v195)
    {
      sub_22C374A9C(v245);
      sub_22C379FA0();
      sub_22C3B5E2C();
      v228 = v343;
    }

    ++v227;
    *(v228 + 16) = v237;
    v246 = v228 + 16 * v238;
    *(v246 + 32) = v240;
    *(v246 + 40) = v242;
    v225 = v229;
    v207 = v333;
    v177 = v336;
    v208 = v323;
    if (v229 == v227)
    {

      goto LABEL_68;
    }
  }

LABEL_74:
  __break(1u);
}

uint64_t sub_22C466728()
{
  v1 = v0[54];
  v2 = v0[51];

  sub_22C468A20(v2, "GlobalToolboxGrammarComponent.generate");

  v31 = v0[57];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v6 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v10 = v0[39];
  v9 = v0[40];
  v12 = v0[37];
  v11 = v0[38];
  v15 = v0[36];
  v16 = v0[35];
  v17 = v0[32];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[15];
  v29 = v0[14];
  v30 = v0[11];

  sub_22C369A24();

  return v13();
}

uint64_t sub_22C4668F0(uint64_t a1)
{
  v102 = type metadata accessor for DynamicEnumeration(0);
  v100 = *(v102 - 8);
  v3 = *(v100 + 64);
  v4 = MEMORY[0x28223BE20](v102);
  v107 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v101 = &v82 - v6;
  v99 = sub_22C90941C();
  v87 = *(v99 - 8);
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v99);
  v108 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22C908EAC();
  v85 = *(v95 - 8);
  v9 = *(v85 + 64);
  MEMORY[0x28223BE20](v95);
  v86 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationDynamicEnumerationQuery = type metadata accessor for QueryDecorationDynamicEnumerationQuery();
  v105 = *(DecorationDynamicEnumerationQuery - 8);
  v11 = *(v105 + 64);
  MEMORY[0x28223BE20](DecorationDynamicEnumerationQuery);
  v106 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v82 - v15;
  v17 = sub_22C908ABC();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v82 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v82 - v26;
  MEMORY[0x28223BE20](v25);
  v104 = &v82 - v28;
  v29 = 0;
  v30 = *(a1 + 16);
  v97 = (v31 + 32);
  v98 = v31;
  v103 = MEMORY[0x277D84F90];
  v96 = v21;
  while (v30 != v29)
  {
    v32 = *(sub_22C9036EC() - 8);
    sub_22C467948(a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, v16);
    if (sub_22C370B74(v16, 1, v17) == 1)
    {
      sub_22C46B89C(v16);
      ++v29;
    }

    else
    {
      v91 = a1;
      v33 = v24;
      v34 = *v97;
      (*v97)(v27, v16, v17);
      v92 = v33;
      v93 = v34;
      v94 = v27;
      (v34)(v33, v27, v17);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v35 = v92;
      }

      else
      {
        v35 = v92;
        v39 = *(v103 + 16);
        sub_22C592E40();
        v103 = v40;
      }

      v36 = *(v103 + 16);
      a1 = v91;
      if (v36 >= *(v103 + 24) >> 1)
      {
        sub_22C592E40();
        v103 = v41;
      }

      ++v29;
      v37 = v103;
      *(v103 + 16) = v36 + 1;
      v38 = v37 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v36;
      v24 = v35;
      (v93)(v38, v35, v17);
      v21 = v96;
      v27 = v94;
    }
  }

  v97 = v1;
  v42 = v103;
  v43 = MEMORY[0x277D84F90];
  v94 = *(v103 + 16);
  if (v94)
  {
    v44 = 0;
    v92 = (v103 + ((*(v98 + 80) + 32) & ~*(v98 + 80)));
    v90 = v98 + 88;
    v91 = v98 + 16;
    v89 = *MEMORY[0x277D1E8E0];
    v93 = (v98 + 8);
    v84 = (v98 + 96);
    v83 = (v85 + 32);
    v85 += 8;
    v45 = v95;
    v46 = v104;
    while (v44 < *(v42 + 16))
    {
      v47 = v98;
      v48 = *(v98 + 16);
      v48(v46, &v92[*(v98 + 72) * v44], v17);
      v48(v21, v46, v17);
      v49 = (*(v47 + 88))(v21, v17);
      if (v49 == v89)
      {
        (*v84)(v21, v17);
        v50 = v86;
        (*v83)(v86, v21, v45);
        v51 = sub_22C908DCC();
        MEMORY[0x28223BE20](v51);
        *(&v82 - 2) = v50;
        v52 = v97;
        v53 = sub_22C8F47F4(sub_22C46BA94, (&v82 - 4), v51);
        v97 = v52;
        if (v52)
        {

          (*v93)(v104, v17);

          (*v85)(v50, v45);
          return v44;
        }

        v54 = v53;
        (*v93)(v104, v17);

        (*v85)(v50, v45);
      }

      else
      {
        v55 = *v93;
        (*v93)(v21, v17);
        v55(v46, v17);
        v54 = MEMORY[0x277D84F90];
      }

      v56 = v54[2];
      v57 = *(v43 + 16);
      if (__OFADD__(v57, v56))
      {
        goto LABEL_49;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v57 + v56 > *(v43 + 24) >> 1)
      {
        sub_22C592D78();
        v43 = v58;
      }

      v45 = v95;
      v46 = v104;
      if (v54[2])
      {
        if ((*(v43 + 24) >> 1) - *(v43 + 16) < v56)
        {
          goto LABEL_51;
        }

        v59 = (*(v105 + 80) + 32) & ~*(v105 + 80);
        v60 = *(v105 + 72);
        swift_arrayInitWithCopy();

        v42 = v103;
        if (v56)
        {
          v61 = *(v43 + 16);
          v62 = __OFADD__(v61, v56);
          v63 = v61 + v56;
          if (v62)
          {
            goto LABEL_53;
          }

          *(v43 + 16) = v63;
        }
      }

      else
      {

        v42 = v103;
        if (v56)
        {
          goto LABEL_50;
        }
      }

      ++v44;
      v21 = v96;
      if (v94 == v44)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_48;
  }

LABEL_29:

  v64 = *(v43 + 16);
  if (v64)
  {
    v65 = 0;
    v104 = (v43 + ((*(v105 + 80) + 32) & ~*(v105 + 80)));
    v103 = v87 + 16;
    v44 = MEMORY[0x277D84F98];
    v66 = (v87 + 8);
    while (v65 < *(v43 + 16))
    {
      v67 = sub_22C46B904(&v104[*(v105 + 72) * v65], v106, type metadata accessor for QueryDecorationDynamicEnumerationQuery);
      v68 = MEMORY[0x2318B6CE0](v67);
      v69 = v101;
      MEMORY[0x2318B6CE0](v68);
      *(v69 + *(v102 + 20)) = MEMORY[0x277D84F90];
      sub_22C46B96C(v69, v107);
      swift_isUniquelyReferenced_nonNull_native();
      v109 = v44;
      sub_22C6284D4();
      if (__OFADD__(*(v44 + 16), (v71 & 1) == 0))
      {
        goto LABEL_47;
      }

      v72 = v70;
      v73 = v71;
      sub_22C3A5908(&qword_27D9BC7A8, &qword_22C914298);
      if (sub_22C90B15C())
      {
        sub_22C6284D4();
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_54;
        }

        v72 = v74;
      }

      v44 = v109;
      if (v73)
      {
        sub_22C46BA30(v107, v109[7] + *(v100 + 72) * v72);
        (*v66)(v108, v99);
        sub_22C46B9D0(v106, type metadata accessor for QueryDecorationDynamicEnumerationQuery);
      }

      else
      {
        v109[(v72 >> 6) + 8] |= 1 << v72;
        v76 = v87;
        v77 = v108;
        v78 = v99;
        (*(v87 + 16))(*(v44 + 48) + *(v87 + 72) * v72, v108, v99);
        sub_22C46B96C(v107, *(v44 + 56) + *(v100 + 72) * v72);
        (*(v76 + 8))(v77, v78);
        sub_22C46B9D0(v106, type metadata accessor for QueryDecorationDynamicEnumerationQuery);
        v79 = *(v44 + 16);
        v62 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v62)
        {
          goto LABEL_52;
        }

        *(v44 + 16) = v80;
      }

      if (v64 == ++v65)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
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
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v44 = MEMORY[0x277D84F98];
LABEL_43:

  return v44;
}

uint64_t sub_22C467448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, void, void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v16 = a3;
  v14 = a5;
  v15 = a2;
  v7 = type metadata accessor for RenderableTool();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  v12 = sub_22C9036EC();
  (*(*(v12 - 8) + 16))(v10, a1, v12);
  sub_22C9037DC();
  v17 = MEMORY[0x277D84F90];
  sub_22C46B854(&qword_27D9BB820, MEMORY[0x277D1ED48]);
  sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
  sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0);
  sub_22C90AE4C();
  swift_storeEnumTagMultiPayload();
  sub_22C4B8858(v10, (v15 + 56), v16, *(a4 + 32), v14);
  return sub_22C46B9D0(v10, type metadata accessor for RenderableTool);
}

uint64_t sub_22C46763C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = a2;
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v39 = a1;
  v40 = a2;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  MEMORY[0x2318B7850](v8, v7);
  v11 = v7;
  v12 = v39;
  v13 = v40;
  v38 = v9;
  v36 = v8;
  sub_22C4760BC(&v38, v8, v11, &v39);

  v14 = v39;
  v15 = *(v10 + 16);
  if (v15)
  {
    v29 = v39;
    v30 = v13;
    v32 = a3;
    v33 = a1;
    v31 = v12;
    v38 = MEMORY[0x277D84F90];
    v34 = v11;
    sub_22C3B64F4();
    v16 = v38;
    v17 = (v10 + 48);
    do
    {
      v19 = *(v17 - 2);
      v18 = *(v17 - 1);
      v20 = *v17;
      v21 = v19 == v36 && v18 == v11;
      if (v21 || (v22 = *(v17 - 2), v23 = *(v17 - 1), (sub_22C90B4FC() & 1) != 0))
      {
        v39 = v33;
        v40 = v4;
        swift_retain_n();

        MEMORY[0x2318B7850](v19, v18);
        v11 = v34;
        v19 = v39;
        v35 = v40;
        v24 = v4;
      }

      else
      {
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v35 = v18;
        v24 = v4;
      }

      v37 = v20;

      sub_22C4760BC(&v37, v36, v11, &v39);

      v25 = v39;
      v38 = v16;
      v26 = *(v16 + 16);
      v4 = v24;
      if (v26 >= *(v16 + 24) >> 1)
      {
        sub_22C3B64F4();
        v16 = v38;
      }

      v17 += 3;
      *(v16 + 16) = v26 + 1;
      v27 = (v16 + 24 * v26);
      v11 = v34;
      v27[4] = v19;
      v27[5] = v35;
      v27[6] = v25;
      --v15;
    }

    while (v15);

    v12 = v31;
    a3 = v32;
    v14 = v29;
    v13 = v30;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  *a3 = v12;
  a3[1] = v13;
  a3[2] = v14;
  a3[3] = v16;
  return result;
}

uint64_t sub_22C467948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9063DC();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C9036EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C908EAC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 88))(v12, v8);
  if (v18 == *MEMORY[0x277D1ECE0])
  {
    goto LABEL_2;
  }

  if (v18 == *MEMORY[0x277D1ECE8])
  {
    goto LABEL_4;
  }

  if (v18 == *MEMORY[0x277D1ECD8])
  {
LABEL_2:
    (*(v9 + 96))(v12, v8);
    v19 = *(v14 + 32);
    v19(v17, v12, v13);
    v19(a2, v17, v13);
    v20 = *MEMORY[0x277D1E8E0];
    v21 = sub_22C908ABC();
    (*(*(v21 - 8) + 104))(a2, v20, v21);
    v22 = a2;
    v23 = 0;
    v24 = v21;
    return sub_22C36C640(v22, v23, 1, v24);
  }

  if (v18 == *MEMORY[0x277D1ECD0] || v18 == *MEMORY[0x277D1ECF8])
  {
LABEL_4:
    (*(v9 + 8))(v12, v8);
    v24 = sub_22C908ABC();
    v22 = a2;
    v23 = 1;
    return sub_22C36C640(v22, v23, 1, v24);
  }

  sub_22C903F7C();
  v27 = sub_22C9063CC();
  v28 = sub_22C90AADC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_22C366000, v27, v28, "Encountered unknown tool type whilst building dynamic enumeration map. Skipping.", v29, 2u);
    MEMORY[0x2318B9880](v29, -1, -1);
  }

  (*(v31 + 8))(v7, v32);
  v30 = sub_22C908ABC();
  sub_22C36C640(a2, 1, 1, v30);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22C467D40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C464B8C();
}

uint64_t sub_22C467DE8()
{
  sub_22C369980();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v5 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v0[13] = v5;
  v6 = *(*(v5 - 8) + 64);
  v0[14] = sub_22C3699D4();
  v7 = sub_22C9063DC();
  v0[15] = v7;
  sub_22C3699B8(v7);
  v0[16] = v8;
  v10 = *(v9 + 64);
  v0[17] = sub_22C3699D4();
  v11 = sub_22C90634C();
  v0[18] = v11;
  sub_22C3699B8(v11);
  v0[19] = v12;
  v14 = *(v13 + 64);
  v0[20] = sub_22C36D0D4();
  v0[21] = swift_task_alloc();
  v15 = sub_22C90636C();
  v0[22] = v15;
  sub_22C3699B8(v15);
  v0[23] = v16;
  v18 = *(v17 + 64);
  v0[24] = sub_22C36D0D4();
  v0[25] = swift_task_alloc();
  v19 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

void sub_22C467F74()
{
  v140 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v127 = *(v4 + 8);
  v127(v2, v3);
  v6 = sub_22C90635C();
  sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v7 = v0[21];
    *sub_22C36D240() = 0;
    v8 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v9, v10, v8, "ToolsFromPromptGrammarComponent.generate", "");
    sub_22C3699EC();
  }

  v11 = v0[25];
  v13 = v0[21];
  v12 = v0[22];
  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[18];
  v17 = v0[10];

  (*(v15 + 16))(v14, v13, v16);
  v18 = sub_22C9063AC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v114 = sub_22C36D704();
  (*(v15 + 8))(v13, v16);
  v127(v11, v12);
  v21 = sub_22C45B3E0(*(v17 + 16));
  if (*(v21 + 16))
  {
    v125 = v0;
    *&v137 = MEMORY[0x277D84F90];
    sub_22C38262C();
    v126 = v22;
    sub_22C3B6440();
    v23 = 0;
    v24 = v137;
    v121 = *(v137 + 16);
    v25 = 32 * v121 + 56;
    v112 = v21;
    v26 = (v21 + 56);
    do
    {
      v27 = *(v26 - 2);
      v128 = *(v26 - 3);
      v29 = *(v26 - 1);
      v28 = *v26;
      *&v137 = v24;
      v30 = v121 + v23 + 1;
      v31 = *(v24 + 24);

      if (v121 + v23 >= v31 >> 1)
      {
        sub_22C3B6440();
        v24 = v137;
      }

      ++v23;
      *(v24 + 16) = v30;
      v32 = (v24 + v25);
      *(v32 - 3) = v128;
      *(v32 - 2) = v27;
      v25 += 32;
      v26 += 5;
      *(v32 - 1) = v29;
      *v32 = v28;
    }

    while (v126 != v23);
    *&v131 = MEMORY[0x277D84F90];
    v33 = v121 + v23;
    v122 = v24;
    sub_22C36D6CC();
    sub_22C3B6440();
    v34 = v24;
    v35 = 0;
    v36 = *(v34 + 16);
    v37 = v131;
    v38 = (v34 + 56);
    v118 = v33 - 1;
    do
    {
      if (!v36)
      {
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
        return;
      }

      if (v35 >= *(v34 + 16))
      {
        goto LABEL_49;
      }

      v39 = *(v38 - 2);
      v41 = *(v38 - 1);
      v40 = *v38;
      *&v137 = *(v38 - 3);
      *(&v137 + 1) = v39;
      v138 = v41;
      v139 = v40;
      v125[8] = v35 + 1;

      *&v134 = sub_22C90B47C();
      *(&v134 + 1) = v42;
      MEMORY[0x2318B7850](95, 0xE100000000000000);
      sub_22C46763C(v134, *(&v134 + 1), &v134);

      v43 = v134;
      v45 = v135;
      v44 = v136;
      *&v131 = v37;
      v47 = v37[2];
      v46 = v37[3];
      if (v47 >= v46 >> 1)
      {
        sub_22C369AB0(v46);
        sub_22C379FA0();
        sub_22C3B6440();
        v37 = v131;
      }

      v37[2] = v47 + 1;
      v48 = &v37[4 * v47];
      *(v48 + 2) = v43;
      v48[6] = v45;
      v48[7] = v44;
      v38 += 4;
      --v36;
      v34 = v122;
    }

    while (v118 != v35++);

    v113 = v37;
    v50 = v37[2];
    v51 = v125;
    if (v50)
    {
      v52 = (v125[16] + 8);
      v53 = v37 + 7;
      v116 = v52;
      do
      {
        v54 = v51[17];
        v55 = *(v53 - 3);
        v56 = *(v53 - 2);
        v57 = *(v53 - 1);
        v58 = *v53;

        sub_22C903F7C();

        v59 = sub_22C9063CC();
        v60 = sub_22C90AACC();

        v61 = os_log_type_enabled(v59, v60);
        v129 = v51[17];
        v123 = v51[15];
        if (v61)
        {
          v119 = v50;
          v62 = sub_22C36FB44();
          v63 = swift_slowAlloc();
          *&v134 = v63;
          *v62 = 136315138;
          *&v137 = v55;
          *(&v137 + 1) = v56;
          v138 = v57;
          v139 = v58;
          BNFGrammarRenderer.renderGrammar(grammar:)(&v137);
          v66 = sub_22C36F9F4(v64, v65, &v134);
          v51 = v125;

          *(v62 + 4) = v66;
          _os_log_impl(&dword_22C366000, v59, v60, "Using transcript generated tool grammar: \n%s", v62, 0xCu);
          sub_22C36FF94(v63);
          v52 = v116;
          sub_22C3699EC();
          v50 = v119;
          sub_22C3699EC();
        }

        else
        {
        }

        (*v52)(v129, v123);
        v53 += 4;
        --v50;
      }

      while (v50);
    }

    v67 = v51;
    v68 = v51[12];
    v69 = v67[11];

    sub_22C46BF90(v69, v68, v113, &v134);

    v137 = v134;
    v138 = v135;
    v139 = v136;
    sub_22C474C14(&v131);

    v137 = v131;
    v138 = v132;
    v139 = v133;
    *&v134 = v69;
    *(&v134 + 1) = v68;

    MEMORY[0x2318B7850](95, 0xE100000000000000);
    v70 = *(&v134 + 1);
    v71 = v134;
    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    *(inited + 32) = v69;
    *(inited + 40) = v68;
    sub_22C5EA364();
    sub_22C475C50(v71, v70, v73, &v134);

    v74 = 0;
    v115 = v134;
    v124 = v135;
    v117 = *(&v134 + 1);
    v120 = v136;
    v75 = MEMORY[0x277D84F90];
    v76 = 64;
    while (v126 != v74)
    {
      if (v74 >= *(v112 + 16))
      {
        goto LABEL_50;
      }

      v77 = *(v112 + v76);
      v78 = *(v77 + 16);
      v79 = *(v75 + 16);
      if (__OFADD__(v79, v78))
      {
        goto LABEL_51;
      }

      v80 = *(v112 + v76);

      if (!swift_isUniquelyReferenced_nonNull_native() || v79 + v78 > *(v75 + 24) >> 1)
      {
        sub_22C591324();
        v75 = v81;
      }

      if (*(v77 + 16))
      {
        if ((*(v75 + 24) >> 1) - *(v75 + 16) < v78)
        {
          goto LABEL_53;
        }

        sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
        swift_arrayInitWithCopy();

        if (v78)
        {
          v82 = *(v75 + 16);
          v83 = __OFADD__(v82, v78);
          v84 = v82 + v78;
          if (v83)
          {
            goto LABEL_54;
          }

          *(v75 + 16) = v84;
        }
      }

      else
      {

        if (v78)
        {
          goto LABEL_52;
        }
      }

      v76 += 40;
      ++v74;
    }

    v85 = *(v75 + 16);
    if (v85)
    {
      *&v137 = MEMORY[0x277D84F90];
      sub_22C38262C();
      sub_22C3B5E2C();
      v86 = 0;
      v87 = v137;
      v88 = v125;
      v130 = v85;
      while (v86 < *(v75 + 16))
      {
        v89 = v88[14];
        v90 = *(v75 + 8 * v86 + 32);
        type metadata accessor for PromptTreeIdentifier.Label(0);

        sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
        sub_22C3732E0();
        sub_22C46B854(&qword_27D9BC4A0, v91);
        v92 = sub_22C909F0C();
        sub_22C4A0390();
        v94 = v93;
        v96 = v95;

        *&v137 = v87;
        sub_22C37F0F4();
        if (v98)
        {
          sub_22C374A9C(v97);
          sub_22C379FA0();
          sub_22C3B5E2C();
          v87 = v137;
        }

        ++v86;
        *(v87 + 16) = v92;
        v99 = v87 + 16 * v89;
        *(v99 + 32) = v94;
        *(v99 + 40) = v96;
        v88 = v125;
        if (v130 == v86)
        {

          goto LABEL_44;
        }
      }

      goto LABEL_55;
    }

    v87 = MEMORY[0x277D84F90];
    v88 = v125;
LABEL_44:
    v101 = v88[9];
    v102 = sub_22C3AD928(v87);
    *v101 = v115;
    v101[1] = v117;
    v101[2] = v124;
    v101[3] = v120;
    v101[4] = v102;
  }

  else
  {
    v100 = v0[9];

    *(v100 + 32) = 0;
    *v100 = 0u;
    *(v100 + 16) = 0u;
    v88 = v0;
  }

  sub_22C468A20(v114, "ToolsFromPromptGrammarComponent.generate");

  v104 = v88[24];
  v103 = v88[25];
  v105 = v88;
  v108 = v88 + 20;
  v106 = v88[20];
  v107 = v108[1];
  v109 = v105[17];
  v110 = v105[14];

  sub_22C369C50();

  v111();
}

uint64_t sub_22C468A20(uint64_t a1, const char *a2)
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

    v29 = sub_22C36D240();
    *v29 = 0;
    v30 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v27, v32, v30, a2, v28, v29, 2u);
    sub_22C3699EC();
  }

  (*(v12 + 8))(v17, v35);
  return (*(v21 + 8))(v26, v18);
}

uint64_t sub_22C468CC0()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22C46BC08;

  return sub_22C467DE8();
}

uint64_t sub_22C468D74(uint64_t a1, uint64_t a2)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
  v4 = v2[1];
  *(v3 + 80) = *v2;
  *(v3 + 96) = v4;
  *(v3 + 112) = v2[2];
  return sub_22C36A77C();
}

uint64_t sub_22C468D98()
{
  sub_22C36FB38();
  v1 = v0[17];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *(v3 + 16) = v1;
  v4 = sub_22C36FB5C(&unk_22C925D80);
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_22C468E64;

  return v6(&unk_22C914220, v3, v2);
}

uint64_t sub_22C468E64()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *(v4 + 144);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v10 + 160) = v9;
  *(v10 + 168) = v0;

  if (v0)
  {
    sub_22C369A24();

    return v11();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

void sub_22C468F9C()
{
  v57 = v0;
  v1 = 0;
  v2 = v0[20];
  v3 = MEMORY[0x277D84F90];
  *&v54 = MEMORY[0x277D84F90];
  v4 = v2[2];
  v5 = v2 + 8;
  while (v4 != v1)
  {
    if (v1 >= v2[2])
    {
      __break(1u);
      return;
    }

    ++v1;
    v6 = *v5;
    v5 += 5;

    sub_22C3CCB98(v7);
  }

  v8 = v0[21];
  v9 = v0[17];
  v10 = sub_22C3AD928(v54);
  sub_22C4694F8(v10, *(v9 + 32), &v54);

  if (v8)
  {
    v11 = v0[20];

    sub_22C369A24();
  }

  else
  {
    v13 = v54;
    v50 = v55;
    v51 = *(&v54 + 1);
    v49 = v56;
    v14 = v2[2];
    if (v14)
    {
      v47 = v54;
      v48 = v0;
      *&v54 = v3;
      sub_22C3B6440();
      v15 = v54;
      v16 = *(v54 + 16);
      v17 = 32 * v16 + 56;
      v18 = v2 + 7;
      do
      {
        v19 = *(v18 - 2);
        v52 = *(v18 - 3);
        *&v54 = v15;
        v20 = *(v18 - 1);
        v21 = *v18;
        v22 = *(v15 + 24);

        if (v16 >= v22 >> 1)
        {
          sub_22C3B6440();
          v15 = v54;
        }

        *(v15 + 16) = v16 + 1;
        v23 = (v15 + v17);
        *(v23 - 3) = v52;
        *(v23 - 2) = v19;
        v17 += 32;
        v18 += 5;
        ++v16;
        *(v23 - 1) = v20;
        *v23 = v21;
        --v14;
      }

      while (v14);
      v53 = v15;
      v0 = v48;
      v24 = v48[20];

      v13 = v47;
    }

    else
    {
      v25 = v0[20];

      v53 = MEMORY[0x277D84F90];
    }

    sub_22C3A5908(&qword_27D9BC798, &qword_22C914228);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    *(inited + 32) = v13;
    *(inited + 40) = v51;
    *(inited + 48) = v50;
    *(inited + 56) = v49;
    sub_22C456C94(v13, v51);
    v27 = MEMORY[0x277D84F90];
    v28 = *(inited + 40);
    if (v28)
    {
      v29 = *(inited + 32);
      v30 = *(inited + 48);
      v31 = *(inited + 56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = *(v27 + 16);
        sub_22C591018();
        v27 = v36;
      }

      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_22C369AB0(v32);
        sub_22C591018();
        v27 = v37;
      }

      *(v27 + 16) = v33 + 1;
      v34 = (v27 + 32 * v33);
      v34[4] = v29;
      v34[5] = v28;
      v34[6] = v30;
      v34[7] = v31;
    }

    v38 = v0[16];
    v39 = v0[12];
    v40 = v0[13];
    swift_setDeallocating();
    sub_22C590014();
    *&v54 = v53;
    sub_22C3CCB08(v27);
    v41 = v54;
    v42 = sub_22C3726C4();
    sub_22C46BF90(v42, v43, v41, v44);
    sub_22C456D48(v13, v51);

    v45 = v55;
    v46 = v56;
    *v38 = v54;
    *(v38 + 16) = v45;
    *(v38 + 24) = v46;
    sub_22C369C50();
  }

  v12();
}

uint64_t sub_22C4692E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C46930C, 0, 0);
}

uint64_t sub_22C46930C()
{
  v1 = v0[3];
  v2 = v1[4];
  sub_22C374168(v1, v1[3]);
  sub_22C37012C();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[5] = v6;
  *v6 = v7;
  v6[1] = sub_22C469418;
  v8 = v0[4];
  v9 = v0[2];
  sub_22C46BC34();

  return v10();
}

uint64_t sub_22C469418()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C4694F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_22C9063DC();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C8741B8(a1, v11, v12, v13, v14, v15, v16, v17, v36, v37, v38, v39, &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20)
  {
    v36 = a2;
    v37 = v8;
    v38 = a3;
    v39 = v3;
    *&v42 = MEMORY[0x277D84F90];
    sub_22C3B63F4();
    v21 = v42;
    v22 = (v19 + 40);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      *(v25 + 24) = v24;
      *&v42 = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);

      if (v27 >= v26 >> 1)
      {
        sub_22C3B63F4();
        v21 = v42;
      }

      *(v21 + 16) = v27 + 1;
      *(v21 + 8 * v27 + 32) = v25;
      v22 += 2;
      --v20;
    }

    while (v20);

    a3 = v38;
    v4 = v39;
    v8 = v37;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v28 = v46;
  *&v42 = v46[4];

  sub_22C3CCA78(v21);
  if (*(v42 + 16))
  {
    ResolveToolGrammarGenerator_v4_0.makeGrammar(from:identifier:renderingState:)(v42, *v28, v28[1], &v42);

    if (!v4)
    {
      v30 = v43;
      v31 = v44;
      *a3 = v42;
      *(a3 + 16) = v30;
      *(a3 + 24) = v31;
    }
  }

  else
  {

    v32 = v40;
    sub_22C903F7C();
    v33 = sub_22C9063CC();
    v34 = sub_22C90AADC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_22C366000, v33, v34, "Empty tool name list provided for resolve tool. resolve_tool will be excluded from the grammar.", v35, 2u);
      MEMORY[0x2318B9880](v35, -1, -1);
    }

    result = (*(v41 + 8))(v32, v8);
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22C4697C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C46BC08;

  return sub_22C468D74(a1, a2);
}

uint64_t sub_22C469868()
{
  sub_22C369980();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v0[6] = v5;
  v6 = *(*(v5 - 8) + 64);
  v0[7] = sub_22C3699D4();
  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C469DBC()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22C46BC08;

  return sub_22C469868();
}

uint64_t sub_22C469E70()
{
  sub_22C369980();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_22C9063DC();
  v0[6] = v5;
  sub_22C3699B8(v5);
  v0[7] = v6;
  v8 = *(v7 + 64);
  v0[8] = sub_22C3699D4();
  v9 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C469F18()
{
  v41 = v0;
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[4];
    v40[0] = MEMORY[0x277D84F90];

    sub_22C36D6CC();
    sub_22C3B63F4();
    v4 = v40[0];
    v5 = (v1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v6;
      v40[0] = v4;
      v9 = *(v4 + 16);
      v10 = *(v4 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_22C3B63F4();
        v4 = v40[0];
      }

      *(v4 + 16) = v9 + 1;
      *(v4 + 8 * v9 + 32) = v8 | 0x4000000000000000;
      v5 += 2;
      --v2;
    }

    while (v2);
    v11 = v0[8];
    v12 = v0[4];
    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    v14 = v13 | 0x8000000000000000;
    sub_22C903F7C();

    v15 = MEMORY[0x277D84F90];

    v16 = sub_22C9063CC();
    v17 = sub_22C90AACC();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[7];
    v20 = v0[8];
    v21 = v0[6];
    if (v18)
    {
      v23 = v0[3];
      v22 = v0[4];
      v38 = v0[8];
      v24 = v14;
      v25 = sub_22C36FB44();
      v26 = swift_slowAlloc();
      v39 = v26;
      v40[0] = v23;
      *v25 = 136315138;
      v40[1] = v22;
      v40[2] = v24;
      v40[3] = MEMORY[0x277D84F90];
      BNFGrammarRenderer.renderGrammar(grammar:)(v40);
      v29 = sub_22C36F9F4(v27, v28, &v39);

      *(v25 + 4) = v29;
      sub_22C37B250(&dword_22C366000, v30, v31, "Generated grammar for built in tools: \n%s");
      sub_22C36FF94(v26);
      v15 = MEMORY[0x277D84F90];
      sub_22C3699EC();
      v14 = v24;
      sub_22C3699EC();

      (*(v19 + 8))(v38, v21);
    }

    else
    {

      (*(v19 + 8))(v20, v21);
    }

    v33 = v0[4];
    v34 = v0[2];
    *v34 = v0[3];
    v34[1] = v33;
    v34[2] = v14;
    v34[3] = v15;
  }

  else
  {
    v32 = v0[2];
    *v32 = 0u;
    v32[1] = 0u;
  }

  v35 = v0[8];

  sub_22C369C50();

  return v36();
}

uint64_t sub_22C46A1C4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22C382AF4;

  return sub_22C469E70();
}

_BYTE *sub_22C46A278(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C46A368(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_22C46A3A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 _s16ForcedPromptRateVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22C46A418(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_22C46A458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C46A4A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_22C46A4E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C46A544(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 368))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_22C46A584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C46A63C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C46A654()
{
  sub_22C36FB38();
  v1 = v0[7];
  v2 = *(v0[8] + 64);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = sub_22C36FB5C(&unk_22C925D90);
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_22C46A720;

  return v6(&unk_22C914270, v3, v2);
}

uint64_t sub_22C46A720()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = *(v2 + 80);
  v6 = *v1;
  sub_22C369A30();
  *v7 = v6;
  *(v9 + 88) = v8;

  v10 = *(v2 + 72);

  if (v0)
  {
    v11 = *(v6 + 8);

    return v11();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_22C46A874()
{
  v1 = v0[8];
  v2 = v1[6];
  sub_22C374168(v1 + 2, v1[5]);
  sub_22C37012C();
  v11 = v3 + *v3;
  v5 = *(v4 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[12] = v6;
  *v6 = v7;
  v6[1] = sub_22C46A984;
  v8 = v0[7];
  sub_22C46BC34();

  return v9();
}

uint64_t sub_22C46A984()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (v0)
  {
    v9 = *(v3 + 88);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C46AA88()
{
  v22 = v0;
  v1 = v0[3];
  v2 = v0[11];
  if (v1)
  {
    v3 = v0[8];
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[4];
    *&v19 = v0[2];
    v7 = v19;
    *(&v19 + 1) = v1;
    v20 = v6;
    v21 = v4;
    sub_22C46AD10(&v19, v2, &v16);

    v19 = v16;
    v20 = v17;
    v21 = v18;
    sub_22C474C14(&v13);
    sub_22C456D48(v7, v1);

    v8 = v14;
    v9 = v15;
    *v5 = v13;
    *(v5 + 16) = v8;
    *(v5 + 24) = v9;
    sub_22C369C50();
  }

  else
  {
    v11 = v0[11];

    sub_22C46B7E0();
    sub_22C36FBE4();
    swift_willThrow();
    sub_22C369A24();
  }

  return v10();
}

uint64_t sub_22C46ABBC()
{
  v1 = *(v0 + 104);
  sub_22C369A24();
  return v2();
}

uint64_t sub_22C46ABE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C46AC04, 0, 0);
}

uint64_t sub_22C46AC04()
{
  v1 = v0[3];
  v2 = v1[4];
  sub_22C374168(v1, v1[3]);
  sub_22C37012C();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[5] = v6;
  *v6 = v7;
  v6[1] = sub_22C46BC0C;
  v8 = v0[4];
  v9 = v0[2];
  sub_22C46BC34();

  return v10();
}

uint64_t sub_22C46AD10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = *a1;
  v7 = a1[1];
  v46 = a1[2];
  v47 = a1[3];
  v48 = v3[1];
  v49 = *v3;
  v52 = *v3;
  v53 = v48;

  MEMORY[0x2318B7850](1952670047, 0xE400000000000000);
  sub_22C46BF90(v52, v48, a2, &v52);

  v8 = v52;
  v9 = v53;
  v44 = v54;
  v41 = v55;

  sub_22C46B270(v6, v7, &v52);
  v10 = v52;
  v11 = v53;
  v43 = v54;
  v40 = v55;
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22C90F870;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v9;
  *(v12 + 32) = v13 | 0x4000000000000000;
  v14 = swift_allocObject();
  v45 = v6;
  *(v14 + 16) = v6;
  *(v14 + 24) = v7;
  v42 = v7;
  *(v12 + 40) = v14 | 0x4000000000000000;
  v15 = v4[7];
  if (sub_22C5E9440(0, v15))
  {
    v16 = swift_allocObject();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22C90FB40;
    v18 = swift_allocObject();
    *(v18 + 16) = v10;
    *(v18 + 24) = v11;
    *(v17 + 32) = v18 | 0x4000000000000000;
    v19 = swift_allocObject();
    *(v19 + 16) = 8202;
    *(v19 + 24) = 0xE200000000000000;
    *(v17 + 40) = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = v8;
    *(v20 + 24) = v9;
    *(v17 + 48) = v20 | 0x4000000000000000;
    *(v16 + 16) = v17;
    swift_bridgeObjectRetain_n();

    sub_22C590240();
    v12 = v21;
    *(v21 + 16) = 3;
    *(v21 + 48) = v16 | 0xC000000000000000;
  }

  else
  {
  }

  if (sub_22C5E9440(1u, v15))
  {
    v22 = swift_allocObject();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_22C90FB40;
    v24 = swift_allocObject();
    *(v24 + 16) = v8;
    *(v24 + 24) = v9;
    *(v23 + 32) = v24 | 0x4000000000000000;
    v25 = swift_allocObject();
    *(v25 + 16) = 8202;
    *(v25 + 24) = 0xE200000000000000;
    *(v23 + 40) = v25;
    v26 = swift_allocObject();
    *(v26 + 16) = v10;
    *(v26 + 24) = v11;
    *(v23 + 48) = v26 | 0x4000000000000000;
    *(v22 + 16) = v23;
    v27 = *(v12 + 16);
    v28 = *(v12 + 24);

    if (v27 >= v28 >> 1)
    {
      sub_22C590240();
      v12 = v37;
    }

    *(v12 + 16) = v27 + 1;
    *(v12 + 8 * v27 + 32) = v22 | 0xC000000000000000;
  }

  if (sub_22C5E9440(2u, v15))
  {
    v29 = swift_allocObject();
    *(v29 + 16) = v10;
    *(v29 + 24) = v11;
    v30 = *(v12 + 16);
    v31 = *(v12 + 24);

    if (v30 >= v31 >> 1)
    {
      sub_22C590240();
      v12 = v38;
    }

    *(v12 + 16) = v30 + 1;
    *(v12 + 8 * v30 + 32) = v29 | 0x4000000000000000;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v12;
  v39 = v32 | 0x8000000000000000;
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22C90F800;
  *(v33 + 32) = v10;
  *(v33 + 40) = v11;
  *(v33 + 48) = v43;
  v51 = v33;

  sub_22C3CC3D8(v40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  *(inited + 48) = v44;
  v52 = inited;

  sub_22C3CC3D8(v41);
  sub_22C3CC3D8(v52);
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_22C90F800;
  *(v35 + 32) = v45;
  *(v35 + 40) = v42;
  *(v35 + 48) = v46;
  v52 = v35;

  sub_22C3CC3D8(v47);
  sub_22C3CC3D8(v52);

  *a3 = v49;
  a3[1] = v48;
  a3[2] = v39;
  a3[3] = v51;
  return result;
}

uint64_t sub_22C46B270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x2318B7850]();
  v6 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90F870;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22C90FB40;
  v10 = swift_allocObject();
  *(v10 + 16) = 0x5F746165706572;
  *(v10 + 24) = 0xE700000000000000;
  *(v9 + 32) = v10 | 0x4000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = 8202;
  *(v11 + 24) = 0xE200000000000000;
  *(v9 + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v9 + 48) = v12 | 0x4000000000000000;
  *(v8 + 16) = v9;
  *(v7 + 32) = v8 | 0xC000000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v7 + 40) = v13 | 0x4000000000000000;
  *(v6 + 16) = v7;
  *a3 = 0x5F746165706572;
  a3[1] = 0xE700000000000000;
  v14 = MEMORY[0x277D84F90];
  a3[2] = v6 | 0x8000000000000000;
  a3[3] = v14;
  swift_bridgeObjectRetain_n();
}

uint64_t sub_22C46B428(uint64_t a1)
{
  v2 = sub_22C46BBB4();

  return MEMORY[0x28211F4B8](a1, v2);
}
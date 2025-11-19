uint64_t sub_255C9DF88()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_255C9E128;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_255C9E0C0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_255C9E0C0()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_255C9E128()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255C9E1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a3;
  v4[33] = a4;
  v4[30] = a1;
  v4[31] = a2;
  v5 = type metadata accessor for InlineText();
  v4[34] = v5;
  v6 = *(v5 - 8);
  v4[35] = v6;
  v4[36] = *(v6 + 64);
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC00);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v7 = sub_255D063E8();
  v4[40] = v7;
  v4[41] = *(v7 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6F8);
  v4[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v8 = sub_255D05B78();
  v4[47] = v8;
  v9 = *(v8 - 8);
  v4[48] = v9;
  v4[49] = *(v9 + 64);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE720);
  v4[52] = v10;
  v4[53] = *(v10 - 8);
  v4[54] = swift_task_alloc();
  v4[55] = sub_255D07308();
  v4[56] = sub_255D072F8();
  v12 = sub_255D072E8();
  v4[57] = v12;
  v4[58] = v11;

  return MEMORY[0x2822009F8](sub_255C9E4B0, v12, v11);
}

uint64_t sub_255C9E4B0()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 256);
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v0 + 256) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v56 = *(v0 + 280);
  v66 = *(v0 + 272);
  v55 = (*(v0 + 328) + 8);
  v65 = (v1 + 48);
  v57 = *(v0 + 384);
  v54 = (v1 + 8);
  v69 = *(v0 + 256);

  v15 = 0;
  v67 = v9;
  for (i = v4; v8; v4 = i)
  {
    while (1)
    {
LABEL_10:
      v18 = *(v0 + 352);
      v19 = *(v0 + 264);
      v20 = *(v69 + 48) + 48 * (__clz(__rbit64(v8)) | (v15 << 6));
      v21 = *(v20 + 8);
      v70 = *v20;
      *(v0 + 128) = *(v20 + 16);
      v22 = *(v20 + 32);
      *(v0 + 144) = v22;
      v23 = *(v20 + 16);
      *(v0 + 96) = v22;
      *(v0 + 112) = v23;
      sub_255C7299C(v19 + *(v66 + 24), v18, &qword_27F7DE6F8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_255CA1DEC(*(v0 + 352), *(v0 + 360));

        sub_255CA1898(v0 + 112, v0 + 192);
        sub_255C7299C(v0 + 96, v0 + 208, &qword_27F7DD9F8);
      }

      else
      {
        v24 = *(v0 + 336);
        v25 = *(v0 + 320);

        sub_255CA1898(v0 + 112, v0 + 160);
        sub_255C7299C(v0 + 96, v0 + 176, &qword_27F7DD9F8);
        sub_255D07438();
        v26 = sub_255D066C8();
        sub_255D05D88();

        sub_255D063D8();
        swift_getAtKeyPath();

        (*v55)(v24, v25);
      }

      v8 &= v8 - 1;
      v28 = *(v0 + 368);
      v27 = *(v0 + 376);
      v29 = *(v0 + 360);
      sub_255D05B38();
      sub_255C76B94(v29, &qword_27F7DDCB0);
      if ((*v65)(v28, 1, v27) != 1)
      {
        break;
      }

      v16 = *(v0 + 368);

      sub_255CA18F4(v0 + 112);
      sub_255C76B94(v0 + 96, &qword_27F7DD9F8);
      v10 = sub_255C76B94(v16, &qword_27F7DDCB0);
      v9 = v67;
      v4 = i;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v62 = v21;
    v30 = *(v0 + 400);
    v31 = *(v0 + 408);
    v60 = v30;
    v32 = *(v0 + 312);
    v33 = *(v0 + 296);
    v59 = *(v0 + 376);
    v61 = *(v0 + 288);
    v58 = *(v0 + 264);
    v63 = *(v57 + 32);
    v64 = *(v0 + 304);
    (v63)(v31, *(v0 + 368));
    v34 = sub_255D07338();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v32, 1, 1, v34);
    sub_255C9F7D8(v58, v33);
    (*(v57 + 16))(v30, v31, v59);
    v36 = (*(v56 + 80) + 80) & ~*(v56 + 80);
    v37 = (v61 + *(v57 + 80) + v36) & ~*(v57 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v38 + 32) = v70;
    *(v38 + 40) = v62;
    v39 = *(v0 + 144);
    *(v38 + 48) = *(v0 + 128);
    *(v38 + 64) = v39;
    sub_255C9F840(v33, v38 + v36);
    v63(v38 + v37, v60, v59);
    sub_255C7299C(v32, v64, &qword_27F7DDC00);
    v40 = (*(v35 + 48))(v64, 1, v34);
    v41 = *(v0 + 304);
    if (v40 == 1)
    {
      sub_255C76B94(*(v0 + 304), &qword_27F7DDC00);
    }

    else
    {
      sub_255D07328();
      (*(v35 + 8))(v41, v34);
    }

    if (*(v38 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v42 = sub_255D072E8();
      v44 = v43;
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v45 = **(v0 + 248);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE718);
    v46 = v44 | v42;
    if (v44 | v42)
    {
      v46 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v42;
      *(v0 + 40) = v44;
    }

    v47 = *(v0 + 408);
    v48 = *(v0 + 376);
    v49 = *(v0 + 312);
    *(v0 + 48) = 1;
    *(v0 + 56) = v46;
    *(v0 + 64) = v45;
    swift_task_create();

    sub_255C76B94(v49, &qword_27F7DDC00);
    v10 = (*v54)(v47, v48);
    v9 = v67;
  }

  while (1)
  {
LABEL_6:
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return MEMORY[0x2822004E8](v10, v11, v12, v13, v14);
    }

    if (v17 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v17);
    ++v15;
    if (v8)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  v50 = sub_255CD484C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC48);
  sub_255D07368();
  *(v0 + 472) = v50;
  v51 = sub_255D072F8();
  *(v0 + 480) = v51;
  v52 = swift_task_alloc();
  *(v0 + 488) = v52;
  *v52 = v0;
  v52[1] = sub_255C9EC18;
  v13 = *(v0 + 416);
  v12 = MEMORY[0x277D85700];
  v10 = v0 + 72;
  v14 = v0 + 224;
  v11 = v51;

  return MEMORY[0x2822004E8](v10, v11, v12, v13, v14);
}

uint64_t sub_255C9EC18()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 456);
    v4 = *(v2 + 464);
    v5 = sub_255C9F08C;
  }

  else
  {

    v3 = *(v2 + 456);
    v4 = *(v2 + 464);
    v5 = sub_255C9ED40;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_255C9ED40()
{
  v3 = v0[9];
  v2 = v0[10];
  if (v2)
  {
    v4 = v0[11];
    v5 = v0[59];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[29] = v5;
    v7 = sub_255C7B7C4(v3, v2);
    v9 = *(v5 + 16);
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      v1 = v8;
      if (*(v0[59] + 24) < v12)
      {
        sub_255C7C360(v12, isUniquelyReferenced_nonNull_native);
        v7 = sub_255C7B7C4(v3, v2);
        if ((v1 & 1) != (v13 & 1))
        {

          return sub_255D07708();
        }

LABEL_12:
        if (v1)
        {
LABEL_13:
          v18 = v7;

          v19 = v0[29];
          *(v19[7] + 8 * v18) = v4;

          goto LABEL_18;
        }

LABEL_16:
        v19 = v0[29];
        v19[(v7 >> 6) + 8] |= 1 << v7;
        v21 = (v19[6] + 16 * v7);
        *v21 = v3;
        v21[1] = v2;
        *(v19[7] + 8 * v7) = v4;

        v27 = v19[2];
        v11 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v11)
        {
          __break(1u);
          return MEMORY[0x2822004E8](v22, v23, v24, v25, v26);
        }

        v19[2] = v28;
LABEL_18:
        v0[59] = v19;
        v29 = sub_255D072F8();
        v0[60] = v29;
        v30 = swift_task_alloc();
        v0[61] = v30;
        *v30 = v0;
        v30[1] = sub_255C9EC18;
        v25 = v0[52];
        v24 = MEMORY[0x277D85700];
        v26 = v0 + 28;
        v22 = (v0 + 9);
        v23 = v29;

        return MEMORY[0x2822004E8](v22, v23, v24, v25, v26);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v20 = v7;
    sub_255C7D600();
    v7 = v20;
    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v15 = v0[59];
  v16 = v0[30];
  (*(v0[53] + 8))(v0[54], v0[52]);

  *v16 = v15;

  v17 = v0[1];

  return v17();
}

uint64_t sub_255C9F08C()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];

  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_255C9F1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a1;
  v6[10] = a4;
  return MEMORY[0x2822009F8](sub_255C9F1C4, 0, 0);
}

uint64_t sub_255C9F1C4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  *(v0 + 56) = *v1;
  *v2 = *v1;
  sub_255D07308();

  *(v0 + 104) = sub_255D072F8();
  v4 = sub_255D072E8();

  return MEMORY[0x2822009F8](sub_255C9F274, v4, v3);
}

uint64_t sub_255C9F274()
{

  sub_255CBF178(v0 + 16);

  return MEMORY[0x2822009F8](sub_255C9F2E8, 0, 0);
}

uint64_t sub_255C9F2E8()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v9 = (*(v3 + 8) + **(v3 + 8));
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_255C9F42C;
  v7 = v0[12];

  return v9(v7, v4, v5, v2, v3);
}

uint64_t sub_255C9F42C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_255C9F5C4;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_255C9F554;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_255C9F554()
{
  *(v0[9] + 16) = v0[16];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[1];

  return v1();
}

uint64_t sub_255C9F5C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_255CA18F4(v0 + 56);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255C9F630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  sub_255C9F7D8(v2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_255C9F840(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255C9F8A4;
  *(a2 + 56) = v8;
  v9 = *(v2 + *(v4 + 48));
  sub_255C9F7D8(v2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  sub_255C9F840(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE700) + 36));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE708);

  result = sub_255D07318();
  *(v11 + *(v12 + 40)) = v9;
  *v11 = &unk_255D0CC50;
  v11[1] = v10;
  return result;
}

uint64_t sub_255C9F7D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255C9F840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255C9F8A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for InlineText() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_255C9D378(a1, v6, a2);
}

int *sub_255C9F924(uint64_t a1)
{
  v144 = sub_255D059D8();
  v2 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v138 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for AttributedStringInlineRenderer();
  v4 = MEMORY[0x28223BE20](v143);
  v134 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v141 = &v133 - v6;
  v137 = sub_255D05988();
  v7 = MEMORY[0x28223BE20](v137);
  v133 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v136 = &v133 - v10;
  result = MEMORY[0x28223BE20](v9);
  v142 = &v133 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v140 = (v2 + 16);
    v135 = (v12 + 8);
    for (i = (a1 + 56); ; i += 32)
    {
      v38 = *(i - 3);
      v39 = *(i - 2);
      v40 = *(i - 1);
      v41 = *i;
      if (v41 <= 6)
      {
        break;
      }

      if (v41 == 7)
      {
        result = type metadata accessor for TextInlineRenderer();
        if (*(*(v157 + result[7]) + 16))
        {

          sub_255C7B7C4(v38, v39);
          if (v42)
          {
            v156 = v14;
            v139 = v39;
            v44 = *v157;
            v43 = *(v157 + 8);
            v154 = v38;
            v149 = v43;
            v45 = *(v157 + 16);
            swift_retain_n();
            v46 = sub_255D069B8();
            v48 = v47;
            v155 = v40;
            v50 = v49;
            v152 = sub_255D06938();
            v151 = v51;
            v150 = v52;
            v153 = v53;
            sub_255C7429C(v154, v139, v155, 7u);
            v14 = v156;

            v54 = v157;
            sub_255C8A038(v46, v48, v50 & 1);

            sub_255C8A038(v44, v149, v45);

            v55 = v151;
            *v54 = v152;
            *(v54 + 8) = v55;
            *(v54 + 16) = v150 & 1;
            *(v54 + 24) = v153;
          }

          else
          {
            result = sub_255C7429C(v38, v39, v40, 7u);
          }
        }

        goto LABEL_9;
      }

      if (v41 != 8 || (v39 | v38 | v40) != 0)
      {
        goto LABEL_8;
      }

      result = type metadata accessor for TextInlineRenderer();
      v83 = result[8];
      v84 = result[10];
      if (*(v157 + v83))
      {
        v85 = v157;
        *(v157 + v84) = 1;
        v86 = *v85;
        v154 = *(v85 + 8);
        v155 = v86;
        LODWORD(v153) = *(v85 + 16);
        v87 = result[5];
        v88 = result[6];
        v89 = *(v85 + v83);
        v156 = v14;
        v90 = result[9];
        v91 = v143;
        v92 = v141;
        sub_255C7299C(v85 + v87, &v141[*(v143 + 20)], &qword_27F7DDCB0);
        sub_255CA1EB0(v85 + v88, v92 + v91[6]);
        v93 = v91[8];
        v94 = *v140;
        v95 = v85 + v90;
        v96 = v144;
        (*v140)(v92 + v93, v95, v144);
        sub_255D05978();
        *(v92 + v91[9]) = 0;
        *(v92 + v91[7]) = v89;
        v94(v138, v92 + v93, v96);
        v97 = v136;
        sub_255D05998();
        sub_255D05908();
        (*v135)(v97, v137);
        sub_255CF0FCC(v142);
        sub_255CA1F60(v92, type metadata accessor for AttributedStringInlineRenderer);
        v98 = sub_255D06998();
        v100 = v99;
        LOBYTE(v85) = v101;
        v102 = v154;
        v103 = v155;
        LOBYTE(v96) = v153;
        v104 = sub_255D06938();
        v151 = v105;
        v150 = v106;
        v152 = v107;
        LOBYTE(v106) = v85 & 1;
        v108 = v157;
        sub_255C8A038(v98, v100, v106);

        sub_255C8A038(v103, v102, v96);

        v109 = v151;
        *v108 = v104;
        *(v108 + 8) = v109;
        v110 = v150 & 1;
LABEL_27:
        v14 = v156;
        *(v108 + 16) = v110;
        *(v108 + 24) = v152;
        goto LABEL_9;
      }

      if ((*(v157 + v84) & 1) == 0)
      {
        v111 = v157;
        v112 = *v157;
        v155 = *(v157 + 8);
        LODWORD(v154) = *(v157 + 16);
        v153 = *(v157 + 24);
        v113 = result[6];
        v114 = result[9];
        v115 = v143;
        v116 = v134;
        sub_255C7299C(v157 + result[5], &v134[*(v143 + 20)], &qword_27F7DDCB0);
        sub_255CA1EB0(v111 + v113, v116 + v115[6]);
        v117 = v115[8];
        v156 = v14;
        v118 = *v140;
        v119 = v111 + v114;
        v120 = v144;
        (*v140)(v116 + v117, v119, v144);
        sub_255D05978();
        *(v116 + v115[9]) = 0;
        *(v116 + v115[7]) = 0;
        v118(v138, v116 + v117, v120);
        v121 = v142;
        sub_255D05998();
        sub_255D05908();
        (*v135)(v121, v137);
        sub_255CF0FCC(v133);
        sub_255CA1F60(v116, type metadata accessor for AttributedStringInlineRenderer);
        v122 = sub_255D06998();
        v124 = v123;
        LOBYTE(v111) = v125;
        v126 = v155;
        LOBYTE(v121) = v154;
        v127 = sub_255D06938();
        v151 = v128;
        LOBYTE(v118) = v129;
        v152 = v130;
        v131 = v111 & 1;
        v108 = v157;
        sub_255C8A038(v122, v124, v131);

        sub_255C8A038(v112, v126, v121);

        v132 = v151;
        *v108 = v127;
        *(v108 + 8) = v132;
        v110 = v118 & 1;
        goto LABEL_27;
      }

      *(v157 + v84) = 0;
LABEL_9:
      if (!--v14)
      {
        return result;
      }
    }

    if (!*i)
    {
      v56 = type metadata accessor for TextInlineRenderer();
      v57 = v56[10];
      v58 = *(v157 + v57);
      v155 = v40;
      v156 = v14;
      v139 = v39;
      v154 = v38;
      if (v58)
      {
        *(v157 + v57) = 0;
        v162 = v38;
        v163 = v39;
        v160 = 728980574;
        v161 = 0xE400000000000000;
        v158 = 0;
        v159 = 0xE000000000000000;
        sub_255C74200(v38, v39, v40, 0);
        sub_255C8407C();
        v149 = sub_255D074E8();
      }

      else
      {
        sub_255C74200(v38, v39, v40, 0);

        v149 = v38;
      }

      v59 = v157;
      v60 = *(v157 + 8);
      v152 = *v157;
      v151 = v60;
      v150 = *(v157 + 16);
      v153 = *(v157 + 24);
      v61 = v56[5];
      v62 = v56[6];
      v63 = v56[9];
      v64 = *(v157 + v56[8]);
      v65 = v143;
      v66 = v141;
      sub_255C7299C(v157 + v61, &v141[*(v143 + 20)], &qword_27F7DDCB0);
      sub_255CA1EB0(v59 + v62, v66 + v65[6]);
      v67 = v65[8];
      v68 = *v140;
      v69 = v59 + v63;
      v70 = v144;
      (*v140)(v66 + v67, v69, v144);
      sub_255D05978();
      *(v66 + v65[9]) = 0;
      *(v66 + v65[7]) = v64;
      v68(v138, v66 + v67, v70);

      v71 = v136;
      sub_255D05998();
      sub_255D05908();
      (*v135)(v71, v137);

      sub_255CF0FCC(v142);
      sub_255CA1F60(v66, type metadata accessor for AttributedStringInlineRenderer);
      v72 = sub_255D06998();
      v74 = v73;
      v76 = v75;
      v77 = v152;
      v78 = v151;
      LOBYTE(v66) = v150;
      v148 = sub_255D06938();
      v147 = v79;
      LODWORD(v146) = v80;
      v149 = v81;
      sub_255C8A038(v72, v74, v76 & 1);

      sub_255C8A038(v77, v78, v66);

      result = sub_255C7429C(v154, v139, v155, 0);
      v82 = v147;
      *v59 = v148;
      *(v59 + 8) = v82;
      *(v59 + 16) = v146 & 1;
      *(v59 + 24) = v149;
      v14 = v156;
      goto LABEL_9;
    }

    if (v41 == 2)
    {

      sub_255CDED9C(v38, v39);
      result = sub_255C7429C(v38, v39, v40, 2u);
      goto LABEL_9;
    }

LABEL_8:
    v17 = v157;
    v18 = *(v157 + 8);
    v152 = *v157;
    v151 = v18;
    v150 = *(v157 + 16);
    v153 = i;
    v149 = *(v157 + 24);
    v19 = type metadata accessor for TextInlineRenderer();
    v20 = v19[5];
    v21 = v19[6];
    v22 = v19[8];
    v23 = v19[9];
    v156 = v14;
    v24 = *(v17 + v22);
    v25 = v38;
    v26 = v143;
    v27 = v141;
    sub_255C7299C(v17 + v20, &v141[*(v143 + 20)], &qword_27F7DDCB0);
    sub_255CA1EB0(v17 + v21, v27 + v26[6]);
    (*v140)(v27 + v26[8], v17 + v23, v144);
    v154 = v25;
    v155 = v40;
    sub_255C74200(v25, v39, v40, v41);
    sub_255D05978();
    *(v27 + v26[9]) = 0;
    *(v27 + v26[7]) = v24;
    sub_255C837E0(v25, v39, v40, v41);
    sub_255CF0FCC(v142);
    sub_255CA1F60(v27, type metadata accessor for AttributedStringInlineRenderer);
    v28 = sub_255D06998();
    v30 = v29;
    LOBYTE(v23) = v31;
    v32 = v152;
    v33 = v151;
    v34 = v150;
    v147 = sub_255D06938();
    v146 = v35;
    v145 = v36;
    v148 = v37;
    sub_255C7429C(v154, v39, v155, v41);
    sub_255C8A038(v28, v30, v23 & 1);

    sub_255C8A038(v32, v33, v34);
    i = v153;

    v14 = v156;
    *v157 = v147;
    *(v157 + 8) = v146;
    *(v157 + 16) = v145 & 1;
    *(v157 + 24) = v148;
    goto LABEL_9;
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for InlineText();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  else
  {
  }

  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_255D05B78();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_255D05B78();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  sub_255C74DA4(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v12 = v5 + v1[8];
  if (*(v12 + 440) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + v1[8]);
    __swift_destroy_boxed_opaque_existential_1(v12 + 40);
    __swift_destroy_boxed_opaque_existential_1(v12 + 80);
    __swift_destroy_boxed_opaque_existential_1(v12 + 120);
    __swift_destroy_boxed_opaque_existential_1(v12 + 160);
    __swift_destroy_boxed_opaque_existential_1(v12 + 200);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_255CA0A44()
{
  v2 = *(type metadata accessor for InlineText() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_255C780F8;

  return sub_255C9D7F8(v0 + v3);
}

uint64_t sub_255CA0B10(void *a1, void *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v9 = *v2;
  sub_255D07728();
  sub_255D07058();
  v39 = v6;
  v40 = v5;
  sub_255D07058();
  v38 = v7;
  sub_255D07748();
  if (v7)
  {
    sub_255D07058();
  }

  v10 = sub_255D07768();
  v11 = v9 + 56;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v37 = v8;
    v14 = ~v12;
    v33 = v9;
    v15 = *(v9 + 48);
    do
    {
      v16 = (v15 + 48 * v13);
      v18 = v16[2];
      v17 = v16[3];
      v20 = v16[4];
      v19 = v16[5];
      v21 = *v16 == v4 && v16[1] == v3;
      if (v21 || (sub_255D076D8() & 1) != 0)
      {
        v22 = v18 == v39 && v17 == v40;
        if (v22 || (sub_255D076D8() & 1) != 0)
        {
          if (v19)
          {
            if (v38)
            {
              v23 = v20 == v37 && v19 == v38;
              if (v23 || (sub_255D076D8() & 1) != 0)
              {
LABEL_24:

                v24 = (*(v33 + 48) + 48 * v13);
                v25 = v24[1];
                v26 = v24[2];
                v27 = v24[3];
                v29 = v24[4];
                v28 = v24[5];
                *a1 = *v24;
                a1[1] = v25;
                a1[2] = v26;
                a1[3] = v27;
                a1[4] = v29;
                a1[5] = v28;

                return 0;
              }
            }
          }

          else if (!v38)
          {
            goto LABEL_24;
          }
        }
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v34;

  sub_255CA1068(a2, v13, isUniquelyReferenced_nonNull_native);
  *v34 = v41;
  v32 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v32;
  *(a1 + 2) = *(a2 + 2);
  return 1;
}

uint64_t sub_255CA0D8C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE730);
  result = sub_255D07558();
  v4 = result;
  if (*(v2 + 16))
  {
    v34 = v0;
    v35 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v36 = result;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v37 = (v9 - 1) & v9;
LABEL_15:
      v17 = (*(v2 + 48) + 48 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v23 = v17[4];
      v22 = v17[5];
      sub_255D07728();
      sub_255D07058();
      sub_255D07058();
      sub_255D07748();
      if (v22)
      {
        sub_255D07058();
      }

      result = sub_255D07768();
      v4 = v36;
      v24 = -1 << *(v36 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v36 + 48) + 48 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      v13[3] = v21;
      v13[4] = v23;
      v13[5] = v22;
      ++*(v36 + 16);
      v2 = v35;
      v9 = v37;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v2 + 32);
    if (v31 >= 64)
    {
      v32 = v4;
      bzero(v6, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v4 = v32;
    }

    else
    {
      *v6 = -1 << v31;
    }

    v1 = v34;
    *(v2 + 16) = 0;
  }

  v33 = v4;

  *v1 = v33;
  return result;
}

uint64_t sub_255CA1068(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  v36 = result;
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_32;
  }

  if (a3)
  {
    sub_255CA0D8C();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_255CA12D8();
      goto LABEL_32;
    }

    sub_255CA1460();
  }

  v9 = *v6;
  v10 = v6[1];
  v11 = v6[2];
  v12 = v6[3];
  v13 = v6[4];
  v14 = v6[5];
  v15 = *v4;
  sub_255D07728();
  v16 = v9;
  v17 = v10;
  sub_255D07058();
  v39 = v12;
  v40 = v11;
  sub_255D07058();
  sub_255D07748();
  if (v14)
  {
    sub_255D07058();
  }

  result = sub_255D07768();
  v18 = -1 << *(v15 + 32);
  a2 = result & ~v18;
  v38 = v15 + 56;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v37 = v13;
    v19 = ~v18;
    v20 = *(v15 + 48);
    do
    {
      v21 = (v20 + 48 * a2);
      result = *v21;
      v23 = v21[2];
      v22 = v21[3];
      v25 = v21[4];
      v24 = v21[5];
      v26 = *v21 == v16 && v21[1] == v17;
      if (v26 || (result = sub_255D076D8(), (result & 1) != 0))
      {
        v27 = v23 == v40 && v22 == v39;
        if (v27 || (result = sub_255D076D8(), (result & 1) != 0))
        {
          if (v24)
          {
            if (v14)
            {
              v28 = v25 == v37 && v24 == v14;
              if (v28 || (result = sub_255D076D8(), (result & 1) != 0))
              {
LABEL_31:
                result = sub_255D076F8();
                __break(1u);
                break;
              }
            }
          }

          else if (!v14)
          {
            goto LABEL_31;
          }
        }
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v38 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_32:
  v29 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v30 = (*(v29 + 48) + 48 * a2);
  v31 = v36[1];
  *v30 = *v36;
  v30[1] = v31;
  v30[2] = v36[2];
  v32 = *(v29 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v34;
  }

  return result;
}

void *sub_255CA12D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE730);
  v2 = *v0;
  v3 = sub_255D07548();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v23 = v18[4];
        v22 = v18[5];
        v24 = (*(v4 + 48) + v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v23;
        v24[5] = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_255CA1460()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE730);
  result = sub_255D07558();
  v4 = result;
  if (*(v2 + 16))
  {
    v32 = v0;
    v33 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v34 = result;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v35 = (v9 - 1) & v9;
LABEL_15:
      v17 = (*(v2 + 48) + 48 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v22 = v17[4];
      v23 = v17[5];
      sub_255D07728();

      sub_255D07058();
      sub_255D07058();
      sub_255D07748();
      if (v23)
      {
        sub_255D07058();
      }

      result = sub_255D07768();
      v4 = v34;
      v24 = -1 << *(v34 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v34 + 48) + 48 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      v13[3] = v21;
      v13[4] = v22;
      v13[5] = v23;
      ++*(v34 + 16);
      v2 = v33;
      v9 = v35;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        v31 = v4;

        v1 = v32;
        goto LABEL_28;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v35 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v31 = result;

LABEL_28:
    *v1 = v31;
  }

  return result;
}

uint64_t sub_255CA1728(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_255CA1E5C();
  result = MEMORY[0x259C4B7B0](v2, &type metadata for RawImageData, v3);
  v12 = result;
  if (v2)
  {
    v5 = (a1 + 72);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v10 = *(v5 - 1);
      v9 = *v5;
      v13[0] = *(v5 - 5);
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      v13[4] = v10;
      v13[5] = v9;

      sub_255CA0B10(&v11, v13);

      v5 += 6;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_255CA17E4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_255C79334;

  return sub_255C9E1B4(a1, a2, v7, v6);
}

uint64_t sub_255CA1948()
{
  v1 = type metadata accessor for InlineText();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 80) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  v4 = sub_255D05B78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v15 = *(v5 + 64);
  swift_unknownObjectRelease();

  v7 = v0 + v3;
  if (*(v0 + v3 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  else
  {
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!(*(v5 + 48))(v7 + v8, 1, v4))
    {
      (*(v5 + 8))(v7 + v8, v4);
    }
  }

  else
  {
  }

  v9 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!(*(v5 + 48))(v7 + v9, 1, v4))
    {
      (*(v5 + 8))(v7 + v9, v4);
    }
  }

  else
  {
  }

  sub_255C74DA4(*(v7 + v1[7]), *(v7 + v1[7] + 8));
  v10 = v7 + v1[8];
  if (*(v10 + 440) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + v1[8]);
    __swift_destroy_boxed_opaque_existential_1(v10 + 40);
    __swift_destroy_boxed_opaque_existential_1(v10 + 80);
    __swift_destroy_boxed_opaque_existential_1(v10 + 120);
    __swift_destroy_boxed_opaque_existential_1(v10 + 160);
    __swift_destroy_boxed_opaque_existential_1(v10 + 200);
  }

  v11 = v2 | v6;
  v12 = (v3 + v14 + v6) & ~v6;

  (*(v5 + 8))(v0 + v12, v4);

  return MEMORY[0x2821FE8E8](v0, v12 + v15, v11 | 7);
}

uint64_t sub_255CA1C98(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for InlineText() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_255D05B78() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_255C780F8;

  return sub_255C9F1A0(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9);
}

uint64_t sub_255CA1DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255CA1E5C()
{
  result = qword_27F7DE728;
  if (!qword_27F7DE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE728);
  }

  return result;
}

uint64_t sub_255CA1F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_255CA1FC4()
{
  result = qword_27F7DE738;
  if (!qword_27F7DE738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE700);
    sub_255C810A8(&qword_27F7DE740, &qword_27F7DE748);
    sub_255C810A8(&qword_27F7DE750, &qword_27F7DE708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE738);
  }

  return result;
}

uint64_t View.markdownInlineImageProvider(_:)()
{
  swift_getKeyPath();
  sub_255D06A78();
}

uint64_t sub_255CA2134()
{
  sub_255CA233C();

  return sub_255D063F8();
}

uint64_t sub_255CA21FC(uint64_t a1)
{
  sub_255C98A24(a1, v3);
  sub_255C98A24(v3, &v2);
  sub_255CA233C();
  sub_255D06408();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_255CA2260()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE780);
  sub_255D061D8();
  sub_255CA22D8();
  return swift_getWitnessTable();
}

unint64_t sub_255CA22D8()
{
  result = qword_27F7DE788;
  if (!qword_27F7DE788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE788);
  }

  return result;
}

unint64_t sub_255CA233C()
{
  result = qword_27F7DE790[0];
  if (!qword_27F7DE790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F7DE790);
  }

  return result;
}

uint64_t sub_255CA23C0@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F7DD7F0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_255C98A24(&unk_27F7DE758, v2);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_255CA2450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_255CA2498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_255CA2508@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_255D063E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v13[0] = *v1;
    v13[1] = v7;
  }

  else
  {

    sub_255D07438();
    v10 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74BA0();
    v9 = (*(v4 + 8))(v6, v3);
    v8 = v13[0];
  }

  v11 = v8(v9);

  *a1 = v11;
  return result;
}

uint64_t (*TableBackgroundStyle.init<A>(background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(uint64_t a1)@<X8>))(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a1;
  *(result + 5) = a2;
  *a5 = sub_255CA2824;
  a5[1] = result;
  return result;
}

uint64_t sub_255CA275C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2(v1);
  return sub_255D06028();
}

uint64_t sub_255CA27EC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t (*static TableBackgroundStyle.alternatingRows<A>(_:_:header:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)(uint64_t a1)@<X8>))(uint64_t a1)
{
  v30 = a2;
  v31 = a5;
  v29 = a1;
  v32 = a6;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v28 = &v28 - v11;
  v13 = sub_255D074A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  (*(v14 + 16))(&v28 - v16, a3, v13);
  v18 = *(v8 + 16);
  v18(v12, v29, a4);
  v18(v33, v30, a4);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = *(v8 + 80);
  v21 = (v15 + v20 + v19) & ~v20;
  v22 = (v9 + v20 + v21) & ~v20;
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 16) = a4;
  *(v23 + 24) = v24;
  (*(v14 + 32))(v23 + v19, v17, v13);
  v25 = *(v8 + 32);
  v25(v23 + v21, v28, a4);
  v25(v23 + v22, v33, a4);
  result = swift_allocObject();
  *(result + 2) = a4;
  *(result + 3) = v24;
  *(result + 4) = sub_255CA2E84;
  *(result + 5) = v23;
  v27 = v32;
  *v32 = sub_255CA2824;
  v27[1] = result;
  return result;
}

uint64_t sub_255CA2AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_255D074A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  if (a1 < 1)
  {
    (*(v13 + 16))(v15, a2, v12);
    v18 = *(a5 - 8);
    v19 = *(v18 + 48);
    if (v19(v15, 1, a5) == 1)
    {
      (*(v18 + 16))(a6, a3, a5);
      result = v19(v15, 1, a5);
      if (result != 1)
      {
        return (*(v13 + 8))(v15, v12);
      }
    }

    else
    {
      return (*(v18 + 32))(a6, v15, a5);
    }
  }

  else
  {
    v16 = *(*(a5 - 8) + 16);
    if (a1)
    {
      v17 = a3;
    }

    else
    {
      v17 = a4;
    }

    return v16(a6, v17, a5);
  }

  return result;
}

uint64_t sub_255CA2CF8()
{
  v1 = *(v0 + 16);
  v2 = *(sub_255D074A8() - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 32) & ~v3;
  v6 = *(v1 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = (*(v6 + 48))(v0 + v5, 1, v1);
  v11 = *(v7 + 8);
  if (!v10)
  {
    v11(v0 + v5, v1);
  }

  v12 = (v5 + v4 + v8) & ~v8;
  v13 = (v9 + v8 + v12) & ~v8;
  v11(v0 + v12, v1);
  v11(v0 + v13, v1);

  return MEMORY[0x2821FE8E8](v0, v13 + v9, v3 | v8 | 7);
}

uint64_t sub_255CA2E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(sub_255D074A8() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(*(v5 - 8) + 80);
  v9 = (v7 + *(v6 + 64) + v8) & ~v8;
  v10 = v2 + ((*(*(v5 - 8) + 64) + v8 + v9) & ~v8);

  return sub_255CA2AD0(a1, v2 + v7, v2 + v9, v10, v5, a2);
}

uint64_t sub_255CA2FB4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255CA3010(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255CA3058(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_255CA3104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 40) = 0;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  return result;
}

uint64_t sub_255CA314C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v19[0] = sub_255D059D8();
  v4 = *(v19[0] - 8);
  v5 = MEMORY[0x28223BE20](v19[0]);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  v15 = *(v2 + 48);
  sub_255CA3334(v7);
  v15(v7);
  (*(v4 + 8))(v7, v19[0]);
  v16 = *(a1 + 24);
  sub_255C818BC(v12, v8, v16);
  v17 = *(v9 + 8);
  v17(v12, v8);
  sub_255C818BC(v14, v8, v16);
  return (v17)(v14, v8);
}

uint64_t sub_255CA3334@<X0>(uint64_t a1@<X8>)
{
  sub_255D059C8();
  sub_255CBF318(v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 8))(a1, v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_255CA33C0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v4 = v3;
  v5 = *v2;
  v6 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
  v7 = *(v2 + 1);
  v8 = v2[32];
  if (v8 <= 2)
  {
    if (!v2[32])
    {
      v42 = v5 | (v6 << 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_255D0AA80;
      v43 = sub_255CAA6A8(a1, a2, v42);
      if (!v3)
      {
        *(v10 + 32) = v43;
        *(v10 + 40) = 0;
        result = v10;
        *(v10 + 48) = 0;
        *(v10 + 56) = 0;
        *(v10 + 64) = 0;
        return result;
      }

      goto LABEL_35;
    }

    if (v8 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
      result = swift_allocObject();
      *(result + 16) = xmmword_255D0AA80;
      v59 = *(v7 + 16);
      v60 = MEMORY[0x277D84F90];
      if (v59)
      {
        v76 = v5;
        v61 = result;
        v80[0] = MEMORY[0x277D84F90];
        sub_255C978C8(0, v59, 0);
        v60 = v80[0];
        v62 = (v7 + 32);
        while (1)
        {
          v63 = *v62;

          v64 = sub_255CAA6A8(a1, a2, v63);
          if (v3)
          {
            break;
          }

          v65 = v64;

          v80[0] = v60;
          v67 = *(v60 + 16);
          v66 = *(v60 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_255C978C8((v66 > 1), v67 + 1, 1);
            v60 = v80[0];
          }

          *(v60 + 16) = v67 + 1;
          *(v60 + 8 * v67 + 32) = v65;
          ++v62;
          if (!--v59)
          {
            result = v61;
            LOBYTE(v5) = v76;
            goto LABEL_64;
          }
        }

        *(v61 + 16) = 0;
      }

LABEL_64:
      *(result + 32) = v5 & 1;
      *(result + 40) = v60;
      *(result + 48) = 0;
      *(result + 56) = 0;
      v69 = 1;
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_36;
      }

      v13 = *(v2 + 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
      result = swift_allocObject();
      *(result + 16) = xmmword_255D0AA80;
      v14 = *(v13 + 16);
      v15 = MEMORY[0x277D84F90];
      if (v14)
      {
        v73 = v5;
        v77 = result;
        v80[0] = MEMORY[0x277D84F90];
        sub_255C978C8(0, v14, 0);
        v15 = v80[0];
        v16 = (v13 + 32);
        while (1)
        {
          v17 = *v16;

          v18 = sub_255CAA6A8(a1, a2, v17);
          if (v3)
          {
            goto LABEL_58;
          }

          v19 = v18;

          v80[0] = v15;
          v21 = *(v15 + 16);
          v20 = *(v15 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_255C978C8((v20 > 1), v21 + 1, 1);
            v15 = v80[0];
          }

          *(v15 + 16) = v21 + 1;
          *(v15 + 8 * v21 + 32) = v19;
          ++v16;
          if (!--v14)
          {
            LOBYTE(v5) = v73;
            result = v77;
            break;
          }
        }
      }

      *(result + 32) = v5 & 1;
      *(result + 40) = v7;
      *(result + 48) = v15;
      *(result + 56) = 0;
      v69 = 2;
    }

    goto LABEL_65;
  }

  if (v2[32] <= 6u)
  {
    if (v8 != 3)
    {
      if (v8 == 6)
      {
        v9 = v5 | (v6 << 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_255D0AA80;
        v11 = sub_255CA3B9C(a1, a2, v9);
        if (!v3)
        {
          *(v10 + 32) = v11;
          *(v10 + 40) = 0;
          result = v10;
          *(v10 + 48) = 0;
          *(v10 + 56) = 0;
          *(v10 + 64) = 6;
          return result;
        }

LABEL_35:
        *(v10 + 16) = 0;
      }

LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
      v44 = swift_allocObject();
      v45 = *v2;
      v46 = *(v2 + 1);
      *(v44 + 16) = xmmword_255D0AA80;
      *(v44 + 32) = v45;
      *(v44 + 48) = v46;
      *(v44 + 64) = v2[32];
      sub_255C76B38(v2, v80);
      return v44;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
    result = swift_allocObject();
    *(result + 16) = xmmword_255D0AA80;
    v47 = *(v7 + 16);
    v48 = MEMORY[0x277D84F90];
    if (v47)
    {
      v75 = v5;
      v77 = result;
      v80[0] = MEMORY[0x277D84F90];
      sub_255C977D8(0, v47, 0);
      v48 = v80[0];
      v49 = (v7 + 40);
      while (1)
      {
        v50 = *(v49 - 8);
        v51 = *v49;

        v52 = sub_255CAA6A8(a1, a2, v51);
        if (v3)
        {
          break;
        }

        v53 = v52;

        v80[0] = v48;
        v55 = *(v48 + 16);
        v54 = *(v48 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_255C977D8((v54 > 1), v55 + 1, 1);
          v48 = v80[0];
        }

        *(v48 + 16) = v55 + 1;
        v56 = v48 + 16 * v55;
        *(v56 + 32) = v50;
        *(v56 + 40) = v53;
        v49 += 2;
        if (!--v47)
        {
          LOBYTE(v5) = v75;
          result = v77;
          goto LABEL_62;
        }
      }

LABEL_58:

LABEL_59:

      *(v77 + 16) = 0;
    }

LABEL_62:
    *(result + 32) = v5 & 1;
    *(result + 40) = v48;
    *(result + 48) = 0;
    *(result + 56) = 0;
    v69 = 3;
    goto LABEL_65;
  }

  if (v8 == 7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_255D0AA80;
    v58 = sub_255CA3B9C(a1, a2, v7);
    if (!v3)
    {
      *(v57 + 32) = v5;
      *(v57 + 33) = v6;
      *(v57 + 39) = BYTE6(v6);
      *(v57 + 37) = WORD2(v6);
      *(v57 + 48) = 0;
      *(v57 + 56) = 0;
      *(v57 + 40) = v58;
      result = v57;
      *(v57 + 64) = 7;
      return result;
    }

    *(v57 + 16) = 0;
  }

  if (v8 != 8)
  {
    goto LABEL_36;
  }

  v22 = v5 | (v6 << 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_255D0AA80;
  v24 = *(v7 + 16);
  if (!v24)
  {
    v68 = v23;

    result = v68;
    v27 = MEMORY[0x277D84F90];
LABEL_57:
    *(result + 32) = v22;
    *(result + 40) = v27;
    *(result + 48) = 0;
    *(result + 56) = 0;
    v69 = 8;
LABEL_65:
    *(result + 64) = v69;
    return result;
  }

  v77 = v23;
  v80[0] = MEMORY[0x277D84F90];
  v71 = v5 | (v6 << 8);

  sub_255C97890(0, v24, 0);
  v25 = v24;
  v26 = 0;
  v27 = v80[0];
  v28 = v7 + 32;
  v70 = v7 + 32;
  while (1)
  {
    v29 = *(v28 + 8 * v26);
    v30 = *(v29 + 16);
    if (v30)
    {
      break;
    }

    v32 = MEMORY[0x277D84F90];
LABEL_30:
    v80[0] = v27;
    v39 = *(v27 + 16);
    v38 = *(v27 + 24);
    if (v39 >= v38 >> 1)
    {
      v40 = v26;
      v41 = v28;
      sub_255C97890((v38 > 1), v39 + 1, 1);
      v28 = v41;
      v26 = v40;
      v25 = v24;
      v27 = v80[0];
    }

    ++v26;
    *(v27 + 16) = v39 + 1;
    *(v27 + 8 * v39 + 32) = v32;
    if (v26 == v25)
    {
      result = v77;
      v22 = v71;
      goto LABEL_57;
    }
  }

  v72 = v26;
  v74 = v27;
  v81 = MEMORY[0x277D84F90];

  result = sub_255C97900(0, v30, 0);
  v31 = 0;
  v32 = v81;
  while (v31 < *(v29 + 16))
  {
    v33 = *(v29 + 8 * v31 + 32);

    v34 = sub_255CA3B9C(a1, a2, v33);
    if (v4)
    {

      goto LABEL_59;
    }

    v35 = v34;

    v81 = v32;
    v37 = *(v32 + 16);
    v36 = *(v32 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_255C97900((v36 > 1), v37 + 1, 1);
      v32 = v81;
    }

    ++v31;
    *(v32 + 16) = v37 + 1;
    *(v32 + 8 * v37 + 32) = v35;
    if (v30 == v31)
    {

      v25 = v24;
      v27 = v74;
      v26 = v72;
      v28 = v70;
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

char *sub_255CA3B9C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 56);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v26 = v5;
    v10 = *(v6 - 3);
    v9 = *(v6 - 2);
    v11 = *(v6 - 1);
    v12 = *v6;
    if ((v12 - 3) < 3 || v12 == 7 || (v13 = MEMORY[0x277D84F90], v12 == 6))
    {
    }

    sub_255C74200(v10, v9, v11, v12);
    v14 = sub_255CA3B9C(a1, a2, v13);
    if (v4)
    {

      sub_255C7429C(v10, v9, v11, v12);
      return v7;
    }

    v15 = v14;

    v27 = v11;
    v28 = v7;
    if (v12 <= 4)
    {
      if (v12 == 3 || v12 == 4)
      {
LABEL_17:
        v16 = 0;
        v17 = v15;
        v15 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      if (v12 == 5)
      {
        goto LABEL_17;
      }

      if (v12 == 7 || v12 == 6)
      {
        v16 = v9;

        v17 = v10;
        goto LABEL_19;
      }
    }

    sub_255C74200(v10, v9, v11, v12);
    v17 = v10;
    v15 = v11;
    v16 = v9;
LABEL_19:
    v18 = a1(v17, v16, v15, v12);
    sub_255C7429C(v10, v9, v27, v12);
    result = sub_255C7429C(v17, v16, v15, v12);
    v19 = *(v18 + 16);
    v7 = v28;
    v20 = *(v28 + 2);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v21 <= *(v28 + 3) >> 1)
    {
      if (*(v18 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v22 = v20 + v19;
      }

      else
      {
        v22 = v20;
      }

      result = sub_255C96BE8(result, v22, 1, v28);
      v7 = result;
      if (*(v18 + 16))
      {
LABEL_28:
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v19)
        {
          goto LABEL_37;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v23 = *(v7 + 2);
          v24 = __OFADD__(v23, v19);
          v25 = v23 + v19;
          if (v24)
          {
            goto LABEL_38;
          }

          *(v7 + 2) = v25;
        }

        goto LABEL_4;
      }
    }

    if (v19)
    {
      goto LABEL_36;
    }

LABEL_4:
    v6 += 32;
    v5 = v26 - 1;
    if (v26 == 1)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t static ListContentBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE220);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255D0AA80;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v5 + 32) = v6;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 6;
  *(v4 + 32) = v5;

  return v4;
}

uint64_t static ListContentBuilder.buildExpression(_:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE220);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_255D0AA80;
  *(v2 + 32) = v1;

  return v2;
}

uint64_t sub_255CA3FE0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_255C96CF4(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static ListContentBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t PlainTextCodeSyntaxHighlighter.highlightCode(_:language:)()
{
  sub_255C8407C();

  return sub_255D069A8();
}

uint64_t sub_255CA41BC()
{
  sub_255C8407C();

  return sub_255D069A8();
}

uint64_t sub_255CA4290@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v39 = a5;
  v40 = a3;
  v8 = type metadata accessor for InlineText();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = sub_255D063E8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
  }

  else
  {

    sub_255D07438();
    v19 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255CA4700(a1, 0);
    result = (*(v15 + 8))(v17, v14);
    a1 = v42;
  }

  v20 = v40;
  v21 = v40 - 1;
  if (__OFSUB__(v40, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v21 < *(a1 + 16))
  {
    v22 = *(a1 + 16 * v21 + 32);

    *v13 = swift_getKeyPath();
    v13[40] = 0;
    v23 = v8[5];
    *&v13[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6F8);
    swift_storeEnumTagMultiPayload();
    v24 = v8[6];
    *&v13[v24] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v25 = &v13[v8[7]];
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    v26 = &v13[v8[8]];
    *v26 = swift_getKeyPath();
    v26[440] = 0;
    v27 = &v13[v8[9]];
    swift_bridgeObjectRetain_n();
    v41 = sub_255CD484C(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6E8);
    sub_255D06D98();
    v28 = v43;
    *v27 = v42;
    v27[1] = v28;
    *&v13[v8[10]] = a4;
    sub_255C9F7D8(v13, v11);
    sub_255CA4734();
    v29 = sub_255D06E78();
    sub_255CA478C(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_255D0AA80;
    *(v30 + 32) = v20;
    *(v30 + 40) = a4;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 7;
    v42 = v29;
    v43 = v30;
    v31 = v22(&v42);

    v42 = sub_255CB2770(a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA00);
    sub_255C810A8(&qword_27F7DDA08, &qword_27F7DDA00);
    v32 = sub_255D07068();
    v34 = v33;

    v35 = sub_255C8A5A0(v32, v34);
    v37 = v36;

    v38 = v39;
    *v39 = v31;
    v38[1] = v35;
    v38[2] = v37;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_255CA4700(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_255CA4734()
{
  result = qword_27F7DE818;
  if (!qword_27F7DE818)
  {
    type metadata accessor for InlineText();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE818);
  }

  return result;
}

uint64_t sub_255CA478C(uint64_t a1)
{
  v2 = type metadata accessor for InlineText();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FontWidth.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_255D067D8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t FontWidth._collectAttributes(in:)()
{
  v1 = v0;
  v2 = sub_255D067D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-v7 - 8];
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v9 = sub_255C739EC(v18);
  v11 = v10;
  v12 = type metadata accessor for FontProperties(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = v1;
    v14 = *(v3 + 16);
    v14(v8, v13, v2);
    v14(v6, v8, v2);
    sub_255CA4AE4();
    sub_255D07538();
    (*(v3 + 8))(v8, v2);
    sub_255CA4B3C(v17, v11 + *(v12 + 40));
  }

  (v9)(v18, 0);
}

unint64_t sub_255CA4AE4()
{
  result = qword_27F7DE830;
  if (!qword_27F7DE830)
  {
    sub_255D067D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE830);
  }

  return result;
}

uint64_t sub_255CA4B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE838);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CA4BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_255D067D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255CA4C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_255D067D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FontWidth()
{
  result = qword_27F7DE840;
  if (!qword_27F7DE840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255CA4D00()
{
  result = sub_255D067D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t StrikethroughStyle._collectAttributes(in:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8E0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_255CA4E18(v0, &v4 - v2);
  sub_255CA4E88();
  return sub_255D059F8();
}

uint64_t sub_255CA4E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255CA4E88()
{
  result = qword_27F7DE850;
  if (!qword_27F7DE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE850);
  }

  return result;
}

uint64_t sub_255CA4EDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8E0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_255CA4E18(v0, &v4 - v2);
  sub_255CA4E88();
  return sub_255D059F8();
}

uint64_t sub_255CA4F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255CA5020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for StrikethroughStyle()
{
  result = qword_27F7DE858;
  if (!qword_27F7DE858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextTracking.init(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

unint64_t sub_255CA5150()
{
  result = qword_27F7DE868;
  if (!qword_27F7DE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE868);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextTracking(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextTracking(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_255CA5288(uint64_t a1, uint64_t (*a2)(void *, void, void))
{
  cmark_gfm_core_extensions_ensure_registered();
  result = cmark_node_new(0x8001u);
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = *(a1 + 16);
    v8 = a1 + 32;
    v9 = MEMORY[0x277D84F90];
LABEL_3:
    v10 = v8 + 40 * v6;
    while (v7 != v6)
    {
      if (v6 >= v7)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v11 = *(v10 + 16);
      v21[0] = *v10;
      v21[1] = v11;
      v22 = *(v10 + 32);
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_21;
      }

      sub_255C76B38(v21, v20);
      v13 = sub_255CA7E80(v21);
      result = sub_255C76BF4(v21);
      ++v6;
      v10 += 40;
      if (v13)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_255C96874(0, *(v9 + 16) + 1, 1, v9);
          v9 = result;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_255C96874((v14 > 1), v15 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 16) = v15 + 1;
        *(v9 + 8 * v15 + 32) = v13;
        v6 = v12;
        goto LABEL_3;
      }
    }

    v16 = *(v9 + 16);
    if (v16)
    {
      v17 = (v9 + 32);
      do
      {
        v18 = *v17++;
        cmark_node_append_child(v5, v18);
        --v16;
      }

      while (v16);
    }

    result = a2(v5, 0, 0);
    if (result)
    {
      v19 = sub_255D071B8();
      cmark_node_free(v5);
      return v19;
    }

LABEL_22:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_255CA543C(uint64_t a1)
{
  cmark_gfm_core_extensions_ensure_registered();
  result = cmark_node_new(0x8001u);
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = a1 + 32;
    v7 = MEMORY[0x277D84F90];
LABEL_3:
    v8 = v6 + 40 * v4;
    while (v5 != v4)
    {
      if (v4 >= v5)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(v8 + 16);
      v19[0] = *v8;
      v19[1] = v9;
      v20 = *(v8 + 32);
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_21;
      }

      sub_255C76B38(v19, v18);
      v11 = sub_255CA7E80(v19);
      result = sub_255C76BF4(v19);
      ++v4;
      v8 += 40;
      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_255C96874(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
        }

        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_255C96874((v12 > 1), v13 + 1, 1, v7);
          v7 = result;
        }

        *(v7 + 16) = v13 + 1;
        *(v7 + 8 * v13 + 32) = v11;
        v4 = v10;
        goto LABEL_3;
      }
    }

    v14 = *(v7 + 16);
    if (v14)
    {
      v15 = (v7 + 32);
      do
      {
        v16 = *v15++;
        cmark_node_append_child(v3, v16);
        --v14;
      }

      while (v14);
    }

    result = cmark_render_html(v3, 0, 0);
    if (result)
    {
      v17 = sub_255D071B8();
      cmark_node_free(v3);
      return v17;
    }

LABEL_22:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_255CA55E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = cmark_node_first_child(a1);
  v4 = result;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = v4;
  while (v6)
  {
    v4 = cmark_node_next(v6);
    result = sub_255CA56F8(v6, v13);
    v7 = v14;
    v6 = v4;
    if (v14 != 255)
    {
      v11 = v13[1];
      v12 = v13[0];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_255C96758(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        result = sub_255C96758((v8 > 1), v9 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 40 * v9;
      *(v10 + 32) = v12;
      *(v10 + 48) = v11;
      *(v10 + 64) = v7;
      goto LABEL_2;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255CA56F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255CA7584(a1);
  if (result > 6u)
  {
    if (result <= 8u)
    {
      if (result == 7)
      {
        child = cmark_node_first_child(a1);
        v28 = MEMORY[0x277D84F90];
        while (1)
        {
          v159 = child;
          do
          {
            if (!v159)
            {
              v7 = 0;
              v30 = 0;
              v31 = 0;
              result = 6;
              goto LABEL_244;
            }

            child = cmark_node_next(v159);
            v160 = sub_255CA7694(v159);
            v159 = child;
          }

          while (v163 == -1);
          v164 = a2;
          v165 = v163;
          v166 = v162;
          v167 = v161;
          v168 = v160;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_255C96BE8(0, *(v28 + 16) + 1, 1, v28);
          }

          v170 = *(v28 + 16);
          v169 = *(v28 + 24);
          if (v170 >= v169 >> 1)
          {
            v176 = sub_255C96BE8((v169 > 1), v170 + 1, 1, v28);
            v174 = v165;
            v173 = v166;
            v172 = v167;
            v28 = v176;
            v171 = v168;
          }

          else
          {
            v171 = v168;
            v172 = v167;
            v173 = v166;
            v174 = v165;
          }

          a2 = v164;
          *(v28 + 16) = v170 + 1;
          v175 = v28 + 32 * v170;
          *(v175 + 32) = v171;
          *(v175 + 40) = v172;
          *(v175 + 48) = v173;
          *(v175 + 56) = v174;
        }
      }

      if (result == 8)
      {
        heading_level = cmark_node_get_heading_level(a1);
        v9 = cmark_node_first_child(a1);
        v7 = MEMORY[0x277D84F90];
        while (1)
        {
          v10 = v9;
          do
          {
            if (!v10)
            {
              v30 = 0;
              v31 = 0;
              v28 = heading_level;
              result = 7;
              goto LABEL_244;
            }

            v9 = cmark_node_next(v10);
            v11 = sub_255CA7694(v10);
            v10 = v9;
          }

          while (v14 == -1);
          v258 = heading_level;
          v15 = a2;
          v16 = v14;
          v17 = v13;
          v18 = v12;
          v19 = v11;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_255C96BE8(0, *(v7 + 16) + 1, 1, v7);
          }

          v21 = *(v7 + 16);
          v20 = *(v7 + 24);
          if (v21 >= v20 >> 1)
          {
            v27 = sub_255C96BE8((v20 > 1), v21 + 1, 1, v7);
            v25 = v16;
            v24 = v17;
            v23 = v18;
            v7 = v27;
            v22 = v19;
          }

          else
          {
            v22 = v19;
            v23 = v18;
            v24 = v17;
            v25 = v16;
          }

          a2 = v15;
          heading_level = v258;
          *(v7 + 16) = v21 + 1;
          v26 = v7 + 32 * v21;
          *(v26 + 32) = v22;
          *(v26 + 40) = v23;
          *(v26 + 48) = v24;
          *(v26 + 56) = v25;
        }
      }

      goto LABEL_162;
    }

    if (result == 9)
    {
      v28 = 0;
      v7 = 0;
      v30 = 0;
      v31 = 0;
      goto LABEL_244;
    }

    if (result != 24)
    {
LABEL_162:
      v28 = 0;
      v7 = 0;
      v30 = 0;
      v31 = 0;
      result = 255;
      goto LABEL_244;
    }

    v242 = a2;
    v240 = sub_255CA7D38(a1);
    v7 = cmark_node_first_child(a1);
    v265 = MEMORY[0x277D84F90];
    sub_255C97890(0, 0, 0);
    v32 = v265;
    if (!v7)
    {
LABEL_163:
      v7 = v32;
      v30 = 0;
      v31 = 0;
      result = 8;
      v28 = v240;
      a2 = v242;
      goto LABEL_244;
    }

LABEL_26:
    v243 = cmark_node_next(v7);
    v33 = sub_255CA7584(v7);
    v244 = v32;
    if (sub_255CA9948(v33) == 0x6F725F656C626174 && v34 == 0xE900000000000077)
    {
      goto LABEL_28;
    }

    v2 = v34;
    v35 = sub_255D076D8();

    if ((v35 & 1) == 0)
    {
      v36 = sub_255CA7584(v7);
      if (sub_255CA9948(v36) == 0x65685F656C626174 && v37 == 0xEC00000072656461)
      {
LABEL_28:

        goto LABEL_33;
      }

      v2 = v37;
      v38 = sub_255D076D8();

      if ((v38 & 1) == 0)
      {
        *&v270 = 0;
        *(&v270 + 1) = 0xE000000000000000;
        sub_255D075A8();
        MEMORY[0x259C4B5D0](0xD000000000000020, 0x8000000255D18770);
        sub_255CA7584(v7);
        sub_255D07618();
        MEMORY[0x259C4B5D0](0x616574736E692027, 0xEA00000000002E64);
        goto LABEL_248;
      }
    }

LABEL_33:
    v7 = cmark_node_first_child(v7);
    v266 = MEMORY[0x277D84F90];
    sub_255C97900(0, 0, 0);
    v39 = v266;
    if (!v7)
    {
      goto LABEL_133;
    }

    while (1)
    {
      v248 = v39;
      v246 = cmark_node_next(v7);
      v40 = sub_255CA7584(v7);
      if (sub_255CA9948(v40) == 0x65635F656C626174 && v41 == 0xEA00000000006C6CLL)
      {
      }

      else
      {
        v2 = v41;
        v42 = sub_255D076D8();

        if ((v42 & 1) == 0)
        {
          goto LABEL_251;
        }
      }

      v43 = cmark_node_first_child(v7);
      v44 = MEMORY[0x277D84F90];
      while (v43)
      {
        v7 = v43;
        v43 = cmark_node_next(v43);
        if (!cmark_node_get_type_string(v7))
        {
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          sub_255D075A8();

          *&v270 = 0xD000000000000013;
          *(&v270 + 1) = 0x8000000255D187D0;
          MEMORY[0x259C4B5D0](v3, v2);
          MEMORY[0x259C4B5D0](0x2E646E756F662027, 0xE800000000000000);
          while (1)
          {
LABEL_248:
            sub_255D07628();
            __break(1u);
LABEL_249:
            __break(1u);
LABEL_250:
            __break(1u);
LABEL_251:
            *&v270 = 0;
            *(&v270 + 1) = 0xE000000000000000;
            sub_255D075A8();
            MEMORY[0x259C4B5D0](0xD000000000000021, 0x8000000255D187A0);
            sub_255CA7584(v7);
            sub_255D07618();
            MEMORY[0x259C4B5D0](0x616574736E692027, 0xEA00000000002E64);
          }
        }

        v3 = sub_255D071B8();
        v2 = v45;

        v46 = sub_255CAA410();
        if (v46 == 29)
        {
          goto LABEL_247;
        }

        if (v46 > 15)
        {
          if (v46 <= 17)
          {
            if (v46 != 16)
            {
              v71 = cmark_node_first_child(v7);
              v47 = MEMORY[0x277D84F90];
              while (1)
              {
                v72 = v71;
                do
                {
                  if (!v72)
                  {
                    v49 = 0;
                    v50 = 0;
                    v3 = 4;
                    goto LABEL_125;
                  }

                  v71 = cmark_node_next(v72);
                  v73 = sub_255CA7694(v72);
                  v72 = v71;
                }

                while (v76 == -1);
                v77 = v76;
                v78 = v75;
                v79 = v74;
                v80 = v73;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v47 = sub_255C96BE8(0, *(v47 + 16) + 1, 1, v47);
                }

                v81 = v47;
                v82 = *(v47 + 16);
                v83 = v81;
                v84 = *(v81 + 24);
                if (v82 >= v84 >> 1)
                {
                  v90 = sub_255C96BE8((v84 > 1), v82 + 1, 1, v81);
                  v88 = v77;
                  v87 = v78;
                  v86 = v79;
                  v83 = v90;
                  v85 = v80;
                }

                else
                {
                  v85 = v80;
                  v86 = v79;
                  v87 = v78;
                  v88 = v77;
                }

                *(v83 + 2) = v82 + 1;
                v89 = &v83[32 * v82];
                v47 = v83;
                *(v89 + 4) = v85;
                *(v89 + 5) = v86;
                *(v89 + 6) = v87;
                v89[56] = v88;
              }
            }

            v93 = cmark_node_first_child(v7);
            v47 = MEMORY[0x277D84F90];
            while (1)
            {
              v94 = v93;
              do
              {
                if (!v94)
                {
                  v49 = 0;
                  v50 = 0;
                  v3 = 3;
                  goto LABEL_125;
                }

                v93 = cmark_node_next(v94);
                v95 = sub_255CA7694(v94);
                v94 = v93;
              }

              while (v98 == -1);
              v99 = v98;
              v100 = v97;
              v101 = v96;
              v102 = v95;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v47 = sub_255C96BE8(0, *(v47 + 16) + 1, 1, v47);
              }

              v103 = v47;
              v104 = *(v47 + 16);
              v105 = v103;
              v106 = *(v103 + 24);
              if (v104 >= v106 >> 1)
              {
                v112 = sub_255C96BE8((v106 > 1), v104 + 1, 1, v103);
                v110 = v99;
                v109 = v100;
                v108 = v101;
                v105 = v112;
                v107 = v102;
              }

              else
              {
                v107 = v102;
                v108 = v101;
                v109 = v100;
                v110 = v99;
              }

              *(v105 + 2) = v104 + 1;
              v111 = &v105[32 * v104];
              v47 = v105;
              *(v111 + 4) = v107;
              *(v111 + 5) = v108;
              *(v111 + 6) = v109;
              v111[56] = v110;
            }
          }

          switch(v46)
          {
            case 18:
              if (cmark_node_get_url(v7))
              {
                v47 = sub_255D071B8();
                v49 = v91;
              }

              else
              {
                v47 = 0;
                v49 = 0xE000000000000000;
              }

              v115 = cmark_node_first_child(v7);
              v50 = MEMORY[0x277D84F90];
              while (1)
              {
                v116 = v115;
                do
                {
                  if (!v116)
                  {
                    v3 = 6;
                    goto LABEL_125;
                  }

                  v115 = cmark_node_next(v116);
                  v117 = sub_255CA7694(v116);
                  v116 = v115;
                }

                while (v120 == -1);
                v253 = v49;
                v260 = v47;
                v121 = v120;
                v122 = v119;
                v123 = v118;
                v245 = v117;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v50 = sub_255C96BE8(0, *(v50 + 2) + 1, 1, v50);
                }

                v125 = *(v50 + 2);
                v124 = *(v50 + 3);
                v126 = v245;
                if (v125 >= v124 >> 1)
                {
                  v131 = sub_255C96BE8((v124 > 1), v125 + 1, 1, v50);
                  v129 = v121;
                  v128 = v122;
                  v127 = v123;
                  v50 = v131;
                  v126 = v245;
                }

                else
                {
                  v127 = v123;
                  v128 = v122;
                  v129 = v121;
                }

                v47 = v260;
                v49 = v253;
                *(v50 + 2) = v125 + 1;
                v130 = &v50[32 * v125];
                *(v130 + 4) = v126;
                *(v130 + 5) = v127;
                *(v130 + 6) = v128;
                v130[56] = v129;
              }

            case 19:
              if (cmark_node_get_url(v7))
              {
                v259 = sub_255D071B8();
                v252 = v114;
              }

              else
              {
                v259 = 0;
                v252 = 0xE000000000000000;
              }

              v132 = cmark_node_first_child(v7);
              v50 = MEMORY[0x277D84F90];
              while (1)
              {
                v133 = v132;
                do
                {
                  if (!v133)
                  {
                    v3 = 7;
                    v47 = v259;
                    v49 = v252;
                    goto LABEL_125;
                  }

                  v132 = cmark_node_next(v133);
                  v134 = sub_255CA7694(v133);
                  v133 = v132;
                }

                while (v137 == -1);
                v138 = v134;
                v139 = v135;
                v140 = v136;
                v141 = v137;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v50 = sub_255C96BE8(0, *(v50 + 2) + 1, 1, v50);
                }

                v143 = *(v50 + 2);
                v142 = *(v50 + 3);
                v144 = v143 + 1;
                if (v143 >= v142 >> 1)
                {
                  v146 = sub_255C96BE8((v142 > 1), v143 + 1, 1, v50);
                  v144 = v143 + 1;
                  v50 = v146;
                }

                *(v50 + 2) = v144;
                v145 = &v50[32 * v143];
                *(v145 + 4) = v138;
                *(v145 + 5) = v139;
                *(v145 + 6) = v140;
                v145[56] = v141;
              }

            case 23:
              v51 = cmark_node_first_child(v7);
              v47 = MEMORY[0x277D84F90];
              while (1)
              {
                v52 = v51;
                do
                {
                  if (!v52)
                  {
                    v49 = 0;
                    v50 = 0;
                    v3 = 5;
                    goto LABEL_125;
                  }

                  v51 = cmark_node_next(v52);
                  v53 = sub_255CA7694(v52);
                  v52 = v51;
                }

                while (v56 == -1);
                v57 = v56;
                v58 = v55;
                v59 = v54;
                v60 = v53;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v47 = sub_255C96BE8(0, *(v47 + 16) + 1, 1, v47);
                }

                v61 = v47;
                v62 = *(v47 + 16);
                v63 = v61;
                v64 = *(v61 + 24);
                if (v62 >= v64 >> 1)
                {
                  v70 = sub_255C96BE8((v64 > 1), v62 + 1, 1, v61);
                  v68 = v57;
                  v67 = v58;
                  v66 = v59;
                  v63 = v70;
                  v65 = v60;
                }

                else
                {
                  v65 = v60;
                  v66 = v59;
                  v67 = v58;
                  v68 = v57;
                }

                *(v63 + 2) = v62 + 1;
                v69 = &v63[32 * v62];
                v47 = v63;
                *(v69 + 4) = v65;
                *(v69 + 5) = v66;
                *(v69 + 6) = v67;
                v69[56] = v68;
              }
          }
        }

        else if (v46 <= 11)
        {
          if (v46 == 10)
          {
            if (cmark_node_get_literal(v7))
            {
              v47 = sub_255D071B8();
              v49 = v92;
              v50 = 0;
              v3 = 0;
            }

            else
            {
              v47 = 0;
              v50 = 0;
              v3 = 0;
              v49 = 0xE000000000000000;
            }

LABEL_125:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_255C96BE8(0, *(v44 + 2) + 1, 1, v44);
            }

            v148 = *(v44 + 2);
            v147 = *(v44 + 3);
            v2 = v148 + 1;
            if (v148 >= v147 >> 1)
            {
              v44 = sub_255C96BE8((v147 > 1), v148 + 1, 1, v44);
            }

            *(v44 + 2) = v2;
            v149 = &v44[32 * v148];
            *(v149 + 4) = v47;
            *(v149 + 5) = v49;
            *(v149 + 6) = v50;
            v149[56] = v3;
          }

          else if (v46 == 11)
          {
            v47 = 0;
            v49 = 0;
            v50 = 0;
            v3 = 8;
            goto LABEL_125;
          }
        }

        else
        {
          switch(v46)
          {
            case 12:
              v49 = 0;
              v50 = 0;
              v3 = 8;
              v47 = 1;
              goto LABEL_125;
            case 13:
              if (cmark_node_get_literal(v7))
              {
                v47 = sub_255D071B8();
                v49 = v113;
                v50 = 0;
                v3 = 1;
              }

              else
              {
                v47 = 0;
                v50 = 0;
                v3 = 1;
                v49 = 0xE000000000000000;
              }

              goto LABEL_125;
            case 14:
              if (cmark_node_get_literal(v7))
              {
                v47 = sub_255D071B8();
                v49 = v48;
                v50 = 0;
                v3 = 2;
              }

              else
              {
                v47 = 0;
                v50 = 0;
                v3 = 2;
                v49 = 0xE000000000000000;
              }

              goto LABEL_125;
          }
        }
      }

      v39 = v248;
      v3 = *(v248 + 16);
      v150 = *(v248 + 24);
      v2 = v3 + 1;
      if (v3 >= v150 >> 1)
      {
        sub_255C97900((v150 > 1), v3 + 1, 1);
        v39 = v248;
      }

      *(v39 + 16) = v2;
      *(v39 + 8 * v3 + 32) = v44;
      v7 = v246;
      if (!v246)
      {
LABEL_133:
        v151 = v39;
        v32 = v244;
        v3 = *(v244 + 16);
        v152 = *(v244 + 24);
        v2 = v3 + 1;
        if (v3 >= v152 >> 1)
        {
          sub_255C97890((v152 > 1), v3 + 1, 1);
          v32 = v244;
        }

        *(v32 + 16) = v2;
        *(v32 + 8 * v3 + 32) = v151;
        v7 = v243;
        if (!v243)
        {
          goto LABEL_163;
        }

        goto LABEL_26;
      }
    }
  }

  if (result > 3u)
  {
    if (result == 4)
    {
      if (cmark_node_get_fence_info(a1))
      {
        v28 = sub_255D071B8();
        v7 = v177;
      }

      else
      {
        v28 = 0;
        v7 = 0;
      }

      if (cmark_node_get_literal(a1))
      {
        v30 = sub_255D071B8();
        result = 4;
      }

      else
      {
        v30 = 0;
        result = 4;
        v31 = 0xE000000000000000;
      }

      goto LABEL_244;
    }

    if (result == 5)
    {
      if (cmark_node_get_literal(a1))
      {
        v28 = sub_255D071B8();
        v7 = v29;
        v30 = 0;
        v31 = 0;
        result = 5;
      }

      else
      {
        v28 = 0;
        v30 = 0;
        v31 = 0;
        result = 5;
        v7 = 0xE000000000000000;
      }

      goto LABEL_244;
    }

    goto LABEL_162;
  }

  if (result == 1)
  {
    v153 = cmark_node_first_child(a1);
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      v30 = v153;
      do
      {
        if (!v30)
        {
          v7 = 0;
          v31 = 0;
          result = 0;
          goto LABEL_244;
        }

        v153 = cmark_node_next(v30);
        sub_255CA56F8(&v270, v30);
        v154 = v272;
        v30 = v153;
      }

      while (v272 == 255);
      v254 = v271;
      v261 = v270;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_255C96758(0, *(v28 + 16) + 1, 1, v28);
      }

      v156 = *(v28 + 16);
      v155 = *(v28 + 24);
      if (v156 >= v155 >> 1)
      {
        v28 = sub_255C96758((v155 > 1), v156 + 1, 1, v28);
      }

      *(v28 + 16) = v156 + 1;
      v157 = v28 + 40 * v156;
      *(v157 + 32) = v261;
      *(v157 + 48) = v254;
      *(v157 + 64) = v154;
    }
  }

  if (result != 2)
  {
    goto LABEL_162;
  }

  v241 = a2;
  v7 = 0x7473696C6B736174;
  v3 = cmark_node_first_child(a1);
  while (2)
  {
    if (!v3)
    {
      list_type = cmark_node_get_list_type(a1);
      if (list_type == 2)
      {
        list_tight = cmark_node_get_list_tight(a1);
        list_start = cmark_node_get_list_start(a1);
        v183 = cmark_node_first_child(a1);
        v267 = MEMORY[0x277D84F90];
        sub_255C978C8(0, 0, 0);
        v30 = v267;
        v247 = list_start;
        if (!v183)
        {
LABEL_218:
          v31 = 0;
          v28 = list_tight != 0;
          v7 = v247;
          result = 2;
          goto LABEL_243;
        }

        v184 = MEMORY[0x277D84F90];
        v7 = 40;
LABEL_172:
        v185 = cmark_node_next(v183);
        if (!cmark_node_get_type_string(v183))
        {
          goto LABEL_249;
        }

        v186 = sub_255D071B8();
        v188 = v187;

        v189 = sub_255CAA410();
        if (v189 != 29)
        {
          v190 = v189;

          if (sub_255CA9948(v190) == 1835365481 && v191 == 0xE400000000000000)
          {

LABEL_178:
            v193 = cmark_node_first_child(v183);
            v194 = v184;
            while (1)
            {
              v195 = v193;
              do
              {
                if (!v195)
                {
                  v201 = *(v267 + 16);
                  v200 = *(v267 + 24);
                  if (v201 >= v200 >> 1)
                  {
                    sub_255C978C8((v200 > 1), v201 + 1, 1);
                  }

                  *(v267 + 16) = v201 + 1;
                  *(v267 + 8 * v201 + 32) = v194;
                  v183 = v185;
                  if (!v185)
                  {
                    goto LABEL_218;
                  }

                  goto LABEL_172;
                }

                v193 = cmark_node_next(v195);
                sub_255CA56F8(&v270, v195);
                v196 = v272;
                v195 = v193;
              }

              while (v272 == 255);
              v255 = v271;
              v262 = v270;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v194 = sub_255C96758(0, *(v194 + 2) + 1, 1, v194);
              }

              v198 = *(v194 + 2);
              v197 = *(v194 + 3);
              if (v198 >= v197 >> 1)
              {
                v194 = sub_255C96758((v197 > 1), v198 + 1, 1, v194);
              }

              *(v194 + 2) = v198 + 1;
              v199 = &v194[40 * v198];
              *(v199 + 2) = v262;
              *(v199 + 3) = v255;
              v199[64] = v196;
            }
          }

          v192 = sub_255D076D8();

          if (v192)
          {
            goto LABEL_178;
          }

LABEL_255:
          sub_255D075A8();
          MEMORY[0x259C4B5D0](0xD000000000000020, 0x8000000255D18820);
          sub_255CA7584(v183);
          sub_255D07618();
          MEMORY[0x259C4B5D0](0x616574736E692027, 0xEA00000000002E64);
          goto LABEL_248;
        }

        sub_255D075A8();

        v239 = v186;
      }

      else
      {
        if (list_type != 1)
        {
          goto LABEL_248;
        }

        v250 = cmark_node_get_list_tight(a1);
        v183 = cmark_node_first_child(a1);
        v268 = MEMORY[0x277D84F90];
        sub_255C978C8(0, 0, 0);
        v7 = v268;
        if (!v183)
        {
LABEL_219:
          v30 = 0;
          v31 = 0;
          v28 = v250 != 0;
          result = 1;
          goto LABEL_243;
        }

        v202 = MEMORY[0x277D84F90];
LABEL_199:
        v203 = cmark_node_next(v183);
        if (!cmark_node_get_type_string(v183))
        {
          goto LABEL_250;
        }

        v204 = sub_255D071B8();
        v188 = v205;

        v206 = sub_255CAA410();
        if (v206 != 29)
        {
          v207 = v206;

          if (sub_255CA9948(v207) == 1835365481 && v208 == 0xE400000000000000)
          {
          }

          else
          {
            v209 = sub_255D076D8();

            if ((v209 & 1) == 0)
            {
              goto LABEL_255;
            }
          }

          v210 = cmark_node_first_child(v183);
          v211 = v202;
          while (1)
          {
            v212 = v210;
            do
            {
              if (!v212)
              {
                v218 = *(v268 + 16);
                v217 = *(v268 + 24);
                if (v218 >= v217 >> 1)
                {
                  sub_255C978C8((v217 > 1), v218 + 1, 1);
                }

                *(v268 + 16) = v218 + 1;
                *(v268 + 8 * v218 + 32) = v211;
                v183 = v203;
                if (!v203)
                {
                  goto LABEL_219;
                }

                goto LABEL_199;
              }

              v210 = cmark_node_next(v212);
              sub_255CA56F8(&v270, v212);
              v213 = v272;
              v212 = v210;
            }

            while (v272 == 255);
            v256 = v271;
            v263 = v270;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v211 = sub_255C96758(0, *(v211 + 2) + 1, 1, v211);
            }

            v215 = *(v211 + 2);
            v214 = *(v211 + 3);
            if (v215 >= v214 >> 1)
            {
              v211 = sub_255C96758((v214 > 1), v215 + 1, 1, v211);
            }

            *(v211 + 2) = v215 + 1;
            v216 = &v211[40 * v215];
            *(v216 + 2) = v263;
            *(v216 + 3) = v256;
            v216[64] = v213;
          }
        }

        sub_255D075A8();

        v239 = v204;
      }

      MEMORY[0x259C4B5D0](v239, v188);
      MEMORY[0x259C4B5D0](0x2E646E756F662027, 0xE800000000000000);
      goto LABEL_248;
    }

    v178 = cmark_node_next(v3);
    if (!cmark_node_get_type_string(v3))
    {
      goto LABEL_246;
    }

    v3 = sub_255D071B8();
    v2 = v179;

    if (sub_255CAA410() == 29)
    {
      goto LABEL_247;
    }

    v3 = v178;

    switch(v180)
    {
      case 28:

        goto LABEL_221;
      default:
        v2 = sub_255D076D8();

        if ((v2 & 1) == 0)
        {
          continue;
        }

LABEL_221:
        v251 = cmark_node_get_list_tight(a1);
        v219 = cmark_node_first_child(a1);
        v269 = MEMORY[0x277D84F90];
        sub_255C977D8(0, 0, 0);
        if (!v219)
        {
          goto LABEL_242;
        }

        v220 = MEMORY[0x277D84F90];
        break;
    }

    break;
  }

  do
  {
    v221 = cmark_node_next(v219);
    v222 = sub_255CA7584(v219);
    if (sub_255CA9948(v222) == 0x7473696C6B736174 && v223 == 0xE800000000000000)
    {
      goto LABEL_225;
    }

    v224 = sub_255D076D8();

    if (v224)
    {
      goto LABEL_230;
    }

    v225 = sub_255CA7584(v219);
    if (sub_255CA9948(v225) == 1835365481 && v226 == 0xE400000000000000)
    {
LABEL_225:
    }

    else
    {
      v227 = sub_255D076D8();

      if ((v227 & 1) == 0)
      {
        sub_255D075A8();
        MEMORY[0x259C4B5D0](0xD000000000000020, 0x8000000255D18820);
        sub_255CA7584(v219);
        sub_255D07618();
        MEMORY[0x259C4B5D0](0x616574736E692027, 0xEA00000000002E64);
        goto LABEL_248;
      }
    }

LABEL_230:
    tasklist_item_checked = cmark_gfm_extensions_get_tasklist_item_checked(v219);
    v229 = cmark_node_first_child(v219);
    v230 = v220;
LABEL_231:
    v231 = v229;
    while (v231)
    {
      v229 = cmark_node_next(v231);
      sub_255CA56F8(&v270, v231);
      v232 = v272;
      v231 = v229;
      if (v272 != 255)
      {
        v257 = v271;
        v264 = v270;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v230 = sub_255C96758(0, *(v230 + 2) + 1, 1, v230);
        }

        v234 = *(v230 + 2);
        v233 = *(v230 + 3);
        if (v234 >= v233 >> 1)
        {
          v230 = sub_255C96758((v233 > 1), v234 + 1, 1, v230);
        }

        *(v230 + 2) = v234 + 1;
        v235 = &v230[40 * v234];
        *(v235 + 2) = v264;
        *(v235 + 3) = v257;
        v235[64] = v232;
        goto LABEL_231;
      }
    }

    v237 = *(v269 + 16);
    v236 = *(v269 + 24);
    if (v237 >= v236 >> 1)
    {
      sub_255C977D8((v236 > 1), v237 + 1, 1);
    }

    *(v269 + 16) = v237 + 1;
    v238 = v269 + 16 * v237;
    *(v238 + 32) = tasklist_item_checked;
    *(v238 + 40) = v230;
    v219 = v221;
  }

  while (v221);
LABEL_242:
  v7 = v269;
  v30 = 0;
  v31 = 0;
  v28 = v251 != 0;
  result = 3;
LABEL_243:
  a2 = v241;
LABEL_244:
  *a2 = v28;
  *(a2 + 8) = v7;
  *(a2 + 16) = v30;
  *(a2 + 24) = v31;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_255CA7390(uint64_t a1, unint64_t a2)
{
  cmark_gfm_core_extensions_ensure_registered();
  v3 = cmark_parser_new(0);
  v4 = sub_255CAA2A8(&unk_2867D47B8);
  swift_arrayDestroy();
  v5 = 0;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_9:
    v8 &= v8 - 1;
    v11 = sub_255D07138();
    syntax_extension = cmark_find_syntax_extension((v11 + 32));

    if (syntax_extension)
    {
      cmark_parser_attach_syntax_extension(v3, syntax_extension);
    }
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_21:
    v13 = sub_255D071C8();
    goto LABEL_15;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_15:
  v14 = sub_255D07138();
  cmark_parser_feed(v3, (v14 + 32), v13);

  v15 = cmark_parser_finish(v3);
  if (v15)
  {
    v16 = v15;
    sub_255CA55E8(v15, &v20);
    cmark_node_free(v16);
    if (v19)
    {
      return cmark_parser_free(v3);
    }

    else
    {
      cmark_parser_free(v3);
      return v20;
    }
  }

  else
  {
    cmark_parser_free(v3);
    return 0;
  }
}

uint64_t sub_255CA7584(uint64_t a1)
{
  if (cmark_node_get_type_string(a1))
  {
    v2 = sub_255D071B8();
    v1 = v3;

    v4 = sub_255CAA410();
    if (v4 != 29)
    {
      v5 = v4;

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  sub_255D075A8();

  MEMORY[0x259C4B5D0](v2, v1);
  MEMORY[0x259C4B5D0](0x2E646E756F662027, 0xE800000000000000);
  result = sub_255D07628();
  __break(1u);
  return result;
}

uint64_t sub_255CA7694(uint64_t a1)
{
  v2 = sub_255CA7584(a1);
  if (v2 > 0xF)
  {
    if (v2 <= 17)
    {
      if (v2 == 16)
      {
        child = cmark_node_first_child(a1);
        v4 = MEMORY[0x277D84F90];
LABEL_39:
        v41 = child;
        while (v41)
        {
          child = cmark_node_next(v41);
          v42 = sub_255CA7694(v41);
          v41 = child;
          if (v45 != -1)
          {
            v46 = v45;
            v47 = v44;
            v48 = v43;
            v49 = v42;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_255C96BE8(0, *(v4 + 16) + 1, 1, v4);
            }

            v51 = *(v4 + 16);
            v50 = *(v4 + 24);
            if (v51 >= v50 >> 1)
            {
              v57 = sub_255C96BE8((v50 > 1), v51 + 1, 1, v4);
              v55 = v46;
              v54 = v47;
              v53 = v48;
              v4 = v57;
              v52 = v49;
            }

            else
            {
              v52 = v49;
              v53 = v48;
              v54 = v47;
              v55 = v46;
            }

            *(v4 + 16) = v51 + 1;
            v56 = v4 + 32 * v51;
            *(v56 + 32) = v52;
            *(v56 + 40) = v53;
            *(v56 + 48) = v54;
            *(v56 + 56) = v55;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v22 = cmark_node_first_child(a1);
        v4 = MEMORY[0x277D84F90];
LABEL_27:
        v23 = v22;
        while (v23)
        {
          v22 = cmark_node_next(v23);
          v24 = sub_255CA7694(v23);
          v23 = v22;
          if (v27 != -1)
          {
            v28 = v27;
            v29 = v26;
            v30 = v25;
            v31 = v24;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_255C96BE8(0, *(v4 + 16) + 1, 1, v4);
            }

            v33 = *(v4 + 16);
            v32 = *(v4 + 24);
            if (v33 >= v32 >> 1)
            {
              v39 = sub_255C96BE8((v32 > 1), v33 + 1, 1, v4);
              v37 = v28;
              v36 = v29;
              v35 = v30;
              v4 = v39;
              v34 = v31;
            }

            else
            {
              v34 = v31;
              v35 = v30;
              v36 = v29;
              v37 = v28;
            }

            *(v4 + 16) = v33 + 1;
            v38 = v4 + 32 * v33;
            *(v38 + 32) = v34;
            *(v38 + 40) = v35;
            *(v38 + 48) = v36;
            *(v38 + 56) = v37;
            goto LABEL_27;
          }
        }
      }
    }

    else
    {
      switch(v2)
      {
        case 18:
          if (cmark_node_get_url(a1))
          {
            v4 = sub_255D071B8();
          }

          else
          {
            v4 = 0;
          }

          v58 = cmark_node_first_child(a1);
          v59 = MEMORY[0x277D84F90];
LABEL_62:
          v60 = v58;
          while (v60)
          {
            v58 = cmark_node_next(v60);
            v61 = sub_255CA7694(v60);
            v60 = v58;
            if (v64 != -1)
            {
              v65 = v64;
              v66 = v63;
              v67 = v62;
              v68 = v61;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v59 = sub_255C96BE8(0, *(v59 + 2) + 1, 1, v59);
              }

              v70 = *(v59 + 2);
              v69 = *(v59 + 3);
              v71 = v70 + 1;
              if (v70 >= v69 >> 1)
              {
                v77 = sub_255C96BE8((v69 > 1), v70 + 1, 1, v59);
                v71 = v70 + 1;
                v75 = v65;
                v74 = v66;
                v73 = v67;
                v59 = v77;
                v72 = v68;
              }

              else
              {
                v72 = v68;
                v73 = v67;
                v74 = v66;
                v75 = v65;
              }

              *(v59 + 2) = v71;
              v76 = &v59[32 * v70];
              *(v76 + 4) = v72;
              *(v76 + 5) = v73;
              *(v76 + 6) = v74;
              v76[56] = v75;
              goto LABEL_62;
            }
          }

          break;
        case 19:
          if (cmark_node_get_url(a1))
          {
            v4 = sub_255D071B8();
          }

          else
          {
            v4 = 0;
          }

          v78 = cmark_node_first_child(a1);
          v79 = MEMORY[0x277D84F90];
LABEL_76:
          v80 = v78;
          while (v80)
          {
            v78 = cmark_node_next(v80);
            v81 = sub_255CA7694(v80);
            v80 = v78;
            if (v84 != -1)
            {
              v85 = v84;
              v86 = v83;
              v87 = v82;
              v88 = v81;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v79 = sub_255C96BE8(0, *(v79 + 2) + 1, 1, v79);
              }

              v90 = *(v79 + 2);
              v89 = *(v79 + 3);
              v91 = v90 + 1;
              if (v90 >= v89 >> 1)
              {
                v97 = sub_255C96BE8((v89 > 1), v90 + 1, 1, v79);
                v91 = v90 + 1;
                v95 = v85;
                v94 = v86;
                v93 = v87;
                v79 = v97;
                v92 = v88;
              }

              else
              {
                v92 = v88;
                v93 = v87;
                v94 = v86;
                v95 = v85;
              }

              *(v79 + 2) = v91;
              v96 = &v79[32 * v90];
              *(v96 + 4) = v92;
              *(v96 + 5) = v93;
              *(v96 + 6) = v94;
              v96[56] = v95;
              goto LABEL_76;
            }
          }

          break;
        case 23:
          v3 = cmark_node_first_child(a1);
          v4 = MEMORY[0x277D84F90];
LABEL_13:
          v5 = v3;
          while (v5)
          {
            v3 = cmark_node_next(v5);
            v6 = sub_255CA7694(v5);
            v5 = v3;
            if (v9 != -1)
            {
              v10 = v9;
              v11 = v8;
              v12 = v7;
              v13 = v6;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_255C96BE8(0, *(v4 + 16) + 1, 1, v4);
              }

              v15 = *(v4 + 16);
              v14 = *(v4 + 24);
              if (v15 >= v14 >> 1)
              {
                v21 = sub_255C96BE8((v14 > 1), v15 + 1, 1, v4);
                v19 = v10;
                v18 = v11;
                v17 = v12;
                v4 = v21;
                v16 = v13;
              }

              else
              {
                v16 = v13;
                v17 = v12;
                v18 = v11;
                v19 = v10;
              }

              *(v4 + 16) = v15 + 1;
              v20 = v4 + 32 * v15;
              *(v20 + 32) = v16;
              *(v20 + 40) = v17;
              *(v20 + 48) = v18;
              *(v20 + 56) = v19;
              goto LABEL_13;
            }
          }

          break;
        default:
          return 0;
      }
    }
  }

  else if (v2 <= 11)
  {
    if (v2 == 10)
    {
      if (!cmark_node_get_literal(a1))
      {
        return 0;
      }

      return sub_255D071B8();
    }

    if (v2 != 11)
    {
      return 0;
    }

    return 0;
  }

  else
  {
    if (v2 != 12)
    {
      if (v2 == 13)
      {
        if (!cmark_node_get_literal(a1))
        {
          return 0;
        }

        return sub_255D071B8();
      }

      if (v2 == 14)
      {
        if (!cmark_node_get_literal(a1))
        {
          return 0;
        }

        return sub_255D071B8();
      }

      return 0;
    }

    return 1;
  }

  return v4;
}

uint64_t sub_255CA7D38(uint64_t a1)
{
  table_columns = cmark_gfm_extensions_get_table_columns(a1);
  v3 = MEMORY[0x277D84F90];
  if (!table_columns)
  {
    return v3;
  }

  v4 = table_columns;
  v13 = MEMORY[0x277D84F90];
  sub_255C97938(0, table_columns, 0);
  v5 = 0;
  v3 = v13;
  while (1)
  {
    result = cmark_gfm_extensions_get_table_alignments(a1);
    if (!result)
    {
      break;
    }

    v7 = sub_255D07158();
    v9 = sub_255CDC68C(v7, v8);
    if (v9 == 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v12 = *(v13 + 16);
    v11 = *(v13 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_255C97938((v11 > 1), v12 + 1, 1);
    }

    ++v5;
    *(v13 + 16) = v12 + 1;
    *(v13 + v12 + 32) = v10;
    if (v4 == v5)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_255CA7E80(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v3 = *(a1 + 1);
  v4 = a1[32];
  if (v4 <= 4)
  {
    if (a1[32] > 1u)
    {
      v5 = *(a1 + 2);
      if (v4 == 2)
      {
        v60 = cmark_node_new(0x8003u);
        if (v60)
        {
          v61 = v60;
          cmark_node_set_list_type(v60, 2);
          result = cmark_node_set_list_tight(v61, v1 & 1);
          if (v3 < 0xFFFFFFFF80000000)
          {
LABEL_262:
            __break(1u);
            goto LABEL_263;
          }

          if (v3 > 0x7FFFFFFF)
          {
LABEL_264:
            __break(1u);
            goto LABEL_265;
          }

          v223 = v61;
          cmark_node_set_list_start(v61, v3);
          v62 = *(v5 + 16);
          if (v62)
          {
            v63 = 0;
            v64 = v5 + 32;
            v65 = MEMORY[0x277D84F90];
            v66 = MEMORY[0x277D84F90];
LABEL_74:
            v67 = v63;
            while (v67 < v62)
            {
              v63 = v67 + 1;
              if (__OFADD__(v67, 1))
              {
                goto LABEL_252;
              }

              v68 = *(v64 + 8 * v67);

              v69 = cmark_node_new(0x8004u);
              if (v69)
              {
                v70 = v69;
                v71 = 0;
                v72 = *(v68 + 16);
                v218 = v65;
LABEL_81:
                v73 = 40 * v71 + 32;
                while (v72 != v71)
                {
                  if (v71 >= *(v68 + 16))
                  {
                    goto LABEL_254;
                  }

                  ++v71;
                  v74 = v73 + 40;
                  v75 = (v68 + v73);
                  v76 = *v75;
                  v77 = v75[1];
                  v228 = *(v75 + 32);
                  v226 = v76;
                  v227 = v77;
                  sub_255C76B38(&v226, v225);
                  v78 = sub_255CA7E80(&v226);
                  sub_255C76BF4(&v226);
                  v73 = v74;
                  if (v78)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v218 = sub_255C96874(0, *(v218 + 2) + 1, 1, v218);
                    }

                    v80 = *(v218 + 2);
                    v79 = *(v218 + 3);
                    v81 = v80 + 1;
                    if (v80 >= v79 >> 1)
                    {
                      v82 = sub_255C96874((v79 > 1), v80 + 1, 1, v218);
                      v81 = v80 + 1;
                      v218 = v82;
                    }

                    *(v218 + 2) = v81;
                    *&v218[8 * v80 + 32] = v78;
                    goto LABEL_81;
                  }
                }

                v83 = *(v218 + 2);
                if (v83)
                {
                  v84 = (v218 + 32);
                  do
                  {
                    v85 = *v84++;
                    cmark_node_append_child(v70, v85);
                    --v83;
                  }

                  while (v83);
                }

                v65 = MEMORY[0x277D84F90];

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v66 = sub_255C96874(0, *(v66 + 2) + 1, 1, v66);
                }

                v87 = *(v66 + 2);
                v86 = *(v66 + 3);
                if (v87 >= v86 >> 1)
                {
                  v66 = sub_255C96874((v86 > 1), v87 + 1, 1, v66);
                }

                *(v66 + 2) = v87 + 1;
                *&v66[8 * v87 + 32] = v70;
                if (v63 != v62)
                {
                  goto LABEL_74;
                }

                goto LABEL_229;
              }

              ++v67;
              if (v63 == v62)
              {
                goto LABEL_229;
              }
            }

LABEL_251:
            __break(1u);
LABEL_252:
            __break(1u);
LABEL_253:
            __break(1u);
LABEL_254:
            __break(1u);
LABEL_255:

            __break(1u);
LABEL_256:
            __break(1u);
            goto LABEL_257;
          }

          v66 = MEMORY[0x277D84F90];
LABEL_229:
          v197 = *(v66 + 2);
          if (v197)
          {
            v198 = 32;
            v37 = v223;
            do
            {
              cmark_node_append_child(v223, *&v66[v198]);
              v198 += 8;
              --v197;
            }

            while (v197);
            goto LABEL_232;
          }

LABEL_233:

          return v223;
        }

        return 0;
      }

      if (v4 == 3)
      {
        v6 = cmark_node_new(0x8003u);
        if (v6)
        {
          v7 = v6;
          cmark_node_set_list_type(v6, 1);
          v223 = v7;
          cmark_node_set_list_tight(v7, v1 & 1);
          v8 = *(v3 + 16);
          if (v8)
          {
            v9 = 0;
            v10 = MEMORY[0x277D84F90];
            v11 = v3 + 40;
LABEL_8:
            v12 = (v11 + 16 * v9);
            v13 = v9;
            while (v13 < v8)
            {
              v9 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                goto LABEL_248;
              }

              v14 = *(v12 - 8);
              v15 = *v12;

              syntax_extension = cmark_find_syntax_extension("tasklist");
              if (syntax_extension)
              {
                v17 = cmark_node_new_with_ext(0x8004u, syntax_extension);
                if (v17)
                {
                  v18 = v17;
                  v214 = v11;
                  result = cmark_gfm_extensions_set_tasklist_item_checked(v17, v14);
                  v20 = 0;
                  v21 = *(v15 + 16);
                  v217 = MEMORY[0x277D84F90];
LABEL_15:
                  v22 = 40 * v20 + 32;
                  while (v21 != v20)
                  {
                    if (v20 >= *(v15 + 16))
                    {
                      goto LABEL_259;
                    }

                    ++v20;
                    v23 = v22 + 40;
                    v24 = (v15 + v22);
                    v25 = *v24;
                    v26 = v24[1];
                    v228 = *(v24 + 32);
                    v226 = v25;
                    v227 = v26;
                    sub_255C76B38(&v226, v225);
                    v27 = sub_255CA7E80(&v226);
                    result = sub_255C76BF4(&v226);
                    v22 = v23;
                    if (v27)
                    {
                      result = swift_isUniquelyReferenced_nonNull_native();
                      if ((result & 1) == 0)
                      {
                        result = sub_255C96874(0, *(v217 + 16) + 1, 1, v217);
                        v217 = result;
                      }

                      v29 = *(v217 + 16);
                      v28 = *(v217 + 24);
                      v30 = v29 + 1;
                      if (v29 >= v28 >> 1)
                      {
                        result = sub_255C96874((v28 > 1), v29 + 1, 1, v217);
                        v30 = v29 + 1;
                        v217 = result;
                      }

                      *(v217 + 16) = v30;
                      *(v217 + 8 * v29 + 32) = v27;
                      goto LABEL_15;
                    }
                  }

                  v31 = *(v217 + 16);
                  if (v31)
                  {
                    v32 = (v217 + 32);
                    v11 = v214;
                    do
                    {
                      v33 = *v32++;
                      cmark_node_append_child(v18, v33);
                      --v31;
                    }

                    while (v31);
                  }

                  else
                  {

                    v11 = v214;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v10 = sub_255C96874(0, *(v10 + 2) + 1, 1, v10);
                  }

                  v35 = *(v10 + 2);
                  v34 = *(v10 + 3);
                  if (v35 >= v34 >> 1)
                  {
                    v10 = sub_255C96874((v34 > 1), v35 + 1, 1, v10);
                  }

                  *(v10 + 2) = v35 + 1;
                  *&v10[8 * v35 + 32] = v18;
                  if (v9 != v8)
                  {
                    goto LABEL_8;
                  }

                  goto LABEL_219;
                }
              }

              ++v13;
              v12 += 2;
              if (v9 == v8)
              {
                goto LABEL_219;
              }
            }

LABEL_247:
            __break(1u);
LABEL_248:
            __break(1u);
            goto LABEL_249;
          }

          v10 = MEMORY[0x277D84F90];
LABEL_219:
          v193 = *(v10 + 2);
          if (v193)
          {
            v194 = 32;
            v37 = v223;
            do
            {
              cmark_node_append_child(v223, *&v10[v194]);
              v194 += 8;
              --v193;
            }

            while (v193);
LABEL_232:

            return v37;
          }

          goto LABEL_233;
        }

        return 0;
      }

      v37 = cmark_node_new(0x8005u);
      if (v37)
      {
        if (v3)
        {
          v102 = sub_255D07138();
          cmark_node_set_fence_info(v37, (v102 + 32));
        }

        goto LABEL_116;
      }

      return v37;
    }

    if (!a1[32])
    {
      v37 = cmark_node_new(0x8002u);
      if (v37)
      {
        v48 = 0;
        v49 = v1 | (v2 << 8);
        v50 = *(v49 + 0x10);
        v51 = v49 + 32;
        v52 = MEMORY[0x277D84F90];
LABEL_56:
        v53 = (v51 + 40 * v48);
        while (v50 != v48)
        {
          if (v48 >= v50)
          {
            __break(1u);
            goto LABEL_242;
          }

          v54 = *v53;
          v55 = v53[1];
          v228 = *(v53 + 32);
          v226 = v54;
          v227 = v55;
          v56 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_243;
          }

          sub_255C76B38(&v226, v225);
          v57 = sub_255CA7E80(&v226);
          sub_255C76BF4(&v226);
          ++v48;
          v53 = (v53 + 40);
          if (v57)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_255C96874(0, *(v52 + 2) + 1, 1, v52);
            }

            v59 = *(v52 + 2);
            v58 = *(v52 + 3);
            if (v59 >= v58 >> 1)
            {
              v52 = sub_255C96874((v58 > 1), v59 + 1, 1, v52);
            }

            *(v52 + 2) = v59 + 1;
            *&v52[8 * v59 + 32] = v57;
            v48 = v56;
            goto LABEL_56;
          }
        }

        v147 = *(v52 + 2);
        if (v147)
        {
          v148 = 32;
          do
          {
            cmark_node_append_child(v37, *&v52[v148]);
            v148 += 8;
            --v147;
          }

          while (v147);
        }

        goto LABEL_232;
      }

      return v37;
    }

    v104 = cmark_node_new(0x8003u);
    if (v104)
    {
      v105 = v104;
      cmark_node_set_list_type(v104, 1);
      v223 = v105;
      cmark_node_set_list_tight(v105, v1 & 1);
      v106 = *(v3 + 16);
      if (v106)
      {
        v107 = 0;
        v108 = v3 + 32;
        v109 = MEMORY[0x277D84F90];
        v110 = MEMORY[0x277D84F90];
LABEL_121:
        v111 = v107;
        while (v111 < v106)
        {
          v107 = v111 + 1;
          if (__OFADD__(v111, 1))
          {
            goto LABEL_250;
          }

          v112 = *(v108 + 8 * v111);

          v113 = cmark_node_new(0x8004u);
          if (v113)
          {
            v114 = v113;
            v115 = 0;
            v116 = *(v112 + 16);
            v220 = v109;
LABEL_128:
            v117 = 40 * v115 + 32;
            while (v116 != v115)
            {
              if (v115 >= *(v112 + 16))
              {
                goto LABEL_253;
              }

              ++v115;
              v118 = v117 + 40;
              v119 = (v112 + v117);
              v120 = *v119;
              v121 = v119[1];
              v228 = *(v119 + 32);
              v226 = v120;
              v227 = v121;
              sub_255C76B38(&v226, v225);
              v122 = sub_255CA7E80(&v226);
              sub_255C76BF4(&v226);
              v117 = v118;
              if (v122)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v220 = sub_255C96874(0, *(v220 + 2) + 1, 1, v220);
                }

                v124 = *(v220 + 2);
                v123 = *(v220 + 3);
                v125 = v124 + 1;
                if (v124 >= v123 >> 1)
                {
                  v126 = sub_255C96874((v123 > 1), v124 + 1, 1, v220);
                  v125 = v124 + 1;
                  v220 = v126;
                }

                *(v220 + 2) = v125;
                *&v220[8 * v124 + 32] = v122;
                goto LABEL_128;
              }
            }

            v127 = *(v220 + 2);
            if (v127)
            {
              v128 = (v220 + 32);
              do
              {
                v129 = *v128++;
                cmark_node_append_child(v114, v129);
                --v127;
              }

              while (v127);
            }

            v109 = MEMORY[0x277D84F90];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v110 = sub_255C96874(0, *(v110 + 2) + 1, 1, v110);
            }

            v131 = *(v110 + 2);
            v130 = *(v110 + 3);
            if (v131 >= v130 >> 1)
            {
              v110 = sub_255C96874((v130 > 1), v131 + 1, 1, v110);
            }

            *(v110 + 2) = v131 + 1;
            *&v110[8 * v131 + 32] = v114;
            if (v107 != v106)
            {
              goto LABEL_121;
            }

            goto LABEL_224;
          }

          ++v111;
          if (v107 == v106)
          {
            goto LABEL_224;
          }
        }

LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
        goto LABEL_251;
      }

      v110 = MEMORY[0x277D84F90];
LABEL_224:
      v195 = *(v110 + 2);
      if (v195)
      {
        v196 = 32;
        v37 = v223;
        do
        {
          cmark_node_append_child(v223, *&v110[v196]);
          v196 += 8;
          --v195;
        }

        while (v195);
        goto LABEL_232;
      }

      goto LABEL_233;
    }

    return 0;
  }

  if (a1[32] <= 6u)
  {
    if (v4 == 5)
    {
      v37 = cmark_node_new(0x8006u);
      if (v37)
      {
LABEL_116:
        v103 = sub_255D07138();
        cmark_node_set_literal(v37, (v103 + 32));
      }

      return v37;
    }

    v132 = cmark_node_new(0x8008u);
    if (v132)
    {
      v223 = v132;
      v133 = 0;
      v134 = v1 | (v2 << 8);
      v135 = *(v134 + 0x10);
      v136 = v134 + 56;
      v137 = MEMORY[0x277D84F90];
      v221 = v136;
LABEL_148:
      v138 = (v136 + 32 * v133);
      while (v135 != v133)
      {
        if (v133 >= v135)
        {
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
          goto LABEL_247;
        }

        v139 = v133 + 1;
        if (__OFADD__(v133, 1))
        {
          goto LABEL_244;
        }

        v141 = *(v138 - 2);
        v140 = *(v138 - 1);
        v142 = *(v138 - 3);
        v143 = *v138;
        v138 += 32;
        sub_255C74200(v142, v141, v140, v143);
        v144 = sub_255CA9148(v142, v141, v140, v143);
        sub_255C7429C(v142, v141, v140, v143);
        ++v133;
        if (v144)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_255C96874(0, *(v137 + 2) + 1, 1, v137);
          }

          v146 = *(v137 + 2);
          v145 = *(v137 + 3);
          if (v146 >= v145 >> 1)
          {
            v137 = sub_255C96874((v145 > 1), v146 + 1, 1, v137);
          }

          *(v137 + 2) = v146 + 1;
          *&v137[8 * v146 + 32] = v144;
          v133 = v139;
          v136 = v221;
          goto LABEL_148;
        }
      }

      v149 = *(v137 + 2);
      if (!v149)
      {
        goto LABEL_233;
      }

      v150 = 32;
      v37 = v223;
      do
      {
        cmark_node_append_child(v223, *&v137[v150]);
        v150 += 8;
        --v149;
      }

      while (v149);
      goto LABEL_232;
    }

    return 0;
  }

  if (v4 == 7)
  {
    result = cmark_node_new(0x8009u);
    if (result)
    {
      v88 = v1 | (v2 << 8);
      if (v88 < 0xFFFFFFFF80000000)
      {
LABEL_263:
        __break(1u);
        goto LABEL_264;
      }

      if (v88 > 0x7FFFFFFF)
      {
LABEL_265:
        __break(1u);
        goto LABEL_266;
      }

      v223 = result;
      cmark_node_set_heading_level(result, v88);
      v89 = 0;
      v90 = *(v3 + 16);
      v91 = v3 + 56;
      v92 = MEMORY[0x277D84F90];
      v219 = v3 + 56;
LABEL_103:
      v93 = (v91 + 32 * v89);
      while (v90 != v89)
      {
        if (v89 >= v90)
        {
          goto LABEL_245;
        }

        v94 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
          goto LABEL_246;
        }

        v96 = *(v93 - 2);
        v95 = *(v93 - 1);
        v97 = *(v93 - 3);
        v98 = *v93;
        v93 += 32;
        sub_255C74200(v97, v96, v95, v98);
        v99 = sub_255CA9148(v97, v96, v95, v98);
        sub_255C7429C(v97, v96, v95, v98);
        ++v89;
        if (v99)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = sub_255C96874(0, *(v92 + 2) + 1, 1, v92);
          }

          v91 = v219;
          v101 = *(v92 + 2);
          v100 = *(v92 + 3);
          if (v101 >= v100 >> 1)
          {
            v92 = sub_255C96874((v100 > 1), v101 + 1, 1, v92);
          }

          *(v92 + 2) = v101 + 1;
          *&v92[8 * v101 + 32] = v99;
          v89 = v94;
          goto LABEL_103;
        }
      }

      v151 = *(v92 + 2);
      if (v151)
      {
        v152 = 32;
        v37 = v223;
        do
        {
          cmark_node_append_child(v223, *&v92[v152]);
          v152 += 8;
          --v151;
        }

        while (v151);
        goto LABEL_232;
      }

      goto LABEL_233;
    }

    return 0;
  }

  if (v4 != 8)
  {
    return cmark_node_new(0x800Au);
  }

  v36 = cmark_find_syntax_extension("table");
  if (!v36)
  {
    return 0;
  }

  result = cmark_node_new_with_ext(CMARK_NODE_TABLE, v36);
  v37 = result;
  if (!result)
  {
    return v37;
  }

  v38 = v1 | (v2 << 8);
  v39 = *(v38 + 16);
  if (!(v39 >> 16))
  {
    cmark_gfm_extensions_set_table_columns(result, v39);
    v40 = MEMORY[0x277D84F90];
    if (v39)
    {
      *&v226 = MEMORY[0x277D84F90];
      sub_255C97968(0, v39, 0);
      v40 = v226;
      v41 = (v38 + 32);
      for (i = v39; i; --i)
      {
        v43 = *v41++;
        v44 = qword_255D0D3D0[v43];
        if (sub_255D076D8())
        {

          LOBYTE(v45) = 10;
        }

        else
        {
          result = sub_255CA9EAC(v44, 0xE100000000000000);
          if ((result & 0x100000000) != 0)
          {
            goto LABEL_267;
          }

          if ((result & 0xFFFFFF80) != 0)
          {
            goto LABEL_255;
          }

          result = sub_255CA9EAC(v44, 0xE100000000000000);
          if ((result & 0x100000000) != 0)
          {
            goto LABEL_268;
          }

          v45 = result;

          if ((v45 & 0xFFFFFF00) != 0)
          {
            goto LABEL_256;
          }
        }

        *&v226 = v40;
        v47 = *(v40 + 2);
        v46 = *(v40 + 3);
        if (v47 >= v46 >> 1)
        {
          sub_255C97968((v46 > 1), v47 + 1, 1);
          v40 = v226;
        }

        *(v40 + 2) = v47 + 1;
        v40[v47 + 32] = v45;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_255C96D10(0, *(v40 + 2), 0, v40);
    }

    result = cmark_gfm_extensions_set_table_alignments(v37, v39, v40 + 32);
    v153 = *(v3 + 16);
    if (v153)
    {
      v154 = 0;
      v155 = MEMORY[0x277D84F90];
      v156 = "table";
      v157 = v3 + 32;
      v158 = MEMORY[0x277D84F90];
      while (v154 < v153)
      {
        v159 = v154 + 1;
        if (__OFADD__(v154, 1))
        {
          goto LABEL_258;
        }

        v224 = *(v157 + 8 * v154);

        v160 = cmark_find_syntax_extension(v156);
        if (v160 && (result = cmark_node_new_with_ext(CMARK_NODE_TABLE_ROW, v160)) != 0)
        {
          v210 = result;
          v161 = v224;
          v162 = *(v224 + 16);
          v208 = v154 + 1;
          if (v162)
          {
            v163 = *(v224 + 16);
            v164 = 0;
            v207 = v162 - 1;
            v211 = v155;
            while (v164 < *(v161 + 16))
            {
              v222 = *(v224 + 32 + 8 * v164);

              v165 = cmark_find_syntax_extension(v156);
              if (v165 && (result = cmark_node_new_with_ext(CMARK_NODE_TABLE_CELL, v165)) != 0)
              {
                v205 = v158;
                v206 = result;
                v204 = v153;
                v166 = 0;
                v212 = *(v222 + 16);
                v167 = v222 + 56;
                v209 = v155;
                v203 = v164 + 1;
LABEL_187:
                v168 = (v167 + 32 * v166);
                while (v212 != v166)
                {
                  if (v166 >= *(v222 + 16))
                  {
                    goto LABEL_261;
                  }

                  v169 = v164;
                  v170 = v163;
                  v171 = v157;
                  v172 = v156;
                  v173 = v40;
                  v174 = v37;
                  v215 = v168 + 32;
                  v216 = v166 + 1;
                  v175 = *(v168 - 2);
                  v176 = *(v168 - 1);
                  v177 = *(v168 - 3);
                  v178 = *v168;
                  sub_255C74200(v177, v175, v176, *v168);
                  v213 = sub_255CA9148(v177, v175, v176, v178);
                  v179 = v177;
                  v166 = v216;
                  result = sub_255C7429C(v179, v175, v176, v178);
                  v37 = v174;
                  v40 = v173;
                  v156 = v172;
                  v157 = v171;
                  v163 = v170;
                  v164 = v169;
                  v168 = v215;
                  if (v213)
                  {
                    result = swift_isUniquelyReferenced_nonNull_native();
                    if ((result & 1) == 0)
                    {
                      result = sub_255C96874(0, *(v209 + 16) + 1, 1, v209);
                      v209 = result;
                    }

                    v181 = *(v209 + 16);
                    v180 = *(v209 + 24);
                    if (v181 >= v180 >> 1)
                    {
                      result = sub_255C96874((v180 > 1), v181 + 1, 1, v209);
                      v209 = result;
                    }

                    *(v209 + 16) = v181 + 1;
                    *(v209 + 8 * v181 + 32) = v213;
                    v167 = v222 + 56;
                    goto LABEL_187;
                  }
                }

                v182 = *(v209 + 16);
                if (v182)
                {
                  v183 = (v209 + 32);
                  v158 = v205;
                  do
                  {
                    v184 = *v183++;
                    cmark_node_append_child(v206, v184);
                    --v182;
                  }

                  while (v182);
                }

                else
                {

                  v158 = v205;
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_255C96874(0, *(v211 + 16) + 1, 1, v211);
                  v211 = result;
                }

                v186 = *(v211 + 16);
                v185 = *(v211 + 24);
                if (v186 >= v185 >> 1)
                {
                  result = sub_255C96874((v185 > 1), v186 + 1, 1, v211);
                  v211 = result;
                }

                *(v211 + 16) = v186 + 1;
                *(v211 + 8 * v186 + 32) = v206;
                v187 = v207 == v164;
                v164 = v203;
                v153 = v204;
                v155 = MEMORY[0x277D84F90];
                v161 = v224;
                if (v187)
                {
                  goto LABEL_209;
                }
              }

              else
              {
                ++v164;

                if (v163 == v164)
                {
                  goto LABEL_209;
                }
              }
            }

            goto LABEL_260;
          }

          v211 = v155;
LABEL_209:
          v188 = *(v211 + 16);
          if (v188)
          {
            v189 = (v211 + 32);
            do
            {
              v190 = *v189++;
              cmark_node_append_child(v210, v190);
              --v188;
            }

            while (v188);
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_255C96874(0, *(v158 + 16) + 1, 1, v158);
            v158 = result;
          }

          v192 = *(v158 + 16);
          v191 = *(v158 + 24);
          if (v192 >= v191 >> 1)
          {
            result = sub_255C96874((v191 > 1), v192 + 1, 1, v158);
            v158 = result;
          }

          *(v158 + 16) = v192 + 1;
          *(v158 + 8 * v192 + 32) = v210;
          v154 = v208;
          if (v208 == v153)
          {
            goto LABEL_236;
          }
        }

        else
        {

          ++v154;
          if (v159 == v153)
          {
            goto LABEL_236;
          }
        }
      }

LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
      goto LABEL_262;
    }

    v158 = MEMORY[0x277D84F90];
LABEL_236:
    v199 = *(v158 + 16);
    if (v199)
    {
      v200 = (v158 + 32);
      do
      {
        v201 = *v200++;
        cmark_node_append_child(v37, v201);
        --v199;
      }

      while (v199);
    }

    child = cmark_node_first_child(v37);
    if (child)
    {
      cmark_gfm_extensions_set_table_row_is_header(child, 1);
    }

    return v37;
  }

LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
  return result;
}

uint64_t sub_255CA9148(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    if (a4 > 1u)
    {
      if (a4 != 2)
      {
        result = cmark_node_new(0xC007u);
        if (result)
        {
          v100 = result;
          v55 = 0;
          v56 = *(a1 + 16);
          v57 = a1 + 56;
          v58 = MEMORY[0x277D84F90];
          v98 = v57;
LABEL_52:
          v59 = (v57 + 32 * v55);
          while (v56 != v55)
          {
            if (v55 >= v56)
            {
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
LABEL_110:
              __break(1u);
LABEL_111:
              __break(1u);
              return result;
            }

            v60 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              goto LABEL_107;
            }

            v62 = *(v59 - 2);
            v61 = *(v59 - 1);
            v63 = *(v59 - 3);
            v64 = *v59;
            v59 += 32;
            sub_255C74200(v63, v62, v61, v64);
            v65 = sub_255CA9148(v63, v62, v61, v64);
            result = sub_255C7429C(v63, v62, v61, v64);
            ++v55;
            if (v65)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_255C96874(0, *(v58 + 16) + 1, 1, v58);
                v58 = result;
              }

              v67 = *(v58 + 16);
              v66 = *(v58 + 24);
              v68 = v67 + 1;
              if (v67 >= v66 >> 1)
              {
                result = sub_255C96874((v66 > 1), v67 + 1, 1, v58);
                v68 = v67 + 1;
                v58 = result;
              }

              *(v58 + 16) = v68;
              *(v58 + 8 * v67 + 32) = v65;
              v55 = v60;
              v57 = v98;
              goto LABEL_52;
            }
          }

          v87 = *(v58 + 16);
          if (!v87)
          {
            goto LABEL_98;
          }

          v88 = 32;
          v6 = v100;
          do
          {
            cmark_node_append_child(v100, *(v58 + v88));
            v88 += 8;
            --v87;
          }

          while (v87);
          goto LABEL_97;
        }

        return 0;
      }

      v23 = -16379;
    }

    else if (a4)
    {
      v23 = -16380;
    }

    else
    {
      v23 = -16383;
    }

    v6 = cmark_node_new(v23);
    if (v6)
    {
      v54 = sub_255D07138();
      cmark_node_set_literal(v6, (v54 + 32));
    }

    return v6;
  }

  if (a4 <= 5u)
  {
    if (a4 == 4)
    {
      result = cmark_node_new(0xC008u);
      if (result)
      {
        v100 = result;
        v24 = 0;
        v25 = *(a1 + 16);
        v26 = a1 + 56;
        v27 = MEMORY[0x277D84F90];
        v96 = v26;
LABEL_25:
        v28 = (v26 + 32 * v24);
        while (v25 != v24)
        {
          if (v24 >= v25)
          {
            goto LABEL_105;
          }

          v29 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_109;
          }

          v31 = *(v28 - 2);
          v30 = *(v28 - 1);
          v32 = *(v28 - 3);
          v33 = *v28;
          v28 += 32;
          sub_255C74200(v32, v31, v30, v33);
          v34 = sub_255CA9148(v32, v31, v30, v33);
          result = sub_255C7429C(v32, v31, v30, v33);
          ++v24;
          if (v34)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_255C96874(0, *(v27 + 16) + 1, 1, v27);
              v27 = result;
            }

            v36 = *(v27 + 16);
            v35 = *(v27 + 24);
            v37 = v36 + 1;
            if (v36 >= v35 >> 1)
            {
              result = sub_255C96874((v35 > 1), v36 + 1, 1, v27);
              v37 = v36 + 1;
              v27 = result;
            }

            *(v27 + 16) = v37;
            *(v27 + 8 * v36 + 32) = v34;
            v24 = v29;
            v26 = v96;
            goto LABEL_25;
          }
        }

        v91 = *(v27 + 16);
        if (v91)
        {
          v92 = 32;
          v6 = v100;
          do
          {
            cmark_node_append_child(v100, *(v27 + v92));
            v92 += 8;
            --v91;
          }

          while (v91);
          goto LABEL_97;
        }

LABEL_98:

        return v100;
      }
    }

    else
    {
      syntax_extension = cmark_find_syntax_extension("strikethrough");
      if (syntax_extension)
      {
        result = cmark_node_new_with_ext(CMARK_NODE_STRIKETHROUGH, syntax_extension);
        if (result)
        {
          v100 = result;
          v71 = 0;
          v72 = *(a1 + 16);
          v73 = a1 + 56;
          v74 = MEMORY[0x277D84F90];
          v99 = v73;
LABEL_67:
          v75 = (v73 + 32 * v71);
          while (v72 != v71)
          {
            if (v71 >= v72)
            {
              goto LABEL_110;
            }

            v76 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              goto LABEL_111;
            }

            v78 = *(v75 - 2);
            v77 = *(v75 - 1);
            v79 = *(v75 - 3);
            v80 = *v75;
            v75 += 32;
            sub_255C74200(v79, v78, v77, v80);
            v81 = sub_255CA9148(v79, v78, v77, v80);
            result = sub_255C7429C(v79, v78, v77, v80);
            ++v71;
            if (v81)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_255C96874(0, *(v74 + 16) + 1, 1, v74);
                v74 = result;
              }

              v83 = *(v74 + 16);
              v82 = *(v74 + 24);
              v84 = v83 + 1;
              if (v83 >= v82 >> 1)
              {
                result = sub_255C96874((v82 > 1), v83 + 1, 1, v74);
                v84 = v83 + 1;
                v74 = result;
              }

              *(v74 + 16) = v84;
              *(v74 + 8 * v83 + 32) = v81;
              v71 = v76;
              v73 = v99;
              goto LABEL_67;
            }
          }

          v93 = *(v74 + 16);
          if (v93)
          {
            v94 = 32;
            v6 = v100;
            do
            {
              cmark_node_append_child(v100, *(v74 + v94));
              v94 += 8;
              --v93;
            }

            while (v93);
            goto LABEL_97;
          }

          goto LABEL_98;
        }
      }
    }

    return 0;
  }

  if (a4 == 6)
  {
    v6 = cmark_node_new(0xC009u);
    if (v6)
    {
      v39 = sub_255D07138();
      v100 = v6;
      cmark_node_set_url(v6, (v39 + 32));

      v40 = 0;
      v41 = *(a3 + 16);
      v42 = a3 + 56;
      v43 = MEMORY[0x277D84F90];
      v97 = a3 + 56;
LABEL_37:
      v44 = (v42 + 32 * v40);
      while (v41 != v40)
      {
        if (v40 >= v41)
        {
          __break(1u);
          goto LABEL_103;
        }

        v45 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_106;
        }

        v47 = *(v44 - 2);
        v46 = *(v44 - 1);
        v48 = *(v44 - 3);
        v49 = *v44;
        v44 += 32;
        sub_255C74200(v48, v47, v46, v49);
        v50 = sub_255CA9148(v48, v47, v46, v49);
        result = sub_255C7429C(v48, v47, v46, v49);
        ++v40;
        if (v50)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_255C96874(0, *(v43 + 16) + 1, 1, v43);
            v43 = result;
          }

          v52 = *(v43 + 16);
          v51 = *(v43 + 24);
          v53 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            result = sub_255C96874((v51 > 1), v52 + 1, 1, v43);
            v53 = v52 + 1;
            v43 = result;
          }

          *(v43 + 16) = v53;
          *(v43 + 8 * v52 + 32) = v50;
          v40 = v45;
          v42 = v97;
          goto LABEL_37;
        }
      }

      v85 = *(v43 + 16);
      if (!v85)
      {
        goto LABEL_98;
      }

      v86 = 32;
      v6 = v100;
      do
      {
        cmark_node_append_child(v100, *(v43 + v86));
        v86 += 8;
        --v85;
      }

      while (v85);
      goto LABEL_97;
    }
  }

  else
  {
    if (a4 != 7)
    {
      if (a3 | a2 | a1)
      {
        v69 = -16381;
      }

      else
      {
        v69 = -16382;
      }

      return cmark_node_new(v69);
    }

    v6 = cmark_node_new(0xC00Au);
    if (v6)
    {
      v7 = sub_255D07138();
      v100 = v6;
      cmark_node_set_url(v6, (v7 + 32));

      v9 = 0;
      v10 = *(a3 + 16);
      v11 = a3 + 56;
      v12 = MEMORY[0x277D84F90];
      v95 = a3 + 56;
LABEL_7:
      v13 = (v11 + 32 * v9);
      while (v10 != v9)
      {
        if (v9 >= v10)
        {
          goto LABEL_104;
        }

        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_108;
        }

        v16 = *(v13 - 2);
        v15 = *(v13 - 1);
        v17 = *(v13 - 3);
        v18 = *v13;
        v13 += 32;
        sub_255C74200(v17, v16, v15, v18);
        v19 = sub_255CA9148(v17, v16, v15, v18);
        result = sub_255C7429C(v17, v16, v15, v18);
        ++v9;
        if (v19)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_255C96874(0, *(v12 + 16) + 1, 1, v12);
            v12 = result;
          }

          v21 = *(v12 + 16);
          v20 = *(v12 + 24);
          v22 = v21 + 1;
          if (v21 >= v20 >> 1)
          {
            result = sub_255C96874((v20 > 1), v21 + 1, 1, v12);
            v22 = v21 + 1;
            v12 = result;
          }

          *(v12 + 16) = v22;
          *(v12 + 8 * v21 + 32) = v19;
          v9 = v14;
          v11 = v95;
          goto LABEL_7;
        }
      }

      v89 = *(v12 + 16);
      if (v89)
      {
        v90 = 32;
        v6 = v100;
        do
        {
          cmark_node_append_child(v100, *(v12 + v90));
          v90 += 8;
          --v89;
        }

        while (v89);
LABEL_97:

        return v6;
      }

      goto LABEL_98;
    }
  }

  return v6;
}

uint64_t sub_255CA9948(char a1)
{
  result = 0x746E656D75636F64;
  switch(a1)
  {
    case 1:
      return 0x75715F6B636F6C62;
    case 2:
      return 1953720684;
    case 3:
      return 1835365481;
    case 4:
      v4 = 1701080931;
      return v4 | 0x6F6C625F00000000;
    case 5:
      v4 = 1819112552;
      return v4 | 0x6F6C625F00000000;
    case 6:
      return 0x625F6D6F74737563;
    case 7:
      return 0x7061726761726170;
    case 8:
      return 0x676E6964616568;
    case 9:
      return 0x636974616D656874;
    case 10:
      return 1954047348;
    case 11:
      v3 = 1952870259;
      goto LABEL_9;
    case 12:
      v3 = 1701734764;
LABEL_9:
      result = v3 | 0x6165726200000000;
      break;
    case 13:
      result = 1701080931;
      break;
    case 14:
      result = 0x6C6E695F6C6D7468;
      break;
    case 15:
      result = 0x695F6D6F74737563;
      break;
    case 16:
      result = 1752198501;
      break;
    case 17:
      result = 0x676E6F727473;
      break;
    case 18:
      result = 1802398060;
      break;
    case 19:
      result = 0x6567616D69;
      break;
    case 20:
      result = 0x7475626972747461;
      break;
    case 21:
      result = 1162760014;
      break;
    case 22:
      result = 0x6E776F6E6B6E753CLL;
      break;
    case 23:
      result = 0x6874656B69727473;
      break;
    case 24:
      result = 0x656C626174;
      break;
    case 25:
      result = 0x65685F656C626174;
      break;
    case 26:
      result = 0x6F725F656C626174;
      break;
    case 27:
      result = 0x65635F656C626174;
      break;
    case 28:
      result = 0x7473696C6B736174;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_255CA9CB0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_255CA9948(*a1);
  v5 = v4;
  if (v3 == sub_255CA9948(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255D076D8();
  }

  return v8 & 1;
}

uint64_t sub_255CA9D38()
{
  v1 = *v0;
  sub_255D07728();
  sub_255CA9948(v1);
  sub_255D07058();

  return sub_255D07768();
}

uint64_t sub_255CA9D9C()
{
  sub_255CA9948(*v0);
  sub_255D07058();
}

uint64_t sub_255CA9DF0()
{
  v1 = *v0;
  sub_255D07728();
  sub_255CA9948(v1);
  sub_255D07058();

  return sub_255D07768();
}

uint64_t sub_255CA9E50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255CAA410();
  *a1 = result;
  return result;
}

uint64_t sub_255CA9E80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255CA9948(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_255CA9EAC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_255CA9FFC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_255D07598();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_255D075B8() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_255CA9FFC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_255CAA094(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_255CAA108(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_255CAA094(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_255CAA22C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_255CAA108(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_255D075B8();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_255CAA22C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_255D071E8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C4B600](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_255CAA2A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE870);
    v3 = sub_255D07568();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_255D07728();

      sub_255D07058();
      result = sub_255D07768();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_255D076D8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_255CAA410()
{
  v0 = sub_255D076E8();

  if (v0 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for NodeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NodeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255CAA5B8()
{
  result = qword_27F7DE878;
  if (!qword_27F7DE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE878);
  }

  return result;
}

uint64_t sub_255CAA60C@<X0>(_BYTE *a1@<X8>)
{
  sub_255CAD65C();
  result = sub_255D063F8();
  *a1 = v3;
  return result;
}

char *sub_255CAA6A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a3 + 32;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = *(v6 + 16);
    v20[0] = *v6;
    v20[1] = v9;
    v21 = *(v6 + 32);
    sub_255C76B38(v20, v19);
    v10 = sub_255CA33C0(a1, v22);
    if (v3)
    {

      sub_255C76BF4(v20);
      return v7;
    }

    v11 = v10;
    result = sub_255C76BF4(v20);
    v12 = *(v11 + 16);
    v13 = *(v7 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v14 <= *(v7 + 3) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v15 = v13 + v12;
      }

      else
      {
        v15 = v13;
      }

      result = sub_255C96758(result, v15, 1, v7);
      v7 = result;
      if (*(v11 + 16))
      {
LABEL_15:
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v12)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v16 = *(v7 + 2);
          v17 = __OFADD__(v16, v12);
          v18 = v16 + v12;
          if (v17)
          {
            goto LABEL_25;
          }

          *(v7 + 2) = v18;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_23;
    }

LABEL_4:
    v6 += 40;
    if (!--v4)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_255CAA848(uint64_t a1, uint64_t a2)
{
  v19 = MEMORY[0x277D84F90];
  result = sub_255C97998(0, 0, 0);
  v5 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_10:
    __break(1u);
  }

  else
  {
    v6 = *(a2 + 16) + 1;
    v7 = (a2 + 64);
    while (--v6)
    {
      v18 = a1;
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      v17 = *(v7 - 4);
      result = sub_255C90E88(v17, v8, v9, v10, *v7);
      v13 = *(v19 + 16);
      v12 = *(v19 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        result = sub_255C97998((v12 > 1), v13 + 1, 1);
        v14 = v13 + 1;
      }

      v7 += 40;
      *(v19 + 16) = v14;
      v15 = v19 + 48 * v13;
      *(v15 + 32) = v18;
      *(v15 + 40) = v17;
      *(v15 + 48) = v8;
      *(v15 + 56) = v9;
      *(v15 + 64) = v10;
      *(v15 + 72) = v11;
      a1 = v5;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_10;
      }
    }

    return v19;
  }

  return result;
}

uint64_t sub_255CAA97C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_255D063E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE880);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_255C7299C(v2, &v14 - v9, &qword_27F7DE880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_255D05F18();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_255D07438();
    v13 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_255CAAB7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_255D063E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Markdown(0);
  sub_255C7299C(v1 + *(v7 + 20), v10, &qword_27F7DE968);
  if (v11 == 1)
  {
    return sub_255CAC668(v10, a1);
  }

  sub_255D07438();
  v9 = sub_255D066C8();
  sub_255D05D88();

  sub_255D063D8();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t Markdown.init(_:baseURL:imageBaseURL:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = *a1;
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE880);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for Markdown(0);
  v13 = a4 + v12[5];
  *v13 = swift_getKeyPath();
  v13[40] = 0;
  *(a4 + v12[6]) = v11;
  sub_255C7299C(a2, a4 + v12[7], &qword_27F7DDCB0);
  v14 = sub_255D05B78();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(a3, 1, v14) == 1)
  {
    sub_255CA1DEC(a2, v10);
    if (v16(a3, 1, v14) != 1)
    {
      sub_255C76B94(a3, &qword_27F7DDCB0);
    }
  }

  else
  {
    sub_255C76B94(a2, &qword_27F7DDCB0);
    (*(v15 + 32))(v10, a3, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
  }

  return sub_255CA1DEC(v10, a4 + v12[8]);
}

uint64_t Markdown.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Markdown(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_255CAD0AC(v1, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Markdown);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_255CAD1EC(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for Markdown);
  *a1 = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 48) = sub_255CAC5E0;
  *(a1 + 56) = v8;
  sub_255CAAB7C(v20);
  KeyPath = swift_getKeyPath();
  sub_255CAC668(v20, v19);
  v10 = swift_allocObject();
  sub_255CAC668(v19, v10 + 16);
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = sub_255CAC6B8;
  *(a1 + 80) = v10;
  v11 = swift_getKeyPath();
  v12 = *(v4 + 36);
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE888) + 36));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE890);
  sub_255C7299C(v1 + v12, v13 + *(v14 + 28), &qword_27F7DDCB0);
  *v13 = v11;
  v15 = swift_getKeyPath();
  v16 = *(v4 + 40);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE898) + 36));
  result = sub_255C7299C(v1 + v16, v17 + *(v14 + 28), &qword_27F7DDCB0);
  *v17 = v15;
  return result;
}

uint64_t sub_255CAB180@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = sub_255D068B8();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE908);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for ScaledFontSizeModifier(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = sub_255D05F18();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + *(type metadata accessor for Markdown(0) + 24));
  sub_255CAA97C(v19);
  v50 = v19;
  v21 = sub_255CAA6A8(sub_255CAD44C, v49, v20);
  (*(v17 + 8))(v19, v16);
  KeyPath = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v51 = sub_255CD474C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE698);
  sub_255D06D98();
  v40 = v53;
  v41 = v52;
  v39 = sub_255CAA848(0, v21);

  LOBYTE(v51) = 0;
  v54 = 0;
  sub_255C8A1A8();
  sub_255D059E8();
  v38 = v52;
  v37 = swift_getKeyPath();
  v35 = v51;
  v36 = v54;
  sub_255C95C48();
  sub_255D059E8();
  v23 = v52;
  v24 = sub_255D06F58();
  v26 = v25;
  sub_255C73C84();
  sub_255D059E8();
  v27 = type metadata accessor for FontProperties(0);
  if ((*(*(v27 - 8) + 48))(v9, 1, v27) == 1)
  {
    sub_255C76B94(v9, &qword_27F7DD9E0);
    v28 = 17.0;
  }

  else
  {
    v28 = *&v9[*(v27 + 44)];
    sub_255C8A2D0(v9);
  }

  v52 = v28;
  (*(v46 + 104))(v47, *MEMORY[0x277CE0A68], v48);
  sub_255CAD03C();
  v29 = v43;
  sub_255D05FB8();
  (*(v44 + 32))(v13, v29, v45);
  sub_255CAD1EC(v13, v15, type metadata accessor for ScaledFontSizeModifier);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE970);
  result = sub_255CAD1EC(v15, a2 + *(v30 + 36), type metadata accessor for ScaledFontSizeModifier);
  *a2 = KeyPath;
  *(a2 + 8) = v35;
  *(a2 + 16) = v42;
  *(a2 + 24) = v36;
  v32 = v40;
  *(a2 + 32) = v41;
  *(a2 + 40) = v32;
  *(a2 + 48) = v39;
  *(a2 + 56) = sub_255CB255C;
  v33 = v37;
  *(a2 + 64) = 0;
  *(a2 + 72) = v33;
  *(a2 + 80) = v38;
  *(a2 + 88) = v23;
  *(a2 + 96) = v24;
  *(a2 + 104) = v26;
  return result;
}

uint64_t sub_255CAB7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  sub_255C7299C(a1, &v15 - v11, &qword_27F7DDCB0);
  v13 = sub_255C7299C(v12, v10, &qword_27F7DDCB0);
  a5(v13);
  sub_255D06408();
  return sub_255C76B94(v12, &qword_27F7DDCB0);
}

uint64_t Markdown.init(_:baseURL:imageBaseURL:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_255CA7390(a1, a2);

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE880);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for Markdown(0);
  v16 = a5 + v15[5];
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  *(a5 + v15[6]) = v14;
  sub_255C7299C(a3, a5 + v15[7], &qword_27F7DDCB0);
  v17 = sub_255D05B78();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(a4, 1, v17) == 1)
  {
    sub_255CA1DEC(a3, v12);
    if (v19(a4, 1, v17) != 1)
    {
      sub_255C76B94(a4, &qword_27F7DDCB0);
    }
  }

  else
  {
    sub_255C76B94(a3, &qword_27F7DDCB0);
    (*(v18 + 32))(v12, a4, v17);
    (*(v18 + 56))(v12, 0, 1, v17);
  }

  return sub_255CA1DEC(v12, a5 + v15[8]);
}

uint64_t Markdown.init(baseURL:imageBaseURL:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  a3(&v20, v9);
  v12 = v20;
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE880);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for Markdown(0);
  v14 = a4 + v13[5];
  *v14 = swift_getKeyPath();
  v14[40] = 0;
  *(a4 + v13[6]) = v12;
  sub_255C7299C(a1, a4 + v13[7], &qword_27F7DDCB0);
  v15 = sub_255D05B78();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(a2, 1, v15) == 1)
  {
    sub_255CA1DEC(a1, v11);
    if (v17(a2, 1, v15) != 1)
    {
      sub_255C76B94(a2, &qword_27F7DDCB0);
    }
  }

  else
  {
    sub_255C76B94(a1, &qword_27F7DDCB0);
    (*(v16 + 32))(v11, a2, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
  }

  return sub_255CA1DEC(v11, a4 + v13[8]);
}

uint64_t sub_255CABD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  sub_255CAD0AC(v7, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScaledFontSizeModifier);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_255CAD1EC(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ScaledFontSizeModifier);
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_255CAD254;
  *(v11 + 24) = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE930);
  (*(*(v12 - 8) + 16))(a3, a1, v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE938);
  v14 = (a3 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_255CAD320;
  v14[2] = v11;
  return result;
}

uint64_t sub_255CABF80(uint64_t a1)
{
  sub_255C99DF4(a1, v3);
  sub_255C99DF4(v3, &v2);
  sub_255CAD6B0();
  sub_255D06408();
  return sub_255C99E50(v3);
}

uint64_t sub_255CABFE0(uint64_t a1, void (*a2)(void *__return_ptr))
{
  sub_255CAC668(a1, v9);
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  a2(v8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE948);
  sub_255CAD328();
  *(a1 + 24) = type metadata accessor for TextStyleBuilder.Pair();
  *(a1 + 32) = &off_2867D69C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_255CE04B4(v8, v4, v7, boxed_opaque_existential_1);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_255CAC0B8(uint64_t a1, void (*a2)(void *__return_ptr))
{
  sub_255CAC668(a1, v8);
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  a2(v7);
  *(a1 + 24) = type metadata accessor for TextStyleBuilder.Pair();
  *(a1 + 32) = &off_2867D69C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_255CE04B4(v7, v4, &type metadata for FontSize, boxed_opaque_existential_1);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_255CAC180(uint64_t a1, void (*a2)(void *__return_ptr))
{
  sub_255CAC668(a1, v9);
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  a2(v8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE940);
  *(a1 + 24) = type metadata accessor for TextStyleBuilder.Pair();
  *(a1 + 32) = &off_2867D69C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_255CE04B4(v8, v4, v7, boxed_opaque_existential_1);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_255CAC2A0(uint64_t a1)
{
  v2 = sub_255D05F18();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_255D062B8();
}

uint64_t sub_255CAC3D0()
{
  v1 = type metadata accessor for Markdown(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_255D05F18();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v4 + v1[5];
  if (*(v6 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
  }

  v7 = v1[7];
  v8 = sub_255D05B78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v1[8];
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v13, v2 | 7);
}

uint64_t sub_255CAC5E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Markdown(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_255CAB180(v4, a1);
}

uint64_t sub_255CAC668(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_255CAC680()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255CAC7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE8A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_255CAC928(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE8A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_255CACA64()
{
  sub_255CACBCC(319, &qword_27F7DE8B8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_255CACB68();
    if (v1 <= 0x3F)
    {
      sub_255CACBCC(319, &qword_27F7DDED0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255CACB68()
{
  if (!qword_27F7DE8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE8C8);
    v0 = sub_255D05F28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DE8C0);
    }
  }
}

void sub_255CACBCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_255CACCA4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_255C810A8(&qword_27F7DE900, &qword_27F7DE890);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255CACD54()
{
  result = qword_27F7DE8E0;
  if (!qword_27F7DE8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE8E8);
    sub_255C810A8(&qword_27F7DE8F0, &qword_27F7DE8F8);
    sub_255C810A8(&qword_27F7DE4E0, &qword_27F7DE4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE8E0);
  }

  return result;
}

uint64_t sub_255CACE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE908);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255CACED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE908);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_255CACF74()
{
  sub_255CACFE0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_255CACFE0()
{
  if (!qword_27F7DE920)
  {
    sub_255CAD03C();
    v0 = sub_255D05FD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DE920);
    }
  }
}

unint64_t sub_255CAD03C()
{
  result = qword_27F7DE928;
  if (!qword_27F7DE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE928);
  }

  return result;
}

uint64_t sub_255CAD0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255CAD114()
{
  v1 = *(type metadata accessor for ScaledFontSizeModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE908);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_255CAD1EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255CAD254@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ScaledFontSizeModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE908);
  result = sub_255D05FC8();
  *a1 = v3;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_255CAD2E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_255CAD328()
{
  result = qword_27F7DE950;
  if (!qword_27F7DE950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE950);
  }

  return result;
}

unint64_t sub_255CAD3A4()
{
  result = qword_27F7DE958;
  if (!qword_27F7DE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE958);
  }

  return result;
}

unint64_t sub_255CAD3F8()
{
  result = qword_27F7DE960;
  if (!qword_27F7DE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE960);
  }

  return result;
}

uint64_t sub_255CAD468@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D06358();
  *a1 = result;
  return result;
}

uint64_t sub_255CAD494@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D06358();
  *a1 = result;
  return result;
}

uint64_t sub_255CAD510@<X0>(_BYTE *a1@<X8>)
{
  sub_255CAD65C();
  result = sub_255D063F8();
  *a1 = v3;
  return result;
}

uint64_t sub_255CAD5AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255D06308();
  *a1 = result;
  return result;
}

uint64_t sub_255CAD604@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255D06308();
  *a1 = result;
  return result;
}

unint64_t sub_255CAD65C()
{
  result = qword_27F7DE978;
  if (!qword_27F7DE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE978);
  }

  return result;
}

unint64_t sub_255CAD6B0()
{
  result = qword_27F7DE980;
  if (!qword_27F7DE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE980);
  }

  return result;
}

unint64_t sub_255CAD708()
{
  result = qword_27F7DE988;
  if (!qword_27F7DE988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE938);
    sub_255C810A8(&qword_27F7DE990, &qword_27F7DE930);
    sub_255C810A8(&qword_27F7DE4E0, &qword_27F7DE4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE988);
  }

  return result;
}

unint64_t sub_255CAD800()
{
  result = qword_27F7DE998;
  if (!qword_27F7DE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE998);
  }

  return result;
}

char *sub_255CAD854(uint64_t a1, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a2;
  v68 = *&a1;
  v72 = sub_255D060A8();
  v69 = *(v72 - 8);
  v10 = MEMORY[0x28223BE20](v72);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v57 - v13;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE9A8);
  MEMORY[0x28223BE20](v65);
  v64 = &v57 - v14;
  v15 = sub_255D06158();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v71 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE9B0);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE9B8);
  MEMORY[0x28223BE20](v21);
  v23 = (&v57 - v22);
  v24 = sub_255CAE588(&qword_27F7DE9C0);
  sub_255D07398();
  v67 = v24;
  sub_255D073B8();
  v25 = v73;
  v26 = v74;
  if (v74 < v73)
  {
    __break(1u);
LABEL_30:
    v21 = sub_255C96F20(0, *(v21 + 2) + 1, 1, v21);
    goto LABEL_6;
  }

  v27 = *(v18 + 52);
  (*(v16 + 16))(&v20[v27], a6, v15);
  *v23 = v25;
  v23[1] = v26;
  v23[2] = v25;
  (*(v16 + 32))(v71, &v20[v27], v15);
  v28 = v23 + *(v21 + 13);
  sub_255CAE588(&qword_27F7DE9C8);
  sub_255D07238();
  if (v25 != v26)
  {
    v60 = v26;
    v59 = v69 + 16;
    v58 = v69 + 32;
    v32 = v68;
    v57 = v69 + 8;
    v6 = 0.0;
    v26 = MEMORY[0x277D84F90];
    v69 = MEMORY[0x277D84F90];
    v7 = 0.0;
    v63 = v21;
    v62 = v23;
    v61 = v15;
    while (1)
    {
      v71 = v25;
      v33 = v25 + 1;
      v23[2] = v25 + 1;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE9D0) + 36);
      sub_255D073B8();
      if (*&v28[v34] == v73)
      {
        goto LABEL_4;
      }

      v35 = sub_255D073D8();
      v36 = v12;
      v37 = v66;
      v38 = v72;
      (*v59)(v66);
      v35(&v73, 0);
      sub_255D073C8();
      v39 = v64;
      v40 = *(v65 + 48);
      v41 = *v58;
      v42 = v37;
      v12 = v36;
      (*v58)(&v64[v40], v42, v38);
      v41(v36, &v39[v40], v38);
      sub_255D06098();
      LOBYTE(v73) = v70 & 1;
      LOBYTE(v74) = 1;
      sub_255D06078();
      v44 = v43;
      v46 = v45;
      if (v6 <= 0.0 || (v70 & 1) != 0 || v6 + v43 <= v32)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v63;
        v23 = v62;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }
      }

      else
      {

        v47 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_255C96F20(0, *(v47 + 2) + 1, 1, v47);
        }

        v23 = v62;
        v49 = *(v47 + 2);
        v48 = *(v47 + 3);
        v69 = v47;
        v21 = v63;
        if (v49 >= v48 >> 1)
        {
          v69 = sub_255C96F20((v48 > 1), v49 + 1, 1, v69);
        }

        v50 = v69;
        *(v69 + 2) = v49 + 1;
        v51 = &v50[24 * v49];
        *(v51 + 4) = v6 - a3;
        *(v51 + 5) = v7;
        *(v51 + 6) = v26;

        v6 = 0.0;
        v7 = 0.0;
        v26 = MEMORY[0x277D84F90];
      }

      v26 = sub_255C96E04(0, *(v26 + 2) + 1, 1, v26);
LABEL_21:
      v54 = *(v26 + 2);
      v53 = *(v26 + 3);
      if (v54 >= v53 >> 1)
      {
        v26 = sub_255C96E04((v53 > 1), v54 + 1, 1, v26);
      }

      (*v57)(v12, v72);
      *(v26 + 2) = v54 + 1;
      v55 = &v26[24 * v54];
      *(v55 + 4) = v71;
      *(v55 + 5) = v44;
      *(v55 + 6) = v46;
      if (v46 > v7)
      {
        v7 = v46;
      }

      v6 = v44 + a3 + v6;
      v25 = v33;
      if (v60 == v33)
      {
        goto LABEL_4;
      }
    }
  }

  v26 = MEMORY[0x277D84F90];
  v7 = 0.0;
  v6 = 0.0;
  v69 = MEMORY[0x277D84F90];
LABEL_4:
  *(v23 + *(v21 + 14)) = 1;
  sub_255CAE5CC(v23);
  if (!*(v26 + 2))
  {
    v21 = v69;
    goto LABEL_28;
  }

  v21 = v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_6:
  v30 = *(v21 + 2);
  v29 = *(v21 + 3);
  if (v30 >= v29 >> 1)
  {
    v21 = sub_255C96F20((v29 > 1), v30 + 1, 1, v21);
  }

  *(v21 + 2) = v30 + 1;
  v31 = &v21[24 * v30];
  *(v31 + 4) = v6 - a3;
  *(v31 + 5) = v7;
  *(v31 + 6) = v26;
LABEL_28:

  return v21;
}

double sub_255CADFEC(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = (a1 + 40);
  v6 = 0.0;
  result = 0.0;
  do
  {
    if (result <= *(v5 - 1))
    {
      result = *(v5 - 1);
    }

    v8 = v4 + 1;
    if (v4 >= v3 - 1)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = a3;
    }

    v6 = v9 + v6 + *v5;
    v5 += 3;
    ++v4;
  }

  while (v3 != v8);
  return result;
}

char *sub_255CAE054(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, double a6, CGFloat a7, double a8, double a9, double a10, double a11)
{
  v32 = a6;
  v19 = sub_255D060A8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2 & 1;
  v39 = a4 & 1;
  v35 = a11;
  result = sub_255CAD854(a1, a2 & 1, a10, a3, a4 & 1, a5);
  v34 = *(result + 2);
  if (v34)
  {
    v24 = 0;
    v33 = result + 32;
    v31 = result;
    while (v24 < *(result + 2))
    {
      v25 = &v33[24 * v24];
      v26 = *(v25 + 1);
      v27 = *(v25 + 2);
      v28 = *(v27 + 16);
      if (v28)
      {

        v29 = (v27 + 48);
        v30 = v32;
        do
        {
          v42.size.height = *v29;
          v36 = *(v29 - 1);
          v42.size.width = v36;
          v42.origin.x = v30;
          v42.origin.y = a7;
          CGRectOffset(v42, 0.0, v26 - v42.size.height);
          sub_255D06168();
          sub_255D06F88();
          v38 = 0;
          v37 = 0;
          sub_255D06088();
          (*(v20 + 8))(v22, v19);
          v30 = v30 + v36 + a10;
          v29 += 3;
          --v28;
        }

        while (v28);

        result = v31;
      }

      ++v24;
      a7 = a7 + v26 + v35;
      if (v24 == v34)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

double sub_255CAE318(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = *v5;
  v7 = v5[1];
  v8 = sub_255CAD854(a1, a2 & 1, *v5, a3, a4 & 1, a5);
  v9 = sub_255CADFEC(v8, v6, v7);

  return v9;
}

void (*sub_255CAE45C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_255D05ED8();
  return sub_255CAE4E4;
}

void sub_255CAE4E4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_255CAE534()
{
  result = qword_27F7DE9A0;
  if (!qword_27F7DE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE9A0);
  }

  return result;
}

uint64_t sub_255CAE588(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_255D06158();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255CAE5CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE9B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255CAE644(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255CAE68C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t View.markdownTheme(_:)()
{
  swift_getKeyPath();
  sub_255D06A78();
}

uint64_t sub_255CAE750()
{
  sub_255CAD6B0();

  return sub_255D063F8();
}

uint64_t View.markdownTextStyle<A>(_:textStyle:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEB90);
  sub_255D07668();

  v11[3] = a5;
  v11[4] = a7;
  __swift_allocate_boxed_opaque_existential_1(v11);
  a2();
  sub_255D06A78();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t View.markdownBlockStyle<A>(_:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEB98);
  sub_255D07668();

  BlockStyle<A>.init<A>(body:)(a2, a3, a5, a7, &v12);
  sub_255D06A78();
}

uint64_t View.markdownBlockStyle<A, B>(_:body:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  swift_getKeyPath();
  sub_255D075C8();

  v12 = *(*(v11 + *MEMORY[0x277D84308] + 8) + 16);

  BlockStyle.init<A>(body:)(a2, a3, v12, a5, a7, &v14);
  sub_255D06A78();
}

uint64_t sub_255CAEAC8()
{
  swift_getKeyPath();
  sub_255D06A78();
}

uint64_t get_witness_table_7SwiftUI4ViewRz33LegalAndRegulatorySettingsSupport9TextStyleRd__r__lAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAcD_pGGAaBHPxAaBHD1__AiA0cP0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_255D061D8();
  sub_255C74D48(a4, a2);
  return swift_getWitnessTable();
}

uint64_t sub_255CAEC2C()
{
  type metadata accessor for BlockStyle();
  sub_255D066A8();
  sub_255D061D8();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_255CAED14()
{
  if (qword_27F7DD7E0 != -1)
  {
    swift_once();
  }

  return sub_255C99DF4(&unk_27F7DE2B8, &unk_27F7DE9D8);
}

uint64_t sub_255CAED78@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F7DD7F8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_255C99DF4(&unk_27F7DE9D8, v2);
}

uint64_t FontStyle._collectAttributes(in:)()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 32)) = v1;
  }

  (v2)(v7, 0);
}

uint64_t sub_255CAEF28()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 32)) = v1;
  }

  (v2)(v7, 0);
}

uint64_t TextKerning.init(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

unint64_t sub_255CAF084()
{
  result = qword_27F7DEBF0;
  if (!qword_27F7DEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEBF0);
  }

  return result;
}

uint64_t Paragraph._markdownContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 6;
  *a1 = v4;
}

void *Paragraph.init(content:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_255CAF1F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 6;
  *a1 = v4;
}

uint64_t sub_255CAF2B8@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEBF8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = sub_255D063E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v32 = *(v1 + 32);
  v33 = v16;
  v17 = *(v1 + 40);
  if (v15 == 1)
  {
    v41 = v14;
    v42 = v13;
    sub_255C74B94();
    v18 = v14;
  }

  else
  {
    v30 = v10;
    sub_255C74B94();
    sub_255D07438();
    v19 = sub_255D066C8();
    v31 = v4;
    v20 = v19;
    sub_255D05D88();

    v4 = v31;
    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74BA0();
    (*(v9 + 8))(v12, v30);
    v18 = v41;
  }

  v35 = v14;
  v36 = v13;
  LOBYTE(v37) = v15;
  v22 = v32;
  v21 = v33;
  v38 = v33;
  v39 = v32;
  v40 = v17;
  sub_255CAF5DC();
  sub_255CAF868(v7, v4);
  sub_255CAF8D8();
  v23 = sub_255D06E78();
  sub_255CAF9B8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_255D0AA80;
  *(v24 + 32) = v17;
  *(v24 + 40) = 0;
  *(v24 + 48) = 0;
  *(v24 + 56) = 0;
  *(v24 + 64) = 6;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;

  v25 = v18(&v35);

  v26 = sub_255D06DE8();
  result = swift_allocObject();
  *(result + 16) = v21;
  *(result + 24) = v22;
  v28 = v34;
  *v34 = v25;
  v28[1] = v26;
  v28[2] = sub_255CAFA30;
  v28[3] = result;
  return result;
}

uint64_t sub_255CAF5DC()
{
  v1 = type metadata accessor for InlineText();
  MEMORY[0x28223BE20](v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEC10);
  MEMORY[0x28223BE20](v4);
  v6 = (v17 - v5);
  v7 = *(v0 + 40);

  v9 = sub_255CF0400(v8);
  if (v9)
  {
    *v6 = v9;
    swift_storeEnumTagMultiPayload();
    sub_255CAF964();
    sub_255CA4734();
    return sub_255D06528();
  }

  else
  {
    *v3 = swift_getKeyPath();
    v3[40] = 0;
    v11 = v1[5];
    *&v3[v11] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6F8);
    swift_storeEnumTagMultiPayload();
    v12 = v1[6];
    *&v3[v12] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v13 = &v3[v1[7]];
    *v13 = swift_getKeyPath();
    v13[8] = 0;
    v14 = &v3[v1[8]];
    *v14 = swift_getKeyPath();
    v14[440] = 0;
    v15 = &v3[v1[9]];

    v17[1] = sub_255CD484C(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6E8);
    sub_255D06D98();
    v16 = v17[3];
    *v15 = v17[2];
    *(v15 + 1) = v16;
    *&v3[v1[10]] = v7;
    sub_255C9F7D8(v3, v6);
    swift_storeEnumTagMultiPayload();
    sub_255CAF964();
    sub_255CA4734();
    sub_255D06528();
    return sub_255CA478C(v3);
  }
}

uint64_t sub_255CAF868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEBF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255CAF8D8()
{
  result = qword_27F7DEC00;
  if (!qword_27F7DEC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEBF8);
    sub_255CAF964();
    sub_255CA4734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEC00);
  }

  return result;
}

unint64_t sub_255CAF964()
{
  result = qword_27F7DEC08;
  if (!qword_27F7DEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEC08);
  }

  return result;
}

uint64_t sub_255CAF9B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEBF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255CAFA64()
{
  result = qword_27F7DEC18;
  if (!qword_27F7DEC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEC20);
    sub_255CAFAF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEC18);
  }

  return result;
}

unint64_t sub_255CAFAF0()
{
  result = qword_27F7DEC28;
  if (!qword_27F7DEC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEC28);
  }

  return result;
}

uint64_t sub_255CAFB64@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_255D06C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255D0AA80;
  *(inited + 32) = a1;
  sub_255D06038();
  *(inited + 40) = v6;
  v7 = sub_255CD4950(inited);
  result = swift_setDeallocating();
  *a2 = v4;
  a2[1] = v7;
  return result;
}

unint64_t sub_255CAFBFC()
{
  result = sub_255CD4950(MEMORY[0x277D84F90]);
  qword_27F7DEC38 = result;
  return result;
}

uint64_t sub_255CAFC24@<X0>(void *a1@<X8>)
{
  if (qword_27F7DD800 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F7DEC38;
}

uint64_t sub_255CAFC94(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  result = sub_255CAFD1C(v3, sub_255CAFF50, 0, isUniquelyReferenced_nonNull_native, &v6);
  *a1 = v6;
  return result;
}

uint64_t sub_255CAFD1C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v15 = v12;
LABEL_13:
    v16 = (v15 << 9) | (8 * __clz(__rbit64(v10)));
    v17 = *(*(a1 + 56) + v16);
    v37[0] = *(*(a1 + 48) + v16);
    v37[1] = v17;
    a2(v36, v37);
    v18 = v36[0];
    v19 = *&v36[1];
    v20 = *a5;
    v21 = sub_255C7B780(v36[0]);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_24;
    }

    v27 = v22;
    if (v20[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        v33 = v21;
        sub_255C7D770();
        v21 = v33;
      }
    }

    else
    {
      sub_255C7C608(v26, a4 & 1);
      v21 = sub_255C7B780(v18);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_26;
      }
    }

    v10 &= v10 - 1;
    v29 = *a5;
    if (v27)
    {
      v13 = v29[7];
      v14 = *(v13 + 8 * v21);
      if (v14 <= v19)
      {
        v14 = v19;
      }

      *(v13 + 8 * v21) = v14;
    }

    else
    {
      v29[(v21 >> 6) + 8] |= 1 << v21;
      *(v29[6] + 8 * v21) = v18;
      *(v29[7] + 8 * v21) = v19;
      v30 = v29[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v29[2] = v31;
    }

    a4 = 1;
    v12 = v15;
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
    }

    v10 = *(v7 + 8 * v15);
    ++v12;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_255D07708();
  __break(1u);
  return result;
}

double sub_255CAFF50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

uint64_t (*sub_255CAFFA4(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = *(a2 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  (*(v6 + 32))(v8 + v7, a1, a2);
  return sub_255CB0224;
}

uint64_t sub_255CB007C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(a4 + 24))(a1, a3, a4, v8);
  swift_getAssociatedConformanceWitness();
  return sub_255D06E78();
}

uint64_t sub_255CB0174@<X0>(uint64_t *a1@<X8>)
{
  result = (*v1)();
  *a1 = result;
  return result;
}

uint64_t sub_255CB01A4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_255CB0260()
{
  sub_255CAD3F8();

  return sub_255D063F8();
}

uint64_t sub_255CB02A8()
{
  sub_255CAD3A4();

  return sub_255D063F8();
}

uint64_t sub_255CB0340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_255CB04E0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_255CB03B0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = sub_255D05B78();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 1, 1, v5);
}

uint64_t sub_255CB0470@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_255C867BC(v6, a3);
}

unint64_t sub_255CB04E0()
{
  result = qword_27F7DEC78;
  if (!qword_27F7DEC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDCB0);
    sub_255CB0564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEC78);
  }

  return result;
}

unint64_t sub_255CB0564()
{
  result = qword_27F7DDC90;
  if (!qword_27F7DDC90)
  {
    sub_255D05B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDC90);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t DefaultInlineImageProvider.image(with:label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_255CB0684, 0, 0);
}
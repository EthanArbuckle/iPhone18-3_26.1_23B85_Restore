uint64_t sub_1E618A704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E618A4CC(a1, v4, v5, v6);
}

uint64_t sub_1E618A7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E618A820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E618A888(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFA78C;

  return sub_1E6189F74(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1E618A9F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E618AA50(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E618AABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v26;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 192) = a5;
  *(v8 + 16) = a4;
  v9 = sub_1E65D8F28();
  *(v8 + 56) = v9;
  v10 = *(v9 - 8);
  *(v8 + 64) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_1E65D7848();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FB8, &qword_1E65F4690) - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v18 = sub_1E65D8C68();
  *(v8 + 128) = v18;
  v19 = *(v18 - 8);
  *(v8 + 136) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v22 = type metadata accessor for PageMetricsClick();
  *(v8 + 160) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E618AD58, 0, 0);
}

uint64_t sub_1E618AD58()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 72);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v17 = *(v0 + 104);
    v18 = *(v0 + 24);
    v19 = sub_1E65D9D78();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
    (*(v14 + 104))(v12, *MEMORY[0x1E69CBA28], v13);
    v20 = sub_1E65D74E8();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v21 = *(sub_1E65D86A8() - 8);
    v22 = *(v21 + 72);
    v64 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1E65EA670;
    sub_1E65DEAF8();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65DEAD8();
    sub_1E60EF310(v15);
    sub_1E5DFE50C(v17, &qword_1ED0737C8, &unk_1E6605140);
    v23 = sub_1E65DE788();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 48))(v15, 1, v23);
    v26 = *(v0 + 112);
    if (v25 == 1)
    {
      sub_1E5DFE50C(*(v0 + 112), &qword_1ED075FB8, &qword_1E65F4690);
    }

    else
    {
      v28 = *(v0 + 88);
      v27 = *(v0 + 96);
      v62 = *(v0 + 80);
      v29 = *(v0 + 32);
      v30 = *(v0 + 40);
      v31 = *(v0 + 16);
      sub_1E65DE778();
      (*(v24 + 8))(v26, v23);
      v32 = *v30;
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65DE5D8();
      (*(v28 + 8))(v27, v62);
    }

    v33 = *(v0 + 160);
    v34 = *(v0 + 168);
    v35 = *(v0 + 152);
    v36 = *(v0 + 136);
    v58 = v35;
    v59 = *(v0 + 128);
    v60 = *(v0 + 144);
    v61 = *(v0 + 120);
    v37 = *(v0 + 56);
    v63 = *(v0 + 48);
    v38 = *(v0 + 24);
    v39 = *MEMORY[0x1E69CBCC8];
    v40 = *(*(v0 + 64) + 104);
    v40(*(v0 + 72), v39, v37);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v41 = v33[8];
    v42 = sub_1E65DA208();
    (*(*(v42 - 8) + 56))(v34 + v41, 1, 1, v42);
    v43 = sub_1E65DEAF8();
    v65 = v44;
    v40(v34 + v33[14], v39, v37);
    v45 = v33[15];
    v46 = *MEMORY[0x1E69CC498];
    v47 = sub_1E65D9908();
    v48 = *(v47 - 8);
    (*(v48 + 104))(v34 + v45, v46, v47);
    (*(v48 + 56))(v34 + v45, 0, 1, v47);
    v49 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v58, v34, &qword_1ED073578, &qword_1E65F0E60);
    (*(v36 + 32))(v34 + v33[5], v60, v59);
    sub_1E5FAB460(v61, v34 + v33[6], &qword_1ED072340, &qword_1E65EA410);
    *(v34 + v33[7]) = v66;
    v50 = (v34 + v33[9]);
    *v50 = 0;
    v50[1] = 0;
    v51 = (v34 + v33[10]);
    *v51 = 0;
    v51[1] = 0;
    *(v34 + v33[11]) = v49;
    v52 = (v34 + v33[12]);
    *v52 = 0;
    v52[1] = 0;
    v53 = (v34 + v33[13]);
    *v53 = v43;
    v53[1] = v65;
    v54 = *(v63 + 56);
    v67 = (*(v63 + 48) + **(v63 + 48));
    v55 = *(*(v63 + 48) + 4);
    v56 = swift_task_alloc();
    *(v0 + 176) = v56;
    *v56 = v0;
    v56[1] = sub_1E618B3B8;
    v57 = *(v0 + 168);

    return v67(v57);
  }
}

uint64_t sub_1E618B3B8()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1E618B598;
  }

  else
  {
    v3 = sub_1E618B4CC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E618B4CC()
{
  sub_1E5FC0990(v0[21]);
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E618B598()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[9];
  sub_1E5FC0990(v0[21]);

  v8 = v0[1];
  v9 = v0[23];

  return v8();
}

uint64_t sub_1E618B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for PageMetricsClick();
  v7[6] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E618B70C, 0, 0);
}

uint64_t sub_1E618B70C()
{
  v1 = v0[2];
  if ((v1 & 0x1000000000000) != 0 && (v2 = v1 & 0xFFFFFFFFFFFFLL, v2 >= 3))
  {
    if (v2 == 3)
    {
      v7 = v0[8];
      v8 = v0[5];
      v9 = v0[6];
      v11 = v0[3];
      v10 = v0[4];
      v12 = sub_1E65D9D78();
      (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
      v13 = v9[5];
      v14 = *MEMORY[0x1E69CB9E8];
      v15 = sub_1E65D8C68();
      (*(*(v15 - 8) + 104))(v7 + v13, v14, v15);
      v16 = v9[6];
      v17 = sub_1E65D74E8();
      (*(*(v17 - 8) + 56))(v7 + v16, 1, 1, v17);
      v18 = v9[8];
      v19 = sub_1E65DA208();
      (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
      v20 = v9[14];
      v21 = *MEMORY[0x1E69CBCC8];
      v22 = sub_1E65D8F28();
      (*(*(v22 - 8) + 104))(v7 + v20, v21, v22);
      v23 = v9[15];
      v24 = *MEMORY[0x1E69CC498];
      v25 = sub_1E65D9908();
      v26 = *(v25 - 8);
      (*(v26 + 104))(v7 + v23, v24, v25);
      (*(v26 + 56))(v7 + v23, 0, 1, v25);
      v27 = MEMORY[0x1E69E7CC0];
      v28 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v7 + v9[7]) = v27;
      v29 = (v7 + v9[9]);
      *v29 = 0;
      v29[1] = 0;
      v30 = (v7 + v9[10]);
      *v30 = 0;
      v30[1] = 0;
      *(v7 + v9[11]) = v28;
      v31 = (v7 + v9[12]);
      *v31 = 0;
      v31[1] = 0;
      v32 = (v7 + v9[13]);
      *v32 = v11;
      v32[1] = v10;
      v33 = *(v8 + 48);
      v34 = *(v8 + 56);

      v68 = (v33 + *v33);
      v35 = v33[1];
      v36 = swift_task_alloc();
      v0[9] = v36;
      *v36 = v0;
      v36[1] = sub_1E618BDB4;
      v67 = v0[8];
    }

    else
    {
      v38 = v0[6];
      v37 = v0[7];
      v40 = v0[4];
      v39 = v0[5];
      v41 = v0[3];
      v42 = sub_1E65D9D78();
      (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
      v43 = v38[5];
      v44 = *MEMORY[0x1E69CBA68];
      v45 = sub_1E65D8C68();
      (*(*(v45 - 8) + 104))(v37 + v43, v44, v45);
      v46 = v38[6];
      v47 = sub_1E65D74E8();
      (*(*(v47 - 8) + 56))(v37 + v46, 1, 1, v47);
      v48 = v38[8];
      v49 = sub_1E65DA208();
      (*(*(v49 - 8) + 56))(v37 + v48, 1, 1, v49);
      v50 = v38[14];
      v51 = *MEMORY[0x1E69CBCC8];
      v52 = sub_1E65D8F28();
      (*(*(v52 - 8) + 104))(v37 + v50, v51, v52);
      v53 = v38[15];
      v54 = *MEMORY[0x1E69CC498];
      v55 = sub_1E65D9908();
      v56 = *(v55 - 8);
      (*(v56 + 104))(v37 + v53, v54, v55);
      (*(v56 + 56))(v37 + v53, 0, 1, v55);
      v57 = MEMORY[0x1E69E7CC0];
      v58 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v37 + v38[7]) = v57;
      v59 = (v37 + v38[9]);
      *v59 = 0;
      v59[1] = 0;
      v60 = (v37 + v38[10]);
      *v60 = 0;
      v60[1] = 0;
      *(v37 + v38[11]) = v58;
      v61 = (v37 + v38[12]);
      *v61 = 0;
      v61[1] = 0;
      v62 = (v37 + v38[13]);
      *v62 = v41;
      v62[1] = v40;
      v63 = *(v39 + 48);
      v64 = *(v39 + 56);

      v68 = (v63 + *v63);
      v65 = v63[1];
      v66 = swift_task_alloc();
      v0[11] = v66;
      *v66 = v0;
      v66[1] = sub_1E618BF3C;
      v67 = v0[7];
    }

    return v68(v67);
  }

  else
  {
    v4 = v0[7];
    v3 = v0[8];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1E618BDB4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1E618C0C4;
  }

  else
  {
    v3 = sub_1E618BEC8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E618BEC8()
{
  sub_1E5FC0990(v0[8]);
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E618BF3C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1E618C144;
  }

  else
  {
    v3 = sub_1E618C050;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E618C050()
{
  sub_1E5FC0990(v0[7]);
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E618C0C4()
{
  v1 = v0[10];
  v2 = v0[7];
  sub_1E5FC0990(v0[8]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E618C144()
{
  v1 = v0[12];
  v2 = v0[8];
  sub_1E5FC0990(v0[7]);

  v3 = v0[1];

  return v3();
}

uint64_t AppRoutingError.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E618C250()
{
  result = qword_1ED075FC0;
  if (!qword_1ED075FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075FC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppRoutingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppRoutingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E618C3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = sub_1E65E4F38();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E4F68();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  sub_1E61259CC();
  v24 = sub_1E65E63C8();
  (*(v14 + 16))(v17, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v23;
  *(v19 + 24) = a3;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = sub_1E619C678;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_5;
  v20 = _Block_copy(aBlock);

  sub_1E65E4F48();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1E619C9C4(&qword_1EE2D4A00, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  sub_1E65E6738();
  v21 = v24;
  MEMORY[0x1E694DDE0](0, v12, v8, v20);
  _Block_release(v20);

  (*(v27 + 8))(v8, v5);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_1E618C784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1E65E60A8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a3, v6);
  sub_1E65E6058();

  v16 = sub_1E65E6048();
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  (*(v7 + 32))(&v18[v17], v10, v6);
  sub_1E64B80F8(0, 0, v14, &unk_1E65F48E0, v18);
}

uint64_t sub_1E618C998(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a6;
  v6[4] = sub_1E65E6058();
  v6[5] = sub_1E65E6048();
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v6[6] = v9;
  *v9 = v6;
  v9[1] = sub_1E618CAAC;

  return v11();
}

uint64_t sub_1E618CAAC()
{
  v2 = v0;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v10 = *v1;
  *(*v1 + 56) = v2;

  v7 = sub_1E65E5FC8();
  if (v2)
  {
    v8 = sub_1E618CC88;
  }

  else
  {
    v8 = sub_1E618CC08;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E618CC08()
{
  v1 = v0[5];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  sub_1E65E5FF8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E618CC88()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];

  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  sub_1E65E5FE8();
  v4 = v0[1];

  return v4();
}

uint64_t AppCoordinator.navigateToURL(_:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_1E65E5388();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D74E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v6 + 80) + v14 + 8) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v13, v12, v9);
  *(v16 + v14) = v19[0];
  (*(v6 + 32))(v16 + v15, v8, v5);
  v17 = swift_allocObject();
  *(v17 + 16) = "Blackbeard/AppCoordinatorNavigating.swift";
  *(v17 + 24) = 41;
  *(v17 + 32) = 2;
  *(v17 + 40) = 21;
  *(v17 + 48) = &unk_1E65F47C0;
  *(v17 + 56) = v16;

  return sub_1E65DACA8();
}

uint64_t sub_1E618CFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_1E65D74E8();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E618D0AC, 0, 0);
}

uint64_t sub_1E618D0AC()
{
  v28 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  v5 = sub_1E65E3B68();
  v0[11] = __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = *(v3 + 16);
  v0[12] = v6;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    sub_1E619C9C4(&qword_1EE2D71E0, MEMORY[0x1E6968FB0]);
    v14 = sub_1E65E6BC8();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1E5DFD4B0(v14, v16, &v27);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "Incoming external URL: %{mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1E694F1C0](v26, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[14] = v17;
  v19 = v0[5];
  (*(v0[8] + 56))(v0[6], 1, 1, v0[7]);
  v20 = sub_1E618D944();
  v0[15] = v20;
  v21 = swift_task_alloc();
  v0[16] = v21;
  *v21 = v0;
  v21[1] = sub_1E618D384;
  v22 = v0[6];
  v23 = v0[3];
  v24 = v0[4];

  return AppCoordinator.routeURL(_:referrerURL:sourceApplication:annotation:)(v23, v22, 0, 0, v20);
}

uint64_t sub_1E618D384()
{
  v2 = *v1;
  v3 = (*v1)[16];
  v4 = *v1;
  v2[17] = v0;

  v5 = v2[15];
  if (v0)
  {
    sub_1E5DFE50C(v2[6], &qword_1ED072340, &qword_1E65EA410);

    return MEMORY[0x1EEE6DFA0](sub_1E618D540, 0, 0);
  }

  else
  {
    v7 = v2[9];
    v6 = v2[10];
    sub_1E5DFE50C(v2[6], &qword_1ED072340, &qword_1E65EA410);

    v8 = v4[1];

    return v8();
  }
}

uint64_t sub_1E618D540()
{
  v34 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  (*(v0 + 96))(*(v0 + 72), *(v0 + 24), *(v0 + 56));
  v4 = v1;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 72);
    v31 = *(v0 + 64);
    v32 = *(v0 + 112);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33[0] = v11;
    *v10 = 141558530;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2080;
    sub_1E619C9C4(&qword_1EE2D71E0, MEMORY[0x1E6968FB0]);
    v12 = sub_1E65E6BC8();
    v14 = v13;
    v32(v8, v9);
    v15 = sub_1E5DFD4B0(v12, v14, v33);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2082;
    *(v0 + 16) = v7;
    v16 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v17 = sub_1E65E5CE8();
    v19 = sub_1E5DFD4B0(v17, v18, v33);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to route external URL %{mask.hash}s: %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
    v20 = *(v0 + 112);
    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = *(v0 + 56);

    v20(v21, v23);
  }

  v24 = *(v0 + 136);
  v25 = *(v0 + 72);
  v26 = *(v0 + 80);
  v27 = *(v0 + 48);
  swift_willThrow();

  v28 = *(v0 + 8);
  v29 = *(v0 + 136);

  return v28();
}

uint64_t sub_1E618D7EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65D74E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E65E5388() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFA78C;

  return sub_1E618CFA4(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1E618D944()
{
  v0 = sub_1E65E5388();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076008, &qword_1E65F4880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  sub_1E65E5348();
  sub_1E619C9C4(&qword_1EE2D49C0, MEMORY[0x1E69CD838]);
  v6 = sub_1E65E6718();
  v7 = *(v1 + 8);
  v7(v4, v0);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 7;
  }

  *(inited + 32) = v8;
  sub_1E65E5358();
  v9 = sub_1E65E6718();
  v7(v4, v0);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 7;
  }

  *(inited + 33) = v10;
  v11 = *(inited + 32);
  if (v11 == 7)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = sub_1E64F6B18(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1E64F6B18((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v12[v14 + 32] = v11;
    v10 = *(inited + 33);
  }

  if (v10 != 7)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1E64F6B18(0, *(v12 + 2) + 1, 1, v12);
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_1E64F6B18((v15 > 1), v16 + 1, 1, v12);
    }

    *(v12 + 2) = v16 + 1;
    v12[v16 + 32] = v10;
  }

  v17 = sub_1E600C688(v12);

  return v17;
}

uint64_t AppCoordinator.navigateToUserActivity(_:annotation:)(void *a1, uint64_t a2)
{
  v5 = sub_1E65E5388();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v6 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v2;
  (*(v6 + 32))(v9 + v8, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v10 = swift_allocObject();
  *(v10 + 16) = "Blackbeard/AppCoordinatorNavigating.swift";
  *(v10 + 24) = 41;
  *(v10 + 32) = 2;
  *(v10 + 40) = 35;
  *(v10 + 48) = &unk_1E65F47D0;
  *(v10 + 56) = v9;
  v11 = a1;

  return sub_1E65DACA8();
}

uint64_t sub_1E618DD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E618DDB0, 0, 0);
}

uint64_t sub_1E618DDB0()
{
  v22 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1E65E3B68();
  v0[6] = __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 141558274;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2080;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_1E65E5C78();
    v13 = v12;

    v14 = sub_1E5DFD4B0(v11, v13, &v21);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Incoming external User Activity: %{mask.hash}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  v15 = v0[5];
  v16 = sub_1E618D944();
  v0[7] = v16;
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_1E618DFE4;
  v18 = v0[3];
  v19 = v0[4];

  return AppCoordinator.routeUserActivity(_:annotation:)(v18, v16);
}

uint64_t sub_1E618DFE4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E618E120, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E618E120()
{
  v28 = v0;
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  v5 = v4;
  v6 = v1;
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6328();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[9];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27[0] = v12;
    *v11 = 141558530;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2080;
    v13 = v10;
    v14 = [v13 description];
    v15 = sub_1E65E5C78();
    v17 = v16;

    v18 = sub_1E5DFD4B0(v15, v17, v27);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2082;
    v0[2] = v9;
    v19 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v20 = sub_1E65E5CE8();
    v22 = sub_1E5DFD4B0(v20, v21, v27);

    *(v11 + 24) = v22;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "Failed to route external User Activity %{mask.hash}s: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v12, -1, -1);
    MEMORY[0x1E694F1C0](v11, -1, -1);
  }

  v23 = v0[9];
  swift_willThrow();
  v24 = v0[1];
  v25 = v0[9];

  return v24();
}

uint64_t AppCoordinator.navigateToRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for AppEnvironment();
  v86 = *(v3 - 8);
  v4 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v87 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E5388();
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = *(v76 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v72 - v9;
  v10 = sub_1E65E5228();
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E52C8();
  v89 = *(v13 - 8);
  v90 = v13;
  v14 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E5288();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v83 = v21;
  v84 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v72 - v22;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v24 = sub_1E65E3B68();
  __swift_project_value_buffer(v24, qword_1EE2EA2A0);
  v81 = *(v18 + 16);
  v82 = v18 + 16;
  v81(v23, a1, v17);
  v25 = sub_1E65E3B48();
  v26 = sub_1E65E6328();
  v27 = os_log_type_enabled(v25, v26);
  v85 = v18;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v73 = a1;
    v29 = v28;
    v30 = swift_slowAlloc();
    v72 = v4;
    v31 = v30;
    *&v92[0] = v30;
    *v29 = 141558274;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2080;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758]);
    v32 = sub_1E65E6BC8();
    v33 = v17;
    v35 = v34;
    (*(v18 + 8))(v23, v33);
    v36 = sub_1E5DFD4B0(v32, v35, v92);
    v17 = v33;

    *(v29 + 14) = v36;
    _os_log_impl(&dword_1E5DE9000, v25, v26, "Incoming external navigation request: %{mask.hash}s. We wish to only support URLs from external systems going forward.", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v37 = v31;
    v4 = v72;
    MEMORY[0x1E694F1C0](v37, -1, -1);
    v38 = v29;
    a1 = v73;
    MEMORY[0x1E694F1C0](v38, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v23, v17);
  }

  sub_1E65E5278();
  v40 = v89;
  v39 = v90;
  v41 = (*(v89 + 88))(v16, v90);
  v42 = *MEMORY[0x1E69CD7F8];
  (*(v40 + 8))(v16, v39);
  if (v41 != v42)
  {
    goto LABEL_13;
  }

  v43 = v78;
  sub_1E65E5258();
  v45 = v79;
  v44 = v80;
  if ((*(v79 + 88))(v43, v80) != *MEMORY[0x1E69CD728])
  {
    (*(v45 + 8))(v43, v44);
LABEL_13:
    v56 = (v88 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router);
    v57 = *(*__swift_project_boxed_opaque_existential_1((v88 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(v88 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24)) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
    v58 = *__swift_project_boxed_opaque_existential_1(v56, v56[3]);
    v59 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    v60 = v59 + *(type metadata accessor for AppComposer() + 20);
    v61 = v84;
    v81(v84, a1, v17);
    v62 = v87;
    sub_1E5DFA9E0(v58 + v60, v87, type metadata accessor for AppEnvironment);
    sub_1E5DF650C(v56, v92);
    v63 = v85;
    v64 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v65 = (v83 + *(v86 + 80) + v64) & ~*(v86 + 80);
    v66 = (v4 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    (*(v63 + 32))(v67 + v64, v61, v17);
    sub_1E5DFAB80(v62, v67 + v65, type metadata accessor for AppEnvironment);
    sub_1E5DF599C(v92, v67 + v66);
    *(v67 + ((v66 + 47) & 0xFFFFFFFFFFFFFFF8)) = v57;
    v68 = swift_allocObject();
    *(v68 + 16) = "Blackbeard/AppCoordinatorNavigating.swift";
    *(v68 + 24) = 41;
    *(v68 + 32) = 2;
    *(v68 + 40) = 58;
    *(v68 + 48) = &unk_1E65F47E0;
    *(v68 + 56) = v67;

    return sub_1E65DACA8();
  }

  v46 = v74;
  sub_1E65E5248();
  v47 = v75;
  sub_1E65E5378();
  sub_1E619C9C4(&qword_1EE2D49C0, MEMORY[0x1E69CD838]);
  v48 = v77;
  v49 = sub_1E65E6718();
  v50 = *(v76 + 8);
  v50(v47, v48);
  v50(v46, v48);
  sub_1E65E5248();
  sub_1E65E5338();
  v51 = sub_1E65E6718();
  v50(v47, v48);
  v50(v46, v48);
  sub_1E65E5248();
  sub_1E65E5368();
  v52 = sub_1E65E6718();
  v50(v47, v48);
  v50(v46, v48);
  if ((v49 & 1) == 0 && (v51 & 1) == 0 && (v52 & 1) == 0)
  {
    sub_1E5FAA54C();
    v53 = swift_allocError();
    *v54 = 2;
    *(swift_allocObject() + 16) = v53;
    return sub_1E65DACB8();
  }

  v69 = swift_allocObject();
  swift_weakInit();
  v70 = swift_allocObject();
  *(v70 + 16) = v51 & 1;
  *(v70 + 24) = v69;
  *(v70 + 32) = v49 & 1;
  *(v70 + 33) = v52 & 1;
  v71 = swift_allocObject();
  *(v71 + 16) = "Blackbeard/AppCoordinatorNavigating.swift";
  *(v71 + 24) = 41;
  *(v71 + 32) = 2;
  *(v71 + 40) = 93;
  *(v71 + 48) = &unk_1E65F47F0;
  *(v71 + 56) = v70;
  return sub_1E65DACA8();
}

uint64_t sub_1E618ED48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v6 = type metadata accessor for AppAction();
  v5[19] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v8 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v5[21] = v8;
  v5[22] = *(v8 + 64);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v9 = type metadata accessor for RoutingContextAction();
  v5[26] = v9;
  v10 = *(v9 - 8);
  v5[27] = v10;
  v5[28] = *(v10 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v11 = sub_1E65E5288();
  v5[32] = v11;
  v12 = *(v11 - 8);
  v5[33] = v12;
  v13 = *(v12 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E618EF3C, 0, 0);
}

uint64_t sub_1E618EF3C()
{
  v25 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[15];
  v5 = sub_1E65E3B68();
  v0[36] = __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = *(v3 + 16);
  v0[37] = v6;
  v0[38] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[35];
  v11 = v0[32];
  v12 = v0[33];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1E5DFD4B0(v15, v17, &v24);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "Transforming %{mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = swift_task_alloc();
  v0[39] = v19;
  *v19 = v0;
  v19[1] = sub_1E618F1D4;
  v20 = v0[31];
  v22 = v0[15];
  v21 = v0[16];

  return sub_1E6190A1C(v20, v21);
}

uint64_t sub_1E618F1D4()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_1E6190754;
  }

  else
  {
    v3 = sub_1E618F2E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E618F2E8()
{
  v1 = *(v0 + 208);
  sub_1E5DFA9E0(*(v0 + 248), *(v0 + 240), type metadata accessor for RoutingContextAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v3 = *(v0 + 240);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
        sub_1E5F94E00(*(v3 + *(v4 + 48)), *(v3 + *(v4 + 48) + 8));
        v5 = type metadata accessor for RouteDestination;
        v6 = v3;
      }

      else
      {
        v6 = *(v0 + 240);
        v5 = type metadata accessor for RoutingContextAction;
      }

      sub_1E5E26340(v6, v5);
      v13 = *(v0 + 144);
      swift_getKeyPath();
      sub_1E65E4EC8();

      v14 = *(v0 + 72);
      if (v14 == 6)
      {
        swift_beginAccess();
        v15 = qword_1ED075958;
        v14 = qword_1ED075960;
        sub_1E5E05374(qword_1ED075958, qword_1ED075960);
      }

      else
      {
        v15 = *(v0 + 64);
      }

      *(v0 + 392) = v15;
      *(v0 + 400) = v14;
      *(v0 + 408) = __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
      *(v0 + 80) = v15;
      *(v0 + 88) = v14;
      *(v0 + 416) = sub_1E65E6058();
      *(v0 + 424) = sub_1E65E6048();
      v9 = sub_1E65E5FC8();
      v11 = v16;
      v12 = sub_1E618FE78;
      goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1E5DFE50C(*(v0 + 240), &unk_1ED072040, &qword_1E65F0860);
    }
  }

  else
  {
    sub_1E5E26340(*(v0 + 240), type metadata accessor for RouteDestination);
  }

  *(v0 + 328) = __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
  swift_beginAccess();
  v7 = qword_1ED075958;
  v8 = qword_1ED075960;
  *(v0 + 96) = qword_1ED075958;
  *(v0 + 104) = v8;
  *(v0 + 336) = sub_1E65E6058();
  sub_1E5E05374(v7, v8);
  *(v0 + 344) = sub_1E65E6048();
  v9 = sub_1E65E5FC8();
  v11 = v10;
  v12 = sub_1E618F57C;
LABEL_15:

  return MEMORY[0x1EEE6DFA0](v12, v9, v11);
}

uint64_t sub_1E618F57C()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[25];

  v4 = *v2;
  sub_1E5E24114(v0 + 12, v3);
  sub_1E5E0476C(v0[12], v0[13]);

  return MEMORY[0x1EEE6DFA0](sub_1E618F604, 0, 0);
}

uint64_t sub_1E618F604()
{
  v1 = v0[42];
  v3 = v0[19];
  v2 = v0[20];
  v4 = qword_1ED075958;
  v5 = qword_1ED075960;
  *v2 = qword_1ED075958;
  v2[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_1E5E05374(v4, v5);
  v0[44] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E618F6C0, v7, v6);
}

uint64_t sub_1E618F6C0()
{
  v1 = v0[44];
  v2 = v0[20];
  v3 = v0[18];

  sub_1E65E4EE8();
  sub_1E5E26340(v2, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E618F754, 0, 0);
}

uint64_t sub_1E618F754()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  sub_1E5DFA9E0(v0[31], v1, type metadata accessor for RoutingContextAction);
  sub_1E5DFA9E0(v5, v4, type metadata accessor for NavigationControllerRoutingContext);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = (v2 + *(v7 + 80) + v8) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v0[45] = v10;
  sub_1E5DFAB80(v1, v10 + v8, type metadata accessor for RoutingContextAction);
  sub_1E5DFAB80(v4, v10 + v9, type metadata accessor for NavigationControllerRoutingContext);
  v11 = swift_task_alloc();
  v0[46] = v11;
  *(v11 + 16) = &unk_1E65F48D0;
  *(v11 + 24) = v10;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[47] = v13;
  *v13 = v0;
  v13[1] = sub_1E618F930;
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD000000000000011, 0x80000001E6610F30, sub_1E5FFF594, v11, v14);
}

uint64_t sub_1E618F930()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v8 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_1E618FB60;
  }

  else
  {
    v5 = *(v2 + 360);
    v6 = *(v2 + 368);

    v4 = sub_1E618FA54;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E618FA54()
{
  v1 = v0[31];
  sub_1E5E26340(v0[25], type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E26340(v1, type metadata accessor for RoutingContextAction);
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  v10 = v0[20];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E618FB60()
{
  v39 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 248);
  v4 = *(v0 + 200);

  sub_1E5E26340(v4, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E26340(v3, type metadata accessor for RoutingContextAction);
  v5 = *(v0 + 384);
  v6 = *(v0 + 304);
  v7 = *(v0 + 288);
  (*(v0 + 296))(*(v0 + 272), *(v0 + 120), *(v0 + 256));
  v8 = v5;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6328();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v13 = *(v0 + 256);
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v14 = 136446466;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1E5DFD4B0(v15, v17, &v38);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v0 + 112) = v5;
    v19 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v20 = sub_1E65E5CE8();
    v22 = sub_1E5DFD4B0(v20, v21, &v38);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "Failed to apply %{public}s: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v37, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);
  }

  else
  {
    v24 = *(v0 + 264);
    v23 = *(v0 + 272);
    v25 = *(v0 + 256);

    (*(v24 + 8))(v23, v25);
  }

  v27 = *(v0 + 272);
  v26 = *(v0 + 280);
  v29 = *(v0 + 240);
  v28 = *(v0 + 248);
  v30 = *(v0 + 232);
  v32 = *(v0 + 192);
  v31 = *(v0 + 200);
  v33 = *(v0 + 184);
  v34 = *(v0 + 160);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1E618FE78()
{
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[23];

  v4 = *v2;
  sub_1E5E24114(v0 + 10, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E618FEF8, 0, 0);
}

uint64_t sub_1E618FEF8()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 152);
  **(v0 + 160) = *(v0 + 392);
  swift_storeEnumTagMultiPayload();
  *(v0 + 432) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E618FF9C, v4, v3);
}

uint64_t sub_1E618FF9C()
{
  v1 = v0[54];
  v2 = v0[20];
  v3 = v0[18];

  sub_1E65E4EE8();
  sub_1E5E26340(v2, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E6190030, 0, 0);
}

uint64_t sub_1E6190030()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  sub_1E5DFA9E0(v0[31], v1, type metadata accessor for RoutingContextAction);
  sub_1E5DFA9E0(v5, v4, type metadata accessor for NavigationControllerRoutingContext);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = (v2 + *(v7 + 80) + v8) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v0[55] = v10;
  sub_1E5DFAB80(v1, v10 + v8, type metadata accessor for RoutingContextAction);
  sub_1E5DFAB80(v4, v10 + v9, type metadata accessor for NavigationControllerRoutingContext);
  v11 = swift_task_alloc();
  v0[56] = v11;
  *(v11 + 16) = &unk_1E65F48C0;
  *(v11 + 24) = v10;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[57] = v13;
  *v13 = v0;
  v13[1] = sub_1E619020C;
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD000000000000011, 0x80000001E6610F30, sub_1E5FFEB84, v11, v14);
}

uint64_t sub_1E619020C()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v8 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_1E619043C;
  }

  else
  {
    v5 = *(v2 + 440);
    v6 = *(v2 + 448);

    v4 = sub_1E6190330;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6190330()
{
  v1 = v0[31];
  sub_1E5E26340(v0[23], type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E26340(v1, type metadata accessor for RoutingContextAction);
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  v10 = v0[20];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E619043C()
{
  v39 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 248);
  v4 = *(v0 + 184);

  sub_1E5E26340(v4, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E26340(v3, type metadata accessor for RoutingContextAction);
  v5 = *(v0 + 464);
  v6 = *(v0 + 304);
  v7 = *(v0 + 288);
  (*(v0 + 296))(*(v0 + 272), *(v0 + 120), *(v0 + 256));
  v8 = v5;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6328();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v13 = *(v0 + 256);
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v14 = 136446466;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1E5DFD4B0(v15, v17, &v38);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v0 + 112) = v5;
    v19 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v20 = sub_1E65E5CE8();
    v22 = sub_1E5DFD4B0(v20, v21, &v38);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "Failed to apply %{public}s: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v37, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);
  }

  else
  {
    v24 = *(v0 + 264);
    v23 = *(v0 + 272);
    v25 = *(v0 + 256);

    (*(v24 + 8))(v23, v25);
  }

  v27 = *(v0 + 272);
  v26 = *(v0 + 280);
  v29 = *(v0 + 240);
  v28 = *(v0 + 248);
  v30 = *(v0 + 232);
  v32 = *(v0 + 192);
  v31 = *(v0 + 200);
  v33 = *(v0 + 184);
  v34 = *(v0 + 160);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1E6190754()
{
  v35 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  (*(v0 + 296))(*(v0 + 272), *(v0 + 120), *(v0 + 256));
  v4 = v1;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 256);
    v10 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v10 = 136446466;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758]);
    v11 = sub_1E65E6BC8();
    v13 = v12;
    (*(v8 + 8))(v7, v9);
    v14 = sub_1E5DFD4B0(v11, v13, &v34);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 112) = v1;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v16 = sub_1E65E5CE8();
    v18 = sub_1E5DFD4B0(v16, v17, &v34);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to apply %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v33, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 256);

    (*(v20 + 8))(v19, v21);
  }

  v23 = *(v0 + 272);
  v22 = *(v0 + 280);
  v25 = *(v0 + 240);
  v24 = *(v0 + 248);
  v26 = *(v0 + 232);
  v28 = *(v0 + 192);
  v27 = *(v0 + 200);
  v29 = *(v0 + 184);
  v30 = *(v0 + 160);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1E6190A1C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FE0, &unk_1E660F450) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = sub_1E65E5228();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = sub_1E65E5388();
  v3[14] = v8;
  v9 = *(v8 - 8);
  v3[15] = v9;
  v10 = *(v9 + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = sub_1E65E5238();
  v3[17] = v11;
  v12 = *(v11 - 8);
  v3[18] = v12;
  v13 = *(v12 + 64) + 15;
  v3[19] = swift_task_alloc();
  v14 = *(*(type metadata accessor for RouteSource(0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = sub_1E65E52C8();
  v3[21] = v15;
  v16 = *(v15 - 8);
  v3[22] = v16;
  v17 = *(v16 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v18 = type metadata accessor for RouteResource();
  v3[25] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v20 = type metadata accessor for RouteDestination();
  v3[27] = v20;
  v21 = *(v20 - 8);
  v3[28] = v21;
  v22 = *(v21 + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6190D08, 0, 0);
}

uint64_t sub_1E6190D08()
{
  v1 = v0[24];
  v2 = v0[7];
  sub_1E65E5278();
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_1E6190DB0;
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[6];

  return sub_1E61948E4(v4, v6);
}

uint64_t sub_1E6190DB0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  v2[31] = v0;

  v5 = v2[24];
  v6 = v2[22];
  v7 = v2[21];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v9(v5, v7);
    v11 = sub_1E6191A7C;
  }

  else
  {
    v2[32] = v9;
    v2[33] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = sub_1E6190F30;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1E6190F30()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 56);
  sub_1E65E5268();
  sub_1E6194588(v2);
  if (v1)
  {
    v5 = *(v0 + 208);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    v6 = type metadata accessor for RouteResource;
LABEL_3:
    sub_1E5E26340(v5, v6);
LABEL_4:
    v7 = *(v0 + 232);
    v8 = *(v0 + 208);
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 128);
    v14 = *(v0 + 104);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v128 = *(v0 + 64);

    v17 = *(v0 + 8);
    goto LABEL_14;
  }

  v18 = *(v0 + 232);
  v19 = *(v0 + 216);
  v126 = *(v0 + 208);
  v129 = *(v0 + 160);
  v21 = *(v0 + 120);
  v20 = *(v0 + 128);
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  v24 = *(v0 + 96);
  v131 = *(v0 + 88);
  v25 = *(v0 + 56);
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  sub_1E65E5248();
  v26 = sub_1E618D944();
  v27 = v20;
  v28 = v26;
  (*(v21 + 8))(v27, v23);
  v29 = v19;
  sub_1E5DFAB80(v126, v18, type metadata accessor for RouteResource);
  v30 = *(v19 + 20);
  sub_1E5DFAB80(v129, v18 + v30, type metadata accessor for RouteSource);
  v31 = *(v19 + 24);
  v32 = v18;
  *(v18 + v31) = v28;
  sub_1E65E5258();
  v33 = (*(v24 + 88))(v22, v131);
  if (v33 == *MEMORY[0x1E69CD700])
  {
    v35 = *(v0 + 256);
    v34 = *(v0 + 264);
    v36 = *(v0 + 232);
    v38 = *(v0 + 176);
    v37 = *(v0 + 184);
    v39 = *(v0 + 168);
    v40 = *(v0 + 104);
    v41 = *(v0 + 56);
    v42 = *(v0 + 40);
    (*(*(v0 + 96) + 96))(v40, *(v0 + 88));
    v132 = *v40;
    sub_1E65E5278();
    LODWORD(v40) = (*(v38 + 88))(v37, v39);
    LODWORD(v38) = *MEMORY[0x1E69CD7C8];
    v35(v37, v39);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
    v44 = v42 + *(v43 + 48);
    v45 = *(v43 + 64);
    sub_1E5DFAB80(v36, v42, type metadata accessor for RouteDestination);
    *v44 = 0;
    v46 = *(v0 + 40);
    if (v40 == v38)
    {
      *(v44 + 8) = 0;
    }

    else
    {
      *(v44 + 8) = -64;
    }

    *(v42 + v45) = v132;
    goto LABEL_12;
  }

  if (v33 != *MEMORY[0x1E69CD720])
  {
    if (v33 == *MEMORY[0x1E69CD728])
    {
      v62 = *(v0 + 224);
      v63 = *(v0 + 216);
      v65 = *(v0 + 96);
      v64 = *(v0 + 104);
      v66 = *(v0 + 88);
      v67 = *(v0 + 40);
      sub_1E5E26340(*(v0 + 232), type metadata accessor for RouteDestination);
      (*(v65 + 96))(v64, v66);
      LOBYTE(v64) = *v64;
      v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF8, &qword_1E65F4878) + 48);
      (*(v62 + 56))(v67, 1, 1, v63);
      *(v67 + v68) = v64;
      type metadata accessor for RoutingContextAction();
      goto LABEL_13;
    }

    if (v33 == *MEMORY[0x1E69CD710])
    {
      v134 = *(v0 + 232);
      v69 = *(v0 + 200);
      v70 = *(v0 + 104);
      v71 = *(v0 + 40);
      (*(*(v0 + 96) + 96))(v70, *(v0 + 88));
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
      v73 = v71 + *(v72 + 48);
      v74 = *(v72 + 64);
      v75 = sub_1E65DB718();
      (*(*(v75 - 8) + 32))(v71, v70, v75);
      swift_storeEnumTagMultiPayload();
      sub_1E5DFA9E0(v32 + v30, v71 + *(v29 + 20), type metadata accessor for RouteSource);

      sub_1E5E26340(v134, type metadata accessor for RouteDestination);
      *(v71 + *(v29 + 24)) = v28;
      *v73 = 2;
      *(v73 + 8) = -64;
      *(v71 + v74) = 1;
LABEL_12:
      type metadata accessor for RoutingContextAction();
      goto LABEL_13;
    }

    if (v33 == *MEMORY[0x1E69CD718])
    {
      v135 = *(v0 + 232);
      v76 = *(v0 + 200);
      v77 = *(v0 + 104);
      v78 = *(v0 + 40);
      (*(*(v0 + 96) + 96))(v77, *(v0 + 88));
      v79 = *v77;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
      v81 = v78 + *(v80 + 48);
      v82 = *(v80 + 64);
      *v78 = v79;
      *(v78 + 8) = 0;
      *(v78 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1E5DFA9E0(v32 + v30, v78 + *(v29 + 20), type metadata accessor for RouteSource);

      sub_1E5E26340(v135, type metadata accessor for RouteDestination);
      *(v78 + *(v29 + 24)) = v28;
      *v81 = 2;
      *(v81 + 8) = -64;
      *(v78 + v82) = 1;
      goto LABEL_12;
    }

    if (v33 != *MEMORY[0x1E69CD708])
    {
      v90 = *(v0 + 232);
      v91 = *(v0 + 96);
      v92 = *(v0 + 104);
      v93 = *(v0 + 88);
      sub_1E6060374();
      swift_allocError();
      *v94 = 1;
      swift_willThrow();
      sub_1E5E26340(v90, type metadata accessor for RouteDestination);
      (*(v91 + 8))(v92, v93);
      goto LABEL_4;
    }

    v83 = *(v0 + 104);
    v84 = *(v0 + 80);
    (*(*(v0 + 96) + 96))(v83, *(v0 + 88));
    v85 = *v83;
    v86 = *(v83 + 8);
    v87 = v83[3];
    v136 = v83[2];
    v88 = v83[4];
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FE8, &qword_1E65F4870);
    sub_1E61992D0(v83 + *(v89 + 80), v84);
    if (v86 == 1)
    {

      goto LABEL_32;
    }

    v125 = v85;
    v127 = v28;
    v130 = v87;
    v95 = *(v0 + 72);
    sub_1E5DFD1CC(*(v0 + 80), v95, &qword_1ED075FE0, &unk_1E660F450);
    v96 = sub_1E65D8668();
    v97 = *(v96 - 8);
    v98 = *(v97 + 48);
    if (v98(v95, 1, v96) == 1)
    {
      v99 = *(v0 + 72);
    }

    else
    {
      v122 = v29;
      v101 = *(v0 + 72);
      v100 = *(v0 + 80);
      v102 = *(v0 + 64);
      v121 = sub_1E65D8528();
      v124 = v103;
      v123 = *(v97 + 8);
      v123(v101, v96);
      sub_1E5DFD1CC(v100, v102, &qword_1ED075FE0, &unk_1E660F450);
      v104 = v98(v102, 1, v96);
      v99 = *(v0 + 64);
      if (v104 != 1)
      {
        v107 = sub_1E65D8658();
        v109 = v108;
        v111 = v110;
        v123(v99, v96);
        *(v0 + 16) = v107;
        *(v0 + 24) = v109;
        *(v0 + 32) = v111 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
        sub_1E65D7FB8();
        sub_1E5F87058(v107, v109, v111 & 1);
        v112 = *(v0 + 33);
        if (v112 != 4)
        {
          v113 = *(v0 + 232);
          v114 = *(v0 + 200);
          v115 = *(v0 + 40);
          sub_1E5DFE50C(*(v0 + 80), &qword_1ED075FE0, &unk_1E660F450);
          v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
          v117 = v115 + *(v116 + 48);
          v118 = *(v116 + 64);
          v119 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
          *v115 = v136;
          *(v115 + 8) = v130;
          *(v115 + 16) = v121;
          *(v115 + 24) = v124;
          *(v115 + 32) = v125;
          *(v115 + 40) = v112;
          *(v115 + 48) = v88;
          v120 = sub_1E65D96F8();
          (*(*(v120 - 8) + 56))(v115 + v119, 1, 1, v120);
          swift_storeEnumTagMultiPayload();
          sub_1E5DFA9E0(v32 + v30, v115 + *(v122 + 20), type metadata accessor for RouteSource);

          sub_1E5E26340(v113, type metadata accessor for RouteDestination);
          *(v115 + *(v122 + 24)) = v127;
          *v117 = 2;
          *(v117 + 8) = -64;
          *(v115 + v118) = 1;
          goto LABEL_12;
        }

LABEL_32:
        v5 = *(v0 + 232);
        v105 = *(v0 + 80);
        sub_1E6060374();
        swift_allocError();
        *v106 = 0;
        swift_willThrow();
        sub_1E5DFE50C(v105, &qword_1ED075FE0, &unk_1E660F450);
        v6 = type metadata accessor for RouteDestination;
        goto LABEL_3;
      }
    }

    sub_1E5DFE50C(v99, &qword_1ED075FE0, &unk_1E660F450);
    goto LABEL_32;
  }

  v47 = *(v0 + 232);
  v48 = *(v0 + 104);
  v49 = *(v0 + 40);
  (*(*(v0 + 96) + 96))(v48, *(v0 + 88));
  LOBYTE(v48) = *v48;
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076000, &unk_1E65F5550) + 48);
  sub_1E5DFAB80(v47, v49, type metadata accessor for RouteDestination);
  *(v49 + v50) = v48;
  type metadata accessor for RoutingContextAction();
LABEL_13:
  swift_storeEnumTagMultiPayload();
  v51 = *(v0 + 232);
  v52 = *(v0 + 208);
  v54 = *(v0 + 184);
  v53 = *(v0 + 192);
  v56 = *(v0 + 152);
  v55 = *(v0 + 160);
  v57 = *(v0 + 128);
  v58 = *(v0 + 104);
  v60 = *(v0 + 72);
  v59 = *(v0 + 80);
  v133 = *(v0 + 64);

  v17 = *(v0 + 8);
LABEL_14:

  return v17();
}

uint64_t sub_1E6191A7C()
{
  v1 = v0[29];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[9];
  v10 = v0[10];
  v13 = v0[8];
  v14 = v0[31];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E6191B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E6191B94, 0, 0);
}

uint64_t sub_1E6191B94()
{
  v1 = *(v0 + 64);
  *(v0 + 40) = type metadata accessor for NavigationControllerRoutingContext();
  *(v0 + 48) = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1E5DFA9E0(v1, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  *(v0 + 88) = 0;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1E6191C78;
  v4 = *(v0 + 56);

  return sub_1E61B7C00(v0 + 16, (v0 + 88));
}

uint64_t sub_1E6191C78()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E619CA0C, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1E6191DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E6191DD4, 0, 0);
}

uint64_t sub_1E6191DD4()
{
  v1 = *(v0 + 64);
  *(v0 + 40) = type metadata accessor for NavigationControllerRoutingContext();
  *(v0 + 48) = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1E5DFA9E0(v1, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  *(v0 + 88) = 0;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1E6191EB8;
  v4 = *(v0 + 56);

  return sub_1E61B7C00(v0 + 16, (v0 + 88));
}

uint64_t sub_1E6191EB8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6191FF4, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1E6191FF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_1E6192058(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 179) = a5;
  *(v5 + 178) = a4;
  *(v5 + 96) = a3;
  *(v5 + 177) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6192084, 0, 0);
}

uint64_t sub_1E6192084()
{
  if (*(v0 + 177) == 1)
  {
    v1 = *(v0 + 96);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 104) = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      *(v0 + 112) = v3;
      *v3 = v0;
      v3[1] = sub_1E61922B8;
      v4 = 1;
LABEL_7:

      return AppCoordinator.onTabSwitch(isReselection:)(v4);
    }

    goto LABEL_15;
  }

  if (*(v0 + 178) == 1)
  {
    v5 = *(v0 + 96);
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    *(v0 + 128) = v6;
    if (v6)
    {
      v7 = swift_task_alloc();
      *(v0 + 136) = v7;
      *v7 = v0;
      v7[1] = sub_1E61923F4;
      v4 = 0;
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (*(v0 + 179) != 1 || (v9 = *(v0 + 96), swift_beginAccess(), v10 = swift_weakLoadStrong(), (*(v0 + 152) = v10) == 0))
  {
LABEL_15:
    v12 = *(v0 + 8);

    return v12();
  }

  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_1E6192530;

  return AppCoordinator.onAppLaunch(connectionOptions:)(v0 + 176, 0);
}

uint64_t sub_1E61922B8()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E619264C, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E61923F4()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6192814, 0, 0);
  }

  else
  {
    v4 = v3[16];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E6192530()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1E61929DC;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_1E5E1CF6C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E619264C()
{
  v16 = v0;
  v1 = v0[13];

  v2 = v0[15];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v0[11] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v10 = sub_1E65E5CE8();
    v12 = sub_1E5DFD4B0(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to route root request: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_1E6192814()
{
  v16 = v0;
  v1 = v0[16];

  v2 = v0[18];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v0[11] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v10 = sub_1E65E5CE8();
    v12 = sub_1E5DFD4B0(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to route root request: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_1E61929DC()
{
  v16 = v0;
  v1 = v0[19];

  v2 = v0[21];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v0[11] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v10 = sub_1E65E5CE8();
    v12 = sub_1E5DFD4B0(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to route root request: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_1E6192BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = *(*(type metadata accessor for RoutingContextAction() - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70) - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for NavigationControllerRoutingContext();
  v6[24] = v9;
  v10 = *(v9 - 8);
  v6[25] = v10;
  v11 = *(v10 + 64) + 15;
  v6[26] = swift_task_alloc();
  v12 = sub_1E65E5288();
  v6[27] = v12;
  v13 = *(v12 - 8);
  v6[28] = v13;
  v14 = *(v13 + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FC8, &qword_1E65F4800) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FD0, &qword_1E65F4808);
  v6[32] = v16;
  v17 = *(v16 - 8);
  v6[33] = v17;
  v18 = *(v17 + 64) + 15;
  v6[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6192DD4, 0, 0);
}

uint64_t sub_1E6192DD4()
{
  v1 = v0[34];
  v2 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FD8, &qword_1E65F4810);
  sub_1E65E60F8();
  v0[35] = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router;
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_1E6192EAC;
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[32];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v7);
}

uint64_t sub_1E6192EAC()
{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6192FA8, 0, 0);
}

uint64_t sub_1E6192FA8()
{
  v39 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
LABEL_12:
    v25 = *(v0 + 272);
    v26 = *(v0 + 240);
    v27 = *(v0 + 248);
    v28 = *(v0 + 232);
    v29 = *(v0 + 208);
    v31 = *(v0 + 176);
    v30 = *(v0 + 184);

    v32 = *(v0 + 8);

    return v32();
  }

  v4 = (*(v0 + 160) + *(v0 + 280));
  (*(v3 + 32))(*(v0 + 240), v1, v2);
  *(v0 + 296) = *(*__swift_project_boxed_opaque_existential_1(v4, v4[3]) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
  swift_getKeyPath();

  sub_1E65E4EC8();

  v5 = *(v0 + 88);
  *(v0 + 304) = *(v0 + 80);
  *(v0 + 312) = v5;
  if (v5 == 6)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v6 = sub_1E65E3B68();
    __swift_project_value_buffer(v6, qword_1EE2EA2A0);

    v7 = sub_1E65E3B48();
    v8 = sub_1E65E6328();

    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    v12 = *(v0 + 256);
    v13 = *(v0 + 240);
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    if (v9)
    {
      v37 = *(v0 + 216);
      v16 = swift_slowAlloc();
      v36 = v12;
      v17 = swift_slowAlloc();
      v38 = v17;
      *v16 = 136315138;
      swift_getKeyPath();
      v34 = v13;
      v35 = v10;
      sub_1E65E4EC8();

      *(v0 + 112) = *(v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A08, &qword_1E65EC2A0);
      v18 = sub_1E65E6648();
      v20 = v19;
      sub_1E5E07DA0(*(v0 + 96), *(v0 + 104));
      v21 = sub_1E5DFD4B0(v18, v20, &v38);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1E5DE9000, v7, v8, "No valid selected root item for Navigation Request Stream: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E694F1C0](v17, -1, -1);
      MEMORY[0x1E694F1C0](v16, -1, -1);

      (*(v14 + 8))(v34, v37);
      (*(v11 + 8))(v35, v36);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
      (*(v11 + 8))(v10, v12);
    }

    goto LABEL_12;
  }

  v22 = (*(v0 + 160) + *(v0 + 280));
  *(v0 + 320) = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1E65E6058();
  *(v0 + 328) = sub_1E65E6048();
  v24 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61933C8, v24, v23);
}

uint64_t sub_1E61933C8()
{
  v2 = v0[40];
  v1 = v0[41];

  v3 = *v2;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v4 = sub_1E65E3B68();
  v0[42] = __swift_project_value_buffer(v4, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v5 = OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (*(v6 + 16) && (v7 = sub_1E5E2575C(v0[38], v0[39]), (v8 & 1) != 0))
  {
    sub_1E5DFA9E0(*(v6 + 56) + *(v0[25] + 72) * v7, v0[23], type metadata accessor for NavigationControllerRoutingContext);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  (*(v0[25] + 56))(v0[23], v9, 1, v0[24]);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1E6193550, 0, 0);
}

uint64_t sub_1E6193550()
{
  v50 = v0;
  v1 = v0[23];
  if ((*(v0[25] + 48))(v1, 1, v0[24]) == 1)
  {
    sub_1E5DFE50C(v1, &qword_1ED072A30, &qword_1E65EEA70);
    sub_1E5FAA54C();
    v2 = swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v4 = v0[42];
    v6 = v0[38];
    v5 = v0[39];
    (*(v0[28] + 16))(v0[29], v0[30], v0[27]);
    sub_1E5FED40C(v6, v5);
    v7 = v2;
    v8 = sub_1E65E3B48();
    LOBYTE(v4) = sub_1E65E6328();
    sub_1E5E07DA0(v6, v5);

    v48 = v4;
    v9 = os_log_type_enabled(v8, v4);
    v11 = v0[38];
    v10 = v0[39];
    v12 = v0[29];
    v13 = v0[30];
    v14 = v0[27];
    v15 = (v0[28] + 8);
    if (v9)
    {
      v47 = v0[37];
      v16 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49[0] = v45;
      *v16 = 136446722;
      sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758]);
      v17 = sub_1E65E6BC8();
      v18 = v14;
      log = v8;
      v44 = v14;
      v19 = v17;
      v46 = v13;
      v21 = v20;
      v22 = *v15;
      (*v15)(v12, v18);
      v23 = sub_1E5DFD4B0(v19, v21, v49);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2082;
      v0[16] = v11;
      v0[17] = v10;
      v24 = sub_1E65E5CE8();
      v26 = sub_1E5DFD4B0(v24, v25, v49);

      *(v16 + 14) = v26;
      *(v16 + 22) = 2082;
      v0[18] = v2;
      v27 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
      v28 = sub_1E65E5CE8();
      v30 = sub_1E5DFD4B0(v28, v29, v49);

      *(v16 + 24) = v30;
      _os_log_impl(&dword_1E5DE9000, log, v48, "Failed to apply %{public}s to %{public}s: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v45, -1, -1);
      MEMORY[0x1E694F1C0](v16, -1, -1);

      v22(v46, v44);
    }

    else
    {

      sub_1E5E07DA0(v11, v10);

      v37 = *v15;
      (*v15)(v12, v14);
      v37(v13, v14);
    }

    v38 = *(MEMORY[0x1E69E8678] + 4);
    v39 = swift_task_alloc();
    v0[36] = v39;
    *v39 = v0;
    v39[1] = sub_1E6192EAC;
    v40 = v0[34];
    v41 = v0[31];
    v42 = v0[32];

    return MEMORY[0x1EEE6D9C8](v41, 0, 0, v42);
  }

  else
  {
    v31 = v0[42];
    sub_1E5DFAB80(v1, v0[26], type metadata accessor for NavigationControllerRoutingContext);
    sub_1E65E3B18();
    v32 = swift_task_alloc();
    v0[43] = v32;
    *v32 = v0;
    v32[1] = sub_1E6193A00;
    v33 = v0[30];
    v35 = v0[21];
    v34 = v0[22];

    return sub_1E6190A1C(v34, v35);
  }
}

uint64_t sub_1E6193A00()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_1E6193E30;
  }

  else
  {
    v3 = sub_1E6193B14;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6193B14()
{
  v1 = *(v0 + 208);
  *(v0 + 40) = *(v0 + 192);
  *(v0 + 48) = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1E5DFA9E0(v1, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  *(v0 + 376) = 0;
  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  *v3 = v0;
  v3[1] = sub_1E6193BF0;
  v4 = *(v0 + 176);

  return sub_1E61B7C00(v0 + 16, (v0 + 376));
}

uint64_t sub_1E6193BF0()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v6 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = sub_1E61941C8;
  }

  else
  {
    sub_1E5E07DA0(*(v2 + 304), *(v2 + 312));
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1E6193D14;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6193D14()
{
  v1 = v0[37];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[26];
  v6 = v0[22];

  sub_1E5E26340(v6, type metadata accessor for RoutingContextAction);
  sub_1E5E26340(v5, type metadata accessor for NavigationControllerRoutingContext);
  (*(v4 + 8))(v2, v3);
  v7 = *(MEMORY[0x1E69E8678] + 4);
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_1E6192EAC;
  v9 = v0[34];
  v10 = v0[31];
  v11 = v0[32];

  return MEMORY[0x1EEE6D9C8](v10, 0, 0, v11);
}

uint64_t sub_1E6193E30()
{
  v45 = v0;
  sub_1E5E26340(v0[26], type metadata accessor for NavigationControllerRoutingContext);
  v1 = v0[44];
  v2 = v0[42];
  v4 = v0[38];
  v3 = v0[39];
  (*(v0[28] + 16))(v0[29], v0[30], v0[27]);
  sub_1E5FED40C(v4, v3);
  v5 = v1;
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6328();
  sub_1E5E07DA0(v4, v3);

  if (os_log_type_enabled(v6, v7))
  {
    v38 = v0[38];
    v39 = v0[39];
    v42 = v0[37];
    v43 = v0[30];
    v41 = v7;
    v9 = v0[28];
    v8 = v0[29];
    v10 = v0[27];
    v11 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v11 = 136446722;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758]);
    v12 = sub_1E65E6BC8();
    v14 = v13;
    v15 = *(v9 + 8);
    v15(v8, v10);
    v16 = sub_1E5DFD4B0(v12, v14, &v44);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    v0[16] = v38;
    v0[17] = v39;
    v17 = sub_1E65E5CE8();
    v19 = sub_1E5DFD4B0(v17, v18, &v44);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2082;
    v0[18] = v1;
    v20 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v21 = sub_1E65E5CE8();
    v23 = sub_1E5DFD4B0(v21, v22, &v44);

    *(v11 + 24) = v23;
    _os_log_impl(&dword_1E5DE9000, v6, v41, "Failed to apply %{public}s to %{public}s: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v40, -1, -1);
    MEMORY[0x1E694F1C0](v11, -1, -1);

    v15(v43, v10);
  }

  else
  {
    v25 = v0[38];
    v24 = v0[39];
    v26 = v0[37];
    v28 = v0[29];
    v27 = v0[30];
    v29 = v0[27];
    v30 = v0[28];

    sub_1E5E07DA0(v25, v24);

    v31 = *(v30 + 8);
    v31(v28, v29);
    v31(v27, v29);
  }

  v32 = *(MEMORY[0x1E69E8678] + 4);
  v33 = swift_task_alloc();
  v0[36] = v33;
  *v33 = v0;
  v33[1] = sub_1E6192EAC;
  v34 = v0[34];
  v35 = v0[31];
  v36 = v0[32];

  return MEMORY[0x1EEE6D9C8](v35, 0, 0, v36);
}

uint64_t sub_1E61941C8()
{
  v46 = v0;
  v1 = v0[26];
  sub_1E5E26340(v0[22], type metadata accessor for RoutingContextAction);
  sub_1E5E26340(v1, type metadata accessor for NavigationControllerRoutingContext);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[46];
  v3 = v0[42];
  v5 = v0[38];
  v4 = v0[39];
  (*(v0[28] + 16))(v0[29], v0[30], v0[27]);
  sub_1E5FED40C(v5, v4);
  v6 = v2;
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6328();
  sub_1E5E07DA0(v5, v4);

  if (os_log_type_enabled(v7, v8))
  {
    v39 = v0[38];
    v40 = v0[39];
    v43 = v0[37];
    v44 = v0[30];
    v42 = v8;
    v10 = v0[28];
    v9 = v0[29];
    v11 = v0[27];
    v12 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v12 = 136446722;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758]);
    v13 = sub_1E65E6BC8();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_1E5DFD4B0(v13, v15, &v45);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    v0[16] = v39;
    v0[17] = v40;
    v18 = sub_1E65E5CE8();
    v20 = sub_1E5DFD4B0(v18, v19, &v45);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2082;
    v0[18] = v2;
    v21 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v22 = sub_1E65E5CE8();
    v24 = sub_1E5DFD4B0(v22, v23, &v45);

    *(v12 + 24) = v24;
    _os_log_impl(&dword_1E5DE9000, v7, v42, "Failed to apply %{public}s to %{public}s: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v41, -1, -1);
    MEMORY[0x1E694F1C0](v12, -1, -1);

    v16(v44, v11);
  }

  else
  {
    v26 = v0[38];
    v25 = v0[39];
    v27 = v0[37];
    v29 = v0[29];
    v28 = v0[30];
    v30 = v0[27];
    v31 = v0[28];

    sub_1E5E07DA0(v26, v25);

    v32 = *(v31 + 8);
    v32(v29, v30);
    v32(v28, v30);
  }

  v33 = *(MEMORY[0x1E69E8678] + 4);
  v34 = swift_task_alloc();
  v0[36] = v34;
  *v34 = v0;
  v34[1] = sub_1E6192EAC;
  v35 = v0[34];
  v36 = v0[31];
  v37 = v0[32];

  return MEMORY[0x1EEE6D9C8](v36, 0, 0, v37);
}

uint64_t sub_1E6194588@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E65E5578();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E5238();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v2, v9);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x1E69CD730])
  {
    (*(v10 + 96))(v13, v9);
    (*(v5 + 32))(v8, v13, v4);
    sub_1E65E5568();
    v15 = type metadata accessor for URLContext(0);
    v16 = a1 + *(v15 + 20);
    sub_1E65E5548();
    v17 = sub_1E65E5558();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = (a1 + *(v15 + 24));
    *v20 = v17;
    v20[1] = v19;
LABEL_9:
    type metadata accessor for RouteSource(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v14 == *MEMORY[0x1E69CD750])
  {
    (*(v10 + 96))(v13, v9);
    v21 = sub_1E65D8D48();
    (*(*(v21 - 8) + 32))(a1, v13, v21);
    goto LABEL_9;
  }

  if (v14 == *MEMORY[0x1E69CD748])
  {
    type metadata accessor for AppLaunchScope(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  if (v14 == *MEMORY[0x1E69CD740] || v14 == *MEMORY[0x1E69CD738])
  {
    goto LABEL_9;
  }

  sub_1E6060374();
  swift_allocError();
  *v23 = 1;
  swift_willThrow();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E61948E4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_1E65DB3F8();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076010, &qword_1E65F4888) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076018, &qword_1E65F4890) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = sub_1E65DB4D8();
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v11 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v12 = sub_1E65DB3D8();
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();
  v15 = sub_1E65DB3A8();
  v3[20] = v15;
  v16 = *(v15 - 8);
  v3[21] = v16;
  v17 = *(v16 + 64) + 15;
  v3[22] = swift_task_alloc();
  v18 = sub_1E65DB848();
  v3[23] = v18;
  v19 = *(v18 - 8);
  v3[24] = v19;
  v20 = *(v19 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v21 = sub_1E65DB438();
  v3[28] = v21;
  v22 = *(v21 - 8);
  v3[29] = v22;
  v23 = *(v22 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v24 = sub_1E65D74E8();
  v3[32] = v24;
  v25 = *(v24 - 8);
  v3[33] = v25;
  v26 = *(v25 + 64) + 15;
  v3[34] = swift_task_alloc();
  v27 = sub_1E65DA3D8();
  v3[35] = v27;
  v28 = *(v27 - 8);
  v3[36] = v28;
  v29 = *(v28 + 64) + 15;
  v3[37] = swift_task_alloc();
  v30 = *(*(sub_1E65DDCF8() - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v31 = sub_1E65D8668();
  v3[39] = v31;
  v32 = *(v31 - 8);
  v3[40] = v32;
  v33 = *(v32 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v34 = sub_1E65E5798();
  v3[43] = v34;
  v35 = *(v34 - 8);
  v3[44] = v35;
  v36 = *(v35 + 64) + 15;
  v3[45] = swift_task_alloc();
  v37 = sub_1E65E5698();
  v3[46] = v37;
  v38 = *(v37 - 8);
  v3[47] = v38;
  v39 = *(v38 + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v40 = *(*(sub_1E65D7348() - 8) + 64) + 15;
  v3[50] = swift_task_alloc();
  v41 = sub_1E65E52C8();
  v3[51] = v41;
  v42 = *(v41 - 8);
  v3[52] = v42;
  v43 = *(v42 + 64) + 15;
  v3[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6194EAC, 0, 0);
}

uint64_t sub_1E6194EAC()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 408);
  (*(v2 + 16))(v1, *(v0 + 56), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69CD7B8])
  {
    goto LABEL_2;
  }

  if (v4 != *MEMORY[0x1E69CD828])
  {
    if (v4 == *MEMORY[0x1E69CD7E0])
    {
      v39 = *(v0 + 424);
      v41 = *(v0 + 144);
      v40 = *(v0 + 152);
      v42 = *(v0 + 136);
      (*(*(v0 + 416) + 96))(v39, *(v0 + 408));
      (*(v41 + 32))(v40, v39, v42);
      v43 = sub_1E65DB3B8();
      if (*(v43 + 16))
      {
        v217 = *(v0 + 248);
        v44 = *(v0 + 144);
        v45 = *(v0 + 128);
        v203 = *(v0 + 136);
        v207 = *(v0 + 152);
        v47 = *(v0 + 112);
        v46 = *(v0 + 120);
        v48 = *(v0 + 104);
        v199 = *(v0 + 96);
        v49 = *(v0 + 88);
        v212 = *(v0 + 48);
        v50 = *(v47 + 16);
        v50(v46, v43 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v48);

        (*(v47 + 32))(v45, v46, v48);
        v51 = v212 + *(type metadata accessor for AppEnvironment() + 76);
        v52 = MarketingService.makeMarketingMetricConfiguration.getter();
        *(v0 + 528) = v53;
        v50(v199, v45, v48);
        (*(v47 + 56))(v199, 0, 1, v48);
        (*(v44 + 16))(v49, v207, v203);
        (*(v44 + 56))(v49, 0, 1, v203);
        sub_1E65DB408();
        v218 = (v52 + *v52);
        v54 = v52[1];
        v55 = swift_task_alloc();
        *(v0 + 536) = v55;
        *v55 = v0;
        v55[1] = sub_1E6197404;
        v35 = *(v0 + 248);
        v36 = *(v0 + 200);
        v37 = 0;
        v38 = v218;
        goto LABEL_11;
      }

      v74 = *(v0 + 144);
      v73 = *(v0 + 152);
      v75 = *(v0 + 136);

      sub_1E6060374();
      swift_allocError();
      *v76 = 0;
LABEL_21:
      swift_willThrow();
      (*(v74 + 8))(v73, v75);
      goto LABEL_22;
    }

    if (v4 != *MEMORY[0x1E69CD7C0])
    {
      if (v4 == *MEMORY[0x1E69CD778])
      {
        v58 = *(v0 + 424);
        v60 = *(v0 + 232);
        v59 = *(v0 + 240);
        v61 = *(v0 + 224);
        v63 = *(v0 + 168);
        v62 = *(v0 + 176);
        v64 = *(v0 + 160);
        v65 = *(v0 + 48);
        (*(*(v0 + 416) + 96))(v58, *(v0 + 408));
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076028, &qword_1E65F48A8);
        v67 = *(v66 + 48);
        v216 = *(v58 + *(v66 + 64));
        (*(v63 + 32))(v62, v58, v64);
        (*(v60 + 32))(v59, v58 + v67, v61);
        v68 = v65 + *(type metadata accessor for AppEnvironment() + 76);
        v69 = MarketingService.makeMarketingMetricConfiguration.getter();
        *(v0 + 480) = v70;
        v211 = (v69 + *v69);
        v71 = v69[1];
        v72 = swift_task_alloc();
        *(v0 + 488) = v72;
        *v72 = v0;
        v72[1] = sub_1E619676C;
        v35 = *(v0 + 240);
        v36 = *(v0 + 208);
        goto LABEL_7;
      }

      if (v4 != *MEMORY[0x1E69CD7A0])
      {
        if (v4 == *MEMORY[0x1E69CD790])
        {
          v87 = *(v0 + 424);
          v88 = *(v0 + 224);
          v89 = *(v0 + 232);
          v90 = *(v0 + 136);
          v91 = *(v0 + 144);
          (*(*(v0 + 416) + 96))(v87, *(v0 + 408));
          v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076020, &qword_1E65F4898) + 48);
          sub_1E6060374();
          swift_allocError();
          *v93 = 0;
          swift_willThrow();
          (*(v89 + 8))(v87 + v92, v88);
          (*(v91 + 8))(v87, v90);
          goto LABEL_22;
        }

        if (v4 == *MEMORY[0x1E69CD818] || v4 == *MEMORY[0x1E69CD800])
        {
          goto LABEL_2;
        }

        if (v4 == *MEMORY[0x1E69CD788])
        {
          v94 = *(v0 + 424);
          v95 = *(v0 + 256);
          v96 = *(v0 + 264);
          v97 = *(v0 + 40);
          (*(*(v0 + 416) + 96))(v94, *(v0 + 408));
          (*(v96 + 32))(v97, v94, v95);
          type metadata accessor for RouteResource();
          goto LABEL_3;
        }

        if (v4 == *MEMORY[0x1E69CD7F8])
        {
          v99 = *(v0 + 416);
          v98 = *(v0 + 424);
          v100 = *(v0 + 408);
          v101 = *(v0 + 40);
          type metadata accessor for RouteResource();
          swift_storeEnumTagMultiPayload();
          (*(v99 + 8))(v98, v100);
          goto LABEL_4;
        }

        if (v4 == *MEMORY[0x1E69CD820])
        {
          v102 = *(v0 + 424);
          v103 = *(v0 + 40);
          (*(*(v0 + 416) + 96))(v102, *(v0 + 408));
          v104 = v102[1];
          *v103 = *v102;
          v103[1] = v104;
          type metadata accessor for PlaylistType();
LABEL_38:
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RouteResource();
          goto LABEL_3;
        }

        if (v4 != *MEMORY[0x1E69CD770])
        {
          if (v4 != *MEMORY[0x1E69CD808])
          {
            if (v4 == *MEMORY[0x1E69CD7E8])
            {
              v105 = *(v0 + 424);
              (*(*(v0 + 416) + 96))(v105, *(v0 + 408));
              v107 = *v105;
              v106 = v105[1];
              v108 = v105[3];
              v109 = v105[4];
              v110 = sub_1E634BE38(*(v105 + 16));
              if (v110 != 36)
              {
                v116 = v110;
                v117 = *(v0 + 400);
                v118 = *(v0 + 40);
                v119 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
                *v118 = v107;
                *(v118 + 8) = v106;
                *(v118 + 16) = 1;
                *(v118 + 17) = v116;
                sub_1E65D7338();
                sub_1E65D72E8();
                type metadata accessor for RouteResource();
                goto LABEL_3;
              }

              sub_1E6060374();
              swift_allocError();
              *v111 = 2;
              goto LABEL_17;
            }

            v112 = v4;
            if (v4 == *MEMORY[0x1E69CD798])
            {
              v113 = *(v0 + 424);
              v114 = *(v0 + 40);
              (*(*(v0 + 416) + 96))(v113, *(v0 + 408));
              v115 = sub_1E65DAEB8();
              (*(*(v115 - 8) + 32))(v114, v113, v115);
              type metadata accessor for PlaylistType();
              goto LABEL_38;
            }

            if (v4 == *MEMORY[0x1E69CD810])
            {
              v120 = *(v0 + 424);
              v122 = *(v0 + 384);
              v121 = *(v0 + 392);
              v123 = *(v0 + 368);
              v124 = *(v0 + 376);
              (*(*(v0 + 416) + 96))(v120, *(v0 + 408));
              (*(v124 + 32))(v121, v120, v123);
              (*(v124 + 16))(v122, v121, v123);
              v125 = (*(v124 + 88))(v122, v123);
              if (v125 == *MEMORY[0x1E69CD8C8])
              {
                v126 = *(v0 + 384);
                v127 = *(v0 + 368);
                v128 = *(v0 + 376);
                v129 = *(v0 + 40);
                (*(v128 + 8))(*(v0 + 392), v127);
                (*(v128 + 96))(v126, v127);
                v130 = v126[1];
                *v129 = *v126;
                v129[1] = v130;
                type metadata accessor for RouteResource();
                goto LABEL_3;
              }

              if (v125 == *MEMORY[0x1E69CD8D0])
              {
                v132 = *(v0 + 384);
                v133 = *(v0 + 360);
                v134 = *(v0 + 344);
                v135 = *(v0 + 352);
                v136 = *(v0 + 336);
                v137 = *(v0 + 312);
                v138 = *(v0 + 320);
                (*(*(v0 + 376) + 96))(v132, *(v0 + 368));
                (*(v135 + 32))(v133, v132, v134);
                sub_1E65E5738();
                v139 = sub_1E65D8658();
                v141 = v140;
                LOBYTE(v132) = v142;
                v219 = *(v138 + 8);
                v219(v136, v137);
                *(v0 + 16) = v139;
                *(v0 + 24) = v141;
                *(v0 + 32) = v132 & 1;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
                sub_1E65D7FB8();
                sub_1E5F87058(v139, v141, v132 & 1);
                v143 = *(v0 + 376);
                v209 = *(v0 + 368);
                v214 = *(v0 + 392);
                v145 = *(v0 + 352);
                v144 = *(v0 + 360);
                v205 = *(v0 + 344);
                v201 = *(v0 + 33);
                if (v201 != 4)
                {
                  v154 = *(v0 + 328);
                  v155 = *(v0 + 304);
                  v185 = *(v0 + 312);
                  v188 = *(v0 + 296);
                  v191 = *(v0 + 288);
                  v194 = *(v0 + 280);
                  v156 = *(v0 + 40);
                  v197 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
                  sub_1E65E5768();
                  v157 = sub_1E65DDCE8();
                  v159 = v158;
                  sub_1E5E26340(v155, MEMORY[0x1E69CAAC8]);
                  *v156 = v157;
                  *(v156 + 8) = v159;
                  sub_1E65E5738();
                  v160 = sub_1E65D8528();
                  v162 = v161;
                  v219(v154, v185);
                  *(v156 + 16) = v160;
                  *(v156 + 24) = v162;
                  sub_1E65E5778();
                  v163 = sub_1E65DA3B8();
                  (*(v191 + 8))(v188, v194);
                  *(v156 + 32) = v163;
                  *(v156 + 40) = v201;
                  sub_1E65E5788();
                  *(v156 + 48) = v164;
                  sub_1E65E5758();
                  (*(v145 + 8))(v144, v205);
                  (*(v143 + 8))(v214, v209);
                  type metadata accessor for RouteResource();
                  goto LABEL_3;
                }

                sub_1E6060374();
                swift_allocError();
                *v146 = 2;
                swift_willThrow();
                (*(v145 + 8))(v144, v205);
                (*(v143 + 8))(v214, v209);
              }

              else
              {
                v148 = *(v0 + 384);
                v149 = *(v0 + 392);
                v150 = *(v0 + 368);
                v151 = *(v0 + 376);
                sub_1E6060374();
                swift_allocError();
                *v152 = 1;
                swift_willThrow();
                v153 = *(v151 + 8);
                v153(v149, v150);
                v153(v148, v150);
              }

LABEL_22:
              v77 = *(v0 + 424);
              v79 = *(v0 + 392);
              v78 = *(v0 + 400);
              v80 = *(v0 + 384);
              v81 = *(v0 + 360);
              v83 = *(v0 + 328);
              v82 = *(v0 + 336);
              v84 = *(v0 + 296);
              v85 = *(v0 + 304);
              v86 = *(v0 + 272);
              v178 = *(v0 + 248);
              v180 = *(v0 + 240);
              v182 = *(v0 + 216);
              v184 = *(v0 + 208);
              v187 = *(v0 + 200);
              v190 = *(v0 + 176);
              v193 = *(v0 + 152);
              v196 = *(v0 + 128);
              v200 = *(v0 + 120);
              v204 = *(v0 + 96);
              v208 = *(v0 + 88);
              v213 = *(v0 + 80);

              v18 = *(v0 + 8);
              goto LABEL_23;
            }

            if (v4 != *MEMORY[0x1E69CD7F0])
            {
              if (v4 == *MEMORY[0x1E69CD7D0])
              {
                v131 = *(v0 + 40);
                sub_1E65E52B8();
                swift_storeEnumTagMultiPayload();
                type metadata accessor for RouteResource();
                goto LABEL_3;
              }

              if (v4 == *MEMORY[0x1E69CD780])
              {
                v147 = *(v0 + 40);
                *v147 = 0;
                *(v147 + 8) = 0;
                *(v147 + 16) = 1;
                type metadata accessor for RouteResource();
                goto LABEL_3;
              }

              if (v4 != *MEMORY[0x1E69CD7D8])
              {
                if (v4 == *MEMORY[0x1E69CD7C8])
                {
                  v165 = *(v0 + 40);
                  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
                  v167 = (v165 + v166[12]);
                  v168 = v166[16];
                  v169 = v166[20];
                  v170 = v166[24];
                  v171 = v166[28];
                  v172 = v165 + v166[32];
                  v173 = sub_1E65D76F8();
                  (*(*(v173 - 8) + 56))(v165, 1, 1, v173);
                  v174 = sub_1E65E2CF8();
                  *v167 = 0;
                  v167[1] = 0;
                  (*(*(v174 - 8) + 56))(v165 + v168, 1, 1, v174);
                  v175 = sub_1E65E1FC8();
                  (*(*(v175 - 8) + 56))(v165 + v170, 1, 1, v175);
                  *(v165 + v171) = 0;
                  *v172 = 0;
                  *(v172 + 8) = 1;
                  *(v165 + v169) = sub_1E601100C(MEMORY[0x1E69E7CC0]);
                  type metadata accessor for RouteResource();
                  goto LABEL_3;
                }

                if (v4 == *MEMORY[0x1E69CD7A8])
                {
                  **(v0 + 40) = 0;
                  type metadata accessor for RouteResource();
                  goto LABEL_3;
                }

                v176 = *MEMORY[0x1E69CD7B0];
                sub_1E6060374();
                swift_allocError();
                if (v112 == v176)
                {
                  *v177 = 0;
                  swift_willThrow();
                  goto LABEL_22;
                }

                v74 = *(v0 + 416);
                v73 = *(v0 + 424);
                v75 = *(v0 + 408);
                *v177 = 1;
                goto LABEL_21;
              }
            }

LABEL_16:
            sub_1E6060374();
            swift_allocError();
            *v57 = 0;
LABEL_17:
            swift_willThrow();
            goto LABEL_22;
          }

LABEL_2:
          v5 = *(v0 + 424);
          v6 = *(v0 + 40);
          (*(*(v0 + 416) + 96))(v5, *(v0 + 408));
          v7 = v5[1];
          *v6 = *v5;
          v6[1] = v7;
          type metadata accessor for RouteResource();
LABEL_3:
          swift_storeEnumTagMultiPayload();
LABEL_4:
          v8 = *(v0 + 424);
          v10 = *(v0 + 392);
          v9 = *(v0 + 400);
          v11 = *(v0 + 384);
          v12 = *(v0 + 360);
          v14 = *(v0 + 328);
          v13 = *(v0 + 336);
          v16 = *(v0 + 296);
          v15 = *(v0 + 304);
          v17 = *(v0 + 272);
          v179 = *(v0 + 248);
          v181 = *(v0 + 240);
          v183 = *(v0 + 216);
          v186 = *(v0 + 208);
          v189 = *(v0 + 200);
          v192 = *(v0 + 176);
          v195 = *(v0 + 152);
          v198 = *(v0 + 128);
          v202 = *(v0 + 120);
          v206 = *(v0 + 96);
          v210 = *(v0 + 88);
          v215 = *(v0 + 80);

          v18 = *(v0 + 8);
LABEL_23:

          return v18();
        }
      }
    }

    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    goto LABEL_16;
  }

  v19 = *(v0 + 424);
  v21 = *(v0 + 264);
  v20 = *(v0 + 272);
  v23 = *(v0 + 248);
  v22 = *(v0 + 256);
  v24 = *(v0 + 224);
  v25 = *(v0 + 232);
  v26 = *(v0 + 48);
  (*(*(v0 + 416) + 96))(v19, *(v0 + 408));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076030, &qword_1E65F48B0);
  v28 = *(v27 + 48);
  v29 = *(v21 + 32);
  v216 = *(v19 + *(v27 + 64));
  *(v0 + 432) = v29;
  *(v0 + 440) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v29(v20, v19, v22);
  (*(v25 + 32))(v23, v19 + v28, v24);
  v30 = v26 + *(type metadata accessor for AppEnvironment() + 76);
  v31 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 448) = v32;
  v211 = (v31 + *v31);
  v33 = v31[1];
  v34 = swift_task_alloc();
  *(v0 + 456) = v34;
  *v34 = v0;
  v34[1] = sub_1E61962BC;
  v35 = *(v0 + 248);
  v36 = *(v0 + 216);
LABEL_7:
  v37 = v216;
  v38 = v211;
LABEL_11:

  return v38(v36, v35, v37);
}

uint64_t sub_1E61962BC()
{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 448);
  v4 = *v0;

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
  *(v1 + 36) = *(v5 + 48);
  *(v1 + 576) = *(v5 + 64);
  v6 = swift_task_alloc();
  *(v1 + 464) = v6;
  *v6 = v4;
  v6[1] = sub_1E619645C;
  v7 = *(v1 + 56);
  v8 = *(v1 + 48);

  return sub_1E6197DEC(v8);
}

uint64_t sub_1E619645C(uint64_t a1)
{
  v2 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E619655C, 0, 0);
}

uint64_t sub_1E619655C()
{
  v1 = *(v0 + 472);
  v32 = *(v0 + 576);
  v2 = *(v0 + 36);
  v3 = *(v0 + 432);
  v34 = *(v0 + 440);
  v4 = *(v0 + 272);
  v5 = *(v0 + 256);
  v6 = *(v0 + 216);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 40);
  (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
  *v9 = v1;
  (*(v8 + 32))(&v9[v2], v6, v7);
  v3(&v9[v32], v4, v5);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v10 = *(v0 + 424);
  v12 = *(v0 + 392);
  v11 = *(v0 + 400);
  v13 = *(v0 + 384);
  v14 = *(v0 + 360);
  v16 = *(v0 + 328);
  v15 = *(v0 + 336);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v19 = *(v0 + 272);
  v22 = *(v0 + 248);
  v23 = *(v0 + 240);
  v24 = *(v0 + 216);
  v25 = *(v0 + 208);
  v26 = *(v0 + 200);
  v27 = *(v0 + 176);
  v28 = *(v0 + 152);
  v29 = *(v0 + 128);
  v30 = *(v0 + 120);
  v31 = *(v0 + 96);
  v33 = *(v0 + 88);
  v35 = *(v0 + 80);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1E619676C()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 480);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6196884, 0, 0);
}

uint64_t sub_1E6196884()
{
  v1 = *(v0 + 176);
  v2 = sub_1E65DB398();
  switch(v2)
  {
    case 0:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      *(v0 + 588) = *(v26 + 48);
      *(v0 + 592) = *(v26 + 64);
      v4 = swift_task_alloc();
      *(v0 + 512) = v4;
      *v4 = v0;
      v5 = sub_1E61970C8;
      goto LABEL_7;
    case 1:
      v6 = *(v0 + 232);
      v74 = *(v0 + 240);
      v7 = *(v0 + 224);
      v8 = *(v0 + 208);
      v9 = *(v0 + 184);
      v10 = *(v0 + 192);
      v11 = *(v0 + 168);
      v12 = *(v0 + 176);
      v70 = *(v0 + 160);
      v13 = *(v0 + 40);
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290) + 48);
      (*(v10 + 16))(v13, v8, v9);
      sub_1E65DB388();
      (*(v10 + 8))(v8, v9);
      (*(v6 + 8))(v74, v7);
      (*(v11 + 8))(v12, v70);
      type metadata accessor for RouteResource();
      swift_storeEnumTagMultiPayload();
      v15 = *(v0 + 424);
      v17 = *(v0 + 392);
      v16 = *(v0 + 400);
      v18 = *(v0 + 384);
      v19 = *(v0 + 360);
      v21 = *(v0 + 328);
      v20 = *(v0 + 336);
      v23 = *(v0 + 296);
      v22 = *(v0 + 304);
      v24 = *(v0 + 272);
      v50 = *(v0 + 248);
      v52 = *(v0 + 240);
      v54 = *(v0 + 216);
      v56 = *(v0 + 208);
      v58 = *(v0 + 200);
      v60 = *(v0 + 176);
      v62 = *(v0 + 152);
      v64 = *(v0 + 128);
      v66 = *(v0 + 120);
      v68 = *(v0 + 96);
      v71 = *(v0 + 88);
      v75 = *(v0 + 80);

      v25 = *(v0 + 8);
      break;
    case 2:
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      *(v0 + 580) = *(v3 + 48);
      *(v0 + 584) = *(v3 + 64);
      v4 = swift_task_alloc();
      *(v0 + 496) = v4;
      *v4 = v0;
      v5 = sub_1E6196D8C;
LABEL_7:
      v4[1] = v5;
      v27 = *(v0 + 48);
      v28 = *(v0 + 56);

      return sub_1E6197DEC(v27);
    default:
      v31 = *(v0 + 232);
      v30 = *(v0 + 240);
      v32 = *(v0 + 224);
      v33 = *(v0 + 208);
      v34 = *(v0 + 184);
      v35 = *(v0 + 192);
      v36 = *(v0 + 168);
      v72 = *(v0 + 176);
      v37 = *(v0 + 160);
      sub_1E6060374();
      swift_allocError();
      *v38 = 1;
      swift_willThrow();
      (*(v35 + 8))(v33, v34);
      (*(v31 + 8))(v30, v32);
      (*(v36 + 8))(v72, v37);
      v39 = *(v0 + 424);
      v41 = *(v0 + 392);
      v40 = *(v0 + 400);
      v42 = *(v0 + 384);
      v43 = *(v0 + 360);
      v45 = *(v0 + 328);
      v44 = *(v0 + 336);
      v46 = *(v0 + 296);
      v47 = *(v0 + 304);
      v48 = *(v0 + 272);
      v49 = *(v0 + 248);
      v51 = *(v0 + 240);
      v53 = *(v0 + 216);
      v55 = *(v0 + 208);
      v57 = *(v0 + 200);
      v59 = *(v0 + 176);
      v61 = *(v0 + 152);
      v63 = *(v0 + 128);
      v65 = *(v0 + 120);
      v67 = *(v0 + 96);
      v69 = *(v0 + 88);
      v73 = *(v0 + 80);

      v25 = *(v0 + 8);
      break;
  }

  return v25();
}

uint64_t sub_1E6196D8C(uint64_t a1)
{
  v2 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E6196E8C, 0, 0);
}

uint64_t sub_1E6196E8C()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 580);
  v3 = *(v0 + 232);
  v35 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v33 = *(v0 + 160);
  v10 = *(v0 + 40);
  *v10 = *(v0 + 504);
  (*(v6 + 16))(&v10[v2], v5, v7);
  sub_1E65DB388();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v35, v4);
  (*(v9 + 8))(v8, v33);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v11 = *(v0 + 424);
  v13 = *(v0 + 392);
  v12 = *(v0 + 400);
  v14 = *(v0 + 384);
  v15 = *(v0 + 360);
  v17 = *(v0 + 328);
  v16 = *(v0 + 336);
  v19 = *(v0 + 296);
  v18 = *(v0 + 304);
  v20 = *(v0 + 272);
  v23 = *(v0 + 248);
  v24 = *(v0 + 240);
  v25 = *(v0 + 216);
  v26 = *(v0 + 208);
  v27 = *(v0 + 200);
  v28 = *(v0 + 176);
  v29 = *(v0 + 152);
  v30 = *(v0 + 128);
  v31 = *(v0 + 120);
  v32 = *(v0 + 96);
  v34 = *(v0 + 88);
  v36 = *(v0 + 80);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1E61970C8(uint64_t a1)
{
  v2 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E61971C8, 0, 0);
}

uint64_t sub_1E61971C8()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 588);
  v3 = *(v0 + 232);
  v35 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v33 = *(v0 + 160);
  v10 = *(v0 + 40);
  *v10 = *(v0 + 520);
  (*(v6 + 16))(&v10[v2], v5, v7);
  sub_1E65DB388();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v35, v4);
  (*(v9 + 8))(v8, v33);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v11 = *(v0 + 424);
  v13 = *(v0 + 392);
  v12 = *(v0 + 400);
  v14 = *(v0 + 384);
  v15 = *(v0 + 360);
  v17 = *(v0 + 328);
  v16 = *(v0 + 336);
  v19 = *(v0 + 296);
  v18 = *(v0 + 304);
  v20 = *(v0 + 272);
  v23 = *(v0 + 248);
  v24 = *(v0 + 240);
  v25 = *(v0 + 216);
  v26 = *(v0 + 208);
  v27 = *(v0 + 200);
  v28 = *(v0 + 176);
  v29 = *(v0 + 152);
  v30 = *(v0 + 128);
  v31 = *(v0 + 120);
  v32 = *(v0 + 96);
  v34 = *(v0 + 88);
  v36 = *(v0 + 80);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1E6197404()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 528);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 232);
  v5 = *(*v0 + 224);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_1E6197578, 0, 0);
}

uint64_t sub_1E6197578()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  sub_1E65DB4C8();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == *MEMORY[0x1E69CD4F8])
  {
    v6 = *(v0 + 192);
    v84 = *(v0 + 200);
    v7 = *(v0 + 184);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 136);
    v11 = *(v0 + 72);
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);
    v14 = *(v0 + 40);
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
    (*(v9 + 8))(v8, v10);
    (*(v11 + 96))(v12, v13);
    v15 = *v12;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
    *v14 = v15;
    (*(v6 + 32))(&v14[v16], v84, v7);
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    v17 = *(v0 + 424);
    v19 = *(v0 + 392);
    v18 = *(v0 + 400);
    v20 = *(v0 + 384);
    v21 = *(v0 + 360);
    v23 = *(v0 + 328);
    v22 = *(v0 + 336);
    v25 = *(v0 + 296);
    v24 = *(v0 + 304);
    v26 = *(v0 + 272);
    v58 = *(v0 + 248);
    v60 = *(v0 + 240);
    v62 = *(v0 + 216);
    v64 = *(v0 + 208);
    v66 = *(v0 + 200);
    v68 = *(v0 + 176);
    v70 = *(v0 + 152);
    v72 = *(v0 + 128);
    v75 = *(v0 + 120);
    v78 = *(v0 + 96);
    v81 = *(v0 + 88);
    v85 = *(v0 + 80);

    v27 = *(v0 + 8);
LABEL_8:

    return v27();
  }

  if (v5 != *MEMORY[0x1E69CD500])
  {
    v39 = *(v0 + 192);
    v38 = *(v0 + 200);
    v40 = *(v0 + 184);
    v41 = *(v0 + 144);
    v42 = *(v0 + 128);
    v43 = *(v0 + 104);
    v44 = *(v0 + 112);
    v45 = *(v0 + 72);
    v79 = *(v0 + 152);
    v82 = *(v0 + 80);
    v73 = *(v0 + 136);
    v76 = *(v0 + 64);
    sub_1E6060374();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();
    (*(v39 + 8))(v38, v40);
    (*(v44 + 8))(v42, v43);
    (*(v41 + 8))(v79, v73);
    (*(v45 + 8))(v82, v76);
    v47 = *(v0 + 424);
    v49 = *(v0 + 392);
    v48 = *(v0 + 400);
    v50 = *(v0 + 384);
    v51 = *(v0 + 360);
    v53 = *(v0 + 328);
    v52 = *(v0 + 336);
    v54 = *(v0 + 296);
    v55 = *(v0 + 304);
    v56 = *(v0 + 272);
    v57 = *(v0 + 248);
    v59 = *(v0 + 240);
    v61 = *(v0 + 216);
    v63 = *(v0 + 208);
    v65 = *(v0 + 200);
    v67 = *(v0 + 176);
    v69 = *(v0 + 152);
    v71 = *(v0 + 128);
    v74 = *(v0 + 120);
    v77 = *(v0 + 96);
    v80 = *(v0 + 88);
    v83 = *(v0 + 80);

    v27 = *(v0 + 8);
    goto LABEL_8;
  }

  v29 = *(v0 + 264);
  v28 = *(v0 + 272);
  v30 = *(v0 + 256);
  v31 = *(v0 + 80);
  (*(*(v0 + 72) + 96))(v31, *(v0 + 64));
  v32 = *(v29 + 32);
  *(v0 + 544) = v32;
  *(v0 + 552) = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v32(v28, v31, v30);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
  *(v0 + 596) = *(v33 + 48);
  *(v0 + 600) = *(v33 + 64);
  v34 = swift_task_alloc();
  *(v0 + 560) = v34;
  *v34 = v0;
  v34[1] = sub_1E6197AB4;
  v35 = *(v0 + 48);
  v36 = *(v0 + 56);

  return sub_1E6197DEC(v35);
}

uint64_t sub_1E6197AB4(uint64_t a1)
{
  v2 = *(*v1 + 560);
  v4 = *v1;
  *(*v1 + 568) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E6197BB4, 0, 0);
}

uint64_t sub_1E6197BB4()
{
  v1 = *(v0 + 568);
  v35 = *(v0 + 600);
  v2 = *(v0 + 596);
  v37 = *(v0 + 552);
  v31 = *(v0 + 272);
  v33 = *(v0 + 544);
  v29 = *(v0 + 256);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
  v9 = *(v0 + 40);
  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
  (*(v6 + 8))(v7, v8);
  *v9 = v1;
  (*(v3 + 32))(&v9[v2], v4, v5);
  v33(&v9[v35], v31, v29);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v10 = *(v0 + 424);
  v12 = *(v0 + 392);
  v11 = *(v0 + 400);
  v13 = *(v0 + 384);
  v14 = *(v0 + 360);
  v16 = *(v0 + 328);
  v15 = *(v0 + 336);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v19 = *(v0 + 272);
  v22 = *(v0 + 248);
  v23 = *(v0 + 240);
  v24 = *(v0 + 216);
  v25 = *(v0 + 208);
  v26 = *(v0 + 200);
  v27 = *(v0 + 176);
  v28 = *(v0 + 152);
  v30 = *(v0 + 128);
  v32 = *(v0 + 120);
  v34 = *(v0 + 96);
  v36 = *(v0 + 88);
  v38 = *(v0 + 80);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1E6197E0C()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 24);
  v3 = AccountService.fetchCurrentAccount.getter();
  v0[3] = v4;
  v8 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_1E6197F10;

  return v8();
}

uint64_t sub_1E6197F10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_1E61980A0;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_1E6198038;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6198038()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1E61980A0()
{
  v1 = v0[3];

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to fetch current account with error: %{public}@", v9, 0xCu);
    sub_1E5DFE50C(v10, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_1E6198250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a7;
  v42 = a1;
  v47 = a6;
  v46 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v45 = &v39 - v14;
  v15 = sub_1E65E3B68();
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v20 = sub_1E65E3B48();
  v21 = sub_1E65E6338();
  v22 = v20;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = swift_slowAlloc();
    v40 = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v48 = v25;
    *v24 = 134218498;
    *(v24 + 4) = v19;
    *(v24 + 12) = 2080;
    v26 = sub_1E65E68B8();
    v27 = v19;
    v29 = sub_1E5DFD4B0(v26, v28, &v48);
    v39 = a3;
    v30 = a8;
    v31 = v29;

    *(v24 + 14) = v31;
    a8 = v30;
    v32 = v47;
    a3 = v39;
    *(v24 + 22) = 2048;
    *(v24 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v22, v21, "Converting from Async-Await to Promise: %ld:%s:%lu", v24, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1E694F1C0](v25, -1, -1);
    v33 = v24;
    a2 = v40;
    MEMORY[0x1E694F1C0](v33, -1, -1);

    (*(v43 + 8))(v18, v44);
  }

  else
  {

    (*(v43 + 8))(v18, v44);
    v27 = v19;
  }

  v34 = sub_1E65E60A8();
  v35 = v45;
  (*(*(v34 - 8) + 56))(v45, 1, 1, v34);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v41;
  *(v36 + 40) = a8;
  *(v36 + 48) = v27;
  *(v36 + 56) = a3;
  *(v36 + 64) = a4;
  *(v36 + 72) = v46;
  v37 = v42;
  *(v36 + 80) = v47;
  *(v36 + 88) = v37;
  *(v36 + 96) = a2;

  sub_1E6198E90(0, 0, v35, &unk_1E65F48F0, v36);
}

uint64_t sub_1E6198594(uint64_t a1)
{
  v4 = *(sub_1E65E5388() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E618DD8C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E6198684(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E5288() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppEnvironment() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E618ED48(a1, v1 + v6, v1 + v9, v1 + v10, v11);
}

uint64_t sub_1E6198804(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v20;
  *(v8 + 40) = v19;
  *(v8 + 112) = v18;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = sub_1E65E3B68();
  *(v8 + 64) = v10;
  v11 = *(v10 - 8);
  *(v8 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 96) = v14;
  *v14 = v8;
  v14[1] = sub_1E6198984;

  return v16();
}

uint64_t sub_1E6198984()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1E6198C84;
  }

  else
  {
    v3 = sub_1E6198A98;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6198A98()
{
  v28 = v0;
  v1 = *(v0 + 88);
  sub_1E65DE338();
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v24 = *(v0 + 64);
    v25 = *(v0 + 88);
    v5 = *(v0 + 32);
    v23 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_1E65E68B8();
    v13 = sub_1E5DFD4B0(v11, v12, &v26);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v23;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);

    (*(v4 + 8))(v25, v24);
  }

  else
  {
    v14 = *(v0 + 88);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);

    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  v26 = 0;
  v27 = 0;
  v17(&v26);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1E6198C84()
{
  v30 = v0;
  v1 = *(v0 + 80);
  sub_1E65DE338();
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v26 = *(v0 + 64);
    v27 = *(v0 + 80);
    v5 = *(v0 + 32);
    v25 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_1E65E68B8();
    v13 = sub_1E5DFD4B0(v11, v12, &v28);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v25;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);

    (*(v4 + 8))(v27, v26);
  }

  else
  {
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v16 = *(v0 + 64);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 104);
  v19 = *(v0 + 48);
  v18 = *(v0 + 56);
  v28 = v17;
  v29 = 1;
  v20 = v17;
  v19(&v28);

  v22 = *(v0 + 80);
  v21 = *(v0 + 88);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1E6198E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1E5DFD1CC(a3, v25 - v11, &unk_1ED0735B0, &qword_1E65EA000);
  v13 = sub_1E65E60A8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1E5DFE50C(v12, &unk_1ED0735B0, &qword_1E65EA000);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1E65E6098();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1E65E5FC8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1E65E5D18() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1E5DFE50C(a3, &unk_1ED0735B0, &qword_1E65EA000);

    return v23;
  }

LABEL_8:
  sub_1E5DFE50C(a3, &unk_1ED0735B0, &qword_1E65EA000);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1E61991C0()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  return v1;
}

uint64_t sub_1E61991F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6192058(a1, v4, v5, v6, v7);
}

uint64_t sub_1E61992D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FE0, &unk_1E660F450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6199340(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RoutingContextAction() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6191DB4(a1, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_57Tm_1()
{
  v1 = v0;
  v2 = *(type metadata accessor for RoutingContextAction() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for NavigationControllerRoutingContext();
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = v1 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v360 = v7;
  v361 = v1;
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_142;
      }

      v13 = *v9;

      v14 = *(v9 + 8);
      v15 = *(v9 + 16);
      goto LABEL_141;
    }

    type metadata accessor for RouteResource();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 2u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0xFu:
      case 0x10u:
        goto LABEL_13;
      case 1u:
        v106 = sub_1E65D76F8();
        v107 = *(v106 - 8);
        if (!(*(v107 + 48))(v9, 1, v106))
        {
          (*(v107 + 8))(v9, v106);
        }

        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
        v109 = *(v9 + v108[12] + 8);

        v110 = v108[16];
        v111 = sub_1E65E2CF8();
        v112 = *(v111 - 8);
        if (!(*(v112 + 48))(v9 + v110, 1, v111))
        {
          (*(v112 + 8))(v9 + v110, v111);
        }

        v113 = *(v9 + v108[20]);

        v54 = v108[24];
        v55 = sub_1E65E1FC8();
        v56 = *(v55 - 8);
        v57 = (*(v56 + 48))(v9 + v54, 1, v55);
        goto LABEL_66;
      case 3u:
        v129 = *(v9 + 8);

        v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
        v67 = sub_1E65D72D8();
        goto LABEL_99;
      case 4u:
        sub_1E65E0B48();
        v118 = swift_getEnumCaseMultiPayload();
        if (v118 > 3)
        {
          if (v118 > 6 && v118 != 7)
          {
LABEL_227:
            v304 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_126:
            v156 = type metadata accessor for RouteDestination();
            v157 = v9 + *(v156 + 20);
            type metadata accessor for RouteSource(0);
            v158 = swift_getEnumCaseMultiPayload();
            if (v158 <= 1)
            {
              if (v158)
              {
                if (v158 != 1)
                {
                  goto LABEL_140;
                }
              }

              else
              {
                type metadata accessor for AppLaunchScope(0);
                if (swift_getEnumCaseMultiPayload() > 1)
                {
                  goto LABEL_140;
                }
              }
            }

            else if (v158 != 2)
            {
              if (v158 == 3)
              {
                v159 = sub_1E65D74E8();
              }

              else
              {
                if (v158 != 4)
                {
LABEL_140:
                  v166 = *(v9 + *(v156 + 24));

                  v167 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540) + 48);
                  v14 = *v167;
                  v15 = *(v167 + 8);
LABEL_141:
                  sub_1E5F94E00(v14, v15);
                  goto LABEL_142;
                }

                v159 = sub_1E65D8D48();
              }

              (*(*(v159 - 8) + 8))(v157, v159);
              goto LABEL_140;
            }

            v160 = sub_1E65D74E8();
            v161 = *(v160 - 8);
            v162 = *(v161 + 8);
            v162(v157, v160);
            v163 = type metadata accessor for URLContext(0);
            v164 = *(v163 + 20);
            if (!(*(v161 + 48))(v157 + v164, 1, v160))
            {
              v162(v157 + v164, v160);
            }

            v165 = *(v157 + *(v163 + 24) + 8);

            v7 = v360;
            v1 = v361;
            goto LABEL_140;
          }
        }

        else if (v118 <= 1 && v118)
        {
          if (v118 == 1)
          {
            v119 = sub_1E65E0FD8();
            (*(*(v119 - 8) + 8))(v1 + v3, v119);
          }

          goto LABEL_227;
        }

        v303 = *(v9 + 8);

        goto LABEL_227;
      case 6u:

        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
        v65 = *(v64 + 48);
        v66 = sub_1E65DB848();
        (*(*(v66 - 8) + 8))(v9 + v65, v66);
        v25 = *(v64 + 64);
        v67 = sub_1E65E1518();
        goto LABEL_99;
      case 7u:
        v85 = sub_1E65DB848();
        (*(*(v85 - 8) + 8))(v1 + v3, v85);
        v86 = &unk_1ED0720D0;
        v87 = &unk_1E65EA290;
        goto LABEL_97;
      case 8u:
      case 9u:

        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
        v23 = *(v22 + 48);
        v24 = sub_1E65DB848();
        (*(*(v24 - 8) + 8))(v9 + v23, v24);
        v25 = *(v22 + 64);
        goto LABEL_98;
      case 0xCu:
        v115 = *(v9 + 8);

        sub_1E5F94E00(*(v9 + 16), *(v9 + 24));
        goto LABEL_126;
      case 0xEu:
        v59 = sub_1E65DB718();
        goto LABEL_125;
      case 0x11u:
        v137 = *(v9 + 8);

        v86 = &unk_1ED0720E0;
        v87 = &unk_1E65EA2A0;
LABEL_97:
        v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v86, v87) + 48);
LABEL_98:
        v67 = sub_1E65D74E8();
        goto LABEL_99;
      case 0x12u:
        v133 = *v9;
        v134 = *(v9 + 8);
        v135 = *(v9 + 16);
        sub_1E5F94E14();
        goto LABEL_126;
      case 0x13u:
        goto LABEL_53;
      case 0x14u:
        v90 = *(v9 + 8);

        v91 = *(v9 + 24);

        goto LABEL_126;
      case 0x15u:
        v140 = *(v9 + 8);

        v141 = *(v9 + 24);

        v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
        v55 = sub_1E65D96F8();
        v56 = *(v55 - 8);
        if (!(*(v56 + 48))(v9 + v54, 1, v55))
        {
          goto LABEL_103;
        }

        goto LABEL_126;
      case 0x16u:
        __swift_destroy_boxed_opaque_existential_1((v1 + v3));
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
        v43 = v42[12];
        v44 = sub_1E65D74E8();
        (*(*(v44 - 8) + 8))(v9 + v43, v44);
        v45 = *(v9 + v42[16] + 8);

        v46 = v42[20];
        v47 = sub_1E65DB3E8();
        v48 = *(v47 - 8);
        if (!(*(v48 + 48))(v9 + v46, 1, v47))
        {
          (*(v48 + 8))(v9 + v46, v47);
        }

        v49 = *(v9 + v42[24] + 8);

        v50 = *(v9 + v42[28] + 8);

        v51 = v42[32];
        v52 = sub_1E65DB5D8();
        v53 = *(v52 - 8);
        if (!(*(v53 + 48))(v9 + v51, 1, v52))
        {
          (*(v53 + 8))(v9 + v51, v52);
        }

        v54 = v42[36];
        v55 = sub_1E65D7A38();
        v56 = *(v55 - 8);
        v57 = (*(v56 + 48))(v9 + v54, 1, v55);
LABEL_66:
        v1 = v361;
        if (!v57)
        {
LABEL_103:
          (*(v56 + 8))(v9 + v54, v55);
        }

        goto LABEL_126;
      case 0x17u:
        v78 = sub_1E65E57D8();
        (*(*(v78 - 8) + 8))(v1 + v3, v78);
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
        v80 = *(v79 + 48);
        v81 = sub_1E65E5528();
        (*(*(v81 - 8) + 8))(v9 + v80, v81);
        if (*(v9 + *(v79 + 64) + 8) >= 0xCuLL)
        {
        }

        goto LABEL_126;
      case 0x18u:

        v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
        v67 = sub_1E65DB848();
        goto LABEL_99;
      case 0x1Au:
        sub_1E65E52B8();
        v97 = swift_getEnumCaseMultiPayload();
        if (v97 == 1)
        {

          goto LABEL_126;
        }

        if (v97)
        {
          goto LABEL_126;
        }

LABEL_53:
        v59 = sub_1E65D74E8();
        goto LABEL_125;
      case 0x1Bu:
        type metadata accessor for PlaylistType();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v59 = sub_1E65DAEB8();
LABEL_125:
          (*(*(v59 - 8) + 8))(v1 + v3, v59);
        }

        else
        {
LABEL_13:
          v17 = *(v9 + 8);
        }

        goto LABEL_126;
      case 0x1Cu:
        v59 = sub_1E65D76F8();
        goto LABEL_125;
      case 0x1Du:
        v143 = sub_1E65E55E8();
        (*(*(v143 - 8) + 8))(v1 + v3, v143);
        v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
        v67 = sub_1E65D7EB8();
LABEL_99:
        (*(*(v67 - 8) + 8))(v9 + v25, v67);
        goto LABEL_126;
      case 0x1Eu:
        v71 = sub_1E65E56B8();
        (*(*(v71 - 8) + 8))(v1 + v3, v71);
        v72 = &unk_1ED072110;
        v73 = &unk_1E65EA2D0;
        goto LABEL_86;
      case 0x1Fu:
        v94 = sub_1E65DA308();
        (*(*(v94 - 8) + 8))(v1 + v3, v94);
        v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
        goto LABEL_87;
      case 0x20u:
        v124 = sub_1E65E58D8();
        (*(*(v124 - 8) + 8))(v1 + v3, v124);
        v72 = &qword_1ED072120;
        v73 = &qword_1E65EA2E0;
LABEL_86:
        v125 = __swift_instantiateConcreteTypeFromMangledNameV2(v72, v73);
        v126 = *(v9 + *(v125 + 48));

        v95 = *(v125 + 64);
LABEL_87:
        v127 = *(v9 + v95);

        goto LABEL_126;
      case 0x21u:
        v59 = sub_1E65D9048();
        goto LABEL_125;
      default:
        goto LABEL_126;
    }
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for RouteResource();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 2u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0xFu:
      case 0x10u:
        goto LABEL_11;
      case 1u:
        v98 = sub_1E65D76F8();
        v99 = *(v98 - 8);
        if (!(*(v99 + 48))(v9, 1, v98))
        {
          (*(v99 + 8))(v9, v98);
        }

        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
        v101 = *(v9 + v100[12] + 8);

        v102 = v100[16];
        v103 = sub_1E65E2CF8();
        v104 = *(v103 - 8);
        if (!(*(v104 + 48))(v9 + v102, 1, v103))
        {
          (*(v104 + 8))(v9 + v102, v103);
        }

        v105 = *(v9 + v100[20]);

        v38 = v100[24];
        v39 = sub_1E65E1FC8();
        v40 = *(v39 - 8);
        v41 = (*(v40 + 48))(v9 + v38, 1, v39);
        goto LABEL_59;
      case 3u:
        v128 = *(v9 + 8);

        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
        v63 = sub_1E65D72D8();
        goto LABEL_95;
      case 4u:
        sub_1E65E0B48();
        v116 = swift_getEnumCaseMultiPayload();
        if (v116 > 3)
        {
          if (v116 > 6 && v116 != 7)
          {
LABEL_224:
            v302 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_108:
            v144 = type metadata accessor for RouteDestination();
            v145 = v9 + *(v144 + 20);
            type metadata accessor for RouteSource(0);
            v146 = swift_getEnumCaseMultiPayload();
            if (v146 <= 1)
            {
              if (v146)
              {
                if (v146 != 1)
                {
                  goto LABEL_122;
                }
              }

              else
              {
                type metadata accessor for AppLaunchScope(0);
                if (swift_getEnumCaseMultiPayload() > 1)
                {
                  goto LABEL_122;
                }
              }
            }

            else if (v146 != 2)
            {
              if (v146 == 3)
              {
                v147 = sub_1E65D74E8();
              }

              else
              {
                if (v146 != 4)
                {
LABEL_122:
                  v154 = *(v144 + 24);
LABEL_123:
                  v155 = *(v9 + v154);

                  goto LABEL_142;
                }

                v147 = sub_1E65D8D48();
              }

              (*(*(v147 - 8) + 8))(v145, v147);
              goto LABEL_122;
            }

            v148 = sub_1E65D74E8();
            v149 = *(v148 - 8);
            v150 = *(v149 + 8);
            v150(v145, v148);
            v151 = type metadata accessor for URLContext(0);
            v152 = *(v151 + 20);
            if (!(*(v149 + 48))(v145 + v152, 1, v148))
            {
              v150(v145 + v152, v148);
            }

            v153 = *(v145 + *(v151 + 24) + 8);

            v7 = v360;
            v1 = v361;
            goto LABEL_122;
          }
        }

        else if (v116 <= 1 && v116)
        {
          if (v116 == 1)
          {
            v117 = sub_1E65E0FD8();
            (*(*(v117 - 8) + 8))(v1 + v3, v117);
          }

          goto LABEL_224;
        }

        v301 = *(v9 + 8);

        goto LABEL_224;
      case 6u:

        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
        v61 = *(v60 + 48);
        v62 = sub_1E65DB848();
        (*(*(v62 - 8) + 8))(v9 + v61, v62);
        v21 = *(v60 + 64);
        v63 = sub_1E65E1518();
        goto LABEL_95;
      case 7u:
        v82 = sub_1E65DB848();
        (*(*(v82 - 8) + 8))(v1 + v3, v82);
        v83 = &unk_1ED0720D0;
        v84 = &unk_1E65EA290;
        goto LABEL_93;
      case 8u:
      case 9u:

        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
        v19 = *(v18 + 48);
        v20 = sub_1E65DB848();
        (*(*(v20 - 8) + 8))(v9 + v19, v20);
        v21 = *(v18 + 64);
        goto LABEL_94;
      case 0xCu:
        v114 = *(v9 + 8);

        sub_1E5F94E00(*(v9 + 16), *(v9 + 24));
        goto LABEL_108;
      case 0xEu:
        v58 = sub_1E65DB718();
        goto LABEL_107;
      case 0x11u:
        v136 = *(v9 + 8);

        v83 = &unk_1ED0720E0;
        v84 = &unk_1E65EA2A0;
LABEL_93:
        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v83, v84) + 48);
LABEL_94:
        v63 = sub_1E65D74E8();
        goto LABEL_95;
      case 0x12u:
        v130 = *v9;
        v131 = *(v9 + 8);
        v132 = *(v9 + 16);
        sub_1E5F94E14();
        goto LABEL_108;
      case 0x13u:
        goto LABEL_50;
      case 0x14u:
        v88 = *(v9 + 8);

        v89 = *(v9 + 24);

        goto LABEL_108;
      case 0x15u:
        v138 = *(v9 + 8);

        v139 = *(v9 + 24);

        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
        v39 = sub_1E65D96F8();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v9 + v38, 1, v39))
        {
          goto LABEL_101;
        }

        goto LABEL_108;
      case 0x16u:
        __swift_destroy_boxed_opaque_existential_1((v1 + v3));
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
        v27 = v26[12];
        v28 = sub_1E65D74E8();
        (*(*(v28 - 8) + 8))(v9 + v27, v28);
        v29 = *(v9 + v26[16] + 8);

        v30 = v26[20];
        v31 = sub_1E65DB3E8();
        v32 = *(v31 - 8);
        if (!(*(v32 + 48))(v9 + v30, 1, v31))
        {
          (*(v32 + 8))(v9 + v30, v31);
        }

        v33 = *(v9 + v26[24] + 8);

        v34 = *(v9 + v26[28] + 8);

        v35 = v26[32];
        v36 = sub_1E65DB5D8();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v9 + v35, 1, v36))
        {
          (*(v37 + 8))(v9 + v35, v36);
        }

        v38 = v26[36];
        v39 = sub_1E65D7A38();
        v40 = *(v39 - 8);
        v41 = (*(v40 + 48))(v9 + v38, 1, v39);
LABEL_59:
        v1 = v361;
        if (!v41)
        {
LABEL_101:
          (*(v40 + 8))(v9 + v38, v39);
        }

        goto LABEL_108;
      case 0x17u:
        v74 = sub_1E65E57D8();
        (*(*(v74 - 8) + 8))(v1 + v3, v74);
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
        v76 = *(v75 + 48);
        v77 = sub_1E65E5528();
        (*(*(v77 - 8) + 8))(v9 + v76, v77);
        if (*(v9 + *(v75 + 64) + 8) >= 0xCuLL)
        {
        }

        goto LABEL_108;
      case 0x18u:

        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
        v63 = sub_1E65DB848();
        goto LABEL_95;
      case 0x1Au:
        sub_1E65E52B8();
        v96 = swift_getEnumCaseMultiPayload();
        if (v96 == 1)
        {

          goto LABEL_108;
        }

        if (v96)
        {
          goto LABEL_108;
        }

LABEL_50:
        v58 = sub_1E65D74E8();
        goto LABEL_107;
      case 0x1Bu:
        type metadata accessor for PlaylistType();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v58 = sub_1E65DAEB8();
LABEL_107:
          (*(*(v58 - 8) + 8))(v1 + v3, v58);
        }

        else
        {
LABEL_11:
          v16 = *(v9 + 8);
        }

        goto LABEL_108;
      case 0x1Cu:
        v58 = sub_1E65D76F8();
        goto LABEL_107;
      case 0x1Du:
        v142 = sub_1E65E55E8();
        (*(*(v142 - 8) + 8))(v1 + v3, v142);
        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
        v63 = sub_1E65D7EB8();
LABEL_95:
        (*(*(v63 - 8) + 8))(v9 + v21, v63);
        goto LABEL_108;
      case 0x1Eu:
        v68 = sub_1E65E56B8();
        (*(*(v68 - 8) + 8))(v1 + v3, v68);
        v69 = &unk_1ED072110;
        v70 = &unk_1E65EA2D0;
        goto LABEL_83;
      case 0x1Fu:
        v92 = sub_1E65DA308();
        (*(*(v92 - 8) + 8))(v1 + v3, v92);
        v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
        goto LABEL_84;
      case 0x20u:
        v120 = sub_1E65E58D8();
        (*(*(v120 - 8) + 8))(v1 + v3, v120);
        v69 = &qword_1ED072120;
        v70 = &qword_1E65EA2E0;
LABEL_83:
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(v69, v70);
        v122 = *(v9 + *(v121 + 48));

        v93 = *(v121 + 64);
LABEL_84:
        v123 = *(v9 + v93);

        goto LABEL_108;
      case 0x21u:
        v58 = sub_1E65D9048();
        goto LABEL_107;
      default:
        goto LABEL_108;
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v11 = type metadata accessor for RouteDestination();
    if (!(*(*(v11 - 8) + 48))(v1 + v3, 1, v11))
    {
      type metadata accessor for RouteResource();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
        case 2u:
        case 0xAu:
        case 0xBu:
        case 0xDu:
        case 0xFu:
        case 0x10u:
          goto LABEL_6;
        case 1u:
          v268 = sub_1E65D76F8();
          v269 = *(v268 - 8);
          if (!(*(v269 + 48))(v9, 1, v268))
          {
            (*(v269 + 8))(v9, v268);
          }

          v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
          v271 = *(v9 + v270[12] + 8);

          v272 = v270[16];
          v273 = sub_1E65E2CF8();
          v274 = *(v273 - 8);
          if (!(*(v274 + 48))(v9 + v272, 1, v273))
          {
            (*(v274 + 8))(v9 + v272, v273);
          }

          v275 = *(v9 + v270[20]);

          v245 = v270[24];
          v276 = sub_1E65E1FC8();
          goto LABEL_198;
        case 3u:
          v284 = *(v9 + 8);

          v232 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
          v252 = sub_1E65D72D8();
          goto LABEL_196;
        case 4u:
          sub_1E65E0B48();
          v278 = swift_getEnumCaseMultiPayload();
          if (v278 > 3)
          {
            if (v278 > 6 && v278 != 7)
            {
LABEL_234:
              v306 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_203:
              v292 = v9 + *(v11 + 20);
              type metadata accessor for RouteSource(0);
              v293 = swift_getEnumCaseMultiPayload();
              if (v293 <= 1)
              {
                if (v293)
                {
                  v1 = v361;
                  if (v293 != 1)
                  {
                    goto LABEL_213;
                  }
                }

                else
                {
                  type metadata accessor for AppLaunchScope(0);
                  v1 = v361;
                  if (swift_getEnumCaseMultiPayload() > 1)
                  {
                    goto LABEL_213;
                  }
                }
              }

              else if (v293 != 2)
              {
                v1 = v361;
                if (v293 == 3)
                {
                  v294 = sub_1E65D74E8();
                }

                else
                {
                  if (v293 != 4)
                  {
LABEL_213:
                    v154 = *(v11 + 24);
                    goto LABEL_123;
                  }

                  v294 = sub_1E65D8D48();
                }

                (*(*(v294 - 8) + 8))(v292, v294);
                goto LABEL_213;
              }

              v295 = sub_1E65D74E8();
              v296 = *(v295 - 8);
              v297 = *(v296 + 8);
              v297(v292, v295);
              v298 = type metadata accessor for URLContext(0);
              v299 = *(v298 + 20);
              if (!(*(v296 + 48))(v292 + v299, 1, v295))
              {
                v297(v292 + v299, v295);
              }

              v300 = *(v292 + *(v298 + 24) + 8);

              v7 = v360;
              v1 = v361;
              v154 = *(v11 + 24);
              goto LABEL_123;
            }
          }

          else if (v278 <= 1 && v278)
          {
            if (v278 == 1)
            {
              v279 = sub_1E65E0FD8();
              (*(*(v279 - 8) + 8))(v1 + v3, v279);
            }

            goto LABEL_234;
          }

          v305 = *(v9 + 8);

          goto LABEL_234;
        case 6u:

          v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
          v250 = *(v249 + 48);
          v251 = sub_1E65DB848();
          (*(*(v251 - 8) + 8))(v9 + v250, v251);
          v232 = *(v249 + 64);
          v252 = sub_1E65E1518();
          goto LABEL_196;
        case 7u:
          v260 = sub_1E65DB848();
          (*(*(v260 - 8) + 8))(v1 + v3, v260);
          v261 = &unk_1ED0720D0;
          v262 = &unk_1E65EA290;
          goto LABEL_194;
        case 8u:
        case 9u:

          v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
          v230 = *(v229 + 48);
          v231 = sub_1E65DB848();
          (*(*(v231 - 8) + 8))(v9 + v230, v231);
          v232 = *(v229 + 64);
          goto LABEL_195;
        case 0xCu:
          v277 = *(v9 + 8);

          sub_1E5F94E00(*(v9 + 16), *(v9 + 24));
          goto LABEL_203;
        case 0xEu:
          v248 = sub_1E65DB718();
          goto LABEL_202;
        case 0x11u:
          v288 = *(v9 + 8);

          v261 = &unk_1ED0720E0;
          v262 = &unk_1E65EA2A0;
LABEL_194:
          v232 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v261, v262) + 48);
LABEL_195:
          v252 = sub_1E65D74E8();
          goto LABEL_196;
        case 0x12u:
          v285 = *v9;
          v286 = *(v9 + 8);
          v287 = *(v9 + 16);
          sub_1E5F94E14();
          goto LABEL_203;
        case 0x13u:
          goto LABEL_175;
        case 0x14u:
          v263 = *(v9 + 8);

          v264 = *(v9 + 24);

          goto LABEL_203;
        case 0x15u:
          v289 = *(v9 + 8);

          v290 = *(v9 + 24);

          v245 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
          v276 = sub_1E65D96F8();
LABEL_198:
          v246 = v276;
          v247 = *(v276 - 8);
          if (!(*(v247 + 48))(v9 + v245, 1, v276))
          {
            goto LABEL_199;
          }

          goto LABEL_203;
        case 0x16u:
          __swift_destroy_boxed_opaque_existential_1((v1 + v3));
          v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
          v234 = v233[12];
          v235 = sub_1E65D74E8();
          (*(*(v235 - 8) + 8))(v9 + v234, v235);
          v236 = *(v9 + v233[16] + 8);

          v237 = v233[20];
          v238 = sub_1E65DB3E8();
          v239 = *(v238 - 8);
          if (!(*(v239 + 48))(v9 + v237, 1, v238))
          {
            (*(v239 + 8))(v9 + v237, v238);
          }

          v240 = *(v9 + v233[24] + 8);

          v241 = *(v9 + v233[28] + 8);

          v242 = v233[32];
          v243 = sub_1E65DB5D8();
          v244 = *(v243 - 8);
          if (!(*(v244 + 48))(v9 + v242, 1, v243))
          {
            (*(v244 + 8))(v9 + v242, v243);
          }

          v245 = v233[36];
          v246 = sub_1E65D7A38();
          v247 = *(v246 - 8);
          if (!(*(v247 + 48))(v9 + v245, 1, v246))
          {
LABEL_199:
            (*(v247 + 8))(v9 + v245, v246);
          }

          goto LABEL_203;
        case 0x17u:
          v256 = sub_1E65E57D8();
          (*(*(v256 - 8) + 8))(v1 + v3, v256);
          v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
          v258 = *(v257 + 48);
          v259 = sub_1E65E5528();
          (*(*(v259 - 8) + 8))(v9 + v258, v259);
          if (*(v9 + *(v257 + 64) + 8) >= 0xCuLL)
          {
          }

          goto LABEL_203;
        case 0x18u:

          v232 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
          v252 = sub_1E65DB848();
          goto LABEL_196;
        case 0x1Au:
          sub_1E65E52B8();
          v267 = swift_getEnumCaseMultiPayload();
          if (v267 == 1)
          {

            goto LABEL_203;
          }

          if (v267)
          {
            goto LABEL_203;
          }

LABEL_175:
          v248 = sub_1E65D74E8();
          goto LABEL_202;
        case 0x1Bu:
          type metadata accessor for PlaylistType();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v248 = sub_1E65DAEB8();
LABEL_202:
            (*(*(v248 - 8) + 8))(v1 + v3, v248);
          }

          else
          {
LABEL_6:
            v12 = *(v9 + 8);
          }

          goto LABEL_203;
        case 0x1Cu:
          v248 = sub_1E65D76F8();
          goto LABEL_202;
        case 0x1Du:
          v291 = sub_1E65E55E8();
          (*(*(v291 - 8) + 8))(v1 + v3, v291);
          v232 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
          v252 = sub_1E65D7EB8();
LABEL_196:
          (*(*(v252 - 8) + 8))(v9 + v232, v252);
          goto LABEL_203;
        case 0x1Eu:
          v253 = sub_1E65E56B8();
          (*(*(v253 - 8) + 8))(v1 + v3, v253);
          v254 = &unk_1ED072110;
          v255 = &unk_1E65EA2D0;
          goto LABEL_189;
        case 0x1Fu:
          v265 = sub_1E65DA308();
          (*(*(v265 - 8) + 8))(v1 + v3, v265);
          v266 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
          goto LABEL_190;
        case 0x20u:
          v280 = sub_1E65E58D8();
          (*(*(v280 - 8) + 8))(v1 + v3, v280);
          v254 = &qword_1ED072120;
          v255 = &qword_1E65EA2E0;
LABEL_189:
          v281 = __swift_instantiateConcreteTypeFromMangledNameV2(v254, v255);
          v282 = *(v9 + *(v281 + 48));

          v266 = *(v281 + 64);
LABEL_190:
          v283 = *(v9 + v266);

          goto LABEL_203;
        case 0x21u:
          v248 = sub_1E65D9048();
          goto LABEL_202;
        default:
          goto LABEL_203;
      }
    }
  }

LABEL_142:

  v359 = v5;
  v358 = v1 + v7;
  v168 = *(v1 + v7 + *(v5 + 20));
  v169 = v1 + v7 + *(v5 + 20);
  v355 = v169;

  v362 = type metadata accessor for AppComposer();
  v170 = (v169 + v362[5]);
  v171 = *v170;
  swift_unknownObjectRelease();
  v172 = type metadata accessor for AppEnvironment();
  v173 = v172[6];
  v357 = type metadata accessor for AccountService();
  v356 = *(v357[-1].Description + 1);
  v356(v170 + v173, v357);
  v174 = v172[7];
  v354 = type metadata accessor for AppStateService();
  v353 = *(v354[-1].Description + 1);
  v353(v170 + v174, v354);
  v175 = v172[8];
  v352 = type metadata accessor for ArchivedSessionService();
  v351 = *(v352[-1].Description + 1);
  v351(v170 + v175, v352);
  v176 = v172[9];
  v350 = type metadata accessor for AssetService();
  v349 = *(v350[-1].Description + 1);
  v349(v170 + v176, v350);
  v177 = v172[10];
  v348 = type metadata accessor for AwardsService();
  v347 = *(v348[-1].Description + 1);
  v347(v170 + v177, v348);
  v178 = v172[11];
  v346 = type metadata accessor for BookmarkService();
  v345 = *(v346[-1].Description + 1);
  v345(v170 + v178, v346);
  v179 = v172[12];
  v344 = type metadata accessor for CatalogService();
  v343 = *(v344[-1].Description + 1);
  v343(v170 + v179, v344);
  v180 = v172[13];
  v342 = type metadata accessor for ConfigurationService();
  v341 = *(v342[-1].Description + 1);
  v341(v170 + v180, v342);
  v181 = v172[14];
  v340 = type metadata accessor for ContentAvailabilityService();
  v339 = *(v340[-1].Description + 1);
  v339(v170 + v181, v340);
  v182 = v172[15];
  v338 = type metadata accessor for EngagementService();
  v337 = *(v338[-1].Description + 1);
  v337(v170 + v182, v338);
  v183 = v172[16];
  v336 = type metadata accessor for HealthDataService();
  v335 = *(v336[-1].Description + 1);
  v335(v170 + v183, v336);
  v184 = v172[17];
  v334 = type metadata accessor for InteropService();
  v333 = *(v334[-1].Description + 1);
  v333(v170 + v184, v334);
  v185 = v172[18];
  v332 = type metadata accessor for LocalizationService();
  v331 = *(v332[-1].Description + 1);
  v331(v170 + v185, v332);
  v186 = v172[19];
  v330 = type metadata accessor for MarketingService();
  v329 = *(v330[-1].Description + 1);
  v329(v170 + v186, v330);
  v187 = v172[20];
  v328 = type metadata accessor for MetricService();
  v327 = *(v328[-1].Description + 1);
  v327(v170 + v187, v328);
  v188 = v172[21];
  v326 = type metadata accessor for PersonalizationService();
  v325 = *(v326[-1].Description + 1);
  v325(v170 + v188, v326);
  v189 = v172[22];
  v324 = type metadata accessor for PlayerService();
  v323 = *(v324[-1].Description + 1);
  v323(v170 + v189, v324);
  v190 = v172[23];
  v322 = type metadata accessor for PrivacyPreferenceService();
  v321 = *(v322[-1].Description + 1);
  v321(v170 + v190, v322);
  v191 = v172[24];
  v320 = type metadata accessor for RecommendationService();
  v319 = *(v320[-1].Description + 1);
  v319(v170 + v191, v320);
  v192 = v172[25];
  v318 = type metadata accessor for RemoteBrowsingService();
  v317 = *(v318[-1].Description + 1);
  v317(v170 + v192, v318);
  v193 = v172[26];
  v316 = type metadata accessor for SearchService();
  v315 = *(v316[-1].Description + 1);
  v315(v170 + v193, v316);
  v194 = v172[27];
  v309 = type metadata accessor for ServiceSubscriptionService();
  v314 = *(v309[-1].Description + 1);
  v314(v170 + v194, v309);
  v195 = v172[28];
  v307 = type metadata accessor for SessionService();
  v313 = *(v307[-1].Description + 1);
  v313(v170 + v195, v307);
  v196 = v172[29];
  v197 = type metadata accessor for SharePlayService();
  v312 = *(v197[-1].Description + 1);
  v312(v170 + v196, v197);
  v198 = v172[30];
  v199 = type metadata accessor for SiriService();
  v311 = *(v199[-1].Description + 1);
  v311(v170 + v198, v199);
  v200 = v172[31];
  v201 = type metadata accessor for SyncService();
  v310 = *(v201[-1].Description + 1);
  v310(v170 + v200, v201);
  v202 = (v170 + v172[32]);
  v203 = v202[1];

  v204 = v202[3];

  v205 = v202[5];

  v206 = v172[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v308 = *(QueueService[-1].Description + 1);
  v308(v170 + v206, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v170 + v172[34]));
  v208 = *(v170 + v172[35]);

  v209 = v172[36];
  v210 = type metadata accessor for WorkoutPlanService();
  v211 = *(v210[-1].Description + 1);
  v211(v170 + v209, v210);
  v212 = *(v355 + v362[6]);

  v213 = (v355 + v362[7]);
  v214 = *v213;

  v215 = v213[1];

  v216 = (v213 + *(type metadata accessor for AppDataItemResolver() + 24));
  v217 = *v216;
  swift_unknownObjectRelease();
  v356(v216 + v172[6], v357);
  v353(v216 + v172[7], v354);
  v351(v216 + v172[8], v352);
  v349(v216 + v172[9], v350);
  v347(v216 + v172[10], v348);
  v345(v216 + v172[11], v346);
  v343(v216 + v172[12], v344);
  v341(v216 + v172[13], v342);
  v339(v216 + v172[14], v340);
  v337(v216 + v172[15], v338);
  v335(v216 + v172[16], v336);
  v333(v216 + v172[17], v334);
  v331(v216 + v172[18], v332);
  v329(v216 + v172[19], v330);
  v327(v216 + v172[20], v328);
  v325(v216 + v172[21], v326);
  v323(v216 + v172[22], v324);
  v321(v216 + v172[23], v322);
  v319(v216 + v172[24], v320);
  v317(v216 + v172[25], v318);
  v315(v216 + v172[26], v316);
  v314(v216 + v172[27], v309);
  v313(v216 + v172[28], v307);
  v312(v216 + v172[29], v197);
  v311(v216 + v172[30], v199);
  v310(v216 + v172[31], v201);
  v218 = (v216 + v172[32]);
  v219 = v218[1];

  v220 = v218[3];

  v221 = v218[5];

  v308(v216 + v172[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v216 + v172[34]));
  v222 = *(v216 + v172[35]);

  v211(v216 + v172[36], v210);
  v223 = *(v355 + v362[8]);
  swift_unknownObjectRelease();
  if (*(v355 + v362[9] + 8) >= 0xCuLL)
  {
  }

  v224 = (v355 + v362[10]);
  if (v224[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v224);
  }

  v225 = *(v358 + v359[6]);
  swift_unknownObjectRelease();
  v226 = (v358 + v359[7]);
  if (v226[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v226);
  }

  v227 = *(v358 + v359[8]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E619C53C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RoutingContextAction() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6191B74(a1, v1 + v6, v1 + v9);
}

uint64_t sub_1E619C678()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1E618C784(v2, v3, v4);
}

uint64_t sub_1E619C6E8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E618C998(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_1E619C7F8()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1E5DFE6BC;

  JUMPOUT(0x1E6198804);
}

uint64_t sub_1E619C90C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5DF7474(a1, v5);
}

uint64_t sub_1E619C9C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E619CA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v60 = a3;
  v6 = type metadata accessor for AppComposer();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076038, &qword_1E65F4908);
  v12 = *(v11 - 8);
  v58 = v11;
  v59 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v56 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v45 - v16;
  v17 = sub_1E65DCA88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - v22;
  v48 = v3;
  v50 = sub_1E619CF08(a1, a2);
  v55 = v23;
  sub_1E63D53AC(v50, v23);
  v46 = type metadata accessor for AppComposer;
  sub_1E5E1D624(v3, v10, type metadata accessor for AppComposer);
  v24 = *(v18 + 16);
  v52 = v17;
  v24(v21, v23, v17);
  v25 = *(v51 + 80);
  v26 = (v25 + 16) & ~v25;
  v27 = v26 + v7;
  v47 = v25 | 7;
  v28 = *(v18 + 80);
  v53 = v18;
  v29 = (v27 + v28) & ~v28;
  v30 = swift_allocObject();
  sub_1E5E1E250(v10, v30 + v26, type metadata accessor for AppComposer);
  (*(v18 + 32))(v30 + v29, v21, v17);
  v31 = v54;
  sub_1E5E1D624(v48, v54, v46);
  sub_1E5DF650C(v49, v61);
  v32 = *(a2 + 24);
  v45 = *a2;
  v46 = v32;
  v33 = *(a2 + 56);
  v48 = *(a2 + 40);
  v49 = v33;
  v51 = *(a2 + 72);
  v34 = (v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_1E5E1E250(v31, v36 + v26, type metadata accessor for AppComposer);
  *(v36 + v34) = v50;
  sub_1E5DF599C(v61, v36 + v35);
  v37 = (v36 + ((v35 + 47) & 0xFFFFFFFFFFFFFFF8));
  v38 = *(a2 + 48);
  v37[2] = *(a2 + 32);
  v37[3] = v38;
  v37[4] = *(a2 + 64);
  v39 = *(a2 + 16);
  *v37 = *a2;
  v37[1] = v39;
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076040, &qword_1E65F4910);
  sub_1E619FB2C();
  v40 = v56;
  sub_1E65DCAF8();
  (*(v53 + 8))(v55, v52);
  sub_1E5FED46C(&qword_1ED076080, &qword_1ED076038, &qword_1E65F4908);
  v42 = v57;
  v41 = v58;
  sub_1E5FEE4C8(v40);
  v43 = *(v59 + 8);
  v43(v40, v41);
  sub_1E5FEE4C8(v42);
  return (v43)(v42, v41);
}

uint64_t sub_1E619CF08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v71 = *(v72 - 8);
  v6 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v69 = v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = v56 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v70 = *(v68 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = v56 - v12;
  v13 = type metadata accessor for AppComposer();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8);
  v66 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v83 = v56 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v82 = v56 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v56 - v23;
  v26 = v25;
  v62 = v25;
  MEMORY[0x1EEE9AC00](v22);
  v28 = v56 - v27;
  v64 = 0x80000001E6613F30;
  sub_1E5E1D624(v2, v56 - v27, type metadata accessor for AppComposer);
  sub_1E5DF650C(a1, &v89);
  v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v30 = (v29 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v14 + 80);
  v32 = swift_allocObject();
  v85 = v32;
  sub_1E5E1E250(v28, v32 + v29, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v89, v32 + v30);
  sub_1E5E1D624(v3, v24, type metadata accessor for AppComposer);
  v56[7] = *a2;
  v56[8] = *(a2 + 24);
  v56[9] = *(a2 + 40);
  v56[10] = *(a2 + 56);
  v56[11] = *(a2 + 72);
  v33 = swift_allocObject();
  v65 = v33;
  sub_1E5E1E250(v24, v33 + v29, type metadata accessor for AppComposer);
  v34 = (v33 + v30);
  v35 = *(a2 + 48);
  v34[2] = *(a2 + 32);
  v34[3] = v35;
  v34[4] = *(a2 + 64);
  v36 = *(a2 + 16);
  *v34 = *a2;
  v34[1] = v36;
  v37 = v82;
  v59 = type metadata accessor for AppComposer;
  sub_1E5E1D624(v3, v82, type metadata accessor for AppComposer);
  v58 = v31;
  v84 = swift_allocObject();
  v60 = type metadata accessor for AppComposer;
  sub_1E5E1E250(v37, v84 + v29, type metadata accessor for AppComposer);
  v57 = v3;
  v38 = v83;
  sub_1E5E1D624(v3, v83, type metadata accessor for AppComposer);
  v82 = swift_allocObject();
  sub_1E5E1E250(v38, v82 + v29, type metadata accessor for AppComposer);
  v63 = *v3;
  v83 = type metadata accessor for ActionButtonDescriptor(0);
  v81 = type metadata accessor for ArtworkDescriptor();
  v80 = type metadata accessor for ContextMenu(0);
  v79 = type metadata accessor for ItemContext();
  v78 = type metadata accessor for ItemMetrics();
  v77 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v76 = type metadata accessor for SectionMetrics();
  v56[6] = type metadata accessor for ViewDescriptor();
  v75 = sub_1E61A3DB4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v74 = sub_1E61A3DB4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v73 = sub_1E61A3DB4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v56[5] = sub_1E61A3DB4(&qword_1EE2DB720, type metadata accessor for ItemContext);
  v56[4] = sub_1E61A3DB4(&qword_1EE2DB738, type metadata accessor for ItemContext);
  v56[3] = sub_1E61A3DB4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  v56[2] = sub_1E61A3DB4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  v56[1] = sub_1E61A3DB4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  v56[0] = sub_1E61A3DB4(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E61A3DB4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  swift_unknownObjectRetain();

  sub_1E65DC178();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v40 = sub_1E65DC168();
  v87 = v39;
  v88 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70);
  v86 = v40;
  v41 = v67;
  sub_1E65DC248();
  v42 = v66;
  sub_1E5E1D624(v57, v66, v59);
  v43 = (v58 + 32) & ~v58;
  v44 = (v62 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v64;
  *(v45 + 16) = 0xD000000000000013;
  *(v45 + 24) = v46;
  sub_1E5E1E250(v42, v45 + v43, v60);
  v47 = (v45 + v44);
  *v47 = sub_1E5F8AA74;
  v47[1] = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 0xD000000000000013;
  *(v48 + 24) = v46;
  type metadata accessor for AppFeature();
  sub_1E61A3DB4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98);
  v49 = v69;
  v50 = v68;
  sub_1E65E4DE8();
  v51 = swift_allocObject();
  v52 = v65;
  *(v51 + 16) = sub_1E61A43C4;
  *(v51 + 24) = v52;

  sub_1E65E4CC8();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1E5FE9CE8;
  *(v53 + 24) = v51;

  v54 = sub_1E65E4F08();

  (*(v71 + 8))(v49, v72);
  (*(v70 + 8))(v41, v50);
  return v54;
}

uint64_t sub_1E619DBC4(uint64_t *a1, uint64_t a2)
{
  v24 = a2;
  v3 = type metadata accessor for AppComposer();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760C8, &qword_1E65F4960);
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = sub_1E65DCA88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65DCC18();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  (*(v10 + 16))(v13, v24, v9);
  sub_1E65DCC08();
  sub_1E5E1D624(a1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = swift_allocObject();
  sub_1E5E1E250(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AppComposer);
  type metadata accessor for AppFeature();
  sub_1E61A3DB4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E61A3DB4(&qword_1ED0760D0, MEMORY[0x1E699EEB0]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v21 = sub_1E65E4F08();
  (*(v27 + 8))(v8, v28);
  (*(v15 + 8))(v18, v14);
  return v21;
}

uint64_t sub_1E619DFA4()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DCA88() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E619DBC4((v0 + v2), v5);
}

uint64_t sub_1E619E070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v49 - v10;
  v11 = sub_1E65D7848();
  v12 = *(v11 - 8);
  v51 = v11;
  v52 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1E65DD0F8();
  v15 = *(v59 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1E65DD0A8();
  v19 = *(v50 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v50);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v49 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v55 = &v49 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v58 = &v49 - v29;
  v30 = type metadata accessor for AppState();
  v31 = a1 + v30[69];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v33 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
  sub_1E65DAE08();
  v34 = v51;
  sub_1E65DD068();
  v35 = a1 + v30[6];
  sub_1E637A69C();
  v53 = v26;
  sub_1E65DCFE8();
  (*(v15 + 8))(v18, v59);
  v36 = *(v19 + 8);
  v37 = v23;
  v38 = v50;
  v39 = v52;
  v36(v37, v50);
  v40 = v30[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v59 = a1;
  v41 = v56;
  sub_1E65E4C98();
  v42 = v54;
  sub_1E5E1F544(v54);
  sub_1E5DFE50C(v41, &qword_1ED071F78, &unk_1E65EA3F0);
  v43 = *(v39 + 48);
  if (v43(v42, 1, v34) == 1)
  {
    v44 = v57;
    sub_1E65D77C8();
    if (v43(v42, 1, v34) != 1)
    {
      sub_1E5DFE50C(v42, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    v44 = v57;
    (*(v39 + 32))(v57, v42, v34);
  }

  v45 = v55;
  v46 = v53;
  sub_1E65DCFF8();
  (*(v39 + 8))(v44, v34);
  v36(v46, v38);
  if (v33 < 2 || v33 == 3)
  {
    v47 = v58;
    sub_1E65DD028();
    v36(v45, v38);
    sub_1E63969B4();
    sub_1E65DD058();
    return (v36)(v47, v38);
  }

  else
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E619E5D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for AppState() + 276);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v5 = sub_1E65DD0A8();
  v6 = *(*(v5 - 8) + 24);

  return v6(v3 + v4, a2, v5);
}

uint64_t sub_1E619E670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v132 = a3;
  v133 = a1;
  v134 = a2;
  v130 = a5;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076058, &qword_1E65F4918);
  v6 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v129 = v93 - v7;
  v8 = type metadata accessor for AppComposer();
  v9 = v8 - 8;
  v121 = *(v8 - 8);
  v10 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v123 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v116 = *(v117 - 8);
  v11 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v119 = v93 - v12;
  v131 = sub_1E65D76F8();
  v120 = *(v131 - 8);
  v13 = *(v120 + 64);
  v14 = MEMORY[0x1EEE9AC00](v131);
  v124 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v122 = v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v93 - v21;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076068, &qword_1E65F4920);
  v118 = *(v126 - 8);
  v23 = *(v118 + 64);
  v24 = MEMORY[0x1EEE9AC00](v126);
  v26 = v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v93 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v93 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = v93 - v33;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076040, &qword_1E65F4910);
  v35 = *(*(v127 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v133);
  v38 = v93 - v37;
  v39 = *(v36 + *(v9 + 28) + 8);
  v125 = v38;
  if (v39 < 2)
  {
    v40 = v123;
    sub_1E5E1D624(v36, v123, type metadata accessor for AppComposer);
    sub_1E5DF650C(v132, &v137);
    v41 = *a4;
    v42 = *(a4 + 24);
    v43 = *(a4 + 56);
    v131 = *(a4 + 40);
    v132 = v43;
    v133 = *(a4 + 72);
    v44 = (*(v121 + 80) + 16) & ~*(v121 + 80);
    v45 = (v10 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    sub_1E5E1E250(v40, v47 + v44, type metadata accessor for AppComposer);
    *(v47 + v45) = v134;
    sub_1E5DF599C(&v137, v47 + v46);
    v48 = (v47 + ((v46 + 47) & 0xFFFFFFFFFFFFFFF8));
    v49 = *(a4 + 48);
    v48[2] = *(a4 + 32);
    v48[3] = v49;
    v48[4] = *(a4 + 64);
    v50 = *(a4 + 16);
    *v48 = *a4;
    v48[1] = v50;

    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076088, &qword_1E65F4930);
    sub_1E61A1148();
    *&v136 = sub_1E65E3E28();
    *(&v136 + 1) = v51;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076078, &qword_1E65F4928);
    sub_1E5FED46C(&qword_1ED076070, &qword_1ED076078, &qword_1E65F4928);
    sub_1E5FEE4C8(&v136);

    v135 = v137;
    sub_1E5FEE4C8(&v135);
    v135 = v136;
    sub_1E5FED46C(&qword_1ED076060, &qword_1ED076068, &qword_1E65F4920);
    v53 = v129;
    sub_1E62DFB74(&v135, v126, v52);
    sub_1E619FBB8();
    v54 = v125;
    sub_1E62DFC6C(v53, v128);
    sub_1E5DFE50C(v53, &qword_1ED076058, &qword_1E65F4918);

    v55 = v54;
LABEL_5:
    sub_1E619FB2C();
    sub_1E5FEE4C8(v55);
    return sub_1E5DFE50C(v55, &qword_1ED076040, &qword_1E65F4910);
  }

  v108 = v10;
  v109 = v13;
  v110 = v20;
  v111 = v26;
  v112 = v29;
  v56 = v122;
  v57 = v119;
  v113 = v34;
  v114 = v32;
  if (v39 == 3)
  {
    v58 = sub_1E65E3E08();
    v59 = *(*(v58 - 8) + 56);
    v115 = v22;
    v59(v22, 1, 1, v58);
    sub_1E65D76E8();
    (*(v116 + 104))(v57, *MEMORY[0x1E699D720], v117);
    v60 = v133;
    v61 = v123;
    sub_1E5E1D624(v133, v123, type metadata accessor for AppComposer);
    v62 = *(v121 + 80);
    v63 = ((v62 + 16) & ~v62) + v108;
    v64 = (v62 + 16) & ~v62;
    v65 = v62 | 7;
    v121 = swift_allocObject();
    sub_1E5E1E250(v61, v121 + v64, type metadata accessor for AppComposer);
    sub_1E5E1D624(v60, v61, type metadata accessor for AppComposer);
    v117 = swift_allocObject();
    sub_1E5E1E250(v61, v117 + v64, type metadata accessor for AppComposer);
    v100 = type metadata accessor for AppComposer;
    sub_1E5E1D624(v60, v61, type metadata accessor for AppComposer);
    v101 = v63;
    v98 = v65;
    v116 = swift_allocObject();
    v94 = v64;
    v95 = type metadata accessor for AppComposer;
    sub_1E5E1E250(v61, v116 + v64, type metadata accessor for AppComposer);
    sub_1E5E1D624(v60, v61, type metadata accessor for AppComposer);
    sub_1E5DF650C(v132, &v137);
    v104 = *a4;
    v105 = *(a4 + 24);
    v106 = *(a4 + 40);
    v107 = *(a4 + 56);
    v108 = *(a4 + 72);
    v66 = v120;
    v67 = *(v120 + 16);
    v102 = v120 + 16;
    v103 = v67;
    v67(v124, v56, v131);
    v68 = (v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = v68;
    v69 = (v68 + 47) & 0xFFFFFFFFFFFFFFF8;
    v99 = ((v69 + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
    v97 = (v69 + 87) & 0xFFFFFFFFFFFFFFF8;
    v70 = (v99 + *(v66 + 80)) & ~*(v66 + 80);
    v71 = swift_allocObject();
    sub_1E5E1E250(v61, v71 + v64, type metadata accessor for AppComposer);
    sub_1E5DF599C(&v137, v71 + v68);
    v109 = v71;
    v72 = (v71 + v69);
    v73 = *(a4 + 48);
    v72[2] = *(a4 + 32);
    v72[3] = v73;
    v72[4] = *(a4 + 64);
    v74 = *(a4 + 16);
    *v72 = *a4;
    v72[1] = v74;
    *(v71 + ((v69 + 87) & 0xFFFFFFFFFFFFFFF8)) = v134;
    v75 = v71 + v70;
    v76 = v124;
    (*(v66 + 32))(v75, v124, v131);
    v77 = v133;
    v78 = v100;
    sub_1E5E1D624(v133, v61, v100);
    sub_1E5DF650C(v132, &v137);
    v79 = swift_allocObject();
    v80 = v94;
    v81 = v95;
    sub_1E5E1E250(v61, v79 + v94, v95);
    sub_1E5DF599C(&v137, v79 + v96);
    v82 = (v79 + v69);
    v132 = v79;
    v83 = *(a4 + 48);
    v82[2] = *(a4 + 32);
    v82[3] = v83;
    v82[4] = *(a4 + 64);
    v84 = *(a4 + 16);
    *v82 = *a4;
    v82[1] = v84;
    *(v79 + v97) = v134;
    sub_1E5E1D624(v77, v61, v78);
    v133 = swift_allocObject();
    sub_1E5E1E250(v61, v133 + v80, v81);
    sub_1E5DFD1CC(v115, v110, &qword_1ED074410, &qword_1E65F0B78);
    v103(v76, v122, v131);
    v123 = type metadata accessor for ActionButtonDescriptor(0);
    swift_retain_n();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
    v107 = type metadata accessor for ArtworkDescriptor();
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
    v103 = type metadata accessor for ContextMenu(0);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
    v101 = type metadata accessor for ItemContext();
    v100 = type metadata accessor for ItemMetrics();
    v99 = type metadata accessor for SectionHeaderSubtitleDescriptor();
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
    v97 = type metadata accessor for SectionMetrics();
    v96 = type metadata accessor for ViewDescriptor();
    v95 = sub_1E61A3DB4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
    v94 = sub_1E60731B0();
    v93[6] = sub_1E61A3DB4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    v93[5] = sub_1E5FEB2FC();
    v93[4] = sub_1E60C08DC();
    v93[3] = sub_1E60C15C0();
    v93[2] = sub_1E61A3DB4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
    v93[1] = sub_1E60728B0();
    sub_1E61A3DB4(&qword_1EE2DB720, type metadata accessor for ItemContext);
    sub_1E61A3DB4(&qword_1EE2DB738, type metadata accessor for ItemContext);
    sub_1E61A3DB4(&qword_1EE2DB730, type metadata accessor for ItemContext);
    sub_1E61A3DB4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
    sub_1E61A3DB4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
    sub_1E60C217C();
    sub_1E61A3DB4(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
    sub_1E5DF11E0();
    sub_1E5DF1338();
    sub_1E61A3DB4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
    v85 = v111;
    sub_1E65DC198();
    (*(v120 + 8))(v122, v131);
    sub_1E5DFE50C(v115, &qword_1ED074410, &qword_1E65F0B78);
    sub_1E5FED46C(&qword_1ED076060, &qword_1ED076068, &qword_1E65F4920);
    v86 = v112;
    v87 = v126;
    sub_1E5FEE4C8(v85);
    v88 = *(v118 + 8);
    v88(v85, v87);
    v89 = v114;
    sub_1E5FEE4C8(v86);
    v88(v86, v87);
    v90 = v113;
    sub_1E5FEE4C8(v89);
    v88(v89, v87);
    sub_1E5FEE4C8(v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076078, &qword_1E65F4928);
    sub_1E5FED46C(&qword_1ED076070, &qword_1ED076078, &qword_1E65F4928);
    v91 = v129;
    sub_1E62DFC6C(v89, v87);
    sub_1E619FBB8();
    v55 = v125;
    sub_1E62DFC6C(v91, v128);
    sub_1E5DFE50C(v91, &qword_1ED076058, &qword_1E65F4918);
    v88(v89, v87);
    v88(v90, v87);
    goto LABEL_5;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E619FA78@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1E619E670(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8), a1);
}

unint64_t sub_1E619FB2C()
{
  result = qword_1ED076048;
  if (!qword_1ED076048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076040, &qword_1E65F4910);
    sub_1E619FBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076048);
  }

  return result;
}

unint64_t sub_1E619FBB8()
{
  result = qword_1ED076050;
  if (!qword_1ED076050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076058, &qword_1E65F4918);
    sub_1E5FED46C(&qword_1ED076060, &qword_1ED076068, &qword_1E65F4920);
    sub_1E5FED46C(&qword_1ED076070, &qword_1ED076078, &qword_1E65F4928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076050);
  }

  return result;
}

uint64_t sub_1E619FC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v45 = a5;
  v44 = a4;
  v55 = a6;
  v47 = sub_1E65E4188();
  v46 = *(v47 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760A0, &qword_1E65F4940);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076098, &qword_1E65F4938);
  v17 = *(v52 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v20 = &v43 - v19;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760B0, &qword_1E65F4948);
  v51 = *(v54 - 8);
  v21 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v43 - v22;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076088, &qword_1E65F4930);
  v23 = *(*(v53 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v53);
  v48 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v50 = &v43 - v26;
  sub_1E65E4418();
  v56 = a2;
  v57 = a3;
  v58 = v44;
  v59 = v45;
  v60 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076068, &qword_1E65F4920);
  sub_1E5FED46C(&qword_1ED076060, &qword_1ED076068, &qword_1E65F4920);
  sub_1E65E3C18();
  sub_1E65E4178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760B8, &qword_1E65F4950);
  inited = swift_initStackObject();
  v45 = xmmword_1E65EB9E0;
  *(inited + 16) = xmmword_1E65EB9E0;
  v28 = sub_1E65E43F8();
  *(inited + 32) = v28;
  v29 = sub_1E65E4418();
  *(inited + 33) = v29;
  sub_1E65E4408();
  sub_1E65E4408();
  if (sub_1E65E4408() != v28)
  {
    sub_1E65E4408();
  }

  sub_1E65E4408();
  if (sub_1E65E4408() != v29)
  {
    sub_1E65E4408();
  }

  v30 = v52;
  v31 = sub_1E5FED46C(&qword_1ED0760A8, &qword_1ED0760A0, &qword_1E65F4940);
  sub_1E65E48A8();
  (*(v46 + 8))(v11, v47);
  (*(v13 + 8))(v16, v12);
  v61 = v12;
  v62 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v49;
  sub_1E65E4878();
  (*(v17 + 8))(v20, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760C0, &qword_1E65F4958);
  v34 = swift_initStackObject();
  *(v34 + 16) = v45;
  v35 = sub_1E65E4448();
  *(v34 + 32) = v35;
  v36 = sub_1E65E4458();
  *(v34 + 33) = v36;
  v37 = sub_1E65E4478();
  sub_1E65E4478();
  if (sub_1E65E4478() != v35)
  {
    v37 = sub_1E65E4478();
  }

  sub_1E65E4478();
  if (sub_1E65E4478() != v36)
  {
    v37 = sub_1E65E4478();
  }

  v61 = v30;
  v62 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v48;
  v40 = v54;
  sub_1E6501658(v37, 0x4024000000000000, 0, v54, v38);
  (*(v51 + 8))(v33, v40);
  sub_1E61A1148();
  v41 = v50;
  sub_1E5FEE4C8(v39);
  sub_1E5DFE50C(v39, &qword_1ED076088, &qword_1E65F4930);
  sub_1E5FEE4C8(v41);
  return sub_1E5DFE50C(v41, &qword_1ED076088, &qword_1E65F4930);
}

uint64_t objectdestroy_2Tm()
{
  v122 = type metadata accessor for AppComposer();
  v120 = *(*(v122 - 1) + 80);
  v118 = *(*(v122 - 1) + 64);
  v119 = (v120 + 16) & ~v120;
  v121 = v0;
  v115 = v0 + v119;
  v1 = *(v0 + v119);

  v2 = (v0 + v119 + v122[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v117 = type metadata accessor for AccountService();
  v116 = *(v117[-1].Description + 1);
  v116(&v2[v5], v117);
  v6 = v4[7];
  v114 = type metadata accessor for AppStateService();
  v113 = *(v114[-1].Description + 1);
  v113(&v2[v6], v114);
  v7 = v4[8];
  v112 = type metadata accessor for ArchivedSessionService();
  v111 = *(v112[-1].Description + 1);
  v111(&v2[v7], v112);
  v8 = v4[9];
  v110 = type metadata accessor for AssetService();
  v109 = *(v110[-1].Description + 1);
  v109(&v2[v8], v110);
  v9 = v4[10];
  v108 = type metadata accessor for AwardsService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v9], v108);
  v10 = v4[11];
  v106 = type metadata accessor for BookmarkService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v10], v106);
  v11 = v4[12];
  v104 = type metadata accessor for CatalogService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v11], v104);
  v12 = v4[13];
  v102 = type metadata accessor for ConfigurationService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v12], v102);
  v13 = v4[14];
  v100 = type metadata accessor for ContentAvailabilityService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v13], v100);
  v14 = v4[15];
  v98 = type metadata accessor for EngagementService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v14], v98);
  v15 = v4[16];
  v96 = type metadata accessor for HealthDataService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v15], v96);
  v16 = v4[17];
  v94 = type metadata accessor for InteropService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v16], v94);
  v17 = v4[18];
  v92 = type metadata accessor for LocalizationService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v17], v92);
  v18 = v4[19];
  v90 = type metadata accessor for MarketingService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v18], v90);
  v19 = v4[20];
  v88 = type metadata accessor for MetricService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v19], v88);
  v20 = v4[21];
  v86 = type metadata accessor for PersonalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v20], v86);
  v21 = v4[22];
  v84 = type metadata accessor for PlayerService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v21], v84);
  v22 = v4[23];
  v82 = type metadata accessor for PrivacyPreferenceService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v22], v82);
  v23 = v4[24];
  v80 = type metadata accessor for RecommendationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v23], v80);
  v24 = v4[25];
  v78 = type metadata accessor for RemoteBrowsingService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v24], v78);
  v25 = v4[26];
  v76 = type metadata accessor for SearchService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v25], v76);
  v26 = v4[27];
  v74 = type metadata accessor for ServiceSubscriptionService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v26], v74);
  v27 = v4[28];
  v67 = type metadata accessor for SessionService();
  v72 = *(v67[-1].Description + 1);
  v72(&v2[v27], v67);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v71 = *(v29[-1].Description + 1);
  v71(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v70 = *(v31[-1].Description + 1);
  v70(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v69 = *(v33[-1].Description + 1);
  v69(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v68 = *(QueueService[-1].Description + 1);
  v68(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v66 = *(v42[-1].Description + 1);
  v66(&v2[v41], v42);
  v43 = *(v115 + v122[6]);

  v44 = (v115 + v122[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v116(&v47[v4[6]], v117);
  v113(&v47[v4[7]], v114);
  v111(&v47[v4[8]], v112);
  v109(&v47[v4[9]], v110);
  v107(&v47[v4[10]], v108);
  v105(&v47[v4[11]], v106);
  v103(&v47[v4[12]], v104);
  v101(&v47[v4[13]], v102);
  v99(&v47[v4[14]], v100);
  v97(&v47[v4[15]], v98);
  v95(&v47[v4[16]], v96);
  v93(&v47[v4[17]], v94);
  v91(&v47[v4[18]], v92);
  v89(&v47[v4[19]], v90);
  v87(&v47[v4[20]], v88);
  v85(&v47[v4[21]], v86);
  v83(&v47[v4[22]], v84);
  v81(&v47[v4[23]], v82);
  v79(&v47[v4[24]], v80);
  v77(&v47[v4[25]], v78);
  v75(&v47[v4[26]], v76);
  v73(&v47[v4[27]], v74);
  v72(&v47[v4[28]], v67);
  v71(&v47[v4[29]], v29);
  v70(&v47[v4[30]], v31);
  v69(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v68(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v66(&v47[v4[36]], v42);
  v54 = *(v115 + v122[8]);
  swift_unknownObjectRelease();
  if (*(v115 + v122[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v115 + v122[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v118 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v121 + v56);

  __swift_destroy_boxed_opaque_existential_1((v121 + v57));
  v59 = (v121 + ((v57 + 47) & 0xFFFFFFFFFFFFFFF8));
  v60 = *v59;
  swift_unknownObjectRelease();
  v61 = v59[3];

  v62 = v59[5];

  v63 = v59[7];

  v64 = v59[9];

  return swift_deallocObject();
}

uint64_t sub_1E61A1084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);

  return sub_1E619FC9C(a1, v2 + v6, v8, v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8), v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8), a2);
}

unint64_t sub_1E61A1148()
{
  result = qword_1ED076090;
  if (!qword_1ED076090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076088, &qword_1E65F4930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076098, &qword_1E65F4938);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0760A0, &qword_1E65F4940);
    sub_1E5FED46C(&qword_1ED0760A8, &qword_1ED0760A0, &qword_1E65F4940);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E61A3DB4(&qword_1EE2D4C38, MEMORY[0x1E6980270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076090);
  }

  return result;
}

uint64_t sub_1E61A1320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v100 = a5;
  v102 = a3;
  v106 = a2;
  v98 = a6;
  v8 = type metadata accessor for AppComposer();
  v101 = *(v8 - 8);
  v9 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v85 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v71 - v13;
  v91 = v71 - v13;
  v107 = sub_1E65D76F8();
  v103 = *(v107 - 8);
  v87 = *(v103 + 64);
  v15 = MEMORY[0x1EEE9AC00](v107);
  v105 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v86 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v71 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076068, &qword_1E65F4920);
  v26 = *(v25 - 8);
  v96 = v25;
  v97 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v92 = v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v93 = v71 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v94 = v71 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v95 = v71 - v34;
  v35 = sub_1E65E3E08();
  v36 = *(v35 - 8);
  v37 = *(v36 + 16);
  v104 = v24;
  v37(v24, v100, v35);
  (*(v36 + 56))(v24, 0, 1, v35);
  v108 = v18;
  sub_1E65D76E8();
  (*(v11 + 104))(v14, *MEMORY[0x1E699D720], v10);
  v38 = v85;
  sub_1E5E1D624(a1, v85, type metadata accessor for AppComposer);
  v39 = *(v101 + 80);
  v40 = (v39 + 16) & ~v39;
  v41 = v39 | 7;
  v90 = swift_allocObject();
  sub_1E5E1E250(v38, v90 + v40, type metadata accessor for AppComposer);
  sub_1E5E1D624(a1, v38, type metadata accessor for AppComposer);
  v99 = v41;
  v89 = swift_allocObject();
  v100 = type metadata accessor for AppComposer;
  v101 = v40;
  sub_1E5E1E250(v38, v89 + v40, type metadata accessor for AppComposer);
  v75 = a1;
  v76 = type metadata accessor for AppComposer;
  sub_1E5E1D624(a1, v38, type metadata accessor for AppComposer);
  v77 = v40 + v9;
  v88 = swift_allocObject();
  sub_1E5E1E250(v38, v88 + v40, type metadata accessor for AppComposer);
  v42 = v38;
  sub_1E5E1D624(a1, v38, type metadata accessor for AppComposer);
  sub_1E5DF650C(v102, &v109);
  v43 = a4;
  v80 = *a4;
  v81 = a4[3];
  v82 = a4[5];
  v83 = a4[7];
  v84 = a4[9];
  v44 = v103;
  v45 = *(v103 + 16);
  v78 = v103 + 16;
  v79 = v45;
  v46 = v105;
  v47 = v107;
  v45(v105, v108, v107);
  v48 = (v40 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = v48;
  v49 = (v48 + 47) & 0xFFFFFFFFFFFFFFF8;
  v73 = v49;
  v50 = (v49 + 87) & 0xFFFFFFFFFFFFFFF8;
  v74 = v50 + 8;
  v51 = (v50 + 8 + *(v44 + 80)) & ~*(v44 + 80);
  v52 = swift_allocObject();
  sub_1E5E1E250(v42, v52 + v101, v100);
  sub_1E5DF599C(&v109, v52 + v48);
  v87 = v52;
  v53 = (v52 + v49);
  v54 = v43[3];
  v53[2] = v43[2];
  v53[3] = v54;
  v53[4] = v43[4];
  v55 = v43[1];
  *v53 = *v43;
  v53[1] = v55;
  *(v52 + v50) = v106;
  (*(v44 + 32))(v52 + v51, v46, v47);
  v56 = v75;
  v57 = v76;
  sub_1E5E1D624(v75, v42, v76);
  sub_1E5DF650C(v102, &v109);
  v58 = swift_allocObject();
  v60 = v100;
  v59 = v101;
  sub_1E5E1E250(v42, v58 + v101, v100);
  sub_1E5DF599C(&v109, v58 + v72);
  v61 = (v58 + v73);
  v102 = v58;
  v62 = v43[3];
  v61[2] = v43[2];
  v61[3] = v62;
  v61[4] = v43[4];
  v63 = v43[1];
  *v61 = *v43;
  v61[1] = v63;
  *(v58 + v50) = v106;
  sub_1E5E1D624(v56, v42, v57);
  v99 = swift_allocObject();
  sub_1E5E1E250(v42, v99 + v59, v60);
  sub_1E5DFD1CC(v104, v86, &qword_1ED074410, &qword_1E65F0B78);
  v79(v105, v108, v107);
  v101 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v85 = type metadata accessor for ArtworkDescriptor();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v81 = type metadata accessor for ContextMenu(0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v79 = type metadata accessor for ItemContext();
  v78 = type metadata accessor for ItemMetrics();
  v77 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v75 = type metadata accessor for SectionMetrics();
  v74 = type metadata accessor for ViewDescriptor();
  v73 = sub_1E61A3DB4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v72 = sub_1E60731B0();
  v71[6] = sub_1E61A3DB4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v71[5] = sub_1E5FEB2FC();
  v71[4] = sub_1E60C08DC();
  v71[3] = sub_1E60C15C0();
  v71[2] = sub_1E61A3DB4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v71[1] = sub_1E60728B0();
  sub_1E61A3DB4(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E61A3DB4(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E61A3DB4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E61A3DB4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E61A3DB4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E61A3DB4(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E61A3DB4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v64 = v92;
  sub_1E65DC198();
  (*(v103 + 8))(v108, v107);
  sub_1E5DFE50C(v104, &qword_1ED074410, &qword_1E65F0B78);
  sub_1E5FED46C(&qword_1ED076060, &qword_1ED076068, &qword_1E65F4920);
  v65 = v93;
  v66 = v96;
  sub_1E5FEE4C8(v64);
  v67 = *(v97 + 8);
  v67(v64, v66);
  v68 = v94;
  sub_1E5FEE4C8(v65);
  v67(v65, v66);
  v69 = v95;
  sub_1E5FEE4C8(v68);
  v67(v68, v66);
  sub_1E5FEE4C8(v69);
  return (v67)(v69, v66);
}

uint64_t objectdestroy_19Tm()
{
  v71 = type metadata accessor for AppComposer();
  v124 = *(*(v71 - 1) + 80);
  v122 = *(*(v71 - 1) + 64);
  v1 = sub_1E65D76F8();
  v126 = *(v1 - 8);
  v127 = v1;
  v121 = *(v126 + 80);
  v125 = *(v126 + 64);
  v128 = v0;
  v123 = (v124 + 16) & ~v124;
  v118 = v0 + v123;
  v2 = *(v0 + v123);

  v3 = (v0 + v123 + v71[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v120 = type metadata accessor for AccountService();
  v119 = *(v120[-1].Description + 1);
  v119(&v3[v6], v120);
  v7 = v5[7];
  v117 = type metadata accessor for AppStateService();
  v116 = *(v117[-1].Description + 1);
  v116(&v3[v7], v117);
  v8 = v5[8];
  v115 = type metadata accessor for ArchivedSessionService();
  v114 = *(v115[-1].Description + 1);
  v114(&v3[v8], v115);
  v9 = v5[9];
  v113 = type metadata accessor for AssetService();
  v112 = *(v113[-1].Description + 1);
  v112(&v3[v9], v113);
  v10 = v5[10];
  v111 = type metadata accessor for AwardsService();
  v110 = *(v111[-1].Description + 1);
  v110(&v3[v10], v111);
  v11 = v5[11];
  v109 = type metadata accessor for BookmarkService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v11], v109);
  v12 = v5[12];
  v107 = type metadata accessor for CatalogService();
  v106 = *(v107[-1].Description + 1);
  v106(&v3[v12], v107);
  v13 = v5[13];
  v105 = type metadata accessor for ConfigurationService();
  v104 = *(v105[-1].Description + 1);
  v104(&v3[v13], v105);
  v14 = v5[14];
  v103 = type metadata accessor for ContentAvailabilityService();
  v102 = *(v103[-1].Description + 1);
  v102(&v3[v14], v103);
  v15 = v5[15];
  v101 = type metadata accessor for EngagementService();
  v100 = *(v101[-1].Description + 1);
  v100(&v3[v15], v101);
  v16 = v5[16];
  v99 = type metadata accessor for HealthDataService();
  v98 = *(v99[-1].Description + 1);
  v98(&v3[v16], v99);
  v17 = v5[17];
  v97 = type metadata accessor for InteropService();
  v96 = *(v97[-1].Description + 1);
  v96(&v3[v17], v97);
  v18 = v5[18];
  v95 = type metadata accessor for LocalizationService();
  v94 = *(v95[-1].Description + 1);
  v94(&v3[v18], v95);
  v19 = v5[19];
  v93 = type metadata accessor for MarketingService();
  v92 = *(v93[-1].Description + 1);
  v92(&v3[v19], v93);
  v20 = v5[20];
  v91 = type metadata accessor for MetricService();
  v90 = *(v91[-1].Description + 1);
  v90(&v3[v20], v91);
  v21 = v5[21];
  v89 = type metadata accessor for PersonalizationService();
  v88 = *(v89[-1].Description + 1);
  v88(&v3[v21], v89);
  v22 = v5[22];
  v87 = type metadata accessor for PlayerService();
  v86 = *(v87[-1].Description + 1);
  v86(&v3[v22], v87);
  v23 = v5[23];
  v85 = type metadata accessor for PrivacyPreferenceService();
  v84 = *(v85[-1].Description + 1);
  v84(&v3[v23], v85);
  v24 = v5[24];
  v83 = type metadata accessor for RecommendationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v3[v24], v83);
  v25 = v5[25];
  v81 = type metadata accessor for RemoteBrowsingService();
  v80 = *(v81[-1].Description + 1);
  v80(&v3[v25], v81);
  v26 = v5[26];
  v79 = type metadata accessor for SearchService();
  v78 = *(v79[-1].Description + 1);
  v78(&v3[v26], v79);
  v27 = v5[27];
  v77 = type metadata accessor for ServiceSubscriptionService();
  v76 = *(v77[-1].Description + 1);
  v76(&v3[v27], v77);
  v28 = v5[28];
  v69 = type metadata accessor for SessionService();
  v75 = *(v69[-1].Description + 1);
  v75(&v3[v28], v69);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v74 = *(v30[-1].Description + 1);
  v74(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v73 = *(v32[-1].Description + 1);
  v73(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v72 = *(v34[-1].Description + 1);
  v72(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v70 = *(QueueService[-1].Description + 1);
  v70(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v68 = *(v43[-1].Description + 1);
  v68(&v3[v42], v43);
  v44 = *(v118 + v71[6]);

  v45 = (v118 + v71[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v119(&v48[v5[6]], v120);
  v116(&v48[v5[7]], v117);
  v114(&v48[v5[8]], v115);
  v112(&v48[v5[9]], v113);
  v110(&v48[v5[10]], v111);
  v108(&v48[v5[11]], v109);
  v106(&v48[v5[12]], v107);
  v104(&v48[v5[13]], v105);
  v102(&v48[v5[14]], v103);
  v100(&v48[v5[15]], v101);
  v98(&v48[v5[16]], v99);
  v96(&v48[v5[17]], v97);
  v94(&v48[v5[18]], v95);
  v92(&v48[v5[19]], v93);
  v90(&v48[v5[20]], v91);
  v88(&v48[v5[21]], v89);
  v86(&v48[v5[22]], v87);
  v84(&v48[v5[23]], v85);
  v82(&v48[v5[24]], v83);
  v80(&v48[v5[25]], v81);
  v78(&v48[v5[26]], v79);
  v76(&v48[v5[27]], v77);
  v75(&v48[v5[28]], v69);
  v74(&v48[v5[29]], v30);
  v73(&v48[v5[30]], v32);
  v72(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v70(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v68(&v48[v5[36]], v43);
  v55 = *(v118 + v71[8]);
  swift_unknownObjectRelease();
  if (*(v118 + v71[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v118 + v71[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = (v122 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 47) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 87) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v128 + v57));
  v60 = (v128 + v58);
  v61 = *v60;
  swift_unknownObjectRelease();
  v62 = v60[3];

  v63 = v60[5];

  v64 = v60[7];

  v65 = v60[9];

  v66 = *(v128 + v59);

  (*(v126 + 8))(v128 + ((v121 + v59 + 8) & ~v121), v127);

  return swift_deallocObject();
}

uint64_t objectdestroy_22Tm()
{
  v123 = type metadata accessor for AppComposer();
  v121 = *(*(v123 - 1) + 80);
  v119 = *(*(v123 - 1) + 64);
  v120 = (v121 + 16) & ~v121;
  v122 = v0;
  v116 = v0 + v120;
  v1 = *(v0 + v120);

  v2 = (v0 + v120 + v123[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v118 = type metadata accessor for AccountService();
  v117 = *(v118[-1].Description + 1);
  v117(&v2[v5], v118);
  v6 = v4[7];
  v115 = type metadata accessor for AppStateService();
  v114 = *(v115[-1].Description + 1);
  v114(&v2[v6], v115);
  v7 = v4[8];
  v113 = type metadata accessor for ArchivedSessionService();
  v112 = *(v113[-1].Description + 1);
  v112(&v2[v7], v113);
  v8 = v4[9];
  v111 = type metadata accessor for AssetService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v8], v111);
  v9 = v4[10];
  v109 = type metadata accessor for AwardsService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v9], v109);
  v10 = v4[11];
  v107 = type metadata accessor for BookmarkService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v10], v107);
  v11 = v4[12];
  v105 = type metadata accessor for CatalogService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v11], v105);
  v12 = v4[13];
  v103 = type metadata accessor for ConfigurationService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v12], v103);
  v13 = v4[14];
  v101 = type metadata accessor for ContentAvailabilityService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v13], v101);
  v14 = v4[15];
  v99 = type metadata accessor for EngagementService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v14], v99);
  v15 = v4[16];
  v97 = type metadata accessor for HealthDataService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v15], v97);
  v16 = v4[17];
  v95 = type metadata accessor for InteropService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v16], v95);
  v17 = v4[18];
  v93 = type metadata accessor for LocalizationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v17], v93);
  v18 = v4[19];
  v91 = type metadata accessor for MarketingService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v18], v91);
  v19 = v4[20];
  v89 = type metadata accessor for MetricService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v19], v89);
  v20 = v4[21];
  v87 = type metadata accessor for PersonalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v20], v87);
  v21 = v4[22];
  v85 = type metadata accessor for PlayerService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v21], v85);
  v22 = v4[23];
  v83 = type metadata accessor for PrivacyPreferenceService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v22], v83);
  v23 = v4[24];
  v81 = type metadata accessor for RecommendationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v23], v81);
  v24 = v4[25];
  v79 = type metadata accessor for RemoteBrowsingService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v24], v79);
  v25 = v4[26];
  v77 = type metadata accessor for SearchService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v25], v77);
  v26 = v4[27];
  v75 = type metadata accessor for ServiceSubscriptionService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v26], v75);
  v27 = v4[28];
  v68 = type metadata accessor for SessionService();
  v73 = *(v68[-1].Description + 1);
  v73(&v2[v27], v68);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v72 = *(v29[-1].Description + 1);
  v72(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v71 = *(v31[-1].Description + 1);
  v71(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v70 = *(v33[-1].Description + 1);
  v70(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v69 = *(QueueService[-1].Description + 1);
  v69(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v67 = *(v42[-1].Description + 1);
  v67(&v2[v41], v42);
  v43 = *(v116 + v123[6]);

  v44 = (v116 + v123[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v117(&v47[v4[6]], v118);
  v114(&v47[v4[7]], v115);
  v112(&v47[v4[8]], v113);
  v110(&v47[v4[9]], v111);
  v108(&v47[v4[10]], v109);
  v106(&v47[v4[11]], v107);
  v104(&v47[v4[12]], v105);
  v102(&v47[v4[13]], v103);
  v100(&v47[v4[14]], v101);
  v98(&v47[v4[15]], v99);
  v96(&v47[v4[16]], v97);
  v94(&v47[v4[17]], v95);
  v92(&v47[v4[18]], v93);
  v90(&v47[v4[19]], v91);
  v88(&v47[v4[20]], v89);
  v86(&v47[v4[21]], v87);
  v84(&v47[v4[22]], v85);
  v82(&v47[v4[23]], v83);
  v80(&v47[v4[24]], v81);
  v78(&v47[v4[25]], v79);
  v76(&v47[v4[26]], v77);
  v74(&v47[v4[27]], v75);
  v73(&v47[v4[28]], v68);
  v72(&v47[v4[29]], v29);
  v71(&v47[v4[30]], v31);
  v70(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v69(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v67(&v47[v4[36]], v42);
  v54 = *(v116 + v123[8]);
  swift_unknownObjectRelease();
  if (*(v116 + v123[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v116 + v123[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v119 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 87) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v122 + v56));
  v59 = (v122 + v57);
  v60 = *v59;
  swift_unknownObjectRelease();
  v61 = v59[3];

  v62 = v59[5];

  v63 = v59[7];

  v64 = v59[9];

  v65 = *(v122 + v58);

  return swift_deallocObject();
}

uint64_t sub_1E61A3D20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E61A3DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E61A3DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ItemContext();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchItemContext();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1D624(a1, v9, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1E5E1E250(v9, v13, type metadata accessor for SearchItemContext);
    sub_1E624E170(a2, a3);
    return sub_1E61A6420(v13, type metadata accessor for SearchItemContext);
  }

  else
  {
    sub_1E61A6420(v9, type metadata accessor for ItemContext);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }
}

uint64_t sub_1E61A3FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E61A3DFC(a1, v6, a2);
}

uint64_t sub_1E61A406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v30 - v17;
  v33 = v30 - v17;
  v32 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1E5DFD1CC(a1, v14, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 16))(v10, v34, v6);
  v20 = *(a4 + 24);
  v30[0] = *a4;
  v30[1] = v20;
  v21 = *(a4 + 56);
  v30[2] = *(a4 + 40);
  v30[3] = v21;
  v34 = *(a4 + 72);
  v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v23 = (v12 + *(v7 + 80) + v22) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1E5FAB460(v14, v25 + v22, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 32))(v25 + v23, v10, v6);
  *(v25 + v24) = v32;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(a4 + 64);
  v26[3] = *(a4 + 48);
  v26[4] = v27;
  v28 = *(a4 + 32);
  v26[1] = *(a4 + 16);
  v26[2] = v28;
  *v26 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v33, &unk_1E65EC0C8, v25);
}

uint64_t sub_1E61A43C4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E61A406C(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E61A4470(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65DD0A8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61A4530, 0, 0);
}

uint64_t sub_1E61A4530()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = **(v0 + 24);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v5 = sub_1E65DD048();
  v7 = v6;
  v9 = v8;
  v10 = v8;
  (*(v2 + 8))(v1, v3);
  if (v10 == 1)
  {
    v11 = swift_task_alloc();
    *(v11 + 16) = *(v0 + 16);
    v12 = sub_1E5F9F7B8(sub_1E61A64C0, v11, v5);
    sub_1E61A64A0(v5, v7, 1u);
  }

  else
  {
    sub_1E61A64A0(v5, v7, v9);
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14(v12);
}

uint64_t sub_1E61A4684(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FE99E8;

  return sub_1E61A4470(a1, v1 + v5);
}

uint64_t sub_1E61A475C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61A477C, 0, 0);
}

uint64_t sub_1E61A477C()
{
  v1 = v0[3];
  v2 = *(v1 + *(type metadata accessor for AppComposer() + 20) + 8);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1E61A482C;
  v4 = v0[2];
  v5 = v0[3];

  return sub_1E61A4A04(v4, v2);
}

uint64_t sub_1E61A482C(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1E61A492C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E61A475C(a1, v1 + v5);
}

uint64_t sub_1E61A4A04(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072088, &qword_1E65EA770);
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = type metadata accessor for ItemContext();
  *(v3 + 56) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v9 = type metadata accessor for SearchItemContext();
  *(v3 + 72) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v11 = sub_1E65DCCE8();
  *(v3 + 96) = v11;
  v12 = *(v11 - 8);
  *(v3 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  v14 = sub_1E65D9CC8();
  *(v3 + 128) = v14;
  v15 = *(v14 - 8);
  *(v3 + 136) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  *(v3 + 160) = v17;
  v18 = *(v17 - 8);
  *(v3 + 168) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61A4C78, 0, 0);
}

uint64_t sub_1E61A4C78()
{
  v1 = v0[21];
  v2 = v0[2];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[2] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = 63 - v7;
  v10 = v0[13];
  v11 = v9 >> 6;
  v54 = (v1 + 8);
  v50 = (v10 + 8);
  v51 = (v10 + 32);
  v52 = v0[17];
  v53 = (v52 + 32);
  v55 = v0[2];

  v13 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v0[23] = v57;
    if (!v8)
    {
      break;
    }

LABEL_11:
    v19 = v0[7];
    v18 = v0[8];
    v20 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v1 + 16))(v0[22], *(v55 + 48) + *(v1 + 72) * (v20 | (v13 << 6)), v0[20]);
    sub_1E65E04E8();
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      v14 = type metadata accessor for ItemContext;
      v15 = v0 + 8;
      goto LABEL_5;
    }

    v22 = v0[10];
    v21 = v0[11];
    v23 = v0[9];
    sub_1E5E1E250(v0[8], v21, type metadata accessor for SearchItemContext);
    sub_1E5E1E250(v21, v22, type metadata accessor for SearchItemContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v0[15];
      v48 = v0[14];
      v25 = v0[12];
      v26 = v0[10];
      v27 = *v51;
      (*v51)();
      (v27)(v24, v48, v25);
      sub_1E65DCCB8();
      v28 = qword_1E65F4A10[sub_1E65DCCA8()];
      v29 = v0[20];
      v30 = v0[18];
      v47 = v0[16];
      v49 = v0[19];
      v46 = v0[15];
      v44 = v0[22];
      v45 = v0[12];
      sub_1E65D9C88();
      (*v54)(v44, v29);
      (*v50)(v46, v45);
      v31 = *v53;
      (*v53)(v49, v30, v47);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1E64F610C(0, v57[2] + 1, 1, v57);
      }

      v33 = v57[2];
      v32 = v57[3];
      if (v33 >= v32 >> 1)
      {
        v57 = sub_1E64F610C(v32 > 1, v33 + 1, 1, v57);
      }

      v34 = v0[19];
      v35 = v0[16];
      v57[2] = v33 + 1;
      result = v31(v57 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v33, v34, v35);
    }

    else
    {
      v14 = type metadata accessor for SearchItemContext;
      v15 = v0 + 10;
LABEL_5:
      v16 = *v15;
      (*v54)(v0[22], v0[20]);
      result = sub_1E61A6420(v16, v14);
    }
  }

  while (1)
  {
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 >= v11)
    {
      break;
    }

    v8 = *(v4 + 8 * v17);
    ++v13;
    if (v8)
    {
      v13 = v17;
      goto LABEL_11;
    }
  }

  v36 = v0[2];
  v37 = v0[3];

  v38 = v37 + *(type metadata accessor for AppComposer() + 20);
  v39 = v38 + *(type metadata accessor for AppEnvironment() + 48);
  v40 = CatalogService.fetchRemoteCatalogLockups.getter();
  v0[24] = v41;
  v56 = (v40 + *v40);
  v42 = v40[1];
  v43 = swift_task_alloc();
  v0[25] = v43;
  *v43 = v0;
  v43[1] = sub_1E61A5118;

  return (v56)(4, v57);
}

uint64_t sub_1E61A5118(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v9 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v5 = sub_1E61A55E8;
  }

  else
  {
    v7 = v3[23];
    v6 = v3[24];

    v5 = sub_1E61A523C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E61A523C()
{
  v48 = v0;
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  if (v2)
  {
    v42 = *(v0 + 40);
    v44 = *(v0 + 48);
    v40 = *(v0 + 32);
    v46 = MEMORY[0x1E69E7CC0];
    sub_1E601BF24(0, v2, 0);
    v38 = sub_1E65D8258();
    v3 = *(v38 - 8);
    v36 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v34 = *(v3 + 72);
    do
    {
      v5 = v0;
      v6 = *(v0 + 48);
      v36(v6 + *(v40 + 48), v4, v38);
      v7 = sub_1E65D8078();
      v9 = v8;
      v10 = sub_1E65D81B8();
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      v47[0] = v7;
      v47[1] = v9;

      MEMORY[0x1E694D7C0](v12, v13);

      *v6 = v7;
      *(v44 + 8) = v9;
      v15 = *(v46 + 16);
      v14 = *(v46 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1E601BF24(v14 > 1, v15 + 1, 1);
      }

      v16 = *(v5 + 48);
      *(v46 + 16) = v15 + 1;
      sub_1E5FAB460(v16, v46 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v15, &qword_1ED072088, &qword_1E65EA770);
      v4 += v34;
      --v2;
      v0 = v5;
    }

    while (v2);
    v17 = *(v5 + 208);

    if (*(v46 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = *(v0 + 208);

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072928, &qword_1E65EC048);
      v18 = sub_1E65E6A28();
      goto LABEL_16;
    }
  }

  v18 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v20 = *(v0 + 216);
  v47[0] = v18;

  sub_1E64346A8(v21, 1, v47);
  if (v20)
  {

    return swift_unexpectedError();
  }

  else
  {
    v23 = *(v0 + 176);
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v35 = *(v0 + 120);
    v37 = *(v0 + 112);
    v39 = *(v0 + 88);
    v41 = *(v0 + 80);
    v43 = *(v0 + 64);
    v45 = *(v0 + 48);
    v26 = *(v0 + 224);
    v27 = *(v0 + 16);
    v28 = *(v0 + 24);

    v29 = v47[0];
    v30 = swift_task_alloc();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    *(v30 + 32) = v26;
    v31 = sub_1E6402E7C(sub_1E61A6480, v30, v27);

    v32 = sub_1E600A848(v31);

    v33 = *(v0 + 8);

    return v33(v32);
  }
}

uint64_t sub_1E61A55E8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v14 = v0[6];

  v11 = v0[1];
  v12 = v0[27];

  return v11();
}

uint64_t sub_1E61A56D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v101 = a4;
  v110 = a3;
  v119 = a2;
  v120 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v114 = &v91 - v12;
  v103 = type metadata accessor for ItemContext();
  v13 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v113 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v99 = *(v15 - 8);
  v100 = v15;
  v16 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v91 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v112 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v96 = &v91 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v111 = &v91 - v24;
  v25 = sub_1E65D7848();
  v107 = *(v25 - 8);
  v108 = v25;
  v26 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E65DCA68();
  v105 = *(v29 - 8);
  v106 = v29;
  v30 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760D8, &qword_1E65F4990);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v97 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v109 = &v91 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v117 = &v91 - v39;
  v118 = sub_1E65D8258();
  v115 = *(v118 - 8);
  v40 = *(v115 + 64);
  v41 = MEMORY[0x1EEE9AC00](v118);
  v43 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v116 = &v91 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760E0, &qword_1E65F4998);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v48 = &v91 - v47;
  v49 = sub_1E65DCCE8();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v91 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a1;
  sub_1E628C28C(v48);
  v54 = v49;
  v55 = v50;
  if ((*(v50 + 48))(v48, 1, v54) == 1)
  {
    sub_1E5DFE50C(v48, &qword_1ED0760E0, &qword_1E65F4998);
    v56 = 1;
LABEL_10:
    v78 = v120;
    goto LABEL_11;
  }

  v95 = v5;
  v57 = *(v50 + 32);
  v94 = v54;
  v57(v53, v48, v54);
  v58 = sub_1E65DCC98();
  v60 = v119;
  if (!*(v119 + 16))
  {

    goto LABEL_8;
  }

  v61 = sub_1E6215038(v58, v59);
  v63 = v62;

  if ((v63 & 1) == 0)
  {
LABEL_8:
    (*(v55 + 8))(v53, v94);
    goto LABEL_9;
  }

  v92 = v53;
  v93 = v55;
  v64 = v115;
  v65 = *(v60 + 56) + *(v115 + 72) * v61;
  v66 = v118;
  (*(v115 + 16))(v43, v65, v118);
  (*(v64 + 32))(v116, v43, v66);
  v68 = v105;
  v67 = v106;
  (*(v105 + 104))(v32, *MEMORY[0x1E699EE70], v106);
  v69 = v110;
  v70 = *v110;
  swift_getKeyPath();
  v119 = v70;
  sub_1E65E4EC8();

  v71 = v69 + *(type metadata accessor for AppComposer() + 20);
  v72 = type metadata accessor for AppEnvironment();
  v73 = v117;
  sub_1E645B850(v32, v28, &v71[*(v72 + 136)], v117);
  (*(v107 + 8))(v28, v108);
  (*(v68 + 8))(v32, v67);
  v74 = v109;
  sub_1E5DFD1CC(v73, v109, &qword_1ED0760D8, &qword_1E65F4990);
  v75 = sub_1E65DCF98();
  v76 = *(v75 - 8);
  v77 = *(v76 + 48);
  if ((v77)(v74, 1, v75) == 1)
  {
    sub_1E5DFE50C(v73, &qword_1ED0760D8, &qword_1E65F4990);
    (*(v64 + 8))(v116, v118);
    (*(v93 + 8))(v92, v94);
    sub_1E5DFE50C(v74, &qword_1ED0760D8, &qword_1E65F4990);
LABEL_9:
    v56 = 1;
    goto LABEL_10;
  }

  swift_getKeyPath();
  v110 = v77;
  v81 = v98;
  sub_1E65E4EC8();

  v82 = v96;
  sub_1E5FC39B8(v81, v101, v96);
  (*(v99 + 8))(v81, v100);
  v83 = v74;
  v84 = *(v76 + 8);
  v84(v83, v75);
  v85 = v111;
  sub_1E5FAB460(v82, v111, &qword_1ED072610, &qword_1E65EB930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  sub_1E65E04E8();
  sub_1E5DFD1CC(v85, v112, &qword_1ED072610, &qword_1E65EB930);
  v86 = type metadata accessor for ContextMenu(0);
  (*(*(v86 - 8) + 56))(v114, 1, 1, v86);
  v87 = v97;
  sub_1E5DFD1CC(v117, v97, &qword_1ED0760D8, &qword_1E65F4990);
  if ((v110)(v87, 1, v75) == 1)
  {
    sub_1E5DFE50C(v87, &qword_1ED0760D8, &qword_1E65F4990);
    v88 = 1;
    v89 = v104;
  }

  else
  {
    v89 = v104;
    sub_1E601320C(v104);
    v84(v87, v75);
    v88 = 0;
  }

  v90 = type metadata accessor for ItemMetrics();
  (*(*(v90 - 8) + 56))(v89, v88, 1, v90);
  v119 = type metadata accessor for ActionButtonDescriptor(0);
  v110 = type metadata accessor for ArtworkDescriptor();
  v109 = type metadata accessor for ViewDescriptor();
  v108 = sub_1E61A3DB4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  sub_1E61A3DB4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E61A3DB4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E61A3DB4(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E61A3DB4(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E61A3DB4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E61A3DB4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E61A3DB4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v78 = v120;
  sub_1E65E0488();
  sub_1E5DFE50C(v111, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v117, &qword_1ED0760D8, &qword_1E65F4990);
  (*(v115 + 8))(v116, v118);
  (*(v93 + 8))(v92, v94);
  v56 = 0;
LABEL_11:
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v79 - 8) + 56))(v78, v56, 1, v79);
}

uint64_t sub_1E61A6420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61A64A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1E61A64C0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for AppComposer();
  return sub_1E5FC0EB4(v4, *(v3 + *(v5 + 20) + 8), a1);
}

uint64_t dispatch thunk of RouteDetourResolving.resolveDestination(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1E5DFA78C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1E61A6698@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RouteDestination();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1E61A6704(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61A6724, 0, 0);
}

uint64_t sub_1E61A6724()
{
  sub_1E5F9CE1C(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1E61A6788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for PageMetricsClick();
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v9 = sub_1E65E2928();
  v6[8] = v9;
  v10 = *(v9 - 8);
  v6[9] = v10;
  v11 = *(v10 + 64) + 15;
  v6[10] = swift_task_alloc();
  v12 = sub_1E65E24A8();
  v6[11] = v12;
  v13 = *(v12 - 8);
  v6[12] = v13;
  v14 = *(v13 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61A68E4, 0, 0);
}

uint64_t sub_1E61A68E4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699F2F8])
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
LABEL_3:
    v5 = v0[13];
    v6 = v0[10];
    v8 = v0[6];
    v7 = v0[7];

    v9 = v0[1];

    return v9();
  }

  if (v4 == *MEMORY[0x1E699F2E0])
  {
    v11 = v0[13];
    v12 = v0[10];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[4];
    (*(v0[12] + 96))(v11, v0[11]);
    v16 = *(v11 + 8);

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760E8, &qword_1E65F4AD8);
    (*(v14 + 32))(v12, v11 + *(v17 + 48), v13);
    v19 = *(v15 + 48);
    v18 = *(v15 + 56);
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_1E61A7198;
    v21 = v0[10];
    v22 = v0[3];

    return sub_1E61A786C(v19, v18, v21);
  }

  if (v4 == *MEMORY[0x1E699F2F0])
  {
    goto LABEL_3;
  }

  if (v4 == *MEMORY[0x1E699F2E8])
  {
    v24 = v0[5];
    v23 = v0[6];
    v25 = v0[4];
    v26 = sub_1E65D9D78();
    (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
    v27 = v24[5];
    v28 = *MEMORY[0x1E69CBAA0];
    v29 = sub_1E65D8C68();
    (*(*(v29 - 8) + 104))(v23 + v27, v28, v29);
    v30 = v24[6];
    v31 = sub_1E65D74E8();
    (*(*(v31 - 8) + 56))(v23 + v30, 1, 1, v31);
    v32 = v24[8];
    v33 = sub_1E65DA208();
    (*(*(v33 - 8) + 56))(v23 + v32, 1, 1, v33);
    v34 = v24[14];
    v35 = *MEMORY[0x1E69CBCD8];
    v36 = sub_1E65D8F28();
    (*(*(v36 - 8) + 104))(v23 + v34, v35, v36);
    v37 = v24[15];
    v38 = *MEMORY[0x1E69CC448];
    v39 = sub_1E65D9908();
    v40 = *(v39 - 8);
    (*(v40 + 104))(v23 + v37, v38, v39);
    (*(v40 + 56))(v23 + v37, 0, 1, v39);
    v41 = MEMORY[0x1E69E7CC0];
    v42 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v23 + v24[7]) = v41;
    v43 = (v23 + v24[9]);
    *v43 = 0;
    v43[1] = 0;
    v44 = (v23 + v24[10]);
    *v44 = 0;
    v44[1] = 0;
    *(v23 + v24[11]) = v42;
    v45 = (v23 + v24[12]);
    *v45 = 0;
    v45[1] = 0;
    *(v23 + v24[13]) = xmmword_1E65F4AC0;
    v46 = *(v25 + 56);
    v79 = (*(v25 + 48) + **(v25 + 48));
    v47 = *(*(v25 + 48) + 4);
    v48 = swift_task_alloc();
    v0[18] = v48;
    *v48 = v0;
    v48[1] = sub_1E61A759C;
    v49 = v0[6];
LABEL_15:

    return v79(v49);
  }

  if (v4 == *MEMORY[0x1E699F300])
  {
    v50 = v0[7];
    v51 = v0[4];
    v52 = v0[5];
    v53 = *MEMORY[0x1E69CC908];
    v54 = sub_1E65D9D78();
    v55 = *(v54 - 8);
    (*(v55 + 104))(v50, v53, v54);
    (*(v55 + 56))(v50, 0, 1, v54);
    v56 = v52[5];
    v57 = *MEMORY[0x1E69CBA90];
    v58 = sub_1E65D8C68();
    (*(*(v58 - 8) + 104))(v50 + v56, v57, v58);
    v59 = v52[6];
    v60 = sub_1E65D74E8();
    (*(*(v60 - 8) + 56))(v50 + v59, 1, 1, v60);
    v61 = v52[8];
    v62 = sub_1E65DA208();
    (*(*(v62 - 8) + 56))(v50 + v61, 1, 1, v62);
    v63 = v52[14];
    v64 = *MEMORY[0x1E69CBCC8];
    v65 = sub_1E65D8F28();
    (*(*(v65 - 8) + 104))(v50 + v63, v64, v65);
    v66 = v52[15];
    v67 = *MEMORY[0x1E69CC448];
    v68 = sub_1E65D9908();
    v69 = *(v68 - 8);
    (*(v69 + 104))(v50 + v66, v67, v68);
    (*(v69 + 56))(v50 + v66, 0, 1, v68);
    v70 = MEMORY[0x1E69E7CC0];
    v71 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v50 + v52[7]) = v70;
    v72 = (v50 + v52[9]);
    *v72 = 0;
    v72[1] = 0;
    v73 = (v50 + v52[10]);
    *v73 = 0;
    v73[1] = 0;
    *(v50 + v52[11]) = v71;
    v74 = (v50 + v52[12]);
    *v74 = 0;
    v74[1] = 0;
    *(v50 + v52[13]) = xmmword_1E65F4AB0;
    v75 = *(v51 + 56);
    v79 = (*(v51 + 48) + **(v51 + 48));
    v76 = *(*(v51 + 48) + 4);
    v77 = swift_task_alloc();
    v0[16] = v77;
    *v77 = v0;
    v77[1] = sub_1E61A73F4;
    v49 = v0[7];
    goto LABEL_15;
  }

  v78 = v0[11];

  return sub_1E65E6C08();
}

uint64_t sub_1E61A7198()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1E61A7350;
  }

  else
  {
    v3 = sub_1E61A72AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61A72AC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E61A7350()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61A73F4()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1E61A7744;
  }

  else
  {
    v3 = sub_1E61A7508;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61A7508()
{
  sub_1E5FC0990(v0[7]);
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E61A759C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1E61A77D8;
  }

  else
  {
    v3 = sub_1E61A76B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61A76B0()
{
  sub_1E5FC0990(v0[6]);
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E61A7744()
{
  sub_1E5FC0990(v0[7]);
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61A77D8()
{
  sub_1E5FC0990(v0[6]);
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61A786C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  v5 = sub_1E65D76F8();
  v4[25] = v5;
  v6 = *(v5 - 8);
  v4[26] = v6;
  v7 = *(v6 + 64) + 15;
  v4[27] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v10 = sub_1E65D8C68();
  v4[30] = v10;
  v11 = *(v10 - 8);
  v4[31] = v11;
  v12 = *(v11 + 64) + 15;
  v4[32] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v14 = type metadata accessor for PageMetricsClick();
  v4[34] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800) - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61A7AB4, 0, 0);
}

uint64_t sub_1E61A7AB4()
{
  v1 = v0[24];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 144);
  active = WorkoutPlanService.queryActiveWorkoutPlan.getter();
  v0[39] = v5;
  v10 = (active + *active);
  v6 = active[1];
  v7 = swift_task_alloc();
  v0[40] = v7;
  *v7 = v0;
  v7[1] = sub_1E61A7BD0;
  v8 = v0[38];

  return v10(v8);
}

uint64_t sub_1E61A7BD0()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;

  v5 = *(v2 + 312);
  if (v0)
  {

    v6 = sub_1E61A85F0;
  }

  else
  {

    v6 = sub_1E61A7D18;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E61A7D18()
{
  v1 = v0;
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v62 = v0[29];
  v64 = v0[38];
  v66 = v0[28];
  v67 = v0[37];
  v6 = sub_1E65D7EB8();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v64, 0, 1, v6);
  v8 = *MEMORY[0x1E69CC908];
  v9 = sub_1E65D9D78();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v3, v8, v9);
  v11 = v9;
  v12 = v6;
  v13 = v7;
  (*(v10 + 56))(v3, 0, 1, v11);
  (*(v4 + 104))(v2, *MEMORY[0x1E69CBA50], v5);
  v14 = sub_1E65D74E8();
  (*(*(v14 - 8) + 56))(v62, 1, 1, v14);
  v15 = sub_1E65DA208();
  (*(*(v15 - 8) + 56))(v66, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  *(inited + 32) = 9;
  v17 = v67;
  sub_1E61A8DB4(v64, v67);
  v68 = *(v13 + 48);
  v18 = v68(v17, 1, v12);
  v19 = v1[37];
  v60 = v13;
  if (v18 == 1)
  {
    sub_1E61A8E24(v19);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = v1[26];
    v23 = v1[27];
    v24 = v1[25];
    sub_1E65D7DC8();
    (*(v13 + 8))(v19, v12);
    v20 = sub_1E65D76C8();
    v21 = v25;
    (*(v22 + 8))(v23, v24);
  }

  v26 = v1[38];
  v27 = v1[36];
  v1[18] = v20;
  v1[19] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5DF4B74(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80);
  sub_1E65E6848();
  *(inited + 80) = 12;
  sub_1E61A8DB4(v26, v27);
  v28 = v68(v27, 1, v12);
  v29 = v1[36];
  v55 = v12;
  if (v28 == 1)
  {
    sub_1E61A8E24(v29);
    v30 = 0;
  }

  else
  {
    v30 = sub_1E65D7DA8();
    (*(v60 + 8))(v29, v12);
  }

  v31 = v1[38];
  v33 = v1[34];
  v32 = v1[35];
  v58 = v1[32];
  v34 = v1[31];
  v56 = v1[33];
  v57 = v1[30];
  v61 = v1[29];
  v63 = v1[28];
  v35 = v1[23];
  v65 = v1[21];
  v1[20] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760F0, &qword_1E65F4AE8);
  sub_1E61A8E8C();
  sub_1E65E6848();
  v59 = sub_1E6427784(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
  swift_arrayDestroy();
  v68(v31, 1, v55);
  v36 = sub_1E65E2918();
  v38 = v37;
  v39 = v33[14];
  v40 = *MEMORY[0x1E69CBCC8];
  v41 = sub_1E65D8F28();
  (*(*(v41 - 8) + 104))(v32 + v39, v40, v41);
  v42 = v33[15];
  v43 = *MEMORY[0x1E69CC448];
  v44 = sub_1E65D9908();
  v45 = *(v44 - 8);
  (*(v45 + 104))(v32 + v42, v43, v44);
  (*(v45 + 56))(v32 + v42, 0, 1, v44);
  sub_1E5FAB460(v56, v32, &qword_1ED073578, &qword_1E65F0E60);
  (*(v34 + 32))(v32 + v33[5], v58, v57);
  sub_1E5FAB460(v61, v32 + v33[6], &qword_1ED072340, &qword_1E65EA410);
  *(v32 + v33[7]) = MEMORY[0x1E69E7CC0];
  sub_1E5FAB460(v63, v32 + v33[8], &qword_1ED073570, &unk_1E65F4570);
  v46 = (v32 + v33[9]);
  *v46 = 0;
  v46[1] = 0;
  v47 = (v32 + v33[10]);
  *v47 = 0;
  v47[1] = 0;
  *(v32 + v33[11]) = v59;
  v48 = (v32 + v33[12]);
  *v48 = 0;
  v48[1] = 0;
  v49 = (v32 + v33[13]);
  *v49 = v36;
  v49[1] = v38;
  v69 = (v65 + *v65);
  v50 = v65[1];
  v51 = swift_task_alloc();
  v1[41] = v51;
  *v51 = v1;
  v51[1] = sub_1E61A83F4;
  v52 = v1[22];
  v53 = v1[35];

  return v69(v53);
}

uint64_t sub_1E61A83F4()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1E61A8CCC;
  }

  else
  {
    v3 = sub_1E61A8508;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61A8508()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  sub_1E5FC0990(v0[35]);
  sub_1E61A8E24(v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E61A85F0()
{
  v1 = v0;
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v62 = v0[29];
  v64 = v0[38];
  v66 = v0[28];
  v67 = v0[37];
  v6 = sub_1E65D7EB8();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v64, 1, 1, v6);
  v8 = *MEMORY[0x1E69CC908];
  v9 = sub_1E65D9D78();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v3, v8, v9);
  v11 = v9;
  v12 = v6;
  v13 = v7;
  (*(v10 + 56))(v3, 0, 1, v11);
  (*(v4 + 104))(v2, *MEMORY[0x1E69CBA50], v5);
  v14 = sub_1E65D74E8();
  (*(*(v14 - 8) + 56))(v62, 1, 1, v14);
  v15 = sub_1E65DA208();
  (*(*(v15 - 8) + 56))(v66, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  *(inited + 32) = 9;
  v17 = v67;
  sub_1E61A8DB4(v64, v67);
  v68 = *(v13 + 48);
  v18 = v68(v17, 1, v12);
  v19 = v1[37];
  v60 = v13;
  if (v18 == 1)
  {
    sub_1E61A8E24(v19);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = v1[26];
    v23 = v1[27];
    v24 = v1[25];
    sub_1E65D7DC8();
    (*(v13 + 8))(v19, v12);
    v20 = sub_1E65D76C8();
    v21 = v25;
    (*(v22 + 8))(v23, v24);
  }

  v26 = v1[38];
  v27 = v1[36];
  v1[18] = v20;
  v1[19] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5DF4B74(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80);
  sub_1E65E6848();
  *(inited + 80) = 12;
  sub_1E61A8DB4(v26, v27);
  v28 = v68(v27, 1, v12);
  v29 = v1[36];
  v55 = v12;
  if (v28 == 1)
  {
    sub_1E61A8E24(v29);
    v30 = 0;
  }

  else
  {
    v30 = sub_1E65D7DA8();
    (*(v60 + 8))(v29, v12);
  }

  v31 = v1[38];
  v33 = v1[34];
  v32 = v1[35];
  v58 = v1[32];
  v34 = v1[31];
  v56 = v1[33];
  v57 = v1[30];
  v61 = v1[29];
  v63 = v1[28];
  v35 = v1[23];
  v65 = v1[21];
  v1[20] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760F0, &qword_1E65F4AE8);
  sub_1E61A8E8C();
  sub_1E65E6848();
  v59 = sub_1E6427784(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
  swift_arrayDestroy();
  v68(v31, 1, v55);
  v36 = sub_1E65E2918();
  v38 = v37;
  v39 = v33[14];
  v40 = *MEMORY[0x1E69CBCC8];
  v41 = sub_1E65D8F28();
  (*(*(v41 - 8) + 104))(v32 + v39, v40, v41);
  v42 = v33[15];
  v43 = *MEMORY[0x1E69CC448];
  v44 = sub_1E65D9908();
  v45 = *(v44 - 8);
  (*(v45 + 104))(v32 + v42, v43, v44);
  (*(v45 + 56))(v32 + v42, 0, 1, v44);
  sub_1E5FAB460(v56, v32, &qword_1ED073578, &qword_1E65F0E60);
  (*(v34 + 32))(v32 + v33[5], v58, v57);
  sub_1E5FAB460(v61, v32 + v33[6], &qword_1ED072340, &qword_1E65EA410);
  *(v32 + v33[7]) = MEMORY[0x1E69E7CC0];
  sub_1E5FAB460(v63, v32 + v33[8], &qword_1ED073570, &unk_1E65F4570);
  v46 = (v32 + v33[9]);
  *v46 = 0;
  v46[1] = 0;
  v47 = (v32 + v33[10]);
  *v47 = 0;
  v47[1] = 0;
  *(v32 + v33[11]) = v59;
  v48 = (v32 + v33[12]);
  *v48 = 0;
  v48[1] = 0;
  v49 = (v32 + v33[13]);
  *v49 = v36;
  v49[1] = v38;
  v69 = (v65 + *v65);
  v50 = v65[1];
  v51 = swift_task_alloc();
  v1[41] = v51;
  *v51 = v1;
  v51[1] = sub_1E61A83F4;
  v52 = v1[22];
  v53 = v1[35];

  return v69(v53);
}

uint64_t sub_1E61A8CCC()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  sub_1E5FC0990(v0[35]);
  sub_1E61A8E24(v2);

  v9 = v0[1];
  v10 = v0[42];

  return v9();
}

uint64_t sub_1E61A8DB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61A8E24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E61A8E8C()
{
  result = qword_1ED0760F8;
  if (!qword_1ED0760F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0760F0, &qword_1E65F4AE8);
    sub_1E61A8F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0760F8);
  }

  return result;
}

unint64_t sub_1E61A8F10()
{
  result = qword_1ED076100;
  if (!qword_1ED076100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076108, &unk_1E65F4AF0);
    sub_1E5DF4B74(&qword_1ED076110, &qword_1ED074F18, &qword_1E65F1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076100);
  }

  return result;
}

uint64_t sub_1E61A8FC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
  sub_1E65D7FB8();
  return v1;
}

uint64_t sub_1E61A9028()
{
  v1 = *v0;
  v2 = 0x6574656C706D6F63;
  v3 = 0x656C756465686373;
  v4 = 0x6B63617473;
  if (v1 != 3)
  {
    v4 = 0x616C696176616E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79636E65636572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E61A90C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E61AA880(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E61A90F0(uint64_t a1)
{
  v2 = sub_1E61A9900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61A912C(uint64_t a1)
{
  v2 = sub_1E61A9900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}
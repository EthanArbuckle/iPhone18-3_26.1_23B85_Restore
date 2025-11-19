uint64_t sub_1E62FA728(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v5 = sub_1E65E4548();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65D7348();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v13, a2);
  v16 = __swift_project_value_buffer(v10, a2);
  v17 = sub_1E65D7338();
  a3(v17);
  (*(v6 + 104))(v9, *MEMORY[0x1E6980EA8], v5);
  v18 = sub_1E65E4578();

  (*(v6 + 8))(v9, v5);
  (*(v11 + 16))(v16, v15, v10);
  v20[1] = v18;
  sub_1E608F9E4();

  sub_1E65D7358();

  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1E62FA958()
{
  v0 = sub_1E65E4548();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D7348();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  __swift_allocate_value_buffer(v11, qword_1ED096468);
  v14 = __swift_project_value_buffer(v5, qword_1ED096468);
  sub_1E65D7338();
  sub_1E65E4498();
  sub_1E65E44B8();

  (*(v1 + 104))(v4, *MEMORY[0x1E6980EA8], v0);
  v15 = sub_1E65E4578();

  (*(v1 + 8))(v4, v0);
  v16 = v6[2];
  v16(v13, v10, v5);
  v22 = v15;
  sub_1E608F9E4();

  sub_1E65D7358();

  v17 = v6[1];
  v17(v10, v5);
  v18 = [objc_opt_self() tertiaryLabelColor];
  v16(v14, v13, v5);
  v22 = v18;
  sub_1E608F990();
  v19 = v18;
  sub_1E65D7358();

  return (v17)(v13, v5);
}

uint64_t sub_1E62FAF14(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v5 = sub_1E65E4548();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65D7348();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v26 - v17;
  __swift_allocate_value_buffer(v16, a2);
  v19 = __swift_project_value_buffer(v10, a2);
  v20 = sub_1E65D7338();
  a3(v20);
  sub_1E65E44B8();

  (*(v6 + 104))(v9, *MEMORY[0x1E6980EA8], v5);
  v21 = sub_1E65E4578();

  (*(v6 + 8))(v9, v5);
  v22 = v11[2];
  v22(v18, v15, v10);
  v27 = v21;
  sub_1E608F9E4();

  sub_1E65D7358();

  v23 = v11[1];
  v23(v15, v10);
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v24 = sub_1E65E4968();
  v22(v19, v18, v10);
  v27 = v24;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return (v23)(v18, v10);
}

uint64_t sub_1E62FB2A8(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v28 = a4;
  v6 = sub_1E65E4548();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65D7348();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v28 - v18;
  __swift_allocate_value_buffer(v17, a2);
  v20 = __swift_project_value_buffer(v11, a2);
  v21 = sub_1E65D7338();
  a3(v21);
  sub_1E65E44B8();

  (*(v7 + 104))(v10, *MEMORY[0x1E6980EA8], v6);
  v22 = sub_1E65E4578();

  (*(v7 + 8))(v10, v6);
  v23 = v12[2];
  v23(v19, v16, v11);
  v29 = v22;
  sub_1E608F9E4();

  sub_1E65D7358();

  v24 = v12[1];
  v25 = v24(v16, v11);
  v26 = v28(v25);
  v23(v20, v19, v11);
  v29 = v26;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return v24(v19, v11);
}

uint64_t sub_1E62FB5B4(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v28 = a4;
  v6 = sub_1E65E4548();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65D7348();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v28 - v18;
  __swift_allocate_value_buffer(v17, a2);
  v20 = __swift_project_value_buffer(v11, a2);
  v21 = sub_1E65D7338();
  a3(v21);
  (*(v7 + 104))(v10, *MEMORY[0x1E6980EA8], v6);
  v22 = sub_1E65E4578();

  (*(v7 + 8))(v10, v6);
  v23 = v12[2];
  v23(v19, v16, v11);
  v29 = v22;
  sub_1E608F9E4();

  sub_1E65D7358();

  v24 = v12[1];
  v25 = v24(v16, v11);
  v26 = v28(v25);
  v23(v20, v19, v11);
  v29 = v26;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return v24(v19, v11);
}

uint64_t sub_1E62FB894(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E65D7348();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1E65D7338();
}

uint64_t sub_1E62FB8FC(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v5 = sub_1E65E4548();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65D7348();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v13, a2);
  v16 = __swift_project_value_buffer(v10, a2);
  v17 = sub_1E65D7338();
  a3(v17);
  sub_1E65E44B8();

  (*(v6 + 104))(v9, *MEMORY[0x1E6980EA8], v5);
  v18 = sub_1E65E4578();

  (*(v6 + 8))(v9, v5);
  (*(v11 + 16))(v16, v15, v10);
  v20[1] = v18;
  sub_1E608F9E4();

  sub_1E65D7358();

  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1E62FBB3C()
{
  v0 = sub_1E65D7348();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v15 - v7;
  __swift_allocate_value_buffer(v6, qword_1ED096690);
  v9 = __swift_project_value_buffer(v0, qword_1ED096690);
  sub_1E65D7338();
  sub_1E65E4568();
  sub_1E65E44F8();
  v10 = sub_1E65E4538();

  v11 = v1[2];
  v11(v8, v5, v0);
  v16 = v10;
  sub_1E608F9E4();

  sub_1E65D7358();

  v12 = v1[1];
  v12(v5, v0);
  v13 = sub_1E65E49D8();
  v11(v9, v8, v0);
  v16 = v13;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return (v12)(v8, v0);
}

uint64_t sub_1E62FBD3C()
{
  v0 = sub_1E65D7348();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v15 - v7;
  __swift_allocate_value_buffer(v6, qword_1ED0966A8);
  v9 = __swift_project_value_buffer(v0, qword_1ED0966A8);
  sub_1E65D7338();
  sub_1E65E4568();
  sub_1E65E44E8();
  v10 = sub_1E65E4538();

  v11 = v1[2];
  v11(v8, v5, v0);
  v16 = v10;
  sub_1E608F9E4();

  sub_1E65D7358();

  v12 = v1[1];
  v12(v5, v0);
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v13 = sub_1E65E4968();
  v11(v9, v8, v0);
  v16 = v13;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return (v12)(v8, v0);
}

uint64_t sub_1E62FBF68()
{
  sub_1E65D7338();
  sub_1E65E4598();
  sub_1E65E44B8();

  sub_1E608F9E4();
  sub_1E65D7358();
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  sub_1E65E4968();
  sub_1E62F8EA0();
  return sub_1E65D7358();
}

uint64_t sub_1E62FC03C(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1E65E4548();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D7338();
  sub_1E65E4498();
  (*(v3 + 104))(v6, *MEMORY[0x1E6980EA8], v2);
  v7 = sub_1E65E4578();

  (*(v3 + 8))(v6, v2);
  v11 = v7;
  sub_1E608F9E4();
  v8 = sub_1E65D7358();
  v11 = a1(v8);
  sub_1E62F8EA0();
  return sub_1E65D7358();
}

uint64_t sub_1E62FC1C0(void (*a1)(uint64_t))
{
  v2 = sub_1E65E4548();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D7338();
  a1(v7);
  sub_1E65E44B8();

  (*(v3 + 104))(v6, *MEMORY[0x1E6980EA8], v2);
  v8 = sub_1E65E4578();

  (*(v3 + 8))(v6, v2);
  v11 = v8;
  sub_1E608F9E4();
  sub_1E65D7358();
  v11 = sub_1E65E49C8();
  sub_1E62F8EA0();
  return sub_1E65D7358();
}

unint64_t sub_1E62FC334()
{
  result = qword_1EE2D72B0;
  if (!qword_1EE2D72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D72B0);
  }

  return result;
}

uint64_t sub_1E62FC388(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 144) = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570) - 8) + 64) + 15;
  *(v7 + 40) = swift_task_alloc();
  v9 = sub_1E65D8F28();
  *(v7 + 48) = v9;
  v10 = *(v9 - 8);
  *(v7 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  v13 = sub_1E65D8C68();
  *(v7 + 80) = v13;
  v14 = *(v13 - 8);
  *(v7 + 88) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60) - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v17 = type metadata accessor for PageMetricsClick();
  *(v7 + 112) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62FC584, 0, 0);
}

uint64_t sub_1E62FC584()
{
  v54 = v0;
  if (*(v0 + 144) == 1)
  {
    v2 = *(v0 + 96);
    v1 = *(v0 + 104);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 72);
    v49 = *(v0 + 64);
    v6 = *(v0 + 56);
    v53 = *(v0 + 48);
    v7 = *(v0 + 16);
    v51[0] = *(v0 + 40);
    v51[1] = *(v0 + 24);
    v8 = sub_1E65D9D78();
    (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
    (*(v3 + 104))(v2, *MEMORY[0x1E69CBAA0], v4);
    v9 = sub_1E65D74E8();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v10 = *(sub_1E65D86A8() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1E65EA670;
    sub_1E65E28F8();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65E22D8();
    v14 = *(v6 + 104);
    v48 = *MEMORY[0x1E69CBCC8];
    v53 = (v6 + 104);
    v14(v49);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    v52 = v13;
    sub_1E65D8678();
    v15 = sub_1E65DA208();
    (*(*(v15 - 8) + 56))(v51[0], 1, 1, v15);
    v16 = *(v51[1] + *(type metadata accessor for AppComposer() + 20) + 8);
    v17 = sub_1E65DAE38();
    if (v17 == sub_1E65DAE38())
    {
      HIBYTE(v51[1]) = -18;
      strcpy(v51, "CreateOniPhone");
    }

    else
    {
      v51[0] = sub_1E65E28F8();
      v51[1] = v26;
    }

    v27 = *(v0 + 112);
    v28 = *(v0 + 120);
    v29 = *(v0 + 104);
    v30 = *(v0 + 88);
    v45 = *(v0 + 80);
    v46 = *(v0 + 96);
    v47 = *(v0 + 72);
    v50 = *(v0 + 40);
    v31 = *(v0 + 32);
    (v14)(v28 + v27[14], v48, *(v0 + 48));
    v32 = v27[15];
    v33 = *MEMORY[0x1E69CC448];
    v34 = sub_1E65D9908();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v28 + v32, v33, v34);
    (*(v35 + 56))(v28 + v32, 0, 1, v34);
    v36 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v29, v28, &qword_1ED073578, &qword_1E65F0E60);
    (*(v30 + 32))(v28 + v27[5], v46, v45);
    sub_1E5FAB460(v47, v28 + v27[6], &qword_1ED072340, &qword_1E65EA410);
    *(v28 + v27[7]) = v52;
    sub_1E5FAB460(v50, v28 + v27[8], &qword_1ED073570, &unk_1E65F4570);
    v37 = (v28 + v27[9]);
    *v37 = 0;
    v37[1] = 0;
    v38 = (v28 + v27[10]);
    *v38 = 0;
    v38[1] = 0;
    *(v28 + v27[11]) = v36;
    v39 = (v28 + v27[12]);
    *v39 = 0;
    v39[1] = 0;
    v40 = (v28 + v27[13]);
    *v40 = v51[0];
    v40[1] = v51[1];
    v41 = *(v31 + 48);
    v53 = (v41 + *v41);
    v42 = v41[1];
    v43 = swift_task_alloc();
    *(v0 + 128) = v43;
    *v43 = v0;
    v43[1] = sub_1E62FCB3C;
    v44 = *(v0 + 120);

    return v53(v44);
  }

  else
  {
    v18 = *(v0 + 120);
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = *(v0 + 40);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1E62FCB3C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1E62FCD00;
  }

  else
  {
    v3 = sub_1E62FCC50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E62FCC50()
{
  sub_1E5FC0990(v0[15]);
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E62FCD00()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  sub_1E5FC0990(v0[15]);

  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

uint64_t sub_1E62FCDB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078140, &qword_1E65FB678);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v22 - v4;
  v6 = sub_1E65E1478();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v0, v6);
  if ((*(v7 + 88))(v10, v6) != *MEMORY[0x1E699E840])
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  (*(v7 + 96))(v10, v6);
  (*(v2 + 32))(v5, v10, v1);
  v11 = sub_1E65E1778();
  if (!v11)
  {
    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v12 = v11;
  v13 = [v11 dictionary];
  if (!v13)
  {
    (*(v2 + 8))(v5, v1);

    return 0;
  }

  v14 = v13;
  v15 = sub_1E65E5B08();

  v16 = *MEMORY[0x1E698C530];
  *&v22[0] = sub_1E65E5C78();
  *(&v22[0] + 1) = v17;
  sub_1E65E6848();
  if (*(v15 + 16) && (v18 = sub_1E6417048(v23), (v19 & 1) != 0))
  {
    sub_1E5DFA11C(*(v15 + 56) + 32 * v18, v22);
    sub_1E6009FC0(v23);
  }

  else
  {

    sub_1E6009FC0(v23);
    memset(v22, 0, sizeof(v22));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B28, &unk_1E65F06A0);
  v20 = sub_1E65E6638();

  sub_1E62FD0F8(v22);
  (*(v2 + 8))(v5, v1);
  return v20;
}

uint64_t sub_1E62FD0F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B28, &unk_1E65F06A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E62FD160()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1E65E5C48();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1E65E5C48();

    v4 = [v2 objectForKey_];

    if (v4)
    {
      sub_1E65E6708();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B28, &unk_1E65F06A0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1E62FD2E0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E62FD3C8;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0x2928657461746F72, 0xE800000000000000, sub_1E5E05150, v2, v5);
}

uint64_t sub_1E62FD3C8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1E62FD4E4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1E5E1CF6C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E62FD4E4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t dispatch thunk of JournalRotating.rotate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return v9(a1, a2);
}

uint64_t sub_1E62FD674(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v145 = a1;
  v9 = sub_1E65D74E8();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v148 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v149 = &v134 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v151 = &v134 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v150 = &v134 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v144 = &v134 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v134 - v24;
  result = MEMORY[0x1EEE9AC00](v23);
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v5 = *v145;
    if (*v145)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v141 = &v134 - v27;
  v139 = a4;
  v30 = 0;
  v159 = (v10 + 1);
  v160 = v10 + 2;
  v156 = (v10 + 4);
  v31 = MEMORY[0x1E69E7CC0];
  v161 = v9;
  v153 = v28;
  v142 = v25;
  v146 = a3;
  v138 = v10;
  while (1)
  {
    v32 = v30;
    if (v30 + 1 >= v29)
    {
      v55 = v30 + 1;
    }

    else
    {
      v157 = v29;
      v162 = v6;
      v33 = *a3;
      v34 = v10[9];
      v5 = *a3 + v34 * (v30 + 1);
      v35 = v10[2];
      v36 = v141;
      v37 = v30;
      v35(v141, v5, v9);
      v140 = v33;
      v158 = v34;
      v38 = &v33[v34 * v37];
      v39 = v142;
      v154 = v35;
      v35(v142, v38, v9);
      v40 = v39;
      v41 = v162;
      LODWORD(v155) = sub_1E5DF7E0C(v36, v39);
      v162 = v41;
      if (v41)
      {
        v133 = *v159;
        (*v159)(v39, v9);
        v133(v36, v9);
      }

      v42 = *v159;
      (*v159)(v40, v9);
      v152 = v42;
      result = (v42)(v36, v9);
      v143 = v37;
      v43 = v37 + 2;
      v44 = v158;
      v45 = &v140[v158 * (v37 + 2)];
      v46 = v144;
      while (v157 != v43)
      {
        v47 = v31;
        v48 = v161;
        v49 = v154;
        (v154)(v46, v45, v161);
        v50 = v153;
        v49(v153, v5, v48);
        v51 = v162;
        v52 = sub_1E5DF7E0C(v46, v50);
        v162 = v51;
        if (v51)
        {
          v131 = v152;
          v152(v50, v48);
          v131(v46, v48);
        }

        v53 = v52;
        v54 = v152;
        v152(v50, v48);
        result = (v54)(v46, v48);
        ++v43;
        v44 = v158;
        v45 += v158;
        v5 += v158;
        v31 = v47;
        if ((v155 ^ v53))
        {
          v55 = (v43 - 1);
          goto LABEL_12;
        }
      }

      v55 = v157;
LABEL_12:
      v10 = v138;
      v9 = v161;
      v6 = v162;
      v32 = v143;
      if ((v155 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v55 < v143)
      {
        goto LABEL_140;
      }

      if (v143 < v55)
      {
        v56 = v55;
        v57 = v44 * (v55 - 1);
        v58 = v56 * v44;
        v157 = v56;
        v59 = v143;
        v60 = v143 * v44;
        do
        {
          if (v59 != --v56)
          {
            v162 = v6;
            v62 = *v146;
            if (!*v146)
            {
              goto LABEL_144;
            }

            v5 = v62 + v60;
            v155 = *v156;
            v155(v148, v62 + v60, v161);
            if (v60 < v57 || v5 >= v62 + v58)
            {
              v61 = v161;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v61 = v161;
              if (v60 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v155)(v62 + v57, v148, v61);
            v6 = v162;
            v44 = v158;
          }

          ++v59;
          v57 -= v44;
          v58 -= v44;
          v60 += v44;
        }

        while (v59 < v56);
        a3 = v146;
        v10 = v138;
        v9 = v161;
        v32 = v143;
        v55 = v157;
      }

      else
      {
LABEL_25:
        a3 = v146;
      }
    }

    v63 = a3[1];
    if (v55 >= v63)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v55, v32))
    {
      goto LABEL_136;
    }

    if (v55 - v32 >= v139)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v32, v139))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v157 = v55;
    if (&v32[v139] >= v63)
    {
      v64 = v63;
    }

    else
    {
      v64 = &v32[v139];
    }

    if (v64 < v32)
    {
      goto LABEL_139;
    }

    if (v157 == v64)
    {
      v55 = v157;
LABEL_37:
      if (v55 < v32)
      {
        goto LABEL_135;
      }

      goto LABEL_38;
    }

    v111 = *a3;
    v112 = v10[9];
    v158 = v10[2];
    v113 = v111 + v112 * (v157 - 1);
    v154 = -v112;
    v155 = v111;
    v143 = v32;
    v114 = &v32[-v157];
    v135 = v112;
    v5 = v111 + v157 * v112;
    v116 = v150;
    v115 = v151;
    v152 = v64;
    v147 = v31;
    do
    {
      v136 = v5;
      v137 = v114;
      v140 = v113;
      v117 = v113;
      while (1)
      {
        v118 = v6;
        v119 = v158;
        (v158)(v116, v5, v9);
        v119(v115, v117, v9);
        v120 = sub_1E5DF7E0C(v116, v115);
        v121 = v115;
        v162 = v118;
        if (v118)
        {
          v132 = *v159;
          (*v159)(v115, v9);
          v132(v116, v9);
        }

        v122 = v120;
        v123 = *v159;
        (*v159)(v121, v9);
        result = (v123)(v116, v9);
        if ((v122 & 1) == 0)
        {
          break;
        }

        v31 = v147;
        if (!v155)
        {
          goto LABEL_142;
        }

        v124 = *v156;
        v125 = v149;
        v9 = v161;
        (*v156)(v149, v5, v161);
        swift_arrayInitWithTakeFrontToBack();
        v124(v117, v125, v9);
        v117 += v154;
        v5 += v154;
        v126 = __CFADD__(v114++, 1);
        v6 = v162;
        v116 = v150;
        v115 = v151;
        if (v126)
        {
          goto LABEL_100;
        }
      }

      v9 = v161;
      v6 = v162;
      v116 = v150;
      v115 = v151;
      v31 = v147;
LABEL_100:
      v113 = &v140[v135];
      v114 = v137 - 1;
      v5 = v136 + v135;
      v55 = v152;
      ++v157;
    }

    while (v157 != v152);
    a3 = v146;
    v10 = v138;
    v32 = v143;
    if (v152 < v143)
    {
      goto LABEL_135;
    }

LABEL_38:
    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v6;
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v66 = *(v31 + 2);
    v65 = *(v31 + 3);
    v67 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      result = sub_1E636ADD0((v65 > 1), v66 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v67;
    v68 = &v31[16 * v66];
    *(v68 + 4) = v32;
    *(v68 + 5) = v55;
    v152 = v55;
    v69 = *v145;
    if (!*v145)
    {
      goto LABEL_145;
    }

    if (v66)
    {
      break;
    }

    v6 = v5;
LABEL_89:
    v29 = a3[1];
    v30 = v152;
    v9 = v161;
    if (v152 >= v29)
    {
      goto LABEL_104;
    }
  }

  v6 = v5;
  while (1)
  {
    v5 = v67 - 1;
    if (v67 >= 4)
    {
      v74 = &v31[16 * v67 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_122;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_123;
      }

      v81 = &v31[16 * v67];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_125;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_128;
      }

      if (v85 >= v77)
      {
        v103 = &v31[16 * v5 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_134;
        }

        if (v72 < v106)
        {
          v5 = v67 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (v67 == 3)
    {
      v70 = *(v31 + 4);
      v71 = *(v31 + 5);
      v80 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      v73 = v80;
LABEL_58:
      if (v73)
      {
        goto LABEL_124;
      }

      v86 = &v31[16 * v67];
      v88 = *v86;
      v87 = *(v86 + 1);
      v89 = __OFSUB__(v87, v88);
      v90 = v87 - v88;
      v91 = v89;
      if (v89)
      {
        goto LABEL_127;
      }

      v92 = &v31[16 * v5 + 32];
      v94 = *v92;
      v93 = *(v92 + 1);
      v80 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v80)
      {
        goto LABEL_130;
      }

      if (__OFADD__(v90, v95))
      {
        goto LABEL_131;
      }

      if (v90 + v95 >= v72)
      {
        if (v72 < v95)
        {
          v5 = v67 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_72;
    }

    v96 = &v31[16 * v67];
    v98 = *v96;
    v97 = *(v96 + 1);
    v80 = __OFSUB__(v97, v98);
    v90 = v97 - v98;
    v91 = v80;
LABEL_72:
    if (v91)
    {
      goto LABEL_126;
    }

    v99 = &v31[16 * v5];
    v101 = *(v99 + 4);
    v100 = *(v99 + 5);
    v80 = __OFSUB__(v100, v101);
    v102 = v100 - v101;
    if (v80)
    {
      goto LABEL_129;
    }

    if (v102 < v90)
    {
      goto LABEL_89;
    }

LABEL_79:
    v107 = v5 - 1;
    if (v5 - 1 >= v67)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_141;
    }

    v108 = *&v31[16 * v107 + 32];
    v109 = *&v31[16 * v5 + 40];
    sub_1E62FE200(*a3 + v10[9] * v108, *a3 + v10[9] * *&v31[16 * v5 + 32], *a3 + v10[9] * v109, v69);
    if (v6)
    {
    }

    if (v109 < v108)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1E636AC44(v31);
    }

    if (v107 >= *(v31 + 2))
    {
      goto LABEL_121;
    }

    v110 = &v31[16 * v107];
    *(v110 + 4) = v108;
    *(v110 + 5) = v109;
    v163 = v31;
    result = sub_1E636ABB8(v5);
    v31 = v163;
    v67 = *(v163 + 2);
    if (v67 <= 1)
    {
      goto LABEL_89;
    }
  }

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
  result = sub_1E636AC44(v31);
  v31 = result;
LABEL_106:
  v163 = v31;
  v127 = *(v31 + 2);
  if (v127 < 2)
  {
  }

  while (*a3)
  {
    v128 = *&v31[16 * v127];
    v129 = *&v31[16 * v127 + 24];
    sub_1E62FE200(*a3 + v10[9] * v128, *a3 + v10[9] * *&v31[16 * v127 + 16], *a3 + v10[9] * v129, v5);
    if (v6)
    {
    }

    if (v129 < v128)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1E636AC44(v31);
    }

    if (v127 - 2 >= *(v31 + 2))
    {
      goto LABEL_133;
    }

    v130 = &v31[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v163 = v31;
    result = sub_1E636ABB8(v127 - 1);
    v31 = v163;
    v127 = *(v163 + 2);
    if (v127 <= 1)
    {
    }
  }

LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_1E62FE200(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v77 = a3;
  v9 = sub_1E65D74E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v13);
  result = MEMORY[0x1EEE9AC00](&v62 - v16);
  v20 = &v62 - v19;
  v73 = *(v21 + 72);
  if (!v73)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_66;
  }

  v22 = v77 - a2;
  if (v77 - a2 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_67;
  }

  v23 = (a2 - a1) / v73;
  v80 = a1;
  v79 = a4;
  v75 = v9;
  if (v23 >= v22 / v73)
  {
    v71 = v18;
    v72 = v15;
    v25 = v22 / v73 * v73;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v25;
    if (v25 >= 1)
    {
      v38 = v72;
      v39 = -v73;
      v68 = (v10 + 16);
      v69 = (v10 + 8);
      v40 = v37;
      v74 = a4;
      v65 = a1;
      v66 = -v73;
      do
      {
        v76 = v5;
        v63 = v37;
        v41 = a2;
        v42 = a2 + v39;
        v67 = v42;
        v70 = v41;
        while (1)
        {
          v45 = v77;
          if (v41 <= a1)
          {
            v80 = v41;
            v60 = v63;
LABEL_62:
            v78 = v60;
            goto LABEL_64;
          }

          v64 = v37;
          v73 = v40;
          v46 = v40 + v39;
          v47 = *v68;
          v48 = v75;
          (*v68)(v38, v40 + v39, v75);
          v49 = v42;
          v50 = v39;
          v51 = v71;
          v47(v71, v49, v48);
          v52 = v76;
          v53 = sub_1E5DF7E0C(v38, v51);
          v76 = v52;
          if (v52)
          {
            v61 = *v69;
            (*v69)(v51, v48);
            v61(v38, v48);
            v80 = v70;
            v60 = v64;
            goto LABEL_62;
          }

          v54 = v53;
          v77 = v45 + v50;
          v55 = *v69;
          (*v69)(v51, v48);
          v55(v38, v48);
          if (v54)
          {
            break;
          }

          v37 = v46;
          v56 = v65;
          if (v45 < v73 || v77 >= v73)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v66;
            v42 = v67;
            v43 = v74;
          }

          else
          {
            v39 = v66;
            v42 = v67;
            v43 = v74;
            if (v45 != v73)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v40 = v46;
          v44 = v46 > v43;
          v38 = v72;
          a1 = v56;
          v41 = v70;
          if (!v44)
          {
            a2 = v70;
            goto LABEL_63;
          }
        }

        a1 = v65;
        if (v45 < v70 || v77 >= v70)
        {
          a2 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v58 = v74;
          v5 = v76;
          v37 = v64;
          v39 = v66;
        }

        else
        {
          v57 = v45 == v70;
          v39 = v66;
          a2 = v67;
          v58 = v74;
          v5 = v76;
          v37 = v64;
          if (!v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v72;
        v40 = v73;
      }

      while (v73 > v58);
    }

LABEL_63:
    v80 = a2;
    v78 = v37;
  }

  else
  {
    v24 = v23 * v73;
    v72 = result;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = a4 + v24;
    v78 = a4 + v24;
    if (v24 >= 1 && a2 < v77)
    {
      v27 = *(v10 + 16);
      v70 = v10 + 16;
      v68 = v27;
      v69 = (v10 + 8);
      while (1)
      {
        v28 = a2;
        v29 = a4;
        v30 = v68;
        (v68)(v20, a2, v9);
        v31 = v20;
        v32 = v72;
        v74 = v29;
        (v30)(v72, v29, v9);
        v33 = sub_1E5DF7E0C(v31, v32);
        if (v5)
        {
          break;
        }

        v34 = v33;
        v76 = 0;
        v35 = *v69;
        (*v69)(v32, v9);
        v35(v31, v9);
        v20 = v31;
        if (v34)
        {
          v36 = v73;
          a2 = v28 + v73;
          if (a1 < v28 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v74;
        }

        else
        {
          v36 = v73;
          a4 = v74 + v73;
          a2 = v28;
          if (a1 < v74 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v79 = a4;
        }

        a1 += v36;
        v80 = a1;
        v5 = v76;
        if (a4 < v71)
        {
          v9 = v75;
          if (a2 < v77)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v59 = *v69;
      (*v69)(v32, v9);
      v59(v31, v9);
    }
  }

LABEL_64:
  sub_1E636ACB8(&v80, &v79, &v78);
  return 1;
}

uint64_t sub_1E62FE8A0()
{
  v0 = sub_1E65D76F8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1E65E2AF8();
  sub_1E65E2AD8();
  sub_1E65E2AE8();
  sub_1E65E2B18();
  sub_1E6144294();
  sub_1E65D8008();
  sub_1E65E2B28();
  v2 = sub_1E65E2B08();
  v3 = v2;
  v4 = v2 + 56;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      sub_1E600C434(v11);

      return sub_1E65DA2E8();
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      do
      {
LABEL_8:
        v13 = *(*(v3 + 48) + (__clz(__rbit64(v7)) | (v10 << 6)));
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1E64F6ADC(0, *(v11 + 16) + 1, 1, v11);
          v11 = result;
        }

        v15 = *(v11 + 16);
        v14 = *(v11 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_1E64F6ADC((v14 > 1), v15 + 1, 1, v11);
          v11 = result;
        }

        v7 &= v7 - 1;
        *(v11 + 16) = v15 + 1;
        *(v11 + v15 + 32) = v13;
      }

      while (v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E62FEAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = sub_1E65DA2A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - v12;
  v14 = type metadata accessor for BrowsingIdentity(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1D34C(a1, v17, type metadata accessor for BrowsingIdentity);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    v19 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
    v20 = sub_1E65DAE38();
    result = sub_1E65DAE38();
    *a3 = v20 != result;
  }

  else
  {
    (*(v7 + 32))(v13, &v17[*(v18 + 48)], v6);
    sub_1E65DA278();
    sub_1E6305744(&qword_1ED071E28, MEMORY[0x1E69CCBE8]);
    v22 = sub_1E65E6718();
    v23 = *(v7 + 8);
    v23(v11, v6);
    v23(v13, v6);
    *a3 = v22 & 1;
    return sub_1E630578C(v17, type metadata accessor for RemoteParticipantScope);
  }

  return result;
}

uint64_t sub_1E62FED68(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  v35 = a4;
  v36 = a5;
  v33 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078158, &qword_1E65FB788);
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v32[-v10];
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1E65E1F28();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = sub_1E65E1EE8();
  v37 = *(v17 - 8);
  v18 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = *a1;
  sub_1E5E1D34C(a1, v14, type metadata accessor for AppComposer);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = v21 + v13;
  v23 = swift_allocObject();
  sub_1E5E1FA80(v14, v23 + v21);
  sub_1E65E1F18();
  LOBYTE(v13) = v33;
  sub_1E65E1ED8();
  sub_1E5E1D34C(a1, v14, type metadata accessor for AppComposer);
  v24 = swift_allocObject();
  sub_1E5E1FA80(v14, v24 + v21);
  *(v24 + v22) = v13;
  v25 = v24 + (v22 & 0xFFFFFFFFFFFFFFF8);
  v26 = v36;
  *(v25 + 8) = v35;
  *(v25 + 16) = v26;
  v27 = (v24 + (((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v28 = v39;
  *v27 = v38;
  v27[1] = v28;
  type metadata accessor for AppFeature();
  sub_1E6305744(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E6305744(&qword_1EE2D62D8, MEMORY[0x1E699F138]);

  v29 = v40;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v30 = sub_1E65E4F08();
  (*(v41 + 8))(v29, v42);
  (*(v37 + 8))(v20, v17);
  return v30;
}

uint64_t sub_1E62FF190@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v70 = a7;
  v71 = a6;
  v72 = a5;
  v74 = a4;
  v73 = a3;
  v65 = a1;
  v69 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = &v55 - v14;
  v64 = sub_1E65D7848();
  v58 = *(v64 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  v17 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v55 - v18;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v60 = *(v59 - 8);
  v19 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v55 - v20;
  v21 = sub_1E65E07B8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v76 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753D0, &qword_1E65F1A50);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v75 = &v55 - v26;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  v27 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v29 = &v55 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v55 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v55 - v38;
  v40 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v31 + 8))(v34, v30);
  v77 = a2;
  v62 = v39;
  sub_1E65E4DA8();
  v41 = v29;
  v42 = v58;
  sub_1E5DFE50C(v41, &qword_1ED071E58, &qword_1E65EA150);
  v43 = type metadata accessor for AppState();
  v44 = v43[56];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  sub_1E65E4C98();
  sub_1E65E0768();
  swift_getKeyPath();
  v45 = v57;
  sub_1E65E4EC8();
  v46 = v64;

  v47 = v61;
  v48 = v59;
  sub_1E65E4C98();
  (*(v60 + 8))(v45, v48);
  sub_1E65E4DA8();
  v49 = v66;
  sub_1E5DFE50C(v47, &qword_1ED072958, &qword_1E65EC0F0);
  v50 = v43[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v51 = v67;
  sub_1E65E4C98();
  sub_1E5E1F544(v49);
  sub_1E5DFE50C(v51, &qword_1ED071F78, &unk_1E65EA3F0);
  v52 = *(v42 + 48);
  if (v52(v49, 1, v46) == 1)
  {
    sub_1E65D77C8();
    if (v52(v49, 1, v46) != 1)
    {
      sub_1E5DFE50C(v49, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v42 + 32))(v68, v49, v46);
  }

  v53 = v43[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();

  return sub_1E65E1EC8();
}

uint64_t sub_1E62FF938(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 256) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753D0, &qword_1E65F1A50) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  *(v5 + 80) = v10;
  v11 = *(v10 - 8);
  *(v5 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B88, &qword_1E65F7878) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0) - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  *(v5 + 120) = v15;
  v16 = *(v15 - 8);
  *(v5 + 128) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800) - 8) + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v19 = sub_1E65D8F28();
  *(v5 + 152) = v19;
  v20 = *(v19 - 8);
  *(v5 + 160) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v22 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v23 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  v24 = type metadata accessor for PageMetricsClick();
  *(v5 + 200) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62FFCB8, 0, 0);
}

uint64_t sub_1E62FFCB8()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v104 = *(v0 + 152);
  v105 = *(v0 + 160);
  v99 = *(v0 + 32);
  v100 = *(v0 + 168);
  v102 = *(v0 + 24);
  v5 = *(v0 + 16);
  v96 = *(v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  v6 = *(sub_1E65D86A8() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v78 = *(v6 + 72);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1E65EA670;
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v91 = objc_opt_self();
  v92 = ObjCClassFromMetadata;
  v9 = [v91 bundleForClass_];
  v10 = *v99;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E5D48();
  v90 = *(v105 + 104);
  v90(v100, *MEMORY[0x1E69CBCD8], v104);
  v68 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  sub_1E65D8678();
  sub_1E5DFD1CC(v5, v1, &qword_1ED073578, &qword_1E65F0E60);
  v11 = v2[5];
  v95 = v1 + v11;
  v89 = sub_1E65D8C68();
  v87 = *(*(v89 - 8) + 16);
  v87(v1 + v11, v5 + v11);
  v12 = v2[6];
  v85 = v1 + v12;
  sub_1E5DFD1CC(v5 + v12, v1 + v12, &qword_1ED072340, &qword_1E65EA410);
  v107 = *(v5 + v2[7]);

  sub_1E5FAA0F0(v98);
  v13 = v2[8];
  v84 = v1 + v13;
  sub_1E5DFD1CC(v5 + v13, v1 + v13, &qword_1ED073570, &unk_1E65F4570);
  v14 = (v5 + v2[9]);
  v16 = *v14;
  v15 = v14[1];
  v17 = (v5 + v2[10]);
  v18 = v2[12];
  v101 = v15;
  v103 = *(v5 + v2[11]);
  v20 = *v17;
  v19 = v17[1];
  v21 = *(v5 + v18);
  v22 = *(v5 + v18 + 8);
  v23 = v2[14];
  v24 = (v5 + v2[13]);
  v26 = *v24;
  v25 = v24[1];
  v82 = v1 + v23;
  v81 = *(v105 + 16);
  v81(v1 + v23, v5 + v23, v104, v27, v28);
  v29 = v2[15];
  v80 = v1 + v29;
  sub_1E5DFD1CC(v5 + v29, v1 + v29, &qword_1ED072330, &qword_1E65EAB70);
  *(v1 + v2[7]) = v107;
  v30 = (v1 + v2[9]);
  *v30 = v16;
  v30[1] = v101;
  v31 = (v1 + v2[10]);
  v88 = v20;
  *v31 = v20;
  v31[1] = v19;
  *(v1 + v2[11]) = v103;
  v32 = (v1 + v2[12]);
  v94 = v21;
  *v32 = v21;
  v32[1] = v22;
  v77 = v2;
  v33 = (v1 + v2[13]);
  v86 = v26;
  *v33 = v26;
  v33[1] = v25;

  if (sub_1E65E1EF8())
  {
    v75 = v19;
    v76 = v25;
    v97 = v22;
    v34 = v93[17];
    v35 = v93[18];
    v37 = v93[15];
    v36 = v93[16];
    v38 = v93[14];
    v73 = v93[13];
    v74 = v93[11];
    v39 = v93[9];
    v69 = v93[12];
    v71 = v93[10];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60EEC44(v35);
    sub_1E5DFE50C(v38, &qword_1ED072958, &qword_1E65EC0F0);
    (*(v36 + 8))(v34, v37);
    v40 = sub_1E65D7EB8();
    (*(*(v40 - 8) + 48))(v35, 1, v40);
    sub_1E5DFE50C(v35, &qword_1ED072968, &unk_1E6609800);
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60EEA00(v73);
    sub_1E5DFE50C(v39, &qword_1ED0753D0, &qword_1E65F1A50);
    (*(v74 + 8))(v69, v71);
    v41 = sub_1E65E1F68();
    v42 = *(v41 - 8);
    v43 = (*(v42 + 48))(v73, 1, v41);
    v44 = v93[13];
    if (v43 == 1)
    {
      sub_1E5DFE50C(v93[13], &qword_1ED076B88, &qword_1E65F7878);
    }

    else
    {
      sub_1E65E1F48();
      (*(v42 + 8))(v44, v41);
    }

    v51 = v93[7];
    v50 = v93[8];
    v52 = v93[6];
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1E65EA670;
    sub_1E65E28D8();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E0678();
    (*(v51 + 8))(v50, v52);
    sub_1E65E07C8();
    v53 = v93[23];
    sub_1E65E5BA8();
    v54 = v93[26];
    v70 = v93[27];
    v56 = v93[22];
    v55 = v93[23];
    v57 = v93[21];
    v58 = v93[19];
    v59 = v93[5];
    v79 = *(v59 + 48);
    v83 = *(v59 + 56);
    v60 = [v91 bundleForClass_];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    v90(v57, *MEMORY[0x1E69CBCB0], v58);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E5DFD1CC(v70, v54, &qword_1ED073578, &qword_1E65F0E60);
    (v87)(v54 + v77[5], v95, v89);
    sub_1E5DFD1CC(v85, v54 + v77[6], &qword_1ED072340, &qword_1E65EA410);

    sub_1E5FAA0F0(v72);
    sub_1E5DFD1CC(v84, v54 + v77[8], &qword_1ED073570, &unk_1E65F4570);
    (v81)(v54 + v77[14], v82, v58);
    sub_1E5DFD1CC(v80, v54 + v77[15], &qword_1ED072330, &qword_1E65EAB70);
    *(v54 + v77[7]) = v107;
    v61 = (v54 + v77[9]);
    *v61 = v16;
    v61[1] = v101;
    v62 = (v54 + v77[10]);
    *v62 = v88;
    v62[1] = v75;
    *(v54 + v77[11]) = v103;
    v63 = (v54 + v77[12]);
    *v63 = v94;
    v63[1] = v97;
    v64 = (v54 + v77[13]);
    *v64 = v86;
    v64[1] = v76;

    v106 = (v79 + *v79);
    v65 = v79[1];
    v66 = swift_task_alloc();
    v93[28] = v66;
    *v66 = v93;
    v66[1] = sub_1E63007F4;
    v49 = v93[26];
  }

  else
  {
    v45 = v93[5];
    v46 = *(v45 + 56);
    v106 = (*(v45 + 48) + **(v45 + 48));
    v47 = *(*(v45 + 48) + 4);
    v48 = swift_task_alloc();
    v93[30] = v48;
    *v48 = v93;
    v48[1] = sub_1E6300938;
    v49 = v93[27];
  }

  return v106(v49);
}

uint64_t sub_1E63007F4()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 232) = v0;

  sub_1E630578C(v3, type metadata accessor for PageMetricsClick);
  if (v0)
  {
    v4 = sub_1E63075B4;
  }

  else
  {
    v4 = sub_1E63075B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6300938()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1E63075B0;
  }

  else
  {
    v3 = sub_1E63075B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6300A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v32 = a8;
  v30 = a6;
  v31 = a7;
  v33 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v30 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E65EA670;
  sub_1E5DFD1CC(a1, v17, &qword_1ED073718, &qword_1E65ED978);
  v19 = sub_1E65E20A8();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    v21 = sub_1E5DFE50C(v17, &qword_1ED073718, &qword_1E65ED978);
    v22 = 0x80000001E66155A0;
    v23 = 0xD000000000000016;
  }

  else
  {
    v24 = sub_1E65E2088();
    v21 = (*(v20 + 8))(v17, v19);
    if (v24)
    {
      if (v24 == 1)
      {
        v22 = 0x80000001E66155E0;
        v23 = 0xD000000000000015;
      }

      else
      {
        v23 = 0xD000000000000012;
        v22 = 0x80000001E66155C0;
      }
    }

    else
    {
      v22 = 0xED00006E616C5072;
      v23 = 0x756F59646C697542;
    }
  }

  *(v18 + 32) = v23;
  *(v18 + 40) = v22;
  MEMORY[0x1EEE9AC00](v21);
  *(&v30 - 8) = a5;
  *(&v30 - 7) = a1;
  *(&v30 - 6) = a2;
  *(&v30 - 5) = a3;
  v26 = v30;
  v25 = v31;
  *(&v30 - 4) = a4;
  *(&v30 - 3) = v26;
  *(&v30 - 2) = v25;
  *(&v30 - 8) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EF0, &qword_1E65EEEA8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v28 = sub_1E60731B0();
  v34 = v27;
  v35 = v28;
  swift_getOpaqueTypeConformance2();
  sub_1E65DC258();
}

uint64_t sub_1E6300D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  LODWORD(v46) = a8;
  v44 = a6;
  v39 = a4;
  v40 = a5;
  v38 = a3;
  v37 = a2;
  v36[1] = a1;
  v45 = a9;
  v11 = type metadata accessor for AppComposer();
  *&v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v36 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v17 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v36 - v18;
  v19 = type metadata accessor for ActionButtonDescriptor(0);
  v20 = &v16[*(v19 + 20)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
  v22 = v21[12];
  v23 = (v20 + v21[16]);
  v24 = (v20 + v21[20]);
  sub_1E5DFD1CC(v37, v20, &qword_1ED073718, &qword_1E65ED978);
  *(v20 + v22) = v38;
  v25 = v40;
  *v23 = v39;
  v23[1] = v25;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  *v24 = 0;
  v24[1] = 0;
  swift_storeEnumTagMultiPayload();

  sub_1E65D76E8();
  (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  v26 = *(a7 + 2);
  v27 = *(a7 + 5);
  v28 = *(a7 + 8);
  v40 = *(a7 + 7);
  v29 = *(a7 + 9);
  sub_1E5E1D34C(a1, v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v30 = (*(v41 + 80) + 104) & ~*(v41 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v46;
  v41 = *a7;
  v46 = *(a7 + 24);
  v32 = *a7;
  *(v31 + 40) = a7[1];
  v33 = a7[3];
  *(v31 + 56) = a7[2];
  *(v31 + 72) = v33;
  *(v31 + 88) = a7[4];
  *(v31 + 24) = v32;
  sub_1E5E1FA80(v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  v47 = v41;
  v48 = v26;
  v49 = v46;
  v50 = v27;
  v51 = &unk_1E65FB7C8;
  v52 = v31;
  v53 = v28;
  v54 = v29;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v34 = v42;
  sub_1E6034CCC(v16, v44, &v47, v42);

  swift_unknownObjectRelease();
  sub_1E5DFE50C(v16, &qword_1ED072638, &qword_1E65EB950);
  sub_1E60731B0();
  sub_1E65E4708();
  return sub_1E5EF70C0(v34);
}

uint64_t sub_1E6301134(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 160) = a2;
  *(v4 + 16) = a1;
  v5 = sub_1E65D8F28();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v9 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0) - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  *(v4 + 88) = v11;
  v12 = *(v11 - 8);
  *(v4 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v15 = type metadata accessor for PageMetricsClick();
  *(v4 + 120) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E630135C, 0, 0);
}

uint64_t sub_1E630135C()
{
  v1 = *(v0 + 160);
  if (sub_1E65E1EF8())
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = *(v0 + 80);
    v41 = *(v0 + 72);
    v44 = *(v0 + 64);
    v48 = *(v0 + 56);
    v49 = *(v0 + 88);
    v53 = *(v0 + 48);
    v54 = *(v0 + 40);
    v8 = *(v0 + 32);
    v51 = *(v0 + 24);
    v9 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v10 = *(sub_1E65D86A8() - 8);
    v11 = *(v10 + 72);
    v46 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1E65EA670;
    sub_1E65E28E8();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v40 = *v8;
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60EEC44(v4);
    sub_1E5DFE50C(v7, &qword_1ED072958, &qword_1E65EC0F0);
    (*(v6 + 8))(v5, v49);
    v12 = sub_1E65D7EB8();
    (*(*(v12 - 8) + 48))(v4, 1, v12);
    v50 = *(v51 + 48);
    v52 = *(v51 + 56);
    sub_1E5DFE50C(v4, &qword_1ED072968, &unk_1E6609800);
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    (*(v53 + 104))(v48, *MEMORY[0x1E69CBCB0], v54);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E5DFD1CC(v9, v2, &qword_1ED073578, &qword_1E65F0E60);
    v15 = v3[5];
    v16 = sub_1E65D8C68();
    (*(*(v16 - 8) + 16))(v2 + v15, v9 + v15, v16);
    sub_1E5DFD1CC(v9 + v3[6], v2 + v3[6], &qword_1ED072340, &qword_1E65EA410);
    v56 = *(v9 + v3[7]);

    sub_1E5FAA0F0(v42);
    sub_1E5DFD1CC(v9 + v3[8], v2 + v3[8], &qword_1ED073570, &unk_1E65F4570);
    v17 = (v9 + v3[9]);
    v18 = *v17;
    v19 = v17[1];
    v20 = (v9 + v3[10]);
    v21 = v20[1];
    v45 = v18;
    v47 = *v20;
    v22 = *(v9 + v3[11]);
    v23 = (v9 + v3[12]);
    v24 = v23[1];
    v43 = *v23;
    v25 = (v9 + v3[13]);
    v27 = *v25;
    v26 = v25[1];
    (*(v53 + 16))(v2 + v3[14], v9 + v3[14], v54);
    sub_1E5DFD1CC(v9 + v3[15], v2 + v3[15], &qword_1ED072330, &qword_1E65EAB70);
    *(v2 + v3[7]) = v56;
    v28 = (v2 + v3[9]);
    *v28 = v45;
    v28[1] = v19;
    v29 = (v2 + v3[10]);
    *v29 = v47;
    v29[1] = v21;
    *(v2 + v3[11]) = v22;
    v30 = (v2 + v3[12]);
    *v30 = v43;
    v30[1] = v24;
    v31 = (v2 + v3[13]);
    *v31 = v27;
    v31[1] = v26;

    v55 = (v50 + *v50);
    v32 = v50[1];
    v33 = swift_task_alloc();
    *(v0 + 136) = v33;
    *v33 = v0;
    v33[1] = sub_1E63019A4;
    v34 = *(v0 + 128);
  }

  else
  {
    v35 = *(v0 + 24);
    v36 = *(v35 + 56);
    v55 = (*(v35 + 48) + **(v35 + 48));
    v37 = *(*(v35 + 48) + 4);
    v38 = swift_task_alloc();
    *(v0 + 152) = v38;
    *v38 = v0;
    v38[1] = sub_1E63075D4;
    v34 = *(v0 + 16);
  }

  return v55(v34);
}

uint64_t sub_1E63019A4()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *v1;
  v4[18] = v0;

  sub_1E630578C(v3, type metadata accessor for PageMetricsClick);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63075D8, 0, 0);
  }

  else
  {
    v5 = v4[16];
    v7 = v4[13];
    v6 = v4[14];
    v9 = v4[9];
    v8 = v4[10];
    v10 = v4[7];
    v11 = v4[8];

    v12 = v4[1];

    return v12();
  }
}

uint64_t sub_1E6301B68(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  v35 = a4;
  v36 = a5;
  v33 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078158, &qword_1E65FB788);
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v32[-v10];
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1E65E1F28();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = sub_1E65E1EE8();
  v37 = *(v17 - 8);
  v18 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = *a1;
  sub_1E5E1D34C(a1, v14, type metadata accessor for AppComposer);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = v21 + v13;
  v23 = swift_allocObject();
  sub_1E5E1FA80(v14, v23 + v21);
  sub_1E65E1F18();
  LOBYTE(v13) = v33;
  sub_1E65E1ED8();
  sub_1E5E1D34C(a1, v14, type metadata accessor for AppComposer);
  v24 = swift_allocObject();
  sub_1E5E1FA80(v14, v24 + v21);
  *(v24 + v22) = v13;
  v25 = v24 + (v22 & 0xFFFFFFFFFFFFFFF8);
  v26 = v36;
  *(v25 + 8) = v35;
  *(v25 + 16) = v26;
  v27 = (v24 + (((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v28 = v39;
  *v27 = v38;
  v27[1] = v28;
  type metadata accessor for AppFeature();
  sub_1E6305744(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E6305744(&qword_1EE2D62D8, MEMORY[0x1E699F138]);

  v29 = v40;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v30 = sub_1E65E4F08();
  (*(v41 + 8))(v29, v42);
  (*(v37 + 8))(v20, v17);
  return v30;
}

uint64_t sub_1E6301F90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v73 = a7;
  v74 = a6;
  v75 = a5;
  v77 = a4;
  v76 = a3;
  v64 = a1;
  v72 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v69 = v58 - v14;
  v15 = sub_1E65D7848();
  v66 = *(v15 - 8);
  v67 = v15;
  v16 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v71 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  v18 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = v58 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v62 = *(v60 - 8);
  v20 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = v58 - v21;
  v22 = sub_1E65E07B8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v58[2] = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753D0, &qword_1E65F1A50);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = v58 - v27;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  v29 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v31 = v58 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = v58 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v58[1] = v58 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v42 = v58 - v41;
  v43 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v33 + 8))(v36, v32);
  v78 = a2;
  v61 = v42;
  sub_1E65E4DA8();
  sub_1E5DFE50C(v31, &qword_1ED071E58, &qword_1E65EA150);
  v44 = type metadata accessor for AppState();
  v45 = v44[56];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  v68 = v28;
  sub_1E65E4C98();
  v46 = v44[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  swift_getKeyPath();
  v47 = v59;
  sub_1E65E4EC8();

  v48 = v63;
  v49 = v60;
  sub_1E65E4C98();
  v50 = v47;
  v51 = v66;
  (*(v62 + 8))(v50, v49);
  sub_1E65E4DA8();
  v52 = v67;
  sub_1E5DFE50C(v48, &qword_1ED072958, &qword_1E65EC0F0);
  v53 = v44[7];
  v54 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v55 = v70;
  sub_1E65E4C98();
  sub_1E5E1F544(v54);
  sub_1E5DFE50C(v55, &qword_1ED071F78, &unk_1E65EA3F0);
  v56 = *(v51 + 48);
  if (v56(v54, 1, v52) == 1)
  {
    sub_1E65D77C8();
    if (v56(v54, 1, v52) != 1)
    {
      sub_1E5DFE50C(v54, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v51 + 32))(v71, v54, v52);
  }

  sub_1E65E0708();

  return sub_1E65E1EC8();
}

uint64_t sub_1E6302730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v43 = a3;
  v44 = a8;
  LODWORD(v45) = a7;
  v47 = a9;
  v48 = a5;
  v42 = a4;
  v46 = a10;
  v14 = type metadata accessor for AppComposer();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v39 - v20;
  v22 = type metadata accessor for ActionButtonDescriptor(0);
  v23 = &v21[*(v22 + 20)];
  *v23 = 2;
  *(v23 + 1) = a1;
  *(v23 + 2) = a2;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  swift_storeEnumTagMultiPayload();

  sub_1E65D76E8();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  sub_1E5E1D34C(a4, v17, type metadata accessor for AppComposer);
  v24 = *(a6 + 2);
  v25 = *(a6 + 5);
  v26 = *(a6 + 8);
  v41 = *(a6 + 7);
  v40 = v26;
  v27 = *(a6 + 9);
  v28 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v29 = v28 + v16;
  v30 = (v28 + v16) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v43;
  sub_1E5E1FA80(v17, v31 + v28);
  *(v31 + v29) = v45;
  v32 = v31 + v30;
  v33 = a6[1];
  *(v32 + 8) = *a6;
  v34 = a6[3];
  *(v32 + 72) = a6[4];
  v35 = a6[2];
  *(v32 + 56) = v34;
  v36 = *a6;
  *(v32 + 40) = v35;
  v45 = *(a6 + 24);
  v37 = v45;
  *(v32 + 24) = v33;
  v49 = v36;
  v50 = v24;
  v51 = v37;
  v52 = v25;
  v53 = v46;
  v54 = v31;
  v55 = v40;
  v56 = v27;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1E6034CCC(v21, v48, &v49, v47);

  swift_unknownObjectRelease();
  return sub_1E5DFE50C(v21, &qword_1ED072638, &qword_1E65EB950);
}

uint64_t sub_1E6302A44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 256) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753D0, &qword_1E65F1A50) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  *(v5 + 80) = v10;
  v11 = *(v10 - 8);
  *(v5 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B88, &qword_1E65F7878) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0) - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  *(v5 + 120) = v15;
  v16 = *(v15 - 8);
  *(v5 + 128) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800) - 8) + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v19 = sub_1E65D8F28();
  *(v5 + 152) = v19;
  v20 = *(v19 - 8);
  *(v5 + 160) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v22 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v23 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  v24 = type metadata accessor for PageMetricsClick();
  *(v5 + 200) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6302DC4, 0, 0);
}

uint64_t sub_1E6302DC4()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v104 = *(v0 + 152);
  v105 = *(v0 + 160);
  v99 = *(v0 + 32);
  v100 = *(v0 + 168);
  v102 = *(v0 + 24);
  v5 = *(v0 + 16);
  v96 = *(v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  v6 = *(sub_1E65D86A8() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v78 = *(v6 + 72);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1E65EA670;
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v91 = objc_opt_self();
  v92 = ObjCClassFromMetadata;
  v9 = [v91 bundleForClass_];
  v10 = *v99;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E5D48();
  v90 = *(v105 + 104);
  v90(v100, *MEMORY[0x1E69CBCD8], v104);
  v68 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  sub_1E65D8678();
  sub_1E5DFD1CC(v5, v1, &qword_1ED073578, &qword_1E65F0E60);
  v11 = v2[5];
  v95 = v1 + v11;
  v89 = sub_1E65D8C68();
  v87 = *(*(v89 - 8) + 16);
  v87(v1 + v11, v5 + v11);
  v12 = v2[6];
  v85 = v1 + v12;
  sub_1E5DFD1CC(v5 + v12, v1 + v12, &qword_1ED072340, &qword_1E65EA410);
  v107 = *(v5 + v2[7]);

  sub_1E5FAA0F0(v98);
  v13 = v2[8];
  v84 = v1 + v13;
  sub_1E5DFD1CC(v5 + v13, v1 + v13, &qword_1ED073570, &unk_1E65F4570);
  v14 = (v5 + v2[9]);
  v16 = *v14;
  v15 = v14[1];
  v17 = (v5 + v2[10]);
  v18 = v2[12];
  v101 = v15;
  v103 = *(v5 + v2[11]);
  v20 = *v17;
  v19 = v17[1];
  v21 = *(v5 + v18);
  v22 = *(v5 + v18 + 8);
  v23 = v2[14];
  v24 = (v5 + v2[13]);
  v26 = *v24;
  v25 = v24[1];
  v82 = v1 + v23;
  v81 = *(v105 + 16);
  v81(v1 + v23, v5 + v23, v104, v27, v28);
  v29 = v2[15];
  v80 = v1 + v29;
  sub_1E5DFD1CC(v5 + v29, v1 + v29, &qword_1ED072330, &qword_1E65EAB70);
  *(v1 + v2[7]) = v107;
  v30 = (v1 + v2[9]);
  *v30 = v16;
  v30[1] = v101;
  v31 = (v1 + v2[10]);
  v88 = v20;
  *v31 = v20;
  v31[1] = v19;
  *(v1 + v2[11]) = v103;
  v32 = (v1 + v2[12]);
  v94 = v21;
  *v32 = v21;
  v32[1] = v22;
  v77 = v2;
  v33 = (v1 + v2[13]);
  v86 = v26;
  *v33 = v26;
  v33[1] = v25;

  if (sub_1E65E1EF8())
  {
    v75 = v19;
    v76 = v25;
    v97 = v22;
    v34 = v93[17];
    v35 = v93[18];
    v37 = v93[15];
    v36 = v93[16];
    v38 = v93[14];
    v73 = v93[13];
    v74 = v93[11];
    v39 = v93[9];
    v69 = v93[12];
    v71 = v93[10];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60EEC44(v35);
    sub_1E5DFE50C(v38, &qword_1ED072958, &qword_1E65EC0F0);
    (*(v36 + 8))(v34, v37);
    v40 = sub_1E65D7EB8();
    (*(*(v40 - 8) + 48))(v35, 1, v40);
    sub_1E5DFE50C(v35, &qword_1ED072968, &unk_1E6609800);
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60EEA00(v73);
    sub_1E5DFE50C(v39, &qword_1ED0753D0, &qword_1E65F1A50);
    (*(v74 + 8))(v69, v71);
    v41 = sub_1E65E1F68();
    v42 = *(v41 - 8);
    v43 = (*(v42 + 48))(v73, 1, v41);
    v44 = v93[13];
    if (v43 == 1)
    {
      sub_1E5DFE50C(v93[13], &qword_1ED076B88, &qword_1E65F7878);
    }

    else
    {
      sub_1E65E1F48();
      (*(v42 + 8))(v44, v41);
    }

    v51 = v93[7];
    v50 = v93[8];
    v52 = v93[6];
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1E65EA670;
    sub_1E65E28D8();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E0678();
    (*(v51 + 8))(v50, v52);
    sub_1E65E07C8();
    v53 = v93[23];
    sub_1E65E5BA8();
    v54 = v93[26];
    v70 = v93[27];
    v56 = v93[22];
    v55 = v93[23];
    v57 = v93[21];
    v58 = v93[19];
    v59 = v93[5];
    v79 = *(v59 + 48);
    v83 = *(v59 + 56);
    v60 = [v91 bundleForClass_];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    v90(v57, *MEMORY[0x1E69CBCB0], v58);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E5DFD1CC(v70, v54, &qword_1ED073578, &qword_1E65F0E60);
    (v87)(v54 + v77[5], v95, v89);
    sub_1E5DFD1CC(v85, v54 + v77[6], &qword_1ED072340, &qword_1E65EA410);

    sub_1E5FAA0F0(v72);
    sub_1E5DFD1CC(v84, v54 + v77[8], &qword_1ED073570, &unk_1E65F4570);
    (v81)(v54 + v77[14], v82, v58);
    sub_1E5DFD1CC(v80, v54 + v77[15], &qword_1ED072330, &qword_1E65EAB70);
    *(v54 + v77[7]) = v107;
    v61 = (v54 + v77[9]);
    *v61 = v16;
    v61[1] = v101;
    v62 = (v54 + v77[10]);
    *v62 = v88;
    v62[1] = v75;
    *(v54 + v77[11]) = v103;
    v63 = (v54 + v77[12]);
    *v63 = v94;
    v63[1] = v97;
    v64 = (v54 + v77[13]);
    *v64 = v86;
    v64[1] = v76;

    v106 = (v79 + *v79);
    v65 = v79[1];
    v66 = swift_task_alloc();
    v93[28] = v66;
    *v66 = v93;
    v66[1] = sub_1E6303900;
    v49 = v93[26];
  }

  else
  {
    v45 = v93[5];
    v46 = *(v45 + 56);
    v106 = (*(v45 + 48) + **(v45 + 48));
    v47 = *(*(v45 + 48) + 4);
    v48 = swift_task_alloc();
    v93[30] = v48;
    *v48 = v93;
    v48[1] = sub_1E6303B68;
    v49 = v93[27];
  }

  return v106(v49);
}

uint64_t sub_1E6303900()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 232) = v0;

  sub_1E630578C(v3, type metadata accessor for PageMetricsClick);
  if (v0)
  {
    v4 = sub_1E6303DA8;
  }

  else
  {
    v4 = sub_1E6303A44;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6303A44()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[14];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[8];
  sub_1E630578C(v0[27], type metadata accessor for PageMetricsClick);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6303B68()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1E6303C7C;
  }

  else
  {
    v3 = sub_1E63075B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6303C7C()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[14];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[8];
  v15 = v0[31];
  sub_1E630578C(v0[27], type metadata accessor for PageMetricsClick);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6303DA8()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[14];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[8];
  v15 = v0[29];
  sub_1E630578C(v0[27], type metadata accessor for PageMetricsClick);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6303ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  v35 = a6;
  v36 = a8;
  v33 = a4;
  v34 = a5;
  v37 = a9;
  v32 = a11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v31[-v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E65EA670;
  sub_1E5DFD1CC(a1, v18, &qword_1ED073718, &qword_1E65ED978);
  v20 = sub_1E65E20A8();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    v22 = sub_1E5DFE50C(v18, &qword_1ED073718, &qword_1E65ED978);
    v23 = 0x80000001E66155A0;
    v24 = 0xD000000000000016;
  }

  else
  {
    v25 = sub_1E65E2088();
    v22 = (*(v21 + 8))(v18, v20);
    if (v25)
    {
      if (v25 == 1)
      {
        v23 = 0x80000001E66155E0;
        v24 = 0xD000000000000015;
      }

      else
      {
        v24 = 0xD000000000000012;
        v23 = 0x80000001E66155C0;
      }
    }

    else
    {
      v23 = 0xED00006E616C5072;
      v24 = 0x756F59646C697542;
    }
  }

  *(v19 + 32) = v24;
  *(v19 + 40) = v23;
  MEMORY[0x1EEE9AC00](v22);
  *&v31[-80] = a7;
  *&v31[-72] = a1;
  *&v31[-64] = a2;
  *&v31[-56] = a3;
  v26 = v34;
  *&v31[-48] = v33;
  *&v31[-40] = v26;
  v27 = v36;
  *&v31[-32] = v35;
  *&v31[-24] = v27;
  *&v31[-16] = a10;
  v31[-8] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EF0, &qword_1E65EEEA8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v29 = sub_1E60731B0();
  v38 = v28;
  v39 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1E65DC258();
}

uint64_t sub_1E63041D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, unsigned __int8 a11)
{
  v46 = a8;
  v42 = a7;
  v41 = a6;
  v40 = a4;
  v39 = a3;
  v38 = a2;
  v49 = a1;
  v47 = a9;
  LODWORD(v48) = a11;
  v12 = type metadata accessor for AppComposer();
  *&v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v37 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v18 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - v19;
  v20 = type metadata accessor for ActionButtonDescriptor(0);
  v21 = &v17[*(v20 + 20)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
  v23 = v22[12];
  v24 = (v21 + v22[16]);
  v25 = (v21 + v22[20]);
  sub_1E5DFD1CC(v38, v21, &qword_1ED073718, &qword_1E65ED978);
  *(v21 + v23) = v39;
  *v24 = v40;
  v24[1] = a5;
  v26 = v42;
  *v25 = v41;
  v25[1] = v26;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  swift_storeEnumTagMultiPayload();

  sub_1E65D76E8();
  (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
  v27 = *(a10 + 2);
  v28 = *(a10 + 5);
  v29 = *(a10 + 8);
  v42 = *(a10 + 7);
  v30 = *(a10 + 9);
  sub_1E5E1D34C(v49, &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v31 = (*(v43 + 80) + 104) & ~*(v43 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v48;
  v43 = *a10;
  v48 = *(a10 + 24);
  v33 = *a10;
  *(v32 + 40) = a10[1];
  v34 = a10[3];
  *(v32 + 56) = a10[2];
  *(v32 + 72) = v34;
  *(v32 + 88) = a10[4];
  *(v32 + 24) = v33;
  sub_1E5E1FA80(&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  v50 = v43;
  v51 = v27;
  v52 = v48;
  v53 = v28;
  v54 = &unk_1E65FB6E8;
  v55 = v32;
  v56 = v29;
  v57 = v30;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v35 = v44;
  sub_1E6034CCC(v17, v46, &v50, v44);

  swift_unknownObjectRelease();
  sub_1E5DFE50C(v17, &qword_1ED072638, &qword_1E65EB950);
  sub_1E60731B0();
  sub_1E65E4708();
  return sub_1E5EF70C0(v35);
}

uint64_t sub_1E6304640(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 160) = a2;
  *(v4 + 16) = a1;
  v5 = sub_1E65D8F28();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v9 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0) - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  *(v4 + 88) = v11;
  v12 = *(v11 - 8);
  *(v4 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v15 = type metadata accessor for PageMetricsClick();
  *(v4 + 120) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6304868, 0, 0);
}

uint64_t sub_1E6304868()
{
  v1 = *(v0 + 160);
  if (sub_1E65E1EF8())
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = *(v0 + 80);
    v41 = *(v0 + 72);
    v44 = *(v0 + 64);
    v48 = *(v0 + 56);
    v49 = *(v0 + 88);
    v53 = *(v0 + 48);
    v54 = *(v0 + 40);
    v8 = *(v0 + 32);
    v51 = *(v0 + 24);
    v9 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v10 = *(sub_1E65D86A8() - 8);
    v11 = *(v10 + 72);
    v46 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1E65EA670;
    sub_1E65E28E8();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v40 = *v8;
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60EEC44(v4);
    sub_1E5DFE50C(v7, &qword_1ED072958, &qword_1E65EC0F0);
    (*(v6 + 8))(v5, v49);
    v12 = sub_1E65D7EB8();
    (*(*(v12 - 8) + 48))(v4, 1, v12);
    v50 = *(v51 + 48);
    v52 = *(v51 + 56);
    sub_1E5DFE50C(v4, &qword_1ED072968, &unk_1E6609800);
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    (*(v53 + 104))(v48, *MEMORY[0x1E69CBCB0], v54);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E5DFD1CC(v9, v2, &qword_1ED073578, &qword_1E65F0E60);
    v15 = v3[5];
    v16 = sub_1E65D8C68();
    (*(*(v16 - 8) + 16))(v2 + v15, v9 + v15, v16);
    sub_1E5DFD1CC(v9 + v3[6], v2 + v3[6], &qword_1ED072340, &qword_1E65EA410);
    v56 = *(v9 + v3[7]);

    sub_1E5FAA0F0(v42);
    sub_1E5DFD1CC(v9 + v3[8], v2 + v3[8], &qword_1ED073570, &unk_1E65F4570);
    v17 = (v9 + v3[9]);
    v18 = *v17;
    v19 = v17[1];
    v20 = (v9 + v3[10]);
    v21 = v20[1];
    v45 = v18;
    v47 = *v20;
    v22 = *(v9 + v3[11]);
    v23 = (v9 + v3[12]);
    v24 = v23[1];
    v43 = *v23;
    v25 = (v9 + v3[13]);
    v27 = *v25;
    v26 = v25[1];
    (*(v53 + 16))(v2 + v3[14], v9 + v3[14], v54);
    sub_1E5DFD1CC(v9 + v3[15], v2 + v3[15], &qword_1ED072330, &qword_1E65EAB70);
    *(v2 + v3[7]) = v56;
    v28 = (v2 + v3[9]);
    *v28 = v45;
    v28[1] = v19;
    v29 = (v2 + v3[10]);
    *v29 = v47;
    v29[1] = v21;
    *(v2 + v3[11]) = v22;
    v30 = (v2 + v3[12]);
    *v30 = v43;
    v30[1] = v24;
    v31 = (v2 + v3[13]);
    *v31 = v27;
    v31[1] = v26;

    v55 = (v50 + *v50);
    v32 = v50[1];
    v33 = swift_task_alloc();
    *(v0 + 136) = v33;
    *v33 = v0;
    v33[1] = sub_1E6304EB0;
    v34 = *(v0 + 128);
  }

  else
  {
    v35 = *(v0 + 24);
    v36 = *(v35 + 56);
    v55 = (*(v35 + 48) + **(v35 + 48));
    v37 = *(*(v35 + 48) + 4);
    v38 = swift_task_alloc();
    *(v0 + 152) = v38;
    *v38 = v0;
    v38[1] = sub_1E6305074;
    v34 = *(v0 + 16);
  }

  return v55(v34);
}

uint64_t sub_1E6304EB0()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *v1;
  v4[18] = v0;

  sub_1E630578C(v3, type metadata accessor for PageMetricsClick);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6305244, 0, 0);
  }

  else
  {
    v5 = v4[16];
    v7 = v4[13];
    v6 = v4[14];
    v9 = v4[9];
    v8 = v4[10];
    v10 = v4[7];
    v11 = v4[8];

    v12 = v4[1];

    return v12();
  }
}

uint64_t sub_1E6305074()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v12 = *v0;

  v3 = v1[16];
  v4 = v1[14];
  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[9];
  v8 = v1[8];
  v9 = v1[7];

  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_1E6305244()
{
  v1 = v0[18];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E63052FC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6304640(a1, v6, v1 + 24, v1 + v5);
}

uint64_t sub_1E6305400()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63054B0, v3, v2);
}

uint64_t sub_1E63054B0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_1E5E20198(18, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6080D24, 0, 0);
}

uint64_t sub_1E6305528(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v1 + v6);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6302A44(a1, v7, v1 + v5, v9, v8 + 8);
}

uint64_t sub_1E6305644()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E63053E0(v0 + v3);
}

uint64_t sub_1E6305744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E630578C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6305804(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6301134(a1, v6, v1 + 24, v1 + v5);
}

uint64_t objectdestroy_13Tm()
{
  v119 = type metadata accessor for AppComposer();
  v117 = *(*(v119 - 1) + 80);
  v115 = *(*(v119 - 1) + 64);
  v116 = (v117 + 24) & ~v117;
  v118 = v0;
  v112 = v0 + v116;
  v1 = *(v0 + v116);

  v2 = (v0 + v116 + v119[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v114 = type metadata accessor for AccountService();
  v113 = *(v114[-1].Description + 1);
  v113(&v2[v5], v114);
  v6 = v4[7];
  v111 = type metadata accessor for AppStateService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v6], v111);
  v7 = v4[8];
  v109 = type metadata accessor for ArchivedSessionService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v7], v109);
  v8 = v4[9];
  v107 = type metadata accessor for AssetService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v8], v107);
  v9 = v4[10];
  v105 = type metadata accessor for AwardsService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v9], v105);
  v10 = v4[11];
  v103 = type metadata accessor for BookmarkService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v10], v103);
  v11 = v4[12];
  v101 = type metadata accessor for CatalogService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v11], v101);
  v12 = v4[13];
  v99 = type metadata accessor for ConfigurationService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v12], v99);
  v13 = v4[14];
  v97 = type metadata accessor for ContentAvailabilityService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v13], v97);
  v14 = v4[15];
  v95 = type metadata accessor for EngagementService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v14], v95);
  v15 = v4[16];
  v93 = type metadata accessor for HealthDataService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v15], v93);
  v16 = v4[17];
  v91 = type metadata accessor for InteropService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v16], v91);
  v17 = v4[18];
  v89 = type metadata accessor for LocalizationService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v17], v89);
  v18 = v4[19];
  v87 = type metadata accessor for MarketingService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v18], v87);
  v19 = v4[20];
  v85 = type metadata accessor for MetricService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v19], v85);
  v20 = v4[21];
  v83 = type metadata accessor for PersonalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v20], v83);
  v21 = v4[22];
  v81 = type metadata accessor for PlayerService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v21], v81);
  v22 = v4[23];
  v79 = type metadata accessor for PrivacyPreferenceService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v22], v79);
  v23 = v4[24];
  v77 = type metadata accessor for RecommendationService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v23], v77);
  v24 = v4[25];
  v75 = type metadata accessor for RemoteBrowsingService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v24], v75);
  v25 = v4[26];
  v73 = type metadata accessor for SearchService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v25], v73);
  v26 = v4[27];
  v71 = type metadata accessor for ServiceSubscriptionService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v26], v71);
  v27 = v4[28];
  v64 = type metadata accessor for SessionService();
  v69 = *(v64[-1].Description + 1);
  v69(&v2[v27], v64);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v68 = *(v29[-1].Description + 1);
  v68(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v67 = *(v31[-1].Description + 1);
  v67(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v66 = *(v33[-1].Description + 1);
  v66(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v65 = *(QueueService[-1].Description + 1);
  v65(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v63 = *(v42[-1].Description + 1);
  v63(&v2[v41], v42);
  v43 = *(v112 + v119[6]);

  v44 = (v112 + v119[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v113(&v47[v4[6]], v114);
  v110(&v47[v4[7]], v111);
  v108(&v47[v4[8]], v109);
  v106(&v47[v4[9]], v107);
  v104(&v47[v4[10]], v105);
  v102(&v47[v4[11]], v103);
  v100(&v47[v4[12]], v101);
  v98(&v47[v4[13]], v99);
  v96(&v47[v4[14]], v97);
  v94(&v47[v4[15]], v95);
  v92(&v47[v4[16]], v93);
  v90(&v47[v4[17]], v91);
  v88(&v47[v4[18]], v89);
  v86(&v47[v4[19]], v87);
  v84(&v47[v4[20]], v85);
  v82(&v47[v4[21]], v83);
  v80(&v47[v4[22]], v81);
  v78(&v47[v4[23]], v79);
  v76(&v47[v4[24]], v77);
  v74(&v47[v4[25]], v75);
  v72(&v47[v4[26]], v73);
  v70(&v47[v4[27]], v71);
  v69(&v47[v4[28]], v64);
  v68(&v47[v4[29]], v29);
  v67(&v47[v4[30]], v31);
  v66(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v65(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v63(&v47[v4[36]], v42);
  v54 = *(v112 + v119[8]);
  swift_unknownObjectRelease();
  if (*(v112 + v119[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v112 + v119[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v118 + ((v116 + v115) & 0xFFFFFFFFFFFFFFF8));
  v57 = v56[1];
  swift_unknownObjectRelease();
  v58 = v56[4];

  v59 = v56[6];

  v60 = v56[8];

  v61 = v56[10];

  return swift_deallocObject();
}

uint64_t sub_1E63065E8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v1 + v6);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E62FF938(a1, v7, v1 + v5, v9, v8 + 8);
}

uint64_t sub_1E6306704()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E63053E0(v0 + v3);
}

uint64_t objectdestroy_28Tm_1()
{
  v117 = type metadata accessor for AppComposer();
  v115 = *(*(v117 - 1) + 80);
  v113 = *(*(v117 - 1) + 64);
  v114 = (v115 + 16) & ~v115;
  v116 = v0;
  v110 = v0 + v114;
  v1 = *(v0 + v114);

  v2 = (v0 + v114 + v117[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v112 = type metadata accessor for AccountService();
  v111 = *(v112[-1].Description + 1);
  v111(&v2[v5], v112);
  v6 = v4[7];
  v109 = type metadata accessor for AppStateService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v6], v109);
  v7 = v4[8];
  v107 = type metadata accessor for ArchivedSessionService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v7], v107);
  v8 = v4[9];
  v105 = type metadata accessor for AssetService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v8], v105);
  v9 = v4[10];
  v103 = type metadata accessor for AwardsService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v9], v103);
  v10 = v4[11];
  v101 = type metadata accessor for BookmarkService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v10], v101);
  v11 = v4[12];
  v99 = type metadata accessor for CatalogService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v11], v99);
  v12 = v4[13];
  v97 = type metadata accessor for ConfigurationService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v12], v97);
  v13 = v4[14];
  v95 = type metadata accessor for ContentAvailabilityService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v13], v95);
  v14 = v4[15];
  v93 = type metadata accessor for EngagementService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v14], v93);
  v15 = v4[16];
  v91 = type metadata accessor for HealthDataService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v15], v91);
  v16 = v4[17];
  v89 = type metadata accessor for InteropService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v16], v89);
  v17 = v4[18];
  v87 = type metadata accessor for LocalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v17], v87);
  v18 = v4[19];
  v85 = type metadata accessor for MarketingService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v18], v85);
  v19 = v4[20];
  v83 = type metadata accessor for MetricService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v19], v83);
  v20 = v4[21];
  v81 = type metadata accessor for PersonalizationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v20], v81);
  v21 = v4[22];
  v79 = type metadata accessor for PlayerService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v21], v79);
  v22 = v4[23];
  v77 = type metadata accessor for PrivacyPreferenceService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v22], v77);
  v23 = v4[24];
  v75 = type metadata accessor for RecommendationService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v23], v75);
  v24 = v4[25];
  v73 = type metadata accessor for RemoteBrowsingService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v24], v73);
  v25 = v4[26];
  v71 = type metadata accessor for SearchService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v25], v71);
  v26 = v4[27];
  v69 = type metadata accessor for ServiceSubscriptionService();
  v68 = *(v69[-1].Description + 1);
  v68(&v2[v26], v69);
  v27 = v4[28];
  v62 = type metadata accessor for SessionService();
  v67 = *(v62[-1].Description + 1);
  v67(&v2[v27], v62);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v66 = *(v29[-1].Description + 1);
  v66(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v65 = *(v31[-1].Description + 1);
  v65(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v64 = *(v33[-1].Description + 1);
  v64(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v63 = *(QueueService[-1].Description + 1);
  v63(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v61 = *(v42[-1].Description + 1);
  v61(&v2[v41], v42);
  v43 = *(v110 + v117[6]);

  v44 = (v110 + v117[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v111(&v47[v4[6]], v112);
  v108(&v47[v4[7]], v109);
  v106(&v47[v4[8]], v107);
  v104(&v47[v4[9]], v105);
  v102(&v47[v4[10]], v103);
  v100(&v47[v4[11]], v101);
  v98(&v47[v4[12]], v99);
  v96(&v47[v4[13]], v97);
  v94(&v47[v4[14]], v95);
  v92(&v47[v4[15]], v93);
  v90(&v47[v4[16]], v91);
  v88(&v47[v4[17]], v89);
  v86(&v47[v4[18]], v87);
  v84(&v47[v4[19]], v85);
  v82(&v47[v4[20]], v83);
  v80(&v47[v4[21]], v81);
  v78(&v47[v4[22]], v79);
  v76(&v47[v4[23]], v77);
  v74(&v47[v4[24]], v75);
  v72(&v47[v4[25]], v73);
  v70(&v47[v4[26]], v71);
  v68(&v47[v4[27]], v69);
  v67(&v47[v4[28]], v62);
  v66(&v47[v4[29]], v29);
  v65(&v47[v4[30]], v31);
  v64(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v63(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v61(&v47[v4[36]], v42);
  v54 = *(v110 + v117[8]);
  swift_unknownObjectRelease();
  if (*(v110 + v117[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v110 + v117[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v114 + v113) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 31) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v116 + v56 + 16);

  v59 = *(v116 + v57 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E63074DC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = (v2 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v6);

  return a2(a1, v2 + v5, v13, v8, v9, v11, v12);
}

uint64_t QueuedSessionType.hash(into:)(uint64_t a1)
{
  v3 = sub_1E65D8B08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (v1[2])
  {
    v9 = v1[1];
    MEMORY[0x1E694E740](1);

    return MEMORY[0x1EEE374E8](a1, v8, v9);
  }

  else
  {
    MEMORY[0x1E694E740](0);
    result = MEMORY[0x1E694E740](*(v8 + 16));
    v10 = *(v8 + 16);
    if (v10)
    {
      v13 = *(v4 + 16);
      v11 = v4 + 16;
      v12 = v13;
      v14 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v15 = *(v11 + 56);
      do
      {
        v12(v7, v14, v3);
        sub_1E6307998();
        sub_1E65E5B48();
        result = (*(v11 - 8))(v7, v3);
        v14 += v15;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t QueuedSessionType.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1E65E6D28();
  QueuedSessionType.hash(into:)(v3);
  return sub_1E65E6D78();
}

uint64_t sub_1E63077D4()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1E65E6D28();
  QueuedSessionType.hash(into:)(v3);
  return sub_1E65E6D78();
}

uint64_t sub_1E630782C()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1E65E6D28();
  QueuedSessionType.hash(into:)(v3);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard17QueuedSessionTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      v11 = *a2;
      v12 = *(a2 + 8);
      sub_1E626F21C();
      sub_1E626F21C();
      v8 = sub_1E61B7998(v2, v4);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!*(a2 + 16))
  {
LABEL_5:
    v9 = *a2;
    v10 = *(a2 + 8);
    sub_1E626F21C();
    sub_1E626F21C();
    v8 = 0;
    goto LABEL_7;
  }

  v6 = *a2;
  v7 = *(a2 + 8);
  sub_1E626F21C();
  sub_1E626F21C();
  v8 = sub_1E65DAF38();
LABEL_7:
  sub_1E5F94E14();
  sub_1E5F94E14();
  return v8 & 1;
}

unint64_t sub_1E6307998()
{
  result = qword_1ED078160;
  if (!qword_1ED078160)
  {
    sub_1E65D8B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078160);
  }

  return result;
}

unint64_t sub_1E63079F4()
{
  result = qword_1ED078168;
  if (!qword_1ED078168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078168);
  }

  return result;
}

id sub_1E6307A64()
{
  v1 = [*(v0 + qword_1EE2D9180) navigationItem];

  return v1;
}

void sub_1E6307AA4(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = *(v5 + qword_1EE2D87B0);
  v7 = *(v5 + qword_1EE2D87B0 + 8);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for ScrollHostingController();
  objc_msgSendSuper2(&v9, sel_setContentScrollView_forEdge_, a1, a2);
  v8 = [v2 parentViewController];
  [v8 setContentScrollView:a1 forEdge:a2];
}

void sub_1E6307B70(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a1;
  sub_1E6307AA4(a3, a4);
}

uint64_t sub_1E6307BE4(uint64_t a1)
{
  v3 = sub_1E5E1F174(a1);
  (*(*(*(v1 + qword_1EE2D87B0) - 8) + 8))(a1);
  return v3;
}

void *sub_1E6307C94(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EE2D87B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v12 - v7);
  v8 = sub_1E65E4038();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_1E6307DCC(void *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + qword_1EE2D87B0);
  v5 = *(v3 + qword_1EE2D87B0 + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ScrollHostingController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1E6307EA4()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v1 + qword_1EE2D87B0);
  v3 = *(v1 + qword_1EE2D87B0 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ScrollHostingController();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id sub_1E6307F64(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = (v2 + qword_1ED078170);
  *v5 = a1;
  v5[1] = a2;
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for HostingViewController.ContentScrollViewObserver();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1E6307FE4(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + qword_1ED078170);
    v3 = *(v1 + qword_1ED078170 + 8);
    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E6308020(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1E6307FE4(a3);
}

void sub_1E630808C(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1E630B4B8();
}

id sub_1E63080CC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HostingViewController.ContentScrollViewObserver();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1E6308150(void *a1)
{
  v1 = a1;
  v2 = sub_1E63081D0();

  if (v2)
  {
    sub_1E5DEF738(0, &unk_1ED078270, 0x1E69DCBA0);
    v3 = sub_1E65E5EF8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1E63081D0()
{
  v1 = [*(v0 + qword_1EE2D9180) keyCommands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E5DEF738(0, &unk_1ED078270, 0x1E69DCBA0);
  v3 = sub_1E65E5F18();

  return v3;
}

id sub_1E630824C()
{
  sub_1E63082B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078268, &qword_1E65FBB30);
  v0 = sub_1E65E5EF8();

  return v0;
}

uint64_t sub_1E63082B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E65EA660;
  v2 = *(v0 + qword_1EE2D9180);
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

id sub_1E630834C(void *a1)
{
  v1 = a1;
  v2 = sub_1E6308380();

  return v2;
}

uint64_t sub_1E6308398(void *a1)
{
  v1 = a1;
  v2 = sub_1E63083CC();

  return v2 & 1;
}

id sub_1E63083F8(void *a1)
{
  v1 = a1;
  v2 = sub_1E6307A64();

  return v2;
}

void sub_1E630843C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E6308498();
  }
}

void sub_1E6308498()
{
  v1 = sub_1E65E07B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + qword_1EE2D9180) navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  sub_1E65E0798();
  v8 = v7;
  (*(v2 + 8))(v5, v1);
  [v6 setLargeTitleInsets_];
}

void sub_1E630860C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v26.receiver = v0;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v4 = *&v0[qword_1EE2D9180];
  [v0 addChildViewController_];
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v4 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  [v6 addSubview_];

  v9 = [v4 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = [v4 view];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = objc_opt_self();
  v16 = *MEMORY[0x1E69DDCE0];
  v17 = *(MEMORY[0x1E69DDCE0] + 8);
  v18 = *(MEMORY[0x1E69DDCE0] + 16);
  v19 = *(MEMORY[0x1E69DDCE0] + 24);
  sub_1E65E6518();

  sub_1E5DEF738(0, &qword_1EE2D45D0, 0x1E696ACD8);
  v20 = sub_1E65E5EF8();

  [v15 activateConstraints_];

  [v4 didMoveToParentViewController_];
  sub_1E630899C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E65EA670;
  v22 = sub_1E65E3BA8();
  v23 = MEMORY[0x1E69DC2B0];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1E65E6388();
  swift_unknownObjectRelease();

  sub_1E6308B40();
  if (*&v1[qword_1EE2D9198])
  {
    v24 = [v4 navigationItem];
    v25 = sub_1E65E5C48();
    [v24 setTitle_];
  }
}

uint64_t sub_1E630899C()
{
  v13 = sub_1E65E3B88();
  v1 = *(*(v13 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v13);
  v3 = v0;
  v4 = *&v0[qword_1EE2D9140];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v4 < 0)
  {
    v12 = *&v0[qword_1EE2D9140];
  }

  result = sub_1E65E67C8();
  v5 = result;
  if (result)
  {
LABEL_3:
    if (v5 < 1)
    {
      __break(1u);
    }

    else
    {

      v6 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E694E2D0](v6, v4);
        }

        else
        {
          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        v9 = *&v7[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController];
        v10 = [v3 traitCollection];
        v11 = [v10 preferredContentSizeCategory];

        sub_1E65E6368();
        sub_1E65E3B78();
        sub_1E65E6378();
      }

      while (v5 != v6);
    }
  }

  return result;
}

void sub_1E6308B40()
{
  v1 = sub_1E65DEEA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, &v0[qword_1EE2D9160], v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x1E699CE10])
  {
    if ((_UISolariumEnabled() & 1) != 0 || (v7 = [v0 traitCollection], v8 = objc_msgSend(v7, sel_userInterfaceIdiom), v7, v8))
    {
      if (_UISolariumEnabled())
      {
        v9 = v0[qword_1EE2D9118];
        v10 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
        v11 = v10;
        if (v9 == 1)
        {
          goto LABEL_10;
        }

LABEL_13:
        [v10 configureWithDefaultBackground];
        v19 = [*&v0[qword_1EE2D9180] navigationItem];
        [v19 setScrollEdgeAppearance_];

        v17 = [*&v0[qword_1EE2D9180] navigationItem];
        goto LABEL_18;
      }

      v11 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
      [v11 configureWithTransparentBackground];
      v18 = [*&v0[qword_1EE2D9180] navigationItem];
      [v18 setScrollEdgeAppearance_];

      v17 = [*&v0[qword_1EE2D9180] navigationItem];
      goto LABEL_18;
    }

    v11 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
    [v11 configureWithTransparentBackground];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1E65EA660;
    v21 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v22 = swift_allocObject();
    v22[1] = vdupq_n_s64(0x4059000000000000uLL);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1E630B700;
    *(v23 + 24) = v22;
    aBlock[4] = sub_1E630B704;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E630A48C;
    aBlock[3] = &block_descriptor_35;
    v24 = _Block_copy(aBlock);

    v25 = [v21 imageWithActions_];

    _Block_release(v24);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if (v21)
    {
      __break(1u);
    }

    else
    {
      v26 = [objc_opt_self() effectWithVariableBlurRadius:v25 imageMask:25.0];

      if (v26)
      {
        *(v20 + 32) = v26;
        sub_1E5DEF738(0, &qword_1EE2D4690, 0x1E69DD290);
        v27 = sub_1E65E5EF8();

        [v11 setBackgroundEffects_];

        [v11 setBackgroundImageContentMode_];
        v28 = [objc_opt_self() clearColor];
        [v11 setShadowColor_];

        v29 = [*&v0[qword_1EE2D9180] navigationItem];
        [v29 setScrollEdgeAppearance_];

        v17 = [*&v0[qword_1EE2D9180] navigationItem];
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else if (v6 == *MEMORY[0x1E699CE18])
  {
    if (_UISolariumEnabled())
    {
      v12 = v0[qword_1EE2D9118];
      v10 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
      v11 = v10;
      if (v12 == 1)
      {
LABEL_10:
        [v10 configureWithTransparentBackground];
        v13 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
        [v13 configureWithDefaultBackground];
        v14 = [*&v0[qword_1EE2D9180] navigationItem];
        [v14 setScrollEdgeAppearance_];

        v15 = [*&v0[qword_1EE2D9180] navigationItem];
        [v15 setStandardAppearance_];

        v11 = v13;
LABEL_19:

        return;
      }

      goto LABEL_13;
    }

    v11 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
    [v11 configureWithDefaultBackground];
    v16 = [*&v0[qword_1EE2D9180] navigationItem];
    [v16 setScrollEdgeAppearance_];

    v17 = [*&v0[qword_1EE2D9180] navigationItem];
LABEL_18:
    v15 = v17;
    [v15 setStandardAppearance_];
    goto LABEL_19;
  }

  sub_1E65E6C08();
  __break(1u);
}

void sub_1E63092F0(void *a1)
{
  v1 = a1;
  sub_1E630860C();
}

void sub_1E6309338()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLayoutSubviews);
  v2 = *&v0[qword_1EE2D9198];
  if (v2)
  {
    v3 = *&v0[qword_1EE2D9180];
    v4 = v2;
    v5 = [v3 navigationItem];
    v6 = [v5 _bottomPalette];

    if (v6)
    {
      [v4 intrinsicContentSize];
      [v6 setPreferredHeight_];
    }

    v8 = [*&v1[qword_1EE2D9180] navigationItem];
    [v8 _setBottomPaletteNeedsUpdate];
  }

  v9 = &v1[qword_1EE2D9170];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    swift_getObjectType();
    sub_1E65DF028();
    swift_unknownObjectRelease();
  }

  sub_1E63094C4();
  if (*&v1[qword_1EE2D9120])
  {
    v11 = [v1 contentScrollViewForEdge_];
    if (v11)
    {
      v12 = v11;
      sub_1E6309B54(v11);
    }
  }
}

void sub_1E63094C4()
{
  v2 = sub_1E65DEEA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, &v0[qword_1EE2D9160], v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x1E699CE10])
  {
    if (v7 == *MEMORY[0x1E699CE18])
    {
      return;
    }

    sub_1E65E6C08();
    __break(1u);
LABEL_14:
    v12 = sub_1E65E67C8();
    if (v12)
    {
LABEL_6:
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v13)
      {
        __break(1u);
      }

      else if ((v2 & 0xC000000000000001) == 0)
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v14 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v15 = *(v2 + 8 * v14 + 32);
LABEL_11:
          v16 = v15;

          goto LABEL_17;
        }

        __break(1u);
        goto LABEL_37;
      }

      v15 = MEMORY[0x1E694E2D0](v14, v2);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v1 = &_OBJC_LABEL_PROTOCOL___AMSBagProtocol;
  v8 = [v0 navigationController];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = [v8 navigationBar];

  v11 = [v10 items];
  if (!v11)
  {
    goto LABEL_16;
  }

  sub_1E5DEF738(0, &qword_1EE2D4648, 0x1E69DCCE0);
  v2 = sub_1E65E5F18();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_15:

LABEL_16:
  v16 = 0;
LABEL_17:
  v17 = [*&v0[qword_1EE2D9180] navigationItem];
  if (!v16)
  {
    goto LABEL_31;
  }

  sub_1E5DEF738(0, &qword_1EE2D4648, 0x1E69DCCE0);
  v18 = v0;
  v19 = sub_1E65E65A8();

  if ((v19 & 1) == 0)
  {
    return;
  }

  v20 = [*&v18[qword_1EE2D9180] navigationItem];
  v21 = [v20 standardAppearance];

  if (v21)
  {
    v22 = [v21 backgroundImage];

    if (v22)
    {
      [v22 size];
      v24 = v23;
      v25 = [v18 view];
      if (!v25)
      {
LABEL_40:
        __break(1u);
        return;
      }

      v26 = v25;
      v27 = floor(v24);
      [v25 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      v71.origin.x = v29;
      v71.origin.y = v31;
      v71.size.width = v33;
      v71.size.height = v35;
      Width = CGRectGetWidth(v71);

      if (v27 == floor(Width))
      {
        return;
      }
    }
  }

  v37 = [*&v18[qword_1EE2D9180] navigationItem];
  v38 = [v37 standardAppearance];

  if (v38)
  {
    v39 = [v18 view];
    if (!v39)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v40 = v39;
    [v39 bounds];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v72.origin.x = v42;
    v72.origin.y = v44;
    v72.size.width = v46;
    v72.size.height = v48;
    v49 = CGRectGetWidth(v72);
    v50 = [v18 view];
    if (!v50)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v51 = v50;
    [v50 bounds];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v73.origin.x = v53;
    v73.origin.y = v55;
    v73.size.width = v57;
    v73.size.height = v59;
    v60 = CGRectGetWidth(v73);
    v61 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v62 = swift_allocObject();
    *(v62 + 16) = v49;
    *(v62 + 24) = v60;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1E630B6B8;
    *(v63 + 24) = v62;
    aBlock[4] = sub_1E630B6C0;
    aBlock[5] = v63;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E630A48C;
    aBlock[3] = &block_descriptor_14;
    v64 = _Block_copy(aBlock);

    v65 = [v61 imageWithActions_];

    _Block_release(v64);
    LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

    if ((v61 & 1) == 0)
    {
      [v38 setBackgroundImage_];

      goto LABEL_28;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_28:
  v66 = [*&v18[qword_1EE2D9180] navigationItem];
  v17 = [v66 standardAppearance];

  if (!v17)
  {
    return;
  }

  v67 = [v18 v1[208]];
  if (v67)
  {
    v68 = v67;
    v69 = [v67 navigationBar];

    [v69 setStandardAppearance_];
  }

LABEL_31:
}

void sub_1E6309B54(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = qword_1EE2D91A8;
  v6 = *(v1 + qword_1EE2D91A8);
  if (v6)
  {
    v19 = *(v1 + qword_1EE2D91A8);
  }

  else
  {
    v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
    v8 = *(v4 + 88);
    v9 = type metadata accessor for HostingViewController.ContentScrollViewObserver();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v11[2] = v7;
    v11[3] = v8;
    v11[4] = v10;
    v12 = objc_allocWithZone(v9);
    v13 = sub_1E6307F64(sub_1E630B6AC, v11);
    v14 = *(v2 + v5);
    *(v2 + v5) = v13;
    v19 = v13;

    v6 = 0;
  }

  v15 = v6;
  v16 = [a1 _isScrollViewScrollObserver_];

  if (v16)
  {
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      [Strong _removeScrollViewScrollObserver_];
    }

    [a1 _addScrollViewScrollObserver_];

    swift_unknownObjectWeakAssign();
  }
}

void sub_1E6309D40(void *a1)
{
  v1 = a1;
  sub_1E6309338();
}

void sub_1E6309D88(char a1)
{
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewWillAppear_, a1 & 1);
  v3 = [*&v1[qword_1EE2D9180] navigationItem];
  [v3 setTitleView_];

  v4 = *&v1[qword_1EE2D9198];
  if (v4)
  {
    v5 = v4;
    [v5 removeFromSuperview];
    v6 = [objc_allocWithZone(MEMORY[0x1E69DD5E0]) initWithContentView_];
    [v6 setClipsToBounds_];
    v7 = [*&v1[qword_1EE2D9180] navigationItem];
    [v7 _setBottomPalette_];
  }

  v8 = &v1[qword_1EE2D9170];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    swift_getObjectType();
    sub_1E65DF028();
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong contentOffset];
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  sub_1E6309F30(v13);
}

void sub_1E6309F30(double a1)
{
  v2 = *(v1 + qword_1EE2D9120);
  if (v2)
  {
    if (a1 <= 0.0)
    {
      v6 = *(v1 + qword_1EE2D9120 + 8);
      v5 = v2;
    }

    else
    {
      v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v4 = v2;
      v5 = [v3 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      v6 = 0;
    }

    v7 = v5;
    sub_1E630A544(v5, v6);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    sub_1E630A544(v7, 0);
  }
}

void sub_1E630A024(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1E6309D88(a3);
}

void sub_1E630A078(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewIsAppearing_, a1 & 1);
  v3 = *&v1[qword_1EE2D9198];
  if (v3)
  {
    v4 = *&v1[qword_1EE2D9198];
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v5 = v3;
      sub_1E65DC468();
    }
  }
}

void sub_1E630A128(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1E630A078(a3);
}

void sub_1E630A17C(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewWillDisappear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v5 setTintColor_];
  }
}

void sub_1E630A24C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1E630A17C(a3);
}

void sub_1E630A2A0(void *a1, double a2, CGFloat a3)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E65F3310;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [v10 CGColor];
  *(v7 + 32) = v11;
  v12 = [v8 clearColor];
  v13 = [v12 CGColor];

  *(v7 + 40) = v13;
  type metadata accessor for CGColor(0);
  v14 = sub_1E65E5EF8();

  v15 = CGGradientCreateWithColors(DeviceRGB, v14, dbl_1F5FA8930);

  if (v15)
  {
    v16 = [a1 CGContext];
    v18.y = 0.0;
    v18.x = a2 * 0.5;
    v19.x = a2 * 0.5;
    v19.y = a3;
    CGContextDrawLinearGradient(v16, v15, v18, v19, 0);
  }
}

void sub_1E630A48C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

void sub_1E630A4D8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [a1 contentOffset];
    sub_1E6309F30(v4);
  }
}

id sub_1E630A544(uint64_t a1, uint64_t a2)
{
  v5 = [v2 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 setTintColor_];
  }

  *&v2[qword_1EE2D9130] = a2;

  return [v2 setNeedsStatusBarAppearanceUpdate];
}

double sub_1E630A5F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v22 = v3;
  sub_1E6259ACC(a1, ObjectType, &off_1F5FBCF98);
  if (v9)
  {
    v10 = v9;
    *(a3 + 24) = sub_1E5DEF738(0, &qword_1EE2D46A0, &off_1E8792438);
    *a3 = v10;
  }

  else
  {
    sub_1E630B63C(a2, &v22);
    v12 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      v13 = __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
      v14 = *(v12 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17);
      v18 = sub_1E65E6BF8();
      (*(v14 + 8))(v17, v12);
      __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    else
    {
      v18 = 0;
    }

    v21.receiver = v4;
    v21.super_class = ObjectType;
    v19 = objc_msgSendSuper2(&v21, sel_targetForAction_withSender_, a1, v18);
    swift_unknownObjectRelease();
    if (v19)
    {
      sub_1E65E6708();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    result = *&v22;
    v20 = v23;
    *a3 = v22;
    *(a3 + 16) = v20;
  }

  return result;
}

id sub_1E630A7E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1E65E6708();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = a1;
  }

  sub_1E630A5F4(a3, v16, v17);

  sub_1E62FD0F8(v16);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_1E65E6BF8();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_1E630A964(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v6 = a4;

  sub_1E630B60C();
}

uint64_t sub_1E630A9D4(uint64_t a1)
{
  sub_1E5E0BE48(a1 + qword_1EE2D9170);
  v2 = *(a1 + qword_1EE2D9108 + 8);

  v3 = *(a1 + qword_1EE2D9158);

  v4 = *(a1 + qword_1EE2D9140);

  v5 = qword_1EE2D9160;
  v6 = sub_1E65DEEA8();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);

  MEMORY[0x1E694F2D0](a1 + qword_1EE2D9190);
  v7 = *(a1 + qword_1EE2D9148);
}

uint64_t sub_1E630ABA4()
{
  v1 = *v0;
  sub_1E630B4A8();
}

char *sub_1E630ABD8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v71 = a8;
  v72 = a7;
  v73 = a5;
  v74 = a6;
  v79 = a2;
  v80 = a4;
  ObjectType = swift_getObjectType();
  v18 = *v15;
  v19 = *MEMORY[0x1E69E7D40];
  v20 = sub_1E65E43B8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v15[qword_1EE2D9170];
  *(v23 + 1) = 0;
  v70 = v23;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v15[qword_1EE2D91A8] = 0;
  *&v15[qword_1EE2D9130] = 0;
  v24 = *((v19 & v18) + 0x50);
  v75 = *((v19 & v18) + 0x58);
  v76 = v24;
  type metadata accessor for ScrollHostingController();
  v25 = sub_1E5E1F174(a1);
  *&v15[qword_1EE2D9180] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v26 = *(v21 + 72);
  v27 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v77 = xmmword_1E65EB9E0;
  *(swift_allocObject() + 16) = xmmword_1E65EB9E0;
  v28 = v25;
  sub_1E65E4398();
  sub_1E65E43A8();
  sub_1E630B450(&qword_1EE2D4BC0, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70);
  sub_1E65E6738();
  sub_1E65E4028();

  *&v15[qword_1EE2D9158] = v79;
  v82 = MEMORY[0x1E69E7CC0];
  if (!(a3 >> 62))
  {
    v29 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_20:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v29 = sub_1E65E67C8();
  if (!v29)
  {
    goto LABEL_20;
  }

LABEL_3:
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  do
  {
    v32 = v30;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1E694E2D0](v32, a3);
      }

      else
      {
        if (v32 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v33 = *(a3 + 8 * v32 + 32);
      }

      v34 = v33;
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for BarButtonItem();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v32;
      if (v30 == v29)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1E694D8F0]();
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v31 = v82;
  }

  while (v30 != v29);
LABEL_21:
  v68[0] = a13;
  v68[1] = a10;
  *&v15[qword_1EE2D9140] = v31;
  v36 = qword_1EE2D9160;
  v69 = sub_1E65DEEA8();
  v79 = *(v69 - 8);
  (*(v79 + 16))(&v15[v36], v80, v69);
  v37 = v73;
  v38 = v74;
  *&v15[qword_1EE2D9188] = v73;
  *&v15[qword_1EE2D9198] = v38;
  v39 = &v15[qword_1EE2D9120];
  v40 = v71;
  v41 = v72;
  *v39 = v72;
  *(v39 + 1) = v40;
  v15[qword_1EE2D9118] = a9 & 1;
  *(v70 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v42 = &v15[qword_1EE2D9108];
  *v42 = v68[0];
  *(v42 + 1) = a14;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = v41;

  v47 = v37;
  v48 = v38;
  *&v15[qword_1EE2D9148] = sub_1E65E4D18();
  v49 = ObjectType;
  v81.receiver = v15;
  v81.super_class = ObjectType;
  v50 = objc_msgSendSuper2(&v81, sel_initWithNibName_bundle_, 0, 0);
  v51 = *&v50[qword_1EE2D9180];
  v52 = v50;
  v53 = [v51 navigationItem];
  sub_1E5DEF738(0, &unk_1EE2D4680, 0x1E69DC708);
  v54 = sub_1E65E5EF8();

  [v53 setRightBarButtonItems_];

  v55 = qword_1EE2D9148;
  v56 = *&v52[qword_1EE2D9148];
  KeyPath = swift_getKeyPath();
  v68[-2] = MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v59 = swift_allocObject();
  v60 = v75;
  v59[2] = v76;
  v59[3] = v60;
  v59[4] = v58;
  sub_1E5FED46C(&qword_1EE2D6590, &qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E4D08();

  v61 = *&v52[v55];

  sub_1E65E4CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078260, &qword_1E65F98D0);
  v62 = swift_allocObject();
  *(v62 + 16) = v77;
  v63 = sub_1E65E3B98();
  v64 = MEMORY[0x1E69DC0A0];
  *(v62 + 32) = v63;
  *(v62 + 40) = v64;
  v65 = sub_1E65E3BA8();
  v66 = MEMORY[0x1E69DC2B0];
  *(v62 + 48) = v65;
  *(v62 + 56) = v66;
  *(swift_allocObject() + 16) = v49;
  sub_1E65E6388();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v79 + 8))(v80, v69);
  return v52;
}

uint64_t sub_1E630B450(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E630B498()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1E630843C();
}

void sub_1E630B4E8(uint64_t a1)
{
  v1 = [*(a1 + qword_1EE2D9180) navigationItem];
  [v1 _setBottomPaletteNeedsUpdate];
}

void sub_1E630B548()
{
  *(v0 + qword_1EE2D9170 + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + qword_1EE2D91A8) = 0;
  *(v0 + qword_1EE2D9130) = 0;
  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E630B63C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B28, &unk_1E65F06A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E630B6AC(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1E630A4D8(a1);
}

uint64_t sub_1E630B6C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1E630B7AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC10Blackbeard18BlurViewController_blurView;
  v8 = [objc_opt_self() effectWithStyle_];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v10 = sub_1E65E6508();
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC10Blackbeard18BlurViewController_snapshot] = a2;
  *&v3[OBJC_IVAR____TtC10Blackbeard18BlurViewController_viewController] = a1;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1E630B96C()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = result;
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor_];

  v6 = *&v1[OBJC_IVAR____TtC10Blackbeard18BlurViewController_snapshot];
  if (v6)
  {
    v7 = v6;
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [v1 view];
    if (!result)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v8 = result;
    [result addSubview_];
  }

  result = [v1 view];
  if (!result)
  {
    goto LABEL_18;
  }

  v9 = result;
  [result addSubview_];

  v10 = *&v1[OBJC_IVAR____TtC10Blackbeard18BlurViewController_viewController];
  result = [v10 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = result;
  v12 = [v4 clearColor];
  [v11 setBackgroundColor_];

  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = result;
  result = [v10 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = result;
  [v13 addSubview_];

  [v1 addChildViewController_];
  [v10 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782A0, &qword_1E65FBB28);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E65EA8E0;
  v16 = MEMORY[0x1E69DDCE0];
  if (!v6)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_13:
    *(v15 + 32) = v22;
    result = [v1 view];
    if (result)
    {
      v23 = result;
      v24 = *v16;
      v25 = v16[1];
      v26 = v16[2];
      v27 = v16[3];
      v28 = sub_1E65E6518();

      *(v15 + 40) = v28;
      result = [v10 view];
      if (result)
      {
        v29 = result;
        result = [v1 view];
        if (result)
        {
          v30 = result;
          sub_1E6094C88();
          v31 = sub_1E65E6518();

          *(v15 + 48) = v31;
          sub_1E65E6408();
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = [v1 view];
  if (result)
  {
    v17 = result;
    v18 = *v16;
    v19 = v16[1];
    v20 = v16[2];
    v21 = v16[3];
    v22 = sub_1E65E6518();

    goto LABEL_13;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1E630BE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v39 = a2;
  v3 = sub_1E65D74E8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65D7848();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075900, &qword_1E65F21B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - v12;
  v14 = sub_1E65E5C28();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  v38 = v2;
  v22 = sub_1E65D8E68();
  v24 = v23;
  v41 = v22;
  v42 = v23;
  v26 = v25 & 1;
  v43 = v25 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782A8, &qword_1E65FBB38);
  sub_1E65D7FB8();
  sub_1E5F87058(v22, v24, v26);
  if (v40 == 2)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    v27 = v39;
  }

  else
  {
    if (v40)
    {
      v28 = 1;
    }

    else
    {
      sub_1E65E5BA8();
      v28 = 0;
    }

    v27 = v39;
    (*(v15 + 56))(v13, v28, 1, v14);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v21, v13, v14);
      (*(v15 + 16))(v19, v21, v14);
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = [objc_opt_self() bundleForClass_];
      (*(v34 + 16))(v9, v36, v35);
      sub_1E65E5D48();
      sub_1E65D8E58();
      sub_1E65E33E8();
      (*(v15 + 8))(v21, v14);
      v29 = 0;
      goto LABEL_9;
    }
  }

  sub_1E6132BD8(v13);
  v29 = 1;
LABEL_9:
  v32 = sub_1E65E33F8();
  return (*(*(v32 - 8) + 56))(v27, v29, 1, v32);
}

uint64_t sub_1E630C2AC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  v5 = *(v3 + 128);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E630FCD4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E5F8711C(v4);
}

uint64_t sub_1E630C340(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E630FCC8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 120);
  v9 = *(v7 + 128);
  *(v7 + 120) = v6;
  *(v7 + 128) = v5;
  sub_1E5F8711C(v3);
  return sub_1E5F9169C(v8, v9);
}

uint64_t AppSceneCoordinator.onRequestApplicationTermination.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  sub_1E5F8711C(v1);
  return v1;
}

uint64_t AppSceneCoordinator.onRequestApplicationTermination.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  v6 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return sub_1E5F9169C(v5, v6);
}

uint64_t sub_1E630C4F4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 136);
  v5 = *(v3 + 144);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E630FB20;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E5F8711C(v4);
}

uint64_t sub_1E630C588(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E630FB18;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 136);
  v9 = *(v7 + 144);
  *(v7 + 136) = v6;
  *(v7 + 144) = v5;
  sub_1E5F8711C(v3);
  return sub_1E5F9169C(v8, v9);
}

uint64_t AppSceneCoordinator.onRequestApplicationDeactivation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_1E5F8711C(v1);
  return v1;
}

uint64_t AppSceneCoordinator.onRequestApplicationDeactivation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  v6 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return sub_1E5F9169C(v5, v6);
}

uint64_t AppSceneCoordinator.__allocating_init(dependencies:)(uint64_t a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = swift_allocObject();
  AppSceneCoordinator.init(dependencies:journalRotator:)(a1, v4);
  return v2;
}

uint64_t AppSceneCoordinator.__allocating_init(dependencies:journalRotator:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AppSceneCoordinator.init(dependencies:journalRotator:)(a1, a2);
  return v4;
}

uint64_t AppSceneCoordinator.init(dependencies:journalRotator:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 108) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782B0, &unk_1E65FBB40);
  sub_1E65D7F18();
  sub_1E5DF599C(v20, v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782B8, &qword_1E660CD20);
  sub_1E65D7F18();
  sub_1E5DF599C(v20, v2 + 64);
  sub_1E65D7F18();
  *(v2 + 104) = v20[0];
  sub_1E630CA50(a2, v20);
  v6 = type metadata accessor for AppCoordinator();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1E5DED3A0(a1, v20);

  sub_1E5DFE50C(a2, &qword_1ED0782C0, &qword_1E65FBB50);
  *(v3 + 56) = v9;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = (v9 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_onDeactivateApplication);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  *v11 = sub_1E630F670;
  v11[1] = v10;

  sub_1E5F9169C(v12, v13);

  v14 = *(v3 + 56);
  v15 = swift_allocObject();
  swift_weakInit();

  v16 = (v14 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_onTerminateApplication);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  *v16 = sub_1E630F678;
  v16[1] = v15;

  sub_1E5F9169C(v17, v18);

  return v3;
}

uint64_t sub_1E630CA50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782C0, &qword_1E65FBB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E630CAC0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 136);
    if (v2)
    {
      v3 = *(v1 + 144);
      sub_1E5F8711C(*(v1 + 136));

      v2(v4);
      return sub_1E5F9169C(v2, v3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E630CB68()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 120);
    if (v2)
    {
      v3 = *(v1 + 128);
      sub_1E5F8711C(*(v1 + 120));

      v2(v4);
      return sub_1E5F9169C(v2, v3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t AppSceneCoordinator.activate(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1E65E6058();
  v2[4] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E630CCA8, v4, v3);
}

uint64_t sub_1E630CCA8()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v3 = *(v1 + 56);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E630CDCC;
  v5 = v0[2];

  return AppCoordinator.activate(with:)(v5);
}

uint64_t sub_1E630CDCC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_1E5FD0AD0;
  }

  else
  {
    v7 = sub_1E5FA1DB4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t AppSceneCoordinator.routeSceneConnectionOptions(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1E65E6058();
  v2[4] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E630CFA0, v4, v3);
}

uint64_t sub_1E630CFA0()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v0[7] = *(v2 + 56);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E630D0D0;

  return AppCoordinator.onAppLaunch(connectionOptions:)((v0 + 10), v1);
}

uint64_t sub_1E630D0D0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_1E630D2B0;
  }

  else
  {
    v7 = sub_1E630D20C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E630D20C()
{
  v1 = *(v0 + 32);

  if (!*(v0 + 80))
  {
    v2 = (*(v0 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker);
    v3 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_1E65E57E8();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E630D2B0()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t *AppSceneCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_1E5F9169C(v0[15], v0[16]);
  sub_1E5F9169C(v0[17], v0[18]);
  return v0;
}

uint64_t AppSceneCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_1E5F9169C(v0[15], v0[16]);
  sub_1E5F9169C(v0[17], v0[18]);

  return swift_deallocClassInstance();
}

uint64_t AppSceneCoordinator.openURLContexts(_:source:)(uint64_t a1)
{
  sub_1E63775C0(a1);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = "Blackbeard/AppSceneCoordinator.swift";
  *(v4 + 24) = 36;
  *(v4 + 32) = 2;
  *(v4 + 40) = 82;
  *(v4 + 48) = &unk_1E65FBB70;
  *(v4 + 56) = v3;

  return sub_1E65DACA8();
}

uint64_t sub_1E630D494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v5 = sub_1E65D74E8();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E630D58C, 0, 0);
}

uint64_t sub_1E630D58C()
{
  v1 = sub_1E6059B14(v0[2]);
  v0[8] = v1;
  if (v1)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v2 = v0[3];
    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    sub_1E65E3B18();
    v0[9] = *(v2 + 56);
    sub_1E65E6058();
    v0[10] = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E630D778, v5, v4);
  }

  else
  {
    v6 = sub_1E65E5218();
    sub_1E630F72C();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69CD6E8], v6);
    swift_willThrow();
    v8 = v0[7];
    v9 = v0[4];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1E630D778()
{
  v1 = v0[10];
  v2 = v0[8];

  v0[11] = [v2 URL];

  return MEMORY[0x1EEE6DFA0](sub_1E630D800, 0, 0);
}

uint64_t sub_1E630D800()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  sub_1E65D7478();

  (*(v3 + 56))(v5, 1, 1, v4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E630D8F0;
  v7 = v0[9];
  v8 = v0[7];
  v9 = v0[4];
  v10 = MEMORY[0x1E69E7CD0];

  return AppCoordinator.routeURL(_:referrerURL:sourceApplication:annotation:)(v8, v9, 0, 0, v10);
}

uint64_t sub_1E630D8F0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 104) = v0;

  sub_1E5DFE50C(v6, &qword_1ED072340, &qword_1E65EA410);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_1E630DB0C;
  }

  else
  {
    v7 = sub_1E630DA94;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E630DA94()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E630DB0C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t AppSceneCoordinator.continueUserActivity(_:source:)(void *a1)
{
  v2 = v1;
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if (sub_1E65DB738())
  {
    v5 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_1E65DB728();
  }

  v6 = [a1 activityType];
  v7 = sub_1E65E5C78();
  v9 = v8;

  v10 = *MEMORY[0x1E696AA68];
  if (v7 == sub_1E65E5C78() && v9 == v11)
  {
  }

  else
  {
    v13 = sub_1E65E6C18();

    if ((v13 & 1) == 0)
    {
      v14 = sub_1E65E5218();
      sub_1E630F72C();
      v15 = swift_allocError();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69CD6F0], v14);
      *(swift_allocObject() + 16) = v15;

      return sub_1E65DACB8();
    }
  }

  v18 = (v2[7] + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker);
  v19 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_1E65E5828();
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = a1;
  v21 = swift_allocObject();
  *(v21 + 16) = "Blackbeard/AppSceneCoordinator.swift";
  *(v21 + 24) = 36;
  *(v21 + 32) = 2;
  *(v21 + 40) = 102;
  *(v21 + 48) = &unk_1E65FBB80;
  *(v21 + 56) = v20;

  v22 = a1;

  return sub_1E65DACA8();
}

uint64_t sub_1E630DE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E630DE58, 0, 0);
}

uint64_t sub_1E630DE58()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v3 = *(v1 + 56);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E630DF80;
  v5 = v0[3];
  v6 = MEMORY[0x1E69E7CD0];

  return AppCoordinator.routeUserActivity(_:annotation:)(v5, v6);
}

uint64_t sub_1E630DF80()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void AppSceneCoordinator.scene(_:with:willConnectTo:options:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  os_unfair_lock_lock((v5 + 108));
  if (!*(v5 + 112))
  {
    *(v5 + 112) = 1;
    v13 = sub_1E65E60A8();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_1E65E6058();

    v14 = a1;
    v15 = a2;
    v16 = a4;
    v17 = sub_1E65E6048();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v5;
    v18[5] = v14;
    v18[6] = v15;
    v18[7] = v16;
    sub_1E6059EAC(0, 0, v12, &unk_1E65FBB98, v18);
  }

  os_unfair_lock_unlock((v5 + 108));
}

uint64_t sub_1E630E1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_1E65E6058();
  v7[7] = sub_1E65E6048();
  v9 = sub_1E65E5FC8();
  v7[8] = v9;
  v7[9] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E630E294, v9, v8);
}

uint64_t sub_1E630E294()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1E65E3B68();
  v0[10] = __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v0[11] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v0[12] = v4;
  v0[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E630E3A0, v4, v3);
}

uint64_t sub_1E630E3A0()
{
  v1 = v0[10];
  v2 = v0[2];
  sub_1E65E3B18();
  v0[14] = *(v2 + 56);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1E630E484;
  v4 = v0[3];

  return AppCoordinator.activate(with:)(v4);
}

uint64_t sub_1E630E484()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_1E630E8B8;
  }

  else
  {
    v7 = sub_1E630E5C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E630E5C0()
{
  v1 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1E630E628, 0, 0);
}

uint64_t sub_1E630E628()
{
  v1 = *(v0 + 48);
  *(v0 + 136) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E630E6B4, v3, v2);
}

uint64_t sub_1E630E6B4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[4];

  [v3 setRootViewController_];
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1E630E77C;
  v5 = v0[5];
  v6 = v0[2];

  return AppSceneCoordinator.routeSceneConnectionOptions(_:)(v5);
}

uint64_t sub_1E630E77C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1E630EA60;
  }

  else
  {
    v7 = sub_1E630E980;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E630E8B8()
{
  v1 = v0[11];

  v2 = v0[8];
  v3 = v0[9];

  return MEMORY[0x1EEE6DFA0](sub_1E630E91C, v2, v3);
}

uint64_t sub_1E630E91C()
{
  v1 = v0[16];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

void sub_1E630E980()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[7];
  v4 = v0[2];

  v5 = *(v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker), *(v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 24));
  sub_1E65E5808();
  os_unfair_lock_lock((v4 + 108));
  sub_1E630EAC4((v4 + 112));
  os_unfair_lock_unlock((v4 + 108));
  if (!v1)
  {
    v6 = v0[1];

    v6();
  }
}

uint64_t sub_1E630EA60()
{
  v1 = v0[19];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

void sub_1E630EAC4(_BYTE *a1)
{
  if (*a1 == 1)
  {
    *a1 = 2;
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v1 = sub_1E65E3B68();
    __swift_project_value_buffer(v1, qword_1EE2EA2A0);
    v2 = sub_1E65E3B48();
    v3 = sub_1E65E6328();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136446210;
      v6 = sub_1E65E5CE8();
      v8 = sub_1E5DFD4B0(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1E5DE9000, v2, v3, "Unexpected State for switching to an activated state: %{public}s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x1E694F1C0](v5, -1, -1);
      MEMORY[0x1E694F1C0](v4, -1, -1);
    }
  }
}

uint64_t sub_1E630EC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1E65E6058();
  v4[3] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E630ECD4, v6, v5);
}

uint64_t sub_1E630ECD4()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v0[6] = *(v1 + 56);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E630EDF0;

  return AppCoordinator.onAppActive()();
}

uint64_t sub_1E630EDF0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1E630EFC8;
  }

  else
  {
    v7 = sub_1E630EF2C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E630EF2C()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker), *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker + 24));
  sub_1E65E5808();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E630EFC8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

Swift::Void __swiftcall AppSceneCoordinator.sceneDidDisconnect(_:)(UIScene *a1)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v3 = (*(v1 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1E65E57F8();
}

Swift::Void __swiftcall AppSceneCoordinator.sceneDidEnterBackground(_:)(UIScene *a1)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v3 = (*(v1 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1E65E5818();
}

uint64_t sub_1E630F1E4()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  sub_1E5F8711C(v1);
  return v1;
}

uint64_t sub_1E630F234(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  v6 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return sub_1E5F9169C(v5, v6);
}

uint64_t sub_1E630F2D8()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_1E5F8711C(v1);
  return v1;
}

uint64_t sub_1E630F328(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  v6 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return sub_1E5F9169C(v5, v6);
}

uint64_t sub_1E630F3D0()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v2 = (*(v0 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  return sub_1E65E57F8();
}

uint64_t sub_1E630F4AC()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v2 = (*(v0 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_metricSceneLifecycleTracker);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  return sub_1E65E5818();
}

uint64_t sub_1E630F584(uint64_t a1)
{
  sub_1E63775C0(a1);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = "Blackbeard/AppSceneCoordinator.swift";
  *(v4 + 24) = 36;
  *(v4 + 32) = 2;
  *(v4 + 40) = 82;
  *(v4 + 48) = &unk_1E65FBD10;
  *(v4 + 56) = v3;

  return sub_1E65DACA8();
}

uint64_t sub_1E630F680(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E630D494(a1, v5, v4);
}

unint64_t sub_1E630F72C()
{
  result = qword_1ED0782C8;
  if (!qword_1ED0782C8)
  {
    sub_1E65E5218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0782C8);
  }

  return result;
}

uint64_t sub_1E630F7A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E630DE38(a1, v5, v4);
}

uint64_t sub_1E630F84C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E630E1F4(a1, v4, v5, v6, v7, v9, v8);
}

void _s10Blackbeard19AppSceneCoordinatorC20sceneDidBecomeActiveyySo7UISceneCF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  os_unfair_lock_lock((v0 + 108));
  if (*(v0 + 112) == 2)
  {
    v6 = sub_1E65E60A8();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_1E65E6058();

    v7 = sub_1E65E6048();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v1;
    sub_1E6059EAC(0, 0, v5, &unk_1E65FBD20, v8);
  }

  os_unfair_lock_unlock(v1 + 27);
}

unint64_t sub_1E630FAC4()
{
  result = qword_1ED0782D8;
  if (!qword_1ED0782D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0782D8);
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E630FB68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E630D494(a1, v5, v4);
}

uint64_t sub_1E630FC14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E630EC3C(a1, v4, v5, v6);
}

uint64_t sub_1E630FCD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v37 = a2;
  v38 = a3;
  v28 = a2;
  v29 = a3;
  v31 = MEMORY[0x1E69E3B38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = *(OpaqueTypeMetadata2 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v7 = &v27 - v6;
  v8 = sub_1E65E3DE8();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v16 = *a1;
  v15 = a1[1];
  sub_1E5E1EC14();
  v17 = a1[3];
  v18 = a1[5];
  v19 = a1[7];
  v27 = a1[9];
  v20 = swift_allocObject();
  v21 = *(a1 + 3);
  v20[3] = *(a1 + 2);
  v20[4] = v21;
  v20[5] = *(a1 + 4);
  v22 = *(a1 + 1);
  v20[1] = *a1;
  v20[2] = v22;
  swift_unknownObjectRetain();

  v37 = v28;
  v38 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = OpaqueTypeMetadata2;
  sub_1E65E4828();

  (*(v32 + 8))(v7, v24);
  v35 = OpaqueTypeConformance2;
  v36 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  sub_1E5FEE4C8(v12);
  v25 = *(v33 + 8);
  v25(v12, v8);
  sub_1E5FEE4C8(v14);
  return (v25)(v14, v8);
}

uint64_t sub_1E630FFE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  *&v48 = *(a2 - 8);
  v5 = *(v48 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - v9;
  *&v58[0] = v11;
  *(&v58[0] + 1) = v12;
  v54 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &v41 - v15;
  v17 = sub_1E65E3DE8();
  v45 = *(v17 - 8);
  v18 = *(v45 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v43 = &v41 - v22;
  v52 = sub_1E65E4148();
  v51 = *(v52 - 8);
  v23 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v41 - v24;
  v25 = *a1;
  if (*a1)
  {
    v26 = a1[9];
    v41 = *(a1 + 1);
    v46 = *(a1 + 3);
    v47 = *(a1 + 5);
    v48 = *(a1 + 7);
    v27 = *(a1 + 1);
    v28 = *(a1 + 3);
    v58[2] = *(a1 + 2);
    v58[3] = v28;
    v58[4] = *(a1 + 4);
    v58[0] = *a1;
    v58[1] = v27;
    sub_1E618A994(v58, v57);
    v29 = v54;
    sub_1E5E1EC14();
    v30 = swift_allocObject();
    *(v30 + 16) = v25;
    *(v30 + 24) = v41;
    *(v30 + 40) = v46;
    *(v30 + 56) = v47;
    *(v30 + 72) = v48;
    v42 = v26;
    *(v30 + 88) = v26;
    swift_unknownObjectRetain();
    v49 = v46;

    v57[0] = a2;
    v57[1] = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E65E4828();

    (*(v44 + 8))(v16, OpaqueTypeMetadata2);
    v55 = OpaqueTypeConformance2;
    v32 = MEMORY[0x1E69805D0];
    v56 = MEMORY[0x1E69805D0];
    swift_getWitnessTable();
    v33 = v43;
    sub_1E5FEE4C8(v21);
    v34 = *(v45 + 8);
    v34(v21, v17);
    sub_1E5FEE4C8(v33);
    v35 = v50;
    sub_1E62DFC6C(v21, v17);

    swift_unknownObjectRelease();
    v34(v21, v17);
    v34(v33, v17);
  }

  else
  {
    v36 = v54;
    sub_1E5FEE4C8(v49);
    sub_1E5FEE4C8(v10);
    *&v58[0] = a2;
    *(&v58[0] + 1) = v36;
    v63 = swift_getOpaqueTypeConformance2();
    v32 = MEMORY[0x1E69805D0];
    v64 = MEMORY[0x1E69805D0];
    swift_getWitnessTable();
    v35 = v50;
    sub_1E62DFB74(v8, v17, a2);
    v37 = *(v48 + 8);
    v37(v8, a2);
    v37(v10, a2);
  }

  v38 = v54;
  *&v58[0] = a2;
  *(&v58[0] + 1) = v54;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v32;
  WitnessTable = swift_getWitnessTable();
  v60 = v38;
  v39 = v52;
  swift_getWitnessTable();
  sub_1E5FEE4C8(v35);
  return (*(v51 + 8))(v35, v39);
}

uint64_t sub_1E631073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E65E6058();
  v4[3] = sub_1E65E6048();
  v6 = *(a4 + 40);
  v10 = (*(a4 + 32) + **(a4 + 32));
  v7 = *(*(a4 + 32) + 4);
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1E5F9D470;

  return v10();
}

uint64_t sub_1E6310844(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_1E65E60A8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = *a1;
  v11 = a1[3];
  v12 = a1[5];
  v13 = a1[7];
  v14 = a1[9];
  sub_1E65E6058();
  swift_unknownObjectRetain();

  v15 = sub_1E65E6048();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  v18 = *(a1 + 3);
  *(v16 + 64) = *(a1 + 2);
  *(v16 + 80) = v18;
  *(v16 + 96) = *(a1 + 4);
  v19 = *(a1 + 1);
  *(v16 + 32) = *a1;
  *(v16 + 48) = v19;
  sub_1E6059EAC(0, 0, v8, a3, v16);
}

uint64_t sub_1E63109C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E65E6058();
  v4[3] = sub_1E65E6048();
  v6 = *(a4 + 40);
  v10 = (*(a4 + 32) + **(a4 + 32));
  v7 = *(*(a4 + 32) + 4);
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1E5F9DFE8;

  return v10();
}

uint64_t sub_1E6310AC8()
{
  v0 = sub_1E65E50A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E5088();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1E6310BA4()
{
  v0 = sub_1E65E50A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E5098();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1E6310D00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63109C0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6310DE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E631073C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6310EA8()
{
  v0 = sub_1E65E5108();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782E0, &qword_1E65FBE18);

  sub_1E65E50F8();
  return sub_1E65E5188();
}

uint64_t sub_1E6310F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  v8 = sub_1E65E1858();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 1u)
  {
    if (a3)
    {
      *a4 = a1;
    }

    else
    {
      *a4 = a1;
    }

    sub_1E65E17E8();
  }

  else if (a3 == 2)
  {
    *a4 = a1;
    sub_1E65E17E8();
  }

  else
  {
    if (a3 == 3)
    {
      v14 = MEMORY[0x1E699F100];
      if ((a1 & 1) == 0)
      {
        v14 = MEMORY[0x1E699F108];
      }

      v15 = v11;
      (*(v9 + 104))(v13, *v14, v11);
      (*(v9 + 32))(a4, v13, v15);
      sub_1E65E17E8();
      return swift_storeEnumTagMultiPayload();
    }

    *a4 = a1;
    a4[1] = a2;
    sub_1E65E17E8();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6311130@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a1;
  v105 = a2;
  v112 = a3;
  v4 = sub_1E65D7D18();
  v111 = *(v4 - 8);
  v5 = *(v111 + 8);
  MEMORY[0x1EEE9AC00](v4);
  v113 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D72D8();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v93 - v11;
  v108 = sub_1E65DC488();
  v95 = *(v108 - 8);
  v12 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v98 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073550, &qword_1E65ED510);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v110 = &v93 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v101 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v109 = &v93 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = sub_1E65DAC98();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1E65E1B68();
  v96 = *(v97 - 8);
  v35 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v107 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E65D8BB8();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E65DA0B8();
  v99 = *(v41 - 8);
  v100 = v41;
  v42 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v106 = &v93 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65D7C18();
  if (v46 != -1)
  {
    if (v46)
    {
      v113 = v44;
      v111 = v14;
      sub_1E65D7C88();
      sub_1E65D8BA8();
      sub_1E625B0B0(v40);
      sub_1E65DA098();
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65E1B58();
      v94 = *(v31 + 8);
      v94(v34, v30);
      v116 = sub_1E65DA0A8();
      v117 = v47;
      sub_1E6311C30();
      sub_1E65E1748();
      v48 = v98;
      sub_1E65D7C48();
      if ((*(v31 + 48))(v48, 1, v30) == 1)
      {
        sub_1E609595C(v48);
        v49 = 1;
        v50 = v110;
      }

      else
      {
        sub_1E65DAC38();
        sub_1E65DC2D8();
        sub_1E65DAC78();
        sub_1E65D74C8();

        v50 = v110;
        sub_1E65E1B58();
        v94(v48, v30);
        v49 = 0;
      }

      v67 = v111;
      (*(v96 + 56))(v50, v49, 1, v97);
      v68 = sub_1E65D7CA8();
      v70 = v108;
      if (!v69)
      {
        v71 = v95;
        (*(v95 + 104))(v67, *MEMORY[0x1E699DC58], v108);
        v72 = sub_1E65DC478();
        v74 = v73;
        (*(v71 + 8))(v67, v70);
        v69 = v74;
        v68 = v72;
      }

      v116 = v68;
      v117 = v69;
      sub_1E65E1748();
      sub_1E65D7BF8();
      v75 = MEMORY[0x1E6940B70](v113);
      v77 = v76;
      if (v75 != MEMORY[0x1E6940B70](4) || v77 != v78)
      {
        v79 = sub_1E65E6C18();

        if (v79)
        {
          goto LABEL_19;
        }

        v89 = MEMORY[0x1E6940B70](v113);
        v91 = v90;
        if (v89 != MEMORY[0x1E6940B70](5) || v91 != v92)
        {
          sub_1E65E6C18();
        }
      }

LABEL_19:
      v80 = sub_1E65D7D08();
      v81 = v104;
      v82 = v105;
      sub_1E63C4134(v104, v105, v80, v103);

      v83 = sub_1E65D7BE8();
      sub_1E63C4134(v81, v82, v83, v102);

      v84 = v112;
      sub_1E65E1B98();
      (*(v99 + 8))(v106, v100);
      v85 = 0;
      goto LABEL_23;
    }

    sub_1E5F87158(v44, v45, v46);
  }

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v51 = sub_1E65E3B68();
  __swift_project_value_buffer(v51, qword_1EE2EA2A0);
  v52 = v111;
  v53 = v113;
  (*(v111 + 2))(v113, v3, v4);
  v54 = sub_1E65E3B48();
  v55 = sub_1E65E6338();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v119 = v57;
    *v56 = 136315138;
    v58 = sub_1E65D7C18();
    if (v60 == -1)
    {
      v65 = 0xE300000000000000;
      v66 = 7104878;
    }

    else
    {
      v116 = v58;
      v117 = v59;
      v118 = v60 & 1;
      v61 = v58;
      v62 = v59;
      v63 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
      sub_1E65D7F98();
      v64 = v62;
      v52 = v111;
      sub_1E5F87158(v61, v64, v63);
      v66 = v114;
      v65 = v115;
    }

    v52[1](v113, v4);
    v86 = sub_1E5DFD4B0(v66, v65, &v119);

    *(v56 + 4) = v86;
    _os_log_impl(&dword_1E5DE9000, v54, v55, "[Onboarding] Dropping modality tile with unknown kind: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x1E694F1C0](v57, -1, -1);
    MEMORY[0x1E694F1C0](v56, -1, -1);
  }

  else
  {

    v52[1](v53, v4);
  }

  v85 = 1;
  v84 = v112;
LABEL_23:
  v87 = sub_1E65E1BA8();
  return (*(*(v87 - 8) + 56))(v84, v85, 1, v87);
}

unint64_t sub_1E6311C30()
{
  result = qword_1EE2D6B60;
  if (!qword_1EE2D6B60)
  {
    sub_1E65DC488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6B60);
  }

  return result;
}

uint64_t sub_1E6311C88(uint64_t a1)
{
  v49 = sub_1E65DAEF8();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65E1088();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v44 = v9;
    v36[1] = v1;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1E601CE38(0, v10, 0);
    v52 = v53;
    v12 = a1 + 56;
    v13 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v14 = v3;
    v15 = result;
    v16 = 0;
    v45 = v6;
    v46 = v14;
    v42 = v14 + 8;
    v43 = v14 + 16;
    v40 = a1;
    v41 = v6 + 32;
    v37 = a1 + 64;
    v38 = v10;
    v39 = a1 + 56;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 36);
      v50 = v16;
      v51 = v19;
      v20 = v46;
      v21 = *(a1 + 48) + *(v46 + 72) * v15;
      v22 = v48;
      v23 = v49;
      (*(v46 + 16))(v48, v21, v49);
      sub_1E65DAED8();
      sub_1E65DAEE8();
      v24 = v44;
      sub_1E65E1078();
      (*(v20 + 8))(v22, v23);
      v25 = v52;
      v53 = v52;
      v27 = *(v52 + 16);
      v26 = *(v52 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E601CE38(v26 > 1, v27 + 1, 1);
        v25 = v53;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v52 = v25;
      result = (*(v45 + 32))(v25 + v28 + *(v45 + 72) * v27, v24, v47);
      a1 = v40;
      v17 = 1 << *(v40 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v12 = v39;
      v29 = *(v39 + 8 * v18);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (v51 != *(v40 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v18 << 6;
        v32 = v18 + 1;
        v33 = (v37 + 8 * v18);
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_1E5F87098(v15, v51, 0);
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v15, v51, 0);
      }

LABEL_4:
      v16 = v50 + 1;
      v15 = v17;
      if (v50 + 1 == v38)
      {
        return v52;
      }
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

  return result;
}

uint64_t sub_1E631207C(uint64_t a1)
{
  v2 = v1;
  v46 = sub_1E65D9538();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65E0D28();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1E601CDF4(0, v10, 0);
    v12 = -1 << *(a1 + 32);
    v53 = a1 + 56;
    v54 = v55;
    result = sub_1E65E6748();
    v13 = result;
    v14 = 0;
    v39 = v4 + 8;
    v40 = v4 + 16;
    v37 = a1;
    v38 = v7 + 32;
    v35 = a1 + 64;
    v36 = v10;
    v41 = v7;
    v42 = v4;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v53 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v47 = v14;
      v49 = *(a1 + 36);
      v50 = 1 << v13;
      v18 = v45;
      v17 = v46;
      (*(v4 + 16))(v45, *(a1 + 48) + *(v4 + 72) * v13, v46);
      v19 = sub_1E65D94F8();
      v51 = v20;
      v52 = v19;
      sub_1E65D9508();
      sub_1E65D9528();
      v21 = sub_1E65D9518();
      sub_1E6314220(v21);
      v48 = v2;

      v22 = v43;
      v4 = v42;
      sub_1E65E0D18();
      (*(v4 + 8))(v18, v17);
      v23 = v54;
      v55 = v54;
      v25 = *(v54 + 16);
      v24 = *(v54 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1E601CDF4(v24 > 1, v25 + 1, 1);
        v23 = v55;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v54 = v23;
      result = (*(v41 + 32))(v23 + v26 + *(v41 + 72) * v25, v22, v44);
      a1 = v37;
      v15 = 1 << *(v37 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v27 = *(v53 + 8 * v16);
      if ((v27 & v50) == 0)
      {
        goto LABEL_24;
      }

      if (v49 != *(v37 + 36))
      {
        goto LABEL_25;
      }

      v28 = v27 & (-2 << (v13 & 0x3F));
      if (v28)
      {
        v15 = __clz(__rbit64(v28)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v2 = v48;
      }

      else
      {
        v29 = v16 << 6;
        v30 = v16 + 1;
        v31 = (v35 + 8 * v16);
        v2 = v48;
        while (v30 < (v15 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_1E5F87098(v13, v49, 0);
            v15 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v13, v49, 0);
      }

LABEL_4:
      v14 = v47 + 1;
      v13 = v15;
      if (v47 + 1 == v36)
      {
        return v54;
      }
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

  return result;
}

uint64_t sub_1E63124A8(uint64_t a1)
{
  v44 = sub_1E65D8368();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1E65E0FD8();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v33 = v1;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1E601CDB0(0, v10, 0);
    v12 = -1 << *(a1 + 32);
    v47 = a1 + 56;
    v48 = v49;
    result = sub_1E65E6748();
    v13 = result;
    v14 = 0;
    v40 = v6;
    v41 = v3;
    v38 = v3 + 8;
    v39 = v3 + 16;
    v36 = a1;
    v37 = v6 + 32;
    v34 = a1 + 64;
    v35 = v10;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v47 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v18 = *(a1 + 36);
      v45 = v14;
      v46 = v18;
      v19 = v41;
      v20 = v43;
      v21 = v44;
      (*(v41 + 16))(v43, *(a1 + 48) + *(v41 + 72) * v13, v44);
      sub_1E65D8328();
      sub_1E65D8358();
      sub_1E65D8338();
      sub_1E65D8348();
      sub_1E65E0F88();
      (*(v19 + 8))(v20, v21);
      v22 = v48;
      v49 = v48;
      v24 = *(v48 + 16);
      v23 = *(v48 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E601CDB0(v23 > 1, v24 + 1, 1);
        v22 = v49;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v48 = v22;
      result = (*(v40 + 32))(v22 + v25 + *(v40 + 72) * v24, v9, v42);
      a1 = v36;
      v15 = 1 << *(v36 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v26 = *(v47 + 8 * v17);
      if ((v26 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (v46 != *(v36 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v15 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v16 = v35;
      }

      else
      {
        v28 = v17 << 6;
        v29 = v17 + 1;
        v16 = v35;
        v30 = (v34 + 8 * v17);
        while (v29 < (v15 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1E5F87098(v13, v46, 0);
            v15 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v13, v46, 0);
      }

LABEL_4:
      v14 = v45 + 1;
      v13 = v15;
      if (v45 + 1 == v16)
      {
        return v48;
      }
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

  return result;
}

uint64_t sub_1E6312898(uint64_t a1)
{
  v49 = sub_1E65DAF28();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65E10D8();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v44 = v9;
    v36[1] = v1;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1E601CD6C(0, v10, 0);
    v52 = v53;
    v12 = a1 + 56;
    v13 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v14 = v3;
    v15 = result;
    v16 = 0;
    v45 = v6;
    v46 = v14;
    v42 = v14 + 8;
    v43 = v14 + 16;
    v40 = a1;
    v41 = v6 + 32;
    v37 = a1 + 64;
    v38 = v10;
    v39 = a1 + 56;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 36);
      v50 = v16;
      v51 = v19;
      v20 = v46;
      v21 = *(a1 + 48) + *(v46 + 72) * v15;
      v22 = v48;
      v23 = v49;
      (*(v46 + 16))(v48, v21, v49);
      sub_1E65DAF08();
      sub_1E65DAF18();
      v24 = v44;
      sub_1E65E10C8();
      (*(v20 + 8))(v22, v23);
      v25 = v52;
      v53 = v52;
      v27 = *(v52 + 16);
      v26 = *(v52 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E601CD6C(v26 > 1, v27 + 1, 1);
        v25 = v53;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v52 = v25;
      result = (*(v45 + 32))(v25 + v28 + *(v45 + 72) * v27, v24, v47);
      a1 = v40;
      v17 = 1 << *(v40 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v12 = v39;
      v29 = *(v39 + 8 * v18);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (v51 != *(v40 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v18 << 6;
        v32 = v18 + 1;
        v33 = (v37 + 8 * v18);
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_1E5F87098(v15, v51, 0);
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v15, v51, 0);
      }

LABEL_4:
      v16 = v50 + 1;
      v15 = v17;
      if (v50 + 1 == v38)
      {
        return v52;
      }
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

  return result;
}

uint64_t sub_1E6312C8C(uint64_t a1)
{
  v45 = sub_1E65D91F8();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v38 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E65E0E08();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v28 = v1;
  v46 = MEMORY[0x1E69E7CC0];
  sub_1E601CD28(0, v10, 0);
  v11 = v46;
  v12 = -1 << *(a1 + 32);
  v44 = a1 + 56;
  result = sub_1E65E6748();
  v14 = result;
  v15 = 0;
  v34 = v3 + 8;
  v35 = v3 + 16;
  v32 = v9;
  v33 = v6 + 32;
  v29 = a1 + 64;
  v30 = v10;
  v36 = v6;
  v31 = a1;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v44 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v41 = 1 << v14;
    v42 = v14 >> 6;
    v17 = *(a1 + 36);
    v39 = v15;
    v40 = v17;
    v18 = v38;
    (*(v3 + 16))(v38, *(a1 + 48) + *(v3 + 72) * v14, v45);
    v43 = sub_1E65D91A8();
    sub_1E65D91C8();
    sub_1E65D91B8();
    sub_1E65D91D8();
    sub_1E65D91E8();
    sub_1E65E0DD8();
    (*(v3 + 8))(v18, v45);
    v46 = v11;
    v20 = *(v11 + 16);
    v19 = *(v11 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1E601CD28(v19 > 1, v20 + 1, 1);
      v11 = v46;
    }

    *(v11 + 16) = v20 + 1;
    result = (*(v36 + 32))(v11 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v20, v32, v37);
    a1 = v31;
    v16 = 1 << *(v31 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v21 = *(v44 + 8 * v42);
    if ((v21 & v41) == 0)
    {
      goto LABEL_23;
    }

    if (v40 != *(v31 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v14 & 0x3F));
    if (v22)
    {
      v16 = __clz(__rbit64(v22)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v42 << 6;
      v24 = v42 + 1;
      v25 = (v29 + 8 * v42);
      while (v24 < (v16 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1E5F87098(v14, v40, 0);
          v16 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v14, v40, 0);
    }

LABEL_4:
    v15 = v39 + 1;
    v14 = v16;
    if (v39 + 1 == v30)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E6313090(uint64_t a1)
{
  v46 = sub_1E65D9D28();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65E1038();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = MEMORY[0x1E69E7CC0];
    v36 = a1;
    sub_1E601CCE4(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 56;
    v49 = v50;
    result = sub_1E65E6748();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 64;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      v22 = v42;
      sub_1E6364CE8();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1E601CCE4(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_1E5F87098(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_1E5F87098(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6313454(uint64_t a1)
{
  v49 = sub_1E65D7A68();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65E0BC8();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v44 = v9;
    v36[1] = v1;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1E601CCA0(0, v10, 0);
    v52 = v53;
    v12 = a1 + 56;
    v13 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v14 = v3;
    v15 = result;
    v16 = 0;
    v45 = v6;
    v46 = v14;
    v42 = v14 + 8;
    v43 = v14 + 16;
    v40 = a1;
    v41 = v6 + 32;
    v37 = a1 + 64;
    v38 = v10;
    v39 = a1 + 56;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 36);
      v50 = v16;
      v51 = v19;
      v20 = v46;
      v21 = *(a1 + 48) + *(v46 + 72) * v15;
      v22 = v48;
      v23 = v49;
      (*(v46 + 16))(v48, v21, v49);
      sub_1E65D7A48();
      sub_1E65D7A58();
      v24 = v44;
      sub_1E65E0BB8();
      (*(v20 + 8))(v22, v23);
      v25 = v52;
      v53 = v52;
      v27 = *(v52 + 16);
      v26 = *(v52 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E601CCA0(v26 > 1, v27 + 1, 1);
        v25 = v53;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v52 = v25;
      result = (*(v45 + 32))(v25 + v28 + *(v45 + 72) * v27, v24, v47);
      a1 = v40;
      v17 = 1 << *(v40 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v12 = v39;
      v29 = *(v39 + 8 * v18);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (v51 != *(v40 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v18 << 6;
        v32 = v18 + 1;
        v33 = (v37 + 8 * v18);
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_1E5F87098(v15, v51, 0);
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v15, v51, 0);
      }

LABEL_4:
      v16 = v50 + 1;
      v15 = v17;
      if (v50 + 1 == v38)
      {
        return v52;
      }
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

  return result;
}

uint64_t sub_1E6313848(uint64_t a1)
{
  v40 = sub_1E65D7B18();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E65E0C18();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v29 = v1;
  v47 = MEMORY[0x1E69E7CC0];
  sub_1E601CC5C(0, v10, 0);
  v11 = v47;
  v12 = -1 << *(a1 + 32);
  v46 = a1 + 56;
  result = sub_1E65E6748();
  v14 = result;
  v15 = 0;
  v35 = v3 + 8;
  v36 = v3 + 16;
  v33 = a1;
  v34 = v6 + 32;
  v30 = a1 + 64;
  v31 = v10;
  v37 = v6;
  v32 = v9;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v46 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v43 = 1 << v14;
    v44 = v14 >> 6;
    v17 = *(a1 + 36);
    v41 = v15;
    v42 = v17;
    v18 = v39;
    v19 = v40;
    (*(v3 + 16))(v39, *(a1 + 48) + *(v3 + 72) * v14, v40);
    v45 = sub_1E65D7AE8();
    sub_1E65D7AF8();
    sub_1E65D7B08();
    sub_1E65E0C08();
    (*(v3 + 8))(v18, v19);
    v47 = v11;
    v21 = *(v11 + 16);
    v20 = *(v11 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1E601CC5C(v20 > 1, v21 + 1, 1);
      v11 = v47;
    }

    *(v11 + 16) = v21 + 1;
    result = (*(v37 + 32))(v11 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v21, v32, v38);
    a1 = v33;
    v16 = 1 << *(v33 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v22 = *(v46 + 8 * v44);
    if ((v22 & v43) == 0)
    {
      goto LABEL_23;
    }

    if (v42 != *(v33 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v14 & 0x3F));
    if (v23)
    {
      v16 = __clz(__rbit64(v23)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v44 << 6;
      v25 = v44 + 1;
      v26 = (v30 + 8 * v44);
      while (v25 < (v16 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1E5F87098(v14, v42, 0);
          v16 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v14, v42, 0);
    }

LABEL_4:
    v15 = v41 + 1;
    v14 = v16;
    if (v41 + 1 == v31)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1E6313C54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65E0F18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - v10;
  v74 = sub_1E65D8B68();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1E65E0F68();
  v15 = *(v64 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v53 = v11;
    v61 = v18;
    v78 = MEMORY[0x1E69E7CC0];
    v56 = v19;
    sub_1E601CC18(0, v19, 0);
    v75 = v78;
    v21 = -1 << *(a1 + 32);
    v72 = a1 + 56;
    result = sub_1E65E6748();
    v22 = 0;
    v60 = v12 + 16;
    v55 = v5;
    v23 = v15;
    v24 = (v5 + 8);
    v62 = v23;
    v58 = v23 + 32;
    v59 = (v12 + 8);
    v52 = a1 + 64;
    v63 = a1;
    v57 = v12;
    v54 = v5 + 16;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v72 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_27;
      }

      v69 = 1 << result;
      v70 = result >> 6;
      v66 = v22;
      v68 = *(a1 + 36);
      v26 = *(a1 + 48);
      v27 = *(v12 + 72);
      v71 = result;
      (*(v12 + 16))(v73, v26 + v27 * result, v74);
      v28 = sub_1E65D8B58();
      v29 = sub_1E6314624(v28);
      v67 = v2;

      v30 = *(v29 + 16);
      v31 = sub_1E6314D98();
      v77 = MEMORY[0x1E694DC60](v30, v4, v31);
      if (v30)
      {
        v32 = *(v55 + 80);
        v65 = v29;
        v33 = v29 + ((v32 + 32) & ~v32);
        v76 = *(v55 + 72);
        v34 = *(v55 + 16);
        v35 = v24;
        v36 = v53;
        do
        {
          v34(v9, v33, v4);
          sub_1E60F864C(v36, v9);
          (*v35)(v36, v4);
          v33 += v76;
          --v30;
        }

        while (v30);

        v24 = v35;
      }

      else
      {
      }

      v37 = v73;
      sub_1E65D8B28();
      v76 = v38;
      sub_1E65D8B38();
      sub_1E65D8B48();
      v39 = v61;
      sub_1E65E0F58();
      (*v59)(v37, v74);
      v40 = v75;
      v78 = v75;
      v42 = *(v75 + 16);
      v41 = *(v75 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1E601CC18(v41 > 1, v42 + 1, 1);
        v40 = v78;
      }

      *(v40 + 16) = v42 + 1;
      v43 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v75 = v40;
      (*(v62 + 32))(v40 + v43 + *(v62 + 72) * v42, v39, v64);
      a1 = v63;
      v25 = 1 << *(v63 + 32);
      result = v71;
      if (v71 >= v25)
      {
        goto LABEL_28;
      }

      v44 = *(v72 + 8 * v70);
      if ((v44 & v69) == 0)
      {
        goto LABEL_29;
      }

      if (v68 != *(v63 + 36))
      {
        goto LABEL_30;
      }

      v45 = v44 & (-2 << (v71 & 0x3F));
      if (v45)
      {
        v25 = __clz(__rbit64(v45)) | v71 & 0x7FFFFFFFFFFFFFC0;
        v2 = v67;
      }

      else
      {
        v46 = v70 << 6;
        v47 = v70 + 1;
        v48 = (v52 + 8 * v70);
        v2 = v67;
        while (v47 < (v25 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            sub_1E5F87098(v71, v68, 0);
            v25 = __clz(__rbit64(v49)) + v46;
            goto LABEL_4;
          }
        }

        sub_1E5F87098(v71, v68, 0);
      }

LABEL_4:
      v22 = v66 + 1;
      result = v25;
      v12 = v57;
      if (v66 + 1 == v56)
      {
        return v75;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6314220(uint64_t a1)
{
  v40 = sub_1E65D7F08();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E65E0E98();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v29 = v1;
  v47 = MEMORY[0x1E69E7CC0];
  sub_1E601CE7C(0, v10, 0);
  v11 = v47;
  v12 = -1 << *(a1 + 32);
  v46 = a1 + 56;
  result = sub_1E65E6748();
  v14 = result;
  v15 = 0;
  v35 = v3 + 8;
  v36 = v3 + 16;
  v33 = a1;
  v34 = v6 + 32;
  v30 = a1 + 64;
  v31 = v10;
  v37 = v6;
  v32 = v9;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v46 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v43 = 1 << v14;
    v44 = v14 >> 6;
    v17 = *(a1 + 36);
    v41 = v15;
    v42 = v17;
    v18 = v39;
    v19 = v40;
    (*(v3 + 16))(v39, *(a1 + 48) + *(v3 + 72) * v14, v40);
    v45 = sub_1E65D7ED8();
    sub_1E65D7EE8();
    sub_1E65D7EF8();
    sub_1E65E0E88();
    (*(v3 + 8))(v18, v19);
    v47 = v11;
    v21 = *(v11 + 16);
    v20 = *(v11 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1E601CE7C(v20 > 1, v21 + 1, 1);
      v11 = v47;
    }

    *(v11 + 16) = v21 + 1;
    result = (*(v37 + 32))(v11 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v21, v32, v38);
    a1 = v33;
    v16 = 1 << *(v33 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v22 = *(v46 + 8 * v44);
    if ((v22 & v43) == 0)
    {
      goto LABEL_23;
    }

    if (v42 != *(v33 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v14 & 0x3F));
    if (v23)
    {
      v16 = __clz(__rbit64(v23)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v44 << 6;
      v25 = v44 + 1;
      v26 = (v30 + 8 * v44);
      while (v25 < (v16 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1E5F87098(v14, v42, 0);
          v16 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v14, v42, 0);
    }

LABEL_4:
    v15 = v41 + 1;
    v14 = v16;
    if (v41 + 1 == v31)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E6314624(uint64_t a1)
{
  v61 = sub_1E65D9A78();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = v48 - v12;
  v13 = sub_1E65DAC98();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v65 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1E65E0F18();
  v17 = *(v59 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v20 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v63 = v13;
    v56 = v20;
    v48[1] = v1;
    v68 = MEMORY[0x1E69E7CC0];
    sub_1E601CEC0(0, v21, 0);
    v67 = v68;
    v23 = -1 << *(a1 + 32);
    v64 = a1 + 56;
    result = sub_1E65E6748();
    v24 = result;
    v25 = 0;
    v54 = (v3 + 8);
    v55 = v14 + 16;
    v57 = v17;
    v58 = a1;
    v52 = v17 + 32;
    v53 = (v14 + 8);
    v49 = a1 + 64;
    v50 = v21;
    v51 = v14;
    while ((v24 & 0x8000000000000000) == 0 && v24 < 1 << *(a1 + 32))
    {
      v28 = v24 >> 6;
      if ((*(v64 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
      {
        goto LABEL_24;
      }

      v62 = *(a1 + 36);
      (*(v14 + 16))(v65, *(a1 + 48) + *(v14 + 72) * v24, v63);
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      v29 = v9;
      sub_1E65D74C8();

      v30 = v60;
      sub_1E65DAC48();
      v31 = sub_1E65D9A68();
      v33 = v32;
      v35 = v34;
      (*v54)(v30, v61);
      if ((v35 & 1) == 0)
      {
        sub_1E5F87058(v31, v33, 0);
      }

      v36 = v56;
      sub_1E65E0F08();
      (*v53)(v65, v63);
      v37 = v67;
      v68 = v67;
      v39 = *(v67 + 16);
      v38 = *(v67 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1E601CEC0(v38 > 1, v39 + 1, 1);
        v37 = v68;
      }

      *(v37 + 16) = v39 + 1;
      v40 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v67 = v37;
      result = (*(v57 + 32))(v37 + v40 + *(v57 + 72) * v39, v36, v59);
      a1 = v58;
      v26 = 1 << *(v58 + 32);
      if (v24 >= v26)
      {
        goto LABEL_25;
      }

      v41 = *(v64 + 8 * v28);
      if ((v41 & (1 << v24)) == 0)
      {
        goto LABEL_26;
      }

      if (v62 != *(v58 + 36))
      {
        goto LABEL_27;
      }

      v42 = v41 & (-2 << (v24 & 0x3F));
      if (v42)
      {
        v26 = __clz(__rbit64(v42)) | v24 & 0x7FFFFFFFFFFFFFC0;
        v9 = v29;
        v27 = v50;
      }

      else
      {
        v43 = v28 << 6;
        v44 = v28 + 1;
        v45 = (v49 + 8 * v28);
        v9 = v29;
        v27 = v50;
        while (v44 < (v26 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            result = sub_1E5F87098(v24, v62, 0);
            v26 = __clz(__rbit64(v46)) + v43;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v24, v62, 0);
      }

LABEL_4:
      ++v25;
      v24 = v26;
      v14 = v51;
      if (v25 == v27)
      {
        return v67;
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
  }

  return result;
}

uint64_t sub_1E6314B98()
{
  v0 = sub_1E65D93D8();
  v1 = sub_1E6311C88(v0);

  sub_1E600CE74(v1);

  v2 = sub_1E65D93A8();
  v3 = sub_1E631207C(v2);

  sub_1E600D010(v3);

  v4 = sub_1E65D9438();
  v5 = sub_1E63124A8(v4);

  sub_1E600D1AC(v5);

  v6 = sub_1E65D9448();
  v7 = sub_1E6312898(v6);

  sub_1E600D348(v7);

  v8 = sub_1E65D9408();
  v9 = sub_1E6312C8C(v8);

  sub_1E600D4E4(v9);

  v10 = sub_1E65D93B8();
  v11 = sub_1E6313090(v10);

  sub_1E600D680(v11);

  v12 = sub_1E65D93E8();
  v13 = sub_1E6313454(v12);

  sub_1E600D81C(v13);

  v14 = sub_1E65D93F8();
  v15 = sub_1E6313848(v14);

  sub_1E600D9B8(v15);

  v16 = sub_1E65D9418();
  v17 = sub_1E6313C54(v16);

  sub_1E600DB54(v17);

  return sub_1E65E0CF8();
}

unint64_t sub_1E6314D98()
{
  result = qword_1ED075438;
  if (!qword_1ED075438)
  {
    sub_1E65E0F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075438);
  }

  return result;
}

uint64_t sub_1E6314DF0@<X0>(uint64_t *a1@<X8>)
{
  v57 = a1;
  v2 = type metadata accessor for RemoteBrowsingService();
  Description = v2[-1].Description;
  v54 = v2;
  v3 = Description[8];
  MEMORY[0x1EEE9AC00](v2);
  v51 = v4;
  v52 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &KeyPath - v7;
  v8 = type metadata accessor for CatalogService();
  v9 = v8[-1].Description;
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782E8, &qword_1E65FBE20);
  v13 = *(v12 - 8);
  v49 = v12;
  v50 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v47 = v16;
  v48 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &KeyPath - v17;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v18 = sub_1E65E3B68();
  __swift_project_value_buffer(v18, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v19 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v45 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v20 = type metadata accessor for AppEnvironment();
  v46 = v20[25];
  v21 = v20[12];
  v22 = v20[34];
  v23 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  swift_weakInit();
  (v9[2])(&KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v21, v8);
  sub_1E5DF650C(v19 + v22, v58);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (v9[4])(v27 + v25, v11, v8);
  *(v27 + v26) = v24;
  sub_1E5DF599C(v58, v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));

  v28 = v55;
  sub_1E65E4E08();
  v29 = v57;
  v30 = v49;
  v57[3] = v49;
  v29[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v32 = v50;
  v33 = *(v50 + 16);
  v33(boxed_opaque_existential_1, v28, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1E65EA670;
  v35 = sub_1E65E60A8();
  (*(*(v35 - 8) + 56))(v56, 1, 1, v35);
  v37 = v52;
  v36 = Description;
  v38 = v54;
  (Description[2])(v52, v45 + v46, v54);
  v39 = v48;
  v33(v48, v28, v30);
  v40 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v41 = (v51 + *(v32 + 80) + v40) & ~*(v32 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  (v36[4])(v42 + v40, v37, v38);
  (*(v32 + 32))(v42 + v41, v39, v30);
  *(v34 + 32) = sub_1E6059EAC(0, 0, v56, &unk_1E65FBE60, v42);
  result = (*(v32 + 8))(v55, v30);
  v57[5] = v34;
  return result;
}

uint64_t sub_1E6315390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65DA248();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6315454, 0, 0);
}

uint64_t sub_1E6315454()
{
  v1 = v0[3];
  v2 = CatalogService.fetchRemoteNavigationEditorialContent.getter();
  v0[9] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1E6315550;
  v6 = v0[8];

  return v8(v6);
}

uint64_t sub_1E6315550()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1E6315780;
  }

  else
  {
    v4 = sub_1E6315680;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6315680()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v11 = *(v0 + 32);
  v6 = sub_1E65DA228();
  (*(v3 + 8))(v2, v4);
  v7 = swift_task_alloc();
  *(v7 + 16) = v11;
  v8 = sub_1E6406778(sub_1E63164E0, v7, v6);

  *v5 = v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E6315780()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1E63157E4(uint64_t a1)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v5 = (*(Description + 80) + 16) & ~*(Description + 80);
  v6 = (Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E6315390(a1, v1 + v5, v8, v1 + v7);
}

uint64_t sub_1E6315904@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_1E65D7848();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);

    swift_getKeyPath();
    v17 = v8;
    sub_1E65E4EC8();

    v8 = v17;

    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    sub_1E65D77C8();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_1E5DFE50C(v7, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  sub_1E6442628(v12, a1, a2);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1E6315B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6315D04, 0, 0);
}

uint64_t sub_1E6315D04()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E6315E00;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E6315E00()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6315F18, 0, 0);
}

uint64_t sub_1E6315F18()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6315FF4;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}
uint64_t sub_218CE2E64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a1;
  v56 = a2;
  sub_218CE4728(0, &qword_27CC10ED0, MEMORY[0x277D34810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v52 - v3;
  v5 = sub_219BDB954();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v52 - v9;
  v11 = sub_219BE22B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE22F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE4728(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v16 + 8))(v18, v15);
  v19 = sub_219BE22C4();
  v21 = v20;
  (*(v12 + 8))(v14, v11);
  if (v21)
  {

    sub_219BE5114();
    v22 = sub_219BE5134();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v4, 1, v22) == 1)
    {
      sub_218CE4820(v4, &qword_27CC10ED0, MEMORY[0x277D34810]);
      if (qword_27CC08640 != -1)
      {
        swift_once();
      }

      v24 = sub_219BE5434();
      __swift_project_value_buffer(v24, qword_27CCD8BD0);
      v25 = v54;
      v26 = v55;
      (*(v54 + 16))(v8, v53, v55);

      v27 = sub_219BE5414();
      v28 = sub_219BF61F4();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v57 = v53;
        *v29 = 136446466;
        v30 = sub_2186D1058(v19, v21, &v57);
        v31 = v28;
        v32 = v30;

        *(v29 + 4) = v32;
        *(v29 + 12) = 2082;
        sub_218CE46E0(&qword_27CC15940, 255, MEMORY[0x277CC9260]);
        v33 = sub_219BF7894();
        v35 = v34;
        (*(v25 + 8))(v8, v26);
        v36 = sub_2186D1058(v33, v35, &v57);

        *(v29 + 14) = v36;
        _os_log_impl(&dword_2186C1000, v27, v31, "Unrecognized source '%{public}s' encountered while starting a Live Activity from %{public}s", v29, 0x16u);
        v37 = v53;
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v37, -1, -1);
        MEMORY[0x21CECF960](v29, -1, -1);
      }

      else
      {

        (*(v25 + 8))(v8, v26);
      }

      return (*(v23 + 56))(v56, 1, 1, v22);
    }

    else
    {

      v49 = v56;
      (*(v23 + 32))(v56, v4, v22);
      return (*(v23 + 56))(v49, 0, 1, v22);
    }
  }

  else
  {
    if (qword_27CC08640 != -1)
    {
      swift_once();
    }

    v38 = sub_219BE5434();
    __swift_project_value_buffer(v38, qword_27CCD8BD0);
    v39 = v54;
    v40 = v55;
    (*(v54 + 16))(v10, v53, v55);
    v41 = sub_219BE5414();
    v42 = sub_219BF6214();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v57 = v44;
      *v43 = 136446210;
      sub_218CE46E0(&qword_27CC15940, 255, MEMORY[0x277CC9260]);
      v45 = sub_219BF7894();
      v47 = v46;
      (*(v39 + 8))(v10, v40);
      v48 = sub_2186D1058(v45, v47, &v57);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_2186C1000, v41, v42, "Source missing, while starting a Live Activity from %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x21CECF960](v44, -1, -1);
      MEMORY[0x21CECF960](v43, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v10, v40);
    }

    v51 = sub_219BE5134();
    return (*(*(v51 - 8) + 56))(v56, 1, 1, v51);
  }
}

uint64_t sub_218CE3640@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v36 = a1;
  v3 = sub_219BDB954();
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE22B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE22F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE4728(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v11 + 8))(v13, v10);
  sub_219BE22C4();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  if (v15)
  {

    v16 = *MEMORY[0x277D347E8];
    v17 = sub_219BE5134();
    v18 = *(v17 - 8);
    (*(v18 + 104))(a2, v16, v17);
    return (*(v18 + 56))(a2, 0, 1, v17);
  }

  else
  {
    v20 = v35;
    v21 = v36;
    v22 = a2;
    if (qword_27CC08640 != -1)
    {
      swift_once();
    }

    v23 = sub_219BE5434();
    __swift_project_value_buffer(v23, qword_27CCD8BD0);
    v24 = v20;
    (*(v20 + 16))(v5, v21, v3);
    v25 = sub_219BE5414();
    v26 = sub_219BF6214();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = v28;
      *v27 = 136446210;
      sub_218CE46E0(&qword_27CC15940, 255, MEMORY[0x277CC9260]);
      v29 = sub_219BF7894();
      v31 = v30;
      (*(v24 + 8))(v5, v3);
      v32 = sub_2186D1058(v29, v31, &v37);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_2186C1000, v25, v26, "notificationID not present, while starting a Live Activity from %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x21CECF960](v28, -1, -1);
      MEMORY[0x21CECF960](v27, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v5, v3);
    }

    v33 = sub_219BE5134();
    return (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
  }
}

uint64_t sub_218CE3B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_219BDB954();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v10 = sub_219BE51D4();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218CE3C74, 0, 0);
}

uint64_t sub_218CE3C74()
{
  v1 = v0[2];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);

  sub_219BE51B4();
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_218CE3D64;
  v5 = v0[13];
  v6 = v0[5];

  return MEMORY[0x282193EC0](v5, v6, v2, v3);
}

uint64_t sub_218CE3D64()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_218CE416C;
  }

  else
  {
    v5 = sub_218CE3ED4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_218CE3ED4()
{
  v23 = v0;
  if (qword_27CC08640 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = sub_219BE5434();
  __swift_project_value_buffer(v5, qword_27CCD8BD0);
  (*(v3 + 16))(v1, v4, v2);

  v6 = sub_219BE5414();
  v7 = sub_219BF6214();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];
  if (v8)
  {
    v13 = v0[3];
    v12 = v0[4];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_2186D1058(v13, v12, &v22);
    *(v14 + 12) = 2082;
    sub_218CE46E0(&qword_27CC15940, 255, MEMORY[0x277CC9260]);
    v16 = sub_219BF7894();
    v18 = v17;
    (*(v11 + 8))(v9, v10);
    v19 = sub_2186D1058(v16, v18, &v22);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_2186C1000, v6, v7, "Started live activity: %{public}s from %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v15, -1, -1);
    MEMORY[0x21CECF960](v14, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_218CE416C()
{
  v29 = v0;
  if (qword_27CC08640 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_27CCD8BD0);
  (*(v3 + 16))(v2, v5, v4);

  v7 = v1;
  v8 = sub_219BE5414();
  v9 = sub_219BF61F4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[15];
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[7];
  if (v10)
  {
    v15 = v0[3];
    v16 = v0[4];
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v17 = 136315650;
    *(v17 + 4) = sub_2186D1058(v15, v16, &v28);
    *(v17 + 12) = 2082;
    sub_218CE46E0(&qword_27CC15940, 255, MEMORY[0x277CC9260]);
    v18 = sub_219BF7894();
    v20 = v19;
    (*(v13 + 8))(v12, v14);
    v21 = sub_2186D1058(v18, v20, &v28);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2114;
    v22 = v11;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v23;
    *v26 = v23;
    _os_log_impl(&dword_2186C1000, v8, v9, "Failed to start live activity: %s from %{public}s, error: %{public}@", v17, 0x20u);
    sub_218CE4820(v26, &qword_280E8D9F0, sub_2189666A0);
    MEMORY[0x21CECF960](v26, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v27, -1, -1);
    MEMORY[0x21CECF960](v17, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_218CE4490()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_218CE456C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_219BE5134() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_219BDB954() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2187608D4;

  return sub_218CE3B44(a1, v10, v11, v12, v13, v14, v1 + v6, v1 + v9);
}

uint64_t sub_218CE46E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218CE4728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218CE478C(uint64_t a1, uint64_t a2)
{
  sub_218CE4728(0, &qword_27CC10ED0, MEMORY[0x277D34810], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CE4820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218CE4728(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218CE4890()
{
  sub_218CE5738(0, &qword_280E8B878, MEMORY[0x277D33130], MEMORY[0x277D84560]);
  v1 = sub_219BF10D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = sub_219BF0D34();
  (*(*(v5 - 8) + 16))(v4 + v3, v0, v5);
  (*(v2 + 104))(v4 + v3, *MEMORY[0x277D33128], v1);
  v6 = sub_2194AD438(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_218CE4A58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = sub_219BED8D4();
  v22 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE5738(0, &qword_280EE6838, MEMORY[0x277D33020], MEMORY[0x277D6CF88]);
  v6 = v5;
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v20 - v7;
  sub_218CE56D4(0, &qword_27CC10F00, MEMORY[0x277D844C8]);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CE554C();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v21 = a1;
  v14 = v13;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v31 = 0;
  sub_218CE55A0(&qword_280EE6840);
  v18 = v27;
  sub_219BF7734();
  sub_219BE3384();
  (*(v15 + 8))(v18, v6);
  v30 = 1;
  sub_218CE5334(&unk_280E92630, MEMORY[0x277D31C50]);
  sub_219BF7734();
  (*(v28 + 8))(v10, v29);
  (*(v22 + 32))(v14 + *(v20 + 20), v16, v17);
  sub_218CE5614(v14, v23);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_218CE5678(v14);
}

uint64_t sub_218CE4EE4(void *a1)
{
  v18 = sub_219BF0D34();
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE5738(0, &qword_280EE6838, MEMORY[0x277D33020], MEMORY[0x277D6CF88]);
  v6 = v5;
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_218CE56D4(0, &qword_27CC10F10, MEMORY[0x277D84538]);
  v10 = v9;
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CE554C();
  sub_219BF7B44();
  (*(v2 + 16))(v4, v21, v18);
  sub_219BE3394();
  v23 = 0;
  sub_218CE55A0(&qword_280EE6848);
  v13 = v20;
  sub_219BF7834();
  if (v13)
  {
    (*(v19 + 8))(v8, v6);
    return (*(v17 + 8))(v12, v10);
  }

  else
  {
    v15 = v17;
    (*(v19 + 8))(v8, v6);
    type metadata accessor for WeatherTagFeedGroup();
    v22 = 1;
    sub_219BED8D4();
    sub_218CE5334(&qword_280E92640, MEMORY[0x277D31C50]);
    sub_219BF7834();
    return (*(v15 + 8))(v12, v10);
  }
}

uint64_t sub_218CE5334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218CE53C4(uint64_t a1)
{
  result = sub_218CE5334(&qword_27CC10EE8, type metadata accessor for WeatherTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218CE541C(void *a1)
{
  a1[1] = sub_218CE5334(&qword_27CC10EF0, type metadata accessor for WeatherTagFeedGroup);
  a1[2] = sub_218CE5334(&qword_27CC1C7A0, type metadata accessor for WeatherTagFeedGroup);
  result = sub_218CE5334(&qword_27CC10EF8, type metadata accessor for WeatherTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218CE54C8(uint64_t a1)
{
  v2 = sub_218CE5334(&qword_27CC10EF0, type metadata accessor for WeatherTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218CE554C()
{
  result = qword_27CC10F08;
  if (!qword_27CC10F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10F08);
  }

  return result;
}

uint64_t sub_218CE55A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_218CE5738(255, &qword_280EE6838, MEMORY[0x277D33020], MEMORY[0x277D6CF88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218CE5614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherTagFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CE5678(uint64_t a1)
{
  v2 = type metadata accessor for WeatherTagFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218CE56D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218CE554C();
    v7 = a3(a1, &type metadata for WeatherTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_218CE5738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218CE579C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x724774616D726F66;
  }

  else
  {
    v3 = 0x72656874616577;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEB0000000070756FLL;
  }

  if (*a2)
  {
    v5 = 0x724774616D726F66;
  }

  else
  {
    v5 = 0x72656874616577;
  }

  if (*a2)
  {
    v6 = 0xEB0000000070756FLL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218CE584C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218CE58D8()
{
  sub_219BF5524();
}

uint64_t sub_218CE5950()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218CE59D8@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_218CE5A38(uint64_t *a1@<X8>)
{
  v2 = 0x72656874616577;
  if (*v1)
  {
    v2 = 0x724774616D726F66;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB0000000070756FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_218CE5A80()
{
  if (*v0)
  {
    return 0x724774616D726F66;
  }

  else
  {
    return 0x72656874616577;
  }
}

uint64_t sub_218CE5AC4@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_218CE5B28(uint64_t a1)
{
  v2 = sub_218CE554C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CE5B64(uint64_t a1)
{
  v2 = sub_218CE554C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218CE5BB4()
{
  result = qword_27CC10F18;
  if (!qword_27CC10F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10F18);
  }

  return result;
}

unint64_t sub_218CE5C0C()
{
  result = qword_27CC10F20;
  if (!qword_27CC10F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10F20);
  }

  return result;
}

unint64_t sub_218CE5C64()
{
  result = qword_27CC10F28;
  if (!qword_27CC10F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10F28);
  }

  return result;
}

uint64_t sub_218CE5CB8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (v2 == 1)
  {
    swift_getObjectType();
    swift_getKeyPath();
    sub_219BF6A94();
  }

  else
  {
    v6 = [objc_opt_self() currentDevice];
    [v6 userInterfaceIdiom];
  }

  return v5;
}

uint64_t sub_218CE5DB4@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218CE5CB8(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_218CE5EA0(uint64_t a1)
{
  v3 = type metadata accessor for SportsManagementDetailPrewarmBlueprintModifier();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_218CE6000(a1, &v12 - v7, type metadata accessor for SportsManagementDetailPrewarmResult);
  sub_218718690(v9 + 16, &v8[*(v3 + 20)]);
  sub_218CE6000(v8, v6, type metadata accessor for SportsManagementDetailPrewarmBlueprintModifier);
  sub_218CE6068();
  swift_allocObject();
  sub_218CE6154(&qword_27CC10F38, type metadata accessor for SportsManagementDetailPrewarmBlueprintModifier);
  v10 = sub_219BE6E64();
  sub_218CE619C(v8);
  return v10;
}

uint64_t sub_218CE6000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218CE6068()
{
  if (!qword_27CC10F30)
  {
    type metadata accessor for SportsManagementDetailSectionDescriptor();
    type metadata accessor for SportsManagementDetailModel();
    sub_218CE6154(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor);
    sub_218CE6154(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel);
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10F30);
    }
  }
}

uint64_t sub_218CE6154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218CE619C(uint64_t a1)
{
  v2 = type metadata accessor for SportsManagementDetailPrewarmBlueprintModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MagazineTodayFeedGroupKnobs()
{
  result = qword_280EB82E8;
  if (!qword_280EB82E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218CE628C()
{
  sub_2189AE994(319);
  if (v0 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v1 <= 0x3F)
    {
      sub_218CE620C(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218CE6328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  sub_2189AE9B4(0);
  v69 = v3;
  v64 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for MagazineTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v62);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE620C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v51 - v15;
  sub_2189AF720(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v66 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v51 - v19;
  sub_218CE7008(0, &qword_280E8CCB0, MEMORY[0x277D844C8]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CE6F60();
  v25 = v70;
  sub_219BF7B34();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = v22;
  v56 = 0;
  v57 = v14;
  v70 = v8;
  v52 = a1;
  v73 = 0;
  sub_2186DFA70(&qword_280E91A28, sub_2189AE994);
  v27 = v67;
  v28 = v60;
  sub_219BF7674();
  v72 = 1;
  sub_2186DFA70(&qword_280E91868, sub_2189AE9B4);
  v29 = v58;
  sub_219BF7674();
  type metadata accessor for MagazineFeedGroupKnobs();
  v71 = 2;
  sub_2186DFA70(&qword_280EC7D40, type metadata accessor for MagazineFeedGroupKnobs);
  v55 = v21;
  v53 = v24;
  sub_219BF7674();
  v30 = v66;
  sub_218CE74B0(v27, v66, sub_2189AF720);
  v31 = v59;
  v32 = *(v59 + 48);
  v33 = v27;
  if (v32(v30, 1, v28) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFA70(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v34 = v61;
    sub_219BEE974();
    v35 = v32(v30, 1, v28);
    v36 = v34;
    v37 = v52;
    v38 = v70;
    v39 = v57;
    if (v35 != 1)
    {
      sub_218CE706C(v66, sub_2189AF720);
    }
  }

  else
  {
    v36 = v61;
    (*(v31 + 32))(v61, v30, v28);
    v37 = v52;
    v38 = v70;
    v39 = v57;
  }

  (*(v31 + 32))(v38, v36, v28);
  sub_218CE74B0(v29, v39, sub_2189AF700);
  v40 = v64;
  v41 = *(v64 + 48);
  v42 = v69;
  if (v41(v39, 1, v69) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFA70(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v43 = v37;
    v44 = v29;
    v45 = v63;
    sub_219BEEC74();
    v46 = v44;
    v37 = v43;
    v47 = v57;
    sub_218CE706C(v46, sub_2189AF700);
    sub_218CE706C(v67, sub_2189AF720);
    (*(v54 + 8))(v53, v55);
    v48 = v41(v47, 1, v42);
    v49 = v65;
    if (v48 != 1)
    {
      sub_218CE706C(v47, sub_2189AF700);
    }
  }

  else
  {
    sub_218CE706C(v29, sub_2189AF700);
    sub_218CE706C(v33, sub_2189AF720);
    (*(v54 + 8))(v53, v55);
    v45 = v63;
    (*(v40 + 32))(v63, v39, v42);
    v49 = v65;
  }

  v50 = v62;
  (*(v40 + 32))(v38 + *(v62 + 20), v45, v42);
  sub_218CE7518(v68, v38 + *(v50 + 24), sub_218CE620C);
  sub_218CE7518(v38, v49, type metadata accessor for MagazineTodayFeedGroupKnobs);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_218CE6BB4(void *a1)
{
  sub_218CE7008(0, &qword_280E8C498, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CE6F60();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2189AE994(0);
  sub_2186DFA70(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for MagazineTodayFeedGroupKnobs();
    v9[14] = 1;
    sub_2189AE9B4(0);
    sub_2186DFA70(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
    v9[13] = 2;
    type metadata accessor for MagazineFeedGroupKnobs();
    sub_2186DFA70(&qword_280EC7D48, type metadata accessor for MagazineFeedGroupKnobs);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218CE6E3C()
{
  v1 = 0x6C6F6F706572;
  if (*v0 != 1)
  {
    v1 = 0x73626F6E6BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_218CE6E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218CE7698(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218CE6EB4(uint64_t a1)
{
  v2 = sub_218CE6F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CE6EF0(uint64_t a1)
{
  v2 = sub_218CE6F60();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218CE6F60()
{
  result = qword_280EB8318;
  if (!qword_280EB8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8318);
  }

  return result;
}

void sub_218CE6FB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218CE7008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218CE6F60();
    v7 = a3(a1, &type metadata for MagazineTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218CE706C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_218CE70CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedGroupKnobs();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218CE620C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218CE744C();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DFA70(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  v22 = v5;
  v15 = type metadata accessor for MagazineTodayFeedGroupKnobs();
  if ((sub_219BEEC64() & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 24);
  v17 = *(v12 + 48);
  sub_218CE74B0(a1 + v16, v14, sub_218CE620C);
  sub_218CE74B0(a2 + v16, &v14[v17], sub_218CE620C);
  v18 = *(v22 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_218CE706C(v14, sub_218CE620C);
      return 1;
    }

    goto LABEL_8;
  }

  sub_218CE74B0(v14, v10, sub_218CE620C);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    sub_218CE706C(v10, type metadata accessor for MagazineFeedGroupKnobs);
LABEL_8:
    sub_218CE706C(v14, sub_218CE744C);
    return 0;
  }

  sub_218CE7518(&v14[v17], v7, type metadata accessor for MagazineFeedGroupKnobs);
  v20 = sub_21893C0F4(v10, v7);
  sub_218CE706C(v7, type metadata accessor for MagazineFeedGroupKnobs);
  sub_218CE706C(v10, type metadata accessor for MagazineFeedGroupKnobs);
  sub_218CE706C(v14, sub_218CE620C);
  return v20;
}

void sub_218CE744C()
{
  if (!qword_27CC10F40)
  {
    sub_218CE620C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC10F40);
    }
  }
}

uint64_t sub_218CE74B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218CE7518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_218CE7594()
{
  result = qword_27CC10F48;
  if (!qword_27CC10F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10F48);
  }

  return result;
}

unint64_t sub_218CE75EC()
{
  result = qword_280EB8308;
  if (!qword_280EB8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8308);
  }

  return result;
}

unint64_t sub_218CE7644()
{
  result = qword_280EB8310;
  if (!qword_280EB8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8310);
  }

  return result;
}

uint64_t sub_218CE7698(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73626F6E6BLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_218CE77F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  sub_2186F64EC(0);
  v86 = v3;
  v83 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v82 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v5 - 8);
  v80 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3B14();
  v77 = v7;
  v76 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v78 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = v59 - v10;
  v81 = type metadata accessor for NewIssueMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v81);
  v88 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = v59 - v16;
  sub_218CE8B24(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v75 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = v59 - v20;
  sub_218CE8D6C(0, &qword_280E8CB20, sub_218CE8B44, &type metadata for NewIssueMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = v59 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CE8B44();
  v26 = v89;
  sub_219BF7B34();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v71 = v23;
  v73 = 0;
  v74 = v15;
  v89 = a1;
  v28 = v76;
  v29 = v87;
  v30 = v77;
  (*(v76 + 56))(v87, 1, 1, v77);
  LOBYTE(v100) = 1;
  sub_218CE8B98();
  sub_219BF7674();
  v69 = v102;
  LOBYTE(v97) = 5;
  sub_219BF7674();
  v67 = v100;
  v66 = v101;
  LOBYTE(v97) = 2;
  sub_218CE8BEC();
  sub_219BF7674();
  v68 = v99;
  LOBYTE(v95) = 6;
  sub_219BF7674();
  v65 = v97;
  v64 = v98;
  LOBYTE(v93) = 7;
  sub_219BF7674();
  v62 = v95;
  v61 = v96;
  LOBYTE(v91) = 8;
  sub_219BF7674();
  v60 = v93;
  v59[3] = v94;
  v90 = 3;
  sub_219BF7674();
  v31 = v91;
  v63 = v92;
  v90 = 4;
  sub_2186EC680(&qword_280E91838, sub_2186F64EC);
  v72 = v22;
  v70 = v25;
  sub_219BF7674();
  v32 = v75;
  sub_218CE8CA0(v29, v75, sub_218CE8B24);
  v33 = *(v28 + 48);
  v34 = v30;
  v35 = v28;
  if (v33(v32, 1, v30) == 1)
  {
    v36 = v88;
    v37 = v79;
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v34, qword_280F61818);
    v39 = *(v28 + 16);
    v40 = v78;
    v39(v78, v38, v34);
    v41 = v40;
    if (v33(v32, 1, v34) != 1)
    {
      sub_218CE8C40(v32, sub_218CE8B24);
    }
  }

  else
  {
    v41 = v78;
    (*(v28 + 32))(v78, v32, v30);
    v36 = v88;
    v37 = v79;
  }

  v42 = sub_219BEDB04();
  v43 = v80;
  (*(*(v42 - 8) + 56))(v80, 1, 1, v42);
  sub_219BEEA04();
  sub_218CE8C40(v43, sub_218CE8A90);
  (*(v35 + 8))(v41, v34);
  (*(v35 + 32))(v36, v37, v34);
  if (v69 == 3)
  {
    v44 = 2;
  }

  else
  {
    v44 = v69;
  }

  v45 = v81;
  v36[*(v81 + 20)] = v44;
  v46 = v68;
  if (v68 == 4)
  {
    v46 = 0;
  }

  v47 = v45;
  v36[*(v45 + 24)] = v46;
  v48 = 1.79769313e308;
  if (!v63)
  {
    v48 = v31;
  }

  *&v36[*(v45 + 28)] = v48;
  v49 = v85;
  v50 = v74;
  sub_218CE8CA0(v85, v74, sub_218CE8AB0);
  v51 = v83;
  v52 = *(v83 + 48);
  v53 = v86;
  if (v52(v50, 1, v86) == 1)
  {
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2186EC680(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v54 = v82;
    sub_219BEEC74();
    sub_218CE8C40(v49, sub_218CE8AB0);
    sub_218CE8C40(v87, sub_218CE8B24);
    (*(v71 + 8))(v70, v72);
    v55 = v52(v50, 1, v53);
    v56 = v89;
    v57 = v84;
    if (v55 != 1)
    {
      sub_218CE8C40(v50, sub_218CE8AB0);
    }
  }

  else
  {
    sub_218CE8C40(v49, sub_218CE8AB0);
    sub_218CE8C40(v87, sub_218CE8B24);
    (*(v71 + 8))(v70, v72);
    v54 = v82;
    (*(v51 + 32))(v82, v50, v53);
    v56 = v89;
    v57 = v84;
  }

  v58 = v88;
  (*(v51 + 32))(&v88[*(v47 + 32)], v54, v53);
  sub_218CE8D08(v58, v57);
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_218CE82FC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73656C7572;
    v6 = 0x7942726564726FLL;
    if (a1 != 2)
    {
      v6 = 0x65674178616DLL;
    }

    if (a1)
    {
      v5 = 0x704F7265746C6966;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746C754D6B6E6172;
    v2 = 0x72685465726F6373;
    if (a1 != 7)
    {
      v2 = 0x726F635365736162;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C6F6F706572;
    if (a1 != 4)
    {
      v3 = 0x727563634F78616DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_218CE843C(void *a1)
{
  v3 = v1;
  sub_218CE8D6C(0, &qword_280E8C3C0, sub_218CE8DD4, &type metadata for NewIssueMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CE8DD4();
  sub_219BF7B44();
  v19 = 0;
  sub_2186E3B14();
  sub_2186EC680(&qword_280E919D0, sub_2186E3B14);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for NewIssueMagazineFeedGroupKnobs();
    v18 = *(v3 + *(v10 + 20));
    v17 = 1;
    sub_218CE8E28();
    sub_219BF7834();
    v16 = *(v3 + *(v10 + 24));
    v15 = 2;
    sub_218CE8E7C();
    sub_219BF7834();
    v14 = 3;
    sub_219BF7814();
    v13 = 4;
    sub_2186F64EC(0);
    sub_2186EC680(&unk_280E91840, sub_2186F64EC);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218CE872C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218CE9100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218CE8754(uint64_t a1)
{
  v2 = sub_218CE8B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CE8790(uint64_t a1)
{
  v2 = sub_218CE8B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218CE87CC()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0x7942726564726FLL;
  v4 = 0x65674178616DLL;
  if (v1 != 3)
  {
    v4 = 0x6C6F6F706572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x704F7265746C6966;
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

uint64_t sub_218CE8864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218CE93F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218CE888C(uint64_t a1)
{
  v2 = sub_218CE8DD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CE88C8(uint64_t a1)
{
  v2 = sub_218CE8DD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218CE8938(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MagazineFeedServiceConfig();
  sub_2186EC680(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for NewIssueMagazineFeedGroupKnobs();
  if (*&aNone_11[8 * *(a1 + v4[5])] == *&aNone_11[8 * *(a2 + v4[5])])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_219BF78F4();
    swift_bridgeObjectRelease_n();
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_21908B134(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  return sub_219BEEC64();
}

void sub_218CE8AD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_218CE8B44()
{
  result = qword_280EAC100;
  if (!qword_280EAC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC100);
  }

  return result;
}

unint64_t sub_218CE8B98()
{
  result = qword_280EB0360;
  if (!qword_280EB0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0360);
  }

  return result;
}

unint64_t sub_218CE8BEC()
{
  result = qword_280EB8498;
  if (!qword_280EB8498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8498);
  }

  return result;
}

uint64_t sub_218CE8C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218CE8CA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218CE8D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewIssueMagazineFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218CE8D6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_218CE8DD4()
{
  result = qword_280EAC128[0];
  if (!qword_280EAC128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAC128);
  }

  return result;
}

unint64_t sub_218CE8E28()
{
  result = qword_280EB0370;
  if (!qword_280EB0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0370);
  }

  return result;
}

unint64_t sub_218CE8E7C()
{
  result = qword_280EB84A8;
  if (!qword_280EB84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB84A8);
  }

  return result;
}

unint64_t sub_218CE8EF4()
{
  result = qword_27CC10F50;
  if (!qword_27CC10F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10F50);
  }

  return result;
}

unint64_t sub_218CE8F4C()
{
  result = qword_27CC10F58;
  if (!qword_27CC10F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10F58);
  }

  return result;
}

unint64_t sub_218CE8FA4()
{
  result = qword_280EAC118;
  if (!qword_280EAC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC118);
  }

  return result;
}

unint64_t sub_218CE8FFC()
{
  result = qword_280EAC120;
  if (!qword_280EAC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC120);
  }

  return result;
}

unint64_t sub_218CE9054()
{
  result = qword_280EAC108;
  if (!qword_280EAC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC108);
  }

  return result;
}

unint64_t sub_218CE90AC()
{
  result = qword_280EAC110;
  if (!qword_280EAC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC110);
  }

  return result;
}

uint64_t sub_218CE9100(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xEC0000006E6F6974 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7942726564726FLL && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746C754D6B6E6172 && a2 == 0xEE007265696C7069 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72685465726F6373 && a2 == 0xEE00646C6F687365 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065)
  {

    return 8;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_218CE93F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xEC0000006E6F6974 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7942726564726FLL && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_218CE95A0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_218CE95F0(uint64_t a1)
{
  v2 = v1;
  v22 = *v1;
  v23 = a1;
  v3 = sub_219BE2C84();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED174();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BED1D4();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED184();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187D9028();
  (*(v12 + 104))(v14, *MEMORY[0x277D851D0], v11);
  v15 = sub_219BF66E4();
  (*(v12 + 8))(v14, v11);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  aBlock[4] = sub_218CEA8E4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_51;
  v19 = _Block_copy(aBlock);

  sub_219BED1A4();
  v29 = MEMORY[0x277D84F90];
  sub_218CEA8EC(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_2186DD3CC(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v10, v7, v19);
  _Block_release(v19);

  (*(v25 + 8))(v7, v5);
  (*(v8 + 8))(v10, v24);

  if ([v2[2] marketingNotificationsEnabled])
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
  }

  else
  {
    sub_2186DD3CC(0, &qword_280E8F2E0, type metadata accessor for UserNotification, MEMORY[0x277D83940]);
    sub_219BE3204();
    v20 = sub_219BE2E54();
    sub_219BE2F94();
  }

  (*(v26 + 104))(v28, *MEMORY[0x277D6CE80], v27);
  sub_2186DD3CC(0, &unk_280EE6BA0, MEMORY[0x277D6CE90], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_218CE9C00()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 64);

    v2 = sub_219BF5204();
    [v1 handleNotification_];
  }
}

uint64_t sub_218CE9CB0(uint64_t *a1, void *a2)
{
  v30 = a2;
  v3 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v8 = 0;
    v32 = v5 + 8;
    v9 = v6 & 0xC000000000000001;
    v36 = v6 & 0xFFFFFFFFFFFFFF8;
    v10 = MEMORY[0x277D84F90];
    v33 = i;
    v34 = v3;
    v31 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v9)
      {
        v11 = MEMORY[0x21CECE0F0](v8, v6);
      }

      else
      {
        if (v8 >= *(v36 + 16))
        {
          goto LABEL_28;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_218A7A6E8(&v11[OBJC_IVAR____TtC7NewsUI216UserNotification_kind], v5);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 5)
        {
          if (EnumCaseMultiPayload == 7)
          {
            v16 = *&v12[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
            v15 = *&v12[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v35 = v16;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v10 = sub_218840D24(0, *(v10 + 2) + 1, 1, v10);
            }

            v19 = *(v10 + 2);
            v18 = *(v10 + 3);
            v20 = v10;
            if (v19 >= v18 >> 1)
            {
              v20 = sub_218840D24((v18 > 1), v19 + 1, 1, v10);
            }

            *(v20 + 2) = v19 + 1;
            v10 = v20;
            v21 = &v20[16 * v19];
            v3 = v34;
            *(v21 + 4) = v35;
            *(v21 + 5) = v15;
            i = v33;
            v9 = v31;
          }

          else
          {
          }

          goto LABEL_5;
        }

LABEL_23:

        v22 = type metadata accessor for UserNotification.Kind;
        goto LABEL_24;
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_23;
        }

        v22 = type metadata accessor for UserNotification.IssueData;
      }

      else
      {
        if (EnumCaseMultiPayload)
        {

          sub_2187ACC2C();

          v23 = sub_219BDB954();
          (*(*(v23 - 8) + 8))(v5, v23);
          goto LABEL_5;
        }

        v22 = type metadata accessor for UserNotification.ArticleData;
      }

LABEL_24:
      sub_218A7A7B0(v5, v22);
LABEL_5:
      ++v8;
      if (v13 == i)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_31:
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_2186DD3CC(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  sub_2186D0BA8();
  *(v24 + 56) = v25;
  *(v24 + 64) = sub_218CEA8EC(&qword_280E8EDC0, sub_2186D0BA8);
  *(v24 + 32) = v10;

  sub_219BF6214();
  sub_219BE5314();

  v26 = v30[6];
  v27 = v30[7];
  __swift_project_boxed_opaque_existential_1(v30 + 3, v26);
  (*(v27 + 80))(v10, v26, v27);
}

uint64_t sub_218CEA100(void *a1)
{
  sub_218C19FB4();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BDD0A4();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserNotification.DeliveryStatus(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BDFD94();
  v10 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v13 = objc_opt_self();

  swift_unknownObjectRelease();
  v14 = [objc_opt_self() sharedApplication];
  v15 = [v14 applicationState];

  v16 = [a1 notification];
  v17 = [v16 request];

  sub_218C1A090();
  (*(*(v18 - 8) + 56))(v9, 2, 2, v18);
  v19 = objc_allocWithZone(type metadata accessor for UserNotification(0));
  v20 = sub_2196575B8(v17, v9);

  if (v15 >= 3)
  {
    MEMORY[0x21CEB8D80]("unknown default", 15, 2, MEMORY[0x277D84F90]);
    LOBYTE(v21) = 1;
  }

  else
  {
    v21 = 6u >> (v15 & 7);
  }

  sub_218D34578(a1, v20, v21 & 1, v12);

  sub_2186DD3CC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v22 = sub_219BDCD44();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_219C09BA0;
  (*(v23 + 104))(v25 + v24, *MEMORY[0x277CEAD10], v22);
  sub_218CEA8EC(&qword_280EE8550, MEMORY[0x277D2E0C8]);
  v26 = v30;
  sub_219BDD1F4();

  (*(v10 + 8))(v12, v26);
  v27 = v31;
  (*(v4 + 104))(v6, *MEMORY[0x277CEAE38], v31);
  sub_219BDD204();
  (*(v4 + 8))(v6, v27);
  (*(v32 + 104))(v34, *MEMORY[0x277D6E708], v33);
  sub_2186DD3CC(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218CEA724()
{
  [*(v0 + 16) marketingNotificationsEnabled];
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_2186DD3CC(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  type metadata accessor for UNNotificationPresentationOptions(0);
  sub_219BF7484();
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_2186FC3BC();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  sub_2186DD3CC(0, &qword_27CC10F60, type metadata accessor for UNNotificationPresentationOptions, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218CEA8EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218CEA934()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_218CEA9B4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218CEAA7C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t type metadata accessor for ChannelIssuesGroupTitleViewLayoutOptions()
{
  result = qword_27CC10F68;
  if (!qword_27CC10F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218CEABDC()
{
  result = sub_219BE8164();
  if (v1 <= 0x3F)
  {
    result = sub_219BDCAF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_218CEAC70()
{
  swift_getObjectType();
  v0 = CACurrentMediaTime();
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v1 = sub_219BE5314();
  MEMORY[0x28223BE20](v1);
  type metadata accessor for AudioHistoryFeedServiceConfig();
  sub_219BE3204();
  sub_218CEBFC8(0, &qword_27CC10FB8, MEMORY[0x277D32580]);
  sub_219BE2F84();

  sub_2186C6148(0, &qword_280E8E3B0);
  v2 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v0;
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v0;
  v3 = sub_219BE2E54();
  v4 = sub_219BE2FD4();

  return v4;
}

uint64_t sub_218CEAEC0()
{
  v0 = sub_219BDBD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  v4 = sub_219BDBD44();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v9[0] = v4;
  v9[1] = v6;
  v7 = sub_219BED564();

  return v7;
}

uint64_t sub_218CEAFDC(uint64_t a1, uint64_t a2)
{
  sub_218CEBFC8(0, &unk_27CC10FC8, MEMORY[0x277D33098]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v10[1] = *(a2 + OBJC_IVAR____TtC7NewsUI227AudioHistoryFeedDataManager_feedService);
  type metadata accessor for AudioHistoryFeedServiceConfig();
  sub_2187004C0(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);

  sub_219BF0F44();
  sub_2187003E4();
  sub_2187004C0(&qword_27CC10FD8, sub_2187003E4);
  v8 = sub_219BEDF24();
  (*(v5 + 8))(v7, v4);

  return v8;
}

uint64_t sub_218CEB1A0()
{
  if (qword_280E8D8C8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_219BF6214();
  sub_219BE5314();

  sub_218CEBF78();
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_218CEB2B8()
{
  if (qword_280E8D8C8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 96) = MEMORY[0x277D837D0];
  *(v0 + 104) = sub_2186FC3BC();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218CEB404(uint64_t a1)
{
  v3 = type metadata accessor for AudioHistoryFeedRemovalRequest();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = CACurrentMediaTime();
  if (qword_280E8D8C8 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v7 = sub_219BE5314();
  MEMORY[0x28223BE20](v7);
  *(&v15 - 2) = v1;
  *(&v15 - 1) = a1;
  sub_2186DD430(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE3204();
  v8 = *(v1 + OBJC_IVAR____TtC7NewsUI227AudioHistoryFeedDataManager_readingHistory);
  sub_218CEC080(a1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  sub_218CEC0E4(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  v11 = v8;
  v12 = sub_219BE2E54();
  type metadata accessor for AudioHistoryFeedRemovalResult();
  v13 = sub_219BE2F64();

  return v13;
}

uint64_t sub_218CEB664(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC7NewsUI227AudioHistoryFeedDataManager_headlineService);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = type metadata accessor for AudioHistoryFeedRemovalRequest();
  return MEMORY[0x21CEC9610](*(a2 + *(v6 + 20)), *MEMORY[0x277D30B50], v4, v5);
}

uint64_t sub_218CEB6E4(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for AudioHistoryFeedRemovalResult();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_280E8D8C8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v11 = MEMORY[0x277D83A80];
  *(v10 + 56) = MEMORY[0x277D839F8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v12;
  sub_219BF6214();
  sub_219BE5314();

  v13 = sub_219BF0BD4();
  (*(*(v13 - 8) + 16))(v8, a2, v13);

  v14 = [a3 sortedListenedArticleIDs];
  v15 = sub_219BF5924();

  v16 = *(v15 + 16);

  *&v8[*(v6 + 20)] = v9;
  v8[*(v6 + 24)] = v16 == 0;
  sub_2186DD430(0, &qword_27CC10FE0, type metadata accessor for AudioHistoryFeedRemovalResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_218CEBA08(void *a1, uint64_t a2)
{
  v51 = a1;
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD430(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v41 - v7;
  v8 = a2 + 64;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;
  v44 = (v4 + 32);
  v46 = (v4 + 56);
  v50 = a2;
  v13 = v3;

  v14 = 0;
  v43 = MEMORY[0x277D84F90];
  v48 = v13;
LABEL_5:
  v15 = v14;
  if (!v11)
  {
    goto LABEL_7;
  }

  do
  {
    v14 = v15;
LABEL_10:
    v16 = (*(v50 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
    v18 = *v16;
    v17 = v16[1];

    v19 = sub_219BF53D4();
    v20 = v51;
    v49 = [v51 hasArticleCompletedListening_];

    v21 = sub_219BF53D4();
    v22 = [v20 lastListenedFor_];

    if (v22)
    {
      v23 = v45;
      sub_219BDBCA4();

      v24 = v47;
      (*v44)(v47, v23, v13);
      v25 = 0;
    }

    else
    {
      v25 = 1;
      v24 = v47;
    }

    v11 &= v11 - 1;
    (*v46)(v24, v25, 1, v13);
    sub_2189DD39C(v24);
    v26 = sub_219BF53D4();
    v27 = v51;
    [v51 listeningProgressFor_];
    v29 = v28;

    v30 = sub_219BF53D4();
    v31 = [v27 readingPositionJSONFor_];

    if (!v31)
    {
      v13 = v48;
      if (v49 || v22 || v29 != 0.0)
      {
      }

      else
      {
        v32 = v43;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21870B65C(0, *(v32 + 16) + 1, 1);
          v13 = v48;
          v32 = v52;
        }

        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_21870B65C((v34 > 1), v35 + 1, 1);
          v13 = v48;
          v32 = v52;
        }

        *(v32 + 16) = v35 + 1;
        v43 = v32;
        v36 = v32 + 16 * v35;
        *(v36 + 32) = v18;
        *(v36 + 40) = v17;
      }

      goto LABEL_5;
    }

    v15 = v14;
    v13 = v48;
  }

  while (v11);
  while (1)
  {
LABEL_7:
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v15;
    if (v11)
    {
      goto LABEL_10;
    }
  }

  v37 = v43;
  if (*(v43 + 16) && (v38 = v42 + OBJC_IVAR____TtC7NewsUI227AudioHistoryFeedDataManager_delegate, swift_unknownObjectWeakLoadStrong()))
  {
    v39 = *(v38 + 8);
    ObjectType = swift_getObjectType();
    (*(v39 + 8))(v42, &off_282A42778, v37, ObjectType, v39);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_218CEBF78()
{
  if (!qword_27CC10FC0)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10FC0);
    }
  }
}

void sub_218CEBFC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AudioHistoryFeedServiceConfig();
    v7 = sub_2187004C0(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218CEC080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedRemovalRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CEC0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedRemovalRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CEC148(uint64_t *a1)
{
  v3 = *(type metadata accessor for AudioHistoryFeedRemovalRequest() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_218CEB6E4(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t AlertSetUpOfflineMode.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t AlertSetUpOfflineMode.message.getter()
{
  v0 = [objc_opt_self() processInfo];
  [v0 isLowPowerModeEnabled];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

uint64_t AlertSetUpOfflineMode.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD00];
  v3 = sub_219BE7C94();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AlertSetUpOfflineMode.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t AlertSetUpOfflineMode.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218CEC5F0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218CEC6D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD00];
  v3 = sub_219BE7C94();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_218CEC744()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218CEC810()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218CEC90C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v75 = a2;
  sub_218CED628(0, &qword_27CC0D2C8, MEMORY[0x277D6DF88]);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v63 - v6;
  v79 = sub_219BF0BD4();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A6C984(0);
  v10 = v9;
  v66 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioPlaylistFeedGroup();
  v77 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v63 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v80 = &v63 - v21;
  MEMORY[0x28223BE20](v20);
  v78 = &v63 - v22;
  sub_218A6C8B8();
  MEMORY[0x28223BE20](v23 - 8);
  sub_218CED628(0, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
  v81 = v24;
  v70 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  v27 = sub_218795CF0(&qword_27CC0D2D8, sub_218A6C984);
  v28 = sub_218795CF0(&qword_27CC0D2E0, sub_218A6C984);
  v67 = v10;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v10, v27, v28);
  v29 = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
  v30 = type metadata accessor for AudioPlaylistFeedModel();
  v31 = sub_218795CF0(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
  v32 = sub_218795CF0(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
  v68 = v31;
  v69 = v30;
  v33 = v32;
  sub_219BEB2D4();
  v34 = *(v3 + 32);
  v35 = v34 >> 61;
  if ((v34 >> 61) <= 1)
  {
    v45 = v78;
    v80 = v26;
    if (v35)
    {
      v64 = v33;
      v65 = v29;
      v53 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v78 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v54 = *(v53 + 16);
      v55 = v67;
      if (v54)
      {
        v56 = v53 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
        v57 = *(v77 + 72);
        ++v76;
        v77 = v57;
        v58 = (v66 + 8);
        do
        {
          sub_218CED71C(v56, v19);
          __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
          type metadata accessor for AudioPlaylistFeedServiceConfig();
          sub_218795CF0(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
          sub_219BEE7A4();
          sub_218EA2628(v19, v8, v12);
          sub_218CED780(v19);
          (*v76)(v8, v79);
          sub_219BEB1E4();
          (*v58)(v12, v55);
          v56 += v77;
          --v54;
        }

        while (v54);
      }

      sub_219BEEFF4();

      sub_219BEEFE4();
      type metadata accessor for AudioPlaylistFeedServiceConfig();
      sub_218795CF0(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
      v59 = sub_219BEEFC4();

      v60 = 0;
      if (v59)
      {
        v60 = sub_219BEDC74();
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      v26 = v80;
      v36 = v81;
      v82 = v59;
      v85 = v60;
      sub_219BEB2C4();
      goto LABEL_27;
    }

    sub_218CED7DC();
    v46 = swift_projectBox();
    sub_218CED71C(v46, v45);
    __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
    type metadata accessor for AudioPlaylistFeedServiceConfig();
    sub_218795CF0(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);

    sub_219BEE7A4();
    sub_218EA2628(v45, v8, v12);
    v76[1](v8, v79);
    sub_219BEB1E4();
    (*(v66 + 8))(v12, v67);
    sub_219BEEFF4();
    sub_219BEEFE4();
    v47 = sub_219BEEFC4();

    v48 = 0;
    if (v47)
    {
      v48 = sub_219BEDC74();
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    v82 = v47;
    v85 = v48;
    v26 = v80;
    v36 = v81;
    sub_219BEB2C4();

    sub_218CED780(v45);
  }

  else if (v35 == 2)
  {
    sub_218CED7DC();
    v49 = swift_projectBox();
    v50 = v80;
    sub_218CED71C(v49, v80);
    __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
    v78 = type metadata accessor for AudioPlaylistFeedServiceConfig();
    sub_218795CF0(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);

    sub_219BEE7A4();
    sub_218EA2628(v50, v8, v12);
    v76[1](v8, v79);
    sub_219BEB1E4();
    (*(v66 + 8))(v12, v67);
    sub_219BEEFF4();
    sub_219BEEFE4();
    v51 = sub_219BEEFC4();

    v52 = 0;
    if (v51)
    {
      v52 = sub_219BEDC74();
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    v82 = v51;
    v85 = v52;
    v36 = v81;
    sub_219BEB2C4();

    sub_218CED780(v80);
  }

  else
  {
    v36 = v81;
    if (v35 == 3)
    {
      v64 = v33;
      v65 = v29;
      v37 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v78 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v38 = *(v37 + 16);
      v80 = v26;
      v39 = v67;
      if (v38)
      {
        v40 = v37 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
        v41 = *(v77 + 72);
        ++v76;
        v77 = v41;
        v42 = (v66 + 8);
        do
        {
          sub_218CED71C(v40, v16);
          __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
          type metadata accessor for AudioPlaylistFeedServiceConfig();
          sub_218795CF0(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
          sub_219BEE7A4();
          sub_218EA2628(v16, v8, v12);
          sub_218CED780(v16);
          (*v76)(v8, v79);
          sub_219BEB1E4();
          (*v42)(v12, v39);
          v40 += v77;
          --v38;
        }

        while (v38);
      }

      v26 = v80;
      sub_219BEEFF4();

      sub_219BEEFE4();
      type metadata accessor for AudioPlaylistFeedServiceConfig();
      sub_218795CF0(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
      v43 = sub_219BEEFC4();

      v44 = 0;
      if (v43)
      {
        v44 = sub_219BEDC74();
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      v36 = v81;
      v82 = v43;
      v85 = v44;
      sub_219BEB2C4();
LABEL_27:
    }
  }

  v61 = v71;
  sub_219BE85C4();
  v75(v61);
  (*(v72 + 8))(v61, v73);
  return (*(v70 + 8))(v26, v36);
}

unint64_t sub_218CED544()
{
  result = qword_27CC10FE8;
  if (!qword_27CC10FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10FE8);
  }

  return result;
}

void sub_218CED628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioPlaylistFeedModel();
    v8[2] = sub_218795CF0(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    v8[3] = sub_218795CF0(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218CED71C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CED780(uint64_t a1)
{
  v2 = type metadata accessor for AudioPlaylistFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218CED7DC()
{
  if (!qword_27CC10FF0)
  {
    type metadata accessor for AudioPlaylistFeedGroup();
    sub_218CED84C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC10FF0);
    }
  }
}

void sub_218CED84C()
{
  if (!qword_27CC10FF8)
  {
    type metadata accessor for AudioPlaylistFeedServiceConfig();
    sub_218795CF0(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
    v0 = sub_219BEE864();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10FF8);
    }
  }
}

id sub_218CED8E0()
{
  ObjectType = swift_getObjectType();

  v2 = v0;
  sub_219BE58F4();

  v4.receiver = v2;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_218CEDBE0()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_blueprintViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v7 = result;
  [result bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v6 setFrame_];
  sub_219BE8664();
  v16 = sub_219BE7BC4();

  sub_219BF65F4();

  if ([v1 isModalInPresentation])
  {
    v17 = sub_219BF65B4();
    v18 = [*&v1[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor] name];
    if (!v18)
    {
      sub_219BF5414();
      v18 = sub_219BF53D4();
    }

    [v17 setTitle_];

    v19 = sub_219BF65B4();
    [v19 setLargeTitleDisplayMode_];
  }

  sub_219BE1EA4();
  if (v27[0] != 1)
  {
    v20 = *&v1[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_refreshControl];
    [v20 addTarget:v1 action:sel_didPullToRefreshWithSender_ forControlEvents:4096];
    sub_219BE8664();
    v21 = sub_219BE7BC4();

    [v21 setRefreshControl_];
  }

  sub_219BE8664();
  v22 = sub_219BE7BC4();

  MEMORY[0x28223BE20](v23);
  sub_218CF6290(0, &qword_280E90600, MEMORY[0x277D31D00], sub_218CF6D7C, MEMORY[0x277D33558]);
  sub_218CF6DB4();
  sub_219BF6C74();

  v24 = [v1 traitCollection];
  sub_218CF67B8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218CF6E58(qword_280EC9630, v25, type metadata accessor for TagFeedViewController);
  sub_218CF6E58(&qword_280EC9628, v26, type metadata accessor for TagFeedViewController);

  sub_219BEEA54();

  v27[0] = 2;
  sub_218802F30();
  swift_allocObject();
  sub_219BE2A64();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE2A84();

  sub_219BE1E64();

  sub_218803000(&unk_282A23B70);
  swift_allocObject();
  sub_219BE2A74();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE2A84();

  sub_219BE1E64();

  sub_219BE6AA4();
  swift_getObjectType();
  if (qword_280EE3860 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE7014();
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_218CEE26C(uint64_t a1)
{
  v2 = sub_219BEDA44();
  MEMORY[0x28223BE20](v2);
  v3 = *(a1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor);
  v4 = [v3 identifier];
  sub_219BF5414();

  v5 = [v3 alternativeFeedDescriptor];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 identifier];

    sub_219BF5414();
  }

  sub_219BEDA34();
  sub_218CF6D7C();
  return sub_219BF1C54();
}

void sub_218CEE3CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_blueprintViewController);

    sub_219BE8664();
    v3 = sub_219BE7BC4();

    [v3 reloadData];
  }
}

void sub_218CEE464(unsigned __int8 *a1)
{
  v2 = sub_219BEE644();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ((v6 - 2) < 2)
    {
LABEL_9:

      return;
    }

    if (v6)
    {
      v9 = *(Strong + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler);
      sub_219BE86E4();
      v24 = objc_allocWithZone(sub_219BE9274());
      v11 = sub_219BE9254();
      v12 = *&v8[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
      v25 = [v8 view];
      if (v25)
      {
        v26 = v25;
        [v25 bounds];
        v16 = v27;
        v18 = v28;
        v20 = v29;
        v22 = v30;

        v34[0] = v11;
        v23 = MEMORY[0x277D320A0];
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *(Strong + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler);
      sub_219BE86E4();
      v10 = objc_allocWithZone(sub_219BE9274());
      v11 = sub_219BE9254();
      v12 = *&v8[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
      v13 = [v8 view];
      if (v13)
      {
        v14 = v13;
        [v13 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v34[0] = v11;
        v23 = MEMORY[0x277D320A8];
LABEL_8:
        v34[1] = v12;
        v34[2] = v16;
        v34[3] = v18;
        v34[4] = v20;
        v34[5] = v22;
        (*(v3 + 104))(v5, *v23, v2);
        v31 = *(v9 + 40);
        ObjectType = swift_getObjectType();
        (*(v31 + 88))(v34, v5, ObjectType, v31);

        (*(v3 + 8))(v5, v2);
        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_218CEE750()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC7NewsUI221TagFeedViewController_refreshControl;
    if ([*(Strong + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_refreshControl) isRefreshing])
    {
      [*&v1[v2] endRefreshing];
    }
  }
}

void sub_218CEE7CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_218CEE820();
  }
}

void sub_218CEE820()
{
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
  sub_21988E41C();
  if (v2)
  {

    v3 = *&v0[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler];
    sub_219BE86E4();
    v4 = objc_allocWithZone(sub_219BE9274());
    v18 = sub_219BE9254();
    v5 = v1;
    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v19[0] = v18;
      v19[1] = v5;
      v19[2] = v9;
      v19[3] = v11;
      v19[4] = v13;
      v19[5] = v15;
      v16 = *(v3 + 40);
      ObjectType = swift_getObjectType();
      (*(v16 + 104))(v19, ObjectType, v16);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_218CEE9D8()
{
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, sel_viewWillLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_blueprintViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  v13 = *&v0[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
  if (!v13)
  {
    return;
  }

  v14 = *(v13 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController);
  swift_unknownObjectRetain();
  v15 = [v14 searchBar];
  v16 = [v0 view];
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = v16;
  [v16 bounds];

  v18 = [v0 view];
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  [v18 safeAreaInsets];

  sub_219BE8104();
  v21 = v20;
  v23 = v22;
  v24 = sub_219BF6524();
  v25 = [v24 view];

  if (!v25)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v25 layoutMargins];
  v27 = v26;
  v29 = v28;

  [v15 _setOverrideContentInsets_forRectEdges_];
  swift_unknownObjectRelease();
}

id sub_218CEEC80(char a1)
{
  v2 = v1;
  v19.receiver = v2;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidAppear_, a1 & 1);
  v4 = OBJC_IVAR____TtC7NewsUI221TagFeedViewController_didAppearCompletions;
  swift_beginAccess();
  v5 = *&v2[v4];
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    v9 = v5 + 40;
    while (v8 < *(v5 + 16))
    {
      ++v8;
      v10 = *(v9 - 8);

      v10(v11);

      v9 += 16;
      if (v6 == v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_5:

  *&v2[v4] = MEMORY[0x277D84F90];

  if ((sub_219BF6564() & 1) == 0)
  {
    result = [v2 view];
    if (!result)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v12 = result;
    v13 = [result window];

    if (v13)
    {
      v14 = [v13 windowScene];

      if (v14)
      {
        sub_219BF63C4();
        v15 = sub_219BF53D4();

        [v14 setTitle_];
      }
    }
  }

  v16 = *&v2[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler];
  if ([*&v2[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor] feedConfiguration] - 9 <= 1)
  {
    v17 = *(v16 + 40);
    ObjectType = swift_getObjectType();
    (*(v17 + 128))(ObjectType, v17);
  }

  sub_219BE5964();
  return sub_218CEEE94();
}

uint64_t sub_218CEEE94()
{
  v0 = sub_219BED174();
  v20 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BED1D4();
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BED214();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_2186C6148(0, &qword_280E8E3B0);
  v13 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v17 = *(v7 + 8);
  v17(v10, v6);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_218CF6D6C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_41_0;
  v15 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_218CF6E58(&qword_280E927E0, 255, MEMORY[0x277D85198]);
  sub_218CF60DC(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD420](v12, v5, v2, v15);
  _Block_release(v15);

  (*(v20 + 8))(v2, v0);
  (*(v18 + 8))(v5, v19);
  return (v17)(v12, v6);
}

id sub_218CEF34C(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewWillAppear_, a1 & 1);
  result = [v2 view];
  if (result)
  {
    v5 = result;
    v6 = sub_219BF6C14();

    if (v6)
    {
      sub_219BE8664();
      v7 = sub_219BE7BC4();

      sub_219BF6C34();

      sub_219BE5894();
      __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_styler], *&v2[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_styler + 24]);
      v8 = v6;
      sub_218F96BAC(v6);
    }

    sub_2186C709C(0, &qword_280EE4808);
    sub_219BF65E4();
    if (v13)
    {
      v9 = [*&v2[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor] alternativeFeedDescriptor];
      if (v9)
      {
        v10 = v9;
        [v9 feedConfiguration];
      }

      swift_getObjectType();
      sub_219BE8A34();
    }

    sub_219BE8694();
    sub_219BE20E4();

    if ((v13 & 1) == 0)
    {
      sub_219BE8664();
      v11 = sub_219BE7BC4();

      [v11 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
    }

    v12 = sub_219BF6394();
    sub_218CEF58C(v12);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218CEF58C(uint64_t a1)
{
  if (qword_280EE3830 != -1)
  {
    swift_once();
  }

  v8 = 0;
  v9 = a1;
  v6 = 0u;
  v7 = 0u;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();
  sub_219BE6A74();

  sub_218CF6EB8(&v6, &qword_280EE5AD0, &qword_280EE5AE0);
  swift_unknownObjectRelease();
  sub_219BEAE64();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE6A94();

  sub_219BEAE34();
  sub_219BEE674();
  v2 = sub_219BEE664();
  v8 = 0;
  v9 = v2;
  v6 = 0u;
  v7 = 0u;
  sub_219BE6A74();

  sub_218CF6EB8(&v6, &qword_280EE5AD0, &qword_280EE5AE0);

  sub_219BEAE44();
  v3 = sub_219BEE664();
  v8 = 0;
  v9 = v3;
  v6 = 0u;
  v7 = 0u;
  sub_219BE6A74();

  sub_218CF6EB8(&v6, &qword_280EE5AD0, &qword_280EE5AE0);

  sub_219BEAE54();
  v4 = sub_219BEE664();
  v8 = 0;
  v9 = v4;
  v6 = 0u;
  v7 = 0u;
  sub_219BE6A74();

  sub_218CF6EB8(&v6, &qword_280EE5AD0, &qword_280EE5AE0);
}

void sub_218CEF98C()
{
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewSafeAreaInsetsDidChange);
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController);
    swift_unknownObjectRetain();
    v3 = [v2 searchBar];
    v4 = [v0 view];
    if (!v4)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v5 = v4;
    [v4 bounds];

    v6 = [v0 view];
    if (!v6)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v7 = v6;
    [v6 safeAreaInsets];

    sub_219BE8104();
    v9 = v8;
    v11 = v10;
    v12 = sub_219BF6524();
    v13 = [v12 view];

    if (!v13)
    {
LABEL_14:
      __break(1u);
      return;
    }

    [v13 layoutMargins];
    v15 = v14;
    v17 = v16;

    [v3 _setOverrideContentInsets_forRectEdges_];
    swift_unknownObjectRelease();
  }

  sub_219BED0C4();
  v18 = *&v0[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
  if ([v18 feedConfiguration] == 8)
  {
    v19 = [v18 alternativeFeedDescriptor];
    if (v19)
    {

      return;
    }

    v20 = objc_opt_self();
    v21 = swift_allocObject();
    *(v21 + 16) = v0;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_218CF6C50;
    *(v22 + 24) = v21;
    v26[4] = sub_218807CE0;
    v26[5] = v22;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 1107296256;
    v26[2] = sub_218807CE4;
    v26[3] = &block_descriptor_33_1;
    v23 = _Block_copy(v26);
    v24 = v0;

    [v20 performWithoutAnimation_];
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_12;
    }
  }
}

void sub_218CEFCDC(void *a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  v3 = sub_219BF60A4();

  sub_219BE8664();
  v4 = sub_219BE7BC4();

  v5 = [a1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v5 safeAreaInsets];
  v8 = v7;

  [v4 setContentInset_];
  sub_219BE8664();
  v9 = sub_219BE7BC4();

  v10 = [a1 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 safeAreaInsets];
  v13 = v12;

  [v9 _setPocketInsets_];
  if (v3)
  {
    sub_219BE8664();
    v17 = sub_219BE7BC4();

    sub_219BE8664();
    v14 = sub_219BE7BC4();

    [v14 adjustedContentInset];
    v16 = v15;

    [v17 setContentOffset_];
  }
}

uint64_t sub_218CEFFEC@<X0>(uint64_t *a1@<X8>)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  *a1 = v2;
  v3 = *MEMORY[0x277D6DA10];
  v4 = sub_219BE74B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_218CF00C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = [v3 parentViewController];
  if (v5)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = a3(ObjectType, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_218CF0158()
{
  ObjectType = swift_getObjectType();
  if (*(v0 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator))
  {
    v2 = ObjectType;
    v3 = (v0 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_titleViewProvider);
    swift_beginAccess();
    v4 = v3[3];
    if (v4)
    {
      v5 = v3[4];
      v6 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
      v7 = *(v4 - 8);
      MEMORY[0x28223BE20](v6);
      v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v9);
      v10 = (*(v5 + 8))(v4, v5);
      (*(v7 + 8))(v9, v4);
      sub_219BE9C84();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v13 = v11;
        v14 = sub_218CF6E58(&unk_280EC9600, v12, type metadata accessor for TagFeedViewController);
        v15 = MEMORY[0x21CEBCBD0](v2, v14);
        if (v15)
        {
          v16 = v15;
          swift_getObjectType();
          sub_219BE90D4();

          __swift_project_boxed_opaque_existential_1(v22, v22[3]);
          v17 = sub_219BE8A64();
          __swift_destroy_boxed_opaque_existential_1(v22);
          [v17 frame];
          [v17 convertRect:v13 toCoordinateSpace:?];
          MaxY = CGRectGetMaxY(v23);
          v19 = v10;
          [v13 height];
          v21 = MaxY - v20;
          if (v21 <= 0.0)
          {
            v21 = 0.0;
          }

          [v13 setHeightExtension_];
        }
      }
    }
  }
}

uint64_t sub_218CF03E4(uint64_t a1)
{
  v2 = sub_219BEB384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB394();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if ([*(a1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor) theme])
  {
    v26 = v2;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = sub_219BF6104();
    if (!v10)
    {
      if (qword_280E92A48 != -1)
      {
        swift_once();
      }

      v11 = sub_219BF01B4();
      __swift_project_value_buffer(v11, qword_280F61940);
      v10 = sub_219BF0194();
    }

    v12 = v10;
    v13 = sub_219BF6114();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_280E92A48 != -1)
      {
        swift_once();
      }

      v18 = sub_219BF01B4();
      __swift_project_value_buffer(v18, qword_280F61940);
      v14 = sub_219BF01A4();
      swift_unknownObjectRelease();
    }

    v2 = v26;
    v9[3] = &type metadata for TagFeedCoverViewStyler;
    v9[4] = sub_218CF5E18();
    swift_unknownObjectRelease();
    *v9 = 100;
    v9[1] = v12;
    v9[2] = v14;
  }

  else
  {
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v15 = sub_219BF01B4();
    v16 = __swift_project_value_buffer(v15, qword_280F61940);
    v9[3] = v15;
    v9[4] = sub_218CF6E58(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v21 = sub_219BF54E4();
  v23 = v22;

  v9[5] = v21;
  v9[6] = v23;
  (*(v7 + 104))(v9, *MEMORY[0x277D6EC80], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D6ECB0], v2);
  sub_219BE6BD4();

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218CF0894(uint64_t a1)
{
  v2 = sub_219BEB384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB394();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  *v9 = sub_219BF1554();
  v9[1] = v10;
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_styler), *(a1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_styler + 24));
  sub_218F96DE8(*(a1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor), v9 + 2);
  v9[7] = sub_219BF1534();
  v9[8] = v11;
  (*(v7 + 104))(v9, *MEMORY[0x277D6EC98], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D6ECA8], v2);
  sub_219BE6BD4();

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218CF0AC8(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = sub_219BEB384();
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB394();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  sub_2189DA200();
  v11 = *(v10 + 48);
  v12 = *(v10 + 64);
  v13 = sub_219BE66C4();
  (*(*(v13 - 8) + 16))(v9, v18, v13);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_styler), *(a1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_styler + 24));
  sub_218F96C9C(*(a1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor), &v9[v11]);
  v14 = *MEMORY[0x277D6D9C8];
  v15 = sub_219BE73A4();
  (*(*(v15 - 8) + 104))(&v9[v12], v14, v15);
  (*(v7 + 104))(v9, *MEMORY[0x277D6EC90], v6);
  v16 = v19;
  (*(v3 + 104))(v5, *MEMORY[0x277D6ECA8], v19);
  sub_219BE6BD4();

  (*(v3 + 8))(v5, v16);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218CF0D80(void *a1)
{
  v2 = sub_219BEB384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB394();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v7 + 104))(v9, *MEMORY[0x277D6EC88], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D6ECA8], v2);
  *(swift_allocObject() + 16) = a1;
  v10 = a1;
  sub_219BE6BE4();

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_218CF0FA4()
{
  v0 = sub_219BE9834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  (*(v1 + 104))(v3, *MEMORY[0x277D6E758], v0);
  sub_219BE9824();
  (*(v1 + 8))(v3, v0);
  v5 = sub_219BF53D4();

  v6 = [v4 visibleSupplementaryViewsOfKind_];

  sub_2186C6148(0, &unk_280E8DE10);
  v7 = sub_219BF5924();

  if (v7 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v9 = 0;
    v17 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v9, v7);
      }

      else
      {
        if (v9 >= *(v17 + 16))
        {
          goto LABEL_15;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_218CF6290(0, &qword_280EE4D60, MEMORY[0x277D33638], sub_218CF5DE0, MEMORY[0x277D6DE90]);
      if (swift_dynamicCastClass())
      {
        v13 = v11;
        v14 = sub_219BE8204();
        sub_219BF2E44();
        v15 = sub_219BF6C64();

        if (v15)
        {

          sub_219BF2E34();

          return;
        }
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
}

uint64_t sub_218CF12B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE89F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    (*(v4 + 104))(v6, *MEMORY[0x277D6E0F8], v3);
    v9 = *&v8[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_tracker];
    v14[3] = sub_219BDD274();
    v14[4] = sub_218CF6E58(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
    v14[0] = v9;
    v15 = 0u;
    v16 = 0u;
    v17 = 1;
    sub_219BE8314();
    swift_allocObject();

    v10 = sub_219BE82F4();
    __swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_tipModelAvailability], *&v8[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_tipModelAvailability + 24]);
    v11 = sub_219569B58();
    if (v13 != 0xFF)
    {
      sub_218CF5D64(v11, v12, v13);
      __swift_project_boxed_opaque_existential_1((a2 + 48), *(a2 + 72));
      sub_218E47820(v10);
    }
  }

  return result;
}

void sub_218CF14AC(uint64_t a1)
{
  v2 = v1;
  sub_218B0847C();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  MEMORY[0x28223BE20](v5);
  v9 = v37 - v8 + 32;
  sub_218CF640C(a1, v37 - v8 + 32, sub_218B0847C);
  v10 = sub_219BF1584();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v12 = *&v2[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler];
    sub_219BE86E4();
    v13 = objc_allocWithZone(sub_219BE9274());
    v14 = sub_219BE9254();
    v15 = *&v2[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
    v16 = [v2 view];
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = v16;
    [v16 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v37[0] = v14;
    v37[1] = v15;
    v37[2] = v19;
    v37[3] = v21;
    v37[4] = v23;
    v37[5] = v25;
    v26 = *(v12 + 40);
    ObjectType = swift_getObjectType();
    (*(v26 + 136))(v37, ObjectType, v26);
  }

  else
  {
    v28 = *&v2[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
    if (v28)
    {
      v29 = [*(v28 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController) searchBar];
      [v29 resignFirstResponder];
    }

    sub_218CF6474(v9, sub_218B0847C);
  }

  v30 = OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator;
  v31 = *&v2[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
  if (v31)
  {
    v32 = [*(v31 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController) searchBar];
    v33 = [v32 searchTextField];

    (*(v11 + 56))(v7, 1, 1, v10);
    sub_2186F7720();
    LOBYTE(v32) = sub_219BF1B34();
    sub_218CF6474(v7, sub_218B0847C);
    [v33 setEnabled_];

    if (*&v2[v30])
    {
      sub_218725F94();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C146A0;
      swift_unknownObjectRetain();
      *(inited + 32) = sub_218ABA594();
      v35 = swift_unknownObjectRelease();
      MEMORY[0x28223BE20](v35);
      *(&v36 - 2) = a1;
      *(&v36 - 1) = v2;
      sub_219249504(sub_218CF5DB4, (&v36 - 4), inited);
      swift_setDeallocating();
      swift_arrayDestroy();
    }
  }
}

void sub_218CF18A4(void **a1)
{
  v14[0] = swift_getObjectType();
  sub_218B0847C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  v6 = sub_219BF1584();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  sub_2186F7720();
  v8 = sub_219BF1B34();
  sub_218CF6474(v4, sub_218B0847C);
  [v5 setEnabled_];
  v9 = [v5 customView];
  if (v9)
  {
    v10 = v9;
    v7(v4, 1, 1, v6);
    v11 = sub_219BF1B34();
    sub_218CF6474(v4, sub_218B0847C);
    v12 = 1.0;
    if ((v11 & 1) == 0)
    {
      sub_219BDC5A4();
      sub_218CF6E58(&qword_280EC9628, v13, type metadata accessor for TagFeedViewController);
      sub_219BDC7D4();

      v12 = *&v14[3];
    }

    [v10 setAlpha_];
  }
}

void sub_218CF1AD4(uint64_t a1, uint64_t a2, char a3)
{
  sub_219BE8664();
  v5 = sub_219BE7BC4();

  [v5 ts:a3 & 1 scrollToTop:objc_msgSend(*(v3 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor) dismissKeyboard:sel_feedConfiguration) - 12 < 0xFFFFFFFFFFFFFFFDLL];
}

id sub_218CF1B78()
{
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_blueprintViewController];
  sub_219BE86E4();
  result = [v1 view];
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    v4 = sub_219BE9E14();

    result = swift_unknownObjectRelease();
    if (v4)
    {
      *(swift_allocObject() + 16) = v0;
      v5 = v0;
      sub_219BE3494();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218CF1C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218CF14AC(a3);
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  [v3 reloadData];
}

void sub_218CF1CE0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_lastGutterViewBounds];
  v3 = v0[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_lastGutterViewBounds + 32];
  v4 = 0.0;
  v5 = 0.0;
  if ((v3 & 1) == 0)
  {
    v4 = v2[2];
    v5 = v2[3];
  }

  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6;
  v8 = sub_219BF6C14();

  if (!v8)
  {
    if (v3)
    {
      return;
    }

LABEL_13:
    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      v16 = sub_219BF6C14();

      if (v16)
      {
        [v16 bounds];
        v24 = v17;
        v25 = v18;
        v23 = v19;
        v26 = v20;

        *&v22 = v23;
        *&v21 = v24;
        *(&v21 + 1) = v25;
        *(&v22 + 1) = v26;
      }

      else
      {
        v21 = 0uLL;
        v22 = 0uLL;
      }

      *v2 = v21;
      *(v2 + 1) = v22;
      *(v2 + 32) = v16 == 0;
      return;
    }

LABEL_20:
    __break(1u);
    return;
  }

  [v8 bounds];
  v10 = v9;
  v12 = v11;

  if (v3)
  {
    goto LABEL_13;
  }

  if (v4 != v10 || v5 != v12)
  {
    goto LABEL_13;
  }
}

uint64_t sub_218CF1E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler);
  sub_218B3C2F8();
  v8 = *(v7 + 40);
  ObjectType = swift_getObjectType();
  result = (*(v8 + 48))(a2, 0, a4, ObjectType, v8);
  v11 = *(v4 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented;
    *(v11 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented) = 0;
    v13 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController;
    v14 = *(v11 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController);
    swift_unknownObjectRetain();
    if ([v14 isActive] != *(v11 + v12))
    {
      [*(v11 + v13) setActive_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218CF1F84(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = *(v2 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler);
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor);
  sub_218B27CE8(a2, v5);
  v6 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  (*(v6 + 120))(a2, ObjectType, v6);
  if (qword_280EE9638 != -1)
  {
    swift_once();
  }

  v8 = [objc_msgSend(v5 backingTag)];
  swift_unknownObjectRelease();
  sub_219BF5414();

  sub_218CF6E58(&qword_280EC9620, v9, type metadata accessor for TagFeedViewController);
  sub_219BDCA54();
}

uint64_t sub_218CF2100(uint64_t a1, unint64_t a2)
{
  sub_218CF6310(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  sub_218B2BDC4(a2);
  v10 = *(v2 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_impressionObservers);
  v16 = a2;

  sub_21924905C(sub_218CF63D4, v15, v10);

  sub_218B5A30C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  (*(v13 + 16))(v9, a2, v11);
  (*(v13 + 56))(v9, 0, 1, v12);
  swift_beginAccess();
  sub_218CF640C(v9, v7, sub_218CF6310);

  sub_219BE2744();

  return sub_218CF6474(v9, sub_218CF6310);
}

void sub_218CF22E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_219BE9F74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a3, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D6E950])
  {
    (*(v7 + 8))(v9, v6);
    goto LABEL_3;
  }

  if (v10 == *MEMORY[0x277D6E928])
  {
    sub_219BE86E4();
    v26 = objc_allocWithZone(sub_219BE9274());
    v27 = sub_219BE9254();
    v28 = *&v4[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
    v29 = [v4 view];
    if (v29)
    {
      v30 = v29;
      [v29 bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v46[0] = v27;
      v46[1] = v28;
      v46[2] = v32;
      v46[3] = v34;
      v46[4] = v36;
      v46[5] = v38;
      v39 = off_282A9F6F8;
      type metadata accessor for TagFeedEventHandler();
      v39();

      return;
    }

    goto LABEL_27;
  }

  if (v10 == *MEMORY[0x277D6E948])
  {
LABEL_3:
    sub_219BE8664();
    v11 = sub_219BE7BC4();

    v12 = sub_218B72744();

    v13 = *&v4[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler];
    v14 = [v4 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = *(v13 + 40);
      ObjectType = swift_getObjectType();
      (*(v24 + 72))(v12, a3, ObjectType, v24, v17, v19, v21, v23);

      return;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  if (v10 != *MEMORY[0x277D6E978])
  {
    if (v10 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v10 != *MEMORY[0x277D6E958])
    {
      if (v10 == *MEMORY[0x277D6E970])
      {
        sub_219BE8664();
        v40 = sub_219BE7BC4();

        v41 = [v40 collectionViewLayout];

        [v41 invalidateLayout];
        sub_219BE8664();
        v42 = sub_219BE7BC4();

        [v42 reloadData];
      }

      else if (v10 != *MEMORY[0x277D6E960] && v10 != *MEMORY[0x277D6E968] && v10 != *MEMORY[0x277D6E938] && v10 != *MEMORY[0x277D6E940])
      {
        (*(v7 + 8))(v9, v6);
      }
    }
  }
}

id sub_218CF273C(uint64_t a1, void *a2)
{
  sub_218CF60DC(0, &unk_280EE5CD0, sub_21898BF70, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - v5;
  sub_21898BF70();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE1D74();
  sub_218CF6344(0, &qword_280EE36C0, MEMORY[0x277D6EC60]);
  sub_219BEB1C4();

  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_218CF6CFC(v6, &unk_280EE5CD0, sub_21898BF70);
    v12 = a2[3];
    v13 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v12);
    return MEMORY[0x21CEC0B20](0, v12, v13);
  }

  else
  {
    (*(v9 + 32))(v11, v6, v8);
    sub_219BE86E4();
    v15 = objc_allocWithZone(sub_219BE9274());
    v16 = sub_219BE9254();
    v17 = *&v2[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
    result = [v2 view];
    if (result)
    {
      v18 = result;
      [result bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v27[0] = v16;
      v27[1] = v17;
      v27[2] = v20;
      v27[3] = v22;
      v27[4] = v24;
      v27[5] = v26;
      sub_219B40AB8(v27, v11, a2);

      return (*(v9 + 8))(v11, v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_218CF2A64(uint64_t a1, char a2)
{
  v4 = sub_219BEB384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEB394();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v13 = sub_219BE8644();
    if ([*(v2 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor) theme])
    {
      v28[1] = v13;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_219BF6104();
      if (!v14)
      {
        if (qword_280E92A48 != -1)
        {
          swift_once();
        }

        v15 = sub_219BF01B4();
        __swift_project_value_buffer(v15, qword_280F61940);
        v14 = sub_219BF0194();
      }

      v16 = v14;
      v17 = sub_219BF6114();
      if (v17)
      {
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_280E92A48 != -1)
        {
          swift_once();
        }

        v22 = sub_219BF01B4();
        __swift_project_value_buffer(v22, qword_280F61940);
        v18 = sub_219BF01A4();
        swift_unknownObjectRelease();
      }

      v12[3] = &type metadata for TagFeedCoverViewStyler;
      v12[4] = sub_218CF5E18();
      swift_unknownObjectRelease();
      *v12 = 100;
      v12[1] = v16;
      v12[2] = v18;
    }

    else
    {
      if (qword_280E92A48 != -1)
      {
        swift_once();
      }

      v19 = sub_219BF01B4();
      v20 = __swift_project_value_buffer(v19, qword_280F61940);
      v12[3] = v19;
      v12[4] = sub_218CF6E58(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
      (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v20, v19);
    }

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v25 = sub_219BF54E4();
    v27 = v26;

    v12[5] = v25;
    v12[6] = v27;
    (*(v9 + 104))(v12, *MEMORY[0x277D6EC80], v8);
    (*(v5 + 104))(v7, *MEMORY[0x277D6ECB0], v4);
    sub_219BE6BD4();

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_218CF2F20(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BF0B74();
  v119 = *(v3 - 8);
  v120 = v3;
  MEMORY[0x28223BE20](v3);
  v118 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CF5EDC(0, &qword_280E90D90, MEMORY[0x277D32FD0], sub_218CF5E6C, sub_218CF5EA4);
  v116 = *(v5 - 8);
  v117 = v5;
  MEMORY[0x28223BE20](v5);
  v115 = &v80 - v6;
  v7 = sub_219BEDB94();
  v113 = *(v7 - 8);
  v114 = v7;
  MEMORY[0x28223BE20](v7);
  v112 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CF5EDC(0, &qword_280E90E28, MEMORY[0x277D31DE8], sub_218CF5F8C, sub_218CF5FC4);
  v110 = *(v9 - 8);
  v111 = v9;
  MEMORY[0x28223BE20](v9);
  v109 = &v80 - v10;
  v11 = sub_219BF04A4();
  v107 = *(v11 - 8);
  v108 = v11;
  MEMORY[0x28223BE20](v11);
  v106 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CF5EDC(0, &qword_280E90E00, MEMORY[0x277D32CE0], sub_218CF5FFC, sub_218CF6034);
  v105 = v13;
  v104 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v103 = &v80 - v14;
  v15 = MEMORY[0x277D83D88];
  sub_218CF60DC(0, &unk_280E90A30, MEMORY[0x277D33058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v102 = &v80 - v17;
  v98 = sub_219BF1094();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CF5EDC(0, &qword_280E90D30, MEMORY[0x277D330F8], sub_218CF606C, sub_218CF60A4);
  v101 = v19;
  v100 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v99 = &v80 - v20;
  sub_218CF60DC(0, &unk_27CC10910, MEMORY[0x277D335C0], v15);
  MEMORY[0x28223BE20](v21 - 8);
  v95 = &v80 - v22;
  v92 = sub_219BF0AC4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CF5EDC(0, &qword_280E90DB0, MEMORY[0x277D32FB8], sub_218CF6140, sub_218CF6178);
  v94 = v24;
  v93 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v90 = &v80 - v25;
  v88 = sub_219BF07A4();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CF5EDC(0, &qword_280E90DD0, MEMORY[0x277D32F68], sub_218CF61B0, sub_218CF61E8);
  v85 = v27;
  v84 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v83 = &v80 - v28;
  v81 = sub_219BEC504();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48();
  v32 = v31;
  v82 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_219BF0F34();
  v121 = *(v123 - 8);
  v35 = MEMORY[0x28223BE20](v123);
  v37 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v80 - v38;
  sub_2186F0E54();
  v124 = v40;
  v122 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v80 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v43);
  v45 = &v80 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70();
  v125 = a2;
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v75 = *(v74 + 48);
      v76 = sub_219BF1584();
      (*(*(v76 - 8) + 8))(&v45[v75], v76);
      v46 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
      v63 = v122;
      v64 = v124;
      (*(v122 + 32))(v42, v45, v124);
      sub_219BF07D4();
      sub_219BF0F14();
      (*(v121 + 8))(v39, v123);
      sub_219BE5F84();
      v65 = sub_219BF4FC4();
      swift_unknownObjectRelease();

      (*(v63 + 8))(v42, v64);
      return v65;
    case 3u:
      v50 = v104;
      v51 = v103;
      v52 = v105;
      (*(v104 + 32))(v103, v45, v105);
      v66 = v106;
      sub_219BF07D4();
      sub_219BF0404();
      v68 = v107;
      v67 = v108;
      goto LABEL_18;
    case 4u:
      v56 = v100;
      v57 = v99;
      v58 = v101;
      (*(v100 + 32))(v99, v45, v101);
      v59 = v96;
      sub_219BF07D4();
      v60 = v102;
      sub_219BF1074();
      (*(v97 + 8))(v59, v98);
      v61 = v121;
      v62 = v123;
      if ((*(v121 + 48))(v60, 1, v123) == 1)
      {
        (*(v56 + 8))(v57, v58);
        sub_218CF6CFC(v60, &unk_280E90A30, MEMORY[0x277D33058]);
        return 0;
      }

      else
      {
        (*(v61 + 32))(v37, v60, v62);
        sub_219BF0F14();
        sub_219BE5F84();
        v72 = sub_219BF4FC4();
        swift_unknownObjectRelease();

        (*(v61 + 8))(v37, v62);
        (*(v56 + 8))(v57, v58);
        return v72;
      }

    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xDu:
      v46 = type metadata accessor for TagFeedModel;
LABEL_3:
      v47 = v46;
      v48 = v45;
      goto LABEL_4;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v123 = *(v77 + 48);
      v78 = v82;
      (*(v82 + 32))(v34, v45, v32);
      sub_219BF07D4();
      sub_219BEC4F4();
      (*(v80 + 8))(v30, v81);
      sub_219BE5F84();
      v72 = sub_219BF4FC4();
      swift_unknownObjectRelease();

      (*(v78 + 8))(v34, v32);
      (*(v122 + 8))(&v45[v123], v124);
      return v72;
    case 0xAu:
      v50 = v84;
      v51 = v83;
      v52 = v85;
      (*(v84 + 32))(v83, v45, v85);
      v79 = v86;
      sub_219BF07D4();
      v54 = sub_219BF06B4();
      (*(v87 + 8))(v79, v88);
      v55 = sub_219BF4FB4();
      goto LABEL_16;
    case 0xBu:
      v50 = v93;
      v51 = v90;
      v52 = v94;
      (*(v93 + 32))(v90, v45, v94);
      v69 = v89;
      sub_219BF07D4();
      sub_219BF0AA4();
      (*(v91 + 8))(v69, v92);
      v70 = sub_219BF1D14();
      v71 = v95;
      (*(*(v70 - 8) + 56))(v95, 1, 1, v70);
      v72 = sub_219BF4FD4();
      swift_unknownObjectRelease();
      sub_218CF6CFC(v71, &unk_27CC10910, MEMORY[0x277D335C0]);
      goto LABEL_19;
    case 0xCu:
      v51 = v109;
      v50 = v110;
      v52 = v111;
      (*(v110 + 32))(v109, v45, v111);
      v66 = v112;
      sub_219BF07D4();
      sub_219BEDB74();
      v68 = v113;
      v67 = v114;
LABEL_18:
      (*(v68 + 8))(v66, v67);
      v72 = sub_219BF4FA4();
      swift_unknownObjectRelease();
      goto LABEL_19;
    case 0xEu:
      v51 = v115;
      v50 = v116;
      v52 = v117;
      (*(v116 + 32))(v115, v45, v117);
      v53 = v118;
      sub_219BF07D4();
      v54 = sub_219BF0B44();
      (*(v119 + 8))(v53, v120);
      v55 = sub_219BF4F94();
LABEL_16:
      v72 = v55;

LABEL_19:
      (*(v50 + 8))(v51, v52);
      return v72;
    default:

      sub_2186F0CC0();
      v47 = type metadata accessor for TagFeedGapLocation;
      v48 = &v45[*(v73 + 48)];
LABEL_4:
      sub_218CF6474(v48, v47);
      return 0;
  }
}

void sub_218CF4298()
{
  v0 = sub_219BE89F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v6 = sub_219BF3D04();
    swift_unknownObjectRelease();
    if (v6)
    {

      return;
    }

    v7 = sub_219BF6394();
    v8 = [sub_219BF6394() isPuzzleHub];
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D6E118];
    if (v8)
    {
      v24 = v7;
      __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_tipModelAvailability], *&v5[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_tipModelAvailability + 24]);
      (*(v1 + 104))(v3, *v9, v0);
      v10 = *&v5[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_tracker];
      v27 = sub_219BDD274();
      v28 = sub_218CF6E58(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
      v25 = v10;
      v32 = 0u;
      v33 = 0u;
      v34 = 1;
      sub_219BE8314();
      swift_allocObject();

      v25 = sub_219BE82F4();
      v26 = xmmword_219C2F030;
      v11 = sub_219569E9C(&v25);
      v13 = v12;
      v15 = v14;
      v16 = ~v14;

      if (v16)
      {
        sub_218CF5D64(v11, v13, v15);
        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      v7 = v24;
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
    if (([v7 isPuzzleHub] & 1) == 0)
    {
      v18 = [v7 isPuzzleType];
    }

    (*(v1 + 104))(v3, *MEMORY[0x277D6E118], v0);
    v19 = *&v5[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_tracker];
    v27 = sub_219BDD274();
    v28 = sub_218CF6E58(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
    v25 = v19;
    v29 = 0u;
    v30 = 0u;
    v31 = 1;
    sub_219BE8314();
    swift_allocObject();

    v20 = sub_219BE82F4();
    if (v17)
    {
      __swift_project_boxed_opaque_existential_1((*&v5[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler] + 48), *(*&v5[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler] + 72));
      swift_unknownObjectRetain();
      sub_218E47848(v20);
    }

    else
    {
      if (!v18)
      {

        goto LABEL_18;
      }

      v21 = *&v5[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = sub_219BF3D64();
      __swift_project_boxed_opaque_existential_1((v21 + 48), *(v21 + 72));
      sub_218E47E10(v20, v22 & 1);
    }

    swift_unknownObjectRelease();
LABEL_18:
    swift_unknownObjectRelease();
  }
}

void sub_218CF4858()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_219BE1E74();
    sub_219BE8664();
    v2 = sub_219BE7BC4();

    sub_219BE8664();
    v3 = sub_219BE7BC4();

    [v3 adjustedContentInset];
    v5 = v4;

    [v2 setContentOffset:1 animated:{0.0, -v5}];
  }
}

void sub_218CF4958(uint64_t a1)
{
  v2 = sub_219BE8C14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_218CF60DC(0, &unk_280EE5CD0, sub_21898BF70, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  sub_21898BF70();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CF6344(0, &qword_280EE36C0, MEMORY[0x277D6EC60]);
  v14 = v13;
  v36 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  sub_218CF60DC(0, &qword_27CC110E0, MEMORY[0x277D32A48], v6);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v32 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v34 = v5;
    v35 = v3;
    sub_218CF6C68(a1, v19);
    v22 = sub_219BEFD14();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v19, 1, v22) == 1)
    {

      sub_218CF6CFC(v19, &qword_27CC110E0, MEMORY[0x277D32A48]);
      return;
    }

    v33 = v2;
    sub_219BEFD04();
    v25 = v24;
    (*(v23 + 8))(v19, v22);
    if (v25)
    {
      sub_219BE86A4();
      v39 = v40;
      sub_218CF6344(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
      sub_218CF64D4();
      sub_219BE7B94();

      sub_219BEB1C4();

      v27 = v37;
      v26 = v38;
      if ((*(v37 + 48))(v9, 1, v38) == 1)
      {
        (*(v36 + 8))(v16, v14);

        sub_218CF6CFC(v9, &unk_280EE5CD0, sub_21898BF70);
        return;
      }

      (*(v27 + 32))(v12, v9, v26);
      v28 = *&v21[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler];
      v29 = v34;
      sub_219BE8C04();
      sub_218B3C2F8();
      v30 = *(v28 + 40);
      ObjectType = swift_getObjectType();
      (*(v30 + 48))(v12, 0, v29, ObjectType, v30);
      (*(v35 + 8))(v29, v33);
      (*(v27 + 8))(v12, v26);
      (*(v36 + 8))(v16, v14);
    }
  }
}

void sub_218CF4EA8(void *a1)
{
  v2 = v1;
  v4 = sub_219BEFAD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_219BF60A4() & 1) != 0 && ([a1 isDecelerating] & 1) == 0)
  {
    v8 = *(v2 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler);
    (*(v5 + 104))(v7, *MEMORY[0x277D328C0], v4);
    v9 = *(v8 + 40);
    ObjectType = swift_getObjectType();
    (*(v9 + 112))(v7, ObjectType, v9);
    (*(v5 + 8))(v7, v4);
  }

  sub_218CF0158();
}

uint64_t sub_218CF53E4()
{
  sub_219BE86A4();
  v0 = sub_219BE6F64();

  return v0;
}

uint64_t sub_218CF5438()
{
  sub_219BE86A4();
  sub_219BE6F74();
}

uint64_t sub_218CF548C(uint64_t a1, uint64_t a2)
{
  v3 = sub_218CF6E58(&unk_27CC1CBA0, a2, type metadata accessor for TagFeedViewController);

  return MEMORY[0x2821D40A0](a1, v3);
}

uint64_t sub_218CF5508(uint64_t a1, uint64_t a2)
{
  v4 = sub_218CF6E58(&unk_27CC1CBA0, a2, type metadata accessor for TagFeedViewController);

  return MEMORY[0x2821D40A8](a1, a2, v4);
}

uint64_t sub_218CF5584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = OBJC_IVAR____TtC7NewsUI221TagFeedViewController_didAppearCompletions;
  swift_beginAccess();
  v8 = *(a1 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_2191F67A4(0, v8[2] + 1, 1, v8);
    *(a1 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_2191F67A4((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_218807D50;
  v12[5] = v6;
  *(a1 + v7) = v8;
  return swift_endAccess();
}

uint64_t sub_218CF5744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218CF578C(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218CF57E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a7;
  v30 = a8;
  v27 = a5;
  v28 = a6;
  v25 = a3;
  v26 = a4;
  v31 = a1;
  sub_218CF6344(0, &qword_280EE36C0, MEMORY[0x277D6EC60]);
  v11 = v10;
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  sub_219BE86A4();
  v43 = v35;
  sub_218CF6344(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_218CF64D4();
  sub_219BE7B94();

  sub_218C3DA24();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_219C09BA0;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09EC0;
  v15 = sub_219BE6684();
  type metadata accessor for TagFeedServiceConfig();
  sub_218CF6E58(&unk_280ECCB90, 255, type metadata accessor for TagFeedServiceConfig);
  v34 = v11;
  v16 = sub_219BEB284();
  v35 = a2;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v42 = a9;
  sub_219BE57D4();
  type metadata accessor for TagFeedModel(0);
  sub_2186F7410();
  sub_218CF5CE4();
  sub_219BE57A4();
  v17 = sub_219BE6624();

  sub_21885AB78(v16);
  if (v17)
  {
    v18 = MEMORY[0x277D6D630];
    v19 = v15;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
  }

  *(v14 + 32) = v17;
  *(v14 + 56) = v19;
  *(v14 + 64) = v18;
  v20 = sub_219BEB284();
  sub_218CF6E58(&unk_280ECCB70, 255, type metadata accessor for TagFeedServiceConfig);
  sub_218CF6E58(&unk_280ECCB80, 255, type metadata accessor for TagFeedServiceConfig);
  sub_218CF6E58(&unk_280EDE970, 255, type metadata accessor for TagFeedGroup);
  sub_218CF6E58(&qword_280EDE990, 255, type metadata accessor for TagFeedGroup);
  v21 = sub_219BE6604();
  sub_21885AB78(v20);
  if (v21)
  {
    v22 = MEMORY[0x277D6D630];
  }

  else
  {
    v15 = 0;
    v22 = 0;
    *(v14 + 80) = 0;
    *(v14 + 88) = 0;
  }

  *(v14 + 72) = v21;
  *(v14 + 96) = v15;
  *(v14 + 104) = v22;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  v23 = sub_219BE59D4();
  (*(v33 + 8))(v13, v34);
  return v23;
}

void sub_218CF5D64(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_218CF5D78(a1, a2, a3);
  }
}

void sub_218CF5D78(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  else if (a3 == 2 || a3 == 3 || a3 == 5)
  {
  }
}

unint64_t sub_218CF5E18()
{
  result = qword_280EC68B0;
  if (!qword_280EC68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC68B0);
  }

  return result;
}

void sub_218CF5EDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_2186C6148(255, &qword_280E8E560);
    a4();
    a5();
    v8 = sub_219BF0854();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218CF60DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218CF6290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_218CF6344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_218CF5CE4();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218CF640C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218CF6474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218CF64D4()
{
  result = qword_280EE54F0;
  if (!qword_280EE54F0)
  {
    sub_218CF6344(255, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE54F0);
  }

  return result;
}

void sub_218CF6548()
{
  v1 = v0;
  sub_218CF6310(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = OBJC_IVAR____TtC7NewsUI221TagFeedViewController__lastImpression;
  sub_218B5A30C(0);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_218CF640C(v7, v5, sub_218CF6310);
  sub_218CF60DC(0, &unk_280EE7400, sub_218CF6310, MEMORY[0x277D6CCD0]);
  swift_allocObject();
  v10 = sub_219BE2724();
  sub_218CF6474(v7, sub_218CF6310);
  *(v1 + v8) = v10;
  v11 = v1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_titleViewProvider;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  v12 = (v1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC7NewsUI221TagFeedViewController_refreshControl;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x277D75918]) init];
  v14 = v1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_debugButtonConfiguration;
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v15 = v1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_lastGutterViewBounds;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 1;
  v16 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_didAppearCompletions) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_impressionObservers) = v16;
  v17 = OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchBarInsetsController;
  type metadata accessor for SearchBarInsetsController();
  *(v1 + v17) = swift_allocObject();
  sub_219BF7514();
  __break(1u);
}

id sub_218CF67B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC7NewsUI221TagFeedViewController_styler;
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_styler], v19);
  __swift_project_boxed_opaque_existential_1(v19, v20);
  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = sub_218CF6E58(&unk_280EC9600, v5, type metadata accessor for TagFeedViewController);
    v8 = MEMORY[0x21CEBCBD0](ObjectType, v7);
    v9 = *&v0[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
    sub_218F96848(v6, v8);

    __swift_destroy_boxed_opaque_existential_1(v19);
    if ([v0 isModalInPresentation])
    {
      sub_218718690(&v0[v3], v19);
      v10 = __swift_project_boxed_opaque_existential_1(v19, v20);
      v11 = [v1 navigationItem];
      v12 = *(*__swift_project_boxed_opaque_existential_1((*v10 + 16), *(*v10 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
      sub_219BEDA04();

      v13 = sub_219BF53D4();
      [v11 setBackButtonTitle_];

      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    sub_218718690(&v1[v3], v19);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_219BE8664();
    v14 = sub_219BE7BC4();

    v15 = MEMORY[0x21CEBCBD0](ObjectType, v7);
    sub_218F969B4(v14, v15, v16, v9);

    __swift_destroy_boxed_opaque_existential_1(v19);
    sub_218F96F58(*&v1[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_refreshControl], v9);
    sub_218718690(&v1[v3], v19);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    result = [v1 view];
    if (result)
    {
      v17 = result;
      v18 = sub_219BF6C14();

      sub_218F96BAC(v18);
      return __swift_destroy_boxed_opaque_existential_1(v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218CF6A88(void *a1)
{
  result = [a1 isScrollEnabled];
  if ((result & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_218CF6BFC;
    *(v5 + 24) = v4;
    v9[4] = sub_218807D50;
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_218807CE4;
    v9[3] = &block_descriptor_52;
    v6 = _Block_copy(v9);
    v7 = a1;

    [v3 performWithoutAnimation_];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_218CF6BFC()
{
  v1 = *(v0 + 16);
  [v1 adjustedContentInset];

  return [v1 setContentOffset_];
}

uint64_t sub_218CF6C68(uint64_t a1, uint64_t a2)
{
  sub_218CF60DC(0, &qword_27CC110E0, MEMORY[0x277D32A48], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CF6CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218CF60DC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_218CF6DB4()
{
  result = qword_280E90610;
  if (!qword_280E90610)
  {
    sub_218CF6290(255, &qword_280E90600, MEMORY[0x277D31D00], sub_218CF6D7C, MEMORY[0x277D33558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90610);
  }

  return result;
}

uint64_t sub_218CF6E58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218CF6EB8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_218809684(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218CF6F60(uint64_t a1)
{
  sub_218718690(*v1 + 16, &v7);
  v6[0] = 0x6D726177657250;
  v6[1] = 0xE700000000000000;
  v6[2] = a1;
  sub_218CF7344(v6, &v5);
  sub_218CF71FC();
  swift_allocObject();
  sub_218CF73A0();

  v3 = sub_219BE6E64();
  sub_218CF73F4(v6);
  return v3;
}

uint64_t sub_218CF7018(uint64_t a1)
{
  v3 = type metadata accessor for AudioHistoryFeedRemovalBlueprintModifier();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v13 - v8);
  v10 = *v1;
  sub_218CF7194(a1, &v13 + *(v7 + 20) - v8, type metadata accessor for AudioHistoryFeedRemovalResult);
  sub_218718690(v10 + 16, v9 + *(v3 + 24));
  *v9 = 0x6C61766F6D6552;
  v9[1] = 0xE700000000000000;
  sub_218CF7194(v9, v6, type metadata accessor for AudioHistoryFeedRemovalBlueprintModifier);
  sub_218CF71FC();
  swift_allocObject();
  sub_21872F5E8(&qword_27CC110E8, type metadata accessor for AudioHistoryFeedRemovalBlueprintModifier);
  v11 = sub_219BE6E64();
  sub_218CF72E8(v9);
  return v11;
}

uint64_t sub_218CF7194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218CF71FC()
{
  if (!qword_27CC24600)
  {
    type metadata accessor for AudioHistoryFeedSectionDescriptor();
    type metadata accessor for AudioHistoryFeedModel();
    sub_21872F5E8(&unk_27CC0DC20, type metadata accessor for AudioHistoryFeedSectionDescriptor);
    sub_21872F5E8(&unk_27CC0B8B0, type metadata accessor for AudioHistoryFeedModel);
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC24600);
    }
  }
}

uint64_t sub_218CF72E8(uint64_t a1)
{
  v2 = type metadata accessor for AudioHistoryFeedRemovalBlueprintModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218CF73A0()
{
  result = qword_27CC110F0;
  if (!qword_27CC110F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC110F0);
  }

  return result;
}

uint64_t sub_218CF7448()
{
  v1 = sub_219BDD0A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *__swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
  *v4 = 0x6575737369;
  v4[1] = 0xE500000000000000;
  (*(v2 + 104))(v4, *MEMORY[0x277CEAE48], v1);
  sub_219BDD204();
  (*(v2 + 8))(v4, v1);
  if (v5[3])
  {
    v6 = v5[4];
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v5[2], ObjectType, v6);
  }

  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  return sub_218D7BA08();
}

uint64_t sub_218CF75C4()
{
  v1 = sub_219BDD0A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *__swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
  *v4 = 0x6575737369;
  v4[1] = 0xE500000000000000;
  (*(v2 + 104))(v4, *MEMORY[0x277CEAE48], v1);
  sub_219BDD204();
  (*(v2 + 8))(v4, v1);
  if (v5[3])
  {
    v6 = v5[4];
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v5[2], ObjectType, v6);
  }

  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  return sub_218D7C154();
}

uint64_t sub_218CF7764()
{
  v0 = sub_219BE2864();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194B4C58(&unk_282A2A3F0);
  sub_218CF7A74(0, &qword_280E8C090, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  sub_219BE2834();
  sub_219BE2854();
  v6[1] = v4;
  sub_218CF7A1C();
  sub_218CF7A74(0, &unk_280E8F5C0, MEMORY[0x277D83940]);
  sub_21881CB9C();
  sub_219BF7164();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_219BE1D14();

  (*(v1 + 8))(v3, v0);
}

void *sub_218CF7990(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_218CF7764();
    swift_unknownObjectRelease();
  }

  result = __swift_project_boxed_opaque_existential_1((a2 + 88), *(a2 + 112));
  if (*(*result + 24))
  {
    v5 = *(*result + 32);
    ObjectType = swift_getObjectType();
    return (*(v5 + 16))(a1, ObjectType, v5);
  }

  return result;
}

unint64_t sub_218CF7A1C()
{
  result = qword_280EE73C0;
  if (!qword_280EE73C0)
  {
    sub_219BE2864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE73C0);
  }

  return result;
}

void sub_218CF7A74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_219BE2864();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218CF7ADC(uint64_t a1)
{
  sub_218747E58(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  result = sub_218CF80AC(a1, v39);
  v11 = v39[0];
  if ((~v39[0] & 0xF000000000000007) != 0)
  {
    v12 = *(v1 + 112);
    v13 = *(v1 + 64);
    v14 = sub_219BDFA44();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_218718690(v1 + 72, v39);
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    v36 = v12;
    sub_2187B14CC(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0);
    if (v33)
    {
      sub_21875F93C(&v32, v34);
      *&v32 = v11;
      v15 = sub_2194DA78C(v34);
      v17 = v16;
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    else
    {
      sub_2187448D0(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v15 = qword_280ED32D8;
      v17 = qword_280ED32E0;
      v19 = qword_280ED32E8;

      sub_2188202A8(v17);
    }

    v31 = v11;
    v33 = sub_219BDD274();
    *&v32 = v13;
    sub_2189B4E2C(v9, v6);
    sub_2187B14CC(v39, v34, &qword_280EE33A0, &qword_280EE33B0);
    v20 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = v9;
    v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
    v29 = v11;
    v23 = swift_allocObject();
    *(v23 + 16) = v13;
    sub_2189B4EAC(v6, v23 + v20);
    v24 = v23 + v21;
    v25 = v34[1];
    *v24 = v34[0];
    *(v24 + 16) = v25;
    *(v24 + 32) = v35;
    v26 = (v23 + v22);
    v27 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v26 = 0;
    v26[1] = 0;
    *v27 = v15;
    v27[1] = v17;
    v27[2] = v19;
    swift_retain_n();

    sub_2188202A8(v17);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v17);
    sub_2187448D0(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218CF8590(v30, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187448D0(&v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);
    return sub_218970170(v29);
  }

  return result;
}

uint64_t sub_218CF80AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218747E58(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34[-v6];
  v8 = type metadata accessor for AudioFeedTrack(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_219BDD944();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for AudioHistoryFeedRouteModel();
  MEMORY[0x28223BE20](v15);
  v17 = &v34[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218CF85EC(a1, v17, type metadata accessor for AudioHistoryFeedRouteModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v19 = v2[18];
    v20 = v2[19];
    __swift_project_boxed_opaque_existential_1(v2 + 15, v19);
    (*(v20 + 8))(v18, v19, v20);
    swift_unknownObjectRelease();
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_21872CFDC(v7, v11, type metadata accessor for AudioFeedTrack);
    v30 = swift_allocBox();
    result = sub_21872CFDC(v11, v31, type metadata accessor for AudioFeedTrack);
    v33 = v30 | 0x1000000000000002;
  }

  else
  {
    sub_21872CFDC(v17, v14, MEMORY[0x277D2FB40]);
    sub_2187B2C48();
    v22 = v21;
    v23 = swift_allocBox();
    v25 = v24;
    v26 = *(v22 + 48);
    sub_2187B2DA0();
    v28 = *(v27 + 48);
    sub_218CF85EC(v14, v25, MEMORY[0x277D2FB40]);
    v29 = MEMORY[0x277D84F90];
    *(v25 + v28) = MEMORY[0x277D84F90];
    result = sub_218CF8654(v14);
    *(v25 + v26) = v29;
    v33 = v23 | 2;
  }

  *a2 = v33;
  return result;
}

uint64_t sub_218CF842C()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t sub_218CF84B0(void *a1)
{
  sub_218747E58(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_218CF8590(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218747E58(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218CF85EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218CF8654(uint64_t a1)
{
  v2 = sub_219BDD944();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218CF86B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE15B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_219BDD0A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_2189A4F8C(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
    sub_219BEA7B4();
    if (v18)
    {
      sub_219BDD274();
      if (swift_dynamicCast())
      {
        (*(v4 + 104))(v6, *MEMORY[0x277D2F520], v3);
        sub_219BDD094();
        (*(v4 + 8))(v6, v3);
        sub_219BDD204();

        (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
      sub_218806FD0(&v17);
    }

    sub_218CF89E8(a2, &v17);
    if (v19)
    {
      if (v19 == 1)
      {
        sub_2186CB1F0(&v17, v16);
        sub_218718690(v16, v15);
        sub_219BEA744();
        swift_allocObject();
        sub_219BEA6C4();
        v13 = sub_219BF6534();
        sub_219BEA6D4();

        __swift_destroy_boxed_opaque_existential_1(v16);
        return 0;
      }

      else
      {

        return v17;
      }
    }

    else
    {
      v14 = sub_219BF6534();
      sub_219BEA6D4();

      return 0;
    }
  }

  return result;
}

uint64_t sub_218CF8A44(uint64_t a1)
{
  sub_2189A4F8C(0, &qword_280E907A8, sub_2186FB77C, &type metadata for ContentUnavailableOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_219BF1584();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v1 + 168) useOfflineMode])
  {
    sub_219BF1B74();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v5, v6);
      __swift_project_boxed_opaque_existential_1((v1 + 128), *(v1 + 152));
      v13 = sub_219BF4994();
      sub_2189A46C0(a1, v13);

      (*(v7 + 8))(v9, v6);
      return 0;
    }

    sub_2189A4FF4(v5);
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2186CFDE4(0, &qword_280EE8B18);
  result = sub_219BE1E34();
  if (v15)
  {
    sub_2186CB1F0(&v14, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v11 = sub_219BDE844();
    if (v11)
    {
      sub_2189A4F8C(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
      v12 = sub_219BEA784();
      v12(v11);
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_218CF8D3C(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2186CFDE4(0, &qword_280ECF828);
  result = sub_219BE1E34();
  if (v10)
  {
    sub_2186CB1F0(&v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_2189A4F8C(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
    v8 = sub_219BEA784();
    v8(v7);

    __swift_destroy_boxed_opaque_existential_1(v11);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218CF8E9C(uint64_t a1, uint64_t a2)
{
  sub_218718690(*v2 + 16, &v9);
  v8[0] = 0x6D726177657250;
  v8[1] = 0xE700000000000000;
  v8[2] = a1;
  v8[3] = a2;
  sub_218CF996C(v8, &v7);
  sub_218CF947C();
  swift_allocObject();
  sub_218CF99C8();

  v5 = sub_219BE6E64();
  sub_218CF9A1C(v8);
  return v5;
}

uint64_t sub_218CF8F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218718690(*v4 + 16, &v13);
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  sub_218CF9868(v12, &v11);
  sub_218CF947C();
  swift_allocObject();
  sub_218CF98C4();

  v9 = sub_219BE6E64();
  sub_218CF9918(v12);
  return v9;
}

uint64_t sub_218CF9028(uint64_t a1, uint64_t a2)
{
  sub_218718690(*v2 + 16, &v9);
  v8[0] = 0x68736572666552;
  v8[1] = 0xE700000000000000;
  v8[2] = a1;
  v8[3] = a2;
  sub_218CF9764(v8, &v7);
  sub_218CF947C();
  swift_allocObject();
  sub_218CF97C0();

  v5 = sub_219BE6E64();
  sub_218CF9814(v8);
  return v5;
}

uint64_t sub_218CF90EC()
{
  sub_218CF947C();
  swift_allocObject();
  sub_218BE3A6C();

  return sub_219BE6E64();
}

uint64_t sub_218CF915C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218718690(*v3 + 16, &v12);
  v11[0] = 0x6465746567726154;
  v11[1] = 0xEF68736572666552;

  v7 = sub_218C3D794(v6);

  v11[2] = v7;
  v11[3] = a2;
  v11[4] = a3;
  sub_218CF9660(v11, &v10);
  sub_218CF947C();
  swift_allocObject();
  sub_218CF96BC();

  v8 = sub_219BE6E64();
  sub_218CF9710(v11);
  return v8;
}

uint64_t sub_218CF924C()
{
  sub_218CF947C();
  swift_allocObject();
  sub_218CF960C();

  return sub_219BE6E64();
}

uint64_t sub_218CF92CC(uint64_t a1)
{
  v2 = type metadata accessor for AudioFeedFailedBlueprintModifier(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_218CF9414(a1, &v10 - v6, type metadata accessor for AudioFeedFailedData);
  sub_218CF9414(v7, v5, type metadata accessor for AudioFeedFailedBlueprintModifier);
  sub_218CF947C();
  swift_allocObject();
  sub_218CF9568(&qword_27CC110F8, type metadata accessor for AudioFeedFailedBlueprintModifier);
  v8 = sub_219BE6E64();
  sub_218CF95B0(v7);
  return v8;
}

uint64_t sub_218CF9414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218CF947C()
{
  if (!qword_280EE5658)
  {
    type metadata accessor for AudioFeedSectionDescriptor();
    type metadata accessor for AudioFeedModel(255);
    sub_218CF9568(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    sub_218CF9568(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5658);
    }
  }
}

uint64_t sub_218CF9568(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218CF95B0(uint64_t a1)
{
  v2 = type metadata accessor for AudioFeedFailedBlueprintModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218CF960C()
{
  result = qword_27CC11100;
  if (!qword_27CC11100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11100);
  }

  return result;
}

unint64_t sub_218CF96BC()
{
  result = qword_280EA6DA0;
  if (!qword_280EA6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6DA0);
  }

  return result;
}

unint64_t sub_218CF97C0()
{
  result = qword_280EA3D58;
  if (!qword_280EA3D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3D58);
  }

  return result;
}

unint64_t sub_218CF98C4()
{
  result = qword_280EA6FB0;
  if (!qword_280EA6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6FB0);
  }

  return result;
}

unint64_t sub_218CF99C8()
{
  result = qword_280EA3D68[0];
  if (!qword_280EA3D68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA3D68);
  }

  return result;
}

__n128 __swift_memcpy62_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_218CF9A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 62))
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

uint64_t sub_218CF9AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 62) = 1;
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

    *(result + 62) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218CF9B88()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_218CF9BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_218CF9EE8();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218CF9C48()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

BOOL sub_218CF9CB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 14) = *(a1 + 46);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 14) = *(a2 + 46);
  return sub_218CF9F94(v5, v7);
}

id sub_218CF9D14@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() nss_NewsURLForFood];
  if (result)
  {

    sub_219BEAF74();
    v3 = sub_219BEAF84();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 0, 1, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_218CF9DE0()
{
  result = qword_27CC11108;
  if (!qword_27CC11108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11108);
  }

  return result;
}

unint64_t sub_218CF9E38()
{
  result = qword_27CC11110;
  if (!qword_27CC11110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11110);
  }

  return result;
}

unint64_t sub_218CF9E90()
{
  result = qword_27CC11118;
  if (!qword_27CC11118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11118);
  }

  return result;
}

unint64_t sub_218CF9EE8()
{
  result = qword_27CC11120;
  if (!qword_27CC11120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11120);
  }

  return result;
}

unint64_t sub_218CF9F40()
{
  result = qword_27CC11128;
  if (!qword_27CC11128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11128);
  }

  return result;
}

BOOL sub_218CF9F94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 59);
  v3 = *(a1 + 61);
  v4 = *(a2 + 59);
  v5 = *(a2 + 60);
  v6 = (v3 >> 5) & 3;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if ((v5 & 0x6000) == 0x4000)
      {
        return (v2 ^ v4 ^ 1) & 1;
      }

      return 0;
    }

    if ((~v5 & 0x6000) == 0 && (v4 | (v5 << 8)) == 0x600000)
    {
      v9 = 1;
      return v9 & 1;
    }

    return 0;
  }

  if (v6)
  {
    if ((v5 & 0x6000) == 0x2000)
    {
      return v2 == v4;
    }

    return 0;
  }

  if ((v5 & 0x6000) != 0 || v2 != v4)
  {
    return 0;
  }

  v7 = *(a1 + 60);
  if (v7 != 2)
  {
    v9 = 0;
    if (*(a2 + 60) != 2 && ((v7 ^ v5) & 1) == 0)
    {
      goto LABEL_20;
    }

    return v9 & 1;
  }

  if (*(a2 + 60) != 2)
  {
    return 0;
  }

LABEL_20:
  v10 = v3 ^ ((v5 & 0x100) >> 8) ^ 1;
  v11 = v5 >= 0;
  if (v5 < 0)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = v3 ^ ((v5 & 0x100) >> 8) ^ 1;
  }

  if (v11)
  {
    LOBYTE(v10) = 0;
  }

  if (v3 >= 0)
  {
    LOBYTE(v10) = v12;
  }

  return v10 & 1;
}

double sub_218CFA08C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 57) = 257;
  *(a1 + 61) = 96;
  return result;
}

id sub_218CFA160()
{
  sub_219BED0C4();
  sub_219BF5114();
  v0 = sub_219BF5104();
  sub_218A293AC();
  v1 = sub_219BF6BB4();
  v2 = [objc_opt_self() configurationWithFont_];

  v3 = [v0 imageWithConfiguration_];
  v4 = [v3 imageWithRenderingMode_];

  return v4;
}

uint64_t type metadata accessor for ArticleListAudioHistoryFeedGroup()
{
  result = qword_27CC11138;
  if (!qword_27CC11138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218CFA2BC()
{
  v1 = *(v0 + *(type metadata accessor for ArticleListAudioHistoryFeedGroup() + 24));
  if (v1 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60);

    v4 = sub_219BF7534();

    return v4;
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v2 = sub_218CFA4E0(v1 & 0xFFFFFFFFFFFFFF8);

    if (v2)
    {
      return v1;
    }

    else
    {
      return v1 & 0xFFFFFFFFFFFFFF8 | 1;
    }
  }
}

uint64_t sub_218CFA37C()
{
  sub_218CFA590(&unk_27CC11168);

  return sub_219BF1174();
}

uint64_t sub_218CFA3EC(uint64_t a1)
{
  v2 = sub_218CFA590(&unk_27CC11168);

  return MEMORY[0x282191938](a1, v2);
}

BOOL sub_218CFA4E0(uint64_t a1)
{
  sub_219BF7924();
  sub_2186D6710(0, &qword_280E8DF60);
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = a1 + 32;
  v5 = v3 - 1;
  do
  {
    v4 += 8;
    v6 = swift_dynamicCastObjCProtocolConditional();
    result = v6 != 0;
    v8 = v5-- != 0;
  }

  while (v6 && v8);
  return result;
}

uint64_t sub_218CFA590(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArticleListAudioHistoryFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void AudioActionHandler.setAudioButtonMenu(on:)()
{
  v1 = [*(v0 + 96) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    sub_218806FD0(&v10);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v2 = v7;
  v3 = [v7 integerValue];
  if (v3 == -1)
  {

    goto LABEL_21;
  }

  v4 = v3;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    sub_21870AD58();
    if (swift_dynamicCast())
    {
      v5 = v7;
      v6 = [v5 integerValue];

      if (((v6 ^ v4) & 1) == 0)
      {
        return;
      }

LABEL_21:
      sub_219BDD474();
      return;
    }
  }

  else
  {
    sub_218806FD0(&v10);
  }

  if (v4)
  {
    goto LABEL_21;
  }
}

uint64_t AudioActionHandler.buttonActions(for:willPerform:)()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_219BDEDF4();
  v2 = (*(v1 + 8))();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t AudioActionHandler.performActions(for:willPerform:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v80 = a3;
  v81 = a2;
  sub_218932F34(0);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v86 = v7;
  v84 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v83 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CFB62C();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v78 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v77 - v12;
  v13 = sub_219BF1324();
  v97 = *(v13 - 8);
  v98 = v13;
  MEMORY[0x28223BE20](v13);
  v100 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF1C74();
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x28223BE20](v15);
  v99 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF2A04();
  v92 = *(v17 - 8);
  v93 = v17;
  MEMORY[0x28223BE20](v17);
  v96 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F8458(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
  v90 = *(v19 - 8);
  v91 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v79 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v87 = &v77 - v22;
  v23 = type metadata accessor for AudioFeedTrack(0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v88 = (&v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v27 = (&v77 - v26);
  sub_218CFB6AC();
  v29 = v28;
  MEMORY[0x28223BE20](v28);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21875D3C8();
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v36 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v3;
  sub_219BE20E4();
  v82 = a1;
  v37 = [sub_219BDEDF4() articleID];
  swift_unknownObjectRelease();
  v38 = sub_219BF5414();
  v40 = v39;
  v41 = &v31[*(v29 + 48)];
  (*(v34 + 32))(v31, v36, v33);
  *v41 = v38;
  v41[1] = v40;
  v42 = (*(v34 + 88))(v31, v33);
  if (v42 == *MEMORY[0x277D30130])
  {

    (*(v34 + 96))(v31, v33);
    sub_218A6E5D0(0);
    v79 = *(v43 + 64);
    v78 = v31;
    sub_218C1620C(v31, v27);
    v88 = v27;
    v44 = [*v27 articleID];
    v45 = sub_219BF5414();
    v47 = v46;

    if (v45 == v38 && v47 == v40)
    {

      v49 = v90;
      v48 = v91;
      v50 = v89;
      v51 = v87;
LABEL_10:
      (*(v92 + 104))(v96, *MEMORY[0x277D33A68], v93);
      (*(v94 + 104))(v99, *MEMORY[0x277D33570], v95);
      (*(v97 + 104))(v100, *MEMORY[0x277D33288], v98);
      v102 = 0u;
      v103 = 0u;
      sub_219BF2564();
      swift_getObjectType();
      sub_219BEAC94();
      (*(v49 + 16))(v50, v51, v48);
      (*(v49 + 56))(v50, 0, 1, v48);
      sub_219BE7094();

      sub_218CFB714(v50, sub_218CFB62C);
      (*(v49 + 8))(v51, v48);
      sub_218CFB714(v88, type metadata accessor for AudioFeedTrack);
      v63 = sub_219BDD9E4();
      v64 = v78;
      (*(*(v63 - 8) + 8))(&v79[v78], v63);
      return sub_218CFB714(v64, type metadata accessor for AudioFeedTrack);
    }

    v62 = sub_219BF78F4();

    v49 = v90;
    v48 = v91;
    v50 = v89;
    v51 = v87;
    if (v62)
    {
      goto LABEL_10;
    }

    sub_218CFB714(v88, type metadata accessor for AudioFeedTrack);
    v69 = sub_219BDD9E4();
    v70 = v78;
    (*(*(v69 - 8) + 8))(&v79[v78], v69);
    v71 = v70;
    goto LABEL_17;
  }

  if (v42 == *MEMORY[0x277D30128])
  {

    (*(v34 + 96))(v31, v33);
    sub_218A6E554();
    v89 = *(v52 + 64);
    v53 = v31;
    v54 = v88;
    sub_218C1620C(v31, v88);
    v55 = [*v54 articleID];
    v56 = sub_219BF5414();
    v58 = v57;

    if (v56 == v38 && v58 == v40)
    {

      v60 = v90;
      v59 = v91;
      v61 = v79;
    }

    else
    {
      v66 = sub_219BF78F4();

      v60 = v90;
      v59 = v91;
      v61 = v79;
      if ((v66 & 1) == 0)
      {
        sub_218CFB714(v88, type metadata accessor for AudioFeedTrack);
        v72 = sub_219BDD9E4();
        (*(*(v72 - 8) + 8))(v53 + v89, v72);
        v71 = v53;
LABEL_17:
        sub_218CFB714(v71, type metadata accessor for AudioFeedTrack);
        goto LABEL_18;
      }
    }

    (*(v92 + 104))(v96, *MEMORY[0x277D33A68], v93);
    (*(v94 + 104))(v99, *MEMORY[0x277D33570], v95);
    (*(v97 + 104))(v100, *MEMORY[0x277D33288], v98);
    v102 = 0u;
    v103 = 0u;
    sub_219BF2564();
    swift_getObjectType();
    sub_219BEACB4();
    v67 = v78;
    (*(v60 + 16))(v78, v61, v59);
    (*(v60 + 56))(v67, 0, 1, v59);
    sub_219BE7094();

    sub_218CFB714(v67, sub_218CFB62C);
    (*(v60 + 8))(v61, v59);
    sub_218CFB714(v88, type metadata accessor for AudioFeedTrack);
    v68 = sub_219BDD9E4();
    (*(*(v68 - 8) + 8))(v53 + v89, v68);
    return sub_218CFB714(v53, type metadata accessor for AudioFeedTrack);
  }

  if (v42 != *MEMORY[0x277D30138])
  {
    result = sub_219BF78E4();
    __break(1u);
    return result;
  }

LABEL_18:
  v73 = v85;
  v74 = v83;
  v81(0);
  v104 = sub_219BDEDF4();
  (*(v92 + 104))(v96, *MEMORY[0x277D33A68], v93);
  (*(v94 + 104))(v99, *MEMORY[0x277D33570], v95);
  (*(v97 + 104))(v100, *MEMORY[0x277D33288], v98);
  sub_218731D50();
  v102 = 0u;
  v103 = 0u;
  sub_219BF2564();
  swift_getObjectType();
  sub_219BEAC54();
  v75 = v84;
  v76 = v86;
  (*(v84 + 16))(v73, v74, v86);
  (*(v75 + 56))(v73, 0, 1, v76);
  sub_219BE7094();

  sub_218CFB714(v73, sub_218932F34);
  return (*(v75 + 8))(v74, v76);
}

void sub_218CFB62C()
{
  if (!qword_280E90400)
  {
    sub_2186F8458(255, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90400);
    }
  }
}

void sub_218CFB6AC()
{
  if (!qword_27CC11178)
  {
    sub_21875D3C8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11178);
    }
  }
}

uint64_t sub_218CFB714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AudioActionHandler.accessibilityActionsForSheet(for:willPerform:)()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_219BDEDF4();
  v2 = (*(v1 + 16))();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t AudioActionHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t AudioActionHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218CFB8C8()
{
  v1 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), *(*v0 + 80));
  sub_219BDEDF4();
  v2 = (*(v1 + 8))();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_218CFB988()
{
  v1 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), *(*v0 + 80));
  sub_219BDEDF4();
  v2 = (*(v1 + 16))();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t type metadata accessor for ArticleListHistoryFeedGroup()
{
  result = qword_280EB9608;
  if (!qword_280EB9608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218CFBAD4()
{
  v1 = *(v0 + *(type metadata accessor for ArticleListHistoryFeedGroup() + 24));
  if (v1 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60);

    v4 = sub_219BF7534();

    return v4;
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v2 = sub_218CFA4E0(v1 & 0xFFFFFFFFFFFFFF8);

    if (v2)
    {
      return v1;
    }

    else
    {
      return v1 & 0xFFFFFFFFFFFFFF8 | 1;
    }
  }
}

uint64_t sub_218CFBBAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_218CFCB64();
  v31 = v3;
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED8D4();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CFCC74(0, &qword_27CC111C0, MEMORY[0x277D844C8]);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ArticleListHistoryFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CFCBBC();
  v35 = v10;
  v14 = v36;
  sub_219BF7B34();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v7;
  v27 = v13;
  v16 = v32;
  v17 = v5;
  v40 = 0;
  v18 = sub_219BF76F4();
  v20 = v19;
  v21 = v27;
  *v27 = v18;
  v21[1] = v19;
  v39 = 1;
  sub_218CFC520(&unk_280E92630, MEMORY[0x277D31C50]);
  sub_219BF7734();
  v36 = v20;
  (*(v16 + 32))(v27 + *(v11 + 20), v15, v17);
  v38 = 2;
  sub_218CFC520(&unk_280EE67D8, sub_218CFCB64);
  v23 = v30;
  v22 = v31;
  v26 = 0;
  sub_219BF7734();
  sub_219BE3384();
  (*(v28 + 8))(v23, v22);
  (*(v33 + 8))(v35, v34);
  v24 = v27;
  *(v27 + *(v11 + 24)) = v37;
  sub_218CFCC10(v24, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218B73FB0(v24);
}

uint64_t sub_218CFC080(void *a1)
{
  v2 = v1;
  sub_218CFCB64();
  v5 = v4;
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CFCC74(0, &unk_27CC111D0, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CFCBBC();
  sub_219BF7B44();
  v24 = 0;
  v13 = v20;
  sub_219BF77F4();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v20 = v10;
  v18 = v7;
  v15 = type metadata accessor for ArticleListHistoryFeedGroup();
  v23 = 1;
  sub_219BED8D4();
  sub_218CFC520(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  v21 = *(v2 + *(v15 + 24));
  sub_2187E7248();
  sub_218CFC520(&qword_280E8EBF0, sub_2187E7248);

  v16 = v18;
  sub_219BE33C4();
  v22 = 2;
  sub_218CFC520(&qword_280EE67E8, sub_218CFCB64);
  sub_219BF7834();
  v17 = v20;
  (*(v19 + 8))(v16, v5);
  return (*(v17 + 8))(v12, v9);
}

uint64_t sub_218CFC408(uint64_t a1)
{
  v2 = sub_218CFC520(&qword_27CC11188, type metadata accessor for ArticleListHistoryFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218CFC474(void *a1)
{
  a1[1] = sub_218CFC520(&qword_27CC11188, type metadata accessor for ArticleListHistoryFeedGroup);
  a1[2] = sub_218CFC520(&qword_27CC11190, type metadata accessor for ArticleListHistoryFeedGroup);
  result = sub_218CFC520(&qword_27CC11198, type metadata accessor for ArticleListHistoryFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218CFC520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218CFC640(uint64_t a1)
{
  result = sub_218CFC520(&qword_27CC0E5A8, type metadata accessor for ArticleListHistoryFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218CFC698(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x724774616D726F66;
  v4 = 0xEB0000000070756FLL;
  if (v2 != 1)
  {
    v3 = 0x656E696C64616568;
    v4 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0x724774616D726F66;
  v8 = 0xEB0000000070756FLL;
  if (*a2 != 1)
  {
    v7 = 0x656E696C64616568;
    v8 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_218CFC7B4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218CFC868()
{
  sub_219BF5524();
}

uint64_t sub_218CFC908()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218CFC9B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218CFCDF0();
  *a1 = result;
  return result;
}

void sub_218CFC9E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xEB0000000070756FLL;
  v5 = 0x724774616D726F66;
  if (v2 != 1)
  {
    v5 = 0x656E696C64616568;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_218CFCA58()
{
  v1 = 0x724774616D726F66;
  if (*v0 != 1)
  {
    v1 = 0x656E696C64616568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_218CFCAC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218CFCDF0();
  *a1 = result;
  return result;
}

uint64_t sub_218CFCAEC(uint64_t a1)
{
  v2 = sub_218CFCBBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CFCB28(uint64_t a1)
{
  v2 = sub_218CFCBBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218CFCB64()
{
  if (!qword_280EE67C8)
  {
    sub_2187E7248();
    v0 = sub_219BE3474();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE67C8);
    }
  }
}

unint64_t sub_218CFCBBC()
{
  result = qword_27CC111C8;
  if (!qword_27CC111C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC111C8);
  }

  return result;
}

uint64_t sub_218CFCC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListHistoryFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218CFCC74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218CFCBBC();
    v7 = a3(a1, &type metadata for ArticleListHistoryFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218CFCCEC()
{
  result = qword_27CC111E0;
  if (!qword_27CC111E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC111E0);
  }

  return result;
}

unint64_t sub_218CFCD44()
{
  result = qword_27CC111E8;
  if (!qword_27CC111E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC111E8);
  }

  return result;
}

unint64_t sub_218CFCD9C()
{
  result = qword_27CC111F0;
  if (!qword_27CC111F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC111F0);
  }

  return result;
}

uint64_t sub_218CFCDF0()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void *sub_218CFCE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v7 = *(a2 + 73);
  sub_218C00EEC(*(a2 + 72) | (v7 << 8), v14);
  v8 = *__swift_project_boxed_opaque_existential_1(v14, v14[3]);
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      sub_218CFD154(a1, a2, v8, __src);
      goto LABEL_9;
    }

    v9 = xmmword_219C2FDD0;
    v10 = xmmword_219C2FDE0;
    v11 = xmmword_219C2FDF0;
    v12 = xmmword_219C2FE00;
    goto LABEL_7;
  }

  if (v7)
  {
    v9 = xmmword_219C2FD90;
    v10 = xmmword_219C2FDA0;
    v11 = xmmword_219C2FDB0;
    v12 = xmmword_219C2FDC0;
LABEL_7:
    sub_218CFD32C(a1, a2, v8, __src, v9, v10, v11, v12);
    goto LABEL_9;
  }

  sub_218CFCF7C(a1, a2, v8, __src);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v14);
  return memcpy(a3, __src, 0x1A8uLL);
}

void *sub_218CFCF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v34[3] = *a3;
  v34[4] = &off_282A58938;
  v34[0] = a3;
  v7 = *(a2 + 16);
  sub_218718690(v34, __src);

  v8 = [v7 preferredContentSizeCategory];
  LOBYTE(v7) = sub_219BF6944();

  if (v7)
  {
    v9 = 462.0;
  }

  else
  {
    v9 = 340.0;
  }

  v10 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v20[7] = v10;
  v21 = *(a1 + 128);
  v11 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v11;
  v12 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v12;
  v13 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v13;
  v22 = *a2;
  v23 = *(a2 + 24);
  v24 = *(a2 + 40);
  sub_2186CB1F0(__src, v25);
  *&v25[5] = v9;
  v26 = vdupq_n_s64(0x4057000000000000uLL);
  v27 = xmmword_219C2FE10;
  v28 = 0x4055400000000000;
  v29 = xmmword_219C2FE20;
  v30 = xmmword_219C2FE30;
  __asm { FMOV            V1.2D, #20.0 }

  v31 = xmmword_219C2FE40;
  v32 = _Q1;
  v33 = xmmword_219C2FE50;
  sub_218CFD478(a1, __src);
  sub_21922BA0C(a2, __src);
  sub_218CFD4D4(v20);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return memcpy(a4, __src, 0x1A8uLL);
}

void *sub_218CFD154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v34[3] = *a3;
  v34[4] = &off_282A58938;
  v34[0] = a3;
  v7 = *(a2 + 16);
  sub_218718690(v34, __src);

  v8 = [v7 preferredContentSizeCategory];
  LOBYTE(v7) = sub_219BF6944();

  if (v7)
  {
    v9 = 600.0;
  }

  else
  {
    v9 = 444.0;
  }

  v10 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v20[7] = v10;
  v21 = *(a1 + 128);
  v11 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v11;
  v12 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v12;
  v13 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v13;
  v22 = *a2;
  v23 = *(a2 + 24);
  v24 = *(a2 + 40);
  sub_2186CB1F0(__src, v25);
  *&v25[5] = v9;
  v26 = vdupq_n_s64(0x405E000000000000uLL);
  v27 = xmmword_219C2FE60;
  v28 = 0x405B800000000000;
  v29 = xmmword_219C2FE70;
  v30 = xmmword_219C2FE80;
  __asm { FMOV            V1.2D, #20.0 }

  v31 = xmmword_219C2FE90;
  v32 = _Q1;
  v33 = xmmword_219C2FE50;
  sub_218CFD478(a1, __src);
  sub_21922BA0C(a2, __src);
  sub_218CFD4D4(v20);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return memcpy(a4, __src, 0x1A8uLL);
}

void *sub_218CFD32C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>, __n128 a8@<Q3>)
{
  v38[3] = *a3;
  v38[4] = &off_282A58938;
  v38[0] = a3;
  sub_218718690(v38, v30);
  v11 = *(a1 + 112);
  v25[6] = *(a1 + 96);
  v25[7] = v11;
  v26 = *(a1 + 128);
  v12 = *(a1 + 48);
  v25[2] = *(a1 + 32);
  v25[3] = v12;
  v13 = *(a1 + 80);
  v25[4] = *(a1 + 64);
  v25[5] = v13;
  v14 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v14;
  v27 = *a2;
  v28 = *(a2 + 24);
  v29 = *(a2 + 40);
  *&v30[40] = a5;
  v31 = a6;
  v32 = a7;
  v33 = xmmword_219C2FEA0;
  v34 = xmmword_219C2FEB0;
  v35 = a8;
  __asm { FMOV            V0.2D, #20.0 }

  v36 = _Q0;
  v37 = xmmword_219C2FE50;

  sub_218CFD478(a1, __src);
  sub_21922BA0C(a2, __src);
  sub_218CFD4D4(v25);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return memcpy(a4, __src, 0x1A8uLL);
}

uint64_t type metadata accessor for SearchRouteModel()
{
  result = qword_27CC11200;
  if (!qword_27CC11200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218CFD574()
{
  sub_219BDD944();
  if (v0 <= 0x3F)
  {
    sub_219BDE674();
    if (v1 <= 0x3F)
    {
      sub_218CFD610();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_218CFD610()
{
  if (!qword_27CC11210)
  {
    sub_219BF04A4();
    sub_218CFD684();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11210);
    }
  }
}

void sub_218CFD684()
{
  if (!qword_280E8E900)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8E900);
    }
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_218CFD6F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_218CFD738(uint64_t result, int a2, int a3)
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

uint64_t sub_218CFD82C(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = *(type metadata accessor for ChannelSectionsGroupSectionModel() - 8);
  v25 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 48;
  v26 = *(v3 + 72);
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = *(v25 + v26 * v2);
    v7 = v6 >> 62;
    if (v6 >> 62)
    {
      v8 = sub_219BF7214();
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v4 >> 62;
    if (v4 >> 62)
    {
      v24 = sub_219BF7214();
      v11 = v24 + v8;
      if (__OFADD__(v24, v8))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v9)
      {
        v12 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_219BF7364();
    v4 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v8)
    {
      goto LABEL_36;
    }

    v29 = v4;
    v16 = v12 + 8 * v13 + 32;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      sub_2187E7248();
      sub_2186DF6F4(&qword_280E8EBE0, sub_2187E7248);
      for (i = 0; i != v15; ++i)
      {
        v18 = sub_218A352D0(v28, i, v6);
        v20 = *v19;
        swift_unknownObjectRetain();
        (v18)(v28, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      sub_218731D50();
      swift_arrayInitWithCopy();
    }

    v4 = v29;
    if (v8 >= 1)
    {
      v21 = *(v12 + 16);
      v22 = __OFADD__(v21, v8);
      v23 = v21 + v8;
      if (v22)
      {
        goto LABEL_37;
      }

      *(v12 + 16) = v23;
    }

LABEL_4:
    if (++v2 == v27)
    {
      return v4;
    }
  }

  result = sub_219BF7214();
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v8 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_218CFDB4C()
{
  sub_21870F384(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218CFDBD8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 1)
  {
    sub_218CFDE58(a5, a6, a7);
    v12 = v11;
    v13 = 0;
    if ((*(a6 + *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() + 28)) & 1) == 0)
    {
      v13 = [objc_opt_self() edgeCacheHintForLocalNews];
    }

    v20 = a6;
    if (qword_280E8D958 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09EC0;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
    *(v14 + 96) = sub_2186C6148(0, &qword_280E8E860);
    *(v14 + 104) = sub_218D06EBC();
    *(v14 + 72) = v12;

    v15 = v12;
    sub_219BF6214();
    sub_219BE5314();

    __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
    v16 = off_282A34C30[0];
    type metadata accessor for ChannelSectionHeadlinesService();
    v16();
    sub_218CFE1D8(v20, a2, a3, a4, a8);
    v17 = sub_219BE31C4();

    return v17;
  }

  else
  {
    sub_218D06D68();
    swift_allocError();
    *v19 = a3;
    *(v19 + 8) = a4;
    *(v19 + 16) = 7;
    swift_willThrow();
  }
}

void sub_218CFDE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v28 = sub_219BEE3D4();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF0C04();
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(a1 + 8);
  v18 = [v17 startDate];
  if (v18)
  {
    v19 = v18;
    sub_219BDBCA4();

    v20 = *(a2 + *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() + 24));
    v21 = sub_219BDBC04();
    (*(v11 + 8))(v16, v10);
  }

  else
  {
    v21 = 0;
    v20 = *(a2 + *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() + 24));
  }

  v22 = [objc_allocWithZone(MEMORY[0x277D30F38]) initWithStartDate:v21 timeInterval:v20];

  if (!v22)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() + 28)) != 1)
  {
    return;
  }

  sub_219BF0BB4();
  v23 = [v17 startDate];
  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = v23;
  sub_219BDBCA4();

  sub_219BEE3C4();
  (*(v26 + 8))(v6, v28);
  (*(v11 + 8))(v14, v10);
  v25 = sub_219BF0BF4();
  (*(v7 + 8))(v9, v27);
  if (![v22 intersectionWithDateRange_])
  {
LABEL_12:
    __break(1u);
    return;
  }
}

uint64_t sub_218CFE1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() + 32));
  v10 = (v9 + 40);
  v11 = *(v9 + 16) + 1;
  do
  {
    if (!--v11)
    {
      sub_218D0698C(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE3014();
    }

    v12 = v10 + 16;
    v13 = *v10;
    v10 += 16;
  }

  while ((v13 & 0x80000000) == 0);
  v14 = *(v12 - 3);
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  if (qword_280E8D958 != -1)
  {
    swift_once();
  }

  v15 = *MEMORY[0x277D30BC8];
  *&v20 = a3;
  *(&v20 + 1) = a4;
  *&v21 = qword_280F617F0;
  *(&v21 + 1) = v15;
  *&v22 = v14;
  *(&v22 + 1) = a5;
  *&v23 = MEMORY[0x277D84FA0];
  *(&v23 + 1) = MEMORY[0x277D84FA0];
  v24[2] = v22;
  v24[3] = v23;
  v24[0] = v20;
  v24[1] = v21;
  v16 = qword_280F617F0;
  v17 = v15;

  swift_unknownObjectRetain();
  v18 = sub_218C61998(v24);
  sub_218D06F24(&v20);
  return v18;
}

id sub_218CFE37C(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  v102 = a8;
  v106 = a7;
  v127 = a5;
  v129 = a4;
  v114 = sub_219BF0BD4();
  v109 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v107 = v15;
  v113 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
  v103 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v104 = v17;
  v108 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF3DC();
  v19 = v18;
  v105 = *(v18 - 1);
  MEMORY[0x28223BE20](v18);
  v101 = v20;
  v112 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for ChannelSectionsGroupPersonalizerRequest();
  MEMORY[0x28223BE20](v121);
  v120 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ChannelSectionsGroupModel();
  v99 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v111 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v24;
  MEMORY[0x28223BE20](v23);
  v126 = (&v96 - v25);
  v26 = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  v27 = MEMORY[0x28223BE20](v26);
  v119 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v118 = &v96 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v117 = &v96 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v96 - v33;
  v35 = *a1;
  v36 = *(a1 + 8);
  v37 = v35;
  v122 = v36;

  v38 = a3;
  sub_219BEDD14();
  v39 = v26;
  LODWORD(v36) = v34[*(v26 + 36)];
  sub_218D06DBC(v34, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v125 = v37;
  if (v36 == 1)
  {
    v40 = v37;
  }

  else
  {
    v40 = sub_218CFEE6C(v129);
  }

  v41 = v40;
  v42 = v19;
  v43 = *(a2 + 288);
  v44 = *(a2 + 296);
  v124 = v41;
  v116 = sub_218CFF31C(v43, v44);
  v128 = a2;
  if (qword_280E8D958 != -1)
  {
    swift_once();
  }

  v129 = qword_280F617F0;
  sub_2186F20D4();
  v98 = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_219C0EE20;
  *(v46 + 56) = MEMORY[0x277D837D0];
  v97 = sub_2186FC3BC();
  *(v46 + 64) = v97;
  *(v46 + 32) = v127;
  *(v46 + 40) = a6;

  sub_219BEDD14();
  v47 = *&v34[*(v26 + 44)];
  sub_218D06DBC(v34, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v110 = a6;
  v48 = MEMORY[0x277D83B88];
  v49 = MEMORY[0x277D83C10];
  *(v46 + 96) = MEMORY[0x277D83B88];
  *(v46 + 104) = v49;
  v50 = v48;
  *(v46 + 72) = v47;
  v51 = v117;
  sub_219BEDD14();
  v52 = *(v51 + v39[15]);
  sub_218D06DBC(v51, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  *(v46 + 136) = v50;
  *(v46 + 144) = MEMORY[0x277D83C10];
  *(v46 + 112) = v52;
  v53 = v118;
  sub_219BEDD14();
  v54 = *(v53 + v39[16]);
  sub_218D06DBC(v53, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  *(v46 + 176) = MEMORY[0x277D83B88];
  *(v46 + 184) = MEMORY[0x277D83C10];
  *(v46 + 152) = v54;
  sub_219BF6214();
  sub_219BE5314();

  v115 = __swift_project_boxed_opaque_existential_1((v128 + 96), *(v128 + 120));
  v55 = v38;
  sub_219BEDD14();
  v56 = *&v34[v39[11]];
  sub_218D06DBC(v34, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  sub_219BEDD14();
  v57 = *(v51 + v39[12]);
  sub_218D06DBC(v51, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  sub_219BEDD14();
  v58 = *(v53 + v39[15]);
  sub_218D06DBC(v53, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v59 = v119;
  v117 = v55;
  v118 = v42;
  sub_219BEDD14();
  v60 = *(v59 + v39[16]);
  sub_218D06DBC(v59, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v61 = v121;
  v62 = *(v121 + 36);
  v63 = *MEMORY[0x277D32928];
  v64 = sub_219BEFBD4();
  v65 = v120;
  (*(*(v64 - 8) + 104))(&v120[v62], v63, v64);
  v66 = v129;
  sub_219BE5444();
  v67 = v116;
  *v65 = v116;
  *(v65 + 8) = v56;
  *(v65 + 16) = v57;
  *(v65 + 24) = v58;
  *(v65 + 32) = v60;
  v68 = MEMORY[0x277D84FA0];
  *(v65 + *(v61 + 40)) = MEMORY[0x277D84FA0];
  *(v65 + *(v61 + 44)) = v68;
  v69 = v67;
  v70 = v126;
  v71 = v123;
  sub_219BA640C(v65, v126);
  sub_218D06DBC(v65, type metadata accessor for ChannelSectionsGroupPersonalizerRequest);
  if (v71)
  {
  }

  else
  {
    v129 = 0;
    v120 = a11;
    v121 = a10;
    v123 = v69;
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_219C09BA0;
    v73 = v97;
    *(v72 + 56) = MEMORY[0x277D837D0];
    *(v72 + 64) = v73;
    v74 = v127;
    v75 = v110;
    *(v72 + 32) = v127;
    *(v72 + 40) = v75;

    sub_219BF6214();
    sub_219BE5314();

    MEMORY[0x28223BE20](v76);
    *(&v96 - 10) = v128;
    *(&v96 - 9) = v70;
    v77 = v117;
    *(&v96 - 8) = v122;
    *(&v96 - 7) = v77;
    v78 = v106;
    *(&v96 - 6) = v106;
    *(&v96 - 5) = v74;
    v79 = v102;
    *(&v96 - 4) = v75;
    *(&v96 - 3) = v79;
    v80 = v121;
    *(&v96 - 2) = a9;
    *(&v96 - 1) = v80;
    sub_218D06650();
    v121 = sub_219BE3204();

    v81 = v77;
    v82 = v105;
    (*(v105 + 16))(v112, v81, v118);
    v83 = v78;
    v84 = v108;
    sub_218D069F0(v83, v108, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
    v85 = v109;
    (*(v109 + 16))(v113, v120, v114);
    sub_218D069F0(v70, v111, type metadata accessor for ChannelSectionsGroupModel);
    v86 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v87 = (v101 + *(v103 + 80) + v86) & ~*(v103 + 80);
    v88 = (v104 + *(v85 + 80) + v87) & ~*(v85 + 80);
    v89 = (v107 + *(v99 + 80) + v88) & ~*(v99 + 80);
    v90 = (v100 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v91 = swift_allocObject();
    (*(v82 + 32))(v91 + v86, v112, v118);
    sub_218D06754(v84, v91 + v87, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
    (*(v85 + 32))(v91 + v88, v113, v114);
    sub_218D06754(v111, v91 + v89, type metadata accessor for ChannelSectionsGroupModel);
    v92 = (v91 + v90);
    v93 = v110;
    *v92 = v127;
    v92[1] = v93;

    v94 = sub_219BE2E54();
    type metadata accessor for LocalNewsTodayFeedGroup();
    type metadata accessor for LocalNewsTodayFeedGroupService();
    v66 = sub_219BE2F84();

    sub_218D06DBC(v126, type metadata accessor for ChannelSectionsGroupModel);
  }

  return v66;
}

uint64_t sub_218CFEE6C(uint64_t a1)
{
  v3 = [v1 channel];
  v4 = [v1 sectionHeadlinesGroups];
  v5 = sub_2186C6148(0, &qword_280E8DB70);
  v6 = sub_219BF5924();

  if (v6 >> 62)
  {
    goto LABEL_41;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
LABEL_3:
    v8 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    result = sub_219BF73F4();
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v33 = v5;
    v34 = v3;
    v10 = 0;
    v38 = v6;
    v39 = v6 & 0xC000000000000001;
    v35 = v6 + 32;
    v36 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = a1 + 56;
    v37 = v7;
    while (1)
    {
      v5 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_39;
      }

      if (v39)
      {
        v15 = MEMORY[0x21CECE0F0]();
      }

      else
      {
        if (v10 >= *(v36 + 16))
        {
          goto LABEL_40;
        }

        v15 = *(v35 + 8 * v10);
      }

      v12 = v15;
      v42 = [v15 section];
      v16 = [v12 headlines];
      sub_218731D50();
      v17 = sub_219BF5924();

      v46 = v8;
      v43 = v17;
      if (v17 >> 62)
      {
        break;
      }

      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_14;
      }

LABEL_6:

      v13 = objc_allocWithZone(MEMORY[0x277D30EC8]);
      v14 = sub_219BF5904();

      [v13 initWithSection:v42 headlines:v14];

      swift_unknownObjectRelease();
      sub_219BF73D4();
      v3 = *(v47 + 16);
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v10 = v5;
      if (v5 == v7)
      {

        v3 = v34;
        goto LABEL_43;
      }
    }

    v18 = sub_219BF7214();
    if (!v18)
    {
      goto LABEL_6;
    }

LABEL_14:
    v40 = v12;
    v41 = v5;
    v3 = 0;
    v44 = v17 & 0xFFFFFFFFFFFFFF8;
    v45 = v17 & 0xC000000000000001;
    v19 = v17 + 32;
    while (1)
    {
      if (v45)
      {
        v5 = MEMORY[0x21CECE0F0](v3, v43);
        v20 = __OFADD__(v3++, 1);
        if (v20)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v3 >= *(v44 + 16))
        {
          goto LABEL_38;
        }

        v5 = *(v19 + 8 * v3);
        swift_unknownObjectRetain();
        v20 = __OFADD__(v3++, 1);
        if (v20)
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v7 = sub_219BF7214();
          if (!v7)
          {
            break;
          }

          goto LABEL_3;
        }
      }

      v21 = [v5 articleID];
      v22 = sub_219BF5414();
      v6 = v23;

      if (*(a1 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v24 = sub_219BF7AE4(), v25 = -1 << *(a1 + 32), v26 = v24 & ~v25, ((*(v11 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
      {
        v27 = ~v25;
        while (1)
        {
          v28 = (*(a1 + 48) + 16 * v26);
          v29 = *v28 == v22 && v28[1] == v6;
          if (v29 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v11 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        swift_unknownObjectRelease();

        if (v3 == v18)
        {
LABEL_5:
          v7 = v37;
          v6 = v38;
          v8 = MEMORY[0x277D84F90];
          v12 = v40;
          v5 = v41;
          goto LABEL_6;
        }
      }

      else
      {
LABEL_15:

        sub_219BF73D4();
        v6 = *(v46 + 16);
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v3 == v18)
        {
          goto LABEL_5;
        }
      }
    }
  }

LABEL_43:
  v30 = objc_allocWithZone(MEMORY[0x277D30EC0]);
  v31 = sub_219BF5904();

  v32 = [v30 initWithChannel:v3 sectionHeadlinesGroups:v31];
  swift_unknownObjectRelease();

  return v32;
}

uint64_t sub_218CFF31C(void *a1, void *a2)
{
  v56 = [v2 channel];
  v4 = [v2 sectionHeadlinesGroups];
  v55 = sub_2186C6148(0, &qword_280E8DB70);
  v5 = sub_219BF5924();

  if (v5 >> 62)
  {
    goto LABEL_78;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_79:

    v52 = objc_allocWithZone(MEMORY[0x277D30EC0]);
    v53 = sub_219BF5904();

    v54 = [v52 initWithChannel:v56 sectionHeadlinesGroups:v53];
    swift_unknownObjectRelease();

    return v54;
  }

LABEL_3:
  v7 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  result = sub_219BF73F4();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v60 = v5;
    v61 = v5 & 0xC000000000000001;
    v57 = v5 + 32;
    v58 = v5 & 0xFFFFFFFFFFFFFF8;
    v65 = a1;
    v59 = v6;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_76;
      }

      if (v61)
      {
        v13 = MEMORY[0x21CECE0F0]();
      }

      else
      {
        if (v9 >= *(v58 + 16))
        {
          goto LABEL_77;
        }

        v13 = *(v57 + 8 * v9);
      }

      v14 = v13;
      v63 = [v13 section];
      v64 = v14;
      v15 = [v14 headlines];
      sub_218731D50();
      v16 = sub_219BF5924();

      v77 = v7;
      if (v16 >> 62)
      {
        break;
      }

      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_14;
      }

LABEL_6:

      v11 = objc_allocWithZone(MEMORY[0x277D30EC8]);
      v12 = sub_219BF5904();

      [v11 initWithSection:v63 headlines:v12];

      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v9 = v10;
      if (v10 == v6)
      {
        goto LABEL_79;
      }
    }

    v17 = sub_219BF7214();
    if (!v17)
    {
      goto LABEL_6;
    }

LABEL_14:
    v62 = v10;
    v18 = 0;
    v70 = v16 & 0xFFFFFFFFFFFFFF8;
    v71 = v16 & 0xC000000000000001;
    v67 = v16 + 32;
    v68 = v17;
    v5 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v69 = v16;
    while (1)
    {
      if (v71)
      {
        v19 = MEMORY[0x21CECE0F0](v18, v16);
        v20 = __OFADD__(v18++, 1);
        if (v20)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v18 >= *(v70 + 16))
        {
          goto LABEL_75;
        }

        v19 = *(v67 + 8 * v18);
        swift_unknownObjectRetain();
        v20 = __OFADD__(v18++, 1);
        if (v20)
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          v6 = sub_219BF7214();
          if (!v6)
          {
            goto LABEL_79;
          }

          goto LABEL_3;
        }
      }

      v21 = [v19 isPaid];
      if ([v19 respondsToSelector_])
      {
        v22 = [v19 *(v5 + 3320)];
      }

      else
      {
        v22 = 0;
      }

      v23 = [v19 sourceChannel];
      if (v23)
      {
        v24 = [v23 identifier];
        swift_unknownObjectRelease();
        v25 = sub_219BF5414();
        v27 = v26;

        if (!v21)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v25 = 0;
        v27 = 0;
        if (!v21)
        {
LABEL_39:
          if ((v22 & 1) == 0)
          {

LABEL_67:
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            goto LABEL_16;
          }

          goto LABEL_40;
        }
      }

      v28 = [a1 purchaseProvider];
      if (v27)
      {
        v29 = [v28 purchasedTagIDs];
        v30 = sub_219BF5D44();

        if (*(v30 + 16))
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v31 = sub_219BF7AE4();
          v32 = -1 << *(v30 + 32);
          v33 = v31 & ~v32;
          if ((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v34 = ~v32;
            while (1)
            {
              v35 = (*(v30 + 48) + 16 * v33);
              v36 = *v35 == v25 && v27 == v35[1];
              if (v36 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v33 = (v33 + 1) & v34;
              if (((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_35;
              }
            }

            swift_unknownObjectRelease();

            a1 = v65;
            v5 = 0x278247000;
            goto LABEL_67;
          }
        }

LABEL_35:

        a1 = v65;
        v5 = 0x278247000;
      }

      swift_unknownObjectRelease();
      if (!v22)
      {
LABEL_60:

        goto LABEL_61;
      }

LABEL_40:
      if (!v27)
      {
        goto LABEL_61;
      }

      v37 = [objc_msgSend(a1 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      if (objc_getAssociatedObject(v37, v37 + 1))
      {
        sub_219BF70B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v75 = 0u;
        v76 = 0u;
      }

      v72 = v75;
      v73 = v76;
      if (!*(&v76 + 1))
      {
        sub_218744F8C(&v72, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_21870F384);
LABEL_50:
        v38 = 0;
        v40 = 0;
        goto LABEL_51;
      }

      sub_2186C6148(0, &qword_280E8DA20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_50;
      }

      v38 = v74;
      v39 = [v74 integerValue];
      if (v39 == -1)
      {

        goto LABEL_66;
      }

      v40 = v39;
LABEL_51:
      if (objc_getAssociatedObject(v37, ~v40))
      {
        sub_219BF70B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v75 = 0u;
        v76 = 0u;
      }

      v72 = v75;
      v73 = v76;
      if (!*(&v76 + 1))
      {
        sub_218744F8C(&v72, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_21870F384);
LABEL_59:

        if ((v40 & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_66;
      }

      sub_2186C6148(0, &qword_280E8DA20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_59;
      }

      v41 = v74;
      v42 = [v41 integerValue];

      v43 = v42 ^ v40;
      v5 = 0x278247000;
      if ((v43 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_66:
      v48 = [objc_msgSend(a1 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v49 = [v48 bundleChannelIDs];

      v50 = sub_219BF53D4();
      v51 = [v49 containsObject_];

      if (v51)
      {
        goto LABEL_67;
      }

LABEL_61:
      v44 = [v19 sourceChannelID];
      if (v44)
      {
        v45 = v44;
        v46 = [a2 cachedSubscription];
        v47 = [v46 bundleChannelIDs];

        LOBYTE(v46) = [v47 containsObject_];
        v5 = 0x278247000;

        if (v46)
        {
          goto LABEL_67;
        }
      }

      swift_unknownObjectRelease();
LABEL_16:
      v16 = v69;
      if (v18 == v68)
      {
        v6 = v59;
        v5 = v60;
        v7 = MEMORY[0x277D84F90];
        v10 = v62;
        goto LABEL_6;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218CFFC50(void *a1, void **a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t), uint64_t a8, void *a9, uint64_t a10)
{
  v179 = a5;
  v172 = a8;
  v186 = a7;
  v178 = a6;
  v188 = a4;
  v182 = a3;
  v156 = sub_219BF2034();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_218D0698C(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v159 = &v144 - v15;
  v16 = sub_219BDBD34();
  MEMORY[0x28223BE20](v16 - 8);
  v151 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BDBD64();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A42400(0);
  v153 = v19;
  v152 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v150 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v163 = &v144 - v22;
  sub_218D0698C(0, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig, v13);
  MEMORY[0x28223BE20](v23 - 8);
  v171 = &v144 - v24;
  sub_218D0698C(0, &unk_280E8FD50, sub_2186DEE0C, v13);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v168 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v160 = &v144 - v28;
  sub_218D0698C(0, &unk_280E903D0, sub_218860D7C, v13);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v174 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v175 = &v144 - v32;
  sub_218860D7C();
  v184 = v33;
  v176 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v164 = &v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  v35 = MEMORY[0x28223BE20](v185);
  v167 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v144 - v37;
  v39 = sub_219BEFBD4();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for ChannelSectionsGroupModel();
  MEMORY[0x28223BE20](v146);
  v44 = (&v144 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for ChannelHeroServiceRequest();
  MEMORY[0x28223BE20](v45);
  v181 = (&v144 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = sub_219BF1934();
  v162 = *(v158 - 8);
  v47 = MEMORY[0x28223BE20](v158);
  v145 = &v144 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v157 = &v144 - v49;
  v183 = a1;
  v50 = a1[32];
  v51 = sub_219BF53D4();
  v161 = [v50 hasSubscriptionToTagID_];

  v52 = *a2;
  ObjectType = swift_getObjectType();
  v170 = v52;
  v53 = [v52 identifier];
  v173 = sub_219BF5414();
  v186 = v54;

  v165 = a2;
  v177 = v44;
  sub_218D069F0(a2, v44, type metadata accessor for ChannelSectionsGroupModel);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v55 = qword_280F616D8;
  v56 = *MEMORY[0x277D30BC8];
  v57 = *MEMORY[0x277D32928];
  v58 = v40;
  v59 = *(v40 + 104);
  v178 = v42;
  v60 = v42;
  v61 = v39;
  v59(v60, v57, v39);
  sub_2186DF3DC();
  v63 = v62;
  v64 = v55;
  v65 = v56;
  v166 = v63;
  sub_219BEDD14();
  LOBYTE(v63) = v38[*(v185 + 40)];
  sub_218D06DBC(v38, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v66 = MEMORY[0x277D84FA0];
  if ((v63 & 1) == 0)
  {
  }

  v67 = v181;
  sub_218D06754(v177, v181, type metadata accessor for ChannelSectionsGroupModel);
  *(v67 + v45[5]) = v182;
  *(v67 + v45[6]) = v64;
  *(v67 + v45[7]) = v65;
  (*(v58 + 32))(v67 + v45[8], v178, v61);
  *(v67 + v45[9]) = a9;
  *(v67 + v45[10]) = v66;
  *(v67 + v45[11]) = MEMORY[0x277D84FA0];
  v68 = __swift_project_boxed_opaque_existential_1(v183 + 17, v183[20]);
  v69 = *(v179 + *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() + 32));

  swift_unknownObjectRetain();
  v70 = v69;
  v71 = v180;
  v72 = sub_21959BEBC(v67, v70);
  if (v71)
  {
    sub_218D06DBC(v67, type metadata accessor for ChannelHeroServiceRequest);

    return v68;
  }

  v73 = v72;
  v74 = v186;
  if (qword_280E8D958 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_219C09EC0;
  v76 = *(v73 + 16);
  v77 = v176;
  v78 = v173;
  if (v76 >> 62)
  {
    v79 = sub_219BF7214();
  }

  else
  {
    v79 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = MEMORY[0x277D83C10];
  *(v75 + 56) = MEMORY[0x277D83B88];
  *(v75 + 64) = v80;
  *(v75 + 32) = v79;
  *(v75 + 96) = MEMORY[0x277D837D0];
  *(v75 + 104) = sub_2186FC3BC();
  *(v75 + 72) = v78;
  *(v75 + 80) = v74;

  sub_219BF6214();
  sub_219BE5314();

  v81 = v171;
  sub_218F998B0(v171);
  v82 = type metadata accessor for ChannelSupergroupConfig();
  v83 = (*(*(v82 - 8) + 48))(v81, 1, v82);
  v180 = v73;
  if (v83 == 1)
  {
    v84 = qword_280EC58B0;
    v85 = type metadata accessor for ChannelSupergroupConfig;
    v86 = MEMORY[0x277D83D88];
    v87 = v81;
  }

  else
  {
    v88 = v160;
    sub_218D06E1C(v81 + *(v82 + 20), v160, &unk_280E8FD50, sub_2186DEE0C);
    sub_218D06DBC(v81, type metadata accessor for ChannelSupergroupConfig);
    sub_2186DEE0C();
    v90 = v89;
    v91 = *(v89 - 8);
    if ((*(v91 + 48))(v88, 1, v89) != 1)
    {
      v109 = v174;
      sub_219BF4B64();
      (*(v91 + 8))(v88, v90);
      v110 = *(v77 + 56);
      v111 = v184;
      v110(v109, 0, 1, v184);
      v112 = *(v77 + 32);
      v106 = v175;
      v113 = v109;
      v114 = v77;
      v108 = v180;
      v112(v175, v113, v111);
      v115 = v111;
      v107 = 0;
      v110(v106, 0, 1, v115);
      v102 = v114;
      v103 = *(v114 + 48);
      goto LABEL_22;
    }

    v84 = &unk_280E8FD50;
    v85 = sub_2186DEE0C;
    v86 = MEMORY[0x277D83D88];
    v87 = v88;
  }

  sub_218744F8C(v87, v84, v85, v86, sub_218D0698C);
  v92 = *(v77 + 56);
  v92(v174, 1, 1, v184);
  v93 = v167;
  sub_219BEDD14();
  v94 = v168;
  sub_218D06E1C(v93 + *(v185 + 20), v168, &unk_280E8FD50, sub_2186DEE0C);
  sub_218D06DBC(v93, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  sub_2186DEE0C();
  v96 = v95;
  v97 = *(v95 - 8);
  v98 = (*(v97 + 48))(v94, 1, v95);
  v179 = 0;
  if (v98 == 1)
  {
    sub_218744F8C(v94, &unk_280E8FD50, sub_2186DEE0C, MEMORY[0x277D83D88], sub_218D0698C);
    v99 = 1;
    v100 = v175;
  }

  else
  {
    v100 = v175;
    sub_219BF4B64();
    (*(v97 + 8))(v94, v96);
    v99 = 0;
  }

  v101 = v184;
  v92(v100, v99, 1, v184);
  v102 = v176;
  v103 = *(v176 + 48);
  v104 = v174;
  v105 = v103(v174, 1, v101);
  v74 = v186;
  if (v105 != 1)
  {
    sub_218744F8C(v104, &unk_280E903D0, sub_218860D7C, MEMORY[0x277D83D88], sub_218D0698C);
  }

  v106 = v175;
  v107 = v179;
  v108 = v180;
LABEL_22:
  v116 = v184;
  if (v103(v106, 1, v184) == 1)
  {

    sub_218744F8C(v106, &unk_280E903D0, sub_218860D7C, MEMORY[0x277D83D88], sub_218D0698C);
    v68 = sub_219BEEDD4();
    sub_2186DF6F4(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v117 = 0xD00000000000001ALL;
    v117[1] = 0x8000000219CF3590;
    (*(*(v68 - 8) + 104))(v117, *MEMORY[0x277D323D8], v68);
    swift_willThrow();

LABEL_26:
    sub_218D06DBC(v67, type metadata accessor for ChannelHeroServiceRequest);
    return v68;
  }

  v68 = v164;
  (*(v102 + 32))(v164, v106, v116);
  v118 = v108;
  v119 = v108;
  v120 = v173;
  v121 = sub_218D024E4(v161, v188, v119, v173, v74, v165, v68);
  if (v107)
  {

    (*(v102 + 8))(v68, v116);
    goto LABEL_26;
  }

  v188 = a10;
  v185 = v121;
  sub_218D04B1C();
  v187[0] = 0;
  v187[1] = 0xE000000000000000;
  sub_219BF7314();

  strcpy(v187, "local-news::");
  BYTE5(v187[1]) = 0;
  HIWORD(v187[1]) = -5120;
  MEMORY[0x21CECC330](v120, v74);
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v123 = v147;
  sub_219BDBD54();
  v124 = sub_219BDBD44();
  v126 = v125;
  (*(v148 + 8))(v123, v149);
  MEMORY[0x21CECC330](v124, v126);

  v174 = v187[1];
  v175 = v187[0];
  sub_219BDBD24();
  v178 = sub_219BEC004();
  v127 = *(v178 - 8);
  v177 = *(v127 + 56);
  v179 = v127 + 56;
  v177(v159, 1, 1, v178);
  v128 = v118;
  v129 = v152;
  v130 = v153;
  (*(v152 + 16))(v150, v163, v153);
  v131 = MEMORY[0x277D84F90];
  v143 = MEMORY[0x277D84FA0];
  v132 = v145;
  sub_219BF16F4();
  v133 = v162;
  v134 = v158;
  (*(v162 + 16))(v157, v132, v158);
  v185 = sub_21959DB3C(v128);
  LODWORD(v175) = v135;

  v136 = *(v133 + 8);
  v162 = v133 + 8;
  v186 = v136;
  v136(v132, v134);
  (*(v129 + 8))(v163, v130);
  (*(v176 + 8))(v164, v184);
  sub_218D06DBC(v181, type metadata accessor for ChannelHeroServiceRequest);
  v137 = sub_218CFD82C(*(v165 + *(v146 + 24)));
  v184 = 0;
  v187[0] = v137;

  sub_2191ED6C8(v138);
  v182 = v187[0];
  sub_2192F7C88();
  v139 = v159;
  v177(v159, 1, 1, v178);
  sub_219A95188(v131);
  sub_219A95188(v131);
  sub_219A951A0(v131);
  sub_219A951B8(v131);
  sub_219A952CC(v131);
  sub_219A952E4(v131);
  sub_219A953F8(v131);
  v143 = v139;
  v140 = v154;
  v141 = v157;
  sub_219BF2024();
  v68 = v183[30];
  __swift_project_boxed_opaque_existential_1(v183 + 27, v68);
  v142 = v184;
  sub_219BF2194();
  if (v142)
  {
  }

  else
  {
    v187[0] = v185;
    LOBYTE(v187[1]) = v175 & 1;
    sub_21870F384(0, &qword_280EE6E88, &type metadata for ChannelHeroSelection, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
    v68 = sub_219BE31C4();
  }

  (*(v155 + 8))(v140, v156);
  v186(v141, v158);
  return v68;
}